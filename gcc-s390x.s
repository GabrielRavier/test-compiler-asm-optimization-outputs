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
	cgije	%r4,0,.L103
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L46
	cgije	%r5,1,.L68
	cgijlh	%r5,2,.L106
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
	cgije	%r4,0,.L103
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
.L9:
	icy	%r0,-1(%r4,%r3)
	stcy	%r0,-1(%r4,%r2)
	icy	%r5,-2(%r4,%r3)
	stcy	%r5,-2(%r4,%r2)
	icy	%r0,-3(%r4,%r3)
	stcy	%r0,-3(%r4,%r2)
	icy	%r5,-4(%r4,%r3)
	stcy	%r5,-4(%r4,%r2)
	aghi	%r4,-4
	brctg	%r1,.L9
	br	%r14
.L106:
	icy	%r5,-1(%r4,%r3)
	stcy	%r5,-1(%r4,%r2)
	lgr	%r4,%r0
	j	.L69
.L17:
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
.L103:
	br	%r14
.L55:
	srlg	%r5,%r5,2
.L14:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	aghi	%r1,4
	brctg	%r5,.L14
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
	cgije	%r5,0,.L111
	aghik	%r0,%r5,-1
	tmll	%r5,1
	jne	.L128
.L118:
	srlg	%r1,%r5,1
.L109:
	llgc	%r5,0(%r3)
	la	%r0,1(%r2)
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L126
	llgc	%r5,1(%r3)
	lgr	%r2,%r0
	stc	%r5,0(%r2)
	crje	%r4,%r5,.L126
	la	%r3,2(%r3)
	la	%r2,1(%r2)
	brctg	%r1,.L109
.L111:
	lghi	%r2,0
	br	%r14
.L128:
	llgc	%r1,0(%r3)
	stc	%r1,0(%r2)
	crje	%r4,%r1,.L126
	la	%r3,1(%r3)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L118
	j	.L111
.L126:
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
	cgije	%r4,0,.L134
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L141
	cgije	%r5,1,.L152
	cgije	%r5,2,.L153
	llc	%r4,0(%r2)
	crje	%r4,%r3,.L130
	la	%r2,1(%r2)
	lgr	%r4,%r0
.L153:
	llc	%r0,0(%r2)
	crje	%r0,%r3,.L130
	la	%r2,1(%r2)
	aghi	%r4,-1
.L152:
	llc	%r5,0(%r2)
	crje	%r5,%r3,.L130
	la	%r2,1(%r2)
	cgije	%r4,1,.L134
.L141:
	srlg	%r4,%r1,2
.L131:
	llc	%r0,0(%r2)
	la	%r1,1(%r2)
	crje	%r0,%r3,.L162
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	crje	%r5,%r3,.L163
	llc	%r0,1(%r1)
	la	%r2,1(%r1)
	crje	%r0,%r3,.L130
	llc	%r5,2(%r1)
	la	%r2,2(%r1)
	crje	%r5,%r3,.L130
	la	%r2,3(%r1)
	brctg	%r4,.L131
.L134:
	lghi	%r2,0
.L130:
	br	%r14
.L162:
	br	%r14
.L163:
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
	cgije	%r4,0,.L194
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r4,-1
	lgr	%r0,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L177
	cgije	%r1,1,.L188
	cgije	%r1,2,.L189
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L196
	lgr	%r4,%r12
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L189:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L196
	aghi	%r4,-1
	la	%r2,1(%r2)
	la	%r3,1(%r3)
.L188:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L196
	la	%r2,1(%r2)
	la	%r3,1(%r3)
	cgije	%r4,1,.L170
.L177:
	srlg	%r4,%r0,2
.L166:
	llc	%r1,0(%r2)
	llc	%r5,0(%r3)
	crjlh	%r1,%r5,.L196
	llc	%r1,1(%r2)
	llc	%r5,1(%r3)
	crjlh	%r1,%r5,.L196
	llc	%r1,2(%r2)
	llc	%r5,2(%r3)
	crjlh	%r1,%r5,.L196
	llc	%r1,3(%r2)
	llc	%r5,3(%r3)
	la	%r2,4(%r2)
	crjlh	%r1,%r5,.L196
	la	%r3,4(%r3)
	brctg	%r4,.L166
.L170:
	lhi	%r3,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgfr	%r2,%r3
	br	%r14
.L196:
	.cfi_restore_state
	srk	%r3,%r1,%r5
	lgdr	%r12,%f0
	.cfi_restore 12
	lgfr	%r2,%r3
	br	%r14
.L194:
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
	cgije	%r4,0,.L205
	brasl	%r14,memcpy@PLT
.L205:
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
	je	.L220
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r0,%r3,.L233
	cgije	%r5,1,.L220
	cgije	%r5,2,.L224
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r5,%r3,.L233
.L224:
	llc	%r0,0(%r1)
	lgr	%r2,%r1
	aghi	%r1,-1
	crje	%r0,%r3,.L233
.L220:
	srlg	%r4,%r4,2
	aghi	%r4,1
	brctg	%r4,.L234
	lghi	%r2,0
	br	%r14
.L234:
	llc	%r5,0(%r1)
	lgr	%r2,%r1
	aghik	%r0,%r1,-1
	crje	%r5,%r3,.L239
	llc	%r5,-1(%r1)
	lgr	%r2,%r0
	aghik	%r0,%r1,-2
	crje	%r5,%r3,.L233
	ldgr	%f0,%r12
	.cfi_register 12, 16
.L237:
	llc	%r12,-2(%r1)
	lgr	%r2,%r0
	aghik	%r5,%r1,-3
	crje	%r12,%r3,.L211
	llc	%r0,-3(%r1)
	lgr	%r2,%r5
	aghi	%r1,-4
	crje	%r0,%r3,.L211
	brctg	%r4,.L214
	lghi	%r2,0
.L211:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L214:
	.cfi_restore_state
	llc	%r12,0(%r1)
	lgr	%r2,%r1
	aghik	%r0,%r1,-1
	crje	%r12,%r3,.L211
	llc	%r5,-1(%r1)
	lgr	%r2,%r0
	aghik	%r0,%r1,-2
	crjlh	%r5,%r3,.L237
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L233:
	br	%r14
.L239:
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
	cgije	%r4,0,.L252
	nilf	%r3,255
	lgr	%r1,%r2
	cgije	%r4,1,.L244
	aghi	%r4,-2
	srlg	%r5,%r4,8
	cgijlh	%r5,0,.L243
.L246:
	stc	%r3,0(%r1)
	exrl	%r4,.L254
.L252:
	br	%r14
.L243:
	pfd	2,1024(%r1)
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brctg	%r5,.L243
	j	.L246
.L244:
	stc	%r3,0(%r2)
	br	%r14
.L254:
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
	cgije	%r1,0,.L257
.L258:
	llgc	%r0,1(%r3)
	la	%r3,1(%r3)
	stc	%r0,1(%r2)
	la	%r2,1(%r2)
	cgijlh	%r0,0,.L258
.L257:
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
	jne	.L265
	br	%r14
.L267:
	la	%r2,1(%r2)
	cli	0(%r2),0
	llc	%r1,0(%r2)
	ber	%r14
.L265:
	crjlh	%r1,%r3,.L267
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
.L275:
	llc	%r1,0(%r2)
	crje	%r1,%r3,.L274
	la	%r2,1(%r2)
	cijlh	%r1,0,.L275
	lghi	%r2,0
.L274:
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
	llc	%r0,0(%r2)
	llc	%r5,0(%r3)
	lghi	%r4,1
	crje	%r0,%r5,.L279
	j	.L280
.L281:
	ic	%r1,0(%r4,%r2)
	aghi	%r4,1
	llc	%r5,-1(%r4,%r3)
	llcr	%r0,%r1
	crjlh	%r0,%r5,.L280
.L279:
	cijlh	%r0,0,.L281
.L280:
	srk	%r2,%r0,%r5
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
	je	.L289
	lgr	%r1,%r2
.L288:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L288
	sgrk	%r2,%r1,%r2
	br	%r14
.L289:
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
	cgije	%r4,0,.L300
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L302
.L296:
	llc	%r5,0(%r3)
	cli	0(%r3),0
	je	.L295
	la	%r0,1(%r3)
	brctg	%r4,.L298
.L295:
	srk	%r2,%r1,%r5
	lgfr	%r2,%r2
	br	%r14
.L298:
	crjlh	%r5,%r1,.L295
	la	%r2,1(%r2)
	llc	%r1,0(%r2)
	cli	0(%r2),0
	je	.L303
	lgr	%r3,%r0
	j	.L296
.L300:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L303:
	llc	%r5,1(%r3)
	lhi	%r1,0
	j	.L295
.L302:
	llc	%r5,0(%r3)
	lhi	%r1,0
	j	.L295
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
	cgijle	%r4,1,.L305
	nill	%r4,65534
	aghik	%r1,%r4,-2
	la	%r5,0(%r4,%r2)
	srlg	%r0,%r1,1
	aghi	%r0,1
	risbg	%r4,%r0,62,128+63,0
	je	.L314
	cgije	%r4,1,.L318
	cgije	%r4,2,.L319
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L319:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
.L318:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	la	%r3,2(%r3)
	la	%r2,2(%r2)
	cgrje	%r2,%r5,.L305
.L314:
	srlg	%r1,%r0,2
.L307:
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
	brctg	%r1,.L307
.L305:
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
	cije	%r2,32,.L348
	ahi	%r2,-9
	clfi	%r2,4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r0,%r2
	risbg	%r2,%r0,63,128+63,0
	br	%r14
.L348:
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
	clijle	%r2,31,.L356
	ahik	%r1,%r2,-127
	clijh	%r1,32,.L357
.L356:
	lhi	%r3,1
	risbg	%r2,%r3,63,128+63,0
	br	%r14
.L357:
	ahik	%r0,%r2,-8232
	clijle	%r0,1,.L356
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
	clijle	%r2,254,.L368
	lhi	%r1,8231
	clrjle	%r2,%r1,.L366
	ahik	%r0,%r2,-8234
	llill	%r3,47061
	clrjle	%r0,%r3,.L366
	slfi	%r0,49110
	lhi	%r4,8184
	clrjle	%r0,%r4,.L366
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
.L366:
	lhi	%r1,1
	risbg	%r2,%r1,63,128+63,0
	br	%r14
.L368:
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
	clijle	%r1,9,.L372
	oill	%r2,32
	ahi	%r2,-97
	clfi	%r2,5
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
	jo	.L380
	kdbr	%f0,%f2
	jnh	.L383
	sdbr	%f0,%f2
	br	%r14
.L383:
	lzdr	%f0
	br	%r14
.L380:
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
	jo	.L389
	kebr	%f0,%f2
	jnh	.L392
	sebr	%f0,%f2
	br	%r14
.L392:
	lzer	%f0
	br	%r14
.L389:
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
	jo	.L402
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L396
	cijlh	%r1,0,.L402
	br	%r14
.L396:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L402
	ldr	%f2,%f0
.L402:
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
	jo	.L412
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L406
	cijlh	%r1,0,.L412
	br	%r14
.L406:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	jne	.L412
	ler	%f2,%f0
.L412:
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
	jo	.L421
	cxbr	%f4,%f4
	jo	.L426
	tcxb	%f0,1365
	ipm	%r1
	tcxb	%f4,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L428
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
	je	.L418
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L419:
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
.L428:
	cije	%r1,0,.L426
.L421:
	lxr	%f0,%f4
.L426:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L418:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L419
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
	jo	.L436
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L432
	cije	%r1,0,.L436
	br	%r14
.L432:
	kdbr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L436:
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
	jo	.L446
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	crje	%r1,%r2,.L442
	cije	%r1,0,.L446
	br	%r14
.L442:
	kebr	%f0,%f2
	lhi	%r0,0
	lhi	%r3,1
	locrl	%r0,%r3
	tmll	%r0,1
	bner	%r14
.L446:
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
	jo	.L462
	cxbr	%f0,%f0
	jo	.L457
	tcxb	%f4,1365
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	crjlh	%r1,%r3,.L464
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
	je	.L454
	lgdr	%r5,%f4
	lgdr	%r1,%f6
.L455:
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
.L464:
	cije	%r1,0,.L462
.L457:
	lxr	%f0,%f4
.L462:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L454:
	.cfi_def_cfa_offset 336
	.cfi_register 12, 22
	.cfi_register 13, 21
	.cfi_register 15, 20
	lgdr	%r5,%f0
	lgdr	%r1,%f2
	j	.L455
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
	cije	%r2,0,.L469
	larl	%r2,.LANCHOR0
	larl	%r4,.LANCHOR1
.L468:
	risbg	%r3,%r1,58,128+63,0
	la	%r5,0(%r3,%r4)
	srl	%r1,6
	mvc	0(1,%r2),0(%r5)
	la	%r2,1(%r2)
	cijlh	%r1,0,.L468
	mvi	0(%r2),0
	larl	%r2,.LANCHOR0
	br	%r14
.L469:
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
	cgije	%r3,0,.L483
	lg	%r1,0(%r3)
	stg	%r3,8(%r2)
	stg	%r1,0(%r2)
	stg	%r2,0(%r3)
	ltg	%r3,0(%r2)
	ber	%r14
	stg	%r2,8(%r3)
	br	%r14
.L483:
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
	je	.L486
	lg	%r3,8(%r2)
	stg	%r3,8(%r1)
.L486:
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
	je	.L496
	lgr	%r12,%r3
	lgr	%r10,%r8
	tmll	%r8,1
	jne	.L515
.L506:
	srlg	%r10,%r10,1
.L498:
	lgr	%r3,%r12
	lgr	%r2,%r7
	agrk	%r11,%r12,%r9
	basr	%r14,%r6
	lgr	%r3,%r11
	lgr	%r1,%r2
	lgr	%r2,%r7
	cije	%r1,0,.L495
	lgr	%r12,%r11
	basr	%r14,%r6
	cije	%r2,0,.L495
	agrk	%r12,%r11,%r9
	brctg	%r10,.L498
.L496:
	lgr	%r12,%r9
	msgr	%r12,%r8
	lg	%r3,160(%r15)
	aghik	%r2,%r8,1
	stg	%r2,0(%r3)
	agr	%r12,%r13
	cgije	%r9,0,.L495
	lgr	%r4,%r9
	lgr	%r3,%r7
	lgr	%r2,%r12
	brasl	%r14,memmove@PLT
.L495:
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
.L515:
	.cfi_restore_state
	basr	%r14,%r6
	cije	%r2,0,.L495
	agrk	%r12,%r13,%r9
	cgijlh	%r8,1,.L506
	j	.L496
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
	je	.L518
	lgr	%r10,%r5
	lgr	%r9,%r2
	lgr	%r12,%r3
	lgr	%r11,%r7
	tmll	%r7,1
	jne	.L533
.L525:
	srlg	%r7,%r11,1
.L520:
	lgr	%r3,%r12
	lgr	%r2,%r9
	lgr	%r8,%r12
	basr	%r14,%r6
	agr	%r12,%r10
	lgr	%r1,%r2
	lgr	%r3,%r12
	lgr	%r2,%r9
	cije	%r1,0,.L517
	lgr	%r8,%r12
	basr	%r14,%r6
	cije	%r2,0,.L517
	agr	%r12,%r10
	brctg	%r7,.L520
.L518:
	lghi	%r8,0
.L517:
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
.L533:
	.cfi_restore_state
	lgr	%r8,%r3
	basr	%r14,%r6
	cije	%r2,0,.L517
	agr	%r12,%r10
	cgijlh	%r7,1,.L525
	j	.L518
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
.L544:
	llc	%r3,0(%r2)
	cli	0(%r2),32
	je	.L538
	ahik	%r1,%r3,-9
	clijle	%r1,4,.L538
	cije	%r3,43,.L539
	cijlh	%r3,45,.L558
	llc	%r3,1(%r2)
	la	%r2,1(%r2)
	ahik	%r4,%r3,-48
	clijh	%r4,9,.L549
	lhi	%r12,1
.L542:
	lhi	%r4,0
.L546:
	ahik	%r5,%r3,-48
	llc	%r3,1(%r2)
	sllk	%r1,%r4,2
	la	%r2,1(%r2)
	ar	%r1,%r4
	ahik	%r0,%r3,-48
	sll	%r1,1
	srk	%r4,%r1,%r5
	clijle	%r0,9,.L546
	sr	%r5,%r1
	ltr	%r12,%r12
	locrne	%r5,%r4
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L538:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L544
.L558:
	ahik	%r5,%r3,-48
	lhi	%r12,0
	clijle	%r5,9,.L542
.L549:
	lhi	%r5,0
.L559:
	lgfr	%r2,%r5
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L539:
	.cfi_restore_state
	llc	%r3,1(%r2)
	lhi	%r12,0
	la	%r2,1(%r2)
	ahik	%r0,%r3,-48
	clijle	%r0,9,.L542
	lhi	%r5,0
	j	.L559
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
.L568:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L562
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L562
	cije	%r4,43,.L563
	cije	%r4,45,.L564
	ahik	%r3,%r4,-48
	clijh	%r3,9,.L573
	lgr	%r3,%r2
	lhi	%r11,0
.L566:
	lghi	%r5,0
.L570:
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
	clijle	%r12,9,.L570
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L562:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L568
.L564:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r2,%r4,-48
	clijh	%r2,9,.L573
	lhi	%r11,1
	j	.L566
.L563:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	lhi	%r11,0
	clijle	%r0,9,.L566
.L573:
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
.L588:
	llc	%r4,0(%r2)
	cli	0(%r2),32
	je	.L584
	ahik	%r1,%r4,-9
	clijle	%r1,4,.L584
	cije	%r4,43,.L585
	cije	%r4,45,.L586
	ahik	%r5,%r4,-48
	lgr	%r3,%r2
	clijh	%r5,9,.L595
	lhi	%r11,0
.L589:
	lghi	%r5,0
.L592:
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
	clijle	%r12,9,.L592
	sgr	%r2,%r1
	ltr	%r11,%r11
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	locgrne	%r2,%r5
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L584:
	.cfi_restore_state
	la	%r2,1(%r2)
	j	.L588
.L586:
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	lhi	%r11,1
	ahik	%r2,%r4,-48
	clijle	%r2,9,.L589
.L595:
	lghi	%r2,0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L585:
	.cfi_restore_state
	llc	%r4,1(%r2)
	la	%r3,1(%r2)
	ahik	%r0,%r4,-48
	clijh	%r0,9,.L595
	lhi	%r11,0
	j	.L589
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
	cgije	%r4,0,.L607
	lgr	%r7,%r2
	lgr	%r8,%r3
	lgr	%r9,%r5
	lgr	%r12,%r4
	j	.L610
.L617:
	je	.L606
	aghi	%r12,-1
	agrk	%r8,%r11,%r9
	sgr	%r12,%r10
	cgije	%r12,0,.L607
.L610:
	srlg	%r10,%r12,1
	lgr	%r11,%r10
	msgr	%r11,%r9
	lgr	%r2,%r7
	agr	%r11,%r8
	lgr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L617
	lgr	%r12,%r10
	cgijlh	%r12,0,.L610
.L607:
	lghi	%r11,0
.L606:
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
	lgr	%r8,%r3
	lgr	%r9,%r5
	lr	%r11,%r4
	cije	%r4,0,.L624
.L620:
	srak	%r10,%r11,1
	lgr	%r12,%r9
	msgfr	%r12,%r10
	lg	%r4,320(%r15)
	lgr	%r2,%r7
	agr	%r12,%r8
	lgr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L619
	jle	.L622
	agrk	%r8,%r12,%r9
	ahi	%r11,-1
	sra	%r11,1
	jne	.L620
.L624:
	lghi	%r12,0
.L619:
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
.L622:
	.cfi_restore_state
	cije	%r10,0,.L624
	lr	%r11,%r10
	j	.L620
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
	j	.L652
.L654:
	crje	%r1,%r3,.L653
	la	%r2,4(%r2)
.L652:
	lt	%r1,0(%r2)
	jne	.L654
	lghi	%r2,0
	br	%r14
.L653:
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
	crje	%r4,%r5,.L657
	j	.L658
.L659:
	l	%r4,0(%r1,%r2)
	aghi	%r1,4
	ly	%r5,-4(%r1,%r3)
	crjlh	%r4,%r5,.L658
.L657:
	cijlh	%r4,0,.L659
.L658:
	cr	%r4,%r5
	lhi	%r0,1
	lhi	%r2,0
	locrh	%r2,%r0
	lhi	%r3,-1
	locrnhe	%r2,%r3
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
.L667:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	aghi	%r1,4
	cijlh	%r4,0,.L667
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
	je	.L673
	lgr	%r1,%r2
.L672:
	la	%r1,4(%r1)
	lt	%r3,0(%r1)
	jne	.L672
	sgrk	%r2,%r1,%r2
	srag	%r2,%r2,2
	br	%r14
.L673:
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
	cgije	%r4,0,.L683
	aghik	%r5,%r4,-1
	lgr	%r1,%r4
	tmll	%r4,1
	jne	.L699
.L686:
	srlg	%r0,%r1,1
.L677:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L679
	la	%r5,4(%r2)
	cije	%r1,0,.L679
	l	%r4,0(%r5)
	la	%r3,4(%r3)
	lgr	%r2,%r5
	c	%r4,0(%r3)
	jne	.L679
	cije	%r4,0,.L679
	la	%r2,4(%r5)
	la	%r3,4(%r3)
	brctg	%r0,.L677
.L683:
	lhi	%r3,0
.L700:
	lgfr	%r2,%r3
	br	%r14
.L679:
	l	%r2,0(%r2)
	lhi	%r0,1
	c	%r2,0(%r3)
	lhi	%r3,0
	locrh	%r3,%r0
	lhi	%r1,-1
	locrl	%r3,%r1
	lgfr	%r2,%r3
	br	%r14
.L699:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L679
	cije	%r4,0,.L679
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgijlh	%r5,0,.L686
	lhi	%r3,0
	j	.L700
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
	cgije	%r4,0,.L706
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L713
	cgije	%r5,1,.L724
	cgije	%r5,2,.L725
	c	%r3,0(%r2)
	ber	%r14
	lgr	%r4,%r0
	la	%r2,4(%r2)
.L725:
	c	%r3,0(%r2)
	ber	%r14
	aghi	%r4,-1
	la	%r2,4(%r2)
.L724:
	c	%r3,0(%r2)
	ber	%r14
	la	%r2,4(%r2)
	cgije	%r4,1,.L706
.L713:
	srlg	%r4,%r1,2
.L703:
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
	brctg	%r4,.L703
.L706:
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
	cgije	%r4,0,.L744
	aghik	%r0,%r4,-1
	lgr	%r5,%r4
	risbg	%r1,%r4,62,128+63,0
	je	.L751
	cgije	%r1,1,.L762
	cgije	%r1,2,.L763
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L770
	lgr	%r4,%r0
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L763:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L770
	aghi	%r4,-1
	la	%r2,4(%r2)
	la	%r3,4(%r3)
.L762:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L770
	la	%r2,4(%r2)
	la	%r3,4(%r3)
	cgije	%r4,1,.L744
.L751:
	srlg	%r0,%r5,2
.L738:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L770
	l	%r1,4(%r2)
	la	%r4,4(%r3)
	lgr	%r3,%r4
	c	%r1,0(%r4)
	jne	.L770
	l	%r1,8(%r2)
	la	%r3,4(%r4)
	c	%r1,0(%r3)
	jne	.L770
	l	%r1,12(%r2)
	la	%r3,8(%r4)
	c	%r1,8(%r4)
	jne	.L770
	la	%r2,16(%r2)
	la	%r3,12(%r4)
	brctg	%r0,.L738
.L744:
	lhi	%r2,0
	lgfr	%r2,%r2
	br	%r14
.L770:
	c	%r1,0(%r3)
	lhi	%r2,0
	lhi	%r3,1
	locrh	%r2,%r3
	lhi	%r5,-1
	locrl	%r2,%r5
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
	stmg	%r12,%r15,96(%r15)
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	lay	%r15,-160(%r15)
	.cfi_def_cfa_offset 320
	lgr	%r12,%r2
	cgije	%r4,0,.L775
	sllg	%r4,%r4,2
	brasl	%r14,memcpy@PLT
.L775:
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
	cgrje	%r2,%r3,.L862
	aghik	%r1,%r4,-1
	sgrk	%r0,%r2,%r3
	sllg	%r5,%r4,2
	clgrjl	%r0,%r5,.L783
	cgije	%r4,0,.L865
	clgijle	%r1,8,.L794
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L794
	la	%r0,4(%r3)
	cgrje	%r2,%r0,.L794
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lghi	%r1,0
	srlg	%r12,%r4,1
	lghi	%r0,0
	lgr	%r5,%r12
	risbg	%r11,%r12,62,128+63,0
	je	.L830
	cgije	%r11,1,.L836
	cgije	%r11,2,.L837
	lg	%r1,0(%r3)
	lghi	%r0,1
	stg	%r1,0(%r2)
	lghi	%r1,8
.L837:
	lg	%r11,0(%r1,%r3)
	aghi	%r0,1
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
.L836:
	lg	%r11,0(%r1,%r3)
	aghi	%r0,1
	stg	%r11,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r12,%r0,.L857
.L830:
	srlg	%r12,%r5,2
.L788:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	lg	%r0,8(%r1,%r3)
	stg	%r0,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r12,.L788
.L857:
	tmll	%r4,1
	je	.L799
	risbgn	%r4,%r4,0,128+60,2
	l	%r3,0(%r4,%r3)
	st	%r3,0(%r4,%r2)
.L799:
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L783:
	cgije	%r4,0,.L862
	risbg	%r4,%r1,2,128+63,0
	sllg	%r1,%r1,2
	aghi	%r4,1
	risbg	%r5,%r4,62,128+63,0
	je	.L812
	cgije	%r5,1,.L834
	cgije	%r5,2,.L835
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
.L835:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,-4
.L834:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	aghi	%r1,-4
	cgije	%r1,-4,.L862
.L812:
	srlg	%r4,%r4,2
.L786:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ly	%r0,-4(%r1,%r3)
	sty	%r0,-4(%r1,%r2)
	ly	%r5,-8(%r1,%r3)
	sty	%r5,-8(%r1,%r2)
	ly	%r0,-12(%r1,%r3)
	sty	%r0,-12(%r1,%r2)
	aghi	%r1,-16
	brctg	%r4,.L786
	br	%r14
.L794:
	aghik	%r5,%r1,1
	lghi	%r4,0
	risbg	%r0,%r5,62,128+63,0
	je	.L821
	cgije	%r0,1,.L838
	cgije	%r0,2,.L839
	l	%r4,0(%r3)
	aghi	%r1,-1
	st	%r4,0(%r2)
	lghi	%r4,4
.L839:
	l	%r0,0(%r4,%r3)
	aghi	%r1,-1
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
.L838:
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	aghi	%r4,4
	cgije	%r1,0,.L862
.L821:
	srlg	%r5,%r5,2
.L791:
	l	%r1,0(%r4,%r3)
	st	%r1,0(%r4,%r2)
	l	%r0,4(%r4,%r3)
	st	%r0,4(%r4,%r2)
	l	%r1,8(%r4,%r3)
	st	%r1,8(%r4,%r2)
	l	%r0,12(%r4,%r3)
	st	%r0,12(%r4,%r2)
	aghi	%r4,16
	brctg	%r5,.L791
	br	%r14
.L862:
	br	%r14
.L865:
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
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r11,%r4,-1
	cgije	%r4,0,.L868
	risbgn	%r1,%r2,64-1,128+63,61+1
	clgijle	%r11,5,.L873
	cgije	%r1,0,.L874
	st	%r3,0(%r2)
	la	%r10,4(%r2)
	aghik	%r11,%r4,-2
.L870:
	sgrk	%r0,%r4,%r1
	sllg	%r4,%r1,2
	agr	%r4,%r2
	srlg	%r9,%r0,1
	lghi	%r12,0
	lgr	%r5,%r9
	risbgn	%r12,%r3,0,0+32-1,64-0-32
	lghi	%r1,0
	lr	%r12,%r3
	risbg	%r8,%r9,62,128+63,0
	je	.L895
	cgije	%r8,1,.L899
	cgije	%r8,2,.L900
	stg	%r12,0(%r1,%r4)
	lghi	%r1,1
.L900:
	sllg	%r8,%r1,3
	stg	%r12,0(%r8,%r4)
	aghi	%r1,1
.L899:
	sllg	%r8,%r1,3
	stg	%r12,0(%r8,%r4)
	aghi	%r1,1
	cgrje	%r9,%r1,.L912
.L895:
	srlg	%r5,%r5,2
.L871:
	sllg	%r9,%r1,3
	stg	%r12,0(%r9,%r4)
	stg	%r12,8(%r9,%r4)
	stg	%r12,16(%r9,%r4)
	stg	%r12,24(%r9,%r4)
	aghi	%r1,4
	brctg	%r5,.L871
.L912:
	tmll	%r0,1
	je	.L868
	nill	%r0,65534
	sllg	%r4,%r0,2
	sgr	%r11,%r0
	agr	%r4,%r10
.L869:
	st	%r3,0(%r4)
	cgije	%r11,0,.L868
	st	%r3,4(%r4)
	cgije	%r11,1,.L868
	st	%r3,8(%r4)
	cgije	%r11,2,.L868
	st	%r3,12(%r4)
	cgije	%r11,3,.L868
	st	%r3,16(%r4)
	cgije	%r11,4,.L868
	st	%r3,20(%r4)
.L868:
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
.L874:
	.cfi_restore_state
	lgr	%r10,%r2
	j	.L870
.L873:
	lgr	%r4,%r2
	j	.L869
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
	jhe	.L917
	cgije	%r4,0,.L1013
	aghik	%r0,%r4,-1
	lgr	%r1,%r4
	risbg	%r5,%r4,62,128+63,0
	je	.L956
	cgije	%r5,1,.L978
	cgijlh	%r5,2,.L1016
.L979:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	aghi	%r4,-1
.L978:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	brctg	%r4,.L956
	br	%r14
.L917:
	ber	%r14
	cgije	%r4,0,.L1013
	aghik	%r1,%r4,-1
	clgijle	%r1,14,.L927
	ogrk	%r0,%r3,%r2
	risbg	%r5,%r0,61,128+63,0
	aghi	%r5,-1
	cgijhe	%r5,0,.L927
	la	%r1,1(%r2)
	sgrk	%r0,%r3,%r1
	clgijle	%r0,6,.L927
	risbg	%r0,%r4,0,128+60,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r12,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r12,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L974
	cgije	%r12,1,.L980
	cgije	%r12,2,.L981
	lg	%r1,0(%r2)
	stg	%r1,0(%r3)
	lghi	%r1,8
.L981:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
.L980:
	lg	%r12,0(%r1,%r2)
	stg	%r12,0(%r1,%r3)
	aghi	%r1,8
	cgrje	%r1,%r0,.L1007
.L974:
	srlg	%r5,%r5,2
.L921:
	lg	%r0,0(%r1,%r2)
	stg	%r0,0(%r1,%r3)
	lg	%r12,8(%r1,%r2)
	stg	%r12,8(%r1,%r3)
	lg	%r0,16(%r1,%r2)
	stg	%r0,16(%r1,%r3)
	lg	%r12,24(%r1,%r2)
	stg	%r12,24(%r1,%r3)
	aghi	%r1,32
	brctg	%r5,.L921
.L1007:
	agr	%r3,%r1
	agr	%r2,%r1
	sgrk	%r5,%r4,%r1
	cgrje	%r4,%r1,.L916
	mvc	0(1,%r3),0(%r2)
	cgije	%r5,1,.L916
	mvc	1(1,%r3),1(%r2)
	cgije	%r5,2,.L916
	mvc	2(1,%r3),2(%r2)
	cgije	%r5,3,.L916
	mvc	3(1,%r3),3(%r2)
	cgije	%r5,4,.L916
	mvc	4(1,%r3),4(%r2)
	cgije	%r5,5,.L916
	mvc	5(1,%r3),5(%r2)
	cgije	%r5,6,.L916
	mvc	6(1,%r3),6(%r2)
.L916:
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L956:
	srlg	%r1,%r1,2
.L919:
	icy	%r0,-1(%r4,%r2)
	stcy	%r0,-1(%r4,%r3)
	icy	%r5,-2(%r4,%r2)
	stcy	%r5,-2(%r4,%r3)
	icy	%r0,-3(%r4,%r2)
	stcy	%r0,-3(%r4,%r3)
	icy	%r5,-4(%r4,%r2)
	stcy	%r5,-4(%r4,%r3)
	aghi	%r4,-4
	brctg	%r1,.L919
	br	%r14
.L1016:
	icy	%r5,-1(%r4,%r2)
	stcy	%r5,-1(%r4,%r3)
	lgr	%r4,%r0
	j	.L979
.L927:
	lghi	%r1,0
	lgr	%r5,%r4
	risbg	%r0,%r4,62,128+63,0
	je	.L965
	cgije	%r0,1,.L982
	cgije	%r0,2,.L983
	mvc	0(1,%r3),0(%r2)
	lghi	%r1,1
.L983:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
.L982:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	aghi	%r1,1
	cgrjlh	%r4,%r1,.L965
.L1013:
	br	%r14
.L965:
	srlg	%r5,%r5,2
.L924:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	aghi	%r1,4
	brctg	%r5,.L924
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
	jne	.L1047
	tmll	%r2,2
	jne	.L1048
	tmll	%r2,4
	jne	.L1049
	tmll	%r2,8
	jne	.L1050
	tmll	%r2,16
	jne	.L1051
	tmll	%r2,32
	jne	.L1052
	tmll	%r2,64
	jne	.L1053
	tmll	%r2,128
	jne	.L1054
	tmll	%r2,256
	jne	.L1055
	tmll	%r2,512
	jne	.L1056
	tmll	%r2,1024
	jne	.L1057
	tmll	%r2,2048
	jne	.L1058
	tmll	%r2,4096
	jne	.L1059
	tmll	%r2,8192
	jne	.L1060
	tmll	%r2,16384
	jne	.L1061
	tmll	%r2,32768
	jne	.L1062
	tmlh	%r2,1
	jne	.L1063
	tmlh	%r2,2
	jne	.L1064
	tmlh	%r2,4
	jne	.L1065
	tmlh	%r2,8
	jne	.L1066
	tmlh	%r2,16
	jne	.L1067
	tmlh	%r2,32
	jne	.L1068
	tmlh	%r2,64
	jne	.L1069
	tmlh	%r2,128
	jne	.L1070
	tmlh	%r2,256
	jne	.L1071
	tmlh	%r2,512
	jne	.L1072
	tmlh	%r2,1024
	jne	.L1073
	tmlh	%r2,2048
	jne	.L1074
	tmlh	%r2,4096
	jne	.L1075
	tmlh	%r2,8192
	jne	.L1076
	risbg	%r1,%r2,33,128+33,0
	jne	.L1077
	cgijlh	%r2,0,.L1081
.L1046:
	lgfr	%r2,%r1
	br	%r14
.L1047:
	lhi	%r1,1
	j	.L1046
.L1048:
	lhi	%r1,2
	j	.L1046
.L1059:
	lhi	%r1,13
	j	.L1046
.L1075:
	lhi	%r1,29
	j	.L1046
.L1049:
	lhi	%r1,3
	j	.L1046
.L1050:
	lhi	%r1,4
	j	.L1046
.L1051:
	lhi	%r1,5
	j	.L1046
.L1052:
	lhi	%r1,6
	j	.L1046
.L1053:
	lhi	%r1,7
	j	.L1046
.L1054:
	lhi	%r1,8
	j	.L1046
.L1055:
	lhi	%r1,9
	j	.L1046
.L1056:
	lhi	%r1,10
	j	.L1046
.L1057:
	lhi	%r1,11
	j	.L1046
.L1058:
	lhi	%r1,12
	j	.L1046
.L1060:
	lhi	%r1,14
	j	.L1046
.L1061:
	lhi	%r1,15
	j	.L1046
.L1062:
	lhi	%r1,16
	j	.L1046
.L1063:
	lhi	%r1,17
	j	.L1046
.L1064:
	lhi	%r1,18
	j	.L1046
.L1065:
	lhi	%r1,19
	j	.L1046
.L1066:
	lhi	%r1,20
	j	.L1046
.L1067:
	lhi	%r1,21
	j	.L1046
.L1068:
	lhi	%r1,22
	j	.L1046
.L1069:
	lhi	%r1,23
	j	.L1046
.L1070:
	lhi	%r1,24
	j	.L1046
.L1071:
	lhi	%r1,25
	j	.L1046
.L1072:
	lhi	%r1,26
	j	.L1046
.L1073:
	lhi	%r1,27
	j	.L1046
.L1074:
	lhi	%r1,28
	j	.L1046
.L1076:
	lhi	%r1,30
	j	.L1046
.L1081:
	lhi	%r1,32
	j	.L1046
.L1077:
	lhi	%r1,31
	j	.L1046
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
	cgije	%r2,0,.L1086
	risbg	%r3,%r2,63,128+63,0
	jne	.L1084
	lhi	%r3,1
.L1085:
	ahi	%r3,1
	srak	%r1,%r2,1
	lgfr	%r2,%r1
	tmll	%r1,1
	je	.L1085
.L1084:
	lgfr	%r2,%r3
	br	%r14
.L1086:
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
	larl	%r5,.L1095
	keb	%f0,.L1096-.L1095(%r5)
	jl	.L1093
	keb	%f0,.L1097-.L1095(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1093:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1095:
.L1097:
	.long	2139095039
.L1096:
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
	larl	%r5,.L1103
	kdb	%f0,.L1104-.L1103(%r5)
	jl	.L1101
	kdb	%f0,.L1105-.L1103(%r5)
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1101:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1103:
.L1105:
	.long	2146435071
	.long	-1
.L1104:
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
	larl	%r5,.L1111
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f4,.L1112-.L1111(%r5)
	ld	%f6,.L1112-.L1111+8(%r5)
	kxbr	%f0,%f4
	jl	.L1109
	ld	%f4,.L1113-.L1111(%r5)
	ld	%f6,.L1113-.L1111+8(%r5)
	lhi	%r1,1
	kxbr	%f0,%f4
	lhi	%r2,0
	locrh	%r2,%r1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
.L1109:
	lhi	%r2,1
	risbg	%r2,%r2,63,128+63,0
	br	%r14
	.section	.rodata
	.align	8
.L1111:
.L1113:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1112:
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
	larl	%r5,.L1132
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1130
	le	%f4,.L1133-.L1132(%r5)
.L1118:
	tmll	%r2,1
	je	.L1119
.L1120:
	meebr	%f0,%f4
.L1119:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1117
	meebr	%f4,%f4
	tmll	%r2,1
	jne	.L1120
.L1131:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	meebr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1120
	j	.L1131
.L1117:
	br	%r14
.L1130:
	le	%f4,.L1134-.L1132(%r5)
	j	.L1118
	.section	.rodata
	.align	8
.L1132:
.L1134:
	.long	1056964608
.L1133:
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
	larl	%r5,.L1151
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	cijl	%r2,0,.L1149
	ld	%f4,.L1152-.L1151(%r5)
.L1137:
	tmll	%r2,1
	je	.L1138
.L1139:
	mdbr	%f0,%f4
.L1138:
	srlk	%r1,%r2,31
	ar	%r1,%r2
	sra	%r1,1
	lgfr	%r2,%r1
	cije	%r1,0,.L1136
	mdbr	%f4,%f4
	tmll	%r2,1
	jne	.L1139
.L1150:
	srlk	%r0,%r2,31
	ar	%r0,%r2
	sra	%r0,1
	mdbr	%f4,%f4
	lgfr	%r2,%r0
	tmll	%r2,1
	jne	.L1139
	j	.L1150
.L1136:
	br	%r14
.L1149:
	ld	%f4,.L1153-.L1151(%r5)
	j	.L1137
	.section	.rodata
	.align	8
.L1151:
.L1153:
	.long	1071644672
	.long	0
.L1152:
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
	larl	%r5,.L1170
	ld	%f4,0(%r3)
	ld	%f6,8(%r3)
	cxbr	%f4,%f4
	jo	.L1155
	lxr	%f0,%f4
	axbr	%f0,%f4
	cxbr	%f0,%f4
	je	.L1155
	cijl	%r4,0,.L1168
	ld	%f0,.L1171-.L1170(%r5)
	ld	%f2,.L1171-.L1170+8(%r5)
.L1156:
	tmll	%r4,1
	je	.L1157
.L1158:
	mxbr	%f4,%f0
.L1157:
	srlk	%r1,%r4,31
	ar	%r1,%r4
	sra	%r1,1
	lgfr	%r4,%r1
	cije	%r1,0,.L1155
	mxbr	%f0,%f0
	tmll	%r4,1
	jne	.L1158
.L1169:
	mxbr	%f0,%f0
	srlk	%r0,%r4,31
	ar	%r0,%r4
	sra	%r0,1
	lgfr	%r4,%r0
	tmll	%r4,1
	jne	.L1158
	j	.L1169
.L1155:
	std	%f4,0(%r2)
	std	%f6,8(%r2)
	br	%r14
.L1168:
	ld	%f0,.L1172-.L1170(%r5)
	ld	%f2,.L1172-.L1170+8(%r5)
	j	.L1156
	.section	.rodata
	.align	8
.L1170:
.L1172:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1171:
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
	cgije	%r4,0,.L1237
	ldgr	%f0,%r12
	.cfi_register 12, 16
	aghik	%r1,%r4,-1
	clgijle	%r1,14,.L1175
	ogrk	%r0,%r2,%r3
	tmll	%r0,7
	jne	.L1175
	risbg	%r0,%r4,0,128+60,0
	aghik	%r5,%r0,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r12,%r5,62,128+63,0
	je	.L1210
	cgije	%r12,1,.L1214
	cgije	%r12,2,.L1215
	xc	0(8,%r2),0(%r3)
	lghi	%r1,8
.L1215:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
.L1214:
	lg	%r12,0(%r1,%r2)
	xg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r0,.L1233
.L1210:
	srlg	%r5,%r5,2
.L1176:
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
	brctg	%r5,.L1176
.L1233:
	agr	%r3,%r1
	agrk	%r5,%r2,%r1
	sgrk	%r0,%r4,%r1
	cgrje	%r4,%r1,.L1174
	xc	0(1,%r5),0(%r3)
	cgije	%r0,1,.L1174
	xc	1(1,%r5),1(%r3)
	cgije	%r0,2,.L1174
	xc	2(1,%r5),2(%r3)
	cgije	%r0,3,.L1174
	xc	3(1,%r5),3(%r3)
	cgije	%r0,4,.L1174
	xc	4(1,%r5),4(%r3)
	cgije	%r0,5,.L1174
	xc	5(1,%r5),5(%r3)
	cgije	%r0,6,.L1174
	xc	6(1,%r5),6(%r3)
.L1174:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1175:
	.cfi_restore_state
	la	%r0,0(%r4,%r3)
	lgr	%r1,%r2
	risbg	%r12,%r4,62,128+63,0
	je	.L1201
	cgije	%r12,1,.L1216
	cgijlh	%r12,2,.L1240
.L1217:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
.L1216:
	llgc	%r5,0(%r1)
	llgc	%r12,0(%r3)
	la	%r1,1(%r1)
	xr	%r5,%r12
	stcy	%r5,-1(%r1)
	la	%r3,1(%r3)
	cgrje	%r0,%r3,.L1174
.L1201:
	srlg	%r4,%r4,2
.L1178:
	xc	0(3,%r1),0(%r3)
	la	%r1,4(%r1)
	la	%r3,4(%r3)
	llgc	%r5,-1(%r1)
	llgc	%r0,-1(%r3)
	xr	%r5,%r0
	stcy	%r5,-1(%r1)
	brctg	%r4,.L1178
	j	.L1174
.L1237:
	.cfi_restore 12
	br	%r14
.L1240:
	.cfi_register 12, 16
	lgr	%r5,%r3
	la	%r1,1(%r2)
	la	%r3,1(%r3)
	xc	0(1,%r2),0(%r5)
	j	.L1217
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
	je	.L1243
.L1244:
	la	%r1,1(%r1)
	cli	0(%r1),0
	jne	.L1244
.L1243:
	cgije	%r4,0,.L1246
	aghik	%r0,%r4,-1
	tmll	%r4,1
	jne	.L1265
.L1255:
	srlg	%r4,%r4,1
.L1245:
	llgc	%r0,0(%r3)
	stc	%r0,0(%r1)
	cgije	%r0,0,.L1266
	llgc	%r5,1(%r3)
	la	%r3,2(%r3)
	stc	%r5,1(%r1)
	cgije	%r5,0,.L1267
	la	%r1,2(%r1)
	brctg	%r4,.L1245
.L1246:
	mvi	0(%r1),0
.L1248:
	br	%r14
.L1265:
	llgc	%r5,0(%r3)
	stc	%r5,0(%r1)
	cgije	%r5,0,.L1248
	la	%r3,1(%r3)
	la	%r1,1(%r1)
	cgijlh	%r0,0,.L1255
	mvi	0(%r1),0
	br	%r14
.L1266:
	br	%r14
.L1267:
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
	cgije	%r3,0,.L1269
	lgr	%r4,%r3
	risbg	%r5,%r3,62,128+63,0
	je	.L1281
	cgije	%r5,1,.L1292
	cgije	%r5,2,.L1293
	cli	0(%r1),0
	ber	%r14
	lghi	%r2,1
.L1293:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
.L1292:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	aghi	%r2,1
	cgrje	%r3,%r2,.L1269
.L1281:
	srlg	%r0,%r4,2
.L1270:
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
	brctg	%r0,.L1270
	br	%r14
.L1269:
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
	je	.L1305
.L1309:
	lgr	%r1,%r3
	j	.L1304
.L1303:
	crje	%r4,%r5,.L1302
.L1304:
	llc	%r4,0(%r1)
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1303
	la	%r2,1(%r2)
	llc	%r5,0(%r2)
	cli	0(%r2),0
	jne	.L1309
.L1305:
	lghi	%r2,0
.L1302:
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
.L1313:
	llc	%r4,0(%r1)
	cr	%r4,%r3
	locgre	%r2,%r1
	la	%r1,1(%r1)
	cijlh	%r4,0,.L1313
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
	ldgr	%f1,%r8
	.cfi_register 8, 20
	ldgr	%f6,%r9
	.cfi_register 9, 19
	ic	%r8,0(%r3)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	tml	%r8,255
	je	.L1316
	llcr	%r10,%r8
	lgr	%r9,%r3
.L1318:
	la	%r9,1(%r9)
	cli	0(%r9),0
	jne	.L1318
	slgr	%r9,%r3
	jhe	.L1316
	aghi	%r9,-1
	llcr	%r8,%r8
	j	.L1326
.L1338:
	la	%r2,1(%r2)
	cije	%r1,0,.L1337
.L1326:
	llc	%r1,0(%r2)
	crjlh	%r1,%r10,.L1338
	lgr	%r5,%r3
	lgr	%r4,%r2
	lr	%r12,%r8
	aghik	%r0,%r9,1
.L1320:
	la	%r11,1(%r5)
	brctg	%r0,.L1334
.L1322:
	crje	%r1,%r12,.L1316
.L1323:
	la	%r2,1(%r2)
	j	.L1326
.L1334:
	crjlh	%r1,%r12,.L1323
	la	%r4,1(%r4)
	llc	%r12,1(%r5)
	llc	%r1,0(%r4)
	cli	0(%r4),0
	je	.L1322
	cli	1(%r5),0
	je	.L1323
	lgr	%r5,%r11
	j	.L1320
.L1337:
	lghi	%r2,0
.L1316:
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
	jl	.L1350
	jnh	.L1344
	lzdr	%f6
	kdbr	%f2,%f6
	jl	.L1343
.L1344:
	br	%r14
.L1350:
	kdbr	%f2,%f4
	jnh	.L1344
.L1343:
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
	cgije	%r5,0,.L1393
	clgrjl	%r3,%r5,.L1361
	sgr	%r3,%r5
	algr	%r3,%r2
	jnle	.L1361
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f6,%r9
	.cfi_register 9, 19
	llc	%r11,0(%r4)
	ldgr	%f4,%r10
	.cfi_register 10, 18
	ldgr	%f0,%r12
	.cfi_register 12, 16
	j	.L1358
.L1362:
	lgr	%r2,%r12
.L1354:
	clgrjl	%r3,%r2,.L1363
.L1358:
	llc	%r1,0(%r2)
	la	%r12,1(%r2)
	crjlh	%r1,%r11,.L1362
	cgije	%r5,1,.L1352
.L1357:
	aghik	%r0,%r5,-1
	lghi	%r1,1
	risbg	%r10,%r0,62,128+63,0
	je	.L1373
	cgije	%r10,1,.L1383
	cgijlh	%r10,2,.L1396
.L1384:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1390
	aghi	%r1,1
.L1383:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1390
	aghi	%r1,1
	cgrje	%r1,%r5,.L1352
.L1373:
	srlg	%r0,%r0,2
.L1355:
	llgc	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1390
	llgc	%r9,1(%r1,%r4)
	la	%r10,1(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1390
	llgc	%r9,2(%r1,%r4)
	la	%r10,2(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1390
	llgc	%r9,3(%r1,%r4)
	la	%r10,3(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1390
	aghi	%r1,4
	brctg	%r0,.L1355
.L1352:
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
.L1396:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lghi	%r1,2
	je	.L1384
.L1390:
	clgrjl	%r3,%r12,.L1363
	llc	%r1,0(%r12)
	la	%r2,1(%r12)
	crjlh	%r11,%r1,.L1354
	lgr	%r0,%r12
	lgr	%r12,%r2
	lgr	%r2,%r0
	j	.L1357
.L1363:
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
.L1361:
	lghi	%r2,0
	br	%r14
.L1393:
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
	cgije	%r4,0,.L1399
	brasl	%r14,memmove@PLT
.L1399:
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
	larl	%r5,.L1431
	lzdr	%f2
	kdbr	%f0,%f2
	jl	.L1428
	kdb	%f0,.L1432-.L1431(%r5)
	jnhe	.L1429
	lhi	%r3,0
.L1408:
	lhi	%r1,0
.L1414:
	ahi	%r1,1
	mdb	%f0,.L1433-.L1431(%r5)
	kdb	%f0,.L1432-.L1431(%r5)
	jhe	.L1414
.L1415:
	st	%r1,0(%r2)
	cije	%r3,0,.L1405
	lcdbr	%f0,%f0
.L1405:
	br	%r14
.L1429:
	kdb	%f0,.L1433-.L1431(%r5)
	jnl	.L1411
	lzdr	%f4
	cdbr	%f0,%f4
	jne	.L1420
.L1411:
	mvhi	0(%r2),0
	br	%r14
.L1428:
	lcdbr	%f6,%f0
	kdb	%f0,.L1434-.L1431(%r5)
	jnle	.L1430
	ldr	%f0,%f6
	lhi	%r3,1
	j	.L1408
.L1430:
	kdb	%f0,.L1435-.L1431(%r5)
	jnh	.L1411
	lhi	%r3,1
.L1409:
	ldr	%f0,%f6
	lhi	%r1,0
.L1416:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1433-.L1431(%r5)
	jl	.L1416
	j	.L1415
.L1420:
	ldr	%f6,%f0
	lhi	%r3,0
	j	.L1409
	.section	.rodata
	.align	8
.L1431:
.L1435:
	.long	-1075838976
	.long	0
.L1434:
	.long	-1074790400
	.long	0
.L1433:
	.long	1071644672
	.long	0
.L1432:
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
	cgije	%r4,0,.L1439
.L1438:
	risbg	%r1,%r4,63,128+63,0
	srlg	%r4,%r4,1
	lcgr	%r0,%r1
	ngr	%r0,%r3
	sllg	%r3,%r3,1
	agr	%r2,%r0
	cgijlh	%r4,0,.L1438
	br	%r14
.L1439:
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
	clrjhe	%r3,%r2,.L1472
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r0,32
	lhi	%r1,1
	lhi	%r12,8
.L1443:
	cijl	%r3,0,.L1444
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1445
	cijl	%r3,0,.L1444
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1445
	cijl	%r3,0,.L1444
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1445
	cijl	%r3,0,.L1444
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L1445
	ahi	%r0,-4
	brct	%r12,.L1443
.L1446:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1445:
	.cfi_restore_state
	cije	%r1,0,.L1452
.L1444:
	lhi	%r0,0
.L1449:
	clrjl	%r2,%r3,.L1448
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L1448:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1449
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1472:
	lhi	%r1,1
	lhi	%r0,0
.L1467:
	clrjl	%r2,%r3,.L1469
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L1469:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L1467
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L1452:
	.cfi_register 12, 16
	lhi	%r0,0
	j	.L1446
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
	cgije	%r2,0,.L1485
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	srlg	%r5,%r2,1
	nr	%r1,%r3
	sllk	%r0,%r3,1
	cgije	%r5,0,.L1576
	nilf	%r4,1
	ldgr	%f0,%r12
	.cfi_register 12, 16
	srlk	%r5,%r2,2
	lcr	%r12,%r4
	srlg	%r4,%r2,2
	nr	%r12,%r0
	sllk	%r0,%r3,2
	ar	%r1,%r12
	cgije	%r4,0,.L1483
	risbg	%r12,%r5,63,128+63,0
	srlk	%r5,%r2,3
	lcr	%r4,%r12
	sllk	%r12,%r3,3
	nr	%r4,%r0
	srlg	%r0,%r2,3
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,4
	lcr	%r4,%r4
	srlk	%r5,%r2,4
	nr	%r4,%r12
	sllk	%r12,%r3,4
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,5
	lcr	%r4,%r4
	srlk	%r5,%r2,5
	nr	%r4,%r12
	sllk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,6
	lcr	%r4,%r4
	srlk	%r5,%r2,6
	nr	%r4,%r12
	sllk	%r12,%r3,6
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,7
	lcr	%r4,%r4
	srlk	%r5,%r2,7
	nr	%r4,%r12
	sllk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,8
	lcr	%r4,%r4
	srlk	%r5,%r2,8
	nr	%r4,%r12
	sllk	%r12,%r3,8
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,9
	lcr	%r4,%r4
	srlk	%r5,%r2,9
	nr	%r4,%r12
	sllk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,10
	lcr	%r4,%r4
	srlk	%r5,%r2,10
	nr	%r4,%r12
	sllk	%r12,%r3,10
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,11
	lcr	%r4,%r4
	srlk	%r5,%r2,11
	nr	%r4,%r12
	sllk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,12
	lcr	%r4,%r4
	srlk	%r5,%r2,12
	nr	%r4,%r12
	sllk	%r12,%r3,12
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,13
	lcr	%r4,%r4
	srlk	%r5,%r2,13
	nr	%r4,%r12
	sllk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,14
	lcr	%r4,%r4
	srlk	%r5,%r2,14
	nr	%r4,%r12
	sllk	%r12,%r3,14
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,15
	lcr	%r4,%r4
	srlk	%r5,%r2,15
	nr	%r4,%r12
	sllk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,16
	lcr	%r4,%r4
	srlk	%r5,%r2,16
	nr	%r4,%r12
	sllk	%r12,%r3,16
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,17
	lcr	%r4,%r4
	srlk	%r5,%r2,17
	nr	%r4,%r12
	sllk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,18
	lcr	%r4,%r4
	srlk	%r5,%r2,18
	nr	%r4,%r12
	sllk	%r12,%r3,18
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,19
	lcr	%r4,%r4
	srlk	%r5,%r2,19
	nr	%r4,%r12
	sllk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,20
	lcr	%r4,%r4
	srlk	%r5,%r2,20
	nr	%r4,%r12
	sllk	%r12,%r3,20
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,21
	lcr	%r4,%r4
	srlk	%r5,%r2,21
	nr	%r4,%r12
	sllk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,22
	lcr	%r4,%r4
	srlk	%r5,%r2,22
	nr	%r4,%r12
	sllk	%r12,%r3,22
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,23
	lcr	%r4,%r4
	srlk	%r5,%r2,23
	nr	%r4,%r12
	sllk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,24
	lcr	%r4,%r4
	srlk	%r5,%r2,24
	nr	%r4,%r12
	sllk	%r12,%r3,24
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,25
	lcr	%r4,%r4
	srlk	%r5,%r2,25
	nr	%r4,%r12
	sllk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,26
	lcr	%r4,%r4
	srlk	%r5,%r2,26
	nr	%r4,%r12
	sllk	%r12,%r3,26
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,27
	lcr	%r4,%r4
	srlk	%r5,%r2,27
	nr	%r4,%r12
	sllk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	risbg	%r4,%r5,63,128+63,0
	srlg	%r0,%r2,28
	lcr	%r4,%r4
	srlk	%r5,%r2,28
	nr	%r4,%r12
	sllk	%r12,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L1483
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	srlg	%r0,%r2,29
	nr	%r5,%r12
	sllk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r0,0,.L1483
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
.L1483:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L1485:
	lhi	%r1,0
.L1576:
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
	clgrjl	%r2,%r3,.L1584
	agrk	%r5,%r3,%r4
	clgrjle	%r2,%r5,.L1685
.L1584:
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
	cije	%r1,0,.L1686
	risbgn	%r12,%r1,32,128+60,3
	aghik	%r8,%r12,-8
	lghi	%r1,0
	srlg	%r9,%r8,3
	aghi	%r9,1
	risbg	%r11,%r9,62,128+63,0
	je	.L1632
	cgije	%r11,1,.L1648
	cgije	%r11,2,.L1649
	lg	%r10,0(%r3)
	lghi	%r1,8
	stg	%r10,0(%r2)
.L1649:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L1648:
	lg	%r8,0(%r1,%r3)
	stg	%r8,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r12,%r1,.L1677
.L1632:
	srlg	%r9,%r9,2
.L1587:
	lg	%r12,0(%r1,%r3)
	stg	%r12,0(%r1,%r2)
	lg	%r11,8(%r1,%r3)
	stg	%r11,8(%r1,%r2)
	lg	%r10,16(%r1,%r3)
	stg	%r10,16(%r1,%r2)
	lg	%r5,24(%r1,%r3)
	stg	%r5,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r9,.L1587
.L1677:
	clrjhe	%r0,%r4,.L1580
	srk	%r10,%r4,%r0
	llgfr	%r8,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,14,.L1589
	lgr	%r12,%r2
	la	%r9,1(%r8,%r3)
	algfr	%r12,%r0
	lgr	%r11,%r3
	sgrk	%r5,%r12,%r9
	algfr	%r11,%r0
	clgijle	%r5,6,.L1589
	ogrk	%r1,%r11,%r12
	risbg	%r9,%r1,61,128+63,0
	aghi	%r9,-1
	cgijhe	%r9,0,.L1589
	risbg	%r9,%r10,32,128+60,0
	aghik	%r8,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r8,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L1623
	cgije	%r8,1,.L1650
	cgijlh	%r8,2,.L1687
.L1651:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L1650:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r1,%r9,.L1676
.L1623:
	srlg	%r5,%r5,2
.L1590:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L1590
.L1676:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1580
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L1580
	llgfr	%r1,%r11
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r9,%r12,2
	clrjhe	%r9,%r4,.L1580
	llgfr	%r8,%r9
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L1580
	llgfr	%r11,%r0
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r5,%r12,4
	clrjhe	%r5,%r4,.L1580
	llgfr	%r9,%r5
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L1580
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahi	%r12,6
	clrjhe	%r12,%r4,.L1580
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1580:
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
.L1685:
	ahik	%r1,%r4,-1
	llgfr	%r1,%r1
	cgije	%r4,0,.L1683
	aghik	%r4,%r1,1
	risbg	%r0,%r4,62,128+63,0
	je	.L1641
	cgije	%r0,1,.L1646
	cgije	%r0,2,.L1647
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
.L1647:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	aghi	%r1,-1
.L1646:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	aghi	%r1,-1
	cgije	%r1,-1,.L1683
.L1641:
	srlg	%r4,%r4,2
.L1594:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	icy	%r5,-1(%r1,%r3)
	stcy	%r5,-1(%r1,%r2)
	icy	%r0,-2(%r1,%r3)
	stcy	%r0,-2(%r1,%r2)
	icy	%r5,-3(%r1,%r3)
	stcy	%r5,-3(%r1,%r2)
	aghi	%r1,-4
	brctg	%r4,.L1594
	br	%r14
.L1683:
	br	%r14
.L1687:
	.cfi_register 8, 20
	.cfi_register 9, 19
	.cfi_register 10, 18
	.cfi_register 11, 17
	.cfi_register 12, 16
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L1651
.L1686:
	llgfr	%r8,%r0
	cgije	%r4,0,.L1580
.L1589:
	ic	%r12,0(%r8,%r3)
	stc	%r12,0(%r8,%r2)
	lghi	%r1,-1
	aghik	%r11,%r8,1
	xgrk	%r9,%r8,%r1
	ar	%r9,%r4
	risbg	%r5,%r9,62,128+63,0
	clrjhe	%r11,%r4,.L1580
	cije	%r5,0,.L1614
	cije	%r5,1,.L1653
	cijlh	%r5,2,.L1688
.L1654:
	ic	%r8,0(%r11,%r3)
	stc	%r8,0(%r11,%r2)
	aghi	%r11,1
.L1653:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,1
	clrjhe	%r11,%r4,.L1580
.L1614:
	srlk	%r4,%r9,2
.L1592:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	ic	%r1,1(%r11,%r3)
	stc	%r1,1(%r11,%r2)
	ic	%r9,2(%r11,%r3)
	stc	%r9,2(%r11,%r2)
	ic	%r5,3(%r11,%r3)
	stc	%r5,3(%r11,%r2)
	aghi	%r11,4
	brct	%r4,.L1592
	j	.L1580
.L1688:
	ic	%r10,0(%r11,%r3)
	stc	%r10,0(%r11,%r2)
	aghik	%r11,%r8,2
	j	.L1654
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
	clgrjl	%r2,%r3,.L1694
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L1768
.L1694:
	cije	%r12,0,.L1693
	ahik	%r10,%r12,-1
	clijle	%r10,6,.L1697
	ogrk	%r1,%r3,%r2
	risbg	%r0,%r1,61,128+63,0
	aghi	%r0,-1
	cgijhe	%r0,0,.L1697
	la	%r5,2(%r3)
	sgrk	%r11,%r2,%r5
	clgijle	%r11,4,.L1697
	risbg	%r11,%r4,32,128+60,0
	aghik	%r10,%r11,-8
	srlk	%r0,%r4,3
	srlg	%r5,%r10,3
	lghi	%r1,0
	aghi	%r5,1
	risbg	%r10,%r5,62,128+63,0
	je	.L1728
	cgije	%r10,1,.L1744
	cgijlh	%r10,2,.L1769
.L1745:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
.L1744:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r1,%r11,.L1763
.L1728:
	srlg	%r5,%r5,2
.L1698:
	lg	%r11,0(%r1,%r3)
	stg	%r11,0(%r1,%r2)
	lg	%r10,8(%r1,%r3)
	stg	%r10,8(%r1,%r2)
	lg	%r11,16(%r1,%r3)
	stg	%r11,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r5,.L1698
.L1763:
	sllk	%r1,%r0,2
	crje	%r12,%r1,.L1693
	risbgn	%r5,%r1,32,128+60,1
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahik	%r11,%r1,1
	clrjle	%r12,%r11,.L1693
	risbgn	%r10,%r11,31,128+62,1
	lh	%r5,0(%r10,%r3)
	sth	%r5,0(%r10,%r2)
	ahi	%r1,2
	clrjle	%r12,%r1,.L1693
	risbgn	%r12,%r1,31,128+61,1
	lh	%r1,0(%r12,%r3)
	sth	%r1,0(%r12,%r2)
.L1693:
	tmll	%r4,1
	je	.L1690
	ahi	%r4,-1
	llgfr	%r4,%r4
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1690:
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	lgdr	%r10,%f4
	.cfi_restore 10
	br	%r14
.L1768:
	.cfi_restore_state
	ahik	%r0,%r4,-1
	llgfr	%r10,%r0
	cgije	%r4,0,.L1690
	aghik	%r4,%r10,1
	risbg	%r5,%r4,62,128+63,0
	je	.L1737
	cgije	%r5,1,.L1742
	cgije	%r5,2,.L1743
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	aghi	%r10,-1
.L1743:
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	aghi	%r10,-1
.L1742:
	ic	%r1,0(%r10,%r3)
	stc	%r1,0(%r10,%r2)
	aghi	%r10,-1
	cgije	%r10,-1,.L1690
.L1737:
	srlg	%r0,%r4,2
.L1703:
	ic	%r4,0(%r10,%r3)
	stc	%r4,0(%r10,%r2)
	icy	%r5,-1(%r10,%r3)
	stcy	%r5,-1(%r10,%r2)
	icy	%r11,-2(%r10,%r3)
	stcy	%r11,-2(%r10,%r2)
	icy	%r12,-3(%r10,%r3)
	stcy	%r12,-3(%r10,%r2)
	aghi	%r10,-4
	brctg	%r0,.L1703
	j	.L1690
.L1769:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L1745
.L1697:
	risbgn	%r11,%r12,32,128+62,1
	aghik	%r0,%r11,-2
	lghi	%r1,0
	srlg	%r10,%r0,1
	aghi	%r10,1
	risbg	%r5,%r10,62,128+63,0
	je	.L1719
	cgije	%r5,1,.L1746
	cgijlh	%r5,2,.L1770
.L1747:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	aghi	%r1,2
.L1746:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	aghi	%r1,2
	cgrje	%r11,%r1,.L1693
.L1719:
	srlg	%r11,%r10,2
.L1700:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	aghi	%r1,8
	brctg	%r11,.L1700
	j	.L1693
.L1770:
	lh	%r12,0(%r3)
	lghi	%r1,2
	sth	%r12,0(%r2)
	j	.L1747
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
	clgrjl	%r2,%r3,.L1777
	agrk	%r1,%r3,%r4
	clgrjle	%r2,%r1,.L1898
.L1777:
	cije	%r12,0,.L1899
	ahik	%r8,%r12,-1
	clijle	%r8,8,.L1779
	ogrk	%r10,%r2,%r3
	risbg	%r11,%r10,61,128+63,0
	aghi	%r11,-1
	cgijhe	%r11,0,.L1779
	la	%r1,4(%r3)
	cgrje	%r2,%r1,.L1779
	risbg	%r8,%r4,32,128+60,0
	aghik	%r5,%r8,-8
	srlk	%r11,%r4,3
	srlg	%r10,%r5,3
	lghi	%r1,0
	aghi	%r10,1
	risbg	%r9,%r10,62,128+63,0
	je	.L1840
	cgije	%r9,1,.L1856
	cgijlh	%r9,2,.L1900
.L1857:
	lg	%r5,0(%r1,%r3)
	stg	%r5,0(%r1,%r2)
	aghi	%r1,8
.L1856:
	lg	%r9,0(%r1,%r3)
	stg	%r9,0(%r1,%r2)
	aghi	%r1,8
	cgrje	%r8,%r1,.L1891
.L1840:
	srlg	%r8,%r10,2
.L1780:
	lg	%r10,0(%r1,%r3)
	stg	%r10,0(%r1,%r2)
	lg	%r5,8(%r1,%r3)
	stg	%r5,8(%r1,%r2)
	lg	%r9,16(%r1,%r3)
	stg	%r9,16(%r1,%r2)
	lg	%r10,24(%r1,%r3)
	stg	%r10,24(%r1,%r2)
	aghi	%r1,32
	brctg	%r8,.L1780
.L1891:
	sll	%r11,1
	crje	%r12,%r11,.L1783
	risbgn	%r12,%r11,32,128+60,2
	l	%r1,0(%r12,%r3)
	st	%r1,0(%r12,%r2)
.L1783:
	clrjhe	%r0,%r4,.L1772
	srk	%r10,%r4,%r0
	llgfr	%r5,%r0
	ahik	%r1,%r10,-1
	clijle	%r1,14,.L1775
	lgr	%r12,%r2
	la	%r8,1(%r5,%r3)
	algfr	%r12,%r0
	lgr	%r11,%r3
	sgrk	%r9,%r12,%r8
	algfr	%r11,%r0
	clgijle	%r9,6,.L1775
	ogrk	%r1,%r11,%r12
	risbg	%r8,%r1,61,128+63,0
	aghi	%r8,-1
	cgijhe	%r8,0,.L1775
	risbg	%r9,%r10,32,128+60,0
	aghik	%r5,%r9,-8
	lghi	%r1,0
	srlg	%r5,%r5,3
	aghi	%r5,1
	risbg	%r8,%r5,62,128+63,0
	je	.L1822
	cgije	%r8,1,.L1860
	cgijlh	%r8,2,.L1901
.L1861:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
.L1860:
	lg	%r8,0(%r1,%r11)
	stg	%r8,0(%r1,%r12)
	aghi	%r1,8
	cgrje	%r9,%r1,.L1890
.L1822:
	srlg	%r5,%r5,2
.L1784:
	lg	%r9,0(%r1,%r11)
	stg	%r9,0(%r1,%r12)
	lg	%r8,8(%r1,%r11)
	stg	%r8,8(%r1,%r12)
	lg	%r9,16(%r1,%r11)
	stg	%r9,16(%r1,%r12)
	lg	%r8,24(%r1,%r11)
	stg	%r8,24(%r1,%r12)
	aghi	%r1,32
	brctg	%r5,.L1784
.L1890:
	risbg	%r12,%r10,32,128+60,0
	ar	%r12,%r0
	tmll	%r10,7
	je	.L1772
	llgfr	%r10,%r12
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahik	%r11,%r12,1
	clrjhe	%r11,%r4,.L1772
	llgfr	%r1,%r11
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahik	%r9,%r12,2
	clrjhe	%r9,%r4,.L1772
	llgfr	%r8,%r9
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	ahik	%r0,%r12,3
	clrjhe	%r0,%r4,.L1772
	llgfr	%r11,%r0
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahik	%r5,%r12,4
	clrjhe	%r5,%r4,.L1772
	llgfr	%r9,%r5
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	ahik	%r10,%r12,5
	clrjhe	%r10,%r4,.L1772
	llgfr	%r11,%r10
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahi	%r12,6
	clrjhe	%r12,%r4,.L1772
	llgfr	%r4,%r12
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1772:
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
.L1898:
	.cfi_restore_state
	ahik	%r5,%r4,-1
	llgfr	%r8,%r5
	cgije	%r4,0,.L1772
	aghik	%r4,%r8,1
	risbg	%r9,%r4,62,128+63,0
	je	.L1849
	cgije	%r9,1,.L1854
	cgije	%r9,2,.L1855
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	aghi	%r8,-1
.L1855:
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	aghi	%r8,-1
.L1854:
	ic	%r12,0(%r8,%r3)
	stc	%r12,0(%r8,%r2)
	aghi	%r8,-1
	cgije	%r8,-1,.L1772
.L1849:
	srlg	%r0,%r4,2
.L1788:
	ic	%r1,0(%r8,%r3)
	stc	%r1,0(%r8,%r2)
	icy	%r5,-1(%r8,%r3)
	stcy	%r5,-1(%r8,%r2)
	icy	%r4,-2(%r8,%r3)
	stcy	%r4,-2(%r8,%r2)
	icy	%r9,-3(%r8,%r3)
	stcy	%r9,-3(%r8,%r2)
	aghi	%r8,-4
	brctg	%r0,.L1788
	j	.L1772
.L1900:
	lg	%r1,0(%r3)
	stg	%r1,0(%r2)
	lghi	%r1,8
	j	.L1857
.L1901:
	lg	%r1,0(%r11)
	stg	%r1,0(%r12)
	lghi	%r1,8
	j	.L1861
.L1899:
	llgfr	%r5,%r0
	cgije	%r4,0,.L1772
.L1775:
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	lghi	%r1,-1
	aghik	%r11,%r5,1
	xgrk	%r9,%r5,%r1
	ar	%r9,%r4
	risbg	%r8,%r9,62,128+63,0
	clrjle	%r4,%r11,.L1772
	cije	%r8,0,.L1813
	cije	%r8,1,.L1863
	cijlh	%r8,2,.L1902
.L1864:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	aghi	%r11,1
.L1863:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	aghi	%r11,1
	clrjle	%r4,%r11,.L1772
.L1813:
	srlk	%r4,%r9,2
.L1786:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	ic	%r1,1(%r11,%r3)
	stc	%r1,1(%r11,%r2)
	ic	%r9,2(%r11,%r3)
	stc	%r9,2(%r11,%r2)
	ic	%r8,3(%r11,%r3)
	stc	%r8,3(%r11,%r2)
	aghi	%r11,4
	brct	%r4,.L1786
	j	.L1772
.L1779:
	risbgn	%r8,%r12,32,128+61,2
	aghik	%r5,%r8,-4
	lghi	%r1,0
	srlg	%r9,%r5,2
	aghi	%r9,1
	risbg	%r10,%r9,62,128+63,0
	je	.L1831
	cgije	%r10,1,.L1858
	cgijlh	%r10,2,.L1903
.L1859:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	aghi	%r1,4
.L1858:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	aghi	%r1,4
	cgrje	%r1,%r8,.L1783
.L1831:
	srlg	%r8,%r9,2
.L1782:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	aghi	%r1,16
	brctg	%r8,.L1782
	j	.L1783
.L1903:
	l	%r11,0(%r3)
	lghi	%r1,4
	st	%r11,0(%r2)
	j	.L1859
.L1902:
	ic	%r10,0(%r11,%r3)
	stc	%r10,0(%r11,%r2)
	aghik	%r11,%r5,2
	j	.L1864
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
	cijlh	%r1,0,.L1920
	srak	%r5,%r2,14
	jne	.L1919
	srak	%r0,%r2,13
	cijlh	%r0,0,.L1921
	srak	%r3,%r2,12
	cijlh	%r3,0,.L1922
	srak	%r4,%r2,11
	cijlh	%r4,0,.L1923
	srak	%r5,%r2,10
	cijlh	%r5,0,.L1924
	srak	%r1,%r2,9
	cijlh	%r1,0,.L1925
	srak	%r0,%r2,8
	cijlh	%r0,0,.L1926
	srak	%r3,%r2,7
	cijlh	%r3,0,.L1927
	srak	%r4,%r2,6
	cijlh	%r4,0,.L1928
	srak	%r5,%r2,5
	cijlh	%r5,0,.L1929
	srak	%r1,%r2,4
	cijlh	%r1,0,.L1930
	srak	%r0,%r2,3
	cijlh	%r0,0,.L1931
	srak	%r3,%r2,2
	cijlh	%r3,0,.L1932
	srak	%r4,%r2,1
	cijlh	%r4,0,.L1933
	ltgr	%r2,%r2
	lhi	%r5,15
	lhi	%r2,16
	locre	%r5,%r2
.L1919:
	risbg	%r2,%r5,59,128+63,0
	br	%r14
.L1920:
	lhi	%r5,0
	j	.L1919
.L1931:
	lhi	%r5,12
	j	.L1919
.L1921:
	lhi	%r5,2
	j	.L1919
.L1922:
	lhi	%r5,3
	j	.L1919
.L1923:
	lhi	%r5,4
	j	.L1919
.L1924:
	lhi	%r5,5
	j	.L1919
.L1925:
	lhi	%r5,6
	j	.L1919
.L1926:
	lhi	%r5,7
	j	.L1919
.L1927:
	lhi	%r5,8
	j	.L1919
.L1928:
	lhi	%r5,9
	j	.L1919
.L1929:
	lhi	%r5,10
	j	.L1919
.L1930:
	lhi	%r5,11
	j	.L1919
.L1932:
	lhi	%r5,13
	j	.L1919
.L1933:
	lhi	%r5,14
	j	.L1919
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
	jne	.L1939
	tmll	%r2,2
	jne	.L1940
	tmll	%r2,4
	jne	.L1941
	tmll	%r2,8
	jne	.L1942
	tmll	%r2,16
	jne	.L1943
	tmll	%r2,32
	jne	.L1944
	tmll	%r2,64
	jne	.L1945
	tmll	%r2,128
	jne	.L1946
	tmll	%r2,256
	jne	.L1947
	tmll	%r2,512
	jne	.L1948
	tmll	%r2,1024
	jne	.L1949
	tmll	%r2,2048
	jne	.L1950
	tmll	%r2,4096
	jne	.L1951
	tmll	%r2,8192
	jne	.L1952
	tmll	%r2,16384
	jne	.L1953
	sra	%r2,15
	lhi	%r1,16
	ltr	%r2,%r2
	lhi	%r2,15
	locre	%r2,%r1
.L1938:
	risbg	%r2,%r2,59,128+63,0
	br	%r14
.L1939:
	lhi	%r2,0
	j	.L1938
.L1940:
	lhi	%r2,1
	j	.L1938
.L1951:
	lhi	%r2,12
	j	.L1938
.L1941:
	lhi	%r2,2
	j	.L1938
.L1942:
	lhi	%r2,3
	j	.L1938
.L1943:
	lhi	%r2,4
	j	.L1938
.L1944:
	lhi	%r2,5
	j	.L1938
.L1945:
	lhi	%r2,6
	j	.L1938
.L1946:
	lhi	%r2,7
	j	.L1938
.L1947:
	lhi	%r2,8
	j	.L1938
.L1948:
	lhi	%r2,9
	j	.L1938
.L1949:
	lhi	%r2,10
	j	.L1938
.L1950:
	lhi	%r2,11
	j	.L1938
.L1952:
	lhi	%r2,13
	j	.L1938
.L1953:
	lhi	%r2,14
	j	.L1938
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
	larl	%r5,.L1964
	keb	%f0,.L1965-.L1964(%r5)
	jhe	.L1963
	cgebr	%r2,5,%f0
	br	%r14
.L1963:
	seb	%f0,.L1965-.L1964(%r5)
	cgebr	%r2,5,%f0
	algfi	%r2,32768
	br	%r14
	.section	.rodata
	.align	8
.L1964:
.L1965:
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
	cgije	%r2,0,.L1973
	risbg	%r0,%r2,63,128+63,0
	srlk	%r4,%r2,1
	lcr	%r1,%r0
	sllk	%r5,%r3,1
	nr	%r1,%r3
	cije	%r4,0,.L1971
	nilf	%r4,1
	lcr	%r0,%r4
	srlk	%r4,%r2,2
	nr	%r0,%r5
	sllk	%r5,%r3,2
	ar	%r1,%r0
	cije	%r4,0,.L1971
	risbg	%r0,%r4,63,128+63,0
	lcr	%r4,%r0
	sllk	%r0,%r3,3
	nr	%r4,%r5
	srlk	%r5,%r2,3
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,4
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,4
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,5
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,5
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,6
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,6
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,7
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,7
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,8
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,8
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,9
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,9
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,10
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,10
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,11
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,11
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,12
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,12
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,13
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,13
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,14
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,14
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,15
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,15
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,16
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,16
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,17
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,17
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,18
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,18
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,19
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,19
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,20
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,20
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,21
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,21
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,22
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,22
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,23
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,23
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,24
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,24
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,25
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,25
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,26
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,26
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,27
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,27
	ar	%r1,%r4
	cije	%r5,0,.L1971
	risbg	%r4,%r5,63,128+63,0
	srlk	%r5,%r2,28
	lcr	%r4,%r4
	nr	%r4,%r0
	sllk	%r0,%r3,28
	ar	%r1,%r4
	cije	%r5,0,.L1971
	nilf	%r5,1
	srlk	%r4,%r2,29
	lcr	%r5,%r5
	nr	%r5,%r0
	sllk	%r0,%r3,29
	ar	%r1,%r5
	cije	%r4,0,.L1971
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
.L1971:
	llgfr	%r2,%r1
	br	%r14
.L1973:
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
	cgije	%r2,0,.L2068
	cgije	%r3,0,.L2068
	risbg	%r1,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r1
	srlk	%r4,%r3,1
	nr	%r1,%r2
	srlg	%r5,%r3,1
	cgije	%r5,0,.L2159
	ldgr	%f0,%r12
	.cfi_register 12, 16
	nilf	%r4,1
	sllk	%r12,%r2,2
	lcr	%r4,%r4
	srlg	%r5,%r3,2
	nr	%r4,%r0
	srlk	%r0,%r3,2
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,3
	lcr	%r4,%r4
	sllk	%r0,%r2,3
	nr	%r4,%r12
	srlk	%r12,%r3,3
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,4
	lcr	%r4,%r4
	sllk	%r12,%r2,4
	nr	%r4,%r0
	srlk	%r0,%r3,4
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,5
	lcr	%r4,%r4
	sllk	%r0,%r2,5
	nr	%r4,%r12
	srlk	%r12,%r3,5
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,6
	lcr	%r4,%r4
	sllk	%r12,%r2,6
	nr	%r4,%r0
	srlk	%r0,%r3,6
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,7
	lcr	%r4,%r4
	sllk	%r0,%r2,7
	nr	%r4,%r12
	srlk	%r12,%r3,7
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,8
	lcr	%r4,%r4
	sllk	%r12,%r2,8
	nr	%r4,%r0
	srlk	%r0,%r3,8
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,9
	lcr	%r4,%r4
	sllk	%r0,%r2,9
	nr	%r4,%r12
	srlk	%r12,%r3,9
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,10
	lcr	%r4,%r4
	sllk	%r12,%r2,10
	nr	%r4,%r0
	srlk	%r0,%r3,10
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,11
	lcr	%r4,%r4
	sllk	%r0,%r2,11
	nr	%r4,%r12
	srlk	%r12,%r3,11
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,12
	lcr	%r4,%r4
	sllk	%r12,%r2,12
	nr	%r4,%r0
	srlk	%r0,%r3,12
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,13
	lcr	%r4,%r4
	sllk	%r0,%r2,13
	nr	%r4,%r12
	srlk	%r12,%r3,13
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,14
	lcr	%r4,%r4
	sllk	%r12,%r2,14
	nr	%r4,%r0
	srlk	%r0,%r3,14
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,15
	lcr	%r4,%r4
	sllk	%r0,%r2,15
	nr	%r4,%r12
	srlk	%r12,%r3,15
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,16
	lcr	%r4,%r4
	sllk	%r12,%r2,16
	nr	%r4,%r0
	srlk	%r0,%r3,16
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,17
	lcr	%r4,%r4
	sllk	%r0,%r2,17
	nr	%r4,%r12
	srlk	%r12,%r3,17
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,18
	lcr	%r4,%r4
	sllk	%r12,%r2,18
	nr	%r4,%r0
	srlk	%r0,%r3,18
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,19
	lcr	%r4,%r4
	sllk	%r0,%r2,19
	nr	%r4,%r12
	srlk	%r12,%r3,19
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,20
	lcr	%r4,%r4
	sllk	%r12,%r2,20
	nr	%r4,%r0
	srlk	%r0,%r3,20
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,21
	lcr	%r4,%r4
	sllk	%r0,%r2,21
	nr	%r4,%r12
	srlk	%r12,%r3,21
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,22
	lcr	%r4,%r4
	sllk	%r12,%r2,22
	nr	%r4,%r0
	srlk	%r0,%r3,22
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,23
	lcr	%r4,%r4
	sllk	%r0,%r2,23
	nr	%r4,%r12
	srlk	%r12,%r3,23
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,24
	lcr	%r4,%r4
	sllk	%r12,%r2,24
	nr	%r4,%r0
	srlk	%r0,%r3,24
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,25
	lcr	%r4,%r4
	sllk	%r0,%r2,25
	nr	%r4,%r12
	srlk	%r12,%r3,25
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlg	%r5,%r3,26
	lcr	%r4,%r4
	sllk	%r12,%r2,26
	nr	%r4,%r0
	srlk	%r0,%r3,26
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r0,63,128+63,0
	srlg	%r5,%r3,27
	lcr	%r4,%r4
	sllk	%r0,%r2,27
	nr	%r4,%r12
	srlk	%r12,%r3,27
	ar	%r1,%r4
	cgije	%r5,0,.L2065
	risbg	%r4,%r12,63,128+63,0
	srlk	%r5,%r3,28
	lcr	%r4,%r4
	sllk	%r12,%r2,28
	nr	%r4,%r0
	srlg	%r0,%r3,28
	ar	%r1,%r4
	cgije	%r0,0,.L2065
	nilf	%r5,1
	sllk	%r0,%r2,29
	lcr	%r5,%r5
	srlg	%r4,%r3,29
	nr	%r5,%r12
	srlk	%r12,%r3,29
	ar	%r1,%r5
	cgije	%r4,0,.L2065
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
.L2065:
	llgfr	%r2,%r1
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2068:
	lhi	%r1,0
.L2159:
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
	clrjhe	%r3,%r2,.L2193
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lhi	%r0,32
	lhi	%r1,1
	lhi	%r12,8
.L2164:
	cijl	%r3,0,.L2165
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2166
	cijl	%r3,0,.L2165
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2166
	cijl	%r3,0,.L2165
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2166
	cijl	%r3,0,.L2165
	sllk	%r5,%r3,1
	sll	%r1,1
	llgfr	%r3,%r5
	clrjhe	%r5,%r2,.L2166
	ahi	%r0,-4
	brct	%r12,.L2164
.L2167:
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L2166:
	.cfi_restore_state
	cije	%r1,0,.L2173
.L2165:
	lhi	%r0,0
.L2170:
	clrjl	%r2,%r3,.L2169
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L2169:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L2170
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	lgdr	%r12,%f0
	.cfi_restore 12
	br	%r14
.L2193:
	lhi	%r1,1
	lhi	%r0,0
.L2188:
	clrjl	%r2,%r3,.L2190
	sr	%r2,%r3
	or	%r0,%r1
	llgfr	%r2,%r2
.L2190:
	srl	%r1,1
	srlg	%r3,%r3,1
	cijlh	%r1,0,.L2188
	ltgr	%r4,%r4
	locre	%r2,%r0
	llgfr	%r2,%r2
	br	%r14
.L2173:
	.cfi_register 12, 16
	lhi	%r0,0
	j	.L2167
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
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	lhi	%r0,-1
	locrl	%r2,%r0
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
	lhi	%r1,1
	lhi	%r2,0
	locrh	%r2,%r1
	lhi	%r0,-1
	locrl	%r2,%r0
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
	cijl	%r3,0,.L2310
	cgije	%r3,0,.L2216
	risbg	%r4,%r3,63,128+63,0
	lcr	%r4,%r4
	nr	%r4,%r2
	srag	%r1,%r3,1
	sll	%r2,1
	lgfr	%r2,%r2
	je	.L2308
	lhi	%r0,0
.L2211:
	ldgr	%f2,%r11
	.cfi_register 11, 17
	risbg	%r11,%r1,63,128+63,0
	ldgr	%f0,%r12
	.cfi_register 12, 16
	lcr	%r5,%r11
	sllk	%r12,%r2,1
	nr	%r5,%r2
	srak	%r3,%r1,1
	ar	%r4,%r5
	srag	%r11,%r1,1
	cgije	%r11,0,.L2214
	nilf	%r3,1
	sllk	%r11,%r2,2
	lcr	%r3,%r3
	srag	%r5,%r1,2
	nr	%r3,%r12
	srak	%r12,%r1,2
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,3
	lcr	%r3,%r3
	sllk	%r12,%r2,3
	nr	%r3,%r11
	srak	%r11,%r1,3
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,4
	lcr	%r3,%r3
	sllk	%r11,%r2,4
	nr	%r3,%r12
	srak	%r12,%r1,4
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,5
	lcr	%r3,%r3
	sllk	%r12,%r2,5
	nr	%r3,%r11
	srak	%r11,%r1,5
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,6
	lcr	%r3,%r3
	sllk	%r11,%r2,6
	nr	%r3,%r12
	srak	%r12,%r1,6
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,7
	lcr	%r3,%r3
	sllk	%r12,%r2,7
	nr	%r3,%r11
	srak	%r11,%r1,7
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,8
	lcr	%r3,%r3
	sllk	%r11,%r2,8
	nr	%r3,%r12
	srak	%r12,%r1,8
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,9
	lcr	%r3,%r3
	sllk	%r12,%r2,9
	nr	%r3,%r11
	srak	%r11,%r1,9
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,10
	lcr	%r3,%r3
	sllk	%r11,%r2,10
	nr	%r3,%r12
	srak	%r12,%r1,10
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,11
	lcr	%r3,%r3
	sllk	%r12,%r2,11
	nr	%r3,%r11
	srak	%r11,%r1,11
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,12
	lcr	%r3,%r3
	sllk	%r11,%r2,12
	nr	%r3,%r12
	srak	%r12,%r1,12
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,13
	lcr	%r3,%r3
	sllk	%r12,%r2,13
	nr	%r3,%r11
	srak	%r11,%r1,13
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,14
	lcr	%r3,%r3
	sllk	%r11,%r2,14
	nr	%r3,%r12
	srak	%r12,%r1,14
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,15
	lcr	%r3,%r3
	sllk	%r12,%r2,15
	nr	%r3,%r11
	srak	%r11,%r1,15
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,16
	lcr	%r3,%r3
	sllk	%r11,%r2,16
	nr	%r3,%r12
	srak	%r12,%r1,16
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,17
	lcr	%r3,%r3
	sllk	%r12,%r2,17
	nr	%r3,%r11
	srak	%r11,%r1,17
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,18
	lcr	%r3,%r3
	sllk	%r11,%r2,18
	nr	%r3,%r12
	srak	%r12,%r1,18
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,19
	lcr	%r3,%r3
	sllk	%r12,%r2,19
	nr	%r3,%r11
	srak	%r11,%r1,19
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,20
	lcr	%r3,%r3
	sllk	%r11,%r2,20
	nr	%r3,%r12
	srak	%r12,%r1,20
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,21
	lcr	%r3,%r3
	sllk	%r12,%r2,21
	nr	%r3,%r11
	srak	%r11,%r1,21
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,22
	lcr	%r3,%r3
	sllk	%r11,%r2,22
	nr	%r3,%r12
	srak	%r12,%r1,22
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,23
	lcr	%r3,%r3
	sllk	%r12,%r2,23
	nr	%r3,%r11
	srak	%r11,%r1,23
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,24
	lcr	%r3,%r3
	sllk	%r11,%r2,24
	nr	%r3,%r12
	srak	%r12,%r1,24
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,25
	lcr	%r3,%r3
	sllk	%r12,%r2,25
	nr	%r3,%r11
	srak	%r11,%r1,25
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	srag	%r5,%r1,26
	lcr	%r3,%r3
	sllk	%r11,%r2,26
	nr	%r3,%r12
	srak	%r12,%r1,26
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r12,63,128+63,0
	srag	%r5,%r1,27
	lcr	%r3,%r3
	sllk	%r12,%r2,27
	nr	%r3,%r11
	srak	%r11,%r1,27
	ar	%r4,%r3
	cgije	%r5,0,.L2214
	risbg	%r3,%r11,63,128+63,0
	lcr	%r11,%r3
	nr	%r11,%r12
	risbgn	%r12,%r1,64-1,128+63,32+3+1
	ar	%r11,%r4
	srak	%r3,%r1,29
	lcr	%r4,%r12
	sllk	%r5,%r2,28
	lcr	%r12,%r3
	nr	%r4,%r5
	sll	%r2,29
	ar	%r4,%r11
	nr	%r2,%r12
	ar	%r2,%r4
	srag	%r1,%r1,28
	ltgr	%r1,%r1
	locrne	%r11,%r2
	lr	%r4,%r11
.L2214:
	cije	%r0,0,.L2213
	lcr	%r4,%r4
.L2213:
	lgfr	%r2,%r4
	lgdr	%r12,%f0
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2310:
	risbg	%r4,%r3,63,128+63,0
	sllk	%r0,%r2,1
	lcr	%r1,%r4
	lcr	%r5,%r3
	nrk	%r4,%r1,%r2
	srak	%r3,%r5,1
	lgfr	%r2,%r0
	lgfr	%r1,%r3
	lhi	%r0,1
	cijlh	%r3,0,.L2211
	lcr	%r4,%r4
	j	.L2308
.L2216:
	lhi	%r4,0
.L2308:
	lgfr	%r2,%r4
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
	cgijl	%r2,0,.L2339
	lhi	%r1,1
	lhi	%r5,0
.L2313:
	cgijhe	%r3,0,.L2314
	lcgr	%r3,%r3
	lr	%r5,%r1
.L2314:
	lr	%r4,%r2
	lr	%r0,%r3
	clrjle	%r2,%r3,.L2340
	lhi	%r3,1
	lhi	%r2,8
.L2315:
	cijl	%r0,0,.L2316
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2317
	cijl	%r0,0,.L2316
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2317
	cijl	%r0,0,.L2316
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2317
	cijl	%r0,0,.L2316
	sll	%r0,1
	sll	%r3,1
	clrjle	%r4,%r0,.L2317
	brct	%r2,.L2315
.L2326:
	lghi	%r2,0
	lcgr	%r3,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r3
	br	%r14
.L2317:
	cije	%r3,0,.L2326
.L2316:
	lhi	%r1,0
.L2321:
	clrjl	%r4,%r0,.L2320
	sr	%r4,%r0
	or	%r1,%r3
.L2320:
	srl	%r3,1
	srl	%r0,1
	cijlh	%r3,0,.L2321
	llgfr	%r2,%r1
	lcgr	%r3,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r3
	br	%r14
.L2339:
	lcgr	%r2,%r2
	lhi	%r1,0
	lhi	%r5,1
	j	.L2313
.L2340:
	lhi	%r3,1
	j	.L2316
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
	cgijl	%r2,0,.L2371
	lhi	%r5,0
.L2343:
	lpgr	%r3,%r3
	lr	%r1,%r3
	lr	%r4,%r2
	clrjle	%r2,%r3,.L2372
	lhi	%r0,1
	lhi	%r2,8
.L2344:
	cijl	%r1,0,.L2350
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2370
	cijl	%r1,0,.L2350
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2370
	cijl	%r1,0,.L2350
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2370
	cijl	%r1,0,.L2350
	sll	%r1,1
	sll	%r0,1
	clrjle	%r4,%r1,.L2370
	brct	%r2,.L2344
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L2372:
	lhi	%r0,1
.L2350:
	srk	%r3,%r4,%r1
	clr	%r4,%r1
	locrhe	%r4,%r3
	srl	%r0,1
	srl	%r1,1
.L2370:
	cijlh	%r0,0,.L2350
	llgfr	%r2,%r4
	lcgr	%r0,%r2
	ltr	%r5,%r5
	locgrne	%r2,%r0
	br	%r14
.L2371:
	lcgr	%r2,%r2
	lhi	%r5,1
	j	.L2343
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
	jhe	.L2493
	tmll	%r3,32768
	jne	.L2377
	risbgn	%r1,%r3,48,128+62,1
	ldgr	%f2,%r11
	.cfi_register 11, 17
	ldgr	%f0,%r12
	.cfi_register 12, 16
	clr	%r2,%r1
	jle	.L2378
	tmll	%r1,32768
	jne	.L2379
	risbgn	%r1,%r3,48,128+61,2
	clr	%r2,%r1
	jle	.L2380
	tmll	%r1,32768
	jne	.L2381
	risbgn	%r1,%r3,48,128+60,3
	clr	%r2,%r1
	jle	.L2382
	tmll	%r1,32768
	jne	.L2383
	risbgn	%r1,%r3,48,128+59,4
	clr	%r2,%r1
	jle	.L2384
	tmll	%r1,32768
	jne	.L2385
	risbgn	%r1,%r3,48,128+58,5
	clr	%r2,%r1
	jle	.L2386
	tmll	%r1,32768
	jne	.L2387
	risbgn	%r1,%r3,48,128+57,6
	clr	%r2,%r1
	jle	.L2388
	tmll	%r1,32768
	jne	.L2389
	risbgn	%r1,%r3,48,128+56,7
	clr	%r2,%r1
	jle	.L2390
	tmll	%r1,32768
	jne	.L2391
	risbgn	%r1,%r3,48,128+55,8
	clr	%r2,%r1
	jle	.L2392
	tmll	%r1,32768
	jne	.L2393
	risbgn	%r1,%r3,48,128+54,9
	clr	%r2,%r1
	jle	.L2394
	tmll	%r1,32768
	jne	.L2395
	risbgn	%r1,%r3,48,128+53,10
	clr	%r2,%r1
	jle	.L2396
	tmll	%r1,32768
	jne	.L2397
	risbgn	%r1,%r3,48,128+52,11
	clr	%r2,%r1
	jle	.L2398
	tmll	%r1,32768
	jne	.L2399
	risbgn	%r1,%r3,48,128+51,12
	clr	%r2,%r1
	jle	.L2400
	tmll	%r1,32768
	jne	.L2401
	risbgn	%r1,%r3,48,128+50,13
	clr	%r2,%r1
	jle	.L2402
	tmll	%r1,32768
	jne	.L2403
	risbgn	%r1,%r3,48,128+49,14
	clr	%r2,%r1
	jle	.L2404
	tmll	%r1,32768
	jne	.L2405
	risbgn	%r1,%r3,48,128+48,15
	clrjle	%r2,%r1,.L2406
	lhi	%r0,0
	cgijlh	%r1,0,.L2494
.L2407:
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llghr	%r2,%r0
	lgdr	%r12,%f0
	.cfi_remember_state
	.cfi_restore 12
	lgdr	%r11,%f2
	.cfi_restore 11
	br	%r14
.L2394:
	.cfi_restore_state
	jl	.L2441
	sr	%r2,%r1
	lhi	%r0,512
	llghr	%r2,%r2
	lhi	%r5,512
.L2409:
	srlk	%r11,%r5,2
	srlg	%r3,%r1,2
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2410
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2410:
	srlk	%r11,%r5,3
	srlg	%r3,%r1,3
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2411
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2411:
	srlk	%r11,%r5,4
	srlg	%r3,%r1,4
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2412
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2412:
	srlk	%r11,%r5,5
	srlg	%r3,%r1,5
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2413
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2413:
	srlk	%r11,%r5,6
	srlg	%r3,%r1,6
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2414
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2414:
	srlk	%r11,%r5,7
	srlg	%r3,%r1,7
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2415
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2415:
	srlk	%r11,%r5,8
	srlg	%r3,%r1,8
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2416
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2416:
	srlk	%r11,%r5,9
	srlg	%r3,%r1,9
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2417
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2417:
	srlk	%r11,%r5,10
	srlg	%r3,%r1,10
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2418
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2418:
	srlk	%r11,%r5,11
	srlg	%r3,%r1,11
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2419
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2419:
	srlk	%r11,%r5,12
	srlg	%r3,%r1,12
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2420
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2420:
	srlk	%r11,%r5,13
	srlg	%r3,%r1,13
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2421
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2421:
	srlk	%r11,%r5,14
	srlg	%r3,%r1,14
	cije	%r11,0,.L2407
	clrjl	%r2,%r3,.L2422
	sr	%r2,%r3
	or	%r0,%r11
	llghr	%r2,%r2
.L2422:
	srlg	%r1,%r1,15
	lhi	%r11,16384
	crje	%r5,%r11,.L2407
	clrjl	%r2,%r1,.L2430
	srk	%r5,%r2,%r1
	oill	%r0,1
	llghr	%r2,%r5
	j	.L2407
.L2430:
	lghi	%r2,0
	j	.L2407
.L2493:
	.cfi_restore 11
	.cfi_restore 12
	lghi	%r1,0
	lhi	%r0,1
	locgre	%r2,%r1
	locrne	%r0,%r1
.L2490:
	ltgr	%r4,%r4
	locrne	%r0,%r2
	llghr	%r2,%r0
	br	%r14
.L2377:
	srk	%r3,%r2,%r3
	lhi	%r0,1
	llghr	%r2,%r3
	j	.L2490
.L2378:
	.cfi_register 11, 17
	.cfi_register 12, 16
	jl	.L2433
	sr	%r2,%r1
	lhi	%r0,2
	llghr	%r2,%r2
	lhi	%r5,2
	j	.L2409
.L2379:
	sr	%r2,%r1
	risbg	%r11,%r3,49,128+63,0
	llghr	%r2,%r2
	lhi	%r12,1
	lhi	%r0,2
	lhi	%r5,2
.L2427:
	clrjl	%r2,%r11,.L2409
	sr	%r2,%r11
	or	%r0,%r12
	llghr	%r2,%r2
	j	.L2409
.L2380:
	jl	.L2434
	sr	%r2,%r1
	lhi	%r0,4
	llghr	%r2,%r2
	lhi	%r5,4
	j	.L2409
.L2381:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,2
	lhi	%r0,4
	lhi	%r5,4
	j	.L2427
.L2382:
	jl	.L2435
	sr	%r2,%r1
	lhi	%r0,8
	llghr	%r2,%r2
	lhi	%r5,8
	j	.L2409
.L2383:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,4
	lhi	%r0,8
	lhi	%r5,8
	j	.L2427
.L2384:
	jl	.L2436
	sr	%r2,%r1
	lhi	%r0,16
	llghr	%r2,%r2
	lhi	%r5,16
	j	.L2409
.L2385:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,8
	lhi	%r0,16
	lhi	%r5,16
	j	.L2427
.L2386:
	jl	.L2437
	sr	%r2,%r1
	lhi	%r0,32
	llghr	%r2,%r2
	lhi	%r5,32
	j	.L2409
.L2387:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,16
	lhi	%r0,32
	lhi	%r5,32
	j	.L2427
.L2388:
	jl	.L2438
	sr	%r2,%r1
	lhi	%r0,64
	llghr	%r2,%r2
	lhi	%r5,64
	j	.L2409
.L2389:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,32
	lhi	%r0,64
	lhi	%r5,64
	j	.L2427
.L2390:
	jl	.L2439
	sr	%r2,%r1
	lhi	%r0,128
	llghr	%r2,%r2
	lhi	%r5,128
	j	.L2409
.L2391:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,64
	lhi	%r0,128
	lhi	%r5,128
	j	.L2427
.L2393:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,128
	lhi	%r0,256
	lhi	%r5,256
	j	.L2427
.L2395:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,256
	lhi	%r0,512
	lhi	%r5,512
	j	.L2427
.L2433:
	lhi	%r3,2
.L2426:
	risbgn	%r12,%r3,64-15,128+63,48+15
	llhr	%r5,%r3
	srlg	%r11,%r1,1
	lhi	%r0,0
	j	.L2427
.L2397:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,512
	lhi	%r0,1024
	lhi	%r5,1024
	j	.L2427
.L2399:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,1024
	lhi	%r0,2048
	lhi	%r5,2048
	j	.L2427
.L2434:
	lhi	%r3,4
	j	.L2426
.L2435:
	lhi	%r3,8
	j	.L2426
.L2401:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,2048
	lhi	%r0,4096
	lhi	%r5,4096
	j	.L2427
.L2403:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,4096
	lhi	%r0,8192
	lhi	%r5,8192
	j	.L2427
.L2436:
	lhi	%r3,16
	j	.L2426
.L2405:
	sr	%r2,%r1
	srlg	%r11,%r1,1
	llghr	%r2,%r2
	lhi	%r12,8192
	lhi	%r0,16384
	lhi	%r5,16384
	j	.L2427
.L2437:
	lhi	%r3,32
	j	.L2426
.L2438:
	lhi	%r3,64
	j	.L2426
.L2406:
	llill	%r1,32768
	tmll	%r2,32768
	jne	.L2432
	lhi	%r3,-32768
	j	.L2426
.L2494:
	ahi	%r2,-32768
	lghi	%r11,16384
	llghr	%r2,%r2
	lhi	%r12,16384
	llill	%r1,32768
	lhi	%r0,-32768
	llill	%r5,32768
	j	.L2427
.L2439:
	lhi	%r3,128
	j	.L2426
.L2392:
	jl	.L2440
	sr	%r2,%r1
	lhi	%r0,256
	llghr	%r2,%r2
	lhi	%r5,256
	j	.L2409
.L2432:
	lhi	%r0,-32768
	lghi	%r2,0
	llill	%r5,32768
	j	.L2409
.L2440:
	lhi	%r3,256
	j	.L2426
.L2396:
	jl	.L2442
	sr	%r2,%r1
	lhi	%r0,1024
	llghr	%r2,%r2
	lhi	%r5,1024
	j	.L2409
.L2404:
	jl	.L2446
	sr	%r2,%r1
	lhi	%r0,16384
	llghr	%r2,%r2
	lhi	%r5,16384
	j	.L2409
.L2442:
	lhi	%r3,1024
	j	.L2426
.L2446:
	lhi	%r3,16384
	j	.L2426
.L2441:
	lhi	%r3,512
	j	.L2426
.L2402:
	jl	.L2445
	sr	%r2,%r1
	lhi	%r0,8192
	llghr	%r2,%r2
	lhi	%r5,8192
	j	.L2409
.L2400:
	jl	.L2444
	sr	%r2,%r1
	lhi	%r0,4096
	llghr	%r2,%r2
	lhi	%r5,4096
	j	.L2409
.L2398:
	jl	.L2443
	sr	%r2,%r1
	lhi	%r0,2048
	llghr	%r2,%r2
	lhi	%r5,2048
	j	.L2409
.L2445:
	lhi	%r3,8192
	j	.L2426
.L2444:
	lhi	%r3,4096
	j	.L2426
.L2443:
	lhi	%r3,2048
	j	.L2426
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
	clgrjhe	%r3,%r2,.L2498
.L2497:
	risbg	%r5,%r3,32,128+32,0
	jne	.L2498
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2499
	risbg	%r5,%r3,32,128+32,0
	jne	.L2498
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2499
	risbg	%r5,%r3,32,128+32,0
	jne	.L2498
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2499
	risbg	%r5,%r3,32,128+32,0
	jne	.L2498
	sllg	%r3,%r3,1
	sllg	%r1,%r1,1
	clgrjle	%r2,%r3,.L2499
	brct	%r0,.L2497
.L2500:
	ltgr	%r4,%r4
	locgre	%r2,%r5
	br	%r14
.L2499:
	cgije	%r1,0,.L2500
.L2498:
	lghi	%r5,0
.L2503:
	clgrjl	%r2,%r3,.L2502
	sgr	%r2,%r3
	ogr	%r5,%r1
.L2502:
	srlg	%r1,%r1,1
	srlg	%r3,%r3,1
	cgijlh	%r1,0,.L2503
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
	je	.L2524
	sllk	%r0,%r2,4064(%r3)
	lhi	%r2,0
.L2525:
	llgfr	%r2,%r2
	rosbg	%r2,%r0,0,31,32
.L2523:
	br	%r14
.L2524:
	cgije	%r3,0,.L2523
	srag	%r4,%r2,32
	lhi	%r1,32
	sll	%r4,0(%r3)
	sr	%r1,%r3
	srlk	%r0,%r2,0(%r1)
	sll	%r2,0(%r3)
	or	%r0,%r4
	j	.L2525
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
	je	.L2530
	sllg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L2531:
	lgr	%r0,%r4
.L2532:
	stg	%r1,0(%r2)
	stg	%r0,8(%r2)
	br	%r14
.L2530:
	cgije	%r4,0,.L2532
	sllg	%r1,%r1,0(%r4)
	lhi	%r5,64
	sr	%r5,%r4
	sllg	%r4,%r0,0(%r4)
	srlg	%r3,%r0,0(%r5)
	ogr	%r1,%r3
	j	.L2531
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
	je	.L2538
	srag	%r1,%r2,32
	srak	%r2,%r1,4064(%r3)
	sra	%r1,31
.L2539:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L2537:
	br	%r14
.L2538:
	cgije	%r3,0,.L2537
	srag	%r1,%r2,32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	sra	%r1,0(%r3)
	or	%r2,%r0
	j	.L2539
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
	je	.L2544
	srag	%r1,%r0,4032(%r4)
	srag	%r4,%r0,63
.L2545:
	lgr	%r0,%r4
.L2546:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L2544:
	cgije	%r4,0,.L2546
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srag	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L2545
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
	jl	.L2561
	jh	.L2562
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2561:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2562:
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
	jl	.L2568
	jh	.L2569
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L2568:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L2569:
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
	jl	.L2574
	jh	.L2575
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r5,1
	locrh	%r5,%r0
	lhi	%r3,0
	locrnhe	%r5,%r3
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L2574:
	lhi	%r5,0
	risbg	%r2,%r5,62,128+63,0
	br	%r14
.L2575:
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
	jne	.L2584
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
.L2584:
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
	je	.L2589
	risbgn	%r2,%r2,64-32,128+63,0+32
	lhi	%r1,0
	srl	%r2,4064(%r3)
.L2590:
	llgfr	%r2,%r2
	rosbg	%r2,%r1,0,31,32
.L2588:
	br	%r14
.L2589:
	cgije	%r3,0,.L2588
	risbgn	%r1,%r2,64-32,128+63,0+32
	lhi	%r4,32
	srl	%r2,0(%r3)
	sr	%r4,%r3
	sllk	%r0,%r1,0(%r4)
	srl	%r1,0(%r3)
	or	%r2,%r0
	j	.L2590
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
	je	.L2595
	srlg	%r1,%r0,4032(%r4)
	lghi	%r4,0
.L2596:
	lgr	%r0,%r4
.L2597:
	stg	%r0,0(%r2)
	stg	%r1,8(%r2)
	br	%r14
.L2595:
	cgije	%r4,0,.L2597
	srlg	%r1,%r1,0(%r4)
	lhi	%r3,64
	sr	%r3,%r4
	srlg	%r4,%r0,0(%r4)
	sllg	%r5,%r0,0(%r3)
	ogr	%r1,%r5
	j	.L2596
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
	larl	%r5,.L2625
	srlg	%r1,%r2,1
	ng	%r1,.L2626-.L2625(%r5)
	sgr	%r2,%r1
	srlg	%r0,%r2,2
	ng	%r2,.L2627-.L2625(%r5)
	ng	%r0,.L2627-.L2625(%r5)
	agr	%r2,%r0
	srlg	%r3,%r2,4
	agr	%r3,%r2
	ng	%r3,.L2628-.L2625(%r5)
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
.L2625:
.L2628:
	.quad	1085102592571150095
.L2627:
	.quad	3689348814741910323
.L2626:
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
	larl	%r5,.L2644
	ldr	%f2,%f0
	lgr	%r1,%r2
	ld	%f0,.L2645-.L2644(%r5)
	tmll	%r2,1
	je	.L2635
.L2637:
	mdbr	%f0,%f2
.L2635:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L2636
	mdbr	%f2,%f2
	tmll	%r1,1
	jne	.L2637
.L2642:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	mdbr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L2637
	j	.L2642
.L2636:
	cijl	%r2,0,.L2643
	br	%r14
.L2643:
	ld	%f4,.L2645-.L2644(%r5)
	ddbr	%f4,%f0
	ldr	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2644:
.L2645:
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
	larl	%r5,.L2656
	ler	%f2,%f0
	lgr	%r1,%r2
	le	%f0,.L2657-.L2656(%r5)
	tmll	%r2,1
	je	.L2647
.L2649:
	meebr	%f0,%f2
.L2647:
	srlk	%r3,%r1,31
	ar	%r3,%r1
	sra	%r3,1
	lgfr	%r1,%r3
	cije	%r3,0,.L2648
	meebr	%f2,%f2
	tmll	%r1,1
	jne	.L2649
.L2654:
	srlk	%r0,%r1,31
	ar	%r1,%r0
	sra	%r1,1
	meebr	%f2,%f2
	lgfr	%r1,%r1
	tmll	%r1,1
	jne	.L2649
	j	.L2654
.L2648:
	cijl	%r2,0,.L2655
	br	%r14
.L2655:
	le	%f4,.L2657-.L2656(%r5)
	debr	%f4,%f0
	ler	%f0,%f4
	br	%r14
	.section	.rodata
	.align	8
.L2656:
.L2657:
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
	jl	.L2660
	jh	.L2661
	clr	%r2,%r3
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2660:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2661:
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
	jl	.L2667
	jh	.L2668
	clr	%r2,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	clr	%r2,%r3
	lhi	%r2,-1
	locrnhe	%r0,%r2
	lgfr	%r2,%r0
	br	%r14
.L2667:
	lhi	%r0,-1
	lgfr	%r2,%r0
	br	%r14
.L2668:
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
	jl	.L2673
	jh	.L2674
	clgr	%r4,%r1
	lhi	%r0,2
	lhi	%r2,1
	locrh	%r2,%r0
	lhi	%r3,0
	locrnhe	%r2,%r3
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2673:
	lhi	%r2,0
	risbg	%r2,%r2,62,128+63,0
	br	%r14
.L2674:
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
