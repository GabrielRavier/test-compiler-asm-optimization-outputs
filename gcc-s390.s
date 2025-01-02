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
	larl	%r5,.L381
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L376
	kdbr	%f0,%f2
	jnh	.L379
	sdbr	%f0,%f2
	br	%r14
.L379:
	ld	%f0,.L382-.L381(%r5)
	br	%r14
.L376:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L381:
.L382:
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
	larl	%r5,.L392
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L387
	kebr	%f0,%f2
	jnh	.L390
	sebr	%f0,%f2
	br	%r14
.L390:
	le	%f0,.L393-.L392(%r5)
	br	%r14
.L387:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L392:
.L393:
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
	jo	.L402
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L404
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L399
	lhi	%r0,0
.L399:
	tml	%r0,1
	jne	.L402
	ldr	%f2,%f0
.L402:
	ldr	%f0,%f2
	br	%r14
.L404:
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
	jne	.L416
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L411
	lhi	%r0,0
.L411:
	tml	%r0,1
	jne	.L414
	ler	%f2,%f0
.L414:
	ler	%f0,%f2
	br	%r14
.L416:
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
	jo	.L425
	cxbr	%f0,%f0
	jo	.L419
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
	jne	.L430
	lxr	%f5,%f0
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	lhi	%r0,1
	kxbr	%f0,%f5
	jl	.L424
	lhi	%r0,0
.L424:
	tml	%r0,1
	je	.L422
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L423:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L419:
	ld	%f10,96(%r15)
	ld	%f12,104(%r15)
	std	%f10,0(%r2)
	std	%f12,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L430:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L419
.L425:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f10,96(%r15)
	ld	%f12,104(%r15)
	std	%f10,0(%r2)
	std	%f12,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L422:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L423
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
	jo	.L438
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L441
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L437
	lhi	%r0,0
.L437:
	tml	%r0,1
	bner	%r14
.L438:
	ldr	%f0,%f2
	br	%r14
.L441:
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
	jo	.L449
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L452
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L448
	lhi	%r0,0
.L448:
	tml	%r0,1
	bner	%r14
.L449:
	ler	%f0,%f2
	br	%r14
.L452:
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
	jo	.L455
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L461
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L466
	lxr	%f5,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	lhi	%r0,1
	kxbr	%f0,%f5
	jl	.L460
	lhi	%r0,0
.L460:
	tml	%r0,1
	je	.L458
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L459:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L455:
	ld	%f14,96(%r15)
	ld	%f9,104(%r15)
	std	%f14,0(%r2)
	std	%f9,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L466:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L455
	ld	%f10,112(%r15)
	ld	%f12,120(%r15)
	std	%f10,96(%r15)
	std	%f12,104(%r15)
	ld	%f14,96(%r15)
	ld	%f9,104(%r15)
	std	%f14,0(%r2)
	std	%f9,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L458:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L459
.L461:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L455
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
	je	.L469
	larl	%r4,.LANCHOR1
.L470:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L470
.L469:
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
	je	.L485
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L485:
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
	je	.L488
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L488:
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
	je	.L498
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L522
.L510:
	srl	%r11,1
.L500:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L497
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L497
	ar	%r12,%r10
	brct	%r11,.L500
.L498:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L497
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L497:
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
.L522:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L497
	ar	%r12,%r10
	chi	%r13,1
	jne	.L510
	j	.L498
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
	je	.L525
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L545
.L534:
	srl	%r11,1
.L527:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L524
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L524
	ar	%r12,%r9
	brct	%r11,.L527
.L525:
	lhi	%r8,0
.L524:
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
.L545:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L524
	ar	%r12,%r9
	chi	%r7,1
	jne	.L534
	j	.L525
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
.L556:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L550
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L550
	chi	%r1,43
	je	.L551
	chi	%r1,45
	je	.L552
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L561
	lr	%r3,%r2
	lhi	%r12,0
.L554:
	lhi	%r2,0
.L558:
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
	jle	.L558
	ltr	%r12,%r12
	jne	.L549
	lr	%r2,%r5
	sr	%r2,%r1
.L549:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L550:
	.cfi_restore_state
	ahi	%r2,1
	j	.L556
.L552:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L561
	lhi	%r12,1
	j	.L554
.L551:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L554
.L561:
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
.L576:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L572
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L572
	chi	%r1,43
	je	.L573
	chi	%r1,45
	je	.L574
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L583
	lr	%r3,%r2
	lhi	%r12,0
.L577:
	lhi	%r2,0
.L580:
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
	jle	.L580
	ltr	%r12,%r12
	jne	.L571
	lr	%r2,%r5
	sr	%r2,%r1
.L571:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L572:
	.cfi_restore_state
	ahi	%r2,1
	j	.L576
.L574:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	lr	%r3,%r2
	lhi	%r12,1
	clr	%r11,%r1
	jle	.L577
.L583:
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
.L573:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L583
	lhi	%r12,0
	j	.L577
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
.L601:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L595
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L595
	chi	%r3,43
	je	.L596
	chi	%r3,45
	jne	.L615
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L606
	lhi	%r2,1
.L599:
	lhi	%r10,0
	lhi	%r11,0
.L603:
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
	jle	.L603
	ltr	%r2,%r2
	jne	.L594
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L594:
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
.L595:
	.cfi_restore_state
	ahi	%r2,1
	j	.L601
.L615:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L606
	lr	%r3,%r2
	lhi	%r2,0
	j	.L599
.L596:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L599
.L606:
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
	je	.L618
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	j	.L621
.L631:
	je	.L617
	ahi	%r12,-1
	ar	%r11,%r9
	sr	%r12,%r10
	lr	%r8,%r11
	ltr	%r12,%r12
	je	.L618
.L621:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	lr	%r2,%r7
	ar	%r11,%r8
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L631
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L621
.L618:
	lhi	%r11,0
.L617:
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
	je	.L638
.L634:
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
	je	.L633
	jle	.L636
	ar	%r12,%r10
	ahi	%r11,-1
	lr	%r9,%r12
	sra	%r11,1
	jne	.L634
.L638:
	lhi	%r12,0
.L633:
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
.L636:
	.cfi_restore_state
	ltr	%r7,%r7
	je	.L638
	lr	%r11,%r7
	j	.L634
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
	jl	.L654
.L651:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L654:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L651
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
	jl	.L667
.L664:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L667:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L664
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
	j	.L680
.L681:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L680:
	icm	%r1,15,0(%r2)
	jne	.L681
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
	je	.L684
	j	.L685
.L686:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L685
.L684:
	ltr	%r4,%r4
	jne	.L686
.L685:
	cr	%r4,%r5
	jl	.L690
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L690:
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
.L694:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L694
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
	je	.L701
.L700:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L700
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L701:
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
	je	.L711
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L726
.L714:
	srl	%r4,1
.L705:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L707
	ltr	%r0,%r0
	je	.L707
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L707
	ltr	%r5,%r5
	je	.L707
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L705
.L711:
	lhi	%r2,0
	br	%r14
.L707:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L727
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L726:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L707
	ltr	%r1,%r1
	je	.L707
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L714
	j	.L711
.L727:
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
	je	.L733
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L740
	chi	%r5,1
	je	.L751
	chi	%r5,2
	je	.L752
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L752:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L751:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L733
.L740:
	srl	%r1,2
	lr	%r0,%r1
.L730:
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
	brct	%r0,.L730
.L733:
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
	je	.L771
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L778
	chi	%r1,1
	je	.L789
	chi	%r1,2
	je	.L790
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L797
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L790:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L797
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L789:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L797
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L771
.L778:
	srl	%r5,2
.L765:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L797
	l	%r1,4(%r2)
	ahi	%r3,4
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L797
	l	%r1,8(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L797
	l	%r1,12(%r2)
	lr	%r3,%r4
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L797
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L765
.L771:
	lhi	%r2,0
	br	%r14
.L797:
	c	%r1,0(%r3)
	jl	.L800
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L800:
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
	je	.L803
	sll	%r4,2
	brasl	%r14,memcpy
.L803:
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
	larl	%r13,.L858
	cr	%r2,%r3
	je	.L817
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L857
	ltr	%r4,%r4
	je	.L817
	l	%r4,.L859-.L858(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L827
	chi	%r5,1
	je	.L843
	chi	%r5,2
	je	.L844
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L844:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L843:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L817
.L827:
	srl	%r4,2
.L814:
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
	brct	%r4,.L814
.L817:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L857:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L817
	lhi	%r0,3
	nr	%r0,%r4
	je	.L836
	chi	%r0,1
	je	.L841
	chi	%r0,2
	je	.L842
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L842:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L841:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L817
.L836:
	srl	%r4,2
.L812:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L812
	j	.L817
	.section	.rodata
	.align	8
.L858:
.L859:
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
	je	.L871
	chi	%r0,1
	je	.L875
	chi	%r0,2
	je	.L876
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L876:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L875:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L871:
	srl	%r4,2
.L862:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L862
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
	jhe	.L885
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L916
	chi	%r5,1
	je	.L938
	chi	%r5,2
	jne	.L972
.L939:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L938:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L916
	br	%r14
.L885:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L895
	lr	%r0,%r3
	lhi	%r1,3
	or	%r0,%r2
	nr	%r0,%r1
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L895
	lr	%r5,%r2
	ahi	%r5,1
	lr	%r0,%r3
	lhi	%r1,2
	sr	%r0,%r5
	clr	%r0,%r1
	jle	.L895
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
	je	.L934
	chi	%r12,1
	je	.L940
	chi	%r12,2
	je	.L941
	l	%r1,0(%r2)
	st	%r1,0(%r3)
	lhi	%r1,4
.L941:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
.L940:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L963
.L934:
	srl	%r5,2
.L889:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r12,4(%r1,%r2)
	st	%r12,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r12,12(%r1,%r2)
	st	%r12,12(%r1,%r3)
	ahi	%r1,16
	brct	%r5,.L889
.L963:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L884
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L884
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L884
	mvc	2(1,%r3),2(%r2)
.L884:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L916:
	srl	%r1,2
.L887:
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
	brct	%r1,.L887
	br	%r14
.L972:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
	j	.L939
.L895:
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L925
	chi	%r0,1
	je	.L942
	chi	%r0,2
	je	.L943
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L943:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L942:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L925:
	lr	%r4,%r5
	srl	%r4,2
.L892:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L892
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
	larl	%r5,.L990
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L991-.L990(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L990:
.L991:
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
	larl	%r5,.L994
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
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
	larl	%r5,.L1002
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L1003-.L1002(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1002:
.L1003:
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
	jne	.L1011
	tml	%r2,2
	jne	.L1012
	tml	%r2,4
	jne	.L1013
	tml	%r2,8
	jne	.L1014
	tml	%r2,16
	jne	.L1015
	tml	%r2,32
	jne	.L1016
	tml	%r2,64
	jne	.L1017
	tml	%r2,128
	jne	.L1018
	tml	%r2,256
	jne	.L1019
	tml	%r2,512
	jne	.L1020
	tml	%r2,1024
	jne	.L1021
	tml	%r2,2048
	jne	.L1022
	tml	%r2,4096
	jne	.L1023
	tml	%r2,8192
	jne	.L1024
	tml	%r2,16384
	jne	.L1025
	tml	%r2,32768
	jne	.L1026
	tmh	%r2,1
	jne	.L1027
	tmh	%r2,2
	jne	.L1028
	tmh	%r2,4
	jne	.L1029
	tmh	%r2,8
	jne	.L1030
	tmh	%r2,16
	jne	.L1031
	tmh	%r2,32
	jne	.L1032
	tmh	%r2,64
	jne	.L1033
	tmh	%r2,128
	jne	.L1034
	tmh	%r2,256
	jne	.L1035
	tmh	%r2,512
	jne	.L1036
	tmh	%r2,1024
	jne	.L1037
	tmh	%r2,2048
	jne	.L1038
	tmh	%r2,4096
	jne	.L1039
	tmh	%r2,8192
	jne	.L1040
	tmh	%r2,16384
	jne	.L1041
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L1011:
	lhi	%r2,1
	br	%r14
.L1012:
	lhi	%r2,2
	br	%r14
.L1023:
	lhi	%r2,13
	br	%r14
.L1039:
	lhi	%r2,29
	br	%r14
.L1013:
	lhi	%r2,3
	br	%r14
.L1014:
	lhi	%r2,4
	br	%r14
.L1015:
	lhi	%r2,5
	br	%r14
.L1016:
	lhi	%r2,6
	br	%r14
.L1017:
	lhi	%r2,7
	br	%r14
.L1018:
	lhi	%r2,8
	br	%r14
.L1019:
	lhi	%r2,9
	br	%r14
.L1020:
	lhi	%r2,10
	br	%r14
.L1021:
	lhi	%r2,11
	br	%r14
.L1022:
	lhi	%r2,12
	br	%r14
.L1024:
	lhi	%r2,14
	br	%r14
.L1025:
	lhi	%r2,15
	br	%r14
.L1026:
	lhi	%r2,16
	br	%r14
.L1027:
	lhi	%r2,17
	br	%r14
.L1028:
	lhi	%r2,18
	br	%r14
.L1029:
	lhi	%r2,19
	br	%r14
.L1030:
	lhi	%r2,20
	br	%r14
.L1031:
	lhi	%r2,21
	br	%r14
.L1032:
	lhi	%r2,22
	br	%r14
.L1033:
	lhi	%r2,23
	br	%r14
.L1034:
	lhi	%r2,24
	br	%r14
.L1035:
	lhi	%r2,25
	br	%r14
.L1036:
	lhi	%r2,26
	br	%r14
.L1037:
	lhi	%r2,27
	br	%r14
.L1038:
	lhi	%r2,28
	br	%r14
.L1040:
	lhi	%r2,30
	br	%r14
.L1041:
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
	je	.L1048
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1047:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L1047
	br	%r14
.L1048:
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
	larl	%r5,.L1058
	lhi	%r2,1
	keb	%f0,.L1059-.L1058(%r5)
	blr	%r14
	keb	%f0,.L1060-.L1058(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1058:
.L1060:
	.long	2139095039
.L1059:
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
	larl	%r5,.L1066
	kdb	%f0,.L1067-.L1066(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L1068-.L1066(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1066:
.L1068:
	.long	2146435071
	.long	-1
.L1067:
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
	larl	%r5,.L1074
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L1075-.L1074(%r5)
	ld	%f3,.L1075-.L1074+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L1076-.L1074(%r5)
	ld	%f3,.L1076-.L1074+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1074:
.L1076:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1075:
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
	larl	%r5,.L1095
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1093
	le	%f1,.L1096-.L1095(%r5)
.L1081:
	tml	%r2,1
	je	.L1082
.L1083:
	meebr	%f0,%f1
.L1082:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L1083
.L1094:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1083
	j	.L1094
.L1093:
	le	%f1,.L1097-.L1095(%r5)
	j	.L1081
	.section	.rodata
	.align	8
.L1095:
.L1097:
	.long	1056964608
.L1096:
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
	larl	%r5,.L1114
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1112
	ld	%f1,.L1115-.L1114(%r5)
.L1100:
	tml	%r2,1
	je	.L1101
.L1102:
	mdbr	%f0,%f1
.L1101:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L1102
.L1113:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1102
	j	.L1113
.L1112:
	ld	%f1,.L1116-.L1114(%r5)
	j	.L1100
	.section	.rodata
	.align	8
.L1114:
.L1116:
	.long	1071644672
	.long	0
.L1115:
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
	larl	%r5,.L1133
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1118
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1118
	ltr	%r4,%r4
	jl	.L1131
	ld	%f0,.L1134-.L1133(%r5)
	ld	%f2,.L1134-.L1133+8(%r5)
.L1119:
	tml	%r4,1
	je	.L1120
.L1121:
	mxbr	%f1,%f0
.L1120:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1118
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L1121
.L1132:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L1121
	j	.L1132
.L1118:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1131:
	ld	%f0,.L1135-.L1133(%r5)
	ld	%f2,.L1135-.L1133+8(%r5)
	j	.L1119
	.section	.rodata
	.align	8
.L1133:
.L1135:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1134:
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
	jle	.L1144
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1144
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1179
	chi	%r12,1
	je	.L1183
	chi	%r12,2
	je	.L1184
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1184:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L1183:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1207
.L1179:
	srl	%r5,2
.L1139:
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
	brct	%r5,.L1139
.L1207:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L1137
	xc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L1137
	xc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L1137
	xc	2(1,%r5),2(%r3)
.L1137:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1144:
	.cfi_restore_state
	lhi	%r12,7
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r12,%r4
	je	.L1166
	chi	%r12,1
	je	.L1185
	chi	%r12,2
	je	.L1186
	chi	%r12,3
	je	.L1187
	chi	%r12,4
	je	.L1188
	chi	%r12,5
	je	.L1189
	chi	%r12,6
	je	.L1190
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1190:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1189:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1188:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1187:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1186:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1185:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1137
.L1166:
	lr	%r4,%r5
	srl	%r4,3
.L1141:
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
	brct	%r4,.L1141
	j	.L1137
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
	je	.L1216
.L1217:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1217
.L1216:
	ltr	%r4,%r4
	je	.L1219
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1239
.L1228:
	srl	%r4,1
.L1218:
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
	brct	%r4,.L1218
.L1219:
	mvi	0(%r1),0
	br	%r14
.L1239:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1228
	j	.L1219
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
	je	.L1253
	chi	%r5,1
	je	.L1264
	chi	%r5,2
	je	.L1265
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1265:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1264:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1253:
	srl	%r4,2
.L1242:
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
	brct	%r4,.L1242
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
	je	.L1277
.L1281:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1276
.L1275:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1276:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1275
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1281
.L1277:
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
.L1285:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L1284
	lr	%r2,%r1
.L1284:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1285
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
	je	.L1289
	lr	%r11,%r3
.L1291:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1291
	slr	%r11,%r3
	jhe	.L1289
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1299
.L1311:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1310
.L1299:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1311
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1307
.L1295:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1289
.L1296:
	ahi	%r2,1
	j	.L1299
.L1307:
	lhi	%r8,255
	nr	%r1,%r8
	nr	%r4,%r8
	cr	%r1,%r4
	jne	.L1296
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1312
	icm	%r4,1,1(%r12)
	je	.L1296
	lr	%r12,%r8
	brct	%r9,.L1307
	j	.L1295
.L1310:
	lhi	%r2,0
.L1289:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1312:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1296
	j	.L1289
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
	larl	%r5,.L1326
	kdb	%f0,.L1327-.L1326(%r5)
	jl	.L1325
	jnh	.L1318
	kdb	%f2,.L1327-.L1326(%r5)
	jl	.L1317
.L1318:
	br	%r14
.L1325:
	kdb	%f2,.L1327-.L1326(%r5)
	jnh	.L1318
.L1317:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1326:
.L1327:
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
	ltr	%r0,%r5
	ber	%r14
	clr	%r3,%r0
	jl	.L1337
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1337
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1334
.L1338:
	lr	%r2,%r5
.L1330:
	clr	%r3,%r2
	jl	.L1339
.L1334:
	lr	%r5,%r2
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1338
	chi	%r0,1
	je	.L1328
.L1333:
	lr	%r12,%r0
	lhi	%r10,3
	ahi	%r12,-1
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1349
	chi	%r10,1
	je	.L1359
	chi	%r10,2
	jne	.L1372
.L1360:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1366
	ahi	%r1,1
.L1359:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1366
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1328
.L1349:
	srl	%r12,2
.L1331:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1366
	ic	%r8,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1366
	ic	%r8,2(%r1,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1366
	ic	%r8,3(%r1,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1366
	ahi	%r1,4
	brct	%r12,.L1331
.L1328:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1372:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	je	.L1360
.L1366:
	clr	%r3,%r5
	jl	.L1339
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1330
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1333
.L1339:
	lhi	%r2,0
	lm	%r8,%r12,32(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1337:
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
	je	.L1375
	brasl	%r14,memmove
.L1375:
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
	larl	%r5,.L1408
	kdb	%f0,.L1409-.L1408(%r5)
	jl	.L1404
	kdb	%f0,.L1410-.L1408(%r5)
	jnhe	.L1405
	lhi	%r3,0
.L1384:
	lhi	%r0,0
.L1390:
	ahi	%r0,1
	mdb	%f0,.L1411-.L1408(%r5)
	kdb	%f0,.L1410-.L1408(%r5)
	jhe	.L1390
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1407:
	lcdbr	%f0,%f0
	br	%r14
.L1405:
	kdb	%f0,.L1411-.L1408(%r5)
	jnl	.L1387
	cdb	%f0,.L1409-.L1408(%r5)
	jne	.L1396
.L1387:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1404:
	lcdbr	%f2,%f0
	kdb	%f0,.L1412-.L1408(%r5)
	jnle	.L1406
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1384
.L1406:
	kdb	%f0,.L1413-.L1408(%r5)
	jnh	.L1387
	lhi	%r3,1
.L1385:
	ldr	%f0,%f2
	lhi	%r0,0
.L1392:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1411-.L1408(%r5)
	jl	.L1392
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1407
	br	%r14
.L1396:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1385
	.section	.rodata
	.align	8
.L1408:
.L1413:
	.long	-1075838976
	.long	0
.L1412:
	.long	-1074790400
	.long	0
.L1411:
	.long	1071644672
	.long	0
.L1410:
	.long	1072693248
	.long	0
.L1409:
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
	je	.L1418
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
.L1417:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1420
	ahi	%r2,-1
.L1420:
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
	jne	.L1417
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
.L1418:
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
	jhe	.L1428
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L1427:
	ltr	%r3,%r3
	jl	.L1428
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1429
	ltr	%r3,%r3
	jl	.L1428
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1429
	ltr	%r3,%r3
	jl	.L1428
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1429
	ltr	%r3,%r3
	jl	.L1428
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1429
	ahi	%r2,-4
	brct	%r0,.L1427
	ltr	%r4,%r4
	ber	%r14
.L1449:
	lr	%r2,%r5
	br	%r14
.L1429:
	ltr	%r1,%r1
	je	.L1436
.L1428:
	lhi	%r2,0
.L1433:
	clr	%r5,%r3
	jl	.L1432
	sr	%r5,%r3
	or	%r2,%r1
.L1432:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1433
	ltr	%r4,%r4
	ber	%r14
	j	.L1449
.L1436:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1449
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
	je	.L1453
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
.L1453:
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
	je	.L1468
.L1463:
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
.L1468:
	cr	%r5,%r1
	jne	.L1463
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
	je	.L1473
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
.L1473:
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
	jl	.L1569
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1661
.L1569:
	ltr	%r1,%r1
	je	.L1662
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	lr	%r9,%r1
	srl	%r5,3
	lhi	%r10,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r10,%r5
	je	.L1611
	chi	%r10,1
	je	.L1627
	chi	%r10,2
	je	.L1628
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1628:
	l	%r8,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r8,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
.L1627:
	l	%r10,0(%r1,%r3)
	l	%r0,4(%r1,%r3)
	st	%r10,0(%r1,%r2)
	st	%r0,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r9
	je	.L1655
.L1611:
	srl	%r5,2
.L1572:
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
	brct	%r5,.L1572
.L1655:
	clr	%r4,%r12
	jle	.L1565
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1629
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
	jle	.L1629
	lr	%r9,%r10
	lhi	%r5,3
	or	%r9,%r11
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L1629
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1602
	chi	%r8,1
	je	.L1630
	chi	%r8,2
	jne	.L1663
.L1631:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1630:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1654
.L1602:
	srl	%r5,2
.L1575:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1575
.L1654:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1565
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1565
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1565
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1565:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1661:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L1565
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1620
	chi	%r0,1
	je	.L1625
	chi	%r0,2
	je	.L1626
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
.L1626:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L1625:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L1565
.L1620:
	srl	%r4,2
.L1570:
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
	brct	%r4,.L1570
	j	.L1565
.L1663:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1631
.L1662:
	ltr	%r4,%r4
	je	.L1565
.L1629:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1593
	chi	%r5,1
	je	.L1632
	chi	%r5,2
	jne	.L1664
.L1633:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1632:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1565
.L1593:
	srl	%r1,2
.L1577:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1577
	j	.L1565
.L1664:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1633
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
	jl	.L1670
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L1747
.L1670:
	ltr	%r0,%r0
	je	.L1748
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r10,%r0
	lhi	%r11,8
	ahi	%r10,-1
	clr	%r10,%r11
	jle	.L1673
	lr	%r12,%r3
	lhi	%r1,3
	or	%r12,%r2
	nr	%r12,%r1
	ahi	%r12,-1
	ltr	%r12,%r12
	jhe	.L1673
	lr	%r5,%r3
	ahi	%r5,2
	cr	%r2,%r5
	je	.L1673
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
	je	.L1703
	chi	%r10,1
	je	.L1719
	chi	%r10,2
	jne	.L1749
.L1720:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L1719:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1738
.L1703:
	srl	%r5,2
.L1674:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1674
.L1738:
	sll	%r11,1
	cr	%r0,%r11
	je	.L1669
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L1669:
	tml	%r4,1
	je	.L1666
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1666:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1747:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1712
	chi	%r5,1
	je	.L1717
	chi	%r5,2
	je	.L1718
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1718:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1717:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1712:
	srl	%r4,2
.L1671:
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
	brct	%r4,.L1671
	br	%r14
.L1749:
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L1720
.L1673:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r12,3
	srl	%r5,1
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1694
	chi	%r12,1
	je	.L1721
	chi	%r12,2
	jne	.L1750
.L1722:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L1721:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1669
.L1694:
	srl	%r5,2
.L1676:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r11,2(%r1,%r3)
	sth	%r11,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1676
	j	.L1669
.L1748:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
	br	%r14
.L1750:
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lh	%r11,0(%r3)
	lhi	%r1,2
	sth	%r11,0(%r2)
	j	.L1722
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
	jl	.L1756
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1848
.L1756:
	ltr	%r1,%r1
	je	.L1849
	sll	%r1,2
	lr	%r10,%r1
	ahi	%r10,-4
	lhi	%r11,3
	srl	%r10,2
	lr	%r9,%r1
	ahi	%r10,1
	lhi	%r5,0
	nr	%r11,%r10
	je	.L1798
	chi	%r11,1
	je	.L1814
	chi	%r11,2
	je	.L1815
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
.L1815:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L1814:
	l	%r8,0(%r5,%r3)
	st	%r8,0(%r5,%r2)
	ahi	%r5,4
	cr	%r5,%r9
	je	.L1842
.L1798:
	srl	%r10,2
.L1759:
	l	%r9,0(%r5,%r3)
	st	%r9,0(%r5,%r2)
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r10,.L1759
.L1842:
	clr	%r4,%r12
	jle	.L1752
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r10,%r0
	ahi	%r10,-1
	clr	%r10,%r5
	jle	.L1816
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
	jle	.L1816
	lr	%r8,%r10
	lhi	%r5,3
	or	%r8,%r11
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1816
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1789
	chi	%r8,1
	je	.L1817
	chi	%r8,2
	jne	.L1850
.L1818:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1817:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1841
.L1789:
	srl	%r5,2
.L1762:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1762
.L1841:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1752
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1752
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1752
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1752:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1848:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L1752
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1807
	chi	%r0,1
	je	.L1812
	chi	%r0,2
	je	.L1813
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
.L1813:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L1812:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L1752
.L1807:
	srl	%r4,2
.L1757:
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
	brct	%r4,.L1757
	j	.L1752
.L1850:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1818
.L1849:
	ltr	%r4,%r4
	je	.L1752
.L1816:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1780
	chi	%r5,1
	je	.L1819
	chi	%r5,2
	jne	.L1851
.L1820:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1819:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1752
.L1780:
	srl	%r1,2
.L1764:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1764
	j	.L1752
.L1851:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1820
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
	larl	%r5,.L1858
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1859-.L1858(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1858:
.L1859:
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
	larl	%r5,.L1863
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1861
	adb	%f0,.L1864-.L1863(%r5)
.L1861:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1863:
.L1864:
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
	jne	.L1876
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L1877
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L1878
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L1879
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L1880
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L1881
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L1882
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L1883
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L1884
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L1885
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L1886
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L1887
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L1888
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L1889
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1876:
	lhi	%r2,0
	br	%r14
.L1887:
	lhi	%r2,12
	br	%r14
.L1877:
	lhi	%r2,2
	br	%r14
.L1878:
	lhi	%r2,3
	br	%r14
.L1879:
	lhi	%r2,4
	br	%r14
.L1880:
	lhi	%r2,5
	br	%r14
.L1881:
	lhi	%r2,6
	br	%r14
.L1882:
	lhi	%r2,7
	br	%r14
.L1883:
	lhi	%r2,8
	br	%r14
.L1884:
	lhi	%r2,9
	br	%r14
.L1885:
	lhi	%r2,10
	br	%r14
.L1886:
	lhi	%r2,11
	br	%r14
.L1888:
	lhi	%r2,13
	br	%r14
.L1889:
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
	jne	.L1896
	tml	%r2,2
	jne	.L1897
	tml	%r2,4
	jne	.L1898
	tml	%r2,8
	jne	.L1899
	tml	%r2,16
	jne	.L1900
	tml	%r2,32
	jne	.L1901
	tml	%r2,64
	jne	.L1902
	tml	%r2,128
	jne	.L1903
	tml	%r2,256
	jne	.L1904
	tml	%r2,512
	jne	.L1905
	tml	%r2,1024
	jne	.L1906
	tml	%r2,2048
	jne	.L1907
	tml	%r2,4096
	jne	.L1908
	tml	%r2,8192
	jne	.L1909
	tml	%r2,16384
	jne	.L1910
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1896:
	lhi	%r2,0
	br	%r14
.L1897:
	lhi	%r2,1
	br	%r14
.L1908:
	lhi	%r2,12
	br	%r14
.L1898:
	lhi	%r2,2
	br	%r14
.L1899:
	lhi	%r2,3
	br	%r14
.L1900:
	lhi	%r2,4
	br	%r14
.L1901:
	lhi	%r2,5
	br	%r14
.L1902:
	lhi	%r2,6
	br	%r14
.L1903:
	lhi	%r2,7
	br	%r14
.L1904:
	lhi	%r2,8
	br	%r14
.L1905:
	lhi	%r2,9
	br	%r14
.L1906:
	lhi	%r2,10
	br	%r14
.L1907:
	lhi	%r2,11
	br	%r14
.L1909:
	lhi	%r2,13
	br	%r14
.L1910:
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
	larl	%r5,.L1922
	keb	%f0,.L1923-.L1922(%r5)
	jhe	.L1921
	cfebr	%r2,5,%f0
	br	%r14
.L1921:
	seb	%f0,.L1923-.L1922(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1924-.L1922(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1922:
.L1923:
	.long	1191182336
.L1924:
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
	je	.L1932
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
.L1932:
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
	je	.L2028
	ltr	%r3,%r3
	je	.L2028
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
.L2028:
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
	jle	.L2122
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2121:
	ltr	%r3,%r3
	jl	.L2122
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2123
	ltr	%r3,%r3
	jl	.L2122
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2123
	ltr	%r3,%r3
	jl	.L2122
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2123
	ltr	%r3,%r3
	jl	.L2122
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2123
	ahi	%r2,-4
	brct	%r0,.L2121
	ltr	%r4,%r4
	ber	%r14
.L2143:
	lr	%r2,%r5
	br	%r14
.L2123:
	ltr	%r1,%r1
	je	.L2130
.L2122:
	lhi	%r2,0
.L2127:
	clr	%r5,%r3
	jl	.L2126
	sr	%r5,%r3
	or	%r2,%r1
.L2126:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2127
	ltr	%r4,%r4
	ber	%r14
	j	.L2143
.L2130:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2143
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
	jl	.L2148
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2148:
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
	jl	.L2153
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2153:
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
	jl	.L2263
	je	.L2166
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r3,%r4
	sra	%r1,1
	sll	%r3,1
	ber	%r14
	lhi	%r5,0
.L2161:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2260
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
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L2164
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,28
	sra	%r4,28
	je	.L2164
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
.L2164:
	ltr	%r5,%r5
	je	.L2159
	lcr	%r2,%r2
.L2159:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2263:
	lhi	%r0,1
	nr	%r0,%r1
	lcr	%r2,%r0
	nr	%r2,%r4
	lcr	%r1,%r1
	lr	%r3,%r4
	lhi	%r5,1
	sll	%r3,1
	sra	%r1,1
	jne	.L2161
	lcr	%r2,%r2
	br	%r14
.L2166:
	lhi	%r2,0
	br	%r14
.L2260:
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
	larl	%r13,.L2313
	ltr	%r4,%r2
	jl	.L2311
	lhi	%r1,1
	lhi	%r0,0
.L2266:
	ltr	%r3,%r3
	jhe	.L2267
	lcr	%r3,%r3
	lr	%r0,%r1
.L2267:
	lr	%r5,%r4
	lr	%r1,%r3
	clr	%r4,%r3
	jle	.L2274
	sll	%r1,1
	clr	%r4,%r1
	jle	.L2275
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L2276
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L2277
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L2278
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L2279
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L2280
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L2281
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L2282
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L2283
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L2284
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L2285
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L2286
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L2287
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L2288
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L2289
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L2290
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L2291
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L2292
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L2293
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L2294
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L2295
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L2296
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L2297
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L2298
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L2299
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L2300
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L2301
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L2302
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L2303
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L2304
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L2312
.L2269:
	ltr	%r0,%r0
	je	.L2265
	lcr	%r2,%r2
.L2265:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2311:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r1,0
	lhi	%r0,1
	j	.L2266
.L2292:
	l	%r3,.L2314-.L2313(%r13)
.L2268:
	lhi	%r2,0
.L2271:
	clr	%r5,%r1
	jl	.L2270
	sr	%r5,%r1
	or	%r2,%r3
.L2270:
	srl	%r3,1
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L2271
	j	.L2269
.L2274:
	lhi	%r3,1
	j	.L2268
.L2275:
	lhi	%r3,2
	j	.L2268
.L2277:
	lhi	%r3,8
	j	.L2268
.L2276:
	lhi	%r3,4
	j	.L2268
.L2278:
	lhi	%r3,16
	j	.L2268
.L2279:
	lhi	%r3,32
	j	.L2268
.L2281:
	lhi	%r3,128
	j	.L2268
.L2280:
	lhi	%r3,64
	j	.L2268
.L2282:
	lhi	%r3,256
	j	.L2268
.L2283:
	lhi	%r3,512
	j	.L2268
.L2284:
	lhi	%r3,1024
	j	.L2268
.L2285:
	lhi	%r3,2048
	j	.L2268
.L2287:
	lhi	%r3,8192
	j	.L2268
.L2286:
	lhi	%r3,4096
	j	.L2268
.L2289:
	l	%r3,.L2315-.L2313(%r13)
	j	.L2268
.L2288:
	lhi	%r3,16384
	j	.L2268
.L2291:
	l	%r3,.L2316-.L2313(%r13)
	j	.L2268
.L2290:
	l	%r3,.L2317-.L2313(%r13)
	j	.L2268
.L2293:
	l	%r3,.L2318-.L2313(%r13)
	j	.L2268
.L2294:
	l	%r3,.L2319-.L2313(%r13)
	j	.L2268
.L2295:
	l	%r3,.L2320-.L2313(%r13)
	j	.L2268
.L2296:
	l	%r3,.L2321-.L2313(%r13)
	j	.L2268
.L2297:
	l	%r3,.L2322-.L2313(%r13)
	j	.L2268
.L2298:
	l	%r3,.L2323-.L2313(%r13)
	j	.L2268
.L2299:
	l	%r3,.L2324-.L2313(%r13)
	j	.L2268
.L2300:
	l	%r3,.L2325-.L2313(%r13)
	j	.L2268
.L2301:
	l	%r3,.L2326-.L2313(%r13)
	j	.L2268
.L2312:
	l	%r1,.L2327-.L2313(%r13)
	lr	%r3,%r1
	j	.L2268
.L2303:
	l	%r3,.L2328-.L2313(%r13)
	j	.L2268
.L2302:
	l	%r3,.L2329-.L2313(%r13)
	j	.L2268
.L2304:
	l	%r3,.L2330-.L2313(%r13)
	j	.L2268
	.section	.rodata
	.align	8
.L2313:
.L2330:
	.long	1073741824
.L2329:
	.long	268435456
.L2328:
	.long	536870912
.L2327:
	.long	-2147483648
.L2326:
	.long	134217728
.L2325:
	.long	67108864
.L2324:
	.long	33554432
.L2323:
	.long	16777216
.L2322:
	.long	8388608
.L2321:
	.long	4194304
.L2320:
	.long	2097152
.L2319:
	.long	1048576
.L2318:
	.long	524288
.L2317:
	.long	65536
.L2316:
	.long	131072
.L2315:
	.long	32768
.L2314:
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
	larl	%r13,.L2378
	ltr	%r2,%r2
	jl	.L2376
	lhi	%r4,0
.L2332:
	lpr	%r1,%r3
	clr	%r2,%r1
	lr	%r3,%r2
	jle	.L2339
	lr	%r5,%r1
	sll	%r5,1
	clr	%r2,%r5
	jle	.L2340
	lr	%r0,%r1
	sll	%r0,2
	clr	%r2,%r0
	jle	.L2341
	lr	%r5,%r1
	sll	%r5,3
	clr	%r2,%r5
	jle	.L2342
	lr	%r0,%r1
	sll	%r0,4
	clr	%r2,%r0
	jle	.L2343
	lr	%r5,%r1
	sll	%r5,5
	clr	%r2,%r5
	jle	.L2344
	lr	%r0,%r1
	sll	%r0,6
	clr	%r2,%r0
	jle	.L2345
	lr	%r5,%r1
	sll	%r5,7
	clr	%r2,%r5
	jle	.L2346
	lr	%r0,%r1
	sll	%r0,8
	clr	%r2,%r0
	jle	.L2347
	lr	%r5,%r1
	sll	%r5,9
	clr	%r2,%r5
	jle	.L2348
	lr	%r0,%r1
	sll	%r0,10
	clr	%r2,%r0
	jle	.L2349
	lr	%r5,%r1
	sll	%r5,11
	clr	%r2,%r5
	jle	.L2350
	lr	%r0,%r1
	sll	%r0,12
	clr	%r2,%r0
	jle	.L2351
	lr	%r5,%r1
	sll	%r5,13
	clr	%r2,%r5
	jle	.L2352
	lr	%r0,%r1
	sll	%r0,14
	clr	%r2,%r0
	jle	.L2353
	lr	%r5,%r1
	sll	%r5,15
	clr	%r2,%r5
	jle	.L2354
	lr	%r0,%r1
	sll	%r0,16
	clr	%r2,%r0
	jle	.L2355
	lr	%r5,%r1
	sll	%r5,17
	clr	%r2,%r5
	jle	.L2356
	lr	%r0,%r1
	sll	%r0,18
	clr	%r2,%r0
	jle	.L2357
	lr	%r5,%r1
	sll	%r5,19
	clr	%r2,%r5
	jle	.L2358
	lr	%r0,%r1
	sll	%r0,20
	clr	%r2,%r0
	jle	.L2359
	lr	%r5,%r1
	sll	%r5,21
	clr	%r2,%r5
	jle	.L2360
	lr	%r0,%r1
	sll	%r0,22
	clr	%r2,%r0
	jle	.L2361
	lr	%r5,%r1
	sll	%r5,23
	clr	%r2,%r5
	jle	.L2362
	lr	%r0,%r1
	sll	%r0,24
	clr	%r2,%r0
	jle	.L2363
	lr	%r5,%r1
	sll	%r5,25
	clr	%r2,%r5
	jle	.L2364
	lr	%r0,%r1
	sll	%r0,26
	clr	%r2,%r0
	jle	.L2365
	lr	%r5,%r1
	sll	%r5,27
	clr	%r2,%r5
	jle	.L2366
	lr	%r0,%r1
	sll	%r0,28
	clr	%r2,%r0
	jle	.L2367
	lr	%r5,%r1
	sll	%r5,29
	clr	%r2,%r5
	jle	.L2368
	lr	%r0,%r1
	sll	%r0,30
	clr	%r2,%r0
	jle	.L2369
	sll	%r1,31
	clr	%r2,%r1
	jle	.L2377
.L2334:
	ltr	%r4,%r4
	je	.L2331
	lcr	%r2,%r2
.L2331:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2376:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r4,1
	j	.L2332
.L2357:
	l	%r2,.L2379-.L2378(%r13)
	lr	%r1,%r0
.L2336:
	clr	%r3,%r1
	jl	.L2335
	sr	%r3,%r1
.L2335:
	srl	%r2,1
	srl	%r1,1
	ltr	%r2,%r2
	jne	.L2336
	lr	%r2,%r3
	j	.L2334
.L2339:
	lhi	%r2,1
	j	.L2336
.L2340:
	lr	%r1,%r5
	lhi	%r2,2
	j	.L2336
.L2342:
	lr	%r1,%r5
	lhi	%r2,8
	j	.L2336
.L2341:
	lr	%r1,%r0
	lhi	%r2,4
	j	.L2336
.L2343:
	lr	%r1,%r0
	lhi	%r2,16
	j	.L2336
.L2344:
	lr	%r1,%r5
	lhi	%r2,32
	j	.L2336
.L2346:
	lr	%r1,%r5
	lhi	%r2,128
	j	.L2336
.L2345:
	lr	%r1,%r0
	lhi	%r2,64
	j	.L2336
.L2347:
	lr	%r1,%r0
	lhi	%r2,256
	j	.L2336
.L2348:
	lr	%r1,%r5
	lhi	%r2,512
	j	.L2336
.L2349:
	lr	%r1,%r0
	lhi	%r2,1024
	j	.L2336
.L2350:
	lr	%r1,%r5
	lhi	%r2,2048
	j	.L2336
.L2352:
	lr	%r1,%r5
	lhi	%r2,8192
	j	.L2336
.L2351:
	lr	%r1,%r0
	lhi	%r2,4096
	j	.L2336
.L2354:
	l	%r2,.L2380-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2353:
	lr	%r1,%r0
	lhi	%r2,16384
	j	.L2336
.L2356:
	l	%r2,.L2381-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2355:
	l	%r2,.L2382-.L2378(%r13)
	lr	%r1,%r0
	j	.L2336
.L2358:
	l	%r2,.L2383-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2359:
	l	%r2,.L2384-.L2378(%r13)
	lr	%r1,%r0
	j	.L2336
.L2360:
	l	%r2,.L2385-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2361:
	l	%r2,.L2386-.L2378(%r13)
	lr	%r1,%r0
	j	.L2336
.L2362:
	l	%r2,.L2387-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2363:
	l	%r2,.L2388-.L2378(%r13)
	lr	%r1,%r0
	j	.L2336
.L2364:
	l	%r2,.L2389-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2365:
	l	%r2,.L2390-.L2378(%r13)
	lr	%r1,%r0
	j	.L2336
.L2366:
	l	%r2,.L2391-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2377:
	l	%r1,.L2392-.L2378(%r13)
	lr	%r2,%r1
	j	.L2336
.L2368:
	l	%r2,.L2393-.L2378(%r13)
	lr	%r1,%r5
	j	.L2336
.L2367:
	l	%r2,.L2394-.L2378(%r13)
	lr	%r1,%r0
	j	.L2336
.L2369:
	l	%r2,.L2395-.L2378(%r13)
	lr	%r1,%r0
	j	.L2336
	.section	.rodata
	.align	8
.L2378:
.L2395:
	.long	1073741824
.L2394:
	.long	268435456
.L2393:
	.long	536870912
.L2392:
	.long	-2147483648
.L2391:
	.long	134217728
.L2390:
	.long	67108864
.L2389:
	.long	33554432
.L2388:
	.long	16777216
.L2387:
	.long	8388608
.L2386:
	.long	4194304
.L2385:
	.long	2097152
.L2384:
	.long	1048576
.L2383:
	.long	524288
.L2382:
	.long	65536
.L2381:
	.long	131072
.L2380:
	.long	32768
.L2379:
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
	larl	%r13,.L2514
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L2512
	tml	%r3,32768
	jne	.L2399
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2400
	tml	%r1,32768
	jne	.L2401
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2402
	tml	%r1,32768
	jne	.L2403
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2404
	tml	%r1,32768
	jne	.L2405
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2406
	tml	%r1,32768
	jne	.L2407
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2408
	tml	%r1,32768
	jne	.L2409
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2410
	tml	%r1,32768
	jne	.L2411
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2412
	tml	%r1,32768
	jne	.L2413
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2414
	tml	%r1,32768
	jne	.L2415
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2416
	tml	%r1,32768
	jne	.L2417
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2418
	tml	%r1,32768
	jne	.L2419
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2420
	tml	%r1,32768
	jne	.L2421
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2422
	tml	%r1,32768
	jne	.L2423
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2424
	tml	%r1,32768
	jne	.L2425
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L2515-.L2514(%r13)
	clr	%r2,%r1
	jle	.L2426
	tml	%r1,32768
	jne	.L2427
	sll	%r3,15
	n	%r3,.L2515-.L2514(%r13)
	clr	%r2,%r3
	jle	.L2428
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L2513
.L2429:
	ltr	%r4,%r4
	je	.L2447
	lr	%r2,%r5
.L2447:
	n	%r2,.L2515-.L2514(%r13)
	lm	%r11,%r13,44(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2416:
	.cfi_restore_state
	jl	.L2463
	sr	%r5,%r1
	lhi	%r0,512
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,512
.L2431:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,2
	srl	%r11,2
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2432
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2432:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,3
	srl	%r11,3
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2433
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2433:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,4
	srl	%r11,4
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2434
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2434:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,5
	srl	%r11,5
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2435
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2435:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,6
	srl	%r11,6
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2436
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2436:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,7
	srl	%r11,7
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2437
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2437:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,8
	srl	%r11,8
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2438
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2438:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,9
	srl	%r11,9
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2439
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2439:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,10
	srl	%r11,10
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2440
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2440:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,11
	srl	%r11,11
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2441
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2441:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,12
	srl	%r11,12
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2442
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2442:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,13
	srl	%r11,13
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2443
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2443:
	l	%r11,.L2515-.L2514(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,14
	srl	%r11,14
	ltr	%r11,%r11
	je	.L2429
	clr	%r5,%r12
	jl	.L2444
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2515-.L2514(%r13)
.L2444:
	n	%r0,.L2515-.L2514(%r13)
	srl	%r1,15
	chi	%r0,16384
	je	.L2429
	clr	%r5,%r1
	jl	.L2452
	sr	%r5,%r1
	lhi	%r0,1
	n	%r5,.L2515-.L2514(%r13)
	or	%r2,%r0
	j	.L2429
.L2452:
	lhi	%r5,0
	j	.L2429
.L2512:
	je	.L2450
	lhi	%r2,0
	j	.L2429
.L2399:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L2515-.L2514(%r13)
	j	.L2429
.L2400:
	jl	.L2455
	sr	%r5,%r1
	lhi	%r0,2
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,2
	j	.L2431
.L2401:
	lhi	%r2,32767
	sr	%r5,%r1
	nr	%r3,%r2
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r12,1
	lhi	%r0,2
	lhi	%r2,2
.L2449:
	clr	%r5,%r3
	jl	.L2431
	sr	%r5,%r3
	or	%r2,%r12
	n	%r5,.L2515-.L2514(%r13)
	j	.L2431
.L2402:
	jl	.L2456
	sr	%r5,%r1
	lhi	%r0,4
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,4
	j	.L2431
.L2403:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,2
	lhi	%r0,4
	lhi	%r2,4
	j	.L2449
.L2404:
	jl	.L2457
	sr	%r5,%r1
	lhi	%r0,8
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,8
	j	.L2431
.L2405:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,4
	lhi	%r0,8
	lhi	%r2,8
	j	.L2449
.L2406:
	jl	.L2458
	sr	%r5,%r1
	lhi	%r0,16
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,16
	j	.L2431
.L2407:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,8
	lhi	%r0,16
	lhi	%r2,16
	j	.L2449
.L2408:
	jl	.L2459
	sr	%r5,%r1
	lhi	%r0,32
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,32
	j	.L2431
.L2409:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,16
	lhi	%r0,32
	lhi	%r2,32
	j	.L2449
.L2410:
	jl	.L2460
	sr	%r5,%r1
	lhi	%r0,64
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,64
	j	.L2431
.L2411:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,32
	lhi	%r0,64
	lhi	%r2,64
	j	.L2449
.L2412:
	jl	.L2461
	sr	%r5,%r1
	lhi	%r0,128
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,128
	j	.L2431
.L2413:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,64
	lhi	%r0,128
	lhi	%r2,128
	j	.L2449
.L2415:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,128
	lhi	%r0,256
	lhi	%r2,256
	j	.L2449
.L2417:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,256
	lhi	%r0,512
	lhi	%r2,512
	j	.L2449
.L2450:
	lhi	%r2,1
	lhi	%r5,0
	j	.L2429
.L2455:
	lhi	%r0,2
.L2448:
	lr	%r3,%r1
	lr	%r12,%r0
	srl	%r3,1
	sll	%r12,16
	lhi	%r2,0
	srl	%r12,17
	j	.L2449
.L2419:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,512
	lhi	%r0,1024
	lhi	%r2,1024
	j	.L2449
.L2421:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,1024
	lhi	%r0,2048
	lhi	%r2,2048
	j	.L2449
.L2456:
	lhi	%r0,4
	j	.L2448
.L2457:
	lhi	%r0,8
	j	.L2448
.L2423:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,2048
	lhi	%r0,4096
	lhi	%r2,4096
	j	.L2449
.L2425:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,4096
	lhi	%r0,8192
	lhi	%r2,8192
	j	.L2449
.L2458:
	lhi	%r0,16
	j	.L2448
.L2459:
	lhi	%r0,32
	j	.L2448
.L2427:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2515-.L2514(%r13)
	srl	%r3,1
	lhi	%r12,8192
	lhi	%r0,16384
	lhi	%r2,16384
	j	.L2449
.L2428:
	l	%r1,.L2516-.L2514(%r13)
	lhi	%r0,-32768
	tml	%r2,32768
	je	.L2448
	lhi	%r2,-32768
	lhi	%r5,0
	j	.L2431
.L2460:
	lhi	%r0,64
	j	.L2448
.L2513:
	ahi	%r5,-32768
	l	%r1,.L2516-.L2514(%r13)
	lhi	%r3,16384
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r12,16384
	lhi	%r0,-32768
	lhi	%r2,-32768
	j	.L2449
.L2461:
	lhi	%r0,128
	j	.L2448
.L2414:
	jl	.L2462
	sr	%r5,%r1
	lhi	%r0,256
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,256
	j	.L2431
.L2462:
	lhi	%r0,256
	j	.L2448
.L2418:
	jl	.L2464
	sr	%r5,%r1
	lhi	%r0,1024
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,1024
	j	.L2431
.L2426:
	jl	.L2468
	sr	%r5,%r1
	lhi	%r0,16384
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,16384
	j	.L2431
.L2464:
	lhi	%r0,1024
	j	.L2448
.L2468:
	lhi	%r0,16384
	j	.L2448
.L2463:
	lhi	%r0,512
	j	.L2448
.L2424:
	jl	.L2467
	sr	%r5,%r1
	lhi	%r0,8192
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,8192
	j	.L2431
.L2422:
	jl	.L2466
	sr	%r5,%r1
	lhi	%r0,4096
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,4096
	j	.L2431
.L2420:
	jl	.L2465
	sr	%r5,%r1
	lhi	%r0,2048
	n	%r5,.L2515-.L2514(%r13)
	lhi	%r2,2048
	j	.L2431
.L2467:
	lhi	%r0,8192
	j	.L2448
.L2466:
	lhi	%r0,4096
	j	.L2448
.L2465:
	lhi	%r0,2048
	j	.L2448
	.section	.rodata
	.align	8
.L2514:
.L2516:
	.long	32768
.L2515:
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
	jle	.L2519
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2518:
	ltr	%r3,%r3
	jl	.L2519
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2520
	ltr	%r3,%r3
	jl	.L2519
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2520
	ltr	%r3,%r3
	jl	.L2519
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2520
	ltr	%r3,%r3
	jl	.L2519
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2520
	ahi	%r2,-4
	brct	%r0,.L2518
	ltr	%r4,%r4
	ber	%r14
.L2540:
	lr	%r2,%r5
	br	%r14
.L2520:
	ltr	%r1,%r1
	je	.L2527
.L2519:
	lhi	%r2,0
.L2524:
	clr	%r5,%r3
	jl	.L2523
	sr	%r5,%r3
	or	%r2,%r1
.L2523:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2524
	ltr	%r4,%r4
	ber	%r14
	j	.L2540
.L2527:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2540
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
	je	.L2543
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L2543:
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
	je	.L2549
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L2549:
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
	larl	%r13,.L2562
	cl	%r2,.L2563-.L2562(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L2564-.L2562(%r13)
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
	jne	.L2559
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L2559:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L2562:
.L2564:
	.long	65280
.L2563:
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
	jl	.L2569
	jh	.L2570
	clr	%r3,%r5
	jl	.L2569
	jh	.L2570
	lhi	%r2,1
	br	%r14
.L2569:
	lhi	%r2,0
	br	%r14
.L2570:
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
	jl	.L2576
	jh	.L2575
	clr	%r3,%r5
	jl	.L2576
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2576:
	lhi	%r2,-1
	br	%r14
.L2575:
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
	larl	%r13,.L2580
	l	%r4,.L2581-.L2580(%r13)
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
.L2580:
.L2581:
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
	je	.L2583
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L2583:
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
	larl	%r13,.L2595
	l	%r4,.L2596-.L2595(%r13)
	l	%r1,.L2596-.L2595(%r13)
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
	l	%r5,.L2596-.L2595(%r13)
	lr	%r0,%r3
	n	%r3,.L2596-.L2595(%r13)
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
.L2595:
.L2596:
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
	larl	%r13,.L2599
	l	%r1,.L2600-.L2599(%r13)
	l	%r0,.L2600-.L2599(%r13)
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
	l	%r12,.L2600-.L2599(%r13)
	lr	%r0,%r11
	n	%r11,.L2600-.L2599(%r13)
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
.L2599:
.L2600:
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
	je	.L2602
	ahi	%r2,-1
.L2602:
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
	larl	%r13,.L2610
	l	%r0,.L2611-.L2610(%r13)
	l	%r1,.L2611-.L2610(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L2612-.L2610(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L2613-.L2610(%r13)
	l	%r3,.L2613-.L2610(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L2613-.L2610(%r13)
	nr	%r3,%r1
	l	%r1,.L2613-.L2610(%r13)
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
	n	%r2,.L2612-.L2610(%r13)
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
.L2610:
.L2613:
	.long	858993459
.L2612:
	.long	252645135
.L2611:
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
	larl	%r5,.L2616
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L2617-.L2616(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L2618-.L2616(%r5)
	srl	%r0,2
	n	%r0,.L2618-.L2616(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L2619-.L2616(%r5)
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
.L2616:
.L2619:
	.long	252645135
.L2618:
	.long	858993459
.L2617:
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
	larl	%r5,.L2629
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L2630-.L2629(%r5)
	tml	%r2,1
	je	.L2621
.L2623:
	mdbr	%f0,%f2
.L2621:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2622
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L2623
.L2628:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2623
	j	.L2628
.L2622:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L2630-.L2629(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2629:
.L2630:
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
	larl	%r5,.L2640
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L2641-.L2640(%r5)
	tml	%r2,1
	je	.L2632
.L2634:
	meebr	%f0,%f2
.L2632:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2633
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L2634
.L2639:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2634
	j	.L2639
.L2633:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L2641-.L2640(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2640:
.L2641:
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
	jl	.L2646
	jh	.L2647
	clr	%r3,%r5
	jl	.L2646
	jh	.L2647
	lhi	%r2,1
	br	%r14
.L2646:
	lhi	%r2,0
	br	%r14
.L2647:
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
	jl	.L2653
	jh	.L2652
	clr	%r3,%r5
	jl	.L2653
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2653:
	lhi	%r2,-1
	br	%r14
.L2652:
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
