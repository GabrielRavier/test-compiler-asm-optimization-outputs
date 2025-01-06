	.file	"mini-libc.c"
	.machinemode zarch
	.machine "z10+htm"
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
	cgije	%r4,0,.L112
	lgr	%r0,%r4
	aghi	%r0,-1
	risbg	%r5,%r4,62,128+63,0
	lgr	%r1,%r4
	je	.L46
	cgije	%r5,1,.L68
	cgijlh	%r5,2,.L115
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
	cgije	%r4,0,.L112
	lgr	%r1,%r4
	aghi	%r1,-1
	clgijle	%r1,14,.L17
	lgr	%r0,%r3
	ogr	%r0,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L17
	la	%r0,1(%r3)
	lgr	%r1,%r2
	sgr	%r1,%r0
	clgijle	%r1,6,.L17
	risbg	%r0,%r4,0,128+60,0
	lghi	%r1,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r12,%r0
	aghi	%r12,-8
	srlg	%r5,%r12,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L64
	cgije	%r12,1,.L70
	cgije	%r12,2,.L71
	lg	%r12,0(%r3)
	stg	%r12,0(%r2)
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
.L11:
	lg	%r0,0(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	lg	%r12,8(%r1,%r3)
	stg	%r12,8(%r1,%r2)
	lg	%r0,16(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	lg	%r12,24(%r1,%r3)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L11
.L97:
	lgr	%r0,%r4
	la	%r3,0(%r1,%r3)
	la	%r5,0(%r1,%r2)
	sgr	%r0,%r1
	cgrje	%r1,%r4,.L8
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
	jle	.L107
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
.L107:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	icy	%r5,-2(%r4,%r3)
	stcy	%r5,-2(%r4,%r2)
	icy	%r0,-3(%r4,%r3)
	stcy	%r0,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	aghi	%r4,-4
	brctg	%r1,.L107
	br	%r14
.L115:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	lgr	%r4,%r0
	j	.L69
.L17:
	risbg	%r0,%r4,62,128+63,0
	lghi	%r1,0
	lgr	%r5,%r4
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
	cgrjlh	%r1,%r4,.L55
.L112:
	br	%r14
.L55:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L108
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
.L108:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brctg	%r5,.L108
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
	cgije	%r5,0,.L120
	lgr	%r0,%r5
	aghi	%r0,-1
	tmll	%r5,1
	jne	.L138
.L127:
	srlg	%r1,%r5,1
.L118:
	llgc	%r5,0(%r3)
	la	%r0,1(%r2)
	stc	%r5,0(%r2)
	crje	%r5,%r4,.L135
	llgc	%r5,1(%r3)
	lgr	%r2,%r0
	la	%r3,2(%r3)
	stc	%r5,0(%r2)
	crje	%r5,%r4,.L135
	la	%r2,1(%r2)
	brctg	%r1,.L118
.L120:
	lghi	%r2,0
	br	%r14
.L138:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r1,%r4,.L135
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L127
	j	.L120
.L135:
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
	cgije	%r4,0,.L144
	lgr	%r0,%r4
	aghi	%r0,-1
	risbg	%r5,%r4,62,128+63,0
	lgr	%r1,%r4
	je	.L151
	cgije	%r5,1,.L162
	cgije	%r5,2,.L163
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L140
	la	%r2,1(%r2)
	lgr	%r4,%r0
.L163:
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L140
	la	%r2,1(%r2)
	aghi	%r4,-1
.L162:
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L140
	la	%r2,1(%r2)
	cgije	%r4,1,.L144
.L151:
	srlg	%r4,%r1,2
.L141:
	llc	%r0,0(%r2)
	la	%r1,1(%r2)
	crje	%r0,%r3,.L173
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	crje	%r5,%r3,.L174
	llc	%r0,1(%r1)
	la	%r2,1(%r1)
	crje	%r0,%r3,.L140
	llc	%r5,2(%r1)
	la	%r2,2(%r1)
	crje	%r5,%r3,.L140
	la	%r2,3(%r1)
	brctg	%r4,.L141
.L144:
	lghi	%r2,0
.L140:
	br	%r14
.L173:
	br	%r14
.L174:
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
	cgije	%r4,0,.L205
	lgr	%r0,%r4
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r12,%r4
	aghi	%r12,-1
	risbg	%r5,%r4,62,128+63,0
	je	.L188
	cgije	%r5,1,.L199
	cgije	%r5,2,.L200
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L207
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	lgr	%r4,%r12
.L200:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L207
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L199:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L207
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	cgije	%r4,1,.L181
.L188:
	srlg	%r4,%r0,2
.L177:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L207
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	crjlh	%r1,%r5,.L207
	llc	%r1,2(%r2)
	llc	%r5,2(%r3)
	crjlh	%r1,%r5,.L207
	llc	%r1,3(%r2)
	llc	%r5,3(%r3)
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	crjlh	%r1,%r5,.L207
	brctg	%r4,.L177
.L181:
	lhi	%r1,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L207:
	.cfi_restore_state
	sr	%r1,%r5
	lgdr	%r12,%f0
	.cfi_restore 12
	lgfr	%r2,%r1
	br	%r14
.L205:
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
	stmg	%r12,%r15,128(%r15)
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	lgr	%r12,%r2
	cgije	%r4,0,.L218
	brasl	%r14,memcpy@PLT
.L218:
	lg	%r4,176(%r15)
	lgr	%r2,%r12
	lmg	%r12,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r4
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
	risbg	%r4,%r4,62,128+63,0
	llcr	%r3,%r3
	je	.L233
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L245
	cgije	%r4,1,.L233
	cgije	%r4,2,.L237
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L245
.L237:
	lgr	%r2,%r1
	aghi	%r1,-1
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L245
.L233:
	srlg	%r4,%r5,2
	aghi	%r4,1
	brctg	%r4,.L246
	lghi	%r2,0
	br	%r14
.L246:
	llc	%r5,0(%r1)
	lgr	%r0,%r1
	lgr	%r2,%r1
	aghi	%r0,-1
	crje	%r5,%r3,.L250
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L242:
	llc	%r12,-1(%r1)
	lgr	%r11,%r1
	lgr	%r5,%r1
	aghi	%r11,-2
	aghi	%r5,-3
	lgr	%r2,%r0
	crje	%r12,%r3,.L224
	llc	%r0,-2(%r1)
	lgr	%r2,%r11
	aghi	%r1,-4
	crje	%r0,%r3,.L224
	llc	%r12,0(%r5)
	lgr	%r2,%r5
	crje	%r12,%r3,.L224
	brctg	%r4,.L227
	lghi	%r2,0
.L224:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L227:
	.cfi_restore_state
	llc	%r11,0(%r1)
	lgr	%r0,%r1
	lgr	%r2,%r1
	aghi	%r0,-1
	crjlh	%r11,%r3,.L242
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L245:
	br	%r14
.L250:
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
	cgije	%r4,0,.L257
	lgr	%r0,%r2
	lgr	%r1,%r4
	ldgr	%f2,%r12
	.cfi_register 12, 17
	lghi	%r12,0
	ldgr	%f0,%r13
	.cfi_register 13, 16
	lghi	%r13,0
	mvcle	%r0,%r12,0(%r3)
	jo	.-4
	lgdr	%r13,%f0
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	br	%r14
.L257:
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
	j	.L268
.L263:
	la	%r3,1(%r3)
	la	%r2,1(%r2)
.L268:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	cgijlh	%r1,0,.L263
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
	jne	.L271
	br	%r14
.L273:
	cli	1(%r2),0
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	ber	%r14
.L271:
	crjlh	%r1,%r3,.L273
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
.L281:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L280
	la	%r2,1(%r2)
	cijlh	%r1,0,.L281
	lghi	%r2,0
.L280:
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
	crje	%r1,%r5,.L285
	j	.L286
.L287:
	llc	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	crjlh	%r1,%r5,.L286
.L285:
	cijlh	%r1,0,.L287
.L286:
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
	je	.L297
.L296:
	cli	1(%r2),0
	la	%r2,1(%r2)
	jne	.L296
	sgr	%r2,%r3
	br	%r14
.L297:
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
	cgije	%r4,0,.L308
	cli	0(%r2),0
	llc	%r1,0(%r2)
	je	.L312
.L304:
	cli	0(%r3),0
	llc	%r5,0(%r3)
	je	.L303
	la	%r2,1(%r2)
	la	%r0,1(%r3)
	brctg	%r4,.L306
.L303:
	sr	%r1,%r5
	lgfr	%r2,%r1
	br	%r14
.L306:
	crjlh	%r5,%r1,.L303
	cli	0(%r2),0
	llc	%r1,0(%r2)
	je	.L313
	lgr	%r3,%r0
	j	.L304
.L308:
	lhi	%r1,0
	lgfr	%r2,%r1
	br	%r14
.L313:
	llc	%r5,1(%r3)
	lhi	%r1,0
	j	.L303
.L312:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L303
	.cfi_endproc
.LFE14:
	.size	strncmp, .-strncmp
	.align	8
.globl swab
	.type	swab, @function
swab:
.LFB15:
	.cfi_startproc
	cgijle	%r4,1,.L315
	nill	%r4,65534
	lgr	%r1,%r4
	aghi	%r1,-2
	la	%r5,0(%r4,%r2)
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L324
	cgije	%r4,1,.L328
	cgije	%r4,2,.L329
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L329:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L328:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r2,2(%r2)
	la	%r3,2(%r3)
	cgrje	%r2,%r5,.L315
.L324:
	srlg	%r1,%r0,2
.L317:
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
	brctg	%r1,.L317
.L315:
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
	cije	%r2,32,.L343
	xilf	%r2,9
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L343:
	lhi	%r2,1
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
	clijle	%r2,31,.L347
	xilf	%r2,127
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L347:
	lhi	%r2,1
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
	cije	%r2,32,.L359
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L359:
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
	clijle	%r2,31,.L367
	lr	%r1,%r2
	ahi	%r1,-127
	clijh	%r1,32,.L368
.L367:
	lhi	%r0,1
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L368:
	ahi	%r1,-8105
	clijle	%r1,1,.L367
	slfi	%r2,65529
	clfi	%r2,2
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
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
	clijle	%r2,254,.L379
	lhi	%r1,8231
	clrjle	%r2,%r1,.L377
	lr	%r0,%r2
	llill	%r3,47061
	ahi	%r0,-8234
	clrjle	%r0,%r3,.L377
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L377
	ahi	%r0,-8188
	iilf	%r5,1048579
	clrjh	%r0,%r5,.L378
	nilf	%r2,65534
	xilf	%r2,65534
	lcr	%r2,%r2
	srl	%r2,31
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L377:
	lhi	%r2,1
.L374:
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L379:
	ahi	%r2,1
	nilf	%r2,127
	clfi	%r2,32
	lhi	%r2,0
	alcr	%r2,%r2
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L378:
	lhi	%r2,0
	j	.L374
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
	clijle	%r1,9,.L383
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L383:
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
	jo	.L391
	kdbr	%f0,%f2
	jnh	.L394
	sdbr	%f0,%f2
	br	%r14
.L394:
	lghi	%r1,0
	ldgr	%f0,%r1
	br	%r14
.L391:
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
	larl	%r5,.L405
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L400
	kebr	%f0,%f2
	jnh	.L403
	sebr	%f0,%f2
	br	%r14
.L403:
	le	%f0,.L406-.L405(%r5)
	br	%r14
.L400:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L405:
.L406:
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
	jo	.L415
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crjlh	%r2,%r1,.L416
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L412
	lhi	%r0,0
.L412:
	tmll	%r0,1
	jne	.L415
	ldr	%f2,%f0
.L415:
	ldr	%f0,%f2
	br	%r14
.L416:
	cijlh	%r1,0,.L415
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
	jo	.L426
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crjlh	%r2,%r1,.L427
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L423
	lhi	%r0,0
.L423:
	tmll	%r0,1
	jne	.L426
	ler	%f2,%f0
.L426:
	ler	%f0,%f2
	br	%r14
.L427:
	cijlh	%r1,0,.L426
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
	jo	.L436
	cxbr	%f4,%f4
	jo	.L441
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	ipm	%r3
	srl	%r1,28
	srl	%r3,28
	crjlh	%r3,%r1,.L443
	kxbr	%f0,%f4
	lhi	%r0,1
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-24(%r15)
	.cfi_def_cfa_offset 184
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	jl	.L435
	lhi	%r0,0
.L435:
	tmll	%r0,1
	je	.L433
	lgdr	%r4,%f4
	lgdr	%r5,%f6
.L434:
	lgr	%r12,%r4
	lgr	%r13,%r5
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
.L443:
	cije	%r1,0,.L441
.L436:
	lxr	%f0,%f4
.L441:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L433:
	.cfi_def_cfa_offset 184
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r4,%f0
	lgdr	%r5,%f2
	j	.L434
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
	jo	.L451
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crjlh	%r2,%r1,.L455
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L450
	lhi	%r0,0
.L450:
	tmll	%r0,1
	bner	%r14
.L451:
	ldr	%f0,%f2
	br	%r14
.L455:
	cije	%r1,0,.L451
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
	jo	.L463
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	crjlh	%r2,%r1,.L467
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L462
	lhi	%r0,0
.L462:
	tmll	%r0,1
	bner	%r14
.L463:
	ler	%f0,%f2
	br	%r14
.L467:
	cije	%r1,0,.L463
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
	jo	.L481
	cxbr	%f0,%f0
	jo	.L476
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	ipm	%r3
	srl	%r1,28
	srl	%r3,28
	crjlh	%r3,%r1,.L483
	kxbr	%f4,%f0
	lhi	%r0,1
	ldgr	%f1,%r15
	.cfi_register 15, 20
	lay	%r15,-24(%r15)
	.cfi_def_cfa_offset 184
	ldgr	%f5,%r12
	.cfi_register 12, 22
	ldgr	%f3,%r13
	.cfi_register 13, 21
	jl	.L475
	lhi	%r0,0
.L475:
	tmll	%r0,1
	je	.L473
	lgdr	%r4,%f4
	lgdr	%r5,%f6
.L474:
	lgr	%r12,%r4
	lgr	%r13,%r5
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
.L483:
	cije	%r1,0,.L481
.L476:
	lxr	%f0,%f4
.L481:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L473:
	.cfi_def_cfa_offset 184
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r4,%f0
	lgdr	%r5,%f2
	j	.L474
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
	cije	%r2,0,.L488
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L487:
	risbg	%r3,%r1,58,128+63,0
	srl	%r1,6
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L487
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L488:
	larl	%r2,.LANCHOR0
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
	cgije	%r3,0,.L502
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L502:
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
	je	.L505
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L505:
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
	ltg	%r8,0(%r4)
	lgr	%r7,%r2
	lgr	%r13,%r3
	lgr	%r9,%r5
	stg	%r4,160(%r15)
	je	.L515
	tmll	%r8,1
	lgr	%r10,%r8
	lgr	%r12,%r3
	jne	.L535
.L525:
	srlg	%r10,%r10,1
.L517:
	lgr	%r3,%r12
	lgr	%r2,%r7
	la	%r11,0(%r9,%r12)
	basr	%r14,%r6
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L514
	lgr	%r3,%r11
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L514
	agr	%r12,%r9
	brctg	%r10,.L517
.L515:
	lgr	%r2,%r9
	lg	%r3,160(%r15)
	msgr	%r2,%r8
	aghi	%r8,1
	stg	%r8,0(%r3)
	la	%r12,0(%r2,%r13)
	cgije	%r9,0,.L514
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L514:
	lg	%r4,232(%r15)
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
	br	%r4
.L535:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L514
	agr	%r12,%r9
	cgijlh	%r8,1,.L525
	j	.L515
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
	ltg	%r7,0(%r4)
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	je	.L538
	tmll	%r7,1
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r10,%r5
	lgr	%r11,%r7
	jne	.L554
.L545:
	srlg	%r7,%r11,1
.L540:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	la	%r12,0(%r10,%r12)
	basr	%r14,%r6
	lgr	%r1,%r2
	lgr	%r2,%r9
	cije	%r1,0,.L537
	lgr	%r3,%r12
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L537
	agr	%r12,%r10
	brctg	%r7,.L540
.L538:
	lghi	%r8,0
.L537:
	lg	%r4,224(%r15)
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
	br	%r4
.L554:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L537
	agr	%r12,%r10
	cgijlh	%r7,1,.L545
	j	.L538
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
.L565:
	cli	0(%r2),32
	llc	%r4,0(%r2)
	je	.L559
	lr	%r1,%r4
	ahi	%r1,-9
	clijle	%r1,4,.L559
	cije	%r4,43,.L560
	cije	%r4,45,.L561
	lr	%r5,%r4
	ahi	%r5,-48
	clijh	%r5,9,.L570
	lhi	%r12,0
	lgr	%r3,%r2
.L563:
	lhi	%r2,0
.L567:
	la	%r3,1(%r3)
	ahi	%r4,-48
	lr	%r1,%r2
	lr	%r5,%r4
	sll	%r1,2
	llc	%r4,0(%r3)
	ar	%r1,%r2
	lr	%r0,%r4
	ahi	%r0,-48
	sll	%r1,1
	lr	%r2,%r1
	sr	%r2,%r5
	clijle	%r0,9,.L567
	cijlh	%r12,0,.L566
	lr	%r2,%r5
	sr	%r2,%r1
.L566:
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L559:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L565
.L561:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lr	%r2,%r4
	ahi	%r2,-48
	clijh	%r2,9,.L570
	lhi	%r12,1
	j	.L563
.L560:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r12,0
	lr	%r0,%r4
	ahi	%r0,-48
	clijle	%r0,9,.L563
.L570:
	lhi	%r2,0
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
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
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L589:
	cli	0(%r2),32
	llc	%r4,0(%r2)
	je	.L583
	lr	%r1,%r4
	ahi	%r1,-9
	clijle	%r1,4,.L583
	cije	%r4,43,.L584
	cije	%r4,45,.L585
	lr	%r5,%r4
	ahi	%r5,-48
	clijh	%r5,9,.L594
	lhi	%r11,0
	lgr	%r3,%r2
.L587:
	lghi	%r2,0
.L591:
	sllg	%r1,%r2,2
	ahi	%r4,-48
	la	%r3,1(%r3)
	lgfr	%r12,%r4
	agr	%r1,%r2
	llc	%r4,0(%r3)
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lr	%r0,%r4
	ahi	%r0,-48
	sgfr	%r2,%r12
	clijle	%r0,9,.L591
	cijlh	%r11,0,.L582
	lgr	%r2,%r12
	sgr	%r2,%r1
.L582:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L583:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L589
.L585:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lr	%r2,%r4
	ahi	%r2,-48
	clijh	%r2,9,.L594
	lhi	%r11,1
	j	.L587
.L584:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r11,0
	lr	%r0,%r4
	ahi	%r0,-48
	clijle	%r0,9,.L587
.L594:
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
.globl atoll
	.type	atoll, @function
atoll:
.LFB171:
	.cfi_startproc
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L611:
	cli	0(%r2),32
	llc	%r4,0(%r2)
	je	.L607
	lr	%r1,%r4
	ahi	%r1,-9
	clijle	%r1,4,.L607
	cije	%r4,43,.L608
	cije	%r4,45,.L609
	lr	%r5,%r4
	ahi	%r5,-48
	clijh	%r5,9,.L618
	lhi	%r11,0
	lgr	%r3,%r2
.L612:
	lghi	%r2,0
.L615:
	sllg	%r1,%r2,2
	ahi	%r4,-48
	la	%r3,1(%r3)
	lgfr	%r12,%r4
	agr	%r1,%r2
	llc	%r4,0(%r3)
	sllg	%r1,%r1,1
	lgr	%r2,%r1
	lr	%r0,%r4
	ahi	%r0,-48
	sgfr	%r2,%r12
	clijle	%r0,9,.L615
	cijlh	%r11,0,.L606
	lgr	%r2,%r12
	sgr	%r2,%r1
.L606:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L607:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L611
.L609:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r11,1
	lr	%r2,%r4
	ahi	%r2,-48
	clijle	%r2,9,.L612
.L618:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L608:
	.cfi_restore_state
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lr	%r0,%r4
	ahi	%r0,-48
	clijh	%r0,9,.L618
	lhi	%r11,0
	j	.L612
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
	cgije	%r4,0,.L631
	lgr	%r7,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lgr	%r12,%r4
	j	.L634
.L641:
	je	.L630
	aghi	%r12,-1
	la	%r9,0(%r8,%r11)
	sgr	%r12,%r10
	cgije	%r12,0,.L631
.L634:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	lgr	%r2,%r7
	msgr	%r11,%r8
	la	%r11,0(%r11,%r9)
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L641
	lgr	%r12,%r10
	cgijlh	%r12,0,.L634
.L631:
	lghi	%r11,0
.L630:
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
	lgr	%r7,%r6
	lay	%r15,-80(%r15)
	.cfi_def_cfa_offset 240
	lgr	%r6,%r2
	lgr	%r9,%r3
	lgr	%r8,%r5
	lr	%r11,%r4
	cije	%r4,0,.L648
.L653:
	lr	%r10,%r11
	lgr	%r12,%r8
	sra	%r10,1
	lg	%r4,240(%r15)
	lgr	%r2,%r6
	msgfr	%r12,%r10
	la	%r12,0(%r12,%r9)
	lgr	%r3,%r12
	basr	%r14,%r7
	ltr	%r2,%r2
	je	.L643
	jle	.L646
	ahi	%r11,-1
	la	%r9,0(%r8,%r12)
	sra	%r11,1
	jne	.L653
.L648:
	lghi	%r12,0
.L643:
	lg	%r4,224(%r15)
	lgr	%r2,%r12
	lmg	%r6,%r15,160(%r15)
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
	br	%r4
.L646:
	.cfi_restore_state
	cije	%r10,0,.L648
	lr	%r11,%r10
	j	.L653
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
	j	.L680
.L682:
	crje	%r1,%r3,.L681
	la	%r2,4(%r2)
.L680:
	lt	%r1,0(%r2)
	jne	.L682
	lghi	%r2,0
	br	%r14
.L681:
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
	crje	%r4,%r5,.L685
	j	.L686
.L687:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L686
.L685:
	cijlh	%r4,0,.L687
.L686:
	cr	%r4,%r5
	jl	.L691
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L691:
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
.L696:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L696
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
	je	.L702
	lgr	%r1,%r2
.L701:
	lt	%r3,4(%r1)
	la	%r1,4(%r1)
	jne	.L701
	sgr	%r1,%r2
	srag	%r2,%r1,2
	br	%r14
.L702:
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
	cgije	%r4,0,.L712
	lgr	%r5,%r4
	aghi	%r5,-1
	tmll	%r4,1
	lgr	%r1,%r4
	jne	.L730
.L715:
	srlg	%r1,%r1,1
.L706:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L708
	la	%r5,4(%r2)
	la	%r0,4(%r3)
	cije	%r4,0,.L708
	l	%r4,0(%r5)
	lgr	%r3,%r0
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L708
	cije	%r4,0,.L708
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r1,.L706
.L712:
	lghi	%r2,0
	br	%r14
.L708:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L731
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L730:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L708
	cije	%r4,0,.L708
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L715
	j	.L712
.L731:
	lghi	%r2,-1
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB64:
	.cfi_startproc
	cgije	%r4,0,.L737
	lgr	%r0,%r4
	aghi	%r0,-1
	risbg	%r5,%r4,62,128+63,0
	lgr	%r1,%r4
	je	.L744
	cgije	%r5,1,.L755
	cgije	%r5,2,.L756
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	lgr	%r4,%r0
.L756:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L755:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cgije	%r4,1,.L737
.L744:
	srlg	%r4,%r1,2
.L734:
	c	%r3,0(%r2)
	ber	%r14
	c	%r3,4(%r2)
	la	%r1,4(%r2)
	lgr	%r2,%r1
	ber	%r14
	c	%r3,4(%r1)
	la	%r2,4(%r1)
	ber	%r14
	c	%r3,8(%r1)
	la	%r2,8(%r1)
	ber	%r14
	la	%r2,12(%r1)
	brctg	%r4,.L734
.L737:
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
	cgije	%r4,0,.L776
	lgr	%r0,%r4
	aghi	%r0,-1
	risbg	%r1,%r4,62,128+63,0
	lgr	%r5,%r4
	je	.L783
	cgije	%r1,1,.L794
	cgije	%r1,2,.L795
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L802
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	lgr	%r4,%r0
.L795:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L802
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L794:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L802
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgije	%r4,1,.L776
.L783:
	srlg	%r0,%r5,2
.L770:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L802
	l	%r1,4(%r2)
	la	%r3,4(%r3)
	lgr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L802
	l	%r1,8(%r2)
	la	%r3,4(%r3)
	c	%r1,0(%r3)
	jne	.L802
	l	%r1,12(%r2)
	la	%r3,8(%r4)
	c	%r1,8(%r4)
	jne	.L802
	la	%r2,16(%r2)
	la	%r3,4(%r3)
	brctg	%r0,.L770
.L776:
	lghi	%r2,0
	br	%r14
.L802:
	c	%r1,0(%r3)
	jl	.L808
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L808:
	lghi	%r2,-1
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
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	.cfi_offset 15, -8
	lay	%r15,-32(%r15)
	.cfi_def_cfa_offset 192
	lgr	%r12,%r2
	cgije	%r4,0,.L811
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L811:
	lg	%r4,176(%r15)
	lgr	%r2,%r12
	lmg	%r12,%r15,160(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 160
	br	%r4
	.cfi_endproc
.LFE66:
	.size	wmemcpy, .-wmemcpy
	.align	8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB67:
	.cfi_startproc
	cgrje	%r2,%r3,.L901
	lgr	%r0,%r2
	sllg	%r5,%r4,2
	sgr	%r0,%r3
	lgr	%r1,%r4
	aghi	%r1,-1
	clgrjl	%r0,%r5,.L819
	cgije	%r4,0,.L904
	clgijle	%r1,8,.L830
	lgr	%r0,%r3
	ogr	%r0,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L830
	la	%r0,4(%r3)
	cgrje	%r2,%r0,.L830
	lghi	%r1,0
	lghi	%r0,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlg	%r12,%r4,1
	ldgr	%f2,%r11
	.cfi_register 11, 17
	risbg	%r11,%r12,62,128+63,0
	lgr	%r5,%r12
	je	.L866
	cgije	%r11,1,.L872
	cgije	%r11,2,.L873
	lg	%r11,0(%r3)
	stg	%r11,0(%r2)
	lghi	%r0,1
	lghi	%r1,8
.L873:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r0,1
	aghi	%r1,8
.L872:
	aghi	%r0,1
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r12,%r0,.L893
.L866:
	srlg	%r12,%r5,2
.L824:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r12,.L824
.L893:
	tmll	%r4,1
	je	.L835
	risbg	%r4,%r4,0,128+60,2
	l	%r3,0(%r4,%r3)
	st	%r3,0(%r4,%r2)
.L835:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L819:
	cgije	%r4,0,.L901
	risbg	%r4,%r1,2,128+63,0
	sllg	%r1,%r1,2
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L848
	cgije	%r5,1,.L870
	cgije	%r5,2,.L871
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L871:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L870:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cgije	%r1,-4,.L901
.L848:
	srlg	%r4,%r4,2
.L822:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	aghi	%r1,-16
	brctg	%r4,.L822
	br	%r14
.L830:
	lgr	%r5,%r1
	aghi	%r5,1
	lghi	%r4,0
	risbg	%r0,%r5,62,128+63,0
	je	.L857
	cgije	%r0,1,.L874
	cgije	%r0,2,.L875
	l	%r4,0(%r3)
	st	%r4,0(%r2)
	aghi	%r1,-1
	lghi	%r4,4
.L875:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r1,-1
	aghi	%r4,4
.L874:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
	cgije	%r1,0,.L901
.L857:
	srlg	%r5,%r5,2
.L827:
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	l	%r0,4(%r4,%r3)
	st	%r0,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r0,12(%r4,%r3)
	st	%r0,12(%r4,%r2)
	aghi	%r4,16
	brctg	%r5,.L827
	br	%r14
.L901:
	br	%r14
.L904:
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
	ldgr	%f4,%r11
	.cfi_register 11, 18
	lgr	%r11,%r4
	ldgr	%f7,%r6
	.cfi_register 6, 23
	ldgr	%f5,%r7
	.cfi_register 7, 22
	ldgr	%f3,%r8
	.cfi_register 8, 21
	ldgr	%f1,%r9
	.cfi_register 9, 20
	ldgr	%f6,%r10
	.cfi_register 10, 19
	ldgr	%f2,%r12
	.cfi_register 12, 17
	ldgr	%f0,%r13
	.cfi_register 13, 16
	aghi	%r11,-1
	cgije	%r4,0,.L907
	risbg	%r5,%r2,64-1,128+63,61+1
	clgijle	%r11,5,.L912
	cgije	%r5,0,.L913
	st	%r3,0(%r2)
	la	%r10,4(%r2)
	aghi	%r11,-1
.L909:
	sgr	%r4,%r5
	lghi	%r12,0
	risbg	%r12,%r3,0,0+32-1,64-0-32
	sllg	%r6,%r5,2
	lghi	%r1,0
	lr	%r12,%r3
	srlg	%r9,%r4,1
	lgr	%r0,%r9
	la	%r5,0(%r6,%r2)
	risbg	%r8,%r9,62,128+63,0
	je	.L934
	cgije	%r8,1,.L938
	cgije	%r8,2,.L939
	stg	%r12,0(%r1,%r5)
	lghi	%r1,1
.L939:
	sllg	%r7,%r1,3
	aghi	%r1,1
	stg	%r12,0(%r7,%r5)
.L938:
	sllg	%r13,%r1,3
	aghi	%r1,1
	stg	%r12,0(%r13,%r5)
	cgrje	%r9,%r1,.L951
.L934:
	srlg	%r0,%r0,2
	cghi	%r0,2
	jle	.L956
	aghi	%r0,-1
	sllg	%r6,%r1,3
	lgr	%r7,%r6
	lgr	%r8,%r6
	lgr	%r9,%r6
	aghi	%r1,4
.L910:
	stg	%r12,0(%r7,%r5)
	stg	%r12,8(%r6,%r5)
	lgr	%r13,%r8
	stg	%r12,16(%r9,%r5)
	sllg	%r6,%r1,3
	lgr	%r7,%r6
	lgr	%r8,%r6
	lgr	%r9,%r6
	stg	%r12,24(%r13,%r5)
	aghi	%r1,4
	brctg	%r0,.L910
	stg	%r12,0(%r6,%r5)
	stg	%r12,8(%r6,%r5)
	stg	%r12,16(%r6,%r5)
	stg	%r12,24(%r6,%r5)
.L951:
	tmll	%r4,1
	je	.L907
	nill	%r4,65534
	sllg	%r12,%r4,2
	sgr	%r11,%r4
	la	%r1,0(%r12,%r10)
.L908:
	st	%r3,0(%r1)
	cgije	%r11,0,.L907
	st	%r3,4(%r1)
	cgije	%r11,1,.L907
	st	%r3,8(%r1)
	cgije	%r11,2,.L907
	st	%r3,12(%r1)
	cgije	%r11,3,.L907
	st	%r3,16(%r1)
	cgije	%r11,4,.L907
	st	%r3,20(%r1)
.L907:
	lgdr	%r13,%f0
	.cfi_remember_state
	.cfi_restore 13
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	lgdr	%r7,%f5
	.cfi_restore 7
	lgdr	%r6,%f7
	.cfi_restore 6
	br	%r14
.L956:
	.cfi_restore_state
	sllg	%r7,%r1,3
	aghi	%r1,4
	stg	%r12,0(%r7,%r5)
	stg	%r12,8(%r7,%r5)
	stg	%r12,16(%r7,%r5)
	stg	%r12,24(%r7,%r5)
	brctg	%r0,.L956
	j	.L951
.L913:
	lgr	%r10,%r2
	j	.L909
.L912:
	lgr	%r1,%r2
	j	.L908
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
	jhe	.L960
	cgije	%r4,0,.L1065
	lgr	%r0,%r4
	aghi	%r0,-1
	risbg	%r5,%r4,62,128+63,0
	lgr	%r1,%r4
	je	.L999
	cgije	%r5,1,.L1021
	cgijlh	%r5,2,.L1068
.L1022:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L1021:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L999
	br	%r14
.L960:
	ber	%r14
	cgije	%r4,0,.L1065
	lgr	%r1,%r4
	aghi	%r1,-1
	clgijle	%r1,14,.L970
	lgr	%r0,%r3
	ogr	%r0,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L970
	la	%r0,1(%r2)
	lgr	%r1,%r3
	sgr	%r1,%r0
	clgijle	%r1,6,.L970
	risbg	%r0,%r4,0,128+60,0
	lghi	%r1,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lgr	%r12,%r0
	aghi	%r12,-8
	srlg	%r5,%r12,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1017
	cgije	%r12,1,.L1023
	cgije	%r12,2,.L1024
	lg	%r12,0(%r2)
	stg	%r12,0(%r3)
	lghi	%r1,8
.L1024:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
.L1023:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
	cgrje	%r1,%r0,.L1050
.L1017:
	srlg	%r5,%r5,2
.L964:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	lg	%r12,8(%r1,%r2)
	stg	%r12,8(%r1,%r3)
	lg	%r0,16(%r1,%r2)
	stg	%r0,16(%r1,%r3)
	lg	%r12,24(%r1,%r2)
	stg	%r12,24(%r1,%r3)
	aghi	%r1,32
	brctg	%r5,.L964
.L1050:
	lgr	%r5,%r4
	la	%r3,0(%r1,%r3)
	la	%r2,0(%r1,%r2)
	sgr	%r5,%r1
	cgrje	%r1,%r4,.L959
	mvc	0(1,%r3),0(%r2)
	cgije	%r5,1,.L959
	mvc	1(1,%r3),1(%r2)
	cgije	%r5,2,.L959
	mvc	2(1,%r3),2(%r2)
	cgije	%r5,3,.L959
	mvc	3(1,%r3),3(%r2)
	cgije	%r5,4,.L959
	mvc	4(1,%r3),4(%r2)
	cgije	%r5,5,.L959
	mvc	5(1,%r3),5(%r2)
	cgije	%r5,6,.L959
	mvc	6(1,%r3),6(%r2)
.L959:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L999:
	srlg	%r1,%r1,2
	cghi	%r1,2
	jle	.L1060
	aghi	%r1,-1
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
.L962:
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r5,-3(%r4,%r2)
	stcy	%r5,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r1,.L962
	icy	%r1,-2(%r4,%r2)
	stcy	%r1,-2(%r4,%r3)
	icy	%r1,-3(%r4,%r2)
	stcy	%r1,-3(%r4,%r3)
	icy	%r1,-4(%r4,%r2)
	stcy	%r1,-4(%r4,%r3)
	br	%r14
.L1060:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	brctg	%r1,.L1060
	br	%r14
.L1068:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
	j	.L1022
.L970:
	risbg	%r0,%r4,62,128+63,0
	lghi	%r1,0
	lgr	%r5,%r4
	je	.L1008
	cgije	%r0,1,.L1025
	cgije	%r0,2,.L1026
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L1026:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L1025:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrjlh	%r1,%r4,.L1008
.L1065:
	br	%r14
.L1008:
	srlg	%r5,%r5,2
	cghi	%r5,2
	jle	.L1061
	aghi	%r5,-1
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
.L967:
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r4,3(%r1,%r2)
	stc	%r4,3(%r1,%r3)
	aghi	%r1,4
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	brctg	%r5,.L967
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	br	%r14
.L1061:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L1061
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
	tmll	%r2,1
	jne	.L1099
	tmll	%r2,2
	jne	.L1100
	tmll	%r2,4
	jne	.L1101
	tmll	%r2,8
	jne	.L1102
	tmll	%r2,16
	jne	.L1103
	tmll	%r2,32
	jne	.L1104
	tmll	%r2,64
	jne	.L1105
	tmll	%r2,128
	jne	.L1106
	tmll	%r2,256
	jne	.L1107
	tmll	%r2,512
	jne	.L1108
	tmll	%r2,1024
	jne	.L1109
	tmll	%r2,2048
	jne	.L1110
	tmll	%r2,4096
	jne	.L1111
	tmll	%r2,8192
	jne	.L1112
	tmll	%r2,16384
	jne	.L1113
	tmll	%r2,32768
	jne	.L1114
	tmlh	%r2,1
	jne	.L1115
	tmlh	%r2,2
	jne	.L1116
	tmlh	%r2,4
	jne	.L1117
	tmlh	%r2,8
	jne	.L1118
	tmlh	%r2,16
	jne	.L1119
	tmlh	%r2,32
	jne	.L1120
	tmlh	%r2,64
	jne	.L1121
	tmlh	%r2,128
	jne	.L1122
	tmlh	%r2,256
	jne	.L1123
	tmlh	%r2,512
	jne	.L1124
	tmlh	%r2,1024
	jne	.L1125
	tmlh	%r2,2048
	jne	.L1126
	tmlh	%r2,4096
	jne	.L1127
	tmlh	%r2,8192
	jne	.L1128
	risbg	%r1,%r2,33,128+33,0
	jne	.L1129
	cgijlh	%r2,0,.L1133
.L1098:
	lgfr	%r2,%r1
	br	%r14
.L1099:
	lhi	%r1,1
	j	.L1098
.L1100:
	lhi	%r1,2
	j	.L1098
.L1111:
	lhi	%r1,13
	j	.L1098
.L1127:
	lhi	%r1,29
	j	.L1098
.L1101:
	lhi	%r1,3
	j	.L1098
.L1102:
	lhi	%r1,4
	j	.L1098
.L1103:
	lhi	%r1,5
	j	.L1098
.L1104:
	lhi	%r1,6
	j	.L1098
.L1105:
	lhi	%r1,7
	j	.L1098
.L1106:
	lhi	%r1,8
	j	.L1098
.L1107:
	lhi	%r1,9
	j	.L1098
.L1108:
	lhi	%r1,10
	j	.L1098
.L1109:
	lhi	%r1,11
	j	.L1098
.L1110:
	lhi	%r1,12
	j	.L1098
.L1112:
	lhi	%r1,14
	j	.L1098
.L1113:
	lhi	%r1,15
	j	.L1098
.L1114:
	lhi	%r1,16
	j	.L1098
.L1115:
	lhi	%r1,17
	j	.L1098
.L1116:
	lhi	%r1,18
	j	.L1098
.L1117:
	lhi	%r1,19
	j	.L1098
.L1118:
	lhi	%r1,20
	j	.L1098
.L1119:
	lhi	%r1,21
	j	.L1098
.L1120:
	lhi	%r1,22
	j	.L1098
.L1121:
	lhi	%r1,23
	j	.L1098
.L1122:
	lhi	%r1,24
	j	.L1098
.L1123:
	lhi	%r1,25
	j	.L1098
.L1124:
	lhi	%r1,26
	j	.L1098
.L1125:
	lhi	%r1,27
	j	.L1098
.L1126:
	lhi	%r1,28
	j	.L1098
.L1128:
	lhi	%r1,30
	j	.L1098
.L1133:
	lhi	%r1,32
	j	.L1098
.L1129:
	lhi	%r1,31
	j	.L1098
	.cfi_endproc
.LFE83:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB84:
	.cfi_startproc
	cgije	%r2,0,.L1138
	risbg	%r3,%r2,63,128+63,0
	jne	.L1136
	lhi	%r3,1
.L1137:
	lr	%r1,%r2
	sra	%r1,1
	ahi	%r3,1
	tmll	%r1,1
	lgfr	%r2,%r1
	je	.L1137
.L1136:
	lgfr	%r2,%r3
	br	%r14
.L1138:
	lhi	%r3,0
	lgfr	%r2,%r3
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
	larl	%r5,.L1147
	lghi	%r2,1
	keb	%f0,.L1148-.L1147(%r5)
	blr	%r14
	keb	%f0,.L1149-.L1147(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1147:
.L1149:
	.long	2139095039
.L1148:
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
	larl	%r5,.L1155
	lghi	%r2,1
	kdb	%f0,.L1156-.L1155(%r5)
	blr	%r14
	kdb	%f0,.L1157-.L1155(%r5)
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1155:
.L1157:
	.long	2146435071
	.long	-1
.L1156:
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
	larl	%r5,.L1163
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L1164-.L1163(%r5)
	ld	%f6,.L1164-.L1163+8(%r5)
	kxbr	%f0,%f4
	lghi	%r2,1
	blr	%r14
	ld	%f4,.L1165-.L1163(%r5)
	ld	%f6,.L1165-.L1163+8(%r5)
	kxbr	%f0,%f4
	bhr	%r14
	lghi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1163:
.L1165:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1164:
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
	larl	%r5,.L1184
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1182
	le	%f4,.L1185-.L1184(%r5)
.L1170:
	tmll	%r2,1
	je	.L1171
.L1172:
	meebr	%f0,%f4
.L1171:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1169
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	meebr	%f4,%f4
	jne	.L1172
.L1183:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	lr	%r0,%r2
	srl	%r0,31
	tmll	%r2,1
	meebr	%f4,%f4
	jne	.L1172
	j	.L1183
.L1169:
	br	%r14
.L1182:
	le	%f4,.L1186-.L1184(%r5)
	j	.L1170
	.section	.rodata
	.align	8
.L1184:
.L1186:
	.long	1056964608
.L1185:
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
	larl	%r5,.L1203
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1201
	ld	%f4,.L1204-.L1203(%r5)
.L1189:
	tmll	%r2,1
	je	.L1190
.L1191:
	mdbr	%f0,%f4
.L1190:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1188
	tmll	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	mdbr	%f4,%f4
	jne	.L1191
.L1202:
	ar	%r0,%r2
	sra	%r0,1
	lgfr	%r2,%r0
	lr	%r0,%r2
	srl	%r0,31
	tmll	%r2,1
	mdbr	%f4,%f4
	jne	.L1191
	j	.L1202
.L1188:
	br	%r14
.L1201:
	ld	%f4,.L1205-.L1203(%r5)
	j	.L1189
	.section	.rodata
	.align	8
.L1203:
.L1205:
	.long	1071644672
	.long	0
.L1204:
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
	larl	%r5,.L1222
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L1207
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L1207
	cijl	%r4,0,.L1220
	ld	%f0,.L1223-.L1222(%r5)
	ld	%f2,.L1223-.L1222+8(%r5)
.L1208:
	tmll	%r4,1
	je	.L1209
.L1210:
	mxbr	%f4,%f0
.L1209:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L1207
	tmll	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1210
.L1221:
	ar	%r0,%r4
	mxbr	%f0,%f0
	sra	%r0,1
	lgfr	%r4,%r0
	lr	%r0,%r4
	srl	%r0,31
	tmll	%r4,1
	jne	.L1210
	j	.L1221
.L1207:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L1220:
	ld	%f0,.L1224-.L1222(%r5)
	ld	%f2,.L1224-.L1222+8(%r5)
	j	.L1208
	.section	.rodata
	.align	8
.L1222:
.L1224:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1223:
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
	cgije	%r4,0,.L1291
	lgr	%r1,%r4
	aghi	%r1,-1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clgijle	%r1,14,.L1227
	lgr	%r0,%r2
	ogr	%r0,%r3
	tmll	%r0,7
	jne	.L1227
	risbg	%r0,%r4,0,128+60,0
	lgr	%r5,%r0
	aghi	%r5,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1262
	cgije	%r12,1,.L1266
	cgije	%r12,2,.L1267
	xc	0(8,%r2),0(%r3)
	lghi	%r1,8
.L1267:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1266:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r0,.L1285
.L1262:
	srlg	%r5,%r5,2
.L1228:
	lg	%r0,0(%r1,%r2)
	lg	%r12,8(%r1,%r2)
	xg	%r0,0(%r1,%r3)
	xg	%r12,8(%r1,%r3)
	stg	%r0,0(%r1,%r2)
	stg	%r12,8(%r1,%r2)
	lg	%r0,16(%r1,%r2)
	lg	%r12,24(%r1,%r2)
	xg	%r0,16(%r1,%r3)
	xg	%r12,24(%r1,%r3)
	stg	%r0,16(%r1,%r2)
	stg	%r12,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1228
.L1285:
	lgr	%r0,%r4
	la	%r3,0(%r1,%r3)
	la	%r5,0(%r1,%r2)
	sgr	%r0,%r1
	cgrje	%r1,%r4,.L1226
	xc	0(1,%r5),0(%r3)
	cgije	%r0,1,.L1226
	xc	1(1,%r5),1(%r3)
	cgije	%r0,2,.L1226
	xc	2(1,%r5),2(%r3)
	cgije	%r0,3,.L1226
	xc	3(1,%r5),3(%r3)
	cgije	%r0,4,.L1226
	xc	4(1,%r5),4(%r3)
	cgije	%r0,5,.L1226
	xc	5(1,%r5),5(%r3)
	cgije	%r0,6,.L1226
	xc	6(1,%r5),6(%r3)
.L1226:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1227:
	.cfi_restore_state
	lgr	%r5,%r4
	la	%r0,0(%r4,%r3)
	risbg	%r4,%r4,62,128+63,0
	lgr	%r1,%r2
	je	.L1253
	cgije	%r4,1,.L1268
	cgijlh	%r4,2,.L1294
.L1269:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	la	%r3,1(%r3)
	xr	%r4,%r12
	stcy	%r4,-1(%r1)
.L1268:
	llgc	%r4,0(%r1)
	llgc	%r12,0(%r3)
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	xr	%r4,%r12
	stcy	%r4,-1(%r1)
	cgrje	%r0,%r3,.L1226
.L1253:
	srlg	%r5,%r5,2
.L1230:
	xc	0(3,%r1),0(%r3)
	la	%r1,4(%r1)
	la	%r3,4(%r3)
	llgc	%r4,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r4,%r0
	stcy	%r4,-1(%r1)
	brctg	%r5,.L1230
	j	.L1226
.L1291:
	.cfi_restore 12
	br	%r14
.L1294:
	.cfi_register 12, 16
	lgr	%r12,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r12)
	j	.L1269
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
	je	.L1297
.L1298:
	cli	1(%r1),0
	la	%r1,1(%r1)
	jne	.L1298
.L1297:
	cgije	%r4,0,.L1300
	lgr	%r0,%r4
	aghi	%r0,-1
	tmll	%r4,1
	jne	.L1320
.L1309:
	srlg	%r4,%r4,1
.L1299:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L1321
	llgc	%r5,1(%r3)
	la	%r1,2(%r1)
	la	%r3,2(%r3)
	stcy	%r5,-1(%r1)
	cgije	%r5,0,.L1322
	brctg	%r4,.L1299
.L1300:
	mvi	0(%r1),0
.L1302:
	br	%r14
.L1320:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L1302
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgijlh	%r0,0,.L1309
	mvi	0(%r1),0
	br	%r14
.L1321:
	br	%r14
.L1322:
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
	lghi	%r5,0
	lgr	%r1,%r2
	cgije	%r3,0,.L1324
	risbg	%r2,%r3,62,128+63,0
	lgr	%r4,%r3
	je	.L1336
	cgije	%r2,1,.L1347
	cgije	%r2,2,.L1348
	cli	0(%r1),0
	jne	.L1356
.L1324:
	lgr	%r2,%r5
	br	%r14
.L1356:
	lghi	%r5,1
.L1348:
	la	%r2,0(%r5,%r1)
	cli	0(%r2),0
	je	.L1324
	aghi	%r5,1
.L1347:
	la	%r2,0(%r5,%r1)
	cli	0(%r2),0
	je	.L1324
	aghi	%r5,1
	cgrje	%r5,%r3,.L1324
.L1336:
	srlg	%r0,%r4,2
.L1325:
	la	%r3,0(%r5,%r1)
	cli	0(%r3),0
	je	.L1324
	lgr	%r4,%r5
	aghi	%r4,1
	lgr	%r5,%r4
	la	%r2,0(%r4,%r1)
	cli	0(%r2),0
	je	.L1324
	aghi	%r5,1
	la	%r3,0(%r5,%r1)
	cli	0(%r3),0
	je	.L1324
	la	%r2,2(%r4,%r1)
	lgr	%r5,%r4
	aghi	%r5,2
	cli	0(%r2),0
	je	.L1324
	aghi	%r4,3
	lgr	%r5,%r4
	brctg	%r0,.L1325
	j	.L1324
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
	je	.L1363
.L1369:
	lgr	%r1,%r3
	j	.L1362
.L1361:
	crje	%r4,%r5,.L1360
.L1362:
	llc	%r4,0(%r1)
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1361
	cli	1(%r2),0
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	jne	.L1369
.L1363:
	lghi	%r2,0
.L1360:
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
	lghi	%r5,0
	lgr	%r1,%r2
.L1374:
	llc	%r4,0(%r1)
	lgr	%r2,%r1
	crje	%r4,%r3,.L1373
	lgr	%r2,%r5
.L1373:
	lgr	%r5,%r2
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1374
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
	je	.L1377
	lr	%r8,%r10
	lgr	%r9,%r3
.L1379:
	cli	1(%r9),0
	la	%r9,1(%r9)
	jne	.L1379
	slgr	%r9,%r3
	jhe	.L1377
	aghi	%r9,-1
	j	.L1397
.L1400:
	la	%r2,1(%r2)
	cije	%r1,0,.L1399
.L1397:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1400
	lgr	%r0,%r9
	lgr	%r5,%r3
	lr	%r12,%r8
	lgr	%r4,%r2
	aghi	%r0,1
.L1381:
	la	%r4,1(%r4)
	la	%r11,1(%r5)
	brctg	%r0,.L1395
.L1383:
	crje	%r1,%r12,.L1377
.L1384:
	la	%r2,1(%r2)
	j	.L1397
.L1395:
	crjlh	%r1,%r12,.L1384
	cli	0(%r4),0
	llc	%r1,0(%r4)
	llc	%r12,1(%r5)
	je	.L1383
	cli	1(%r5),0
	je	.L1384
	lgr	%r5,%r11
	j	.L1381
.L1399:
	lghi	%r2,0
.L1377:
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
	larl	%r5,.L1414
	kdb	%f0,.L1415-.L1414(%r5)
	jl	.L1413
	jnh	.L1406
	kdb	%f2,.L1415-.L1414(%r5)
	jl	.L1405
.L1406:
	br	%r14
.L1413:
	kdb	%f2,.L1415-.L1414(%r5)
	jnh	.L1406
.L1405:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1414:
.L1415:
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
	cgije	%r5,0,.L1460
	clgrjl	%r3,%r5,.L1425
	sgr	%r3,%r5
	algr	%r3,%r2
	jnle	.L1425
	ldgr	%f2,%r11
	.cfi_register 11, 17
	llc	%r11,0(%r4)
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L1422
.L1426:
	lgr	%r2,%r12
.L1418:
	clgrjl	%r3,%r2,.L1427
.L1422:
	llc	%r1,0(%r2)
	la	%r12,1(%r2)
	crjlh	%r1,%r11,.L1426
	cgije	%r5,1,.L1416
.L1421:
	lgr	%r0,%r5
	aghi	%r0,-1
	lghi	%r1,1
	risbg	%r10,%r0,62,128+63,0
	je	.L1437
	cgije	%r10,1,.L1447
	cgijlh	%r10,2,.L1463
.L1448:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1454
	aghi	%r1,1
.L1447:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1454
	aghi	%r1,1
	cgrje	%r1,%r5,.L1416
.L1437:
	srlg	%r0,%r0,2
.L1419:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1454
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1454
	llgc	%r9,2(%r1,%r4)
	la	%r10,2(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1454
	llgc	%r9,3(%r1,%r4)
	la	%r10,3(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1454
	aghi	%r1,4
	brctg	%r0,.L1419
.L1416:
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
.L1463:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	je	.L1448
.L1454:
	clgrjl	%r3,%r12,.L1427
	llc	%r1,0(%r12)
	la	%r2,1(%r12)
	crjlh	%r11,%r1,.L1418
	lgr	%r0,%r12
	lgr	%r12,%r2
	lgr	%r2,%r0
	j	.L1421
.L1427:
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
.L1425:
	lghi	%r2,0
	br	%r14
.L1460:
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
	lgr	%r12,%r4
	cgije	%r4,0,.L1466
	brasl	%r14,memmove@PLT
.L1466:
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
	larl	%r5,.L1498
	kdb	%f0,.L1499-.L1498(%r5)
	jl	.L1495
	kdb	%f0,.L1500-.L1498(%r5)
	jnhe	.L1496
	lhi	%r3,0
.L1475:
	lhi	%r1,0
.L1481:
	ahi	%r1,1
	mdb	%f0,.L1501-.L1498(%r5)
	kdb	%f0,.L1500-.L1498(%r5)
	jhe	.L1481
.L1482:
	st	%r1,0(%r2)
	cije	%r3,0,.L1472
	lcdbr	%f0,%f0
.L1472:
	br	%r14
.L1496:
	kdb	%f0,.L1501-.L1498(%r5)
	jnl	.L1478
	cdb	%f0,.L1499-.L1498(%r5)
	jne	.L1487
.L1478:
	mvhi	0(%r2),0
	br	%r14
.L1495:
	lcdbr	%f2,%f0
	kdb	%f0,.L1502-.L1498(%r5)
	jnle	.L1497
	lhi	%r3,1
	ldr	%f0,%f2
	j	.L1475
.L1497:
	kdb	%f0,.L1503-.L1498(%r5)
	jnh	.L1478
	lhi	%r3,1
.L1476:
	lhi	%r1,0
	ldr	%f0,%f2
.L1483:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1501-.L1498(%r5)
	jl	.L1483
	j	.L1482
.L1487:
	lhi	%r3,0
	ldr	%f2,%f0
	j	.L1476
	.section	.rodata
	.align	8
.L1498:
.L1503:
	.long	-1075838976
	.long	0
.L1502:
	.long	-1074790400
	.long	0
.L1501:
	.long	1071644672
	.long	0
.L1500:
	.long	1072693248
	.long	0
.L1499:
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
	lgr	%r4,%r2
	lghi	%r2,0
	cgije	%r4,0,.L1507
.L1506:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1506
	br	%r14
.L1507:
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
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clrjhe	%r3,%r2,.L1757
	lhi	%r12,1
	cijl	%r3,0,.L1753
	lr	%r5,%r3
	sll	%r5,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1515
	lr	%r5,%r1
	lhi	%r10,31
	lhi	%r12,2
	lhi	%r9,11
	lgr	%r3,%r1
	sll	%r5,1
	cijl	%r1,0,.L1753
.L1517:
	lr	%r11,%r10
	sll	%r0,1
	ahi	%r11,-1
	ahi	%r10,-3
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1515
	lr	%r5,%r1
	sll	%r5,1
	brct	%r9,.L1722
.L1516:
	cgije	%r4,0,.L1645
	lr	%r11,%r2
.L1645:
	llgfr	%r2,%r11
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
.L1722:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	sll	%r0,1
	cijl	%r1,0,.L1753
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1515
	lr	%r5,%r1
	lr	%r12,%r0
	sll	%r5,1
	sll	%r0,1
	lgr	%r3,%r1
	cijl	%r1,0,.L1753
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L1515
	lr	%r5,%r1
	lr	%r12,%r0
	lgr	%r3,%r1
	sll	%r5,1
	cijhe	%r1,0,.L1517
.L1753:
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r11,%r2
	lhi	%r0,0
	slr	%r11,%r3
	alcr	%r0,%r0
	cijlh	%r0,0,.L1647
	lr	%r1,%r2
.L1647:
	llgfr	%r2,%r1
	cije	%r0,0,.L1648
	lr	%r11,%r12
.L1649:
	lr	%r9,%r12
	srl	%r9,1
	risbg	%r5,%r3,64-31,128+63,32+31
	cijlh	%r9,0,.L1650
	j	.L1516
.L1515:
	cije	%r0,0,.L1652
	lr	%r11,%r2
	sr	%r11,%r5
	lr	%r10,%r2
	lhi	%r9,0
	slr	%r10,%r5
	alcr	%r9,%r9
	cijlh	%r9,0,.L1758
	llgfr	%r2,%r2
	cije	%r9,0,.L1521
.L1775:
	lr	%r11,%r0
.L1522:
	llgtr	%r9,%r12
	llgtr	%r5,%r3
	lr	%r12,%r0
	lgr	%r3,%r1
.L1650:
	lr	%r1,%r2
	sr	%r1,%r5
	lr	%r0,%r2
	slr	%r0,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	cijlh	%r5,0,.L1524
	lr	%r1,%r2
.L1524:
	llgfr	%r2,%r1
	cijlh	%r5,0,.L1526
	lhi	%r9,0
.L1526:
	lr	%r1,%r12
	srl	%r1,2
	or	%r11,%r9
	lr	%r9,%r3
	srl	%r9,2
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L1528
	lr	%r2,%r5
.L1528:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1530
	lhi	%r1,0
.L1530:
	lr	%r5,%r12
	srl	%r5,3
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,3
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1532
	lr	%r1,%r2
.L1532:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L1534
	lhi	%r5,0
.L1534:
	lr	%r1,%r12
	srl	%r1,4
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,4
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L1536
	lr	%r2,%r5
.L1536:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1538
	lhi	%r1,0
.L1538:
	lr	%r5,%r12
	srl	%r5,5
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,5
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1540
	lr	%r1,%r2
.L1540:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L1542
	lhi	%r5,0
.L1542:
	lr	%r1,%r12
	srl	%r1,6
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,6
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L1544
	lr	%r2,%r5
.L1544:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1546
	lhi	%r1,0
.L1546:
	lr	%r5,%r12
	srl	%r5,7
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,7
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1548
	lr	%r1,%r2
.L1548:
	llgfr	%r2,%r1
	cije	%r0,0,.L1759
.L1550:
	lr	%r1,%r12
	srl	%r1,8
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,8
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1760
	llgfr	%r2,%r2
	cije	%r0,0,.L1761
.L1554:
	lr	%r5,%r12
	srl	%r5,9
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,9
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1556
	lr	%r1,%r2
.L1556:
	llgfr	%r2,%r1
	cije	%r0,0,.L1762
.L1558:
	lr	%r1,%r12
	srl	%r1,10
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,10
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1763
	llgfr	%r2,%r2
	cije	%r0,0,.L1764
.L1562:
	lr	%r5,%r12
	srl	%r5,11
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,11
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1564
	lr	%r1,%r2
.L1564:
	llgfr	%r2,%r1
	cije	%r0,0,.L1765
.L1566:
	lr	%r1,%r12
	srl	%r1,12
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,12
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1766
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1570
.L1776:
	lhi	%r1,0
.L1570:
	lr	%r5,%r12
	srl	%r5,13
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,13
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1572
	lr	%r1,%r2
.L1572:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L1574
	lhi	%r5,0
.L1574:
	lr	%r1,%r12
	srl	%r1,14
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,14
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L1576
	lr	%r2,%r5
.L1576:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1578
	lhi	%r1,0
.L1578:
	lr	%r5,%r12
	srl	%r5,15
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,15
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1580
	lr	%r1,%r2
.L1580:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L1582
	lhi	%r5,0
.L1582:
	lr	%r1,%r12
	srl	%r1,16
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,16
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L1584
	lr	%r2,%r5
.L1584:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1586
	lhi	%r1,0
.L1586:
	lr	%r5,%r12
	srl	%r5,17
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,17
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1588
	lr	%r1,%r2
.L1588:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L1590
	lhi	%r5,0
.L1590:
	lr	%r1,%r12
	srl	%r1,18
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,18
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L1592
	lr	%r2,%r5
.L1592:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1594
	lhi	%r1,0
.L1594:
	lr	%r5,%r12
	srl	%r5,19
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,19
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1596
	lr	%r1,%r2
.L1596:
	llgfr	%r2,%r1
	cije	%r0,0,.L1767
.L1598:
	lr	%r1,%r12
	srl	%r1,20
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,20
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1768
.L1600:
	llgfr	%r2,%r2
	cije	%r0,0,.L1769
.L1602:
	lr	%r5,%r12
	srl	%r5,21
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,21
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1604
	lr	%r1,%r2
.L1604:
	llgfr	%r2,%r1
	cije	%r0,0,.L1770
.L1606:
	lr	%r1,%r12
	srl	%r1,22
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,22
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1771
.L1608:
	llgfr	%r2,%r2
	cije	%r0,0,.L1772
.L1610:
	lr	%r5,%r12
	srl	%r5,23
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,23
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1612
	lr	%r1,%r2
.L1612:
	llgfr	%r2,%r1
	cije	%r0,0,.L1773
.L1614:
	lr	%r1,%r12
	srl	%r1,24
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,24
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1774
.L1616:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1618
	lhi	%r1,0
.L1618:
	lr	%r5,%r12
	srl	%r5,25
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,25
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L1620
	lr	%r1,%r2
.L1620:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L1622
	lhi	%r5,0
.L1622:
	lr	%r1,%r12
	srl	%r1,26
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,26
	cije	%r1,0,.L1516
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L1624
	lr	%r2,%r5
.L1624:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1626
	lhi	%r1,0
.L1626:
	lr	%r5,%r12
	srl	%r5,27
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,27
	cije	%r5,0,.L1516
	lr	%r0,%r2
	sr	%r0,%r9
	lr	%r10,%r2
	lhi	%r1,0
	slr	%r10,%r9
	alcr	%r1,%r1
	cije	%r1,0,.L1628
	lr	%r2,%r0
.L1628:
	llgfr	%r2,%r2
	cijlh	%r1,0,.L1630
	lhi	%r5,0
.L1630:
	lr	%r9,%r12
	srl	%r9,28
	lr	%r1,%r3
	or	%r11,%r5
	srl	%r1,28
	cije	%r9,0,.L1516
	lr	%r0,%r2
	sr	%r0,%r1
	lr	%r10,%r2
	lhi	%r5,0
	slr	%r10,%r1
	alcr	%r5,%r5
	cije	%r5,0,.L1632
	lr	%r2,%r0
.L1632:
	llgfr	%r2,%r2
	cijlh	%r5,0,.L1634
	lhi	%r9,0
.L1634:
	lr	%r1,%r12
	srl	%r1,29
	lr	%r5,%r3
	or	%r11,%r9
	srl	%r5,29
	cije	%r1,0,.L1516
	lr	%r0,%r2
	sr	%r0,%r5
	lr	%r10,%r2
	lhi	%r9,0
	slr	%r10,%r5
	alcr	%r9,%r9
	cije	%r9,0,.L1636
	lr	%r2,%r0
.L1636:
	llgfr	%r2,%r2
	cijlh	%r9,0,.L1638
	lhi	%r1,0
.L1638:
	lr	%r5,%r12
	srl	%r5,30
	lr	%r0,%r3
	or	%r11,%r1
	srl	%r0,30
	cije	%r5,0,.L1516
	lr	%r1,%r2
	sr	%r1,%r0
	lr	%r10,%r2
	lhi	%r9,0
	slr	%r10,%r0
	alcr	%r9,%r9
	cijlh	%r9,0,.L1640
	lr	%r1,%r2
.L1640:
	llgfr	%r2,%r1
	cijlh	%r9,0,.L1642
	lhi	%r5,0
.L1642:
	or	%r11,%r5
	srl	%r3,31
	cijhe	%r12,0,.L1516
	lr	%r0,%r2
	sr	%r0,%r3
	lr	%r12,%r2
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	cijlh	%r3,0,.L1644
	lr	%r0,%r2
.L1644:
	llgfr	%r2,%r0
	or	%r11,%r3
	j	.L1516
.L1521:
	lhi	%r11,0
	j	.L1522
.L1758:
	lr	%r2,%r11
	llgfr	%r2,%r2
	cije	%r9,0,.L1521
	j	.L1775
.L1759:
	lhi	%r5,0
	j	.L1550
.L1761:
	lhi	%r1,0
	j	.L1554
.L1760:
	lr	%r2,%r5
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1554
	j	.L1761
.L1648:
	lhi	%r11,0
	j	.L1649
.L1762:
	lhi	%r5,0
	j	.L1558
.L1764:
	lhi	%r1,0
	j	.L1562
.L1763:
	lr	%r2,%r5
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1562
	j	.L1764
.L1765:
	lhi	%r5,0
	j	.L1566
.L1766:
	lr	%r2,%r5
	llgfr	%r2,%r2
	cijlh	%r0,0,.L1570
	j	.L1776
.L1767:
	lhi	%r5,0
	j	.L1598
.L1769:
	lhi	%r1,0
	j	.L1602
.L1768:
	lr	%r2,%r5
	j	.L1600
.L1770:
	lhi	%r5,0
	j	.L1606
.L1772:
	lhi	%r1,0
	j	.L1610
.L1771:
	lr	%r2,%r5
	j	.L1608
.L1773:
	lhi	%r5,0
	j	.L1614
.L1774:
	lr	%r2,%r5
	j	.L1616
.L1757:
	lr	%r1,%r3
	xr	%r1,%r2
	lr	%r5,%r2
	sr	%r5,%r3
	lpr	%r0,%r1
	ahi	%r0,-1
	lr	%r11,%r0
	srl	%r11,31
	cijhe	%r0,0,.L1513
	lr	%r2,%r5
.L1513:
	llgfr	%r2,%r2
	j	.L1516
.L1652:
	lhi	%r11,0
	j	.L1516
	.cfi_endproc
.LFE103:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB104:
	.cfi_startproc
	cgije	%r2,0,.L1780
	sllg	%r2,%r2,8
	flogr	%r2,%r2
	ahi	%r2,-33
	lgfr	%r2,%r2
	br	%r14
.L1780:
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
	cgrje	%r3,%r2,.L1784
	flogr	%r2,%r1
	ahi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L1784:
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
	cgije	%r2,0,.L1789
	risbg	%r0,%r2,63,128+63,0
	srlg	%r5,%r2,1
	lr	%r1,%r2
	srl	%r1,1
	lcr	%r4,%r0
	nr	%r4,%r3
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lr	%r11,%r3
	ldgr	%f0,%r12
	.cfi_register 12, 16
	sll	%r11,1
	cgije	%r5,0,.L1787
	nilf	%r1,1
	srlg	%r0,%r2,2
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,2
	sll	%r12,2
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	nilf	%r5,1
	srlg	%r0,%r2,3
	lr	%r1,%r2
	lr	%r11,%r3
	srl	%r1,3
	sll	%r11,3
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L1787
	nilf	%r1,1
	srlg	%r0,%r2,4
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,4
	sll	%r12,4
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	nilf	%r5,1
	srlg	%r0,%r2,5
	lr	%r1,%r2
	lr	%r11,%r3
	srl	%r1,5
	sll	%r11,5
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L1787
	nilf	%r1,1
	srlg	%r0,%r2,6
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,6
	sll	%r12,6
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	nilf	%r5,1
	srlg	%r0,%r2,7
	lr	%r1,%r2
	lr	%r11,%r3
	srl	%r1,7
	sll	%r11,7
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L1787
	nilf	%r1,1
	srlg	%r0,%r2,8
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,8
	sll	%r12,8
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	nilf	%r5,1
	srlg	%r0,%r2,9
	lr	%r1,%r2
	lr	%r11,%r3
	srl	%r1,9
	sll	%r11,9
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L1787
	nilf	%r1,1
	srlg	%r0,%r2,10
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,10
	sll	%r12,10
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,11
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,11
	sll	%r11,11
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,12
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,12
	sll	%r12,12
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,13
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,13
	sll	%r11,13
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,14
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,14
	sll	%r12,14
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,15
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,15
	sll	%r11,15
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,16
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,16
	sll	%r12,16
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,17
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,17
	sll	%r11,17
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,18
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,18
	sll	%r12,18
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,19
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,19
	sll	%r11,19
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,20
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,20
	sll	%r12,20
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,21
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,21
	sll	%r11,21
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,22
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,22
	sll	%r12,22
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,23
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,23
	sll	%r11,23
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,24
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,24
	sll	%r12,24
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,25
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,25
	sll	%r11,25
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,26
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,26
	sll	%r12,26
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,27
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,27
	sll	%r11,27
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,28
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,28
	sll	%r12,28
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,29
	lr	%r5,%r2
	lr	%r11,%r3
	srl	%r5,29
	sll	%r11,29
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r2,30
	lr	%r5,%r2
	lr	%r12,%r3
	srl	%r5,30
	sll	%r12,30
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L1787
	nilf	%r5,1
	lr	%r11,%r2
	srl	%r11,31
	sll	%r3,31
	lcr	%r2,%r5
	lcr	%r0,%r11
	nr	%r2,%r12
	nr	%r3,%r0
	ar	%r2,%r4
	ar	%r3,%r2
	lr	%r4,%r3
.L1787:
	llgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L1789:
	lhi	%r4,0
	llgfr	%r2,%r4
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
	lr	%r1,%r4
	risbg	%r0,%r4,32,128+60,0
	srl	%r1,3
	clgrjh	%r3,%r2,.L1889
	la	%r5,0(%r4,%r3)
	clgrjle	%r2,%r5,.L2000
.L1889:
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
	cije	%r1,0,.L2001
	risbg	%r12,%r1,32,128+60,3
	lgr	%r8,%r12
	aghi	%r8,-8
	lghi	%r10,0
	srlg	%r9,%r8,3
	aghi	%r9,1
	risbg	%r11,%r9,62,128+63,0
	je	.L1937
	cgije	%r11,1,.L1953
	cgije	%r11,2,.L1954
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r10,8
.L1954:
	lg	%r5,0(%r10,%r3)
	stg	%r5,0(%r10,%r2)
	aghi	%r10,8
.L1953:
	lg	%r8,0(%r10,%r3)
	stg	%r8,0(%r10,%r2)
	aghi	%r10,8
	cgrje	%r10,%r12,.L1982
.L1937:
	srlg	%r9,%r9,2
.L1892:
	lg	%r12,0(%r10,%r3)
	stg	%r12,0(%r10,%r2)
	lg	%r11,8(%r10,%r3)
	stg	%r11,8(%r10,%r2)
	lg	%r1,16(%r10,%r3)
	stg	%r1,16(%r10,%r2)
	lg	%r5,24(%r10,%r3)
	stg	%r5,24(%r10,%r2)
	aghi	%r10,32
	brctg	%r9,.L1892
.L1982:
	clrjle	%r4,%r0,.L1885
	lr	%r10,%r4
	sr	%r10,%r0
	lr	%r8,%r10
	ahi	%r8,-1
	llgfr	%r5,%r0
	clijle	%r8,14,.L1894
	lgr	%r12,%r2
	la	%r9,1(%r5,%r3)
	algfr	%r12,%r0
	lgr	%r1,%r12
	sgr	%r1,%r9
	lgr	%r11,%r3
	algfr	%r11,%r0
	clgijle	%r1,6,.L1894
	lgr	%r8,%r11
	ogr	%r8,%r12
	risbg	%r9,%r8,61,128+63,0
	aghi	%r9,-1
	cgijhe	%r9,0,.L1894
	risbg	%r9,%r10,32,128+60,0
	lgr	%r5,%r9
	aghi	%r5,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L1928
	cgije	%r8,1,.L1955
	cgijlh	%r8,2,.L2002
.L1956:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L1955:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r1,%r9,.L1981
.L1928:
	srlg	%r5,%r5,2
.L1895:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L1895
.L1981:
	risbg	%r11,%r10,32,128+60,0
	ar	%r11,%r0
	tmll	%r10,7
	je	.L1885
	llgfr	%r12,%r11
	lr	%r10,%r11
	ahi	%r10,1
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	clrjhe	%r10,%r4,.L1885
	llgfr	%r5,%r10
	lr	%r1,%r11
	ahi	%r1,2
	ic	%r9,0(%r5,%r3)
	stc	%r9,0(%r5,%r2)
	clrjhe	%r1,%r4,.L1885
	llgfr	%r10,%r1
	lr	%r8,%r11
	ahi	%r8,3
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	clrjhe	%r8,%r4,.L1885
	llgfr	%r5,%r8
	lr	%r1,%r11
	ahi	%r1,4
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	clrjhe	%r1,%r4,.L1885
	llgfr	%r8,%r1
	lr	%r9,%r11
	ahi	%r9,5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	clrjhe	%r9,%r4,.L1885
	llgfr	%r12,%r9
	ahi	%r11,6
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	clrjhe	%r11,%r4,.L1885
	llgfr	%r4,%r11
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1885:
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
.L2000:
	lr	%r1,%r4
	ahi	%r1,-1
	llgfr	%r1,%r1
	cgije	%r4,0,.L1998
	lgr	%r4,%r1
	aghi	%r4,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1946
	cgije	%r0,1,.L1951
	cgije	%r0,2,.L1952
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1952:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1951:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1998
.L1946:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L1994
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1899:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L1899
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	br	%r14
.L1994:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r0,-2(%r1,%r3)
	stcy	%r0,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1994
.L1998:
	br	%r14
.L2002:
	.cfi_register 8, 20
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lg	%r8,0(%r11)
	stg	%r8,0(%r12)
	lghi	%r1,8
	j	.L1956
.L2001:
	llgfr	%r5,%r0
	cgije	%r4,0,.L1885
.L1894:
	lghi	%r11,-1
	xgr	%r11,%r5
	ic	%r0,0(%r5,%r3)
	lgr	%r1,%r5
	aghi	%r1,1
	ar	%r11,%r4
	stc	%r0,0(%r5,%r2)
	risbg	%r9,%r11,62,128+63,0
	clrjhe	%r1,%r4,.L1885
	cije	%r9,0,.L1919
	cije	%r9,1,.L1958
	cijlh	%r9,2,.L2003
.L1959:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,1
.L1958:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L1885
.L1919:
	lr	%r4,%r11
	srl	%r4,2
	chi	%r4,2
	jle	.L1993
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1897:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1897
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L1885
.L1993:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r9,3(%r1,%r3)
	stc	%r9,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L1993
	j	.L1885
.L2003:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lgr	%r1,%r5
	aghi	%r1,2
	j	.L1959
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
	lr	%r12,%r4
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srl	%r12,1
	clgrjh	%r3,%r2,.L2009
	la	%r1,0(%r4,%r3)
	clgrjle	%r2,%r1,.L2092
.L2009:
	cije	%r12,0,.L2008
	lr	%r1,%r12
	ahi	%r1,-1
	clijle	%r1,6,.L2012
	lgr	%r0,%r3
	ogr	%r0,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L2012
	la	%r10,2(%r3)
	lgr	%r11,%r2
	sgr	%r11,%r10
	clgijle	%r11,4,.L2012
	risbg	%r11,%r4,32,128+60,0
	lgr	%r5,%r11
	aghi	%r5,-8
	lr	%r0,%r4
	lghi	%r1,0
	srl	%r0,3
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L2043
	cgije	%r10,1,.L2059
	cgijlh	%r10,2,.L2093
.L2060:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L2059:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r11,.L2078
.L2043:
	srlg	%r5,%r5,2
.L2013:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L2013
.L2078:
	lr	%r1,%r0
	sll	%r1,2
	crje	%r1,%r12,.L2008
	risbg	%r11,%r1,32,128+60,1
	lr	%r5,%r1
	ahi	%r5,1
	lh	%r0,0(%r11,%r3)
	sth	%r0,0(%r11,%r2)
	clrjhe	%r5,%r12,.L2008
	risbg	%r10,%r5,31,128+62,1
	ahi	%r1,2
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	clrjhe	%r1,%r12,.L2008
	risbg	%r12,%r1,31,128+61,1
	lh	%r1,0(%r12,%r3)
	sth	%r1,0(%r12,%r2)
.L2008:
	tmll	%r4,1
	je	.L2005
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2005:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L2092:
	.cfi_restore_state
	lr	%r0,%r4
	ahi	%r0,-1
	llgfr	%r1,%r0
	cgije	%r4,0,.L2005
	lgr	%r4,%r1
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L2052
	cgije	%r5,1,.L2057
	cgije	%r5,2,.L2058
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L2058:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
.L2057:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2005
.L2052:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L2089
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2018:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2018
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2005
.L2093:
	lg	%r10,0(%r3)
	stg	%r10,0(%r2)
	lghi	%r1,8
	j	.L2060
.L2089:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r10,-2(%r1,%r3)
	stcy	%r10,-2(%r1,%r2)
	icy	%r11,-3(%r1,%r3)
	stcy	%r11,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2089
	j	.L2005
.L2012:
	risbg	%r11,%r12,32,128+62,1
	lgr	%r0,%r11
	aghi	%r0,-2
	lghi	%r1,0
	srlg	%r10,%r0,1
	aghi	%r10,1
	risbg	%r5,%r10,62,128+63,0
	je	.L2034
	cgije	%r5,1,.L2061
	cgijlh	%r5,2,.L2094
.L2062:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L2061:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r1,%r11,.L2008
.L2034:
	srlg	%r5,%r10,2
	cghi	%r5,2
	jle	.L2088
	aghi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2015:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brctg	%r5,.L2015
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L2008
.L2088:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	lh	%r10,2(%r1,%r3)
	sth	%r10,2(%r1,%r2)
	lh	%r12,4(%r1,%r3)
	sth	%r12,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r5,.L2088
	j	.L2008
.L2094:
	lh	%r12,0(%r3)
	lghi	%r1,2
	sth	%r12,0(%r2)
	j	.L2062
	.cfi_endproc
.LFE108:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB109:
	.cfi_startproc
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbg	%r0,%r4,32,128+61,0
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lr	%r12,%r4
	srl	%r12,2
	clgrjh	%r3,%r2,.L2101
	la	%r1,0(%r4,%r3)
	clgrjle	%r2,%r1,.L2232
.L2101:
	cije	%r12,0,.L2233
	lr	%r1,%r12
	ahi	%r1,-1
	clijle	%r1,8,.L2103
	lgr	%r9,%r2
	ogr	%r9,%r3
	risbg	%r10,%r9,61,128+63,0
	aghi	%r10,-1
	cgijhe	%r10,0,.L2103
	la	%r11,4(%r3)
	cgrje	%r2,%r11,.L2103
	risbg	%r8,%r4,32,128+60,0
	lgr	%r5,%r8
	aghi	%r5,-8
	lr	%r11,%r4
	lghi	%r1,0
	srl	%r11,3
	srlg	%r10,%r5,3
	aghi	%r10,1
	risbg	%r9,%r10,62,128+63,0
	je	.L2164
	cgije	%r9,1,.L2180
	cgijlh	%r9,2,.L2234
.L2181:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
.L2180:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r8,.L2215
.L2164:
	srlg	%r8,%r10,2
.L2104:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r9,8(%r1,%r3)
	stg	%r9,8(%r1,%r2)
	lg	%r5,16(%r1,%r3)
	stg	%r5,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r8,.L2104
.L2215:
	sll	%r11,1
	crje	%r11,%r12,.L2107
	risbg	%r12,%r11,32,128+60,2
	l	%r1,0(%r12,%r3)
	st	%r1,0(%r12,%r2)
.L2107:
	clrjle	%r4,%r0,.L2096
	lr	%r10,%r4
	sr	%r10,%r0
	lr	%r1,%r10
	ahi	%r1,-1
	llgfr	%r8,%r0
	clijle	%r1,14,.L2099
	lgr	%r12,%r2
	la	%r9,1(%r8,%r3)
	algfr	%r12,%r0
	lgr	%r5,%r12
	sgr	%r5,%r9
	lgr	%r11,%r3
	algfr	%r11,%r0
	clgijle	%r5,6,.L2099
	lgr	%r1,%r11
	ogr	%r1,%r12
	risbg	%r9,%r1,61,128+63,0
	aghi	%r9,-1
	cgijhe	%r9,0,.L2099
	risbg	%r9,%r10,32,128+60,0
	lgr	%r8,%r9
	aghi	%r8,-8
	lghi	%r1,0
	srlg	%r5,%r8,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L2146
	cgije	%r8,1,.L2184
	cgijlh	%r8,2,.L2235
.L2185:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L2184:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r1,%r9,.L2214
.L2146:
	srlg	%r5,%r5,2
.L2108:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L2108
.L2214:
	risbg	%r11,%r10,32,128+60,0
	ar	%r11,%r0
	tmll	%r10,7
	je	.L2096
	llgfr	%r12,%r11
	lr	%r10,%r11
	ahi	%r10,1
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	clrjhe	%r10,%r4,.L2096
	llgfr	%r5,%r10
	lr	%r1,%r11
	ahi	%r1,2
	ic	%r9,0(%r5,%r3)
	stc	%r9,0(%r5,%r2)
	clrjhe	%r1,%r4,.L2096
	llgfr	%r10,%r1
	lr	%r8,%r11
	ahi	%r8,3
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	clrjhe	%r8,%r4,.L2096
	llgfr	%r5,%r8
	lr	%r1,%r11
	ahi	%r1,4
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	clrjhe	%r1,%r4,.L2096
	llgfr	%r8,%r1
	lr	%r9,%r11
	ahi	%r9,5
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	clrjhe	%r9,%r4,.L2096
	llgfr	%r12,%r9
	ahi	%r11,6
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	clrjhe	%r11,%r4,.L2096
	llgfr	%r4,%r11
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2096:
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
.L2232:
	.cfi_restore_state
	lr	%r5,%r4
	ahi	%r5,-1
	llgfr	%r1,%r5
	cgije	%r4,0,.L2096
	lgr	%r4,%r1
	aghi	%r4,1
	risbg	%r8,%r4,62,128+63,0
	je	.L2173
	cgije	%r8,1,.L2178
	cgije	%r8,2,.L2179
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	aghi	%r1,-1
.L2179:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,-1
.L2178:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L2096
.L2173:
	srlg	%r4,%r4,2
	cghi	%r4,2
	jle	.L2227
	aghi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2112:
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brctg	%r4,.L2112
	icy	%r4,-1(%r1,%r3)
	stcy	%r4,-1(%r1,%r2)
	icy	%r4,-2(%r1,%r3)
	stcy	%r4,-2(%r1,%r2)
	icy	%r3,-3(%r1,%r3)
	stcy	%r3,-3(%r1,%r2)
	j	.L2096
.L2234:
	lg	%r5,0(%r3)
	stg	%r5,0(%r2)
	lghi	%r1,8
	j	.L2181
.L2235:
	lg	%r8,0(%r11)
	stg	%r8,0(%r12)
	lghi	%r1,8
	j	.L2185
.L2227:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	icy	%r0,-1(%r1,%r3)
	stcy	%r0,-1(%r1,%r2)
	icy	%r5,-2(%r1,%r3)
	stcy	%r5,-2(%r1,%r2)
	icy	%r8,-3(%r1,%r3)
	stcy	%r8,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L2227
	j	.L2096
.L2233:
	llgfr	%r8,%r0
	cgije	%r4,0,.L2096
.L2099:
	lghi	%r11,-1
	xgr	%r11,%r8
	ic	%r5,0(%r8,%r3)
	lgr	%r1,%r8
	aghi	%r1,1
	ar	%r11,%r4
	stc	%r5,0(%r8,%r2)
	risbg	%r0,%r11,62,128+63,0
	clrjle	%r4,%r1,.L2096
	cije	%r0,0,.L2137
	cije	%r0,1,.L2187
	cijlh	%r0,2,.L2236
.L2188:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	aghi	%r1,1
.L2187:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	aghi	%r1,1
	clrjhe	%r1,%r4,.L2096
.L2137:
	lr	%r4,%r11
	srl	%r4,2
	chi	%r4,2
	jle	.L2226
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2110:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	aghi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2110
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L2096
.L2103:
	risbg	%r8,%r12,32,128+61,2
	lgr	%r9,%r8
	aghi	%r9,-4
	lghi	%r1,0
	srlg	%r5,%r9,2
	aghi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L2155
	cgije	%r10,1,.L2182
	cgijlh	%r10,2,.L2237
.L2183:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L2182:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r1,%r8,.L2107
.L2155:
	srlg	%r8,%r5,2
.L2106:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r8,.L2106
	j	.L2107
.L2226:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brct	%r4,.L2226
	j	.L2096
.L2237:
	l	%r11,0(%r3)
	st	%r11,0(%r2)
	lghi	%r1,4
	j	.L2183
.L2236:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	lgr	%r1,%r8
	aghi	%r1,2
	j	.L2188
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
	larl	%r5,.L2248
	cxgbr	%f0,%r2
	cgijhe	%r2,0,.L2246
	ld	%f4,.L2249-.L2248(%r5)
	ld	%f6,.L2249-.L2248+8(%r5)
	axbr	%f0,%f4
.L2246:
	ldxbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2248:
.L2249:
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
	larl	%r5,.L2253
	cxgbr	%f0,%r2
	cgijhe	%r2,0,.L2251
	ld	%f4,.L2254-.L2253(%r5)
	ld	%f6,.L2254-.L2253+8(%r5)
	axbr	%f0,%f4
.L2251:
	lexbr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2253:
.L2254:
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
	lr	%r1,%r2
	sra	%r1,15
	cijlh	%r1,0,.L2260
	lr	%r5,%r2
	sra	%r5,14
	jne	.L2259
	lr	%r0,%r2
	sra	%r0,13
	cijlh	%r0,0,.L2261
	lr	%r3,%r2
	sra	%r3,12
	cijlh	%r3,0,.L2262
	lr	%r4,%r2
	sra	%r4,11
	cijlh	%r4,0,.L2263
	lr	%r5,%r2
	sra	%r5,10
	cijlh	%r5,0,.L2264
	lr	%r1,%r2
	sra	%r1,9
	cijlh	%r1,0,.L2265
	lr	%r0,%r2
	sra	%r0,8
	cijlh	%r0,0,.L2266
	lr	%r3,%r2
	sra	%r3,7
	cijlh	%r3,0,.L2267
	lr	%r4,%r2
	sra	%r4,6
	cijlh	%r4,0,.L2268
	lr	%r5,%r2
	sra	%r5,5
	cijlh	%r5,0,.L2269
	lr	%r1,%r2
	sra	%r1,4
	cijlh	%r1,0,.L2270
	lr	%r0,%r2
	sra	%r0,3
	cijlh	%r0,0,.L2271
	lr	%r3,%r2
	sra	%r3,2
	cijlh	%r3,0,.L2272
	lr	%r4,%r2
	sra	%r4,1
	cijlh	%r4,0,.L2273
	lhi	%r5,16
	cgijlh	%r2,0,.L2276
.L2259:
	risbg	%r2,%r5,59,128+63,0
	br	%r14
.L2260:
	lhi	%r5,0
	j	.L2259
.L2271:
	lhi	%r5,12
	j	.L2259
.L2276:
	lhi	%r5,15
	j	.L2259
.L2261:
	lhi	%r5,2
	j	.L2259
.L2262:
	lhi	%r5,3
	j	.L2259
.L2263:
	lhi	%r5,4
	j	.L2259
.L2264:
	lhi	%r5,5
	j	.L2259
.L2265:
	lhi	%r5,6
	j	.L2259
.L2266:
	lhi	%r5,7
	j	.L2259
.L2267:
	lhi	%r5,8
	j	.L2259
.L2268:
	lhi	%r5,9
	j	.L2259
.L2269:
	lhi	%r5,10
	j	.L2259
.L2270:
	lhi	%r5,11
	j	.L2259
.L2272:
	lhi	%r5,13
	j	.L2259
.L2273:
	lhi	%r5,14
	j	.L2259
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
	jne	.L2281
	tmll	%r2,2
	jne	.L2282
	tmll	%r2,4
	jne	.L2283
	tmll	%r2,8
	jne	.L2284
	tmll	%r2,16
	jne	.L2285
	tmll	%r2,32
	jne	.L2286
	tmll	%r2,64
	jne	.L2287
	tmll	%r2,128
	jne	.L2288
	tmll	%r2,256
	jne	.L2289
	tmll	%r2,512
	jne	.L2290
	tmll	%r2,1024
	jne	.L2291
	tmll	%r2,2048
	jne	.L2292
	tmll	%r2,4096
	jne	.L2293
	tmll	%r2,8192
	jne	.L2294
	tmll	%r2,16384
	jne	.L2295
	sra	%r2,15
	lhi	%r1,16
	cijlh	%r2,0,.L2298
.L2280:
	risbg	%r2,%r1,59,128+63,0
	br	%r14
.L2281:
	lhi	%r1,0
	j	.L2280
.L2282:
	lhi	%r1,1
	j	.L2280
.L2293:
	lhi	%r1,12
	j	.L2280
.L2283:
	lhi	%r1,2
	j	.L2280
.L2284:
	lhi	%r1,3
	j	.L2280
.L2285:
	lhi	%r1,4
	j	.L2280
.L2286:
	lhi	%r1,5
	j	.L2280
.L2287:
	lhi	%r1,6
	j	.L2280
.L2288:
	lhi	%r1,7
	j	.L2280
.L2289:
	lhi	%r1,8
	j	.L2280
.L2290:
	lhi	%r1,9
	j	.L2280
.L2291:
	lhi	%r1,10
	j	.L2280
.L2292:
	lhi	%r1,11
	j	.L2280
.L2294:
	lhi	%r1,13
	j	.L2280
.L2295:
	lhi	%r1,14
	j	.L2280
.L2298:
	lhi	%r1,15
	j	.L2280
	.cfi_endproc
.LFE117:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB118:
	.cfi_startproc
	larl	%r5,.L2308
	keb	%f0,.L2309-.L2308(%r5)
	jhe	.L2307
	cgebr	%r2,5,%f0
	br	%r14
.L2307:
	seb	%f0,.L2309-.L2308(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L2308:
.L2309:
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
	risbg	%r2,%r2,64-1,128+63,32+30+1
	risbg	%r3,%r1,63,128+63,0
	risbg	%r0,%r1,64-1,128+63,32+27+1
	risbg	%r5,%r1,64-1,128+63,32+26+1
	risbg	%r4,%r1,64-1,128+63,32+25+1
	ar	%r2,%r3
	risbg	%r3,%r1,64-1,128+63,32+24+1
	ldgr	%f2,%r11
	.cfi_register 11, 17
	risbg	%r11,%r1,64-1,128+63,32+29+1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	risbg	%r12,%r1,64-1,128+63,32+28+1
	ar	%r2,%r11
	risbg	%r10,%r1,64-1,128+63,32+23+1
	risbg	%r11,%r1,64-1,128+63,32+22+1
	ar	%r2,%r12
	risbg	%r12,%r1,64-1,128+63,32+21+1
	ar	%r2,%r0
	risbg	%r0,%r1,64-1,128+63,32+20+1
	ar	%r2,%r5
	risbg	%r5,%r1,64-1,128+63,32+19+1
	ar	%r2,%r4
	risbg	%r4,%r1,64-1,128+63,32+18+1
	ar	%r2,%r3
	risbg	%r3,%r1,64-1,128+63,32+17+1
	sra	%r1,15
	ar	%r2,%r10
	ar	%r2,%r11
	ar	%r2,%r12
	ar	%r2,%r0
	ar	%r2,%r5
	ar	%r2,%r4
	ar	%r2,%r3
	ar	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
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
	risbg	%r2,%r2,64-1,128+63,32+30+1
	risbg	%r3,%r1,63,128+63,0
	risbg	%r0,%r1,64-1,128+63,32+27+1
	risbg	%r5,%r1,64-1,128+63,32+26+1
	risbg	%r4,%r1,64-1,128+63,32+25+1
	ar	%r2,%r3
	risbg	%r3,%r1,64-1,128+63,32+24+1
	ldgr	%f2,%r11
	.cfi_register 11, 17
	risbg	%r11,%r1,64-1,128+63,32+29+1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	risbg	%r12,%r1,64-1,128+63,32+28+1
	ar	%r2,%r11
	risbg	%r10,%r1,64-1,128+63,32+23+1
	risbg	%r11,%r1,64-1,128+63,32+22+1
	ar	%r2,%r12
	risbg	%r12,%r1,64-1,128+63,32+21+1
	ar	%r2,%r0
	risbg	%r0,%r1,64-1,128+63,32+20+1
	ar	%r2,%r5
	risbg	%r5,%r1,64-1,128+63,32+19+1
	ar	%r2,%r4
	risbg	%r4,%r1,64-1,128+63,32+18+1
	ar	%r2,%r3
	risbg	%r3,%r1,64-1,128+63,32+17+1
	sra	%r1,15
	ar	%r2,%r10
	ar	%r2,%r11
	ar	%r2,%r12
	ar	%r2,%r0
	ar	%r2,%r5
	ar	%r2,%r4
	ar	%r2,%r3
	ar	%r2,%r1
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
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
	cgije	%r2,0,.L2319
	risbg	%r5,%r2,63,128+63,0
	lr	%r4,%r2
	srl	%r4,1
	lr	%r0,%r3
	sll	%r0,1
	lcr	%r1,%r5
	nr	%r1,%r3
	cije	%r4,0,.L2411
	nilf	%r4,1
	lcr	%r5,%r4
	nr	%r5,%r0
	ar	%r1,%r5
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lr	%r11,%r2
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srl	%r11,2
	lr	%r12,%r3
	sll	%r12,2
	cije	%r11,0,.L2317
	nilf	%r11,1
	lr	%r4,%r2
	srl	%r4,3
	lr	%r0,%r3
	sll	%r0,3
	lcr	%r11,%r11
	nr	%r11,%r12
	ar	%r1,%r11
	cije	%r4,0,.L2317
	nilf	%r4,1
	lr	%r5,%r2
	srl	%r5,4
	lr	%r12,%r3
	sll	%r12,4
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	nilf	%r5,1
	lr	%r11,%r2
	srl	%r11,5
	lr	%r0,%r3
	sll	%r0,5
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r1,%r5
	cije	%r11,0,.L2317
	nilf	%r11,1
	lr	%r5,%r2
	srl	%r5,6
	lr	%r12,%r3
	sll	%r12,6
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	nilf	%r5,1
	lr	%r11,%r2
	srl	%r11,7
	lr	%r0,%r3
	sll	%r0,7
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r1,%r5
	cije	%r11,0,.L2317
	nilf	%r11,1
	lr	%r5,%r2
	srl	%r5,8
	lr	%r12,%r3
	sll	%r12,8
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	nilf	%r5,1
	lr	%r11,%r2
	srl	%r11,9
	lr	%r0,%r3
	sll	%r0,9
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r1,%r5
	cije	%r11,0,.L2317
	nilf	%r11,1
	lr	%r5,%r2
	srl	%r5,10
	lr	%r12,%r3
	sll	%r12,10
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,11
	lr	%r0,%r3
	sll	%r0,11
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,12
	lr	%r12,%r3
	sll	%r12,12
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,13
	lr	%r0,%r3
	sll	%r0,13
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,14
	lr	%r12,%r3
	sll	%r12,14
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,15
	lr	%r0,%r3
	sll	%r0,15
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,16
	lr	%r12,%r3
	sll	%r12,16
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,17
	lr	%r0,%r3
	sll	%r0,17
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,18
	lr	%r12,%r3
	sll	%r12,18
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,19
	lr	%r0,%r3
	sll	%r0,19
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,20
	lr	%r12,%r3
	sll	%r12,20
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,21
	lr	%r0,%r3
	sll	%r0,21
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,22
	lr	%r12,%r3
	sll	%r12,22
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,23
	lr	%r0,%r3
	sll	%r0,23
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,24
	lr	%r12,%r3
	sll	%r12,24
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,25
	lr	%r0,%r3
	sll	%r0,25
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,26
	lr	%r12,%r3
	sll	%r12,26
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,27
	lr	%r0,%r3
	sll	%r0,27
	lcr	%r4,%r11
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r11,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,28
	lr	%r12,%r3
	sll	%r12,28
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r1,%r4
	cije	%r5,0,.L2317
	risbg	%r0,%r5,63,128+63,0
	lr	%r5,%r2
	srl	%r5,29
	lr	%r11,%r3
	sll	%r11,29
	lcr	%r4,%r0
	nr	%r4,%r12
	ar	%r1,%r4
	cije	%r5,0,.L2317
	nilf	%r5,1
	lr	%r12,%r2
	srl	%r12,30
	lr	%r0,%r3
	sll	%r0,30
	lcr	%r5,%r5
	nr	%r5,%r11
	ar	%r1,%r5
	cije	%r12,0,.L2317
	nilf	%r12,1
	srl	%r2,31
	sll	%r3,31
	lcr	%r11,%r12
	lcr	%r2,%r2
	nr	%r11,%r0
	nr	%r3,%r2
	ar	%r11,%r1
	lr	%r1,%r3
	ar	%r1,%r11
.L2317:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2319:
	lhi	%r1,0
.L2411:
	llgfr	%r2,%r1
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
	cgije	%r2,0,.L2419
	cgije	%r3,0,.L2419
	risbg	%r4,%r3,63,128+63,0
	srlg	%r5,%r3,1
	lr	%r1,%r3
	srl	%r1,1
	lcr	%r4,%r4
	nr	%r4,%r2
	ldgr	%f2,%r11
	.cfi_register 11, 17
	lr	%r11,%r2
	ldgr	%f0,%r12
	.cfi_register 12, 16
	sll	%r11,1
	cgije	%r5,0,.L2416
	nilf	%r1,1
	srlg	%r0,%r3,2
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,2
	srl	%r5,2
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	nilf	%r5,1
	srlg	%r0,%r3,3
	lr	%r11,%r2
	lr	%r1,%r3
	sll	%r11,3
	srl	%r1,3
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L2416
	nilf	%r1,1
	srlg	%r0,%r3,4
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,4
	srl	%r5,4
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	nilf	%r5,1
	srlg	%r0,%r3,5
	lr	%r11,%r2
	lr	%r1,%r3
	sll	%r11,5
	srl	%r1,5
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L2416
	nilf	%r1,1
	srlg	%r0,%r3,6
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,6
	srl	%r5,6
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	nilf	%r5,1
	srlg	%r0,%r3,7
	lr	%r11,%r2
	lr	%r1,%r3
	sll	%r11,7
	srl	%r1,7
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L2416
	nilf	%r1,1
	srlg	%r0,%r3,8
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,8
	srl	%r5,8
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	nilf	%r5,1
	srlg	%r0,%r3,9
	lr	%r11,%r2
	lr	%r1,%r3
	sll	%r11,9
	srl	%r1,9
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r4,%r5
	cgije	%r0,0,.L2416
	nilf	%r1,1
	srlg	%r0,%r3,10
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,10
	srl	%r5,10
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,11
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,11
	srl	%r5,11
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,12
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,12
	srl	%r5,12
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,13
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,13
	srl	%r5,13
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,14
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,14
	srl	%r5,14
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,15
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,15
	srl	%r5,15
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,16
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,16
	srl	%r5,16
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,17
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,17
	srl	%r5,17
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,18
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,18
	srl	%r5,18
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,19
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,19
	srl	%r5,19
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,20
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,20
	srl	%r5,20
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,21
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,21
	srl	%r5,21
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,22
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,22
	srl	%r5,22
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,23
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,23
	srl	%r5,23
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,24
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,24
	srl	%r5,24
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,25
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,25
	srl	%r5,25
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,26
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,26
	srl	%r5,26
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,27
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,27
	srl	%r5,27
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,28
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,28
	srl	%r5,28
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,29
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,29
	srl	%r5,29
	lcr	%r1,%r1
	nr	%r1,%r12
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	risbg	%r1,%r5,63,128+63,0
	srlg	%r0,%r3,30
	lr	%r12,%r2
	lr	%r5,%r3
	sll	%r12,30
	srl	%r5,30
	lcr	%r1,%r1
	nr	%r1,%r11
	ar	%r4,%r1
	cgije	%r0,0,.L2416
	srl	%r3,31
	nilf	%r5,1
	sll	%r2,31
	lcr	%r0,%r3
	lcr	%r11,%r5
	lr	%r3,%r11
	nr	%r3,%r12
	nr	%r0,%r2
	ar	%r3,%r4
	ar	%r0,%r3
	lr	%r4,%r0
.L2416:
	llgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2419:
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
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clrjhe	%r3,%r2,.L2762
	lhi	%r12,1
	cijl	%r3,0,.L2758
	lr	%r5,%r3
	sll	%r5,1
	lhi	%r0,2
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2520
	lr	%r5,%r1
	lhi	%r10,31
	lhi	%r12,2
	lhi	%r9,11
	lgr	%r3,%r1
	sll	%r5,1
	cijl	%r1,0,.L2758
.L2522:
	lr	%r11,%r10
	sll	%r0,1
	ahi	%r11,-1
	ahi	%r10,-3
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2520
	lr	%r5,%r1
	sll	%r5,1
	brct	%r9,.L2727
.L2521:
	cgije	%r4,0,.L2650
	lr	%r11,%r2
.L2650:
	llgfr	%r2,%r11
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
.L2727:
	.cfi_restore_state
	lr	%r12,%r0
	lgr	%r3,%r1
	sll	%r0,1
	cijl	%r1,0,.L2758
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2520
	lr	%r5,%r1
	lr	%r12,%r0
	sll	%r5,1
	sll	%r0,1
	lgr	%r3,%r1
	cijl	%r1,0,.L2758
	llgfr	%r1,%r5
	clrjhe	%r5,%r2,.L2520
	lr	%r5,%r1
	lr	%r12,%r0
	lgr	%r3,%r1
	sll	%r5,1
	cijhe	%r1,0,.L2522
.L2758:
	lr	%r1,%r2
	sr	%r1,%r3
	lr	%r11,%r2
	lhi	%r0,0
	slr	%r11,%r3
	alcr	%r0,%r0
	cijlh	%r0,0,.L2652
	lr	%r1,%r2
.L2652:
	llgfr	%r2,%r1
	cije	%r0,0,.L2653
	lr	%r11,%r12
.L2654:
	lr	%r9,%r12
	srl	%r9,1
	risbg	%r5,%r3,64-31,128+63,32+31
	cijlh	%r9,0,.L2655
	j	.L2521
.L2520:
	cije	%r0,0,.L2657
	lr	%r11,%r2
	sr	%r11,%r5
	lr	%r10,%r2
	lhi	%r9,0
	slr	%r10,%r5
	alcr	%r9,%r9
	cijlh	%r9,0,.L2763
	llgfr	%r2,%r2
	cije	%r9,0,.L2526
.L2780:
	lr	%r11,%r0
.L2527:
	llgtr	%r9,%r12
	llgtr	%r5,%r3
	lr	%r12,%r0
	lgr	%r3,%r1
.L2655:
	lr	%r1,%r2
	sr	%r1,%r5
	lr	%r0,%r2
	slr	%r0,%r5
	lhi	%r5,0
	alcr	%r5,%r5
	cijlh	%r5,0,.L2529
	lr	%r1,%r2
.L2529:
	llgfr	%r2,%r1
	cijlh	%r5,0,.L2531
	lhi	%r9,0
.L2531:
	lr	%r1,%r12
	srl	%r1,2
	or	%r11,%r9
	lr	%r9,%r3
	srl	%r9,2
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L2533
	lr	%r2,%r5
.L2533:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2535
	lhi	%r1,0
.L2535:
	lr	%r5,%r12
	srl	%r5,3
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,3
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2537
	lr	%r1,%r2
.L2537:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L2539
	lhi	%r5,0
.L2539:
	lr	%r1,%r12
	srl	%r1,4
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,4
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L2541
	lr	%r2,%r5
.L2541:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2543
	lhi	%r1,0
.L2543:
	lr	%r5,%r12
	srl	%r5,5
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,5
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2545
	lr	%r1,%r2
.L2545:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L2547
	lhi	%r5,0
.L2547:
	lr	%r1,%r12
	srl	%r1,6
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,6
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L2549
	lr	%r2,%r5
.L2549:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2551
	lhi	%r1,0
.L2551:
	lr	%r5,%r12
	srl	%r5,7
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,7
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2553
	lr	%r1,%r2
.L2553:
	llgfr	%r2,%r1
	cije	%r0,0,.L2764
.L2555:
	lr	%r1,%r12
	srl	%r1,8
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,8
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2765
	llgfr	%r2,%r2
	cije	%r0,0,.L2766
.L2559:
	lr	%r5,%r12
	srl	%r5,9
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,9
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2561
	lr	%r1,%r2
.L2561:
	llgfr	%r2,%r1
	cije	%r0,0,.L2767
.L2563:
	lr	%r1,%r12
	srl	%r1,10
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,10
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2768
	llgfr	%r2,%r2
	cije	%r0,0,.L2769
.L2567:
	lr	%r5,%r12
	srl	%r5,11
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,11
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2569
	lr	%r1,%r2
.L2569:
	llgfr	%r2,%r1
	cije	%r0,0,.L2770
.L2571:
	lr	%r1,%r12
	srl	%r1,12
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,12
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2771
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2575
.L2781:
	lhi	%r1,0
.L2575:
	lr	%r5,%r12
	srl	%r5,13
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,13
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2577
	lr	%r1,%r2
.L2577:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L2579
	lhi	%r5,0
.L2579:
	lr	%r1,%r12
	srl	%r1,14
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,14
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L2581
	lr	%r2,%r5
.L2581:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2583
	lhi	%r1,0
.L2583:
	lr	%r5,%r12
	srl	%r5,15
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,15
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2585
	lr	%r1,%r2
.L2585:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L2587
	lhi	%r5,0
.L2587:
	lr	%r1,%r12
	srl	%r1,16
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,16
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L2589
	lr	%r2,%r5
.L2589:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2591
	lhi	%r1,0
.L2591:
	lr	%r5,%r12
	srl	%r5,17
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,17
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2593
	lr	%r1,%r2
.L2593:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L2595
	lhi	%r5,0
.L2595:
	lr	%r1,%r12
	srl	%r1,18
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,18
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L2597
	lr	%r2,%r5
.L2597:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2599
	lhi	%r1,0
.L2599:
	lr	%r5,%r12
	srl	%r5,19
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,19
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2601
	lr	%r1,%r2
.L2601:
	llgfr	%r2,%r1
	cije	%r0,0,.L2772
.L2603:
	lr	%r1,%r12
	srl	%r1,20
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,20
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2773
.L2605:
	llgfr	%r2,%r2
	cije	%r0,0,.L2774
.L2607:
	lr	%r5,%r12
	srl	%r5,21
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,21
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2609
	lr	%r1,%r2
.L2609:
	llgfr	%r2,%r1
	cije	%r0,0,.L2775
.L2611:
	lr	%r1,%r12
	srl	%r1,22
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,22
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2776
.L2613:
	llgfr	%r2,%r2
	cije	%r0,0,.L2777
.L2615:
	lr	%r5,%r12
	srl	%r5,23
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,23
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2617
	lr	%r1,%r2
.L2617:
	llgfr	%r2,%r1
	cije	%r0,0,.L2778
.L2619:
	lr	%r1,%r12
	srl	%r1,24
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,24
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2779
.L2621:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2623
	lhi	%r1,0
.L2623:
	lr	%r5,%r12
	srl	%r5,25
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,25
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cijlh	%r0,0,.L2625
	lr	%r1,%r2
.L2625:
	llgfr	%r2,%r1
	cijlh	%r0,0,.L2627
	lhi	%r5,0
.L2627:
	lr	%r1,%r12
	srl	%r1,26
	lr	%r9,%r3
	or	%r11,%r5
	srl	%r9,26
	cije	%r1,0,.L2521
	lr	%r5,%r2
	sr	%r5,%r9
	lr	%r10,%r2
	lhi	%r0,0
	slr	%r10,%r9
	alcr	%r0,%r0
	cije	%r0,0,.L2629
	lr	%r2,%r5
.L2629:
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2631
	lhi	%r1,0
.L2631:
	lr	%r5,%r12
	srl	%r5,27
	lr	%r9,%r3
	or	%r11,%r1
	srl	%r9,27
	cije	%r5,0,.L2521
	lr	%r0,%r2
	sr	%r0,%r9
	lr	%r10,%r2
	lhi	%r1,0
	slr	%r10,%r9
	alcr	%r1,%r1
	cije	%r1,0,.L2633
	lr	%r2,%r0
.L2633:
	llgfr	%r2,%r2
	cijlh	%r1,0,.L2635
	lhi	%r5,0
.L2635:
	lr	%r9,%r12
	srl	%r9,28
	lr	%r1,%r3
	or	%r11,%r5
	srl	%r1,28
	cije	%r9,0,.L2521
	lr	%r0,%r2
	sr	%r0,%r1
	lr	%r10,%r2
	lhi	%r5,0
	slr	%r10,%r1
	alcr	%r5,%r5
	cije	%r5,0,.L2637
	lr	%r2,%r0
.L2637:
	llgfr	%r2,%r2
	cijlh	%r5,0,.L2639
	lhi	%r9,0
.L2639:
	lr	%r1,%r12
	srl	%r1,29
	lr	%r5,%r3
	or	%r11,%r9
	srl	%r5,29
	cije	%r1,0,.L2521
	lr	%r0,%r2
	sr	%r0,%r5
	lr	%r10,%r2
	lhi	%r9,0
	slr	%r10,%r5
	alcr	%r9,%r9
	cije	%r9,0,.L2641
	lr	%r2,%r0
.L2641:
	llgfr	%r2,%r2
	cijlh	%r9,0,.L2643
	lhi	%r1,0
.L2643:
	lr	%r5,%r12
	srl	%r5,30
	lr	%r0,%r3
	or	%r11,%r1
	srl	%r0,30
	cije	%r5,0,.L2521
	lr	%r1,%r2
	sr	%r1,%r0
	lr	%r10,%r2
	lhi	%r9,0
	slr	%r10,%r0
	alcr	%r9,%r9
	cijlh	%r9,0,.L2645
	lr	%r1,%r2
.L2645:
	llgfr	%r2,%r1
	cijlh	%r9,0,.L2647
	lhi	%r5,0
.L2647:
	or	%r11,%r5
	srl	%r3,31
	cijhe	%r12,0,.L2521
	lr	%r0,%r2
	sr	%r0,%r3
	lr	%r12,%r2
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	cijlh	%r3,0,.L2649
	lr	%r0,%r2
.L2649:
	llgfr	%r2,%r0
	or	%r11,%r3
	j	.L2521
.L2526:
	lhi	%r11,0
	j	.L2527
.L2763:
	lr	%r2,%r11
	llgfr	%r2,%r2
	cije	%r9,0,.L2526
	j	.L2780
.L2764:
	lhi	%r5,0
	j	.L2555
.L2766:
	lhi	%r1,0
	j	.L2559
.L2765:
	lr	%r2,%r5
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2559
	j	.L2766
.L2653:
	lhi	%r11,0
	j	.L2654
.L2767:
	lhi	%r5,0
	j	.L2563
.L2769:
	lhi	%r1,0
	j	.L2567
.L2768:
	lr	%r2,%r5
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2567
	j	.L2769
.L2770:
	lhi	%r5,0
	j	.L2571
.L2771:
	lr	%r2,%r5
	llgfr	%r2,%r2
	cijlh	%r0,0,.L2575
	j	.L2781
.L2772:
	lhi	%r5,0
	j	.L2603
.L2774:
	lhi	%r1,0
	j	.L2607
.L2773:
	lr	%r2,%r5
	j	.L2605
.L2775:
	lhi	%r5,0
	j	.L2611
.L2777:
	lhi	%r1,0
	j	.L2615
.L2776:
	lr	%r2,%r5
	j	.L2613
.L2778:
	lhi	%r5,0
	j	.L2619
.L2779:
	lr	%r2,%r5
	j	.L2621
.L2762:
	lr	%r1,%r3
	xr	%r1,%r2
	lr	%r5,%r2
	sr	%r5,%r3
	lpr	%r0,%r1
	ahi	%r0,-1
	lr	%r11,%r0
	srl	%r11,31
	cijhe	%r0,0,.L2518
	lr	%r2,%r5
.L2518:
	llgfr	%r2,%r2
	j	.L2521
.L2657:
	lhi	%r11,0
	j	.L2521
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
	jl	.L2786
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L2786:
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
	jl	.L2791
	lghi	%r2,1
	bhr	%r14
	lghi	%r2,0
	br	%r14
.L2791:
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
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	cijl	%r3,0,.L2895
	cgije	%r3,0,.L2805
	risbg	%r10,%r3,63,128+63,0
	srag	%r5,%r3,1
	lr	%r0,%r2
	lr	%r4,%r3
	sll	%r0,1
	sra	%r4,1
	lcr	%r1,%r10
	nr	%r1,%r2
	cgije	%r5,0,.L2801
	nilf	%r4,1
	sll	%r2,2
	lcr	%r11,%r4
	lgfr	%r2,%r2
	nr	%r11,%r0
	ar	%r1,%r11
	srag	%r3,%r3,2
	je	.L2801
	lhi	%r0,0
.L2803:
	risbg	%r10,%r3,63,128+63,0
	srag	%r12,%r3,1
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,1
	sra	%r4,1
	lcr	%r5,%r10
	nr	%r5,%r2
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,2
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,2
	sra	%r5,2
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r12,%r3,3
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,3
	sra	%r4,3
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,4
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,4
	sra	%r5,4
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r12,%r3,5
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,5
	sra	%r4,5
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,6
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,6
	sra	%r5,6
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r12,%r3,7
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,7
	sra	%r4,7
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,8
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,8
	sra	%r5,8
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r12,%r3,9
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,9
	sra	%r4,9
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,10
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,10
	sra	%r5,10
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r12,%r3,11
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,11
	sra	%r4,11
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,12
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,12
	sra	%r5,12
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r12,%r3,13
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,13
	sra	%r4,13
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,14
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,14
	sra	%r5,14
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r12,%r3,15
	lr	%r11,%r2
	lr	%r4,%r3
	sll	%r11,15
	sra	%r4,15
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r12,0,.L2804
	nilf	%r4,1
	srag	%r12,%r3,16
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,16
	sra	%r5,16
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,17
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,17
	sra	%r5,17
	lcr	%r4,%r4
	nr	%r4,%r10
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,18
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,18
	sra	%r5,18
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,19
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,19
	sra	%r5,19
	lcr	%r4,%r4
	nr	%r4,%r10
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,20
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,20
	sra	%r5,20
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,21
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,21
	sra	%r5,21
	lcr	%r4,%r4
	nr	%r4,%r10
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,22
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,22
	sra	%r5,22
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,23
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,23
	sra	%r5,23
	lcr	%r4,%r4
	nr	%r4,%r10
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,24
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,24
	sra	%r5,24
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,25
	lr	%r11,%r2
	lr	%r5,%r3
	sll	%r11,25
	sra	%r5,25
	lcr	%r4,%r4
	nr	%r4,%r10
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	risbg	%r4,%r5,63,128+63,0
	srag	%r12,%r3,26
	lr	%r10,%r2
	lr	%r5,%r3
	sll	%r10,26
	sra	%r5,26
	lcr	%r4,%r4
	nr	%r4,%r11
	ar	%r1,%r4
	cgije	%r12,0,.L2804
	nilf	%r5,1
	srag	%r11,%r3,27
	lr	%r12,%r2
	lr	%r4,%r3
	sll	%r12,27
	sra	%r4,27
	lcr	%r5,%r5
	nr	%r5,%r10
	ar	%r1,%r5
	cgije	%r11,0,.L2804
	sra	%r3,28
	risbg	%r10,%r4,63,128+63,0
	lr	%r11,%r2
	sll	%r11,28
	lcr	%r2,%r3
	lcr	%r4,%r10
	lr	%r3,%r4
	nr	%r3,%r12
	nr	%r2,%r11
	ar	%r3,%r1
	lr	%r1,%r2
	ar	%r1,%r3
.L2804:
	cije	%r0,0,.L2801
.L2800:
	lcr	%r1,%r1
.L2801:
	lgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L2895:
	.cfi_restore_state
	risbg	%r1,%r3,63,128+63,0
	lcr	%r10,%r3
	lr	%r4,%r10
	sra	%r4,1
	lr	%r12,%r2
	sll	%r12,1
	lcr	%r1,%r1
	nr	%r1,%r2
	cije	%r4,0,.L2800
	nilf	%r4,1
	sll	%r2,2
	sra	%r10,2
	lhi	%r0,1
	lcr	%r11,%r4
	lgfr	%r2,%r2
	lgfr	%r3,%r10
	nr	%r11,%r12
	ar	%r1,%r11
	cijlh	%r10,0,.L2803
	lcr	%r1,%r1
	j	.L2801
.L2805:
	lhi	%r1,0
	j	.L2801
	.cfi_endproc
.LFE128:
	.size	__mulhi3, .-__mulhi3
	.align	8
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
	cgijl	%r2,0,.L3144
	lhi	%r1,1
	lhi	%r12,0
.L2898:
	cgijhe	%r3,0,.L2899
	lcgr	%r3,%r3
	lr	%r12,%r1
.L2899:
	lr	%r0,%r2
	lr	%r4,%r3
	clrjhe	%r3,%r2,.L3145
	lhi	%r5,1
	cijl	%r3,0,.L3141
	lr	%r1,%r3
	sll	%r1,1
	lhi	%r3,2
	clrjle	%r2,%r1,.L2902
	lhi	%r5,2
	lr	%r4,%r1
	lhi	%r2,11
	cijl	%r1,0,.L3141
.L2904:
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L2902
	brct	%r2,.L3108
.L3039:
	lghi	%r2,0
.L2903:
	cije	%r12,0,.L2897
	lcgr	%r2,%r2
.L2897:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L3108:
	.cfi_restore_state
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L3141
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L2902
	lr	%r5,%r3
	lr	%r4,%r1
	cijl	%r1,0,.L3141
	sll	%r1,1
	sll	%r3,1
	clrjle	%r0,%r1,.L2902
	lr	%r5,%r3
	lr	%r4,%r1
	cijhe	%r1,0,.L2904
.L3141:
	lr	%r11,%r0
	sr	%r11,%r4
	clrjle	%r4,%r0,.L3032
	lr	1,1
	lr	%r11,%r0
.L3032:
	clrjl	%r0,%r4,.L3033
	lr	%r2,%r5
.L3034:
	lr	%r10,%r5
	srl	%r10,1
	lr	%r0,%r4
	srl	%r0,1
	cijlh	%r10,0,.L3035
.L2901:
	llgfr	%r2,%r2
	j	.L2903
.L2902:
	cije	%r3,0,.L3039
	lr	%r11,%r0
	sr	%r11,%r1
	clrjle	%r1,%r0,.L2907
	lr	1,1
	lr	%r11,%r0
.L2907:
	clrjl	%r0,%r1,.L2908
	lr	%r2,%r3
.L2909:
	llgtr	%r10,%r5
	llgtr	%r0,%r4
	lr	%r5,%r3
	lr	%r4,%r1
.L3035:
	lr	%r1,%r11
	sr	%r1,%r0
	clrjle	%r0,%r11,.L2911
	lr	0,0
	lr	%r1,%r11
.L2911:
	clrjhe	%r11,%r0,.L2913
	lhi	%r10,0
.L2913:
	lr	%r0,%r5
	srl	%r0,2
	lr	%r11,%r4
	or	%r2,%r10
	srl	%r11,2
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r11
	clrjle	%r11,%r1,.L2915
	lr	0,0
	lr	%r3,%r1
.L2915:
	clrjhe	%r1,%r11,.L2917
	lhi	%r0,0
.L2917:
	lr	%r11,%r5
	srl	%r11,3
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,3
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2919
	lr	0,0
	lr	%r1,%r3
.L2919:
	clrjhe	%r3,%r10,.L2921
	lhi	%r11,0
.L2921:
	lr	%r0,%r5
	srl	%r0,4
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,4
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2923
	lr	0,0
	lr	%r3,%r1
.L2923:
	clrjhe	%r1,%r10,.L2925
	lhi	%r0,0
.L2925:
	lr	%r11,%r5
	srl	%r11,5
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,5
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2927
	lr	0,0
	lr	%r1,%r3
.L2927:
	clrjhe	%r3,%r10,.L2929
	lhi	%r11,0
.L2929:
	lr	%r0,%r5
	srl	%r0,6
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,6
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2931
	lr	0,0
	lr	%r3,%r1
.L2931:
	clrjhe	%r1,%r10,.L2933
	lhi	%r0,0
.L2933:
	lr	%r11,%r5
	srl	%r11,7
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,7
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2935
	lr	0,0
	lr	%r1,%r3
.L2935:
	clrjl	%r3,%r10,.L3146
.L2937:
	lr	%r0,%r5
	srl	%r0,8
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,8
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2939
	lr	0,0
	lr	%r3,%r1
.L2939:
	clrjl	%r1,%r10,.L3147
.L2941:
	lr	%r11,%r5
	srl	%r11,9
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,9
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2943
	lr	0,0
	lr	%r1,%r3
.L2943:
	clrjl	%r3,%r10,.L3148
.L2945:
	lr	%r0,%r5
	srl	%r0,10
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,10
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2947
	lr	0,0
	lr	%r3,%r1
.L2947:
	clrjl	%r1,%r10,.L3149
.L2949:
	lr	%r11,%r5
	srl	%r11,11
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,11
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2951
	lr	0,0
	lr	%r1,%r3
.L2951:
	clrjl	%r3,%r10,.L3150
.L2953:
	lr	%r0,%r5
	srl	%r0,12
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,12
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2955
	lr	0,0
	lr	%r3,%r1
.L2955:
	clrjhe	%r1,%r10,.L2957
	lhi	%r0,0
.L2957:
	lr	%r11,%r5
	srl	%r11,13
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,13
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2959
	lr	0,0
	lr	%r1,%r3
.L2959:
	clrjhe	%r3,%r10,.L2961
	lhi	%r11,0
.L2961:
	lr	%r0,%r5
	srl	%r0,14
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,14
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2963
	lr	0,0
	lr	%r3,%r1
.L2963:
	clrjhe	%r1,%r10,.L2965
	lhi	%r0,0
.L2965:
	lr	%r11,%r5
	srl	%r11,15
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,15
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2967
	lr	0,0
	lr	%r1,%r3
.L2967:
	clrjhe	%r3,%r10,.L2969
	lhi	%r11,0
.L2969:
	lr	%r0,%r5
	srl	%r0,16
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,16
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2971
	lr	0,0
	lr	%r3,%r1
.L2971:
	clrjhe	%r1,%r10,.L2973
	lhi	%r0,0
.L2973:
	lr	%r11,%r5
	srl	%r11,17
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,17
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2975
	lr	0,0
	lr	%r1,%r3
.L2975:
	clrjhe	%r3,%r10,.L2977
	lhi	%r11,0
.L2977:
	lr	%r0,%r5
	srl	%r0,18
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,18
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2979
	lr	0,0
	lr	%r3,%r1
.L2979:
	clrjhe	%r1,%r10,.L2981
	lhi	%r0,0
.L2981:
	lr	%r11,%r5
	srl	%r11,19
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,19
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2983
	lr	0,0
	lr	%r1,%r3
.L2983:
	clrjl	%r3,%r10,.L3151
.L2985:
	lr	%r0,%r5
	srl	%r0,20
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,20
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2987
	lr	0,0
	lr	%r3,%r1
.L2987:
	clrjl	%r1,%r10,.L3152
.L2989:
	lr	%r11,%r5
	srl	%r11,21
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,21
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2991
	lr	0,0
	lr	%r1,%r3
.L2991:
	clrjl	%r3,%r10,.L3153
.L2993:
	lr	%r0,%r5
	srl	%r0,22
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,22
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L2995
	lr	0,0
	lr	%r3,%r1
.L2995:
	clrjl	%r1,%r10,.L3154
.L2997:
	lr	%r11,%r5
	srl	%r11,23
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,23
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L2999
	lr	0,0
	lr	%r1,%r3
.L2999:
	clrjl	%r3,%r10,.L3155
.L3001:
	lr	%r0,%r5
	srl	%r0,24
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,24
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L3003
	lr	0,0
	lr	%r3,%r1
.L3003:
	clrjhe	%r1,%r10,.L3005
	lhi	%r0,0
.L3005:
	lr	%r11,%r5
	srl	%r11,25
	lr	%r10,%r4
	or	%r2,%r0
	srl	%r10,25
	cije	%r11,0,.L2901
	lr	%r1,%r3
	sr	%r1,%r10
	clrjle	%r10,%r3,.L3007
	lr	0,0
	lr	%r1,%r3
.L3007:
	clrjhe	%r3,%r10,.L3009
	lhi	%r11,0
.L3009:
	lr	%r0,%r5
	srl	%r0,26
	lr	%r10,%r4
	or	%r2,%r11
	srl	%r10,26
	cije	%r0,0,.L2901
	lr	%r3,%r1
	sr	%r3,%r10
	clrjle	%r10,%r1,.L3011
	lr	0,0
	lr	%r3,%r1
.L3011:
	clrjhe	%r1,%r10,.L3013
	lhi	%r0,0
.L3013:
	lr	%r1,%r5
	srl	%r1,27
	lr	%r11,%r4
	or	%r2,%r0
	srl	%r11,27
	cije	%r1,0,.L2901
	lr	%r10,%r3
	sr	%r10,%r11
	clrjle	%r11,%r3,.L3015
	lr	0,0
	lr	%r10,%r3
.L3015:
	clrjhe	%r3,%r11,.L3017
	lhi	%r1,0
.L3017:
	lr	%r3,%r5
	srl	%r3,28
	lr	%r0,%r4
	or	%r2,%r1
	srl	%r0,28
	cije	%r3,0,.L2901
	lr	%r1,%r10
	sr	%r1,%r0
	clrjle	%r0,%r10,.L3019
	lr	0,0
	lr	%r1,%r10
.L3019:
	clrjhe	%r10,%r0,.L3021
	lhi	%r3,0
.L3021:
	lr	%r0,%r5
	srl	%r0,29
	lr	%r11,%r4
	or	%r2,%r3
	srl	%r11,29
	cije	%r0,0,.L2901
	lr	%r10,%r1
	sr	%r10,%r11
	clrjle	%r11,%r1,.L3023
	lr	0,0
	lr	%r10,%r1
.L3023:
	clrjhe	%r1,%r11,.L3025
	lhi	%r0,0
.L3025:
	lr	%r1,%r5
	srl	%r1,30
	lr	%r3,%r4
	or	%r2,%r0
	srl	%r3,30
	cije	%r1,0,.L2901
	lr	%r11,%r10
	sr	%r11,%r3
	clrjle	%r3,%r10,.L3027
	lr	0,0
	lr	%r11,%r10
.L3027:
	clrjhe	%r10,%r3,.L3029
	lhi	%r1,0
.L3029:
	or	%r2,%r1
	srl	%r4,31
	cijhe	%r5,0,.L2901
	slr	%r11,%r4
	lhi	%r4,0
	alcr	%r4,%r4
	or	%r2,%r4
	llgfr	%r2,%r2
	j	.L2903
.L2908:
	lhi	%r2,0
	j	.L2909
.L3144:
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r12,1
	j	.L2898
.L3146:
	lhi	%r11,0
	j	.L2937
.L3147:
	lhi	%r0,0
	j	.L2941
.L3033:
	lhi	%r2,0
	j	.L3034
.L3148:
	lhi	%r11,0
	j	.L2945
.L3149:
	lhi	%r0,0
	j	.L2949
.L3150:
	lhi	%r11,0
	j	.L2953
.L3151:
	lhi	%r11,0
	j	.L2985
.L3152:
	lhi	%r0,0
	j	.L2989
.L3153:
	lhi	%r11,0
	j	.L2993
.L3154:
	lhi	%r0,0
	j	.L2997
.L3155:
	lhi	%r11,0
	j	.L3001
.L3145:
	xr	%r3,%r2
	lpr	%r2,%r3
	ahi	%r2,-1
	srl	%r2,31
	llgfr	%r2,%r2
	j	.L2903
	.cfi_endproc
.LFE129:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB130:
	.cfi_startproc
	cgijl	%r2,0,.L3353
	lpgr	%r3,%r3
	lr	%r4,%r2
	lhi	%r0,0
	lr	%r5,%r3
	clrjhe	%r3,%r2,.L3354
.L3159:
	lhi	%r3,1
	cijl	%r5,0,.L3346
	lr	%r1,%r5
	sll	%r1,1
	lhi	%r3,2
	clrjhe	%r1,%r4,.L3167
	lr	%r5,%r1
	lhi	%r2,11
	cijl	%r1,0,.L3346
.L3169:
	sll	%r1,1
	sll	%r3,1
	clrjhe	%r1,%r4,.L3167
	brct	%r2,.L3313
.L3350:
	llgfr	%r2,%r4
	cije	%r0,0,.L3349
	lcgr	%r2,%r2
.L3349:
	br	%r14
.L3313:
	lr	%r5,%r1
	cijl	%r1,0,.L3346
	sll	%r1,1
	sll	%r3,1
	clrjhe	%r1,%r4,.L3167
	lr	%r5,%r1
	cijl	%r1,0,.L3346
	sll	%r1,1
	sll	%r3,1
	clrjhe	%r1,%r4,.L3167
	lr	%r5,%r1
	cijhe	%r1,0,.L3169
.L3346:
	lr	%r1,%r4
	sr	%r1,%r5
	clrjle	%r5,%r4,.L3355
	lr	%r1,%r3
	srl	%r1,1
	lr	%r2,%r5
	srl	%r2,1
	cije	%r1,0,.L3350
.L3352:
	lr	%r1,%r4
	sr	%r1,%r2
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clrjl	%r4,%r2,.L3356
.L3174:
	lr	%r2,%r3
	srl	%r2,2
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,2
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3357
.L3177:
	lr	%r2,%r3
	srl	%r2,3
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,3
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3358
.L3179:
	lr	%r2,%r3
	srl	%r2,4
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,4
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3359
	lr	%r2,%r3
	srl	%r2,5
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,5
	cije	%r2,0,.L3168
.L3373:
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3183
	lr	%r1,%r4
.L3183:
	lr	%r2,%r3
	srl	%r2,6
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,6
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3185
	lr	%r1,%r4
.L3185:
	lr	%r2,%r3
	srl	%r2,7
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,7
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3360
.L3187:
	lr	%r2,%r3
	srl	%r2,8
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,8
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3361
.L3189:
	lr	%r2,%r3
	srl	%r2,9
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,9
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3362
.L3191:
	lr	%r2,%r3
	srl	%r2,10
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,10
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3363
.L3193:
	lr	%r2,%r3
	srl	%r2,11
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,11
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3364
.L3195:
	lr	%r2,%r3
	srl	%r2,12
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,12
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3365
	lr	%r2,%r3
	srl	%r2,13
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,13
	cije	%r2,0,.L3168
.L3374:
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3199
	lr	%r1,%r4
.L3199:
	lr	%r2,%r3
	srl	%r2,14
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,14
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3201
	lr	%r1,%r4
.L3201:
	lr	%r2,%r3
	srl	%r2,15
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,15
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3203
	lr	%r1,%r4
.L3203:
	lr	%r2,%r3
	srl	%r2,16
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,16
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3205
	lr	%r1,%r4
.L3205:
	lr	%r2,%r3
	srl	%r2,17
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,17
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3207
	lr	%r1,%r4
.L3207:
	lr	%r2,%r3
	srl	%r2,18
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,18
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3209
	lr	%r1,%r4
.L3209:
	lr	%r2,%r3
	srl	%r2,19
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,19
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3366
.L3211:
	lr	%r2,%r3
	srl	%r2,20
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,20
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3367
.L3213:
	lr	%r2,%r3
	srl	%r2,21
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,21
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3368
.L3215:
	lr	%r2,%r3
	srl	%r2,22
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,22
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3369
.L3217:
	lr	%r2,%r3
	srl	%r2,23
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,23
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3370
.L3219:
	lr	%r2,%r3
	srl	%r2,24
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,24
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjle	%r12,%r1,.L3371
.L3221:
	lr	%r2,%r3
	srl	%r2,25
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,25
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3223
	lr	%r1,%r4
.L3223:
	lr	%r2,%r3
	srl	%r2,26
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,26
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3225
	lr	%r1,%r4
.L3225:
	lr	%r2,%r3
	srl	%r2,27
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,27
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3227
	lr	%r1,%r4
.L3227:
	lr	%r2,%r3
	srl	%r2,28
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,28
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3229
	lr	%r1,%r4
.L3229:
	lr	%r2,%r3
	srl	%r2,29
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,29
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3231
	lr	%r1,%r4
.L3231:
	lr	%r2,%r3
	srl	%r2,30
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,30
	cije	%r2,0,.L3168
	sr	%r4,%r12
	clrjh	%r12,%r1,.L3233
	lr	%r1,%r4
.L3233:
	srl	%r5,31
	lr	%r4,%r1
	cijhe	%r3,0,.L3168
	lr	%r3,%r1
	sr	%r3,%r5
	clrjh	%r5,%r1,.L3168
	lr	%r4,%r3
.L3168:
	llgfr	%r2,%r4
	cije	%r0,0,.L3157
	lcgr	%r2,%r2
.L3157:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L3167:
	cije	%r3,0,.L3350
	lr	%r2,%r4
	sr	%r2,%r1
	clrjle	%r1,%r4,.L3372
.L3172:
	llgtr	%r2,%r5
	lr	%r5,%r1
	lr	%r1,%r4
	sr	%r1,%r2
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clrjhe	%r4,%r2,.L3174
.L3356:
	lr	%r1,%r4
	j	.L3174
.L3357:
	lr	%r1,%r4
	j	.L3177
.L3358:
	lr	%r1,%r4
	j	.L3179
.L3359:
	lr	%r2,%r3
	srl	%r2,5
	lr	%r1,%r4
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,5
	cijlh	%r2,0,.L3373
	j	.L3168
.L3372:
	.cfi_restore 12
	lr	%r4,%r2
	j	.L3172
.L3353:
	lcgr	%r1,%r2
	lpgr	%r3,%r3
	lr	%r4,%r1
	lhi	%r0,1
	lr	%r5,%r3
	clrjl	%r3,%r1,.L3159
	lr	0,0
	lr	%r0,%r1
	sr	%r0,%r3
	crjlh	%r3,%r1,.L3161
	lr	%r1,%r0
.L3161:
	llgfr	%r2,%r1
	lcgr	%r2,%r2
	br	%r14
.L3360:
	.cfi_register 12, 16
	lr	%r1,%r4
	j	.L3187
.L3361:
	lr	%r1,%r4
	j	.L3189
.L3355:
	.cfi_restore 12
	lr	%r4,%r1
	lr	%r1,%r3
	srl	%r1,1
	lr	%r2,%r5
	srl	%r2,1
	cijlh	%r1,0,.L3352
	j	.L3350
.L3362:
	.cfi_register 12, 16
	lr	%r1,%r4
	j	.L3191
.L3363:
	lr	%r1,%r4
	j	.L3193
.L3364:
	lr	%r1,%r4
	j	.L3195
.L3365:
	lr	%r2,%r3
	srl	%r2,13
	lr	%r1,%r4
	lr	%r12,%r5
	lr	%r4,%r1
	srl	%r12,13
	cijlh	%r2,0,.L3374
	j	.L3168
.L3366:
	lr	%r1,%r4
	j	.L3211
.L3367:
	lr	%r1,%r4
	j	.L3213
.L3368:
	lr	%r1,%r4
	j	.L3215
.L3369:
	lr	%r1,%r4
	j	.L3217
.L3370:
	lr	%r1,%r4
	j	.L3219
.L3371:
	lr	%r1,%r4
	j	.L3221
.L3354:
	.cfi_restore 12
	lr	%r1,%r2
	sr	%r1,%r3
	crjlh	%r3,%r2,.L3164
	lr	%r2,%r1
.L3164:
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
	clrjhe	%r3,%r2,.L3537
	tmll	%r3,32768
	jne	.L3381
	ldgr	%f0,%r12
	.cfi_register 12, 16
	risbg	%r12,%r3,48,128+62,1
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	clrjhe	%r12,%r2,.L3453
	tmll	%r12,32768
	jne	.L3454
	risbg	%r12,%r3,48,128+61,2
	clrjhe	%r12,%r2,.L3455
	tmll	%r12,32768
	jne	.L3456
	risbg	%r12,%r3,48,128+60,3
	clrjhe	%r12,%r2,.L3457
	tmll	%r12,32768
	jne	.L3458
	risbg	%r12,%r3,48,128+59,4
	clrjhe	%r12,%r2,.L3459
	tmll	%r12,32768
	jne	.L3460
	risbg	%r12,%r3,48,128+58,5
	clrjhe	%r12,%r2,.L3461
	tmll	%r12,32768
	jne	.L3462
	risbg	%r12,%r3,48,128+57,6
	clrjhe	%r12,%r2,.L3463
	tmll	%r12,32768
	jne	.L3464
	risbg	%r12,%r3,48,128+56,7
	clrjhe	%r12,%r2,.L3465
	tmll	%r12,32768
	jne	.L3466
	risbg	%r12,%r3,48,128+55,8
	clrjhe	%r12,%r2,.L3467
	tmll	%r12,32768
	jne	.L3468
	risbg	%r12,%r3,48,128+54,9
	clrjhe	%r12,%r2,.L3469
	tmll	%r12,32768
	jne	.L3470
	risbg	%r12,%r3,48,128+53,10
	clrjhe	%r12,%r2,.L3471
	tmll	%r12,32768
	jne	.L3472
	risbg	%r12,%r3,48,128+52,11
	clrjhe	%r12,%r2,.L3473
	tmll	%r12,32768
	jne	.L3474
	risbg	%r12,%r3,48,128+51,12
	clrjhe	%r12,%r2,.L3475
	tmll	%r12,32768
	jne	.L3476
	risbg	%r12,%r3,48,128+50,13
	clrjhe	%r12,%r2,.L3477
	tmll	%r12,32768
	jne	.L3478
	risbg	%r12,%r3,48,128+49,14
	clrjhe	%r12,%r2,.L3479
	tmll	%r12,32768
	jne	.L3480
	risbg	%r10,%r3,48,128+48,15
	clrjle	%r2,%r10,.L3481
	lhi	%r1,0
	cgijlh	%r10,0,.L3538
.L3384:
	cgije	%r4,0,.L3443
	lr	%r1,%r2
.L3443:
	llghr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L3469:
	.cfi_restore_state
	lhi	%r3,512
.L3382:
	lr	%r11,%r2
	sr	%r11,%r12
	llghr	%r5,%r11
	clrjhe	%r2,%r12,.L3445
	lr	%r5,%r2
.L3445:
	llghr	%r5,%r5
	clrjl	%r2,%r12,.L3451
.L3535:
	lr	%r10,%r3
.L3452:
	srlg	%r11,%r12,1
	lr	%r2,%r5
	risbg	%r1,%r3,64-15,128+63,48+15
	sr	%r2,%r11
	llghr	%r0,%r2
	clrjhe	%r5,%r11,.L3386
	lr	%r0,%r5
.L3386:
	llghr	%r2,%r0
	clrjhe	%r5,%r11,.L3388
	lhi	%r1,0
.L3388:
	lr	%r5,%r3
	srl	%r5,2
	or	%r1,%r10
	srlg	%r11,%r12,2
	cije	%r5,0,.L3384
	lr	%r0,%r2
	sr	%r0,%r11
	lr	%r10,%r2
	slr	%r10,%r11
	lhi	%r11,0
	llghr	%r0,%r0
	alcr	%r11,%r11
	cijlh	%r11,0,.L3390
	lr	%r0,%r2
.L3390:
	llghr	%r2,%r0
	cijlh	%r11,0,.L3392
	lhi	%r5,0
.L3392:
	lr	%r11,%r3
	srl	%r11,3
	or	%r5,%r1
	srlg	%r10,%r12,3
	lr	%r1,%r5
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3394
	lr	%r1,%r2
.L3394:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3396
	lhi	%r11,0
.L3396:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,4
	lr	%r1,%r5
	srlg	%r10,%r12,4
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3398
	lr	%r1,%r2
.L3398:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3400
	lhi	%r11,0
.L3400:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,5
	lr	%r1,%r5
	srlg	%r10,%r12,5
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3402
	lr	%r1,%r2
.L3402:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3404
	lhi	%r11,0
.L3404:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,6
	lr	%r1,%r5
	srlg	%r10,%r12,6
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3406
	lr	%r1,%r2
.L3406:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3408
	lhi	%r11,0
.L3408:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,7
	lr	%r1,%r5
	srlg	%r10,%r12,7
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3410
	lr	%r1,%r2
.L3410:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3412
	lhi	%r11,0
.L3412:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,8
	lr	%r1,%r5
	srlg	%r10,%r12,8
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3414
	lr	%r1,%r2
.L3414:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3416
	lhi	%r11,0
.L3416:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,9
	lr	%r1,%r5
	srlg	%r10,%r12,9
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3418
	lr	%r1,%r2
.L3418:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3420
	lhi	%r11,0
.L3420:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,10
	lr	%r1,%r5
	srlg	%r10,%r12,10
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3422
	lr	%r1,%r2
.L3422:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3424
	lhi	%r11,0
.L3424:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,11
	lr	%r1,%r5
	srlg	%r10,%r12,11
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3426
	lr	%r1,%r2
.L3426:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3428
	lhi	%r11,0
.L3428:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,12
	lr	%r1,%r5
	srlg	%r10,%r12,12
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3430
	lr	%r1,%r2
.L3430:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3432
	lhi	%r11,0
.L3432:
	or	%r5,%r11
	lr	%r11,%r3
	srl	%r11,13
	lr	%r1,%r5
	srlg	%r10,%r12,13
	cije	%r11,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r0,%r2
	slr	%r0,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3434
	lr	%r1,%r2
.L3434:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3436
	lhi	%r11,0
.L3436:
	lr	%r0,%r3
	srl	%r0,14
	or	%r5,%r11
	srlg	%r10,%r12,14
	lr	%r1,%r5
	cije	%r0,0,.L3384
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r11,%r2
	slr	%r11,%r10
	lhi	%r10,0
	llghr	%r1,%r1
	alcr	%r10,%r10
	cijlh	%r10,0,.L3438
	lr	%r1,%r2
.L3438:
	llghr	%r2,%r1
	cijlh	%r10,0,.L3440
	lhi	%r0,0
.L3440:
	lhi	%r11,16384
	or	%r5,%r0
	srlg	%r12,%r12,15
	lr	%r1,%r5
	crje	%r3,%r11,.L3384
	lr	%r10,%r2
	sr	%r10,%r12
	lr	%r3,%r2
	lhi	%r1,0
	slr	%r3,%r12
	llghr	%r0,%r10
	alcr	%r1,%r1
	cijlh	%r1,0,.L3442
	lr	%r0,%r2
.L3442:
	llghr	%r2,%r0
	or	%r1,%r5
	j	.L3384
.L3454:
	lhi	%r3,2
.L3383:
	lr	%r0,%r2
	sr	%r0,%r12
	llghr	%r1,%r0
	clrjhe	%r2,%r12,.L3450
	lr	%r1,%r2
.L3450:
	llghr	%r5,%r1
	clrjhe	%r2,%r12,.L3535
.L3451:
	lhi	%r10,0
	j	.L3452
.L3537:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lgr	%r1,%r3
	xgr	%r1,%r2
	lr	%r5,%r2
	sr	%r5,%r3
	aghi	%r1,-1
	lgr	%r0,%r1
	llghr	%r3,%r5
	srlg	%r1,%r1,63
	cgijhe	%r0,0,.L3536
	lr	%r2,%r3
.L3536:
	llghr	%r2,%r2
	cgije	%r4,0,.L3532
	lr	%r1,%r2
.L3532:
	llghr	%r2,%r1
	br	%r14
.L3453:
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lhi	%r3,2
	j	.L3382
.L3455:
	lhi	%r3,4
	j	.L3382
.L3456:
	lhi	%r3,4
	j	.L3383
.L3457:
	lhi	%r3,8
	j	.L3382
.L3458:
	lhi	%r3,8
	j	.L3383
.L3459:
	lhi	%r3,16
	j	.L3382
.L3460:
	lhi	%r3,16
	j	.L3383
.L3461:
	lhi	%r3,32
	j	.L3382
.L3462:
	lhi	%r3,32
	j	.L3383
.L3463:
	lhi	%r3,64
	j	.L3382
.L3464:
	lhi	%r3,64
	j	.L3383
.L3465:
	lhi	%r3,128
	j	.L3382
.L3466:
	lhi	%r3,128
	j	.L3383
.L3467:
	lhi	%r3,256
	j	.L3382
.L3468:
	lhi	%r3,256
	j	.L3383
.L3470:
	lhi	%r3,512
	j	.L3383
.L3471:
	lhi	%r3,1024
	j	.L3382
.L3473:
	lhi	%r3,2048
	j	.L3382
.L3472:
	lhi	%r3,1024
	j	.L3383
.L3474:
	lhi	%r3,2048
	j	.L3383
.L3476:
	lhi	%r3,4096
	j	.L3383
.L3475:
	lhi	%r3,4096
	j	.L3382
.L3478:
	lhi	%r3,8192
	j	.L3383
.L3477:
	lhi	%r3,8192
	j	.L3382
.L3480:
	lhi	%r3,16384
	j	.L3383
.L3479:
	lhi	%r3,16384
	j	.L3382
.L3538:
	llill	%r3,32768
	llill	%r12,32768
	j	.L3383
.L3481:
	llill	%r12,32768
	llill	%r3,32768
	j	.L3382
.L3381:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	sr	%r2,%r3
	lhi	%r1,1
	j	.L3536
	.cfi_endproc
.LFE131:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB132:
	.cfi_startproc
	ldgr	%f2,%r12
	.cfi_register 12, 17
	lgr	%r12,%r2
	clgrjle	%r2,%r3,.L3575
	lghi	%r1,1
	lhi	%r5,16
.L3541:
	risbg	%r2,%r3,32,128+32,0
	jne	.L3546
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjhe	%r3,%r12,.L3543
	risbg	%r2,%r3,32,128+32,0
	jne	.L3546
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjhe	%r3,%r12,.L3543
	risbg	%r2,%r3,32,128+32,0
	jne	.L3546
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjhe	%r3,%r12,.L3543
	risbg	%r2,%r3,32,128+32,0
	jne	.L3546
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r12,%r3,.L3543
	brct	%r5,.L3541
.L3544:
	cgije	%r4,0,.L3540
	lgr	%r2,%r12
.L3540:
	lgdr	%r12,%f2
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3543:
	.cfi_restore_state
	cgije	%r1,0,.L3544
.L3546:
	lghi	%r2,0
.L3551:
	lgr	%r0,%r12
	sgr	%r0,%r3
	lhi	%r5,0
	ldgr	%f0,%r12
	slgr	%r12,%r3
	alcr	%r5,%r5
	cije	%r5,0,.L3548
	ldgr	%f0,%r0
.L3548:
	lgdr	%r12,%f0
	lghi	%r0,0
	cije	%r5,0,.L3550
	lgr	%r0,%r1
.L3550:
	srlg	%r1,%r1,1
	ogr	%r2,%r0
	srlg	%r3,%r3,1
	cgijlh	%r1,0,.L3551
	j	.L3544
.L3575:
	sgr	%r2,%r3
	lgr	%r1,%r12
	lhi	%r0,0
	slgr	%r1,%r3
	alcr	%r0,%r0
	cijlh	%r0,0,.L3554
	lgr	%r2,%r12
.L3554:
	lgr	%r12,%r2
	llgcr	%r2,%r0
	j	.L3544
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
	je	.L3578
	lr	%r1,%r2
	lhi	%r4,0
	sll	%r1,4064(%r3)
.L3579:
	llgfr	%r2,%r4
	rosbg	%r2,%r1,0,31,32
.L3577:
	br	%r14
.L3578:
	cgije	%r3,0,.L3577
	srag	%r1,%r2,32
	lhi	%r5,32
	sr	%r5,%r3
	lr	%r4,%r2
	sll	%r4,0(%r3)
	sll	%r1,0(%r3)
	srl	%r2,0(%r5)
	or	%r1,%r2
	j	.L3579
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
	je	.L3584
	sllg	%r1,%r3,4032(%r4)
	lghi	%r4,0
.L3585:
	lgr	%r3,%r4
.L3586:
	stg	%r1,0(%r2)
	stg	%r3,8(%r2)
	br	%r14
.L3584:
	cgije	%r4,0,.L3586
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r0,%r1,0(%r4)
	sllg	%r4,%r3,0(%r4)
	srlg	%r1,%r3,0(%r5)
	ogr	%r1,%r0
	j	.L3585
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
	je	.L3592
	srag	%r4,%r2,32
	lr	%r1,%r4
	sra	%r1,4064(%r3)
	sra	%r4,31
.L3593:
	llgfr	%r2,%r1
	rosbg	%r2,%r4,0,31,32
.L3591:
	br	%r14
.L3592:
	cgije	%r3,0,.L3591
	srag	%r1,%r2,32
	lhi	%r5,32
	sr	%r5,%r3
	lr	%r4,%r1
	srl	%r2,0(%r3)
	sra	%r4,0(%r3)
	sll	%r1,0(%r5)
	or	%r1,%r2
	j	.L3593
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
	je	.L3598
	srag	%r1,%r5,4032(%r4)
	srag	%r4,%r5,63
.L3599:
	lgr	%r5,%r4
.L3600:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3598:
	cgije	%r4,0,.L3600
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r0,%r1,0(%r4)
	srag	%r4,%r5,0(%r4)
	sllg	%r1,%r5,0(%r3)
	ogr	%r1,%r0
	j	.L3599
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
	lhi	%r4,0
	lhi	%r3,16
	lgr	%r1,%r2
	lhi	%r5,4
	lhi	%r2,2
	slbr	%r4,%r4
	lcr	%r0,%r4
	sll	%r0,4
	sr	%r3,%r0
	srl	%r1,0(%r3)
	risbg	%r3,%r1,48,128+55,0
	ahi	%r3,-1
	risbg	%r4,%r3,60,128+60,64-28
	ar	%r0,%r4
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r12,8
	sr	%r12,%r4
	srl	%r1,0(%r12)
	risbg	%r12,%r1,56,128+59,0
	ahi	%r12,-1
	risbg	%r3,%r12,61,128+61,64-29
	lr	%r12,%r2
	sr	%r5,%r3
	ar	%r0,%r3
	srl	%r1,0(%r5)
	risbg	%r5,%r1,60,128+61,0
	ahi	%r5,-1
	risbg	%r4,%r5,62,128+62,64-30
	sr	%r12,%r4
	srl	%r1,0(%r12)
	tmll	%r1,2
	jne	.L3610
	sr	%r2,%r1
	ar	%r4,%r0
	ar	%r2,%r4
	lgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3610:
	.cfi_restore_state
	ar	%r4,%r0
	lhi	%r2,0
	ar	%r2,%r4
	lgfr	%r2,%r2
	lgdr	%r12,%f0
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
	lg	%r3,8(%r2)
	lpgr	%r1,%r5
	aghi	%r1,-1
	srlg	%r1,%r1,63
	lay	%r4,-1(%r1)
	llcr	%r2,%r1
	ngr	%r4,%r5
	cgijlh	%r1,0,.L3616
	lghi	%r3,0
.L3616:
	ogr	%r4,%r3
	sll	%r2,6
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
	jl	.L3622
	jh	.L3623
	clr	%r2,%r3
	jl	.L3622
	jh	.L3623
	lhi	%r2,1
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3622:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3623:
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
	jl	.L3629
	jh	.L3628
	clr	%r2,%r3
	jl	.L3629
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3629:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3628:
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
	lg	%r1,8(%r3)
	cg	%r2,0(%r3)
	jl	.L3635
	jh	.L3636
	clgr	%r4,%r1
	jl	.L3635
	jh	.L3636
	lhi	%r0,1
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3635:
	lhi	%r0,0
	risbg	%r2,%r0,62,128+63,0
	br	%r14
.L3636:
	lhi	%r0,2
	risbg	%r2,%r0,62,128+63,0
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
	llhr	%r4,%r2
	lgr	%r1,%r2
	lhi	%r5,2
	ahi	%r4,-1
	risbg	%r2,%r4,59,128+59,64-27
	srl	%r1,0(%r2)
	llcr	%r3,%r1
	ahi	%r3,-1
	risbg	%r3,%r3,60,128+60,64-28
	srl	%r1,0(%r3)
	ar	%r3,%r2
	risbg	%r0,%r1,60,128+63,0
	ahi	%r0,-1
	risbg	%r4,%r0,61,128+61,64-29
	srl	%r1,0(%r4)
	ar	%r3,%r4
	risbg	%r2,%r1,62,128+63,0
	ahi	%r2,-1
	risbg	%r4,%r2,62,128+62,64-30
	srl	%r1,0(%r4)
	ar	%r3,%r4
	risbg	%r0,%r1,63,128+63,0
	risbg	%r1,%r1,64-1,128+63,62+1
	xilf	%r0,1
	sr	%r5,%r1
	lcr	%r2,%r0
	nr	%r2,%r5
	ar	%r2,%r3
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
	lg	%r5,8(%r2)
	lg	%r4,0(%r2)
	lpgr	%r1,%r5
	aghi	%r1,-1
	srlg	%r0,%r1,63
	llcr	%r2,%r0
	cgijlh	%r0,0,.L3642
	lghi	%r4,0
.L3642:
	lr	%r1,%r2
	ahi	%r1,-1
	sll	%r2,6
	lghi	%r3,63
	lgfr	%r0,%r1
	ngr	%r0,%r5
	ogr	%r4,%r0
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
	jne	.L3645
	cgijlh	%r1,0,.L3648
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L3645:
	lcgr	%r0,%r4
	lghi	%r2,63
	ngr	%r4,%r0
	flogr	%r4,%r4
	sgr	%r2,%r4
	ahi	%r2,1
	lgfr	%r2,%r2
	br	%r14
.L3648:
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
	je	.L3651
	risbg	%r1,%r2,64-32,128+63,0+32
	lhi	%r4,0
	srl	%r1,4064(%r3)
.L3652:
	llgfr	%r2,%r1
	rosbg	%r2,%r4,0,31,32
.L3650:
	br	%r14
.L3651:
	cgije	%r3,0,.L3650
	risbg	%r1,%r2,64-32,128+63,0+32
	lhi	%r5,32
	sr	%r5,%r3
	lr	%r4,%r1
	srl	%r2,0(%r3)
	srl	%r4,0(%r3)
	sll	%r1,0(%r5)
	or	%r1,%r2
	j	.L3652
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
	je	.L3657
	srlg	%r1,%r5,4032(%r4)
	lghi	%r4,0
.L3658:
	lgr	%r5,%r4
.L3659:
	stg	%r5,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L3657:
	cgije	%r4,0,.L3659
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r0,%r1,0(%r4)
	srlg	%r4,%r5,0(%r4)
	sllg	%r1,%r5,0(%r3)
	ogr	%r1,%r0
	j	.L3658
	.cfi_endproc
.LFE148:
	.size	__lshrti3, .-__lshrti3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB149:
	.cfi_startproc
	risbg	%r1,%r3,48,128+63,0
	risbg	%r4,%r2,48,128+63,0
	lgr	%r5,%r2
	lr	%r2,%r4
	srl	%r5,16
	srl	%r3,16
	lghi	%r0,0
	msr	%r2,%r1
	msr	%r1,%r5
	msr	%r4,%r3
	msr	%r5,%r3
	lr	%r3,%r2
	srl	%r3,16
	llhr	%r2,%r2
	ar	%r1,%r3
	llhr	%r3,%r1
	srl	%r1,16
	ar	%r4,%r3
	ar	%r1,%r5
	lr	%r5,%r4
	srl	%r5,16
	sll	%r4,16
	ar	%r1,%r5
	ar	%r2,%r4
	lr	%r0,%r2
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
	ldgr	%f4,%r10
	.cfi_register 10, 18
	risbg	%r1,%r3,48,128+63,0
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f6,%r9
	.cfi_register 9, 19
	srag	%r10,%r2,32
	lgr	%r5,%r2
	risbg	%r4,%r2,48,128+63,0
	lr	%r11,%r2
	lr	%r2,%r4
	srl	%r11,16
	lr	%r12,%r3
	srl	%r12,16
	srag	%r9,%r3,32
	lghi	%r0,0
	msr	%r2,%r1
	msr	%r1,%r11
	msr	%r4,%r12
	msr	%r11,%r12
	msr	%r3,%r10
	msr	%r5,%r9
	lr	%r12,%r2
	srl	%r12,16
	llhr	%r9,%r2
	ar	%r1,%r12
	llhr	%r10,%r1
	srl	%r1,16
	ar	%r4,%r10
	ar	%r1,%r11
	lr	%r11,%r4
	srl	%r11,16
	sll	%r4,16
	ar	%r1,%r11
	ar	%r4,%r9
	lr	%r0,%r4
	risbg	%r0,%r1,0,0+32-1,64-0-32
	lgr	%r2,%r0
	srag	%r4,%r0,32
	ar	%r5,%r4
	ar	%r3,%r5
	risbg	%r2,%r3,0,64-32-1,32
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
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
	lgr	%r0,%r1
	srlg	%r3,%r3,32
	msgr	%r0,%r5
	ldgr	%f2,%r11
	.cfi_register 11, 17
	srlg	%r11,%r4,32
	lgr	%r4,%r5
	srlg	%r5,%r0,32
	msgr	%r4,%r3
	msgr	%r1,%r11
	msgr	%r3,%r11
	agr	%r4,%r5
	algfr	%r1,%r4
	srlg	%r11,%r4,32
	agr	%r11,%r3
	srlg	%r3,%r1,32
	sllg	%r1,%r1,32
	agr	%r11,%r3
	stg	%r11,0(%r2)
	algfr	%r1,%r0
	stg	%r1,8(%r2)
	lgdr	%r11,%f2
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
	ldgr	%f6,%r9
	.cfi_register 9, 19
	lgr	%r9,%r3
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f1,%r8
	.cfi_register 8, 20
	lg	%r11,8(%r4)
	lg	%r12,8(%r3)
	risbg	%r1,%r11,32,128+63,0
	risbg	%r3,%r12,32,128+63,0
	lgr	%r0,%r3
	srlg	%r10,%r12,32
	srlg	%r8,%r11,32
	msgr	%r0,%r1
	msgr	%r1,%r10
	msgr	%r3,%r8
	msg	%r12,0(%r4)
	msgr	%r10,%r8
	msg	%r11,0(%r9)
	lgdr	%r8,%f1
	.cfi_restore 8
	srlg	%r4,%r0,32
	agr	%r1,%r4
	algfr	%r3,%r1
	srlg	%r9,%r1,32
	srlg	%r1,%r3,32
	agr	%r9,%r10
	sllg	%r3,%r3,32
	agr	%r9,%r1
	algfr	%r3,%r0
	stg	%r3,8(%r2)
	agr	%r12,%r9
	agr	%r12,%r11
	stg	%r12,0(%r2)
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r10,%f4
	.cfi_restore 10
	lgdr	%r9,%f6
	.cfi_restore 9
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
	lr	%r1,%r2
	lhi	%r3,27030
	rxsbg	%r1,%r2,32,63,32
	rxsbg	%r1,%r1,48,63,48
	rxsbg	%r1,%r1,40,63,56
	rxsbg	%r1,%r1,36,63,60
	nilf	%r1,15
	sra	%r3,0(%r1)
	risbg	%r2,%r3,63,128+63,0
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
	sra	%r3,0(%r4)
	risbg	%r2,%r3,63,128+63,0
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
	lgr	%r1,%r2
	lhi	%r2,27030
	rxsbg	%r1,%r1,48,63,48
	rxsbg	%r1,%r1,40,63,56
	rxsbg	%r1,%r1,36,63,60
	nilf	%r1,15
	sra	%r2,0(%r1)
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
	larl	%r5,.L3687
	srlg	%r1,%r2,1
	ng	%r1,.L3688-.L3687(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L3689-.L3687(%r5)
	ng	%r0,.L3689-.L3687(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L3690-.L3687(%r5)
	srlg	%r2,%r3,32
	ar	%r2,%r3
	lr	%r4,%r2
	srl	%r4,16
	ar	%r4,%r2
	lr	%r1,%r4
	srl	%r1,8
	ar	%r1,%r4
	risbg	%r2,%r1,57,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L3687:
.L3690:
	.quad	1085102592571150095
.L3689:
	.quad	3689348814741910323
.L3688:
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
	lr	%r4,%r3
	srl	%r4,8
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
	ldgr	%f7,%r6
	.cfi_register 6, 23
	ldgr	%f5,%r7
	.cfi_register 7, 22
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
	llihf	%r11,1431655765
	oilf	%r11,1431655765
	llihf	%r10,1431655765
	oilf	%r10,1431655765
	llihf	%r5,858993459
	llihf	%r7,858993459
	llihf	%r6,858993459
	lg	%r1,8(%r2)
	srlg	%r9,%r1,1
	lg	%r8,0(%r2)
	srlg	%r2,%r8,1
	ngr	%r11,%r9
	ngr	%r10,%r2
	slgr	%r1,%r11
	slbgr	%r8,%r10
	oilf	%r5,858993459
	srlg	%r0,%r1,2
	oilf	%r7,858993459
	oilf	%r6,858993459
	srlg	%r4,%r8,2
	ngr	%r7,%r1
	llihf	%r1,252645135
	ngr	%r6,%r8
	ngr	%r5,%r4
	lgr	%r12,%r5
	llihf	%r5,858993459
	oilf	%r5,858993459
	ngr	%r5,%r0
	algr	%r5,%r7
	alcgr	%r12,%r6
	srlg	%r9,%r5,4
	rosbg	%r9,%r12,0,3,60
	srlg	%r2,%r12,4
	algr	%r9,%r5
	alcgr	%r2,%r12
	oilf	%r1,252645135
	ngr	%r1,%r2
	llihf	%r2,252645135
	oilf	%r2,252645135
	ngr	%r2,%r9
	agr	%r1,%r2
	srlg	%r10,%r1,32
	ar	%r10,%r1
	lr	%r11,%r10
	srl	%r11,16
	ar	%r11,%r10
	lr	%r8,%r11
	srl	%r8,8
	ar	%r8,%r11
	llgcr	%r2,%r8
	lgdr	%r12,%f2
	.cfi_restore 12
	lgdr	%r11,%f4
	.cfi_restore 11
	lgdr	%r10,%f6
	.cfi_restore 10
	lgdr	%r9,%f1
	.cfi_restore 9
	lgdr	%r8,%f3
	.cfi_restore 8
	lgdr	%r7,%f5
	.cfi_restore 7
	lgdr	%r6,%f7
	.cfi_restore 6
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
	larl	%r5,.L3706
	tmll	%r2,1
	lgr	%r1,%r2
	ldr	%f2,%f0
	ld	%f0,.L3707-.L3706(%r5)
	je	.L3697
.L3699:
	mdbr	%f0,%f2
.L3697:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3698
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3699
.L3704:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	lr	%r0,%r1
	srl	%r0,31
	tmll	%r1,1
	mdbr	%f2,%f2
	jne	.L3699
	j	.L3704
.L3698:
	cijl	%r2,0,.L3705
	br	%r14
.L3705:
	ld	%f4,.L3707-.L3706(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3706:
.L3707:
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
	larl	%r5,.L3718
	tmll	%r2,1
	lgr	%r1,%r2
	ler	%f2,%f0
	le	%f0,.L3719-.L3718(%r5)
	je	.L3709
.L3711:
	meebr	%f0,%f2
.L3709:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L3710
	tmll	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3711
.L3716:
	ar	%r0,%r1
	sra	%r0,1
	lgfr	%r1,%r0
	lr	%r0,%r1
	srl	%r0,31
	tmll	%r1,1
	meebr	%f2,%f2
	jne	.L3711
	j	.L3716
.L3710:
	cijl	%r2,0,.L3717
	br	%r14
.L3717:
	le	%f4,.L3719-.L3718(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L3718:
.L3719:
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
	jl	.L3724
	jh	.L3725
	clr	%r2,%r3
	jl	.L3724
	jh	.L3725
	lhi	%r2,1
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3724:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3725:
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
	jl	.L3731
	jh	.L3730
	clr	%r2,%r3
	jl	.L3731
	lhi	%r2,0
	alcr	%r2,%r2
	lgfr	%r2,%r2
	br	%r14
.L3731:
	lhi	%r2,-1
	lgfr	%r2,%r2
	br	%r14
.L3730:
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
	jl	.L3737
	jh	.L3738
	clgr	%r4,%r1
	jl	.L3737
	jh	.L3738
	lhi	%r2,1
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3737:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L3738:
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
