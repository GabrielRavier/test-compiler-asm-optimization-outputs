	.file	"mini-libc.c"
	.machinemode esa
	.machine "zEC12+nohtm"
.text
	.align	8
	.align	16
.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	clr	%r2,%r3
	jle	.L2
	ltr	%r4,%r4
	ber	%r14
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ahi	%r3,-1
	lr	%r1,%r2
	lr	%r12,%r4
	ahi	%r1,-1
	ahi	%r12,-1
	lhi	%r0,3
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L17
	chi	%r0,1
	je	.L30
	chi	%r0,2
	jne	.L52
.L31:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	ahi	%r4,-1
.L30:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	brct	%r4,.L17
.L3:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L26
	chi	%r0,1
	je	.L32
	chi	%r0,2
	je	.L33
	mvc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L33:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L32:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L26:
	lr	%r4,%r5
	srl	%r4,2
.L5:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L5
	br	%r14
.L17:
	.cfi_offset 12, -48
	srl	%r5,2
.L4:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	lr	%r12,%r4
	ahi	%r12,-1
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	ahi	%r12,-1
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	ahi	%r12,-1
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	ahi	%r4,-4
	brct	%r5,.L4
	j	.L3
.L52:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	lr	%r4,%r12
	j	.L31
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
	lhi	%r1,255
	nr	%r4,%r1
	ltr	%r5,%r5
	je	.L75
	lr	%r0,%r5
	ahi	%r0,-1
	tml	%r5,1
	je	.L76
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L72
	ahi	%r3,1
	ahi	%r2,1
	ltr	%r0,%r0
	je	.L57
	srl	%r5,1
.L55:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L72
	ahi	%r2,1
	ic	%r12,1(%r3)
	stc	%r12,0(%r2)
	lhi	%r1,255
	nr	%r12,%r1
	cr	%r12,%r4
	je	.L72
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L55
.L57:
	lhi	%r2,0
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L76:
	srl	%r5,1
.L82:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L80
	ahi	%r2,1
	ic	%r1,1(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L80
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L82
.L75:
	lhi	%r2,0
	br	%r14
.L80:
	ahi	%r2,1
	br	%r14
.L72:
	.cfi_offset 12, -48
	ahi	%r2,1
	l	%r12,48(%r15)
	.cfi_restore 12
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
	lhi	%r1,255
	nr	%r3,%r1
	ltr	%r4,%r4
	je	.L91
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L98
	chi	%r5,1
	je	.L109
	chi	%r5,2
	je	.L110
	lhi	%r4,0
	ic	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	ahi	%r2,1
	lr	%r4,%r0
.L110:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L109:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	ahi	%r2,1
	chi	%r4,1
	je	.L91
.L98:
	srl	%r1,2
	lr	%r4,%r1
.L88:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	lr	%r1,%r2
	ahi	%r1,1
	lhi	%r0,0
	lr	%r2,%r1
	ic	%r0,0(%r1)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	lr	%r2,%r1
	ahi	%r2,2
	lhi	%r0,0
	ic	%r0,2(%r1)
	cr	%r0,%r3
	ber	%r14
	ahi	%r1,3
	lr	%r2,%r1
	brct	%r4,.L88
.L91:
	lhi	%r2,0
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
	ltr	%r4,%r4
	je	.L127
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L141
.L130:
	srl	%r4,1
.L123:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L139
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L139
	ahi	%r2,2
	ahi	%r3,2
	brct	%r4,.L123
.L127:
	lhi	%r2,0
	br	%r14
.L139:
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L141:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L139
	ahi	%r2,1
	ahi	%r3,1
	ltr	%r0,%r0
	jne	.L130
	j	.L127
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	ltr	%r4,%r4
	je	.L144
	brasl	%r14,memcpy
.L144:
	lr	%r2,%r12
	lm	%r12,%r15,144(%r15)
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
	lr	%r1,%r2
	lhi	%r2,255
	ar	%r1,%r4
	nr	%r3,%r2
	ahi	%r4,1
	lhi	%r5,3
	nr	%r5,%r4
	je	.L159
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	chi	%r5,1
	je	.L159
	chi	%r5,2
	je	.L163
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L163:
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L159:
	srl	%r4,2
	lr	%r5,%r1
	ahi	%r4,1
	ahi	%r5,-1
	brct	%r4,.L173
	lhi	%r2,0
	br	%r14
.L173:
	lhi	%r0,0
	lr	%r2,%r1
	ic	%r0,0(%r1)
	cr	%r0,%r3
	ber	%r14
	lr	%r0,%r1
	ahi	%r0,-2
	lr	%r2,%r5
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L176:
	lr	%r12,%r1
	ahi	%r12,-3
	lr	%r2,%r0
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L150
	ahi	%r1,-4
	lhi	%r5,0
	lr	%r2,%r12
	ic	%r5,0(%r12)
	cr	%r5,%r3
	je	.L150
	lr	%r12,%r1
	ahi	%r12,-1
	brct	%r4,.L153
	lhi	%r2,0
.L150:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L153:
	.cfi_restore_state
	lhi	%r0,0
	lr	%r2,%r1
	ic	%r0,0(%r1)
	cr	%r0,%r3
	je	.L150
	lr	%r0,%r1
	ahi	%r0,-2
	lhi	%r5,0
	lr	%r2,%r12
	ic	%r5,0(%r12)
	cr	%r5,%r3
	jne	.L176
	l	%r12,48(%r15)
	.cfi_restore 12
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
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,255
	nr	%r3,%r1
	chi	%r4,1
	lr	%r1,%r2
	je	.L183
	ahi	%r4,-2
	lr	%r5,%r4
	srl	%r5,8
	ltr	%r5,%r5
	jne	.L182
.L185:
	stc	%r3,0(%r1)
	larl	%r3,.L193
	ex	%r4,0(%r3)
	br	%r14
.L182:
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brct	%r5,.L182
	j	.L185
.L183:
	stc	%r3,0(%r2)
	br	%r14
.L193:
	mvc	1(1,%r1),0(%r1)
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
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	ber	%r14
.L197:
	ahi	%r3,1
	ahi	%r2,1
	ic	%r0,0(%r3)
	stc	%r0,0(%r2)
	tml	%r0,255
	ber	%r14
	ahi	%r3,1
	ahi	%r2,1
	ic	%r0,0(%r3)
	stc	%r0,0(%r2)
	tml	%r0,255
	jne	.L197
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
	lhi	%r1,255
	nr	%r3,%r1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	ber	%r14
.L211:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L211
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
.L215:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L215
	lhi	%r2,0
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r12,%r3
	ahi	%r12,-1
	ic	%r4,0(%r3)
	lhi	%r0,255
	ic	%r3,0(%r2)
	nr	%r0,%r4
	lhi	%r5,255
	lhi	%r1,1
	nr	%r5,%r3
	cr	%r5,%r0
	je	.L219
	j	.L227
.L221:
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	ic	%r4,0(%r1,%r12)
	nr	%r5,%r3
	lhi	%r0,255
	nr	%r0,%r4
	cr	%r5,%r0
	jne	.L227
.L219:
	tml	%r3,255
	jne	.L221
	lhi	%r2,0
	lhi	%r1,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
	br	%r14
.L227:
	.cfi_restore_state
	lr	%r2,%r5
	lhi	%r1,255
	l	%r12,48(%r15)
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
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
	lr	%r3,%r2
	cli	0(%r2),0
	je	.L232
.L231:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L231
	sr	%r2,%r3
	br	%r14
.L232:
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
	ltr	%r4,%r4
	je	.L243
	icm	%r1,1,0(%r2)
	ic	%r5,0(%r3)
	je	.L255
	lhi	%r0,255
	nr	%r0,%r5
	je	.L254
	brct	%r4,.L252
.L254:
	lhi	%r2,255
	nr	%r1,%r2
.L247:
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L243:
	lhi	%r2,0
	br	%r14
.L252:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L241:
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r0,%r1
	jne	.L238
	lr	%r5,%r3
	ahi	%r5,1
	ahi	%r2,1
	icm	%r1,1,0(%r2)
	je	.L256
	lr	%r3,%r5
	lhi	%r0,255
	ic	%r5,0(%r5)
	nr	%r0,%r5
	je	.L253
	brct	%r4,.L241
.L253:
	lhi	%r4,255
	nr	%r1,%r4
.L238:
	lhi	%r0,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L256:
	.cfi_restore_state
	ic	%r5,1(%r3)
	lhi	%r1,0
	lhi	%r0,255
	l	%r12,48(%r15)
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L255:
	lhi	%r1,0
	j	.L247
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
	chi	%r4,1
	bler	%r14
	lhi	%r1,-2
	nr	%r4,%r1
	lr	%r0,%r4
	ar	%r4,%r2
	ahi	%r0,-2
	lhi	%r5,3
	srl	%r0,1
	ahi	%r0,1
	nr	%r5,%r0
	je	.L267
	chi	%r5,1
	je	.L271
	chi	%r5,2
	je	.L272
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L272:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L271:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L267:
	srl	%r0,2
.L260:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	ahi	%r3,8
	ahi	%r2,8
	brct	%r0,.L260
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
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r0,25
	clr	%r2,%r0
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
	lhi	%r1,127
	clr	%r2,%r1
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
	chi	%r2,32
	je	.L285
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L285:
	lhi	%r2,1
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
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L289
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L289:
	lhi	%r2,1
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
	lhi	%r1,9
	clr	%r2,%r1
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
	lhi	%r1,93
	clr	%r2,%r1
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
	lhi	%r1,25
	clr	%r2,%r1
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
	lhi	%r1,94
	clr	%r2,%r1
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
	chi	%r2,32
	je	.L301
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L301:
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
	lhi	%r1,25
	clr	%r2,%r1
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
	larl	%r5,.L312
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L309
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L311
.L309:
	lhi	%r2,1
	br	%r14
.L311:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L309
	a	%r2,.L313-.L312(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L312:
.L313:
	.long	-65529
	.align	2
.text
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
	lhi	%r1,9
	clr	%r2,%r1
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
	larl	%r5,.L325
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L324
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L321
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L326-.L325(%r5)
	jle	.L321
	l	%r4,.L327-.L325(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L321
	l	%r0,.L328-.L325(%r5)
	ar	%r0,%r2
	cl	%r0,.L329-.L325(%r5)
	jh	.L322
	n	%r2,.L330-.L325(%r5)
	x	%r2,.L330-.L325(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L321:
	lhi	%r2,1
	br	%r14
.L324:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L322:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L325:
.L330:
	.long	65534
.L329:
	.long	1048579
.L328:
	.long	-65532
.L327:
	.long	-57344
.L326:
	.long	47061
	.align	2
.text
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
	lr	%r1,%r2
	lhi	%r3,9
	ahi	%r1,-48
	clr	%r1,%r3
	jle	.L333
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L333:
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
	lhi	%r1,127
	nr	%r2,%r1
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
	larl	%r5,.L346
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L341
	kdbr	%f0,%f2
	jnh	.L344
	sdbr	%f0,%f2
	br	%r14
.L344:
	ld	%f0,.L347-.L346(%r5)
	br	%r14
.L341:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L346:
.L347:
	.long	0
	.long	0
	.align	2
.text
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
	larl	%r5,.L357
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L352
	kebr	%f0,%f2
	jnh	.L355
	sebr	%f0,%f2
	br	%r14
.L355:
	le	%f0,.L358-.L357(%r5)
	br	%r14
.L352:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L357:
.L358:
	.long	0
	.align	2
.text
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
	jo	.L367
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L369
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L364
	lhi	%r0,0
.L364:
	tml	%r0,1
	jne	.L367
	ldr	%f2,%f0
.L367:
	ldr	%f0,%f2
	br	%r14
.L369:
	ltr	%r1,%r1
	ber	%r14
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
	jo	.L379
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L381
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L376
	lhi	%r0,0
.L376:
	tml	%r0,1
	jne	.L379
	ler	%f2,%f0
.L379:
	ler	%f0,%f2
	br	%r14
.L381:
	ltr	%r1,%r1
	ber	%r14
	ler	%f0,%f2
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
	st	%r15,60(%r15)
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	.cfi_offset 15, -36
	ahi	%r15,-144
	.cfi_def_cfa_offset 240
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f1,0(%r4)
	ld	%f0,96(%r15)
	std	%f1,112(%r15)
	ld	%f2,104(%r15)
	ld	%f3,8(%r4)
	cxbr	%f0,%f0
	std	%f3,120(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L390
	cxbr	%f0,%f0
	jo	.L384
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L395
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L389
	lhi	%r0,0
.L389:
	tml	%r0,1
	je	.L387
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L388:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L384:
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L395:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L384
.L390:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L387:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L388
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
	jo	.L403
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L406
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L402
	lhi	%r0,0
.L402:
	tml	%r0,1
	bner	%r14
.L403:
	ldr	%f0,%f2
	br	%r14
.L406:
	ltr	%r1,%r1
	bner	%r14
	ldr	%f0,%f2
	br	%r14
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
	jo	.L414
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L417
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L413
	lhi	%r0,0
.L413:
	tml	%r0,1
	bner	%r14
.L414:
	ler	%f0,%f2
	br	%r14
.L417:
	ltr	%r1,%r1
	bner	%r14
	ler	%f0,%f2
	br	%r14
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
	st	%r15,60(%r15)
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	.cfi_offset 15, -36
	ahi	%r15,-144
	.cfi_def_cfa_offset 240
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	ld	%f1,0(%r4)
	ld	%f0,112(%r15)
	std	%f1,96(%r15)
	ld	%f2,120(%r15)
	ld	%f3,8(%r4)
	cxbr	%f0,%f0
	std	%f3,104(%r15)
	jo	.L420
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L426
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L431
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L425
	lhi	%r0,0
.L425:
	tml	%r0,1
	je	.L423
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L424:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L420:
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L431:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L420
	ld	%f8,112(%r15)
	ld	%f10,120(%r15)
	std	%f8,96(%r15)
	std	%f10,104(%r15)
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L423:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L424
.L426:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L420
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
	ltr	%r2,%r2
	je	.L434
	larl	%r4,.LANCHOR1
.L435:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L435
.L434:
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
	larl	%r1,.LANCHOR0
	st	%r2,12(%r1)
	lhi	%r2,0
	st	%r2,8(%r1)
	br	%r14
	.cfi_endproc
.LFE38:
	.size	srand, .-srand
	.align	8
	.align	16
.globl rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r1,.LANCHOR0
	lm	%r4,%r5,8(%r1)
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,4
	slr	%r3,%r5
	lr	%r13,%r3
	slbr	%r2,%r4
	lr	%r12,%r2
	sldl	%r12,6
	slr	%r13,%r3
	lr	%r3,%r13
	slbr	%r12,%r2
	lr	%r2,%r12
	sldl	%r2,7
	alr	%r13,%r3
	alcr	%r12,%r2
	sldl	%r12,2
	alr	%r13,%r5
	lr	%r3,%r13
	alcr	%r12,%r4
	lr	%r2,%r12
	sldl	%r2,6
	slr	%r3,%r13
	slbr	%r2,%r12
	sldl	%r2,7
	alr	%r3,%r5
	alcr	%r2,%r4
	sldl	%r2,2
	alr	%r3,%r5
	lr	%r11,%r3
	alcr	%r2,%r4
	lr	%r10,%r2
	sldl	%r10,3
	slr	%r11,%r3
	lr	%r13,%r11
	slbr	%r10,%r2
	lr	%r12,%r10
	sldl	%r12,3
	slr	%r13,%r11
	lr	%r3,%r13
	slbr	%r12,%r10
	lr	%r2,%r12
	sldl	%r2,6
	slr	%r3,%r13
	slbr	%r2,%r12
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	sldl	%r2,2
	slr	%r3,%r5
	slbr	%r2,%r4
	sldl	%r2,7
	slr	%r3,%r5
	slbr	%r2,%r4
	sldl	%r2,2
	alr	%r3,%r5
	alcr	%r2,%r4
	sldl	%r2,2
	slr	%r3,%r5
	slbr	%r2,%r4
	sldl	%r2,2
	slr	%r3,%r5
	slbr	%r2,%r4
	sldl	%r2,2
	alr	%r3,%r5
	lhi	%r5,1
	alcr	%r2,%r4
	lhi	%r4,0
	alr	%r5,%r3
	lr	%r3,%r5
	alcr	%r4,%r2
	lr	%r2,%r4
	stm	%r2,%r3,8(%r1)
	srdl	%r2,33
	lr	%r2,%r3
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
	ltr	%r3,%r3
	je	.L450
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L450:
	lhi	%r0,0
	st	%r0,4(%r2)
	st	%r0,0(%r2)
	br	%r14
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
	icm	%r1,15,0(%r2)
	je	.L453
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L453:
	icm	%r2,15,4(%r2)
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
	stm	%r7,%r15,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	st	%r4,100(%r15)
	lr	%r10,%r5
	lr	%r9,%r2
	lr	%r7,%r3
	icm	%r13,15,0(%r4)
	je	.L463
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L487
.L475:
	srl	%r11,1
.L465:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L462
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L462
	ar	%r12,%r10
	brct	%r11,.L465
.L463:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L462
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L462:
	lr	%r2,%r8
	lm	%r7,%r15,132(%r15)
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
.L487:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L462
	ar	%r12,%r10
	chi	%r13,1
	jne	.L475
	j	.L463
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
	stm	%r7,%r15,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	icm	%r7,15,0(%r4)
	je	.L490
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L510
.L499:
	srl	%r11,1
.L492:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L489
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L489
	ar	%r12,%r9
	brct	%r11,.L492
.L490:
	lhi	%r8,0
.L489:
	lr	%r2,%r8
	lm	%r7,%r15,124(%r15)
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
.L510:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L489
	ar	%r12,%r9
	chi	%r7,1
	jne	.L499
	j	.L490
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
.L521:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L515
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L515
	chi	%r1,43
	je	.L516
	chi	%r1,45
	je	.L517
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L526
	lr	%r3,%r2
	lhi	%r12,0
.L519:
	lhi	%r2,0
.L523:
	ahi	%r3,1
	lr	%r1,%r2
	lhi	%r5,255
	sll	%r1,2
	nr	%r5,%r4
	ar	%r1,%r2
	ahi	%r5,-48
	ic	%r4,0(%r3)
	lhi	%r0,255
	sll	%r1,1
	nr	%r0,%r4
	lr	%r2,%r1
	sr	%r2,%r5
	ahi	%r0,-48
	lhi	%r11,9
	clr	%r0,%r11
	jle	.L523
	ltr	%r12,%r12
	jne	.L514
	lr	%r2,%r5
	sr	%r2,%r1
.L514:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L515:
	.cfi_restore_state
	ahi	%r2,1
	j	.L521
.L517:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L526
	lhi	%r12,1
	j	.L519
.L516:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L519
.L526:
	lhi	%r2,0
	lm	%r11,%r15,148(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
.L541:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L537
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L537
	chi	%r1,43
	je	.L538
	chi	%r1,45
	je	.L539
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L548
	lr	%r3,%r2
	lhi	%r12,0
.L542:
	lhi	%r2,0
.L545:
	ahi	%r3,1
	lr	%r1,%r2
	lhi	%r5,255
	sll	%r1,2
	nr	%r5,%r4
	ar	%r1,%r2
	ahi	%r5,-48
	ic	%r4,0(%r3)
	lhi	%r0,255
	sll	%r1,1
	nr	%r0,%r4
	lr	%r2,%r1
	sr	%r2,%r5
	ahi	%r0,-48
	lhi	%r11,9
	clr	%r0,%r11
	jle	.L545
	ltr	%r12,%r12
	jne	.L536
	lr	%r2,%r5
	sr	%r2,%r1
.L536:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L537:
	.cfi_restore_state
	ahi	%r2,1
	j	.L541
.L539:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	lr	%r3,%r2
	lhi	%r12,1
	clr	%r11,%r1
	jle	.L542
.L548:
	lhi	%r2,0
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L538:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L548
	lhi	%r12,0
	j	.L542
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
	stm	%r9,%r15,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
.L566:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L560
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L560
	chi	%r3,43
	je	.L561
	chi	%r3,45
	jne	.L580
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L571
	lhi	%r2,1
.L564:
	lhi	%r10,0
	lhi	%r11,0
.L568:
	lhi	%r12,255
	ahi	%r3,1
	nr	%r1,%r12
	ahi	%r1,-48
	lr	%r4,%r10
	lr	%r5,%r11
	sldl	%r4,2
	alr	%r5,%r11
	lr	%r12,%r1
	lhi	%r13,0
	alcr	%r4,%r10
	srda	%r12,32
	ic	%r1,0(%r3)
	lhi	%r0,255
	lhi	%r9,9
	sldl	%r4,1
	lr	%r10,%r4
	lr	%r11,%r5
	slr	%r11,%r13
	slbr	%r10,%r12
	nr	%r0,%r1
	ahi	%r0,-48
	clr	%r0,%r9
	jle	.L568
	ltr	%r2,%r2
	jne	.L559
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L559:
	lr	%r2,%r10
	lr	%r3,%r11
	lm	%r9,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_def_cfa_offset 96
	br	%r14
.L560:
	.cfi_restore_state
	ahi	%r2,1
	j	.L566
.L580:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L571
	lr	%r3,%r2
	lhi	%r2,0
	j	.L564
.L561:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L564
.L571:
	lhi	%r10,0
	lhi	%r11,0
	lr	%r2,%r10
	lr	%r3,%r11
	lm	%r9,%r15,140(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_def_cfa_offset 96
	br	%r14
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
	stm	%r7,%r15,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r12,%r4
	je	.L583
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	j	.L586
.L596:
	je	.L582
	ahi	%r12,-1
	ar	%r11,%r9
	sr	%r12,%r10
	lr	%r8,%r11
	ltr	%r12,%r12
	je	.L583
.L586:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	lr	%r2,%r7
	ar	%r11,%r8
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L596
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L586
.L583:
	lhi	%r11,0
.L582:
	lr	%r2,%r11
	lm	%r7,%r15,124(%r15)
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
	stm	%r7,%r15,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r12,%r4
	je	.L602
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	j	.L599
.L611:
	ahi	%r12,-1
	ar	%r11,%r10
	sra	%r12,1
	lr	%r9,%r11
	ltr	%r12,%r12
	je	.L602
.L599:
	lr	%r7,%r12
	sra	%r7,1
	lr	%r11,%r7
	msr	%r11,%r10
	l	%r4,192(%r15)
	lr	%r2,%r8
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L598
	jh	.L611
	lr	%r12,%r7
	ltr	%r12,%r12
	jne	.L599
.L602:
	lhi	%r11,0
.L598:
	lr	%r2,%r11
	lm	%r7,%r15,124(%r15)
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
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	8
	.align	16
.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r1,0(%r2)
	st	%r0,4(%r2)
	br	%r14
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
	lr	%r4,%r2
	lr	%r5,%r3
	ltr	%r2,%r2
	jl	.L619
.L616:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L619:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L616
	ahi	%r4,-1
	lr	%r3,%r5
	lr	%r2,%r4
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
	stm	%r9,%r15,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	lr	%r11,%r4
	lr	%r10,%r3
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r2,%r3
	lr	%r5,%r6
	lr	%r3,%r11
	brasl	%r14,__divdi3
	stm	%r2,%r3,0(%r12)
	lr	%r4,%r9
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r2,%r12
	stm	%r4,%r5,8(%r12)
	lm	%r9,%r15,132(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_def_cfa_offset 96
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
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r1,0(%r2)
	st	%r0,4(%r2)
	br	%r14
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
	lr	%r4,%r2
	lr	%r5,%r3
	ltr	%r2,%r2
	jl	.L632
.L629:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L632:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L629
	ahi	%r4,-1
	lr	%r3,%r5
	lr	%r2,%r4
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
	stm	%r9,%r15,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	lr	%r11,%r4
	lr	%r10,%r3
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r2,%r3
	lr	%r5,%r6
	lr	%r3,%r11
	brasl	%r14,__divdi3
	stm	%r2,%r3,0(%r12)
	lr	%r4,%r9
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r2,%r12
	stm	%r4,%r5,8(%r12)
	lm	%r9,%r15,132(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_def_cfa_offset 96
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
	j	.L645
.L646:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L645:
	icm	%r1,15,0(%r2)
	jne	.L646
	lhi	%r2,0
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
	l	%r5,0(%r3)
	l	%r4,0(%r2)
	ahi	%r3,-4
	lhi	%r1,4
	cr	%r4,%r5
	je	.L649
	j	.L650
.L651:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L650
.L649:
	ltr	%r4,%r4
	jne	.L651
.L650:
	cr	%r4,%r5
	jl	.L655
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L655:
	lhi	%r2,-1
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
.L659:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L659
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
	icm	%r1,15,0(%r2)
	je	.L666
.L665:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L665
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L666:
	lhi	%r2,0
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
	ltr	%r4,%r4
	je	.L676
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L691
.L679:
	srl	%r4,1
.L670:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L672
	ltr	%r0,%r0
	je	.L672
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L672
	ltr	%r5,%r5
	je	.L672
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L670
.L676:
	lhi	%r2,0
	br	%r14
.L672:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L692
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L691:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L672
	ltr	%r1,%r1
	je	.L672
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L679
	j	.L676
.L692:
	lhi	%r2,-1
	br	%r14
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
	ltr	%r4,%r4
	je	.L698
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L705
	chi	%r5,1
	je	.L716
	chi	%r5,2
	je	.L717
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L717:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L716:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L698
.L705:
	srl	%r1,2
	lr	%r0,%r1
.L695:
	c	%r3,0(%r2)
	ber	%r14
	lr	%r1,%r2
	ahi	%r1,4
	c	%r3,0(%r1)
	lr	%r2,%r1
	ber	%r14
	ahi	%r2,4
	c	%r3,0(%r2)
	ber	%r14
	lr	%r2,%r1
	ahi	%r2,8
	c	%r3,8(%r1)
	ber	%r14
	ahi	%r1,12
	lr	%r2,%r1
	brct	%r0,.L695
.L698:
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
	ltr	%r4,%r4
	je	.L736
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L743
	chi	%r1,1
	je	.L754
	chi	%r1,2
	je	.L755
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L762
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L755:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L762
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L754:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L762
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L736
.L743:
	srl	%r5,2
.L730:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L762
	l	%r1,4(%r2)
	ahi	%r3,4
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L762
	l	%r1,8(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L762
	l	%r1,12(%r2)
	lr	%r3,%r4
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L762
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L730
.L736:
	lhi	%r2,0
	br	%r14
.L762:
	c	%r1,0(%r3)
	jl	.L765
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L765:
	lhi	%r2,-1
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	ltr	%r4,%r4
	je	.L768
	sll	%r4,2
	brasl	%r14,memcpy
.L768:
	lr	%r2,%r12
	lm	%r12,%r15,144(%r15)
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L823
	cr	%r2,%r3
	je	.L782
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L822
	ltr	%r4,%r4
	je	.L782
	l	%r4,.L824-.L823(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L792
	chi	%r5,1
	je	.L808
	chi	%r5,2
	je	.L809
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L809:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L808:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L782
.L792:
	srl	%r4,2
.L779:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-4
	l	%r0,0(%r5,%r3)
	ahi	%r1,-16
	st	%r0,0(%r5,%r2)
	ahi	%r5,-4
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,-4
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	brct	%r4,.L779
.L782:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L822:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L782
	lhi	%r0,3
	nr	%r0,%r4
	je	.L801
	chi	%r0,1
	je	.L806
	chi	%r0,2
	je	.L807
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L807:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L806:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L782
.L801:
	srl	%r4,2
.L777:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L777
	j	.L782
	.section	.rodata
	.align	8
.L823:
.L824:
	.long	1073741823
	.align	2
.text
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
	lr	%r5,%r4
	ahi	%r5,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	lr	%r1,%r2
	nr	%r0,%r4
	je	.L836
	chi	%r0,1
	je	.L840
	chi	%r0,2
	je	.L841
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L841:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L840:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L836:
	srl	%r4,2
.L827:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L827
	br	%r14
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
	clr	%r2,%r3
	jhe	.L850
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L865
	chi	%r5,1
	je	.L878
	chi	%r5,2
	jne	.L895
.L879:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L878:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L865
	br	%r14
.L850:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L874
	chi	%r0,1
	je	.L880
	chi	%r0,2
	je	.L881
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L881:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L880:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L874:
	lr	%r4,%r5
	srl	%r4,2
.L853:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L853
	br	%r14
.L865:
	srl	%r1,2
.L852:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	lr	%r5,%r4
	ahi	%r5,-1
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r4,-4
	brct	%r1,.L852
	br	%r14
.L895:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
	j	.L879
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r0,%r2
	lr	%r13,%r3
	lcr	%r2,%r4
	lr	%r12,%r0
	lr	%r1,%r3
	sldl	%r12,0(%r4)
	srdl	%r0,0(%r2)
	lr	%r2,%r0
	lr	%r3,%r1
	or	%r2,%r12
	or	%r3,%r13
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r0,%r2
	lr	%r13,%r3
	lcr	%r2,%r4
	lr	%r12,%r0
	lr	%r1,%r3
	srdl	%r12,0(%r4)
	sldl	%r0,0(%r2)
	lr	%r2,%r0
	lr	%r3,%r1
	or	%r2,%r12
	or	%r3,%r13
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	larl	%r5,.L913
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L914-.L913(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L913:
.L914:
	.long	65535
	.align	2
.text
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
	larl	%r5,.L917
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L918-.L917(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L917:
.L918:
	.long	65535
	.align	2
.text
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
	lhi	%r1,7
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r5,255
	lhi	%r3,7
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	nr	%r2,%r5
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
	lhi	%r1,7
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r5,255
	lhi	%r3,7
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	nr	%r2,%r5
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
	larl	%r5,.L925
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L926-.L925(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L925:
.L926:
	.long	65535
	.align	2
.text
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
	lr	%r1,%r3
	lrvr	%r3,%r2
	lrvr	%r2,%r1
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
	tml	%r2,1
	jne	.L934
	tml	%r2,2
	jne	.L935
	tml	%r2,4
	jne	.L936
	tml	%r2,8
	jne	.L937
	tml	%r2,16
	jne	.L938
	tml	%r2,32
	jne	.L939
	tml	%r2,64
	jne	.L940
	tml	%r2,128
	jne	.L941
	tml	%r2,256
	jne	.L942
	tml	%r2,512
	jne	.L943
	tml	%r2,1024
	jne	.L944
	tml	%r2,2048
	jne	.L945
	tml	%r2,4096
	jne	.L946
	tml	%r2,8192
	jne	.L947
	tml	%r2,16384
	jne	.L948
	tml	%r2,32768
	jne	.L949
	tmh	%r2,1
	jne	.L950
	tmh	%r2,2
	jne	.L951
	tmh	%r2,4
	jne	.L952
	tmh	%r2,8
	jne	.L953
	tmh	%r2,16
	jne	.L954
	tmh	%r2,32
	jne	.L955
	tmh	%r2,64
	jne	.L956
	tmh	%r2,128
	jne	.L957
	tmh	%r2,256
	jne	.L958
	tmh	%r2,512
	jne	.L959
	tmh	%r2,1024
	jne	.L960
	tmh	%r2,2048
	jne	.L961
	tmh	%r2,4096
	jne	.L962
	tmh	%r2,8192
	jne	.L963
	tmh	%r2,16384
	jne	.L964
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L934:
	lhi	%r2,1
	br	%r14
.L935:
	lhi	%r2,2
	br	%r14
.L946:
	lhi	%r2,13
	br	%r14
.L962:
	lhi	%r2,29
	br	%r14
.L936:
	lhi	%r2,3
	br	%r14
.L937:
	lhi	%r2,4
	br	%r14
.L938:
	lhi	%r2,5
	br	%r14
.L939:
	lhi	%r2,6
	br	%r14
.L940:
	lhi	%r2,7
	br	%r14
.L941:
	lhi	%r2,8
	br	%r14
.L942:
	lhi	%r2,9
	br	%r14
.L943:
	lhi	%r2,10
	br	%r14
.L944:
	lhi	%r2,11
	br	%r14
.L945:
	lhi	%r2,12
	br	%r14
.L947:
	lhi	%r2,14
	br	%r14
.L948:
	lhi	%r2,15
	br	%r14
.L949:
	lhi	%r2,16
	br	%r14
.L950:
	lhi	%r2,17
	br	%r14
.L951:
	lhi	%r2,18
	br	%r14
.L952:
	lhi	%r2,19
	br	%r14
.L953:
	lhi	%r2,20
	br	%r14
.L954:
	lhi	%r2,21
	br	%r14
.L955:
	lhi	%r2,22
	br	%r14
.L956:
	lhi	%r2,23
	br	%r14
.L957:
	lhi	%r2,24
	br	%r14
.L958:
	lhi	%r2,25
	br	%r14
.L959:
	lhi	%r2,26
	br	%r14
.L960:
	lhi	%r2,27
	br	%r14
.L961:
	lhi	%r2,28
	br	%r14
.L963:
	lhi	%r2,30
	br	%r14
.L964:
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
	ltr	%r1,%r2
	je	.L971
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L970:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L970
	br	%r14
.L971:
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
	larl	%r5,.L981
	lhi	%r2,1
	keb	%f0,.L982-.L981(%r5)
	blr	%r14
	keb	%f0,.L983-.L981(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L981:
.L983:
	.long	2139095039
.L982:
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
	larl	%r5,.L989
	kdb	%f0,.L990-.L989(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L991-.L989(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L989:
.L991:
	.long	2146435071
	.long	-1
.L990:
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
	larl	%r5,.L997
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L998-.L997(%r5)
	ld	%f3,.L998-.L997+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L999-.L997(%r5)
	ld	%f3,.L999-.L997+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L997:
.L999:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L998:
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
	cxfbr	%f0,%r3
	std	%f0,0(%r2)
	std	%f2,8(%r2)
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
	larl	%r5,.L1018
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1016
	le	%f1,.L1019-.L1018(%r5)
.L1004:
	tml	%r2,1
	je	.L1005
.L1006:
	meebr	%f0,%f1
.L1005:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L1006
.L1017:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1006
	j	.L1017
.L1016:
	le	%f1,.L1020-.L1018(%r5)
	j	.L1004
	.section	.rodata
	.align	8
.L1018:
.L1020:
	.long	1056964608
.L1019:
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
	larl	%r5,.L1037
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1035
	ld	%f1,.L1038-.L1037(%r5)
.L1023:
	tml	%r2,1
	je	.L1024
.L1025:
	mdbr	%f0,%f1
.L1024:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L1025
.L1036:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1025
	j	.L1036
.L1035:
	ld	%f1,.L1039-.L1037(%r5)
	j	.L1023
	.section	.rodata
	.align	8
.L1037:
.L1039:
	.long	1071644672
	.long	0
.L1038:
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
	larl	%r5,.L1056
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1041
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1041
	ltr	%r4,%r4
	jl	.L1054
	ld	%f0,.L1057-.L1056(%r5)
	ld	%f2,.L1057-.L1056+8(%r5)
.L1042:
	tml	%r4,1
	je	.L1043
.L1044:
	mxbr	%f1,%f0
.L1043:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1041
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L1044
.L1055:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L1044
	j	.L1055
.L1041:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1054:
	ld	%f0,.L1058-.L1056(%r5)
	ld	%f2,.L1058-.L1056+8(%r5)
	j	.L1042
	.section	.rodata
	.align	8
.L1056:
.L1058:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1057:
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
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,7
	lhi	%r1,0
	nr	%r5,%r4
	je	.L1078
	chi	%r5,1
	je	.L1086
	chi	%r5,2
	je	.L1087
	chi	%r5,3
	je	.L1088
	chi	%r5,4
	je	.L1089
	chi	%r5,5
	je	.L1090
	chi	%r5,6
	jne	.L1102
.L1091:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1090:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1089:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1088:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1087:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1086:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r4
	ber	%r14
.L1078:
	srl	%r4,3
.L1061:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	ic	%r5,1(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,3(%r1,%r2)
	ic	%r0,4(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,4(%r1,%r2)
	ic	%r0,5(%r1,%r3)
	ic	%r5,5(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,5(%r1,%r2)
	ic	%r0,6(%r1,%r3)
	ic	%r5,6(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,6(%r1,%r2)
	ic	%r0,7(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,7(%r1,%r2)
	ahi	%r1,8
	brct	%r4,.L1061
	br	%r14
.L1102:
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
	j	.L1091
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
	lr	%r1,%r2
	cli	0(%r2),0
	je	.L1105
.L1106:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1106
.L1105:
	ltr	%r4,%r4
	je	.L1108
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1128
.L1117:
	srl	%r4,1
.L1107:
	ic	%r0,0(%r3)
	stc	%r0,0(%r1)
	tml	%r0,255
	ber	%r14
	ic	%r5,1(%r3)
	stc	%r5,1(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,2
	ahi	%r1,2
	brct	%r4,.L1107
.L1108:
	mvi	0(%r1),0
	br	%r14
.L1128:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1117
	j	.L1108
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
	ltr	%r3,%r3
	lhi	%r2,0
	ber	%r14
	lhi	%r5,3
	lr	%r4,%r3
	nr	%r5,%r3
	je	.L1142
	chi	%r5,1
	je	.L1153
	chi	%r5,2
	je	.L1154
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1154:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1153:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1142:
	srl	%r4,2
.L1131:
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	la	%r5,0(%r2,%r1)
	lr	%r3,%r2
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	lr	%r2,%r3
	ahi	%r2,2
	lhi	%r5,2
	la	%r5,0(%r5,%r1)
	la	%r3,0(%r5,%r3)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1131
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
	icm	%r5,1,0(%r2)
	je	.L1166
.L1170:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1165
.L1164:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1165:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1164
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1170
.L1166:
	lhi	%r2,0
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
.L1174:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L1173
	lr	%r2,%r1
.L1173:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1174
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
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	icm	%r10,1,0(%r3)
	je	.L1178
	lr	%r11,%r3
.L1180:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1180
	slr	%r11,%r3
	jhe	.L1178
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1188
.L1200:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1199
.L1188:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r0,%r4
	jne	.L1200
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1196
.L1184:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1178
.L1185:
	ahi	%r2,1
	j	.L1188
.L1196:
	lhi	%r8,255
	nr	%r4,%r8
	nr	%r1,%r8
	cr	%r4,%r1
	jne	.L1185
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1201
	icm	%r4,1,1(%r12)
	je	.L1185
	lr	%r12,%r8
	brct	%r9,.L1196
	j	.L1184
.L1199:
	lhi	%r2,0
.L1178:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1201:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1185
	j	.L1178
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
	larl	%r5,.L1215
	kdb	%f0,.L1216-.L1215(%r5)
	jl	.L1214
	jnh	.L1207
	kdb	%f2,.L1216-.L1215(%r5)
	jl	.L1206
.L1207:
	br	%r14
.L1214:
	kdb	%f2,.L1216-.L1215(%r5)
	jnh	.L1207
.L1206:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1215:
.L1216:
	.long	0
	.long	0
	.align	2
.text
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
	ltr	%r5,%r5
	lr	%r1,%r2
	ber	%r14
	clr	%r3,%r5
	jl	.L1224
	stm	%r9,%r12,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	sr	%r3,%r5
	alr	%r3,%r2
	lr	%r12,%r3
	jnle	.L1225
	lhi	%r11,0
	ic	%r11,0(%r4)
	j	.L1222
.L1219:
	clr	%r12,%r1
	jl	.L1225
.L1222:
	ic	%r0,0(%r1)
	lr	%r2,%r1
	ahi	%r1,1
	lhi	%r3,255
	nr	%r0,%r3
	cr	%r0,%r11
	jne	.L1219
	chi	%r5,1
	je	.L1217
	lhi	%r3,1
	lr	%r0,%r5
	lhi	%r10,3
	sr	%r0,%r3
	nr	%r10,%r0
	je	.L1233
	chi	%r10,1
	je	.L1243
	chi	%r10,2
	jne	.L1254
.L1244:
	ic	%r9,0(%r3,%r4)
	la	%r10,0(%r3,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1219
	ahi	%r3,1
.L1243:
	ic	%r9,0(%r3,%r4)
	la	%r10,0(%r3,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1219
	ahi	%r3,1
	cr	%r5,%r3
	je	.L1217
.L1233:
	srl	%r0,2
.L1220:
	ic	%r9,0(%r3,%r4)
	la	%r10,0(%r3,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1219
	ic	%r9,1(%r3,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r3)
	clm	%r9,1,0(%r10)
	jne	.L1219
	ic	%r9,2(%r3,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r3)
	clm	%r9,1,0(%r10)
	jne	.L1219
	ic	%r9,3(%r3,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r3)
	clm	%r9,1,0(%r10)
	jne	.L1219
	ahi	%r3,4
	brct	%r0,.L1220
.L1217:
	lm	%r9,%r12,36(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
.L1254:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r3,2
	je	.L1244
	j	.L1219
.L1225:
	lhi	%r2,0
	lm	%r9,%r12,36(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
.L1224:
	lhi	%r2,0
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r11,%r2
	ltr	%r12,%r4
	je	.L1257
	brasl	%r14,memmove
.L1257:
	lr	%r2,%r11
	ar	%r2,%r12
	lm	%r11,%r15,140(%r15)
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
	larl	%r5,.L1290
	kdb	%f0,.L1291-.L1290(%r5)
	jl	.L1286
	kdb	%f0,.L1292-.L1290(%r5)
	jnhe	.L1287
	lhi	%r3,0
.L1266:
	lhi	%r0,0
.L1272:
	ahi	%r0,1
	mdb	%f0,.L1293-.L1290(%r5)
	kdb	%f0,.L1292-.L1290(%r5)
	jhe	.L1272
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1289:
	lcdbr	%f0,%f0
	br	%r14
.L1287:
	kdb	%f0,.L1293-.L1290(%r5)
	jnl	.L1269
	cdb	%f0,.L1291-.L1290(%r5)
	jne	.L1278
.L1269:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1286:
	lcdbr	%f2,%f0
	kdb	%f0,.L1294-.L1290(%r5)
	jnle	.L1288
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1266
.L1288:
	kdb	%f0,.L1295-.L1290(%r5)
	jnh	.L1269
	lhi	%r3,1
.L1267:
	ldr	%f0,%f2
	lhi	%r0,0
.L1274:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1293-.L1290(%r5)
	jl	.L1274
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1289
	br	%r14
.L1278:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1267
	.section	.rodata
	.align	8
.L1290:
.L1295:
	.long	-1075838976
	.long	0
.L1294:
	.long	-1074790400
	.long	0
.L1293:
	.long	1071644672
	.long	0
.L1292:
	.long	1072693248
	.long	0
.L1291:
	.long	0
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
	lr	%r0,%r2
	or	%r2,%r3
	je	.L1300
	stm	%r7,%r13,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r1,%r3
	lr	%r12,%r4
	lr	%r13,%r5
	lhi	%r4,0
	lhi	%r5,0
.L1299:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1302
	ahi	%r2,-1
.L1302:
	srdl	%r0,1
	lr	%r8,%r2
	nr	%r8,%r12
	lr	%r9,%r3
	nr	%r9,%r13
	alr	%r5,%r9
	lr	%r7,%r0
	alcr	%r4,%r8
	sldl	%r12,1
	or	%r7,%r1
	jne	.L1299
	lr	%r2,%r4
	lr	%r3,%r5
	lm	%r7,%r13,28(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L1300:
	lhi	%r2,0
	lhi	%r3,0
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
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L1310
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L1309:
	ltr	%r3,%r3
	jl	.L1310
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1311
	ltr	%r3,%r3
	jl	.L1310
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1311
	ltr	%r3,%r3
	jl	.L1310
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1311
	ltr	%r3,%r3
	jl	.L1310
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1311
	ahi	%r2,-4
	brct	%r0,.L1309
	ltr	%r4,%r4
	ber	%r14
.L1331:
	lr	%r2,%r5
	br	%r14
.L1311:
	ltr	%r1,%r1
	je	.L1318
.L1310:
	lhi	%r2,0
.L1315:
	clr	%r5,%r3
	jl	.L1314
	sr	%r5,%r3
	or	%r2,%r1
.L1314:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1315
	ltr	%r4,%r4
	ber	%r14
	j	.L1331
.L1318:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1331
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
	ltr	%r2,%r2
	je	.L1335
	stm	%r14,%r15,56(%r15)
	sll	%r2,8
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	brasl	%r14,__clzsi2
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	ahi	%r2,-1
	br	%r14
.L1335:
	lhi	%r2,7
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
	lr	%r4,%r2
	lr	%r0,%r2
	lr	%r1,%r3
	srda	%r0,63
	lr	%r5,%r3
	xr	%r2,%r0
	xr	%r3,%r1
	cr	%r4,%r0
	je	.L1350
.L1345:
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	brasl	%r14,__clzdi2
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	ahi	%r2,-1
	br	%r14
.L1350:
	cr	%r5,%r1
	jne	.L1345
	lhi	%r2,63
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
	ltr	%r1,%r2
	je	.L1355
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r3
	lr	%r4,%r1
	lr	%r5,%r3
	srl	%r4,1
	sll	%r5,1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,1
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,2
	srl	%r4,2
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,3
	srl	%r4,3
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,4
	srl	%r4,4
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,5
	srl	%r4,5
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,6
	srl	%r4,6
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,7
	srl	%r4,7
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,8
	srl	%r4,8
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,9
	srl	%r4,9
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,10
	srl	%r4,10
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,11
	srl	%r4,11
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,12
	srl	%r4,12
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,13
	srl	%r4,13
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,14
	srl	%r4,14
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,15
	srl	%r4,15
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,16
	srl	%r4,16
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,17
	srl	%r4,17
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,18
	srl	%r4,18
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,19
	srl	%r4,19
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,20
	srl	%r4,20
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,21
	srl	%r4,21
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,22
	srl	%r4,22
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,23
	srl	%r4,23
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,24
	srl	%r4,24
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,25
	srl	%r4,25
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,26
	srl	%r4,26
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,27
	srl	%r4,27
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,28
	srl	%r4,28
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,29
	srl	%r4,29
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,30
	srl	%r4,30
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	sll	%r3,31
	lcr	%r0,%r4
	sra	%r1,31
	nr	%r0,%r5
	nr	%r1,%r3
	ar	%r0,%r2
	ar	%r1,%r0
	lr	%r2,%r1
	br	%r14
.L1355:
	lhi	%r2,0
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
	lhi	%r1,-8
	nr	%r1,%r4
	lr	%r5,%r4
	clr	%r2,%r3
	srl	%r5,3
	jl	.L1451
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1512
.L1451:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1450
	sll	%r5,3
	lr	%r0,%r5
	ahi	%r0,-8
	lr	%r12,%r5
	srl	%r0,3
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1474
	chi	%r11,1
	je	.L1490
	chi	%r11,2
	je	.L1491
	lm	%r10,%r11,0(%r3)
	lhi	%r5,8
	stm	%r10,%r11,0(%r2)
.L1491:
	l	%r13,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1490:
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1450
.L1474:
	srl	%r0,2
.L1454:
	l	%r12,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r12,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	l	%r10,8(%r5,%r3)
	l	%r13,12(%r5,%r3)
	st	%r10,8(%r5,%r2)
	st	%r13,12(%r5,%r2)
	l	%r12,16(%r5,%r3)
	l	%r11,20(%r5,%r3)
	st	%r12,16(%r5,%r2)
	st	%r11,20(%r5,%r2)
	l	%r10,24(%r5,%r3)
	l	%r13,28(%r5,%r3)
	st	%r10,24(%r5,%r2)
	st	%r13,28(%r5,%r2)
	ahi	%r5,32
	brct	%r0,.L1454
.L1450:
	clr	%r4,%r1
	jle	.L1447
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1465
	chi	%r0,1
	je	.L1492
	chi	%r0,2
	je	.L1493
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1493:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1492:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1447
.L1465:
	lr	%r4,%r5
	srl	%r4,2
.L1455:
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	stc	%r12,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1455
.L1447:
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1512:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1483
	chi	%r5,1
	je	.L1488
	chi	%r5,2
	je	.L1489
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1489:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1488:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1483:
	srl	%r4,2
.L1452:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-4
	brct	%r4,.L1452
	br	%r14
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
	lr	%r1,%r4
	clr	%r2,%r3
	srl	%r1,1
	jl	.L1518
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1567
.L1518:
	ltr	%r1,%r1
	je	.L1568
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	sll	%r1,1
	lr	%r5,%r1
	ahi	%r5,-2
	lr	%r0,%r1
	srl	%r5,1
	lhi	%r12,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r12,%r5
	je	.L1533
	chi	%r12,1
	je	.L1549
	chi	%r12,2
	je	.L1550
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lhi	%r1,2
.L1550:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1549:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1517
.L1533:
	srl	%r5,2
.L1521:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1521
.L1517:
	tml	%r4,1
	je	.L1514
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1514:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1567:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1542
	chi	%r0,1
	je	.L1547
	chi	%r0,2
	je	.L1548
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1548:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1547:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1542:
	srl	%r4,2
.L1519:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-4
	brct	%r4,.L1519
	br	%r14
.L1568:
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
	br	%r14
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
	lhi	%r1,-4
	nr	%r1,%r4
	lr	%r5,%r4
	clr	%r2,%r3
	srl	%r5,2
	jl	.L1574
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1635
.L1574:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1573
	sll	%r5,2
	lr	%r0,%r5
	ahi	%r0,-4
	lr	%r12,%r5
	srl	%r0,2
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1597
	chi	%r11,1
	je	.L1613
	chi	%r11,2
	je	.L1614
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lhi	%r5,4
.L1614:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1613:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1573
.L1597:
	srl	%r0,2
.L1577:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r11,12(%r5,%r3)
	st	%r11,12(%r5,%r2)
	ahi	%r5,16
	brct	%r0,.L1577
.L1573:
	clr	%r4,%r1
	jle	.L1570
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1588
	chi	%r0,1
	je	.L1615
	chi	%r0,2
	je	.L1616
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1616:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1615:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1570
.L1588:
	lr	%r4,%r5
	srl	%r4,2
.L1578:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r11,2(%r1,%r3)
	stc	%r11,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1578
.L1570:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1635:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1606
	chi	%r5,1
	je	.L1611
	chi	%r5,2
	je	.L1612
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1612:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1611:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1606:
	srl	%r4,2
.L1575:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-4
	brct	%r4,.L1575
	br	%r14
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
	lr	%r4,%r2
	lhi	%r5,0
	srda	%r4,32
	dr	%r4,%r3
	lr	%r2,%r4
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
	larl	%r5,.L1642
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1643-.L1642(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1642:
.L1643:
	.long	1106247680
	.long	0
	.align	2
.text
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
	larl	%r5,.L1647
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1645
	adb	%f0,.L1648-.L1647(%r5)
.L1645:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1647:
.L1648:
	.long	1106247680
	.long	0
	.align	2
.text
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
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	brasl	%r14,__floatundidf
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
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
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	brasl	%r14,__floatundisf
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
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
	lr	%r1,%r3
	lr	%r5,%r2
	lhi	%r2,0
	lr	%r3,%r5
	dlr	%r2,%r1
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
	ltr	%r2,%r2
	jne	.L1660
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L1661
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L1662
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L1663
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L1664
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L1665
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L1666
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L1667
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L1668
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L1669
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L1670
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L1671
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L1672
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L1673
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1660:
	lhi	%r2,0
	br	%r14
.L1671:
	lhi	%r2,12
	br	%r14
.L1661:
	lhi	%r2,2
	br	%r14
.L1662:
	lhi	%r2,3
	br	%r14
.L1663:
	lhi	%r2,4
	br	%r14
.L1664:
	lhi	%r2,5
	br	%r14
.L1665:
	lhi	%r2,6
	br	%r14
.L1666:
	lhi	%r2,7
	br	%r14
.L1667:
	lhi	%r2,8
	br	%r14
.L1668:
	lhi	%r2,9
	br	%r14
.L1669:
	lhi	%r2,10
	br	%r14
.L1670:
	lhi	%r2,11
	br	%r14
.L1672:
	lhi	%r2,13
	br	%r14
.L1673:
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
	tml	%r2,1
	jne	.L1680
	tml	%r2,2
	jne	.L1681
	tml	%r2,4
	jne	.L1682
	tml	%r2,8
	jne	.L1683
	tml	%r2,16
	jne	.L1684
	tml	%r2,32
	jne	.L1685
	tml	%r2,64
	jne	.L1686
	tml	%r2,128
	jne	.L1687
	tml	%r2,256
	jne	.L1688
	tml	%r2,512
	jne	.L1689
	tml	%r2,1024
	jne	.L1690
	tml	%r2,2048
	jne	.L1691
	tml	%r2,4096
	jne	.L1692
	tml	%r2,8192
	jne	.L1693
	tml	%r2,16384
	jne	.L1694
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1680:
	lhi	%r2,0
	br	%r14
.L1681:
	lhi	%r2,1
	br	%r14
.L1692:
	lhi	%r2,12
	br	%r14
.L1682:
	lhi	%r2,2
	br	%r14
.L1683:
	lhi	%r2,3
	br	%r14
.L1684:
	lhi	%r2,4
	br	%r14
.L1685:
	lhi	%r2,5
	br	%r14
.L1686:
	lhi	%r2,6
	br	%r14
.L1687:
	lhi	%r2,7
	br	%r14
.L1688:
	lhi	%r2,8
	br	%r14
.L1689:
	lhi	%r2,9
	br	%r14
.L1690:
	lhi	%r2,10
	br	%r14
.L1691:
	lhi	%r2,11
	br	%r14
.L1693:
	lhi	%r2,13
	br	%r14
.L1694:
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
	larl	%r5,.L1706
	keb	%f0,.L1707-.L1706(%r5)
	jhe	.L1705
	cfebr	%r2,5,%f0
	br	%r14
.L1705:
	seb	%f0,.L1707-.L1706(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1708-.L1706(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1706:
.L1707:
	.long	1191182336
.L1708:
	.long	32768
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
	lr	%r1,%r2
	lhi	%r3,1
	lr	%r0,%r1
	lhi	%r5,1
	sra	%r0,2
	lhi	%r4,1
	nr	%r0,%r5
	nr	%r4,%r1
	sra	%r2,1
	lhi	%r5,1
	nr	%r2,%r3
	lhi	%r3,1
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,3
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,4
	nr	%r0,%r5
	ar	%r2,%r4
	lhi	%r3,1
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r1
	sra	%r4,5
	sra	%r0,6
	nr	%r4,%r3
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lhi	%r3,1
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r1
	sra	%r4,7
	sra	%r0,8
	nr	%r4,%r3
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lhi	%r3,1
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r1
	sra	%r4,9
	sra	%r0,10
	nr	%r4,%r3
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lhi	%r3,1
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r1
	sra	%r4,11
	sra	%r0,12
	nr	%r4,%r3
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	lr	%r0,%r1
	sra	%r1,15
	sra	%r4,13
	lhi	%r3,1
	sra	%r0,14
	nr	%r4,%r3
	lhi	%r5,1
	ar	%r2,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	ar	%r2,%r1
	lhi	%r1,1
	nr	%r2,%r1
	br	%r14
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
	lhi	%r4,1
	lr	%r0,%r2
	lhi	%r5,1
	sra	%r0,2
	lhi	%r3,1
	nr	%r0,%r5
	nr	%r3,%r2
	lr	%r1,%r2
	lhi	%r5,1
	sra	%r1,1
	nr	%r1,%r4
	lhi	%r4,1
	ar	%r1,%r3
	lr	%r3,%r2
	ar	%r1,%r0
	sra	%r3,3
	lr	%r0,%r2
	nr	%r3,%r4
	sra	%r0,4
	nr	%r0,%r5
	ar	%r1,%r3
	lhi	%r4,1
	ar	%r1,%r0
	lr	%r3,%r2
	lr	%r0,%r2
	sra	%r3,5
	sra	%r0,6
	nr	%r3,%r4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r3
	lhi	%r4,1
	ar	%r1,%r0
	lr	%r3,%r2
	lr	%r0,%r2
	sra	%r3,7
	sra	%r0,8
	nr	%r3,%r4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r3
	lhi	%r4,1
	ar	%r1,%r0
	lr	%r3,%r2
	lr	%r0,%r2
	sra	%r3,9
	sra	%r0,10
	nr	%r3,%r4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r3
	lhi	%r4,1
	ar	%r1,%r0
	lr	%r3,%r2
	lr	%r0,%r2
	sra	%r3,11
	sra	%r0,12
	nr	%r3,%r4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r3
	lhi	%r4,1
	ar	%r1,%r0
	lr	%r3,%r2
	lr	%r0,%r2
	sra	%r3,13
	sra	%r2,15
	nr	%r3,%r4
	sra	%r0,14
	ar	%r1,%r3
	lhi	%r5,1
	lr	%r3,%r2
	nr	%r0,%r5
	ar	%r1,%r0
	lr	%r2,%r1
	ar	%r2,%r3
	br	%r14
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
	.align	16
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB166:
	.cfi_startproc
	ltr	%r1,%r2
	je	.L1716
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r3
	lr	%r4,%r1
	lr	%r5,%r3
	srl	%r4,1
	sll	%r5,1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,1
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,2
	srl	%r4,2
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,3
	srl	%r4,3
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,4
	srl	%r4,4
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,5
	srl	%r4,5
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,6
	srl	%r4,6
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,7
	srl	%r4,7
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,8
	srl	%r4,8
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,9
	srl	%r4,9
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,10
	srl	%r4,10
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,11
	srl	%r4,11
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,12
	srl	%r4,12
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,13
	srl	%r4,13
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,14
	srl	%r4,14
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,15
	srl	%r4,15
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,16
	srl	%r4,16
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,17
	srl	%r4,17
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,18
	srl	%r4,18
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,19
	srl	%r4,19
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,20
	srl	%r4,20
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,21
	srl	%r4,21
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,22
	srl	%r4,22
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,23
	srl	%r4,23
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,24
	srl	%r4,24
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,25
	srl	%r4,25
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,26
	srl	%r4,26
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,27
	srl	%r4,27
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,28
	srl	%r4,28
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,29
	srl	%r4,29
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r3
	lr	%r4,%r1
	sll	%r5,30
	srl	%r4,30
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	sll	%r3,31
	lcr	%r0,%r4
	sra	%r1,31
	nr	%r0,%r5
	nr	%r1,%r3
	ar	%r0,%r2
	ar	%r1,%r0
	lr	%r2,%r1
	br	%r14
.L1716:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE166:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
	.align	16
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	ltr	%r1,%r2
	je	.L1812
	ltr	%r3,%r3
	je	.L1812
	lhi	%r2,1
	nr	%r2,%r3
	lcr	%r2,%r2
	nr	%r2,%r1
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,1
	srl	%r4,1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,1
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,2
	srl	%r4,2
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,3
	srl	%r4,3
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,4
	srl	%r4,4
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,5
	srl	%r4,5
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,6
	srl	%r4,6
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,7
	srl	%r4,7
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,8
	srl	%r4,8
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,9
	srl	%r4,9
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,10
	srl	%r4,10
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,11
	srl	%r4,11
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,12
	srl	%r4,12
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,13
	srl	%r4,13
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,14
	srl	%r4,14
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,15
	srl	%r4,15
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,16
	srl	%r4,16
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,17
	srl	%r4,17
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,18
	srl	%r4,18
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,19
	srl	%r4,19
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,20
	srl	%r4,20
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,21
	srl	%r4,21
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,22
	srl	%r4,22
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,23
	srl	%r4,23
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,24
	srl	%r4,24
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,25
	srl	%r4,25
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,26
	srl	%r4,26
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,27
	srl	%r4,27
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,28
	srl	%r4,28
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,29
	srl	%r4,29
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	lcr	%r4,%r4
	nr	%r4,%r5
	ar	%r2,%r4
	lr	%r5,%r1
	lr	%r4,%r3
	sll	%r5,30
	srl	%r4,30
	ltr	%r4,%r4
	ber	%r14
	nr	%r4,%r0
	sra	%r3,31
	lcr	%r0,%r4
	sll	%r1,31
	nr	%r0,%r5
	nr	%r1,%r3
	ar	%r0,%r2
	ar	%r1,%r0
	lr	%r2,%r1
	br	%r14
.L1812:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
	.align	16
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB162:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r2,%r3
	jle	.L1906
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L1905:
	ltr	%r3,%r3
	jl	.L1906
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1907
	ltr	%r3,%r3
	jl	.L1906
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1907
	ltr	%r3,%r3
	jl	.L1906
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1907
	ltr	%r3,%r3
	jl	.L1906
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1907
	ahi	%r2,-4
	brct	%r0,.L1905
	ltr	%r4,%r4
	ber	%r14
.L1927:
	lr	%r2,%r5
	br	%r14
.L1907:
	ltr	%r1,%r1
	je	.L1914
.L1906:
	lhi	%r2,0
.L1911:
	clr	%r5,%r3
	jl	.L1910
	sr	%r5,%r3
	or	%r2,%r1
.L1910:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1911
	ltr	%r4,%r4
	ber	%r14
	j	.L1927
.L1914:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1927
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
	.align	16
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	kebr	%f0,%f2
	jl	.L1932
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1932:
	lhi	%r2,-1
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
	jl	.L1937
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1937:
	lhi	%r2,-1
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
	mr	%r2,%r2
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
	mlr	%r2,%r2
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
	jl	.L2047
	je	.L1950
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r3,%r4
	sra	%r1,1
	sll	%r3,1
	ber	%r14
	lhi	%r5,0
.L1945:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2044
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r12,1
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,2
	sra	%r4,2
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L1948
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,28
	sra	%r4,28
	je	.L1948
	nr	%r4,%r12
	sra	%r1,29
	lcr	%r12,%r4
	lcr	%r1,%r1
	nr	%r12,%r0
	sll	%r3,29
	ar	%r12,%r2
	nr	%r3,%r1
	lr	%r2,%r12
	ar	%r2,%r3
.L1948:
	ltr	%r5,%r5
	je	.L1943
	lcr	%r2,%r2
.L1943:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2047:
	lhi	%r0,1
	nr	%r0,%r1
	lcr	%r2,%r0
	nr	%r2,%r4
	lcr	%r1,%r1
	lr	%r3,%r4
	lhi	%r5,1
	sll	%r3,1
	sra	%r1,1
	jne	.L1945
	lcr	%r2,%r2
	br	%r14
.L1950:
	lhi	%r2,0
	br	%r14
.L2044:
	ltr	%r5,%r5
	ber	%r14
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L2097
	ltr	%r4,%r2
	jl	.L2095
	lhi	%r0,0
.L2050:
	ltr	%r3,%r3
	jhe	.L2051
	lhi	%r1,1
	lcr	%r3,%r3
	xr	%r0,%r1
.L2051:
	lr	%r5,%r4
	lr	%r1,%r3
	clr	%r4,%r3
	jle	.L2058
	sll	%r1,1
	clr	%r4,%r1
	jle	.L2059
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L2060
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L2061
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L2062
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L2063
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L2064
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L2065
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L2066
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L2067
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L2068
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L2069
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L2070
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L2071
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L2072
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L2073
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L2074
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L2075
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L2076
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L2077
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L2078
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L2079
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L2080
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L2081
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L2082
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L2083
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L2084
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L2085
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L2086
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L2087
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L2088
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L2096
.L2053:
	ltr	%r0,%r0
	je	.L2049
	lcr	%r2,%r2
.L2049:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2095:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r0,1
	j	.L2050
.L2076:
	l	%r3,.L2098-.L2097(%r13)
.L2052:
	lhi	%r2,0
.L2055:
	clr	%r5,%r1
	jl	.L2054
	sr	%r5,%r1
	or	%r2,%r3
.L2054:
	srl	%r3,1
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L2055
	j	.L2053
.L2058:
	lhi	%r3,1
	j	.L2052
.L2059:
	lhi	%r3,2
	j	.L2052
.L2061:
	lhi	%r3,8
	j	.L2052
.L2060:
	lhi	%r3,4
	j	.L2052
.L2062:
	lhi	%r3,16
	j	.L2052
.L2063:
	lhi	%r3,32
	j	.L2052
.L2065:
	lhi	%r3,128
	j	.L2052
.L2064:
	lhi	%r3,64
	j	.L2052
.L2066:
	lhi	%r3,256
	j	.L2052
.L2067:
	lhi	%r3,512
	j	.L2052
.L2068:
	lhi	%r3,1024
	j	.L2052
.L2069:
	lhi	%r3,2048
	j	.L2052
.L2071:
	lhi	%r3,8192
	j	.L2052
.L2070:
	lhi	%r3,4096
	j	.L2052
.L2073:
	l	%r3,.L2099-.L2097(%r13)
	j	.L2052
.L2072:
	lhi	%r3,16384
	j	.L2052
.L2075:
	l	%r3,.L2100-.L2097(%r13)
	j	.L2052
.L2074:
	l	%r3,.L2101-.L2097(%r13)
	j	.L2052
.L2077:
	l	%r3,.L2102-.L2097(%r13)
	j	.L2052
.L2078:
	l	%r3,.L2103-.L2097(%r13)
	j	.L2052
.L2079:
	l	%r3,.L2104-.L2097(%r13)
	j	.L2052
.L2080:
	l	%r3,.L2105-.L2097(%r13)
	j	.L2052
.L2081:
	l	%r3,.L2106-.L2097(%r13)
	j	.L2052
.L2082:
	l	%r3,.L2107-.L2097(%r13)
	j	.L2052
.L2083:
	l	%r3,.L2108-.L2097(%r13)
	j	.L2052
.L2084:
	l	%r3,.L2109-.L2097(%r13)
	j	.L2052
.L2085:
	l	%r3,.L2110-.L2097(%r13)
	j	.L2052
.L2096:
	l	%r1,.L2111-.L2097(%r13)
	lr	%r3,%r1
	j	.L2052
.L2087:
	l	%r3,.L2112-.L2097(%r13)
	j	.L2052
.L2086:
	l	%r3,.L2113-.L2097(%r13)
	j	.L2052
.L2088:
	l	%r3,.L2114-.L2097(%r13)
	j	.L2052
	.section	.rodata
	.align	8
.L2097:
.L2114:
	.long	1073741824
.L2113:
	.long	268435456
.L2112:
	.long	536870912
.L2111:
	.long	-2147483648
.L2110:
	.long	134217728
.L2109:
	.long	67108864
.L2108:
	.long	33554432
.L2107:
	.long	16777216
.L2106:
	.long	8388608
.L2105:
	.long	4194304
.L2104:
	.long	2097152
.L2103:
	.long	1048576
.L2102:
	.long	524288
.L2101:
	.long	65536
.L2100:
	.long	131072
.L2099:
	.long	32768
.L2098:
	.long	262144
	.align	2
.text
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L2162
	ltr	%r2,%r2
	jl	.L2160
	lhi	%r4,0
.L2116:
	lpr	%r1,%r3
	clr	%r2,%r1
	lr	%r3,%r2
	jle	.L2123
	lr	%r5,%r1
	sll	%r5,1
	clr	%r2,%r5
	jle	.L2124
	lr	%r0,%r1
	sll	%r0,2
	clr	%r2,%r0
	jle	.L2125
	lr	%r5,%r1
	sll	%r5,3
	clr	%r2,%r5
	jle	.L2126
	lr	%r0,%r1
	sll	%r0,4
	clr	%r2,%r0
	jle	.L2127
	lr	%r5,%r1
	sll	%r5,5
	clr	%r2,%r5
	jle	.L2128
	lr	%r0,%r1
	sll	%r0,6
	clr	%r2,%r0
	jle	.L2129
	lr	%r5,%r1
	sll	%r5,7
	clr	%r2,%r5
	jle	.L2130
	lr	%r0,%r1
	sll	%r0,8
	clr	%r2,%r0
	jle	.L2131
	lr	%r5,%r1
	sll	%r5,9
	clr	%r2,%r5
	jle	.L2132
	lr	%r0,%r1
	sll	%r0,10
	clr	%r2,%r0
	jle	.L2133
	lr	%r5,%r1
	sll	%r5,11
	clr	%r2,%r5
	jle	.L2134
	lr	%r0,%r1
	sll	%r0,12
	clr	%r2,%r0
	jle	.L2135
	lr	%r5,%r1
	sll	%r5,13
	clr	%r2,%r5
	jle	.L2136
	lr	%r0,%r1
	sll	%r0,14
	clr	%r2,%r0
	jle	.L2137
	lr	%r5,%r1
	sll	%r5,15
	clr	%r2,%r5
	jle	.L2138
	lr	%r0,%r1
	sll	%r0,16
	clr	%r2,%r0
	jle	.L2139
	lr	%r5,%r1
	sll	%r5,17
	clr	%r2,%r5
	jle	.L2140
	lr	%r0,%r1
	sll	%r0,18
	clr	%r2,%r0
	jle	.L2141
	lr	%r5,%r1
	sll	%r5,19
	clr	%r2,%r5
	jle	.L2142
	lr	%r0,%r1
	sll	%r0,20
	clr	%r2,%r0
	jle	.L2143
	lr	%r5,%r1
	sll	%r5,21
	clr	%r2,%r5
	jle	.L2144
	lr	%r0,%r1
	sll	%r0,22
	clr	%r2,%r0
	jle	.L2145
	lr	%r5,%r1
	sll	%r5,23
	clr	%r2,%r5
	jle	.L2146
	lr	%r0,%r1
	sll	%r0,24
	clr	%r2,%r0
	jle	.L2147
	lr	%r5,%r1
	sll	%r5,25
	clr	%r2,%r5
	jle	.L2148
	lr	%r0,%r1
	sll	%r0,26
	clr	%r2,%r0
	jle	.L2149
	lr	%r5,%r1
	sll	%r5,27
	clr	%r2,%r5
	jle	.L2150
	lr	%r0,%r1
	sll	%r0,28
	clr	%r2,%r0
	jle	.L2151
	lr	%r5,%r1
	sll	%r5,29
	clr	%r2,%r5
	jle	.L2152
	lr	%r0,%r1
	sll	%r0,30
	clr	%r2,%r0
	jle	.L2153
	sll	%r1,31
	clr	%r2,%r1
	jle	.L2161
.L2118:
	ltr	%r4,%r4
	je	.L2115
	lcr	%r2,%r2
.L2115:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2160:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r4,1
	j	.L2116
.L2141:
	l	%r2,.L2163-.L2162(%r13)
	lr	%r1,%r0
.L2120:
	clr	%r3,%r1
	jl	.L2119
	sr	%r3,%r1
.L2119:
	srl	%r2,1
	srl	%r1,1
	ltr	%r2,%r2
	jne	.L2120
	lr	%r2,%r3
	j	.L2118
.L2123:
	lhi	%r2,1
	j	.L2120
.L2124:
	lr	%r1,%r5
	lhi	%r2,2
	j	.L2120
.L2126:
	lr	%r1,%r5
	lhi	%r2,8
	j	.L2120
.L2125:
	lr	%r1,%r0
	lhi	%r2,4
	j	.L2120
.L2127:
	lr	%r1,%r0
	lhi	%r2,16
	j	.L2120
.L2128:
	lr	%r1,%r5
	lhi	%r2,32
	j	.L2120
.L2130:
	lr	%r1,%r5
	lhi	%r2,128
	j	.L2120
.L2129:
	lr	%r1,%r0
	lhi	%r2,64
	j	.L2120
.L2131:
	lr	%r1,%r0
	lhi	%r2,256
	j	.L2120
.L2132:
	lr	%r1,%r5
	lhi	%r2,512
	j	.L2120
.L2133:
	lr	%r1,%r0
	lhi	%r2,1024
	j	.L2120
.L2134:
	lr	%r1,%r5
	lhi	%r2,2048
	j	.L2120
.L2136:
	lr	%r1,%r5
	lhi	%r2,8192
	j	.L2120
.L2135:
	lr	%r1,%r0
	lhi	%r2,4096
	j	.L2120
.L2138:
	l	%r2,.L2164-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2137:
	lr	%r1,%r0
	lhi	%r2,16384
	j	.L2120
.L2140:
	l	%r2,.L2165-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2139:
	l	%r2,.L2166-.L2162(%r13)
	lr	%r1,%r0
	j	.L2120
.L2142:
	l	%r2,.L2167-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2143:
	l	%r2,.L2168-.L2162(%r13)
	lr	%r1,%r0
	j	.L2120
.L2144:
	l	%r2,.L2169-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2145:
	l	%r2,.L2170-.L2162(%r13)
	lr	%r1,%r0
	j	.L2120
.L2146:
	l	%r2,.L2171-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2147:
	l	%r2,.L2172-.L2162(%r13)
	lr	%r1,%r0
	j	.L2120
.L2148:
	l	%r2,.L2173-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2149:
	l	%r2,.L2174-.L2162(%r13)
	lr	%r1,%r0
	j	.L2120
.L2150:
	l	%r2,.L2175-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2161:
	l	%r1,.L2176-.L2162(%r13)
	lr	%r2,%r1
	j	.L2120
.L2152:
	l	%r2,.L2177-.L2162(%r13)
	lr	%r1,%r5
	j	.L2120
.L2151:
	l	%r2,.L2178-.L2162(%r13)
	lr	%r1,%r0
	j	.L2120
.L2153:
	l	%r2,.L2179-.L2162(%r13)
	lr	%r1,%r0
	j	.L2120
	.section	.rodata
	.align	8
.L2162:
.L2179:
	.long	1073741824
.L2178:
	.long	268435456
.L2177:
	.long	536870912
.L2176:
	.long	-2147483648
.L2175:
	.long	134217728
.L2174:
	.long	67108864
.L2173:
	.long	33554432
.L2172:
	.long	16777216
.L2171:
	.long	8388608
.L2170:
	.long	4194304
.L2169:
	.long	2097152
.L2168:
	.long	1048576
.L2167:
	.long	524288
.L2166:
	.long	65536
.L2165:
	.long	131072
.L2164:
	.long	32768
.L2163:
	.long	262144
	.align	2
.text
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
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L2298
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L2296
	tml	%r3,32768
	jne	.L2183
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2184
	tml	%r1,32768
	jne	.L2185
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2186
	tml	%r1,32768
	jne	.L2187
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2188
	tml	%r1,32768
	jne	.L2189
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2190
	tml	%r1,32768
	jne	.L2191
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2192
	tml	%r1,32768
	jne	.L2193
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2194
	tml	%r1,32768
	jne	.L2195
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2196
	tml	%r1,32768
	jne	.L2197
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2198
	tml	%r1,32768
	jne	.L2199
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2200
	tml	%r1,32768
	jne	.L2201
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2202
	tml	%r1,32768
	jne	.L2203
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2204
	tml	%r1,32768
	jne	.L2205
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2206
	tml	%r1,32768
	jne	.L2207
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2208
	tml	%r1,32768
	jne	.L2209
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L2299-.L2298(%r13)
	clr	%r2,%r1
	jle	.L2210
	tml	%r1,32768
	jne	.L2211
	sll	%r3,15
	n	%r3,.L2299-.L2298(%r13)
	clr	%r2,%r3
	jle	.L2212
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L2297
.L2213:
	ltr	%r4,%r4
	je	.L2231
	lr	%r2,%r5
.L2231:
	n	%r2,.L2299-.L2298(%r13)
	lm	%r11,%r13,44(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2200:
	.cfi_restore_state
	jl	.L2247
	sr	%r5,%r1
	lhi	%r0,512
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,512
.L2215:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,2
	srl	%r11,2
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2216
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2216:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,3
	srl	%r11,3
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2217
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2217:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,4
	srl	%r11,4
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2218
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2218:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,5
	srl	%r11,5
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2219
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2219:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,6
	srl	%r11,6
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2220
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2220:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,7
	srl	%r11,7
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2221
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2221:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,8
	srl	%r11,8
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2222
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2222:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,9
	srl	%r11,9
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2223
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2223:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,10
	srl	%r11,10
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2224
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2224:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,11
	srl	%r11,11
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2225
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2225:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,12
	srl	%r11,12
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2226
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2226:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,13
	srl	%r11,13
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2227
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2227:
	l	%r11,.L2299-.L2298(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,14
	srl	%r11,14
	ltr	%r11,%r11
	je	.L2213
	clr	%r5,%r12
	jl	.L2228
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2299-.L2298(%r13)
.L2228:
	n	%r0,.L2299-.L2298(%r13)
	srl	%r1,15
	chi	%r0,16384
	je	.L2213
	clr	%r5,%r1
	jl	.L2236
	sr	%r5,%r1
	lhi	%r0,1
	n	%r5,.L2299-.L2298(%r13)
	or	%r2,%r0
	j	.L2213
.L2236:
	lhi	%r5,0
	j	.L2213
.L2296:
	je	.L2234
	lhi	%r2,0
	j	.L2213
.L2183:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L2299-.L2298(%r13)
	j	.L2213
.L2184:
	jl	.L2239
	sr	%r5,%r1
	lhi	%r0,2
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,2
	j	.L2215
.L2185:
	lhi	%r2,32767
	sr	%r5,%r1
	nr	%r3,%r2
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r12,1
	lhi	%r0,2
	lhi	%r2,2
.L2233:
	clr	%r5,%r3
	jl	.L2215
	sr	%r5,%r3
	or	%r2,%r12
	n	%r5,.L2299-.L2298(%r13)
	j	.L2215
.L2186:
	jl	.L2240
	sr	%r5,%r1
	lhi	%r0,4
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,4
	j	.L2215
.L2187:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,2
	lhi	%r0,4
	lhi	%r2,4
	j	.L2233
.L2188:
	jl	.L2241
	sr	%r5,%r1
	lhi	%r0,8
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,8
	j	.L2215
.L2189:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,4
	lhi	%r0,8
	lhi	%r2,8
	j	.L2233
.L2190:
	jl	.L2242
	sr	%r5,%r1
	lhi	%r0,16
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,16
	j	.L2215
.L2191:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,8
	lhi	%r0,16
	lhi	%r2,16
	j	.L2233
.L2192:
	jl	.L2243
	sr	%r5,%r1
	lhi	%r0,32
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,32
	j	.L2215
.L2193:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,16
	lhi	%r0,32
	lhi	%r2,32
	j	.L2233
.L2194:
	jl	.L2244
	sr	%r5,%r1
	lhi	%r0,64
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,64
	j	.L2215
.L2195:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,32
	lhi	%r0,64
	lhi	%r2,64
	j	.L2233
.L2196:
	jl	.L2245
	sr	%r5,%r1
	lhi	%r0,128
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,128
	j	.L2215
.L2197:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,64
	lhi	%r0,128
	lhi	%r2,128
	j	.L2233
.L2199:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,128
	lhi	%r0,256
	lhi	%r2,256
	j	.L2233
.L2201:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,256
	lhi	%r0,512
	lhi	%r2,512
	j	.L2233
.L2234:
	lhi	%r2,1
	lhi	%r5,0
	j	.L2213
.L2239:
	lhi	%r0,2
.L2232:
	lr	%r3,%r1
	lr	%r12,%r0
	srl	%r3,1
	sll	%r12,16
	lhi	%r2,0
	srl	%r12,17
	j	.L2233
.L2203:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,512
	lhi	%r0,1024
	lhi	%r2,1024
	j	.L2233
.L2205:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,1024
	lhi	%r0,2048
	lhi	%r2,2048
	j	.L2233
.L2240:
	lhi	%r0,4
	j	.L2232
.L2241:
	lhi	%r0,8
	j	.L2232
.L2207:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,2048
	lhi	%r0,4096
	lhi	%r2,4096
	j	.L2233
.L2209:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,4096
	lhi	%r0,8192
	lhi	%r2,8192
	j	.L2233
.L2242:
	lhi	%r0,16
	j	.L2232
.L2243:
	lhi	%r0,32
	j	.L2232
.L2211:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2299-.L2298(%r13)
	srl	%r3,1
	lhi	%r12,8192
	lhi	%r0,16384
	lhi	%r2,16384
	j	.L2233
.L2212:
	l	%r1,.L2300-.L2298(%r13)
	lhi	%r0,-32768
	tml	%r2,32768
	je	.L2232
	lhi	%r2,-32768
	lhi	%r5,0
	j	.L2215
.L2244:
	lhi	%r0,64
	j	.L2232
.L2297:
	ahi	%r5,-32768
	l	%r1,.L2300-.L2298(%r13)
	lhi	%r3,16384
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r12,16384
	lhi	%r0,-32768
	lhi	%r2,-32768
	j	.L2233
.L2245:
	lhi	%r0,128
	j	.L2232
.L2198:
	jl	.L2246
	sr	%r5,%r1
	lhi	%r0,256
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,256
	j	.L2215
.L2246:
	lhi	%r0,256
	j	.L2232
.L2202:
	jl	.L2248
	sr	%r5,%r1
	lhi	%r0,1024
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,1024
	j	.L2215
.L2210:
	jl	.L2252
	sr	%r5,%r1
	lhi	%r0,16384
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,16384
	j	.L2215
.L2248:
	lhi	%r0,1024
	j	.L2232
.L2252:
	lhi	%r0,16384
	j	.L2232
.L2247:
	lhi	%r0,512
	j	.L2232
.L2208:
	jl	.L2251
	sr	%r5,%r1
	lhi	%r0,8192
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,8192
	j	.L2215
.L2206:
	jl	.L2250
	sr	%r5,%r1
	lhi	%r0,4096
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,4096
	j	.L2215
.L2204:
	jl	.L2249
	sr	%r5,%r1
	lhi	%r0,2048
	n	%r5,.L2299-.L2298(%r13)
	lhi	%r2,2048
	j	.L2215
.L2251:
	lhi	%r0,8192
	j	.L2232
.L2250:
	lhi	%r0,4096
	j	.L2232
.L2249:
	lhi	%r0,2048
	j	.L2232
	.section	.rodata
	.align	8
.L2298:
.L2300:
	.long	32768
.L2299:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
	.align	16
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r2,%r3
	jle	.L2303
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2302:
	ltr	%r3,%r3
	jl	.L2303
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2304
	ltr	%r3,%r3
	jl	.L2303
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2304
	ltr	%r3,%r3
	jl	.L2303
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2304
	ltr	%r3,%r3
	jl	.L2303
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2304
	ahi	%r2,-4
	brct	%r0,.L2302
	ltr	%r4,%r4
	ber	%r14
.L2324:
	lr	%r2,%r5
	br	%r14
.L2304:
	ltr	%r1,%r1
	je	.L2311
.L2303:
	lhi	%r2,0
.L2308:
	clr	%r5,%r3
	jl	.L2307
	sr	%r5,%r3
	or	%r2,%r1
.L2307:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2308
	ltr	%r4,%r4
	ber	%r14
	j	.L2324
.L2311:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2324
	.cfi_endproc
.LFE164:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
	.align	16
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	tml	%r4,32
	je	.L2327
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L2327:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	sll	%r2,0(%r4)
	sll	%r1,0(%r4)
	or	%r2,%r3
	lr	%r3,%r1
	br	%r14
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
	tml	%r4,32
	je	.L2333
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L2333:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	sra	%r1,0(%r4)
	or	%r3,%r2
	lr	%r2,%r1
	br	%r14
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
	lr	%r1,%r3
	lrvr	%r3,%r2
	lrvr	%r2,%r1
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L2346
	cl	%r2,.L2347-.L2346(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L2348-.L2346(%r13)
	lhi	%r3,16
	lhi	%r0,4
	lhi	%r4,8
	lcr	%r2,%r2
	sll	%r2,4
	sr	%r3,%r2
	srl	%r1,0(%r3)
	lhi	%r3,240
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,3
	sr	%r4,%r5
	ar	%r2,%r5
	srl	%r1,0(%r4)
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,2
	ar	%r2,%r3
	lhi	%r5,2
	lr	%r4,%r2
	lr	%r2,%r0
	lhi	%r0,12
	sr	%r2,%r3
	lr	%r3,%r5
	srl	%r1,0(%r2)
	nr	%r0,%r1
	ahi	%r0,-1
	srl	%r0,31
	sll	%r0,1
	sr	%r3,%r0
	srl	%r1,0(%r3)
	tml	%r1,2
	jne	.L2343
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L2343:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L2346:
.L2348:
	.long	65280
.L2347:
	.long	65535
	.align	2
.text
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
	cr	%r2,%r4
	jl	.L2353
	jh	.L2354
	clr	%r3,%r5
	jl	.L2353
	jh	.L2354
	lhi	%r2,1
	br	%r14
.L2353:
	lhi	%r2,0
	br	%r14
.L2354:
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
	cr	%r2,%r4
	jl	.L2360
	jh	.L2359
	clr	%r3,%r5
	jl	.L2360
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2360:
	lhi	%r2,-1
	br	%r14
.L2359:
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L2364
	l	%r4,.L2365-.L2364(%r13)
	lr	%r1,%r2
	nr	%r4,%r2
	lhi	%r5,15
	ahi	%r4,-1
	lhi	%r2,255
	srl	%r4,31
	sll	%r4,4
	srl	%r1,0(%r4)
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,2
	ar	%r2,%r4
	srl	%r1,0(%r5)
	ar	%r2,%r5
	lhi	%r3,2
	lhi	%r5,1
	lhi	%r4,3
	lhi	%r0,3
	nr	%r4,%r1
	l	%r13,52(%r15)
	.cfi_restore 13
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,1
	srl	%r1,0(%r4)
	ar	%r2,%r4
	nr	%r0,%r1
	nr	%r1,%r5
	srl	%r0,1
	xr	%r1,%r5
	sr	%r3,%r0
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L2364:
.L2365:
	.long	65535
	.align	2
.text
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
	tml	%r4,32
	je	.L2367
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L2367:
	ltr	%r4,%r4
	ber	%r14
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r5,%r2
	lhi	%r12,32
	sr	%r12,%r4
	sll	%r2,0(%r12)
	lr	%r1,%r3
	srl	%r5,0(%r4)
	lr	%r3,%r2
	srl	%r1,0(%r4)
	lr	%r2,%r5
	or	%r3,%r1
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L2379
	l	%r4,.L2380-.L2379(%r13)
	l	%r1,.L2380-.L2379(%r13)
	nr	%r4,%r2
	nr	%r1,%r3
	lr	%r5,%r3
	srl	%r2,16
	srl	%r5,16
	lr	%r3,%r4
	msr	%r4,%r5
	msr	%r3,%r1
	msr	%r1,%r2
	msr	%r2,%r5
	l	%r5,.L2380-.L2379(%r13)
	lr	%r0,%r3
	n	%r3,.L2380-.L2379(%r13)
	srl	%r0,16
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r1,%r0
	nr	%r5,%r1
	srl	%r1,16
	ar	%r4,%r5
	ar	%r1,%r2
	lr	%r2,%r4
	sll	%r4,16
	srl	%r2,16
	ar	%r3,%r4
	ar	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L2379:
.L2380:
	.long	65535
	.align	2
.text
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
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L2383
	l	%r1,.L2384-.L2383(%r13)
	l	%r0,.L2384-.L2383(%r13)
	nr	%r1,%r5
	msr	%r2,%r5
	srl	%r5,16
	nr	%r0,%r3
	lr	%r12,%r5
	msr	%r4,%r3
	lr	%r11,%r0
	srl	%r3,16
	msr	%r11,%r1
	lr	%r5,%r0
	msr	%r1,%r3
	msr	%r5,%r12
	msr	%r3,%r12
	l	%r12,.L2384-.L2383(%r13)
	lr	%r0,%r11
	n	%r11,.L2384-.L2383(%r13)
	srl	%r0,16
	ar	%r1,%r0
	nr	%r12,%r1
	srl	%r1,16
	ar	%r5,%r12
	ar	%r1,%r3
	lr	%r3,%r5
	srl	%r3,16
	sll	%r5,16
	ar	%r1,%r3
	lr	%r3,%r11
	ar	%r4,%r1
	ar	%r3,%r5
	ar	%r2,%r4
	lm	%r11,%r13,44(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L2383:
.L2384:
	.long	65535
	.align	2
.text
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
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L2386
	ahi	%r2,-1
.L2386:
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
	xr	%r3,%r2
	lhi	%r2,15
	lhi	%r4,27030
	lr	%r1,%r3
	lhi	%r0,1
	srl	%r1,16
	xr	%r1,%r3
	lr	%r3,%r1
	srl	%r3,8
	xr	%r3,%r1
	lr	%r5,%r3
	srl	%r5,4
	xr	%r5,%r3
	nr	%r5,%r2
	lr	%r2,%r4
	sra	%r2,0(%r5)
	nr	%r2,%r0
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
	lr	%r1,%r2
	srl	%r1,16
	xr	%r1,%r2
	lhi	%r2,15
	lhi	%r4,27030
	lr	%r3,%r1
	lhi	%r0,1
	srl	%r3,8
	xr	%r3,%r1
	lr	%r5,%r3
	srl	%r5,4
	xr	%r5,%r3
	nr	%r5,%r2
	lr	%r2,%r4
	sra	%r2,0(%r5)
	nr	%r2,%r0
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L2394
	l	%r0,.L2395-.L2394(%r13)
	l	%r1,.L2395-.L2394(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L2396-.L2394(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L2397-.L2394(%r13)
	l	%r3,.L2397-.L2394(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L2397-.L2394(%r13)
	nr	%r3,%r1
	l	%r1,.L2397-.L2394(%r13)
	nr	%r0,%r4
	nr	%r1,%r5
	alr	%r3,%r1
	lr	%r5,%r3
	alcr	%r2,%r0
	lr	%r4,%r2
	srdl	%r4,4
	alr	%r3,%r5
	lhi	%r5,127
	alcr	%r2,%r4
	nr	%r12,%r3
	n	%r2,.L2396-.L2394(%r13)
	ar	%r2,%r12
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	lr	%r4,%r2
	srl	%r4,16
	ar	%r4,%r2
	lr	%r2,%r4
	srl	%r2,8
	ar	%r2,%r4
	nr	%r2,%r5
	br	%r14
	.section	.rodata
	.align	8
.L2394:
.L2397:
	.long	858993459
.L2396:
	.long	252645135
.L2395:
	.long	1431655765
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
	larl	%r5,.L2400
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L2401-.L2400(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L2402-.L2400(%r5)
	srl	%r0,2
	n	%r0,.L2402-.L2400(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L2403-.L2400(%r5)
	lr	%r2,%r3
	srl	%r2,16
	lhi	%r4,63
	ar	%r3,%r2
	lr	%r2,%r3
	srl	%r2,8
	ar	%r2,%r3
	nr	%r2,%r4
	br	%r14
	.section	.rodata
	.align	8
.L2400:
.L2403:
	.long	252645135
.L2402:
	.long	858993459
.L2401:
	.long	1431655765
	.align	2
.text
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
	larl	%r5,.L2413
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L2414-.L2413(%r5)
	tml	%r2,1
	je	.L2405
.L2407:
	mdbr	%f0,%f2
.L2405:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2406
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L2407
.L2412:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2407
	j	.L2412
.L2406:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L2414-.L2413(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2413:
.L2414:
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
	larl	%r5,.L2424
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L2425-.L2424(%r5)
	tml	%r2,1
	je	.L2416
.L2418:
	meebr	%f0,%f2
.L2416:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2417
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L2418
.L2423:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2418
	j	.L2423
.L2417:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L2425-.L2424(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2424:
.L2425:
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
	clr	%r2,%r4
	jl	.L2430
	jh	.L2431
	clr	%r3,%r5
	jl	.L2430
	jh	.L2431
	lhi	%r2,1
	br	%r14
.L2430:
	lhi	%r2,0
	br	%r14
.L2431:
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
	clr	%r2,%r4
	jl	.L2437
	jh	.L2436
	clr	%r3,%r5
	jl	.L2437
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2437:
	lhi	%r2,-1
	br	%r14
.L2436:
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
	.align	4
	.set	.LANCHOR1,. + 0
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.globl __floatundisf
.globl __floatundidf
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
