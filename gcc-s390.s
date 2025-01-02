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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	clr	%r2,%r3
	jle	.L2
	ltr	%r4,%r4
	je	.L3
	ahi	%r3,-1
	lr	%r1,%r2
	lr	%r12,%r4
	ahi	%r1,-1
	ahi	%r12,-1
	lhi	%r0,3
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L33
	chi	%r0,1
	je	.L55
	chi	%r0,2
	jne	.L87
.L56:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	ahi	%r4,-1
.L55:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	brct	%r4,.L33
.L3:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L2:
	.cfi_restore_state
	je	.L3
	ltr	%r4,%r4
	je	.L3
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L12
	lr	%r0,%r3
	lhi	%r12,3
	or	%r0,%r2
	nr	%r0,%r12
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L12
	lr	%r5,%r3
	ahi	%r5,1
	lr	%r1,%r2
	lhi	%r0,2
	sr	%r1,%r5
	clr	%r1,%r0
	jle	.L12
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L51
	chi	%r12,1
	je	.L57
	chi	%r12,2
	je	.L58
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L58:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L57:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L80
.L51:
	srl	%r5,2
.L6:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L6
.L80:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L3
	mvc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L3
	mvc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L3
	mvc	2(1,%r5),2(%r3)
	j	.L3
.L33:
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
.L87:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	lr	%r4,%r12
	j	.L56
.L12:
	lhi	%r5,3
	lhi	%r1,0
	lr	%r12,%r4
	nr	%r5,%r4
	je	.L42
	chi	%r5,1
	je	.L59
	chi	%r5,2
	je	.L60
	mvc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L60:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L59:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L3
.L42:
	lr	%r4,%r12
	srl	%r4,2
.L9:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	stc	%r12,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L9
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
	lhi	%r1,255
	nr	%r4,%r1
	ltr	%r5,%r5
	je	.L110
	lr	%r0,%r5
	ahi	%r0,-1
	tml	%r5,1
	je	.L111
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L107
	ahi	%r3,1
	ahi	%r2,1
	ltr	%r0,%r0
	je	.L92
	srl	%r5,1
.L90:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L107
	ahi	%r2,1
	ic	%r12,1(%r3)
	stc	%r12,0(%r2)
	lhi	%r1,255
	nr	%r12,%r1
	cr	%r12,%r4
	je	.L107
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L90
.L92:
	lhi	%r2,0
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L111:
	srl	%r5,1
.L117:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L115
	ahi	%r2,1
	ic	%r1,1(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L115
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L117
.L110:
	lhi	%r2,0
	br	%r14
.L115:
	ahi	%r2,1
	br	%r14
.L107:
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
	je	.L126
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L133
	chi	%r5,1
	je	.L144
	chi	%r5,2
	je	.L145
	lhi	%r4,0
	ic	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	ahi	%r2,1
	lr	%r4,%r0
.L145:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L144:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	ahi	%r2,1
	chi	%r4,1
	je	.L126
.L133:
	srl	%r1,2
	lr	%r4,%r1
.L123:
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
	brct	%r4,.L123
.L126:
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
	je	.L162
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L176
.L165:
	srl	%r4,1
.L158:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L174
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L174
	ahi	%r2,2
	ahi	%r3,2
	brct	%r4,.L158
.L162:
	lhi	%r2,0
	br	%r14
.L174:
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L176:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L174
	ahi	%r2,1
	ahi	%r3,1
	ltr	%r0,%r0
	jne	.L165
	j	.L162
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
	je	.L179
	brasl	%r14,memcpy
.L179:
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
	je	.L194
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	chi	%r5,1
	je	.L194
	chi	%r5,2
	je	.L198
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L198:
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L194:
	srl	%r4,2
	lr	%r5,%r1
	ahi	%r4,1
	ahi	%r5,-1
	brct	%r4,.L208
	lhi	%r2,0
	br	%r14
.L208:
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
.L211:
	lr	%r12,%r1
	ahi	%r12,-3
	lr	%r2,%r0
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L185
	ahi	%r1,-4
	lhi	%r5,0
	lr	%r2,%r12
	ic	%r5,0(%r12)
	cr	%r5,%r3
	je	.L185
	lr	%r12,%r1
	ahi	%r12,-1
	brct	%r4,.L188
	lhi	%r2,0
.L185:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L188:
	.cfi_restore_state
	lhi	%r0,0
	lr	%r2,%r1
	ic	%r0,0(%r1)
	cr	%r0,%r3
	je	.L185
	lr	%r0,%r1
	ahi	%r0,-2
	lhi	%r5,0
	lr	%r2,%r12
	ic	%r5,0(%r12)
	cr	%r5,%r3
	jne	.L211
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
	je	.L218
	ahi	%r4,-2
	lr	%r5,%r4
	srl	%r5,8
	ltr	%r5,%r5
	jne	.L217
.L220:
	stc	%r3,0(%r1)
	larl	%r3,.L228
	ex	%r4,0(%r3)
	br	%r14
.L217:
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brct	%r5,.L217
	j	.L220
.L218:
	stc	%r3,0(%r2)
	br	%r14
.L228:
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
.L232:
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
	jne	.L232
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
.L246:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L246
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
.L250:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L250
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
	je	.L254
	j	.L262
.L256:
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	ic	%r4,0(%r1,%r12)
	nr	%r5,%r3
	lhi	%r0,255
	nr	%r0,%r4
	cr	%r5,%r0
	jne	.L262
.L254:
	tml	%r3,255
	jne	.L256
	lhi	%r2,0
	lhi	%r1,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
	br	%r14
.L262:
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
	je	.L267
.L266:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L266
	sr	%r2,%r3
	br	%r14
.L267:
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
	je	.L278
	icm	%r1,1,0(%r2)
	ic	%r5,0(%r3)
	je	.L290
	lhi	%r0,255
	nr	%r0,%r5
	je	.L289
	brct	%r4,.L287
.L289:
	lhi	%r2,255
	nr	%r1,%r2
.L282:
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L278:
	lhi	%r2,0
	br	%r14
.L287:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L276:
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r0,%r1
	jne	.L273
	lr	%r5,%r3
	ahi	%r5,1
	ahi	%r2,1
	icm	%r1,1,0(%r2)
	je	.L291
	lr	%r3,%r5
	lhi	%r0,255
	ic	%r5,0(%r5)
	nr	%r0,%r5
	je	.L288
	brct	%r4,.L276
.L288:
	lhi	%r4,255
	nr	%r1,%r4
.L273:
	lhi	%r0,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L291:
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
.L290:
	lhi	%r1,0
	j	.L282
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
	je	.L302
	chi	%r5,1
	je	.L306
	chi	%r5,2
	je	.L307
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L307:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L306:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L302:
	srl	%r0,2
.L295:
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
	brct	%r0,.L295
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
	je	.L320
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L320:
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
	jle	.L324
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L324:
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
	je	.L336
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L336:
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
	larl	%r5,.L347
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L344
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L346
.L344:
	lhi	%r2,1
	br	%r14
.L346:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L344
	a	%r2,.L348-.L347(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L347:
.L348:
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
	larl	%r5,.L360
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L359
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L356
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L361-.L360(%r5)
	jle	.L356
	l	%r4,.L362-.L360(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L356
	l	%r0,.L363-.L360(%r5)
	ar	%r0,%r2
	cl	%r0,.L364-.L360(%r5)
	jh	.L357
	n	%r2,.L365-.L360(%r5)
	x	%r2,.L365-.L360(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L356:
	lhi	%r2,1
	br	%r14
.L359:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L357:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L360:
.L365:
	.long	65534
.L364:
	.long	1048579
.L363:
	.long	-65532
.L362:
	.long	-57344
.L361:
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
	jle	.L368
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L368:
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
	larl	%r5,.L379
	cdbr	%f0,%f2
	jle	.L377
	sdbr	%f0,%f2
	br	%r14
.L377:
	ld	%f0,.L380-.L379(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L379:
.L380:
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
	larl	%r5,.L388
	cebr	%f0,%f2
	jle	.L386
	sebr	%f0,%f2
	br	%r14
.L386:
	le	%f0,.L389-.L388(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L388:
.L389:
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
	ltdbr	%f0,%f0
	lhi	%r2,1
	jl	.L392
	lhi	%r2,0
.L392:
	ltdbr	%f2,%f2
	lhi	%r1,1
	jl	.L393
	lhi	%r1,0
.L393:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L391
	ltdbr	%f0,%f0
	bher	%r14
	ldr	%f0,%f2
	br	%r14
.L391:
	cdbr	%f0,%f2
	bher	%r14
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
	ltebr	%f0,%f0
	lhi	%r2,1
	jl	.L404
	lhi	%r2,0
.L404:
	ltebr	%f2,%f2
	lhi	%r1,1
	jl	.L405
	lhi	%r1,0
.L405:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L403
	ltebr	%f0,%f0
	bher	%r14
	ler	%f0,%f2
	br	%r14
.L403:
	cebr	%f0,%f2
	bher	%r14
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
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f1,0(%r4)
	ltxbr	%f0,%f0
	ld	%f3,8(%r4)
	lhi	%r3,1
	jl	.L416
	lhi	%r3,0
.L416:
	ltxbr	%f1,%f1
	lhi	%r1,1
	jl	.L417
	lhi	%r1,0
.L417:
	lhi	%r4,255
	nr	%r3,%r4
	nr	%r1,%r4
	cr	%r3,%r1
	je	.L415
	ltxbr	%f0,%f0
	jl	.L423
.L420:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L415:
	cxbr	%f0,%f1
	jhe	.L420
.L423:
	lxr	%f0,%f1
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
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
	ltdbr	%f0,%f0
	lhi	%r2,1
	jl	.L427
	lhi	%r2,0
.L427:
	ltdbr	%f2,%f2
	lhi	%r1,1
	jl	.L428
	lhi	%r1,0
.L428:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L426
	ltdbr	%f0,%f0
	blr	%r14
	ldr	%f0,%f2
	br	%r14
.L426:
	cdbr	%f0,%f2
	bler	%r14
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
	ltebr	%f0,%f0
	lhi	%r2,1
	jl	.L439
	lhi	%r2,0
.L439:
	ltebr	%f2,%f2
	lhi	%r1,1
	jl	.L440
	lhi	%r1,0
.L440:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L438
	ltebr	%f0,%f0
	blr	%r14
	ler	%f0,%f2
	br	%r14
.L438:
	cebr	%f0,%f2
	bler	%r14
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
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	ld	%f0,0(%r4)
	ltxbr	%f1,%f1
	ld	%f2,8(%r4)
	lhi	%r3,1
	jl	.L451
	lhi	%r3,0
.L451:
	ltxbr	%f0,%f0
	lhi	%r1,1
	jl	.L452
	lhi	%r1,0
.L452:
	lhi	%r4,255
	nr	%r3,%r4
	nr	%r1,%r4
	cr	%r3,%r1
	je	.L450
	ltxbr	%f1,%f1
	jl	.L458
.L455:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L450:
	cxbr	%f0,%f1
	jle	.L455
.L458:
	lxr	%f0,%f1
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
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
	je	.L461
	larl	%r4,.LANCHOR1
.L462:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L462
.L461:
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
	je	.L477
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L477:
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
	je	.L480
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L480:
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
	je	.L490
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L514
.L502:
	srl	%r11,1
.L492:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L489
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L489
	ar	%r12,%r10
	brct	%r11,.L492
.L490:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L489
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L489:
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
.L514:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L489
	ar	%r12,%r10
	chi	%r13,1
	jne	.L502
	j	.L490
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
	je	.L517
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L537
.L526:
	srl	%r11,1
.L519:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L516
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L516
	ar	%r12,%r9
	brct	%r11,.L519
.L517:
	lhi	%r8,0
.L516:
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
.L537:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L516
	ar	%r12,%r9
	chi	%r7,1
	jne	.L526
	j	.L517
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
.L548:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L542
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L542
	chi	%r1,43
	je	.L543
	chi	%r1,45
	je	.L544
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L553
	lr	%r3,%r2
	lhi	%r12,0
.L546:
	lhi	%r2,0
.L550:
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
	jle	.L550
	ltr	%r12,%r12
	jne	.L541
	lr	%r2,%r5
	sr	%r2,%r1
.L541:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L542:
	.cfi_restore_state
	ahi	%r2,1
	j	.L548
.L544:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L553
	lhi	%r12,1
	j	.L546
.L543:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L546
.L553:
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
.L568:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L564
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L564
	chi	%r1,43
	je	.L565
	chi	%r1,45
	je	.L566
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L575
	lr	%r3,%r2
	lhi	%r12,0
.L569:
	lhi	%r2,0
.L572:
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
	jle	.L572
	ltr	%r12,%r12
	jne	.L563
	lr	%r2,%r5
	sr	%r2,%r1
.L563:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L564:
	.cfi_restore_state
	ahi	%r2,1
	j	.L568
.L566:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	lr	%r3,%r2
	lhi	%r12,1
	clr	%r11,%r1
	jle	.L569
.L575:
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
.L565:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L575
	lhi	%r12,0
	j	.L569
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
.L593:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L587
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L587
	chi	%r3,43
	je	.L588
	chi	%r3,45
	jne	.L607
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L598
	lhi	%r2,1
.L591:
	lhi	%r10,0
	lhi	%r11,0
.L595:
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
	jle	.L595
	ltr	%r2,%r2
	jne	.L586
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L586:
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
.L587:
	.cfi_restore_state
	ahi	%r2,1
	j	.L593
.L607:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L598
	lr	%r3,%r2
	lhi	%r2,0
	j	.L591
.L588:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L591
.L598:
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
	je	.L610
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	j	.L613
.L623:
	je	.L609
	ahi	%r12,-1
	ar	%r11,%r9
	sr	%r12,%r10
	lr	%r8,%r11
	ltr	%r12,%r12
	je	.L610
.L613:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	lr	%r2,%r7
	ar	%r11,%r8
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L623
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L613
.L610:
	lhi	%r11,0
.L609:
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
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	ltr	%r11,%r4
	je	.L630
.L626:
	lr	%r7,%r11
	sra	%r7,1
	lr	%r12,%r7
	msr	%r12,%r10
	l	%r4,192(%r15)
	lr	%r2,%r8
	ar	%r12,%r9
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L625
	jle	.L628
	ar	%r12,%r10
	ahi	%r11,-1
	lr	%r9,%r12
	sra	%r11,1
	jne	.L626
.L630:
	lhi	%r12,0
.L625:
	lr	%r2,%r12
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
.L628:
	.cfi_restore_state
	ltr	%r7,%r7
	je	.L630
	lr	%r11,%r7
	j	.L626
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
	jl	.L646
.L643:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L646:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L643
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
	jl	.L659
.L656:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L659:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L656
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
	j	.L672
.L673:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L672:
	icm	%r1,15,0(%r2)
	jne	.L673
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
	je	.L676
	j	.L677
.L678:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L677
.L676:
	ltr	%r4,%r4
	jne	.L678
.L677:
	cr	%r4,%r5
	jl	.L682
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L682:
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
.L686:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L686
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
	je	.L693
.L692:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L692
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L693:
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
	je	.L703
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L718
.L706:
	srl	%r4,1
.L697:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L699
	ltr	%r0,%r0
	je	.L699
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L699
	ltr	%r5,%r5
	je	.L699
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L697
.L703:
	lhi	%r2,0
	br	%r14
.L699:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L719
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L718:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L699
	ltr	%r1,%r1
	je	.L699
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L706
	j	.L703
.L719:
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
	je	.L725
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L732
	chi	%r5,1
	je	.L743
	chi	%r5,2
	je	.L744
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L744:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L743:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L725
.L732:
	srl	%r1,2
	lr	%r0,%r1
.L722:
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
	brct	%r0,.L722
.L725:
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
	je	.L763
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L770
	chi	%r1,1
	je	.L781
	chi	%r1,2
	je	.L782
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L789
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L782:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L789
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L781:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L789
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L763
.L770:
	srl	%r5,2
.L757:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L789
	l	%r1,4(%r2)
	ahi	%r3,4
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L789
	l	%r1,8(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L789
	l	%r1,12(%r2)
	lr	%r3,%r4
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L789
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L757
.L763:
	lhi	%r2,0
	br	%r14
.L789:
	c	%r1,0(%r3)
	jl	.L792
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L792:
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
	je	.L795
	sll	%r4,2
	brasl	%r14,memcpy
.L795:
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
	larl	%r13,.L850
	cr	%r2,%r3
	je	.L809
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L849
	ltr	%r4,%r4
	je	.L809
	l	%r4,.L851-.L850(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L819
	chi	%r5,1
	je	.L835
	chi	%r5,2
	je	.L836
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L836:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L835:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L809
.L819:
	srl	%r4,2
.L806:
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
	brct	%r4,.L806
.L809:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L849:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L809
	lhi	%r0,3
	nr	%r0,%r4
	je	.L828
	chi	%r0,1
	je	.L833
	chi	%r0,2
	je	.L834
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L834:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L833:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L809
.L828:
	srl	%r4,2
.L804:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L804
	j	.L809
	.section	.rodata
	.align	8
.L850:
.L851:
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
	je	.L863
	chi	%r0,1
	je	.L867
	chi	%r0,2
	je	.L868
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L868:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L867:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L863:
	srl	%r4,2
.L854:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L854
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
	jhe	.L877
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L908
	chi	%r5,1
	je	.L930
	chi	%r5,2
	jne	.L964
.L931:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L930:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L908
	br	%r14
.L877:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L887
	lr	%r0,%r3
	lhi	%r1,3
	or	%r0,%r2
	nr	%r0,%r1
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L887
	lr	%r5,%r2
	ahi	%r5,1
	lr	%r0,%r3
	lhi	%r1,2
	sr	%r0,%r5
	clr	%r0,%r1
	jle	.L887
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L926
	chi	%r12,1
	je	.L932
	chi	%r12,2
	je	.L933
	l	%r1,0(%r2)
	st	%r1,0(%r3)
	lhi	%r1,4
.L933:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
.L932:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L955
.L926:
	srl	%r5,2
.L881:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r12,4(%r1,%r2)
	st	%r12,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r12,12(%r1,%r2)
	st	%r12,12(%r1,%r3)
	ahi	%r1,16
	brct	%r5,.L881
.L955:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L876
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L876
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L876
	mvc	2(1,%r3),2(%r2)
.L876:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L908:
	srl	%r1,2
.L879:
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
	brct	%r1,.L879
	br	%r14
.L964:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
	j	.L931
.L887:
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L917
	chi	%r0,1
	je	.L934
	chi	%r0,2
	je	.L935
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L935:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L934:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L917:
	lr	%r4,%r5
	srl	%r4,2
.L884:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L884
	br	%r14
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
	larl	%r5,.L982
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L983-.L982(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L982:
.L983:
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
	larl	%r5,.L986
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L987-.L986(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L986:
.L987:
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
	larl	%r5,.L994
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L995-.L994(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L994:
.L995:
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
	jne	.L1003
	tml	%r2,2
	jne	.L1004
	tml	%r2,4
	jne	.L1005
	tml	%r2,8
	jne	.L1006
	tml	%r2,16
	jne	.L1007
	tml	%r2,32
	jne	.L1008
	tml	%r2,64
	jne	.L1009
	tml	%r2,128
	jne	.L1010
	tml	%r2,256
	jne	.L1011
	tml	%r2,512
	jne	.L1012
	tml	%r2,1024
	jne	.L1013
	tml	%r2,2048
	jne	.L1014
	tml	%r2,4096
	jne	.L1015
	tml	%r2,8192
	jne	.L1016
	tml	%r2,16384
	jne	.L1017
	tml	%r2,32768
	jne	.L1018
	tmh	%r2,1
	jne	.L1019
	tmh	%r2,2
	jne	.L1020
	tmh	%r2,4
	jne	.L1021
	tmh	%r2,8
	jne	.L1022
	tmh	%r2,16
	jne	.L1023
	tmh	%r2,32
	jne	.L1024
	tmh	%r2,64
	jne	.L1025
	tmh	%r2,128
	jne	.L1026
	tmh	%r2,256
	jne	.L1027
	tmh	%r2,512
	jne	.L1028
	tmh	%r2,1024
	jne	.L1029
	tmh	%r2,2048
	jne	.L1030
	tmh	%r2,4096
	jne	.L1031
	tmh	%r2,8192
	jne	.L1032
	tmh	%r2,16384
	jne	.L1033
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L1003:
	lhi	%r2,1
	br	%r14
.L1004:
	lhi	%r2,2
	br	%r14
.L1015:
	lhi	%r2,13
	br	%r14
.L1031:
	lhi	%r2,29
	br	%r14
.L1005:
	lhi	%r2,3
	br	%r14
.L1006:
	lhi	%r2,4
	br	%r14
.L1007:
	lhi	%r2,5
	br	%r14
.L1008:
	lhi	%r2,6
	br	%r14
.L1009:
	lhi	%r2,7
	br	%r14
.L1010:
	lhi	%r2,8
	br	%r14
.L1011:
	lhi	%r2,9
	br	%r14
.L1012:
	lhi	%r2,10
	br	%r14
.L1013:
	lhi	%r2,11
	br	%r14
.L1014:
	lhi	%r2,12
	br	%r14
.L1016:
	lhi	%r2,14
	br	%r14
.L1017:
	lhi	%r2,15
	br	%r14
.L1018:
	lhi	%r2,16
	br	%r14
.L1019:
	lhi	%r2,17
	br	%r14
.L1020:
	lhi	%r2,18
	br	%r14
.L1021:
	lhi	%r2,19
	br	%r14
.L1022:
	lhi	%r2,20
	br	%r14
.L1023:
	lhi	%r2,21
	br	%r14
.L1024:
	lhi	%r2,22
	br	%r14
.L1025:
	lhi	%r2,23
	br	%r14
.L1026:
	lhi	%r2,24
	br	%r14
.L1027:
	lhi	%r2,25
	br	%r14
.L1028:
	lhi	%r2,26
	br	%r14
.L1029:
	lhi	%r2,27
	br	%r14
.L1030:
	lhi	%r2,28
	br	%r14
.L1032:
	lhi	%r2,30
	br	%r14
.L1033:
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
	je	.L1040
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1039:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L1039
	br	%r14
.L1040:
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
	lhi	%r2,0
	br	%r14
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
	lhi	%r2,0
	br	%r14
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
	lhi	%r2,0
	br	%r14
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
	larl	%r5,.L1069
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1067
	le	%f1,.L1070-.L1069(%r5)
.L1055:
	tml	%r2,1
	je	.L1056
.L1057:
	meebr	%f0,%f1
.L1056:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L1057
.L1068:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1057
	j	.L1068
.L1067:
	le	%f1,.L1071-.L1069(%r5)
	j	.L1055
	.section	.rodata
	.align	8
.L1069:
.L1071:
	.long	1056964608
.L1070:
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
	larl	%r5,.L1088
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1086
	ld	%f1,.L1089-.L1088(%r5)
.L1074:
	tml	%r2,1
	je	.L1075
.L1076:
	mdbr	%f0,%f1
.L1075:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L1076
.L1087:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1076
	j	.L1087
.L1086:
	ld	%f1,.L1090-.L1088(%r5)
	j	.L1074
	.section	.rodata
	.align	8
.L1088:
.L1090:
	.long	1071644672
	.long	0
.L1089:
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
	larl	%r5,.L1107
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1092
	ltr	%r4,%r4
	jl	.L1105
	ld	%f0,.L1108-.L1107(%r5)
	ld	%f2,.L1108-.L1107+8(%r5)
.L1093:
	tml	%r4,1
	je	.L1094
.L1095:
	mxbr	%f1,%f0
.L1094:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1092
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L1095
.L1106:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L1095
	j	.L1106
.L1092:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1105:
	ld	%f0,.L1109-.L1107(%r5)
	ld	%f2,.L1109-.L1107+8(%r5)
	j	.L1093
	.section	.rodata
	.align	8
.L1107:
.L1109:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1108:
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1118
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1118
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1153
	chi	%r12,1
	je	.L1157
	chi	%r12,2
	je	.L1158
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1158:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L1157:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1181
.L1153:
	srl	%r5,2
.L1113:
	l	%r0,0(%r1,%r2)
	l	%r12,4(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	x	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r0,8(%r1,%r2)
	l	%r12,12(%r1,%r2)
	x	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	x	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1113
.L1181:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L1111
	xc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L1111
	xc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L1111
	xc	2(1,%r5),2(%r3)
.L1111:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1118:
	.cfi_restore_state
	lhi	%r12,7
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r12,%r4
	je	.L1140
	chi	%r12,1
	je	.L1159
	chi	%r12,2
	je	.L1160
	chi	%r12,3
	je	.L1161
	chi	%r12,4
	je	.L1162
	chi	%r12,5
	je	.L1163
	chi	%r12,6
	je	.L1164
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1164:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1163:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1162:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1161:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1160:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1159:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1111
.L1140:
	lr	%r4,%r5
	srl	%r4,3
.L1115:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ic	%r12,1(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	xr	%r12,%r5
	stc	%r12,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	ic	%r12,2(%r1,%r2)
	xr	%r12,%r0
	stc	%r12,2(%r1,%r2)
	ic	%r5,3(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,3(%r1,%r2)
	ic	%r0,4(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,4(%r1,%r2)
	ic	%r12,5(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	xr	%r12,%r5
	stc	%r12,5(%r1,%r2)
	ic	%r0,6(%r1,%r3)
	ic	%r12,6(%r1,%r2)
	xr	%r12,%r0
	stc	%r12,6(%r1,%r2)
	ic	%r5,7(%r1,%r2)
	ic	%r12,7(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,7(%r1,%r2)
	ahi	%r1,8
	brct	%r4,.L1115
	j	.L1111
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
	je	.L1190
.L1191:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1191
.L1190:
	ltr	%r4,%r4
	je	.L1193
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1213
.L1202:
	srl	%r4,1
.L1192:
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
	brct	%r4,.L1192
.L1193:
	mvi	0(%r1),0
	br	%r14
.L1213:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1202
	j	.L1193
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
	je	.L1227
	chi	%r5,1
	je	.L1238
	chi	%r5,2
	je	.L1239
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1239:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1238:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1227:
	srl	%r4,2
.L1216:
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
	brct	%r4,.L1216
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
	je	.L1251
.L1255:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1250
.L1249:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1250:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1249
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1255
.L1251:
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
.L1259:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L1258
	lr	%r2,%r1
.L1258:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1259
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
	je	.L1263
	lr	%r11,%r3
.L1265:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1265
	slr	%r11,%r3
	jhe	.L1263
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1273
.L1285:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1284
.L1273:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1285
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1281
.L1269:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1263
.L1270:
	ahi	%r2,1
	j	.L1273
.L1281:
	lhi	%r8,255
	nr	%r1,%r8
	nr	%r4,%r8
	cr	%r1,%r4
	jne	.L1270
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1286
	icm	%r4,1,1(%r12)
	je	.L1270
	lr	%r12,%r8
	brct	%r9,.L1281
	j	.L1269
.L1284:
	lhi	%r2,0
.L1263:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1286:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1270
	j	.L1263
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
	ltdbr	%f0,%f0
	jl	.L1298
	jnh	.L1292
	ltdbr	%f2,%f2
	bher	%r14
	lcdbr	%f0,%f0
.L1292:
	br	%r14
.L1298:
	ltdbr	%f2,%f2
	bler	%r14
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
	ltr	%r0,%r5
	ber	%r14
	clr	%r3,%r0
	jl	.L1309
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1309
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1306
.L1310:
	lr	%r2,%r5
.L1302:
	clr	%r3,%r2
	jl	.L1311
.L1306:
	lr	%r5,%r2
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1310
	chi	%r0,1
	je	.L1300
.L1305:
	lr	%r12,%r0
	lhi	%r10,3
	ahi	%r12,-1
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1321
	chi	%r10,1
	je	.L1331
	chi	%r10,2
	jne	.L1344
.L1332:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1338
	ahi	%r1,1
.L1331:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1338
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1300
.L1321:
	srl	%r12,2
.L1303:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1338
	ic	%r8,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1338
	ic	%r8,2(%r1,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1338
	ic	%r8,3(%r1,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1338
	ahi	%r1,4
	brct	%r12,.L1303
.L1300:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1344:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	je	.L1332
.L1338:
	clr	%r3,%r5
	jl	.L1311
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1302
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1305
.L1311:
	lhi	%r2,0
	lm	%r8,%r12,32(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1309:
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
	je	.L1347
	brasl	%r14,memmove
.L1347:
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
	larl	%r5,.L1381
	ltdbr	%f0,%f0
	jl	.L1377
	cdb	%f0,.L1382-.L1381(%r5)
	jl	.L1378
	lhi	%r3,0
.L1356:
	lhi	%r4,0
.L1362:
	ahi	%r4,1
	cdb	%f0,.L1383-.L1381(%r5)
	mdb	%f0,.L1384-.L1381(%r5)
	jhe	.L1362
	st	%r4,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1380:
	lcdbr	%f0,%f0
	br	%r14
.L1378:
	cdb	%f0,.L1384-.L1381(%r5)
	jhe	.L1375
	ltdbr	%f0,%f0
	jne	.L1368
	lhi	%r1,0
	ld	%f0,.L1385-.L1381(%r5)
	st	%r1,0(%r2)
	br	%r14
.L1375:
	lhi	%r0,0
	st	%r0,0(%r2)
	br	%r14
.L1377:
	lcdbr	%f2,%f0
	cdb	%f0,.L1386-.L1381(%r5)
	jh	.L1379
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1356
.L1379:
	cdb	%f0,.L1387-.L1381(%r5)
	jle	.L1375
	lhi	%r3,1
.L1357:
	ldr	%f0,%f2
	lhi	%r4,0
.L1364:
	ldr	%f1,%f0
	adbr	%f0,%f0
	ahi	%r4,-1
	cdb	%f1,.L1388-.L1381(%r5)
	jl	.L1364
	st	%r4,0(%r2)
	ltr	%r3,%r3
	jne	.L1380
	br	%r14
.L1368:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1357
	.section	.rodata
	.align	8
.L1381:
.L1388:
	.long	1070596096
	.long	0
.L1387:
	.long	-1075838976
	.long	0
.L1386:
	.long	-1074790400
	.long	0
.L1385:
	.long	0
	.long	0
.L1384:
	.long	1071644672
	.long	0
.L1383:
	.long	1073741824
	.long	0
.L1382:
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
	lr	%r0,%r2
	or	%r2,%r3
	je	.L1393
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
.L1392:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1395
	ahi	%r2,-1
.L1395:
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
	jne	.L1392
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
.L1393:
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
	jhe	.L1403
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L1402:
	ltr	%r3,%r3
	jl	.L1403
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1404
	ltr	%r3,%r3
	jl	.L1403
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1404
	ltr	%r3,%r3
	jl	.L1403
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1404
	ltr	%r3,%r3
	jl	.L1403
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1404
	ahi	%r2,-4
	brct	%r0,.L1402
	ltr	%r4,%r4
	ber	%r14
.L1424:
	lr	%r2,%r5
	br	%r14
.L1404:
	ltr	%r1,%r1
	je	.L1411
.L1403:
	lhi	%r2,0
.L1408:
	clr	%r5,%r3
	jl	.L1407
	sr	%r5,%r3
	or	%r2,%r1
.L1407:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1408
	ltr	%r4,%r4
	ber	%r14
	j	.L1424
.L1411:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1424
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
	je	.L1428
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
.L1428:
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
	je	.L1443
.L1438:
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
.L1443:
	cr	%r5,%r1
	jne	.L1438
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
	je	.L1448
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
.L1448:
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
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lhi	%r12,-8
	nr	%r12,%r4
	lr	%r1,%r4
	clr	%r2,%r3
	srl	%r1,3
	jl	.L1544
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1636
.L1544:
	ltr	%r1,%r1
	je	.L1637
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	lr	%r9,%r1
	srl	%r5,3
	lhi	%r10,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r10,%r5
	je	.L1586
	chi	%r10,1
	je	.L1602
	chi	%r10,2
	je	.L1603
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1603:
	l	%r8,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r8,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
.L1602:
	l	%r10,0(%r1,%r3)
	l	%r0,4(%r1,%r3)
	st	%r10,0(%r1,%r2)
	st	%r0,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r9
	je	.L1630
.L1586:
	srl	%r5,2
.L1547:
	l	%r9,0(%r1,%r3)
	l	%r8,4(%r1,%r3)
	st	%r9,0(%r1,%r2)
	st	%r8,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	l	%r11,12(%r1,%r3)
	st	%r10,8(%r1,%r2)
	st	%r11,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	l	%r9,20(%r1,%r3)
	st	%r0,16(%r1,%r2)
	st	%r9,20(%r1,%r2)
	l	%r8,24(%r1,%r3)
	l	%r10,28(%r1,%r3)
	st	%r8,24(%r1,%r2)
	st	%r10,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L1547
.L1630:
	clr	%r4,%r12
	jle	.L1540
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1604
	lr	%r9,%r12
	lr	%r11,%r2
	ahi	%r9,1
	ar	%r11,%r12
	ar	%r9,%r3
	lr	%r10,%r3
	ar	%r10,%r12
	lr	%r8,%r11
	lhi	%r1,2
	sr	%r8,%r9
	clr	%r8,%r1
	jle	.L1604
	lr	%r9,%r10
	lhi	%r5,3
	or	%r9,%r11
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L1604
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1577
	chi	%r8,1
	je	.L1605
	chi	%r8,2
	jne	.L1638
.L1606:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1605:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1629
.L1577:
	srl	%r5,2
.L1550:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1550
.L1629:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1540
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1540
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1540
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1540:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1636:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L1540
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1595
	chi	%r0,1
	je	.L1600
	chi	%r0,2
	je	.L1601
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
.L1601:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L1600:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L1540
.L1595:
	srl	%r4,2
.L1545:
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	lr	%r1,%r9
	ahi	%r1,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ahi	%r9,-4
	brct	%r4,.L1545
	j	.L1540
.L1638:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1606
.L1637:
	ltr	%r4,%r4
	je	.L1540
.L1604:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1568
	chi	%r5,1
	je	.L1607
	chi	%r5,2
	jne	.L1639
.L1608:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1607:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1540
.L1568:
	srl	%r1,2
.L1552:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1552
	j	.L1540
.L1639:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1608
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
	lr	%r0,%r4
	clr	%r2,%r3
	srl	%r0,1
	jl	.L1645
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L1722
.L1645:
	ltr	%r0,%r0
	je	.L1723
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r10,%r0
	lhi	%r11,8
	ahi	%r10,-1
	clr	%r10,%r11
	jle	.L1648
	lr	%r12,%r3
	lhi	%r1,3
	or	%r12,%r2
	nr	%r12,%r1
	ahi	%r12,-1
	ltr	%r12,%r12
	jhe	.L1648
	lr	%r5,%r3
	ahi	%r5,2
	cr	%r2,%r5
	je	.L1648
	lhi	%r12,-4
	nr	%r12,%r4
	lr	%r5,%r12
	ahi	%r5,-4
	lr	%r11,%r4
	srl	%r5,2
	lhi	%r10,3
	ahi	%r5,1
	srl	%r11,2
	lhi	%r1,0
	nr	%r10,%r5
	je	.L1678
	chi	%r10,1
	je	.L1694
	chi	%r10,2
	jne	.L1724
.L1695:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L1694:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1713
.L1678:
	srl	%r5,2
.L1649:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1649
.L1713:
	sll	%r11,1
	cr	%r0,%r11
	je	.L1644
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L1644:
	tml	%r4,1
	je	.L1641
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1641:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1722:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1687
	chi	%r5,1
	je	.L1692
	chi	%r5,2
	je	.L1693
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1693:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1692:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1687:
	srl	%r4,2
.L1646:
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
	brct	%r4,.L1646
	br	%r14
.L1724:
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L1695
.L1648:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r12,3
	srl	%r5,1
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1669
	chi	%r12,1
	je	.L1696
	chi	%r12,2
	jne	.L1725
.L1697:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L1696:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1644
.L1669:
	srl	%r5,2
.L1651:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r11,2(%r1,%r3)
	sth	%r11,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1651
	j	.L1644
.L1723:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
	br	%r14
.L1725:
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lh	%r11,0(%r3)
	lhi	%r1,2
	sth	%r11,0(%r2)
	j	.L1697
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
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lhi	%r12,-4
	nr	%r12,%r4
	lr	%r1,%r4
	clr	%r2,%r3
	srl	%r1,2
	jl	.L1731
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1823
.L1731:
	ltr	%r1,%r1
	je	.L1824
	sll	%r1,2
	lr	%r10,%r1
	ahi	%r10,-4
	lhi	%r11,3
	srl	%r10,2
	lr	%r9,%r1
	ahi	%r10,1
	lhi	%r5,0
	nr	%r11,%r10
	je	.L1773
	chi	%r11,1
	je	.L1789
	chi	%r11,2
	je	.L1790
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
.L1790:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L1789:
	l	%r8,0(%r5,%r3)
	st	%r8,0(%r5,%r2)
	ahi	%r5,4
	cr	%r5,%r9
	je	.L1817
.L1773:
	srl	%r10,2
.L1734:
	l	%r9,0(%r5,%r3)
	st	%r9,0(%r5,%r2)
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r10,.L1734
.L1817:
	clr	%r4,%r12
	jle	.L1727
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r10,%r0
	ahi	%r10,-1
	clr	%r10,%r5
	jle	.L1791
	lr	%r8,%r12
	lr	%r11,%r2
	ahi	%r8,1
	ar	%r11,%r12
	ar	%r8,%r3
	lr	%r10,%r3
	ar	%r10,%r12
	lr	%r9,%r11
	lhi	%r1,2
	sr	%r9,%r8
	clr	%r9,%r1
	jle	.L1791
	lr	%r8,%r10
	lhi	%r5,3
	or	%r8,%r11
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1791
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1764
	chi	%r8,1
	je	.L1792
	chi	%r8,2
	jne	.L1825
.L1793:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1792:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1816
.L1764:
	srl	%r5,2
.L1737:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1737
.L1816:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1727
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1727
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1727
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1727:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1823:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L1727
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1782
	chi	%r0,1
	je	.L1787
	chi	%r0,2
	je	.L1788
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
.L1788:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L1787:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L1727
.L1782:
	srl	%r4,2
.L1732:
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	lr	%r1,%r9
	ahi	%r1,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ahi	%r9,-4
	brct	%r4,.L1732
	j	.L1727
.L1825:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1793
.L1824:
	ltr	%r4,%r4
	je	.L1727
.L1791:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1755
	chi	%r5,1
	je	.L1794
	chi	%r5,2
	jne	.L1826
.L1795:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1794:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1727
.L1755:
	srl	%r1,2
.L1739:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1739
	j	.L1727
.L1826:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1795
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
	larl	%r5,.L1833
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1834-.L1833(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1833:
.L1834:
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
	larl	%r5,.L1838
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1836
	adb	%f0,.L1839-.L1838(%r5)
.L1836:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1838:
.L1839:
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
	jne	.L1851
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L1852
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L1853
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L1854
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L1855
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L1856
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L1857
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L1858
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L1859
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L1860
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L1861
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L1862
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L1863
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L1864
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1851:
	lhi	%r2,0
	br	%r14
.L1862:
	lhi	%r2,12
	br	%r14
.L1852:
	lhi	%r2,2
	br	%r14
.L1853:
	lhi	%r2,3
	br	%r14
.L1854:
	lhi	%r2,4
	br	%r14
.L1855:
	lhi	%r2,5
	br	%r14
.L1856:
	lhi	%r2,6
	br	%r14
.L1857:
	lhi	%r2,7
	br	%r14
.L1858:
	lhi	%r2,8
	br	%r14
.L1859:
	lhi	%r2,9
	br	%r14
.L1860:
	lhi	%r2,10
	br	%r14
.L1861:
	lhi	%r2,11
	br	%r14
.L1863:
	lhi	%r2,13
	br	%r14
.L1864:
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
	jne	.L1871
	tml	%r2,2
	jne	.L1872
	tml	%r2,4
	jne	.L1873
	tml	%r2,8
	jne	.L1874
	tml	%r2,16
	jne	.L1875
	tml	%r2,32
	jne	.L1876
	tml	%r2,64
	jne	.L1877
	tml	%r2,128
	jne	.L1878
	tml	%r2,256
	jne	.L1879
	tml	%r2,512
	jne	.L1880
	tml	%r2,1024
	jne	.L1881
	tml	%r2,2048
	jne	.L1882
	tml	%r2,4096
	jne	.L1883
	tml	%r2,8192
	jne	.L1884
	tml	%r2,16384
	jne	.L1885
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1871:
	lhi	%r2,0
	br	%r14
.L1872:
	lhi	%r2,1
	br	%r14
.L1883:
	lhi	%r2,12
	br	%r14
.L1873:
	lhi	%r2,2
	br	%r14
.L1874:
	lhi	%r2,3
	br	%r14
.L1875:
	lhi	%r2,4
	br	%r14
.L1876:
	lhi	%r2,5
	br	%r14
.L1877:
	lhi	%r2,6
	br	%r14
.L1878:
	lhi	%r2,7
	br	%r14
.L1879:
	lhi	%r2,8
	br	%r14
.L1880:
	lhi	%r2,9
	br	%r14
.L1881:
	lhi	%r2,10
	br	%r14
.L1882:
	lhi	%r2,11
	br	%r14
.L1884:
	lhi	%r2,13
	br	%r14
.L1885:
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
	larl	%r5,.L1897
	ceb	%f0,.L1898-.L1897(%r5)
	jhe	.L1896
	cfebr	%r2,5,%f0
	br	%r14
.L1896:
	seb	%f0,.L1898-.L1897(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1899-.L1897(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1897:
.L1898:
	.long	1191182336
.L1899:
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
	je	.L1907
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
.L1907:
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
	je	.L2003
	ltr	%r3,%r3
	je	.L2003
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
.L2003:
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
	jle	.L2097
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2096:
	ltr	%r3,%r3
	jl	.L2097
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2098
	ltr	%r3,%r3
	jl	.L2097
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2098
	ltr	%r3,%r3
	jl	.L2097
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2098
	ltr	%r3,%r3
	jl	.L2097
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2098
	ahi	%r2,-4
	brct	%r0,.L2096
	ltr	%r4,%r4
	ber	%r14
.L2118:
	lr	%r2,%r5
	br	%r14
.L2098:
	ltr	%r1,%r1
	je	.L2105
.L2097:
	lhi	%r2,0
.L2102:
	clr	%r5,%r3
	jl	.L2101
	sr	%r5,%r3
	or	%r2,%r1
.L2101:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2102
	ltr	%r4,%r4
	ber	%r14
	j	.L2118
.L2105:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2118
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
	cebr	%f0,%f2
	jl	.L2123
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2123:
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
	cdbr	%f0,%f2
	jl	.L2128
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2128:
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
	jl	.L2238
	je	.L2141
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r3,%r4
	sra	%r1,1
	sll	%r3,1
	ber	%r14
	lhi	%r5,0
.L2136:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2235
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
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L2139
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,28
	sra	%r4,28
	je	.L2139
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
.L2139:
	ltr	%r5,%r5
	je	.L2134
	lcr	%r2,%r2
.L2134:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2238:
	lhi	%r0,1
	nr	%r0,%r1
	lcr	%r2,%r0
	nr	%r2,%r4
	lcr	%r1,%r1
	lr	%r3,%r4
	lhi	%r5,1
	sll	%r3,1
	sra	%r1,1
	jne	.L2136
	lcr	%r2,%r2
	br	%r14
.L2141:
	lhi	%r2,0
	br	%r14
.L2235:
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
	larl	%r13,.L2288
	ltr	%r4,%r2
	jl	.L2286
	lhi	%r1,1
	lhi	%r0,0
.L2241:
	ltr	%r3,%r3
	jhe	.L2242
	lcr	%r3,%r3
	lr	%r0,%r1
.L2242:
	lr	%r5,%r4
	lr	%r1,%r3
	clr	%r4,%r3
	jle	.L2249
	sll	%r1,1
	clr	%r4,%r1
	jle	.L2250
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L2251
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L2252
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L2253
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L2254
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L2255
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L2256
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L2257
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L2258
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L2259
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L2260
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L2261
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L2262
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L2263
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L2264
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L2265
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L2266
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L2267
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L2268
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L2269
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L2270
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L2271
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L2272
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L2273
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L2274
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L2275
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L2276
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L2277
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L2278
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L2279
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L2287
.L2244:
	ltr	%r0,%r0
	je	.L2240
	lcr	%r2,%r2
.L2240:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2286:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r1,0
	lhi	%r0,1
	j	.L2241
.L2267:
	l	%r3,.L2289-.L2288(%r13)
.L2243:
	lhi	%r2,0
.L2246:
	clr	%r5,%r1
	jl	.L2245
	sr	%r5,%r1
	or	%r2,%r3
.L2245:
	srl	%r3,1
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L2246
	j	.L2244
.L2249:
	lhi	%r3,1
	j	.L2243
.L2250:
	lhi	%r3,2
	j	.L2243
.L2252:
	lhi	%r3,8
	j	.L2243
.L2251:
	lhi	%r3,4
	j	.L2243
.L2253:
	lhi	%r3,16
	j	.L2243
.L2254:
	lhi	%r3,32
	j	.L2243
.L2256:
	lhi	%r3,128
	j	.L2243
.L2255:
	lhi	%r3,64
	j	.L2243
.L2257:
	lhi	%r3,256
	j	.L2243
.L2258:
	lhi	%r3,512
	j	.L2243
.L2259:
	lhi	%r3,1024
	j	.L2243
.L2260:
	lhi	%r3,2048
	j	.L2243
.L2262:
	lhi	%r3,8192
	j	.L2243
.L2261:
	lhi	%r3,4096
	j	.L2243
.L2264:
	l	%r3,.L2290-.L2288(%r13)
	j	.L2243
.L2263:
	lhi	%r3,16384
	j	.L2243
.L2266:
	l	%r3,.L2291-.L2288(%r13)
	j	.L2243
.L2265:
	l	%r3,.L2292-.L2288(%r13)
	j	.L2243
.L2268:
	l	%r3,.L2293-.L2288(%r13)
	j	.L2243
.L2269:
	l	%r3,.L2294-.L2288(%r13)
	j	.L2243
.L2270:
	l	%r3,.L2295-.L2288(%r13)
	j	.L2243
.L2271:
	l	%r3,.L2296-.L2288(%r13)
	j	.L2243
.L2272:
	l	%r3,.L2297-.L2288(%r13)
	j	.L2243
.L2273:
	l	%r3,.L2298-.L2288(%r13)
	j	.L2243
.L2274:
	l	%r3,.L2299-.L2288(%r13)
	j	.L2243
.L2275:
	l	%r3,.L2300-.L2288(%r13)
	j	.L2243
.L2276:
	l	%r3,.L2301-.L2288(%r13)
	j	.L2243
.L2287:
	l	%r1,.L2302-.L2288(%r13)
	lr	%r3,%r1
	j	.L2243
.L2278:
	l	%r3,.L2303-.L2288(%r13)
	j	.L2243
.L2277:
	l	%r3,.L2304-.L2288(%r13)
	j	.L2243
.L2279:
	l	%r3,.L2305-.L2288(%r13)
	j	.L2243
	.section	.rodata
	.align	8
.L2288:
.L2305:
	.long	1073741824
.L2304:
	.long	268435456
.L2303:
	.long	536870912
.L2302:
	.long	-2147483648
.L2301:
	.long	134217728
.L2300:
	.long	67108864
.L2299:
	.long	33554432
.L2298:
	.long	16777216
.L2297:
	.long	8388608
.L2296:
	.long	4194304
.L2295:
	.long	2097152
.L2294:
	.long	1048576
.L2293:
	.long	524288
.L2292:
	.long	65536
.L2291:
	.long	131072
.L2290:
	.long	32768
.L2289:
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
	larl	%r13,.L2353
	ltr	%r2,%r2
	jl	.L2351
	lhi	%r4,0
.L2307:
	lpr	%r1,%r3
	clr	%r2,%r1
	lr	%r3,%r2
	jle	.L2314
	lr	%r5,%r1
	sll	%r5,1
	clr	%r2,%r5
	jle	.L2315
	lr	%r0,%r1
	sll	%r0,2
	clr	%r2,%r0
	jle	.L2316
	lr	%r5,%r1
	sll	%r5,3
	clr	%r2,%r5
	jle	.L2317
	lr	%r0,%r1
	sll	%r0,4
	clr	%r2,%r0
	jle	.L2318
	lr	%r5,%r1
	sll	%r5,5
	clr	%r2,%r5
	jle	.L2319
	lr	%r0,%r1
	sll	%r0,6
	clr	%r2,%r0
	jle	.L2320
	lr	%r5,%r1
	sll	%r5,7
	clr	%r2,%r5
	jle	.L2321
	lr	%r0,%r1
	sll	%r0,8
	clr	%r2,%r0
	jle	.L2322
	lr	%r5,%r1
	sll	%r5,9
	clr	%r2,%r5
	jle	.L2323
	lr	%r0,%r1
	sll	%r0,10
	clr	%r2,%r0
	jle	.L2324
	lr	%r5,%r1
	sll	%r5,11
	clr	%r2,%r5
	jle	.L2325
	lr	%r0,%r1
	sll	%r0,12
	clr	%r2,%r0
	jle	.L2326
	lr	%r5,%r1
	sll	%r5,13
	clr	%r2,%r5
	jle	.L2327
	lr	%r0,%r1
	sll	%r0,14
	clr	%r2,%r0
	jle	.L2328
	lr	%r5,%r1
	sll	%r5,15
	clr	%r2,%r5
	jle	.L2329
	lr	%r0,%r1
	sll	%r0,16
	clr	%r2,%r0
	jle	.L2330
	lr	%r5,%r1
	sll	%r5,17
	clr	%r2,%r5
	jle	.L2331
	lr	%r0,%r1
	sll	%r0,18
	clr	%r2,%r0
	jle	.L2332
	lr	%r5,%r1
	sll	%r5,19
	clr	%r2,%r5
	jle	.L2333
	lr	%r0,%r1
	sll	%r0,20
	clr	%r2,%r0
	jle	.L2334
	lr	%r5,%r1
	sll	%r5,21
	clr	%r2,%r5
	jle	.L2335
	lr	%r0,%r1
	sll	%r0,22
	clr	%r2,%r0
	jle	.L2336
	lr	%r5,%r1
	sll	%r5,23
	clr	%r2,%r5
	jle	.L2337
	lr	%r0,%r1
	sll	%r0,24
	clr	%r2,%r0
	jle	.L2338
	lr	%r5,%r1
	sll	%r5,25
	clr	%r2,%r5
	jle	.L2339
	lr	%r0,%r1
	sll	%r0,26
	clr	%r2,%r0
	jle	.L2340
	lr	%r5,%r1
	sll	%r5,27
	clr	%r2,%r5
	jle	.L2341
	lr	%r0,%r1
	sll	%r0,28
	clr	%r2,%r0
	jle	.L2342
	lr	%r5,%r1
	sll	%r5,29
	clr	%r2,%r5
	jle	.L2343
	lr	%r0,%r1
	sll	%r0,30
	clr	%r2,%r0
	jle	.L2344
	sll	%r1,31
	clr	%r2,%r1
	jle	.L2352
.L2309:
	ltr	%r4,%r4
	je	.L2306
	lcr	%r2,%r2
.L2306:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2351:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r4,1
	j	.L2307
.L2332:
	l	%r2,.L2354-.L2353(%r13)
	lr	%r1,%r0
.L2311:
	clr	%r3,%r1
	jl	.L2310
	sr	%r3,%r1
.L2310:
	srl	%r2,1
	srl	%r1,1
	ltr	%r2,%r2
	jne	.L2311
	lr	%r2,%r3
	j	.L2309
.L2314:
	lhi	%r2,1
	j	.L2311
.L2315:
	lr	%r1,%r5
	lhi	%r2,2
	j	.L2311
.L2317:
	lr	%r1,%r5
	lhi	%r2,8
	j	.L2311
.L2316:
	lr	%r1,%r0
	lhi	%r2,4
	j	.L2311
.L2318:
	lr	%r1,%r0
	lhi	%r2,16
	j	.L2311
.L2319:
	lr	%r1,%r5
	lhi	%r2,32
	j	.L2311
.L2321:
	lr	%r1,%r5
	lhi	%r2,128
	j	.L2311
.L2320:
	lr	%r1,%r0
	lhi	%r2,64
	j	.L2311
.L2322:
	lr	%r1,%r0
	lhi	%r2,256
	j	.L2311
.L2323:
	lr	%r1,%r5
	lhi	%r2,512
	j	.L2311
.L2324:
	lr	%r1,%r0
	lhi	%r2,1024
	j	.L2311
.L2325:
	lr	%r1,%r5
	lhi	%r2,2048
	j	.L2311
.L2327:
	lr	%r1,%r5
	lhi	%r2,8192
	j	.L2311
.L2326:
	lr	%r1,%r0
	lhi	%r2,4096
	j	.L2311
.L2329:
	l	%r2,.L2355-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2328:
	lr	%r1,%r0
	lhi	%r2,16384
	j	.L2311
.L2331:
	l	%r2,.L2356-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2330:
	l	%r2,.L2357-.L2353(%r13)
	lr	%r1,%r0
	j	.L2311
.L2333:
	l	%r2,.L2358-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2334:
	l	%r2,.L2359-.L2353(%r13)
	lr	%r1,%r0
	j	.L2311
.L2335:
	l	%r2,.L2360-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2336:
	l	%r2,.L2361-.L2353(%r13)
	lr	%r1,%r0
	j	.L2311
.L2337:
	l	%r2,.L2362-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2338:
	l	%r2,.L2363-.L2353(%r13)
	lr	%r1,%r0
	j	.L2311
.L2339:
	l	%r2,.L2364-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2340:
	l	%r2,.L2365-.L2353(%r13)
	lr	%r1,%r0
	j	.L2311
.L2341:
	l	%r2,.L2366-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2352:
	l	%r1,.L2367-.L2353(%r13)
	lr	%r2,%r1
	j	.L2311
.L2343:
	l	%r2,.L2368-.L2353(%r13)
	lr	%r1,%r5
	j	.L2311
.L2342:
	l	%r2,.L2369-.L2353(%r13)
	lr	%r1,%r0
	j	.L2311
.L2344:
	l	%r2,.L2370-.L2353(%r13)
	lr	%r1,%r0
	j	.L2311
	.section	.rodata
	.align	8
.L2353:
.L2370:
	.long	1073741824
.L2369:
	.long	268435456
.L2368:
	.long	536870912
.L2367:
	.long	-2147483648
.L2366:
	.long	134217728
.L2365:
	.long	67108864
.L2364:
	.long	33554432
.L2363:
	.long	16777216
.L2362:
	.long	8388608
.L2361:
	.long	4194304
.L2360:
	.long	2097152
.L2359:
	.long	1048576
.L2358:
	.long	524288
.L2357:
	.long	65536
.L2356:
	.long	131072
.L2355:
	.long	32768
.L2354:
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
	larl	%r13,.L2489
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L2487
	tml	%r3,32768
	jne	.L2374
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2375
	tml	%r1,32768
	jne	.L2376
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2377
	tml	%r1,32768
	jne	.L2378
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2379
	tml	%r1,32768
	jne	.L2380
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2381
	tml	%r1,32768
	jne	.L2382
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2383
	tml	%r1,32768
	jne	.L2384
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2385
	tml	%r1,32768
	jne	.L2386
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2387
	tml	%r1,32768
	jne	.L2388
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2389
	tml	%r1,32768
	jne	.L2390
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2391
	tml	%r1,32768
	jne	.L2392
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2393
	tml	%r1,32768
	jne	.L2394
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2395
	tml	%r1,32768
	jne	.L2396
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2397
	tml	%r1,32768
	jne	.L2398
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2399
	tml	%r1,32768
	jne	.L2400
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L2490-.L2489(%r13)
	clr	%r2,%r1
	jle	.L2401
	tml	%r1,32768
	jne	.L2402
	sll	%r3,15
	n	%r3,.L2490-.L2489(%r13)
	clr	%r2,%r3
	jle	.L2403
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L2488
.L2404:
	ltr	%r4,%r4
	je	.L2422
	lr	%r2,%r5
.L2422:
	n	%r2,.L2490-.L2489(%r13)
	lm	%r11,%r13,44(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2391:
	.cfi_restore_state
	jl	.L2438
	sr	%r5,%r1
	lhi	%r0,512
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,512
.L2406:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,2
	srl	%r11,2
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2407
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2407:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,3
	srl	%r11,3
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2408
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2408:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,4
	srl	%r11,4
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2409
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2409:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,5
	srl	%r11,5
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2410
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2410:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,6
	srl	%r11,6
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2411
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2411:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,7
	srl	%r11,7
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2412
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2412:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,8
	srl	%r11,8
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2413
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2413:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,9
	srl	%r11,9
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2414
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2414:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,10
	srl	%r11,10
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2415
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2415:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,11
	srl	%r11,11
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2416
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2416:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,12
	srl	%r11,12
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2417
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2417:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,13
	srl	%r11,13
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2418
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2418:
	l	%r11,.L2490-.L2489(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,14
	srl	%r11,14
	ltr	%r11,%r11
	je	.L2404
	clr	%r5,%r12
	jl	.L2419
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2490-.L2489(%r13)
.L2419:
	n	%r0,.L2490-.L2489(%r13)
	srl	%r1,15
	chi	%r0,16384
	je	.L2404
	clr	%r5,%r1
	jl	.L2427
	sr	%r5,%r1
	lhi	%r0,1
	n	%r5,.L2490-.L2489(%r13)
	or	%r2,%r0
	j	.L2404
.L2427:
	lhi	%r5,0
	j	.L2404
.L2487:
	je	.L2425
	lhi	%r2,0
	j	.L2404
.L2374:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L2490-.L2489(%r13)
	j	.L2404
.L2375:
	jl	.L2430
	sr	%r5,%r1
	lhi	%r0,2
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,2
	j	.L2406
.L2376:
	lhi	%r2,32767
	sr	%r5,%r1
	nr	%r3,%r2
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r12,1
	lhi	%r0,2
	lhi	%r2,2
.L2424:
	clr	%r5,%r3
	jl	.L2406
	sr	%r5,%r3
	or	%r2,%r12
	n	%r5,.L2490-.L2489(%r13)
	j	.L2406
.L2377:
	jl	.L2431
	sr	%r5,%r1
	lhi	%r0,4
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,4
	j	.L2406
.L2378:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,2
	lhi	%r0,4
	lhi	%r2,4
	j	.L2424
.L2379:
	jl	.L2432
	sr	%r5,%r1
	lhi	%r0,8
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,8
	j	.L2406
.L2380:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,4
	lhi	%r0,8
	lhi	%r2,8
	j	.L2424
.L2381:
	jl	.L2433
	sr	%r5,%r1
	lhi	%r0,16
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,16
	j	.L2406
.L2382:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,8
	lhi	%r0,16
	lhi	%r2,16
	j	.L2424
.L2383:
	jl	.L2434
	sr	%r5,%r1
	lhi	%r0,32
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,32
	j	.L2406
.L2384:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,16
	lhi	%r0,32
	lhi	%r2,32
	j	.L2424
.L2385:
	jl	.L2435
	sr	%r5,%r1
	lhi	%r0,64
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,64
	j	.L2406
.L2386:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,32
	lhi	%r0,64
	lhi	%r2,64
	j	.L2424
.L2387:
	jl	.L2436
	sr	%r5,%r1
	lhi	%r0,128
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,128
	j	.L2406
.L2388:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,64
	lhi	%r0,128
	lhi	%r2,128
	j	.L2424
.L2390:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,128
	lhi	%r0,256
	lhi	%r2,256
	j	.L2424
.L2392:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,256
	lhi	%r0,512
	lhi	%r2,512
	j	.L2424
.L2425:
	lhi	%r2,1
	lhi	%r5,0
	j	.L2404
.L2430:
	lhi	%r0,2
.L2423:
	lr	%r3,%r1
	lr	%r12,%r0
	srl	%r3,1
	sll	%r12,16
	lhi	%r2,0
	srl	%r12,17
	j	.L2424
.L2394:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,512
	lhi	%r0,1024
	lhi	%r2,1024
	j	.L2424
.L2396:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,1024
	lhi	%r0,2048
	lhi	%r2,2048
	j	.L2424
.L2431:
	lhi	%r0,4
	j	.L2423
.L2432:
	lhi	%r0,8
	j	.L2423
.L2398:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,2048
	lhi	%r0,4096
	lhi	%r2,4096
	j	.L2424
.L2400:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,4096
	lhi	%r0,8192
	lhi	%r2,8192
	j	.L2424
.L2433:
	lhi	%r0,16
	j	.L2423
.L2434:
	lhi	%r0,32
	j	.L2423
.L2402:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2490-.L2489(%r13)
	srl	%r3,1
	lhi	%r12,8192
	lhi	%r0,16384
	lhi	%r2,16384
	j	.L2424
.L2403:
	l	%r1,.L2491-.L2489(%r13)
	lhi	%r0,-32768
	tml	%r2,32768
	je	.L2423
	lhi	%r2,-32768
	lhi	%r5,0
	j	.L2406
.L2435:
	lhi	%r0,64
	j	.L2423
.L2488:
	ahi	%r5,-32768
	l	%r1,.L2491-.L2489(%r13)
	lhi	%r3,16384
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r12,16384
	lhi	%r0,-32768
	lhi	%r2,-32768
	j	.L2424
.L2436:
	lhi	%r0,128
	j	.L2423
.L2389:
	jl	.L2437
	sr	%r5,%r1
	lhi	%r0,256
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,256
	j	.L2406
.L2437:
	lhi	%r0,256
	j	.L2423
.L2393:
	jl	.L2439
	sr	%r5,%r1
	lhi	%r0,1024
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,1024
	j	.L2406
.L2401:
	jl	.L2443
	sr	%r5,%r1
	lhi	%r0,16384
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,16384
	j	.L2406
.L2439:
	lhi	%r0,1024
	j	.L2423
.L2443:
	lhi	%r0,16384
	j	.L2423
.L2438:
	lhi	%r0,512
	j	.L2423
.L2399:
	jl	.L2442
	sr	%r5,%r1
	lhi	%r0,8192
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,8192
	j	.L2406
.L2397:
	jl	.L2441
	sr	%r5,%r1
	lhi	%r0,4096
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,4096
	j	.L2406
.L2395:
	jl	.L2440
	sr	%r5,%r1
	lhi	%r0,2048
	n	%r5,.L2490-.L2489(%r13)
	lhi	%r2,2048
	j	.L2406
.L2442:
	lhi	%r0,8192
	j	.L2423
.L2441:
	lhi	%r0,4096
	j	.L2423
.L2440:
	lhi	%r0,2048
	j	.L2423
	.section	.rodata
	.align	8
.L2489:
.L2491:
	.long	32768
.L2490:
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
	jle	.L2494
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2493:
	ltr	%r3,%r3
	jl	.L2494
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2495
	ltr	%r3,%r3
	jl	.L2494
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2495
	ltr	%r3,%r3
	jl	.L2494
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2495
	ltr	%r3,%r3
	jl	.L2494
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2495
	ahi	%r2,-4
	brct	%r0,.L2493
	ltr	%r4,%r4
	ber	%r14
.L2515:
	lr	%r2,%r5
	br	%r14
.L2495:
	ltr	%r1,%r1
	je	.L2502
.L2494:
	lhi	%r2,0
.L2499:
	clr	%r5,%r3
	jl	.L2498
	sr	%r5,%r3
	or	%r2,%r1
.L2498:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2499
	ltr	%r4,%r4
	ber	%r14
	j	.L2515
.L2502:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2515
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
	je	.L2518
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L2518:
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
	je	.L2524
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L2524:
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
	larl	%r13,.L2537
	cl	%r2,.L2538-.L2537(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L2539-.L2537(%r13)
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
	jne	.L2534
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L2534:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L2537:
.L2539:
	.long	65280
.L2538:
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
	jl	.L2544
	jh	.L2545
	clr	%r3,%r5
	jl	.L2544
	jh	.L2545
	lhi	%r2,1
	br	%r14
.L2544:
	lhi	%r2,0
	br	%r14
.L2545:
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
	jl	.L2551
	jh	.L2550
	clr	%r3,%r5
	jl	.L2551
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2551:
	lhi	%r2,-1
	br	%r14
.L2550:
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
	larl	%r13,.L2555
	l	%r4,.L2556-.L2555(%r13)
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
.L2555:
.L2556:
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
	je	.L2558
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L2558:
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
	larl	%r13,.L2570
	l	%r4,.L2571-.L2570(%r13)
	l	%r1,.L2571-.L2570(%r13)
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
	l	%r5,.L2571-.L2570(%r13)
	lr	%r0,%r3
	n	%r3,.L2571-.L2570(%r13)
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
.L2570:
.L2571:
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
	larl	%r13,.L2574
	l	%r1,.L2575-.L2574(%r13)
	l	%r0,.L2575-.L2574(%r13)
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
	l	%r12,.L2575-.L2574(%r13)
	lr	%r0,%r11
	n	%r11,.L2575-.L2574(%r13)
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
.L2574:
.L2575:
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
	je	.L2577
	ahi	%r2,-1
.L2577:
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
	larl	%r13,.L2585
	l	%r0,.L2586-.L2585(%r13)
	l	%r1,.L2586-.L2585(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L2587-.L2585(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L2588-.L2585(%r13)
	l	%r3,.L2588-.L2585(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L2588-.L2585(%r13)
	nr	%r3,%r1
	l	%r1,.L2588-.L2585(%r13)
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
	n	%r2,.L2587-.L2585(%r13)
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
.L2585:
.L2588:
	.long	858993459
.L2587:
	.long	252645135
.L2586:
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
	larl	%r5,.L2591
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L2592-.L2591(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L2593-.L2591(%r5)
	srl	%r0,2
	n	%r0,.L2593-.L2591(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L2594-.L2591(%r5)
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
.L2591:
.L2594:
	.long	252645135
.L2593:
	.long	858993459
.L2592:
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
	larl	%r5,.L2604
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L2605-.L2604(%r5)
	tml	%r2,1
	je	.L2596
.L2598:
	mdbr	%f0,%f2
.L2596:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2597
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L2598
.L2603:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2598
	j	.L2603
.L2597:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L2605-.L2604(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2604:
.L2605:
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
	larl	%r5,.L2615
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L2616-.L2615(%r5)
	tml	%r2,1
	je	.L2607
.L2609:
	meebr	%f0,%f2
.L2607:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2608
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L2609
.L2614:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2609
	j	.L2614
.L2608:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L2616-.L2615(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2615:
.L2616:
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
	jl	.L2621
	jh	.L2622
	clr	%r3,%r5
	jl	.L2621
	jh	.L2622
	lhi	%r2,1
	br	%r14
.L2621:
	lhi	%r2,0
	br	%r14
.L2622:
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
	jl	.L2628
	jh	.L2627
	clr	%r3,%r5
	jl	.L2628
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2628:
	lhi	%r2,-1
	br	%r14
.L2627:
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
