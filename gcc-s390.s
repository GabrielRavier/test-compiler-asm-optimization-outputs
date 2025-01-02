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
	larl	%r5,.L403
	cdb	%f0,.L404-.L403(%r5)
	jl	.L400
	lhi	%r2,0
.L392:
	cdb	%f2,.L404-.L403(%r5)
	lhi	%r1,1
	jl	.L393
	lhi	%r1,0
.L393:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L391
	cdb	%f0,.L404-.L403(%r5)
	bher	%r14
	ldr	%f0,%f2
	br	%r14
.L400:
	lhi	%r2,1
	j	.L392
.L391:
	cdbr	%f0,%f2
	bher	%r14
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L403:
.L404:
	.long	0
	.long	0
	.align	2
.text
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
	larl	%r5,.L418
	ceb	%f0,.L419-.L418(%r5)
	jl	.L415
	lhi	%r2,0
.L407:
	lhi	%r1,1
	ceb	%f2,.L419-.L418(%r5)
	jl	.L408
	lhi	%r1,0
.L408:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L406
	ceb	%f0,.L419-.L418(%r5)
	bher	%r14
	ler	%f0,%f2
	br	%r14
.L415:
	lhi	%r2,1
	j	.L407
.L406:
	cebr	%f0,%f2
	bher	%r14
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L418:
.L419:
	.long	0
	.align	2
.text
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
	larl	%r5,.L432
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f5,.L433-.L432(%r5)
	ld	%f7,.L433-.L432+8(%r5)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	cxbr	%f0,%f5
	jl	.L429
	lhi	%r3,0
.L422:
	ld	%f5,.L433-.L432(%r5)
	ld	%f7,.L433-.L432+8(%r5)
	lhi	%r1,1
	cxbr	%f1,%f5
	jl	.L423
	lhi	%r1,0
.L423:
	lhi	%r4,255
	nr	%r3,%r4
	nr	%r1,%r4
	cr	%r3,%r1
	je	.L421
	ld	%f5,.L433-.L432(%r5)
	ld	%f7,.L433-.L432+8(%r5)
	cxbr	%f0,%f5
	jl	.L431
.L426:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L421:
	cxbr	%f0,%f1
	jhe	.L426
.L431:
	lxr	%f0,%f1
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L429:
	lhi	%r3,1
	j	.L422
	.section	.rodata
	.align	8
.L432:
.L433:
	.long	0
	.long	0
	.long	0
	.long	0
	.align	2
.text
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
	larl	%r5,.L447
	cdb	%f0,.L448-.L447(%r5)
	jl	.L444
	lhi	%r2,0
.L436:
	cdb	%f2,.L448-.L447(%r5)
	lhi	%r1,1
	jl	.L437
	lhi	%r1,0
.L437:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L435
	cdb	%f0,.L448-.L447(%r5)
	blr	%r14
	ldr	%f0,%f2
	br	%r14
.L435:
	cdbr	%f0,%f2
	bler	%r14
	ldr	%f0,%f2
	br	%r14
.L444:
	lhi	%r2,1
	j	.L436
	.section	.rodata
	.align	8
.L447:
.L448:
	.long	0
	.long	0
	.align	2
.text
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
	larl	%r5,.L462
	ceb	%f0,.L463-.L462(%r5)
	jl	.L459
	lhi	%r2,0
.L451:
	lhi	%r1,1
	ceb	%f2,.L463-.L462(%r5)
	jl	.L452
	lhi	%r1,0
.L452:
	lhi	%r3,255
	nr	%r2,%r3
	nr	%r1,%r3
	cr	%r2,%r1
	je	.L450
	ceb	%f0,.L463-.L462(%r5)
	blr	%r14
	ler	%f0,%f2
	br	%r14
.L450:
	cebr	%f0,%f2
	bler	%r14
	ler	%f0,%f2
	br	%r14
.L459:
	lhi	%r2,1
	j	.L451
	.section	.rodata
	.align	8
.L462:
.L463:
	.long	0
	.align	2
.text
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
	larl	%r5,.L476
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	ld	%f5,.L477-.L476(%r5)
	ld	%f7,.L477-.L476+8(%r5)
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	cxbr	%f1,%f5
	jl	.L473
	lhi	%r3,0
.L466:
	ld	%f5,.L477-.L476(%r5)
	ld	%f7,.L477-.L476+8(%r5)
	lhi	%r1,1
	cxbr	%f0,%f5
	jl	.L467
	lhi	%r1,0
.L467:
	lhi	%r4,255
	nr	%r3,%r4
	nr	%r1,%r4
	cr	%r3,%r1
	je	.L465
	ld	%f5,.L477-.L476(%r5)
	ld	%f7,.L477-.L476+8(%r5)
	cxbr	%f1,%f5
	jl	.L475
.L470:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L465:
	cxbr	%f0,%f1
	jle	.L470
.L475:
	lxr	%f0,%f1
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L473:
	lhi	%r3,1
	j	.L466
	.section	.rodata
	.align	8
.L476:
.L477:
	.long	0
	.long	0
	.long	0
	.long	0
	.align	2
.text
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
	je	.L479
	larl	%r4,.LANCHOR1
.L480:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L480
.L479:
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
	je	.L495
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L495:
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
	je	.L498
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L498:
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
	je	.L508
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L532
.L520:
	srl	%r11,1
.L510:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L507
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L507
	ar	%r12,%r10
	brct	%r11,.L510
.L508:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L507
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L507:
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
.L532:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L507
	ar	%r12,%r10
	chi	%r13,1
	jne	.L520
	j	.L508
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
	je	.L535
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L555
.L544:
	srl	%r11,1
.L537:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L534
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L534
	ar	%r12,%r9
	brct	%r11,.L537
.L535:
	lhi	%r8,0
.L534:
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
.L555:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L534
	ar	%r12,%r9
	chi	%r7,1
	jne	.L544
	j	.L535
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
.L566:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L560
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L560
	chi	%r1,43
	je	.L561
	chi	%r1,45
	je	.L562
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L571
	lr	%r3,%r2
	lhi	%r12,0
.L564:
	lhi	%r2,0
.L568:
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
	jle	.L568
	ltr	%r12,%r12
	jne	.L559
	lr	%r2,%r5
	sr	%r2,%r1
.L559:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L560:
	.cfi_restore_state
	ahi	%r2,1
	j	.L566
.L562:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L571
	lhi	%r12,1
	j	.L564
.L561:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L564
.L571:
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
.L586:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L582
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L582
	chi	%r1,43
	je	.L583
	chi	%r1,45
	je	.L584
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L593
	lr	%r3,%r2
	lhi	%r12,0
.L587:
	lhi	%r2,0
.L590:
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
	jle	.L590
	ltr	%r12,%r12
	jne	.L581
	lr	%r2,%r5
	sr	%r2,%r1
.L581:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L582:
	.cfi_restore_state
	ahi	%r2,1
	j	.L586
.L584:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	lr	%r3,%r2
	lhi	%r12,1
	clr	%r11,%r1
	jle	.L587
.L593:
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
.L583:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L593
	lhi	%r12,0
	j	.L587
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
.L611:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L605
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L605
	chi	%r3,43
	je	.L606
	chi	%r3,45
	jne	.L625
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L616
	lhi	%r2,1
.L609:
	lhi	%r10,0
	lhi	%r11,0
.L613:
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
	jle	.L613
	ltr	%r2,%r2
	jne	.L604
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L604:
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
.L605:
	.cfi_restore_state
	ahi	%r2,1
	j	.L611
.L625:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L616
	lr	%r3,%r2
	lhi	%r2,0
	j	.L609
.L606:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L609
.L616:
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
	je	.L628
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	j	.L631
.L641:
	je	.L627
	ahi	%r12,-1
	ar	%r11,%r9
	sr	%r12,%r10
	lr	%r8,%r11
	ltr	%r12,%r12
	je	.L628
.L631:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	lr	%r2,%r7
	ar	%r11,%r8
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L641
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L631
.L628:
	lhi	%r11,0
.L627:
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
	je	.L648
.L644:
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
	je	.L643
	jle	.L646
	ar	%r12,%r10
	ahi	%r11,-1
	lr	%r9,%r12
	sra	%r11,1
	jne	.L644
.L648:
	lhi	%r12,0
.L643:
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
.L646:
	.cfi_restore_state
	ltr	%r7,%r7
	je	.L648
	lr	%r11,%r7
	j	.L644
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
	jl	.L664
.L661:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L664:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L661
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
	jl	.L677
.L674:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L677:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L674
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
	j	.L690
.L691:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L690:
	icm	%r1,15,0(%r2)
	jne	.L691
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
	je	.L694
	j	.L695
.L696:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L695
.L694:
	ltr	%r4,%r4
	jne	.L696
.L695:
	cr	%r4,%r5
	jl	.L700
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L700:
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
.L704:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L704
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
	je	.L711
.L710:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L710
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L711:
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
	je	.L721
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L736
.L724:
	srl	%r4,1
.L715:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L717
	ltr	%r0,%r0
	je	.L717
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L717
	ltr	%r5,%r5
	je	.L717
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L715
.L721:
	lhi	%r2,0
	br	%r14
.L717:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L737
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L736:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L717
	ltr	%r1,%r1
	je	.L717
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L724
	j	.L721
.L737:
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
	je	.L743
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L750
	chi	%r5,1
	je	.L761
	chi	%r5,2
	je	.L762
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L762:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L761:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L743
.L750:
	srl	%r1,2
	lr	%r0,%r1
.L740:
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
	brct	%r0,.L740
.L743:
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
	je	.L781
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L788
	chi	%r1,1
	je	.L799
	chi	%r1,2
	je	.L800
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L807
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L800:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L807
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L799:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L807
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L781
.L788:
	srl	%r5,2
.L775:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L807
	l	%r1,4(%r2)
	ahi	%r3,4
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L807
	l	%r1,8(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L807
	l	%r1,12(%r2)
	lr	%r3,%r4
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L807
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L775
.L781:
	lhi	%r2,0
	br	%r14
.L807:
	c	%r1,0(%r3)
	jl	.L810
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L810:
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
	je	.L813
	sll	%r4,2
	brasl	%r14,memcpy
.L813:
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
	larl	%r13,.L868
	cr	%r2,%r3
	je	.L827
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L867
	ltr	%r4,%r4
	je	.L827
	l	%r4,.L869-.L868(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L837
	chi	%r5,1
	je	.L853
	chi	%r5,2
	je	.L854
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L854:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L853:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L827
.L837:
	srl	%r4,2
.L824:
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
	brct	%r4,.L824
.L827:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L867:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L827
	lhi	%r0,3
	nr	%r0,%r4
	je	.L846
	chi	%r0,1
	je	.L851
	chi	%r0,2
	je	.L852
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L852:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L851:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L827
.L846:
	srl	%r4,2
.L822:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L822
	j	.L827
	.section	.rodata
	.align	8
.L868:
.L869:
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
	je	.L881
	chi	%r0,1
	je	.L885
	chi	%r0,2
	je	.L886
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L886:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L885:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L881:
	srl	%r4,2
.L872:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L872
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
	jhe	.L895
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L926
	chi	%r5,1
	je	.L948
	chi	%r5,2
	jne	.L982
.L949:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L948:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L926
	br	%r14
.L895:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L905
	lr	%r0,%r3
	lhi	%r1,3
	or	%r0,%r2
	nr	%r0,%r1
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L905
	lr	%r5,%r2
	ahi	%r5,1
	lr	%r0,%r3
	lhi	%r1,2
	sr	%r0,%r5
	clr	%r0,%r1
	jle	.L905
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
	je	.L944
	chi	%r12,1
	je	.L950
	chi	%r12,2
	je	.L951
	l	%r1,0(%r2)
	st	%r1,0(%r3)
	lhi	%r1,4
.L951:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
.L950:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L973
.L944:
	srl	%r5,2
.L899:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r12,4(%r1,%r2)
	st	%r12,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r12,12(%r1,%r2)
	st	%r12,12(%r1,%r3)
	ahi	%r1,16
	brct	%r5,.L899
.L973:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L894
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L894
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L894
	mvc	2(1,%r3),2(%r2)
.L894:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L926:
	srl	%r1,2
.L897:
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
	brct	%r1,.L897
	br	%r14
.L982:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
	j	.L949
.L905:
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L935
	chi	%r0,1
	je	.L952
	chi	%r0,2
	je	.L953
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L953:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L952:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L935:
	lr	%r4,%r5
	srl	%r4,2
.L902:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L902
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
	larl	%r5,.L1000
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1001-.L1000(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1000:
.L1001:
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
	larl	%r5,.L1004
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1005-.L1004(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1004:
.L1005:
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
	larl	%r5,.L1012
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L1013-.L1012(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1012:
.L1013:
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
	jne	.L1021
	tml	%r2,2
	jne	.L1022
	tml	%r2,4
	jne	.L1023
	tml	%r2,8
	jne	.L1024
	tml	%r2,16
	jne	.L1025
	tml	%r2,32
	jne	.L1026
	tml	%r2,64
	jne	.L1027
	tml	%r2,128
	jne	.L1028
	tml	%r2,256
	jne	.L1029
	tml	%r2,512
	jne	.L1030
	tml	%r2,1024
	jne	.L1031
	tml	%r2,2048
	jne	.L1032
	tml	%r2,4096
	jne	.L1033
	tml	%r2,8192
	jne	.L1034
	tml	%r2,16384
	jne	.L1035
	tml	%r2,32768
	jne	.L1036
	tmh	%r2,1
	jne	.L1037
	tmh	%r2,2
	jne	.L1038
	tmh	%r2,4
	jne	.L1039
	tmh	%r2,8
	jne	.L1040
	tmh	%r2,16
	jne	.L1041
	tmh	%r2,32
	jne	.L1042
	tmh	%r2,64
	jne	.L1043
	tmh	%r2,128
	jne	.L1044
	tmh	%r2,256
	jne	.L1045
	tmh	%r2,512
	jne	.L1046
	tmh	%r2,1024
	jne	.L1047
	tmh	%r2,2048
	jne	.L1048
	tmh	%r2,4096
	jne	.L1049
	tmh	%r2,8192
	jne	.L1050
	tmh	%r2,16384
	jne	.L1051
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L1021:
	lhi	%r2,1
	br	%r14
.L1022:
	lhi	%r2,2
	br	%r14
.L1033:
	lhi	%r2,13
	br	%r14
.L1049:
	lhi	%r2,29
	br	%r14
.L1023:
	lhi	%r2,3
	br	%r14
.L1024:
	lhi	%r2,4
	br	%r14
.L1025:
	lhi	%r2,5
	br	%r14
.L1026:
	lhi	%r2,6
	br	%r14
.L1027:
	lhi	%r2,7
	br	%r14
.L1028:
	lhi	%r2,8
	br	%r14
.L1029:
	lhi	%r2,9
	br	%r14
.L1030:
	lhi	%r2,10
	br	%r14
.L1031:
	lhi	%r2,11
	br	%r14
.L1032:
	lhi	%r2,12
	br	%r14
.L1034:
	lhi	%r2,14
	br	%r14
.L1035:
	lhi	%r2,15
	br	%r14
.L1036:
	lhi	%r2,16
	br	%r14
.L1037:
	lhi	%r2,17
	br	%r14
.L1038:
	lhi	%r2,18
	br	%r14
.L1039:
	lhi	%r2,19
	br	%r14
.L1040:
	lhi	%r2,20
	br	%r14
.L1041:
	lhi	%r2,21
	br	%r14
.L1042:
	lhi	%r2,22
	br	%r14
.L1043:
	lhi	%r2,23
	br	%r14
.L1044:
	lhi	%r2,24
	br	%r14
.L1045:
	lhi	%r2,25
	br	%r14
.L1046:
	lhi	%r2,26
	br	%r14
.L1047:
	lhi	%r2,27
	br	%r14
.L1048:
	lhi	%r2,28
	br	%r14
.L1050:
	lhi	%r2,30
	br	%r14
.L1051:
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
	je	.L1058
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1057:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L1057
	br	%r14
.L1058:
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
	larl	%r5,.L1087
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1085
	le	%f1,.L1088-.L1087(%r5)
.L1073:
	tml	%r2,1
	je	.L1074
.L1075:
	meebr	%f0,%f1
.L1074:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L1075
.L1086:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1075
	j	.L1086
.L1085:
	le	%f1,.L1089-.L1087(%r5)
	j	.L1073
	.section	.rodata
	.align	8
.L1087:
.L1089:
	.long	1056964608
.L1088:
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
	larl	%r5,.L1106
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1104
	ld	%f1,.L1107-.L1106(%r5)
.L1092:
	tml	%r2,1
	je	.L1093
.L1094:
	mdbr	%f0,%f1
.L1093:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L1094
.L1105:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1094
	j	.L1105
.L1104:
	ld	%f1,.L1108-.L1106(%r5)
	j	.L1092
	.section	.rodata
	.align	8
.L1106:
.L1108:
	.long	1071644672
	.long	0
.L1107:
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
	larl	%r5,.L1125
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1110
	ltr	%r4,%r4
	jl	.L1123
	ld	%f0,.L1126-.L1125(%r5)
	ld	%f2,.L1126-.L1125+8(%r5)
.L1111:
	tml	%r4,1
	je	.L1112
.L1113:
	mxbr	%f1,%f0
.L1112:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1110
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L1113
.L1124:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L1113
	j	.L1124
.L1110:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1123:
	ld	%f0,.L1127-.L1125(%r5)
	ld	%f2,.L1127-.L1125+8(%r5)
	j	.L1111
	.section	.rodata
	.align	8
.L1125:
.L1127:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1126:
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
	jle	.L1136
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1136
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1171
	chi	%r12,1
	je	.L1175
	chi	%r12,2
	je	.L1176
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1176:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L1175:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1199
.L1171:
	srl	%r5,2
.L1131:
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
	brct	%r5,.L1131
.L1199:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L1129
	xc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L1129
	xc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L1129
	xc	2(1,%r5),2(%r3)
.L1129:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1136:
	.cfi_restore_state
	lhi	%r12,7
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r12,%r4
	je	.L1158
	chi	%r12,1
	je	.L1177
	chi	%r12,2
	je	.L1178
	chi	%r12,3
	je	.L1179
	chi	%r12,4
	je	.L1180
	chi	%r12,5
	je	.L1181
	chi	%r12,6
	je	.L1182
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1182:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1181:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1180:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1179:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1178:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1177:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1129
.L1158:
	lr	%r4,%r5
	srl	%r4,3
.L1133:
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
	brct	%r4,.L1133
	j	.L1129
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
	je	.L1208
.L1209:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1209
.L1208:
	ltr	%r4,%r4
	je	.L1211
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1231
.L1220:
	srl	%r4,1
.L1210:
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
	brct	%r4,.L1210
.L1211:
	mvi	0(%r1),0
	br	%r14
.L1231:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1220
	j	.L1211
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
	je	.L1245
	chi	%r5,1
	je	.L1256
	chi	%r5,2
	je	.L1257
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1257:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1256:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1245:
	srl	%r4,2
.L1234:
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
	brct	%r4,.L1234
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
	je	.L1269
.L1273:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1268
.L1267:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1268:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1267
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1273
.L1269:
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
.L1277:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L1276
	lr	%r2,%r1
.L1276:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1277
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
	je	.L1281
	lr	%r11,%r3
.L1283:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1283
	slr	%r11,%r3
	jhe	.L1281
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1291
.L1303:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1302
.L1291:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1303
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1299
.L1287:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1281
.L1288:
	ahi	%r2,1
	j	.L1291
.L1299:
	lhi	%r8,255
	nr	%r1,%r8
	nr	%r4,%r8
	cr	%r1,%r4
	jne	.L1288
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1304
	icm	%r4,1,1(%r12)
	je	.L1288
	lr	%r12,%r8
	brct	%r9,.L1299
	j	.L1287
.L1302:
	lhi	%r2,0
.L1281:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1304:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1288
	j	.L1281
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
	larl	%r5,.L1318
	cdb	%f0,.L1319-.L1318(%r5)
	jl	.L1317
	jnh	.L1310
	cdb	%f2,.L1319-.L1318(%r5)
	bher	%r14
	lcdbr	%f0,%f0
.L1310:
	br	%r14
.L1317:
	cdb	%f2,.L1319-.L1318(%r5)
	bler	%r14
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1318:
.L1319:
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
	jl	.L1329
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1329
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1326
.L1330:
	lr	%r2,%r5
.L1322:
	clr	%r3,%r2
	jl	.L1331
.L1326:
	lr	%r5,%r2
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1330
	chi	%r0,1
	je	.L1320
.L1325:
	lr	%r12,%r0
	lhi	%r10,3
	ahi	%r12,-1
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1341
	chi	%r10,1
	je	.L1351
	chi	%r10,2
	jne	.L1364
.L1352:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1358
	ahi	%r1,1
.L1351:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1358
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1320
.L1341:
	srl	%r12,2
.L1323:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1358
	ic	%r8,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1358
	ic	%r8,2(%r1,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1358
	ic	%r8,3(%r1,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1358
	ahi	%r1,4
	brct	%r12,.L1323
.L1320:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1364:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	je	.L1352
.L1358:
	clr	%r3,%r5
	jl	.L1331
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1322
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1325
.L1331:
	lhi	%r2,0
	lm	%r8,%r12,32(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1329:
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
	je	.L1367
	brasl	%r14,memmove
.L1367:
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
	larl	%r5,.L1401
	cdb	%f0,.L1402-.L1401(%r5)
	jl	.L1397
	cdb	%f0,.L1403-.L1401(%r5)
	jl	.L1398
	lhi	%r3,0
.L1376:
	lhi	%r4,0
.L1382:
	ahi	%r4,1
	cdb	%f0,.L1404-.L1401(%r5)
	mdb	%f0,.L1405-.L1401(%r5)
	jhe	.L1382
	st	%r4,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1400:
	lcdbr	%f0,%f0
	br	%r14
.L1398:
	cdb	%f0,.L1405-.L1401(%r5)
	jhe	.L1395
	cdb	%f0,.L1402-.L1401(%r5)
	jne	.L1388
	lhi	%r1,0
	ld	%f0,.L1402-.L1401(%r5)
	st	%r1,0(%r2)
	br	%r14
.L1395:
	lhi	%r0,0
	st	%r0,0(%r2)
	br	%r14
.L1397:
	lcdbr	%f2,%f0
	cdb	%f0,.L1406-.L1401(%r5)
	jh	.L1399
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1376
.L1399:
	cdb	%f0,.L1407-.L1401(%r5)
	jle	.L1395
	lhi	%r3,1
.L1377:
	ldr	%f0,%f2
	lhi	%r4,0
.L1384:
	ldr	%f1,%f0
	adbr	%f0,%f0
	ahi	%r4,-1
	cdb	%f1,.L1408-.L1401(%r5)
	jl	.L1384
	st	%r4,0(%r2)
	ltr	%r3,%r3
	jne	.L1400
	br	%r14
.L1388:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1377
	.section	.rodata
	.align	8
.L1401:
.L1408:
	.long	1070596096
	.long	0
.L1407:
	.long	-1075838976
	.long	0
.L1406:
	.long	-1074790400
	.long	0
.L1405:
	.long	1071644672
	.long	0
.L1404:
	.long	1073741824
	.long	0
.L1403:
	.long	1072693248
	.long	0
.L1402:
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
	je	.L1413
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
.L1412:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1415
	ahi	%r2,-1
.L1415:
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
	jne	.L1412
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
.L1413:
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
	jhe	.L1423
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L1422:
	ltr	%r3,%r3
	jl	.L1423
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1424
	ltr	%r3,%r3
	jl	.L1423
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1424
	ltr	%r3,%r3
	jl	.L1423
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1424
	ltr	%r3,%r3
	jl	.L1423
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1424
	ahi	%r2,-4
	brct	%r0,.L1422
	ltr	%r4,%r4
	ber	%r14
.L1444:
	lr	%r2,%r5
	br	%r14
.L1424:
	ltr	%r1,%r1
	je	.L1431
.L1423:
	lhi	%r2,0
.L1428:
	clr	%r5,%r3
	jl	.L1427
	sr	%r5,%r3
	or	%r2,%r1
.L1427:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1428
	ltr	%r4,%r4
	ber	%r14
	j	.L1444
.L1431:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1444
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
	je	.L1448
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
.L1448:
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
	je	.L1463
.L1458:
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
.L1463:
	cr	%r5,%r1
	jne	.L1458
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
	je	.L1468
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
.L1468:
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
	jl	.L1564
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1656
.L1564:
	ltr	%r1,%r1
	je	.L1657
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	lr	%r9,%r1
	srl	%r5,3
	lhi	%r10,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r10,%r5
	je	.L1606
	chi	%r10,1
	je	.L1622
	chi	%r10,2
	je	.L1623
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1623:
	l	%r8,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r8,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
.L1622:
	l	%r10,0(%r1,%r3)
	l	%r0,4(%r1,%r3)
	st	%r10,0(%r1,%r2)
	st	%r0,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r9
	je	.L1650
.L1606:
	srl	%r5,2
.L1567:
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
	brct	%r5,.L1567
.L1650:
	clr	%r4,%r12
	jle	.L1560
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1624
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
	jle	.L1624
	lr	%r9,%r10
	lhi	%r5,3
	or	%r9,%r11
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L1624
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1597
	chi	%r8,1
	je	.L1625
	chi	%r8,2
	jne	.L1658
.L1626:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1625:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1649
.L1597:
	srl	%r5,2
.L1570:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1570
.L1649:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1560
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1560
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1560
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1560:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1656:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L1560
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1615
	chi	%r0,1
	je	.L1620
	chi	%r0,2
	je	.L1621
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
.L1621:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L1620:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L1560
.L1615:
	srl	%r4,2
.L1565:
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
	brct	%r4,.L1565
	j	.L1560
.L1658:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1626
.L1657:
	ltr	%r4,%r4
	je	.L1560
.L1624:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1588
	chi	%r5,1
	je	.L1627
	chi	%r5,2
	jne	.L1659
.L1628:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1627:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1560
.L1588:
	srl	%r1,2
.L1572:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1572
	j	.L1560
.L1659:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1628
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
	jl	.L1665
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L1742
.L1665:
	ltr	%r0,%r0
	je	.L1743
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r10,%r0
	lhi	%r11,8
	ahi	%r10,-1
	clr	%r10,%r11
	jle	.L1668
	lr	%r12,%r3
	lhi	%r1,3
	or	%r12,%r2
	nr	%r12,%r1
	ahi	%r12,-1
	ltr	%r12,%r12
	jhe	.L1668
	lr	%r5,%r3
	ahi	%r5,2
	cr	%r2,%r5
	je	.L1668
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
	je	.L1698
	chi	%r10,1
	je	.L1714
	chi	%r10,2
	jne	.L1744
.L1715:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L1714:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1733
.L1698:
	srl	%r5,2
.L1669:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1669
.L1733:
	sll	%r11,1
	cr	%r0,%r11
	je	.L1664
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L1664:
	tml	%r4,1
	je	.L1661
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1661:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1742:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1707
	chi	%r5,1
	je	.L1712
	chi	%r5,2
	je	.L1713
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1713:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1712:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1707:
	srl	%r4,2
.L1666:
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
	brct	%r4,.L1666
	br	%r14
.L1744:
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L1715
.L1668:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r12,3
	srl	%r5,1
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1689
	chi	%r12,1
	je	.L1716
	chi	%r12,2
	jne	.L1745
.L1717:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L1716:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1664
.L1689:
	srl	%r5,2
.L1671:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r11,2(%r1,%r3)
	sth	%r11,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1671
	j	.L1664
.L1743:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
	br	%r14
.L1745:
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lh	%r11,0(%r3)
	lhi	%r1,2
	sth	%r11,0(%r2)
	j	.L1717
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
	jl	.L1751
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1843
.L1751:
	ltr	%r1,%r1
	je	.L1844
	sll	%r1,2
	lr	%r10,%r1
	ahi	%r10,-4
	lhi	%r11,3
	srl	%r10,2
	lr	%r9,%r1
	ahi	%r10,1
	lhi	%r5,0
	nr	%r11,%r10
	je	.L1793
	chi	%r11,1
	je	.L1809
	chi	%r11,2
	je	.L1810
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
.L1810:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L1809:
	l	%r8,0(%r5,%r3)
	st	%r8,0(%r5,%r2)
	ahi	%r5,4
	cr	%r5,%r9
	je	.L1837
.L1793:
	srl	%r10,2
.L1754:
	l	%r9,0(%r5,%r3)
	st	%r9,0(%r5,%r2)
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r10,.L1754
.L1837:
	clr	%r4,%r12
	jle	.L1747
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r10,%r0
	ahi	%r10,-1
	clr	%r10,%r5
	jle	.L1811
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
	jle	.L1811
	lr	%r8,%r10
	lhi	%r5,3
	or	%r8,%r11
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1811
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1784
	chi	%r8,1
	je	.L1812
	chi	%r8,2
	jne	.L1845
.L1813:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1812:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1836
.L1784:
	srl	%r5,2
.L1757:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1757
.L1836:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1747
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1747
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1747
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1747:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1843:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L1747
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1802
	chi	%r0,1
	je	.L1807
	chi	%r0,2
	je	.L1808
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
.L1808:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L1807:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L1747
.L1802:
	srl	%r4,2
.L1752:
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
	brct	%r4,.L1752
	j	.L1747
.L1845:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1813
.L1844:
	ltr	%r4,%r4
	je	.L1747
.L1811:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1775
	chi	%r5,1
	je	.L1814
	chi	%r5,2
	jne	.L1846
.L1815:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1814:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1747
.L1775:
	srl	%r1,2
.L1759:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1759
	j	.L1747
.L1846:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1815
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
	larl	%r5,.L1853
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1854-.L1853(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1853:
.L1854:
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
	larl	%r5,.L1858
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1856
	adb	%f0,.L1859-.L1858(%r5)
.L1856:
	ledbr	%f0,%f0
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
	jne	.L1871
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L1872
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L1873
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L1874
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L1875
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L1876
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L1877
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L1878
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L1879
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L1880
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L1881
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L1882
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L1883
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L1884
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1871:
	lhi	%r2,0
	br	%r14
.L1882:
	lhi	%r2,12
	br	%r14
.L1872:
	lhi	%r2,2
	br	%r14
.L1873:
	lhi	%r2,3
	br	%r14
.L1874:
	lhi	%r2,4
	br	%r14
.L1875:
	lhi	%r2,5
	br	%r14
.L1876:
	lhi	%r2,6
	br	%r14
.L1877:
	lhi	%r2,7
	br	%r14
.L1878:
	lhi	%r2,8
	br	%r14
.L1879:
	lhi	%r2,9
	br	%r14
.L1880:
	lhi	%r2,10
	br	%r14
.L1881:
	lhi	%r2,11
	br	%r14
.L1883:
	lhi	%r2,13
	br	%r14
.L1884:
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
	jne	.L1891
	tml	%r2,2
	jne	.L1892
	tml	%r2,4
	jne	.L1893
	tml	%r2,8
	jne	.L1894
	tml	%r2,16
	jne	.L1895
	tml	%r2,32
	jne	.L1896
	tml	%r2,64
	jne	.L1897
	tml	%r2,128
	jne	.L1898
	tml	%r2,256
	jne	.L1899
	tml	%r2,512
	jne	.L1900
	tml	%r2,1024
	jne	.L1901
	tml	%r2,2048
	jne	.L1902
	tml	%r2,4096
	jne	.L1903
	tml	%r2,8192
	jne	.L1904
	tml	%r2,16384
	jne	.L1905
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1891:
	lhi	%r2,0
	br	%r14
.L1892:
	lhi	%r2,1
	br	%r14
.L1903:
	lhi	%r2,12
	br	%r14
.L1893:
	lhi	%r2,2
	br	%r14
.L1894:
	lhi	%r2,3
	br	%r14
.L1895:
	lhi	%r2,4
	br	%r14
.L1896:
	lhi	%r2,5
	br	%r14
.L1897:
	lhi	%r2,6
	br	%r14
.L1898:
	lhi	%r2,7
	br	%r14
.L1899:
	lhi	%r2,8
	br	%r14
.L1900:
	lhi	%r2,9
	br	%r14
.L1901:
	lhi	%r2,10
	br	%r14
.L1902:
	lhi	%r2,11
	br	%r14
.L1904:
	lhi	%r2,13
	br	%r14
.L1905:
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
	larl	%r5,.L1917
	ceb	%f0,.L1918-.L1917(%r5)
	jhe	.L1916
	cfebr	%r2,5,%f0
	br	%r14
.L1916:
	seb	%f0,.L1918-.L1917(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1919-.L1917(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1917:
.L1918:
	.long	1191182336
.L1919:
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
	je	.L1927
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
.L1927:
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
	je	.L2023
	ltr	%r3,%r3
	je	.L2023
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
.L2023:
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
	jle	.L2117
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2116:
	ltr	%r3,%r3
	jl	.L2117
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2118
	ltr	%r3,%r3
	jl	.L2117
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2118
	ltr	%r3,%r3
	jl	.L2117
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2118
	ltr	%r3,%r3
	jl	.L2117
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2118
	ahi	%r2,-4
	brct	%r0,.L2116
	ltr	%r4,%r4
	ber	%r14
.L2138:
	lr	%r2,%r5
	br	%r14
.L2118:
	ltr	%r1,%r1
	je	.L2125
.L2117:
	lhi	%r2,0
.L2122:
	clr	%r5,%r3
	jl	.L2121
	sr	%r5,%r3
	or	%r2,%r1
.L2121:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2122
	ltr	%r4,%r4
	ber	%r14
	j	.L2138
.L2125:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2138
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
	jl	.L2143
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2143:
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
	jl	.L2148
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2148:
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
	jl	.L2258
	je	.L2161
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r3,%r4
	sra	%r1,1
	sll	%r3,1
	ber	%r14
	lhi	%r5,0
.L2156:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2255
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
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L2159
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,28
	sra	%r4,28
	je	.L2159
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
.L2159:
	ltr	%r5,%r5
	je	.L2154
	lcr	%r2,%r2
.L2154:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2258:
	lhi	%r0,1
	nr	%r0,%r1
	lcr	%r2,%r0
	nr	%r2,%r4
	lcr	%r1,%r1
	lr	%r3,%r4
	lhi	%r5,1
	sll	%r3,1
	sra	%r1,1
	jne	.L2156
	lcr	%r2,%r2
	br	%r14
.L2161:
	lhi	%r2,0
	br	%r14
.L2255:
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
	larl	%r13,.L2308
	ltr	%r4,%r2
	jl	.L2306
	lhi	%r1,1
	lhi	%r0,0
.L2261:
	ltr	%r3,%r3
	jhe	.L2262
	lcr	%r3,%r3
	lr	%r0,%r1
.L2262:
	lr	%r5,%r4
	lr	%r1,%r3
	clr	%r4,%r3
	jle	.L2269
	sll	%r1,1
	clr	%r4,%r1
	jle	.L2270
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L2271
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L2272
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L2273
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L2274
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L2275
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L2276
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L2277
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L2278
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L2279
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L2280
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L2281
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L2282
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L2283
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L2284
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L2285
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L2286
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L2287
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L2288
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L2289
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L2290
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L2291
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L2292
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L2293
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L2294
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L2295
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L2296
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L2297
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L2298
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L2299
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L2307
.L2264:
	ltr	%r0,%r0
	je	.L2260
	lcr	%r2,%r2
.L2260:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2306:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r1,0
	lhi	%r0,1
	j	.L2261
.L2287:
	l	%r3,.L2309-.L2308(%r13)
.L2263:
	lhi	%r2,0
.L2266:
	clr	%r5,%r1
	jl	.L2265
	sr	%r5,%r1
	or	%r2,%r3
.L2265:
	srl	%r3,1
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L2266
	j	.L2264
.L2269:
	lhi	%r3,1
	j	.L2263
.L2270:
	lhi	%r3,2
	j	.L2263
.L2272:
	lhi	%r3,8
	j	.L2263
.L2271:
	lhi	%r3,4
	j	.L2263
.L2273:
	lhi	%r3,16
	j	.L2263
.L2274:
	lhi	%r3,32
	j	.L2263
.L2276:
	lhi	%r3,128
	j	.L2263
.L2275:
	lhi	%r3,64
	j	.L2263
.L2277:
	lhi	%r3,256
	j	.L2263
.L2278:
	lhi	%r3,512
	j	.L2263
.L2279:
	lhi	%r3,1024
	j	.L2263
.L2280:
	lhi	%r3,2048
	j	.L2263
.L2282:
	lhi	%r3,8192
	j	.L2263
.L2281:
	lhi	%r3,4096
	j	.L2263
.L2284:
	l	%r3,.L2310-.L2308(%r13)
	j	.L2263
.L2283:
	lhi	%r3,16384
	j	.L2263
.L2286:
	l	%r3,.L2311-.L2308(%r13)
	j	.L2263
.L2285:
	l	%r3,.L2312-.L2308(%r13)
	j	.L2263
.L2288:
	l	%r3,.L2313-.L2308(%r13)
	j	.L2263
.L2289:
	l	%r3,.L2314-.L2308(%r13)
	j	.L2263
.L2290:
	l	%r3,.L2315-.L2308(%r13)
	j	.L2263
.L2291:
	l	%r3,.L2316-.L2308(%r13)
	j	.L2263
.L2292:
	l	%r3,.L2317-.L2308(%r13)
	j	.L2263
.L2293:
	l	%r3,.L2318-.L2308(%r13)
	j	.L2263
.L2294:
	l	%r3,.L2319-.L2308(%r13)
	j	.L2263
.L2295:
	l	%r3,.L2320-.L2308(%r13)
	j	.L2263
.L2296:
	l	%r3,.L2321-.L2308(%r13)
	j	.L2263
.L2307:
	l	%r1,.L2322-.L2308(%r13)
	lr	%r3,%r1
	j	.L2263
.L2298:
	l	%r3,.L2323-.L2308(%r13)
	j	.L2263
.L2297:
	l	%r3,.L2324-.L2308(%r13)
	j	.L2263
.L2299:
	l	%r3,.L2325-.L2308(%r13)
	j	.L2263
	.section	.rodata
	.align	8
.L2308:
.L2325:
	.long	1073741824
.L2324:
	.long	268435456
.L2323:
	.long	536870912
.L2322:
	.long	-2147483648
.L2321:
	.long	134217728
.L2320:
	.long	67108864
.L2319:
	.long	33554432
.L2318:
	.long	16777216
.L2317:
	.long	8388608
.L2316:
	.long	4194304
.L2315:
	.long	2097152
.L2314:
	.long	1048576
.L2313:
	.long	524288
.L2312:
	.long	65536
.L2311:
	.long	131072
.L2310:
	.long	32768
.L2309:
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
	larl	%r13,.L2373
	ltr	%r2,%r2
	jl	.L2371
	lhi	%r4,0
.L2327:
	lpr	%r1,%r3
	clr	%r2,%r1
	lr	%r3,%r2
	jle	.L2334
	lr	%r5,%r1
	sll	%r5,1
	clr	%r2,%r5
	jle	.L2335
	lr	%r0,%r1
	sll	%r0,2
	clr	%r2,%r0
	jle	.L2336
	lr	%r5,%r1
	sll	%r5,3
	clr	%r2,%r5
	jle	.L2337
	lr	%r0,%r1
	sll	%r0,4
	clr	%r2,%r0
	jle	.L2338
	lr	%r5,%r1
	sll	%r5,5
	clr	%r2,%r5
	jle	.L2339
	lr	%r0,%r1
	sll	%r0,6
	clr	%r2,%r0
	jle	.L2340
	lr	%r5,%r1
	sll	%r5,7
	clr	%r2,%r5
	jle	.L2341
	lr	%r0,%r1
	sll	%r0,8
	clr	%r2,%r0
	jle	.L2342
	lr	%r5,%r1
	sll	%r5,9
	clr	%r2,%r5
	jle	.L2343
	lr	%r0,%r1
	sll	%r0,10
	clr	%r2,%r0
	jle	.L2344
	lr	%r5,%r1
	sll	%r5,11
	clr	%r2,%r5
	jle	.L2345
	lr	%r0,%r1
	sll	%r0,12
	clr	%r2,%r0
	jle	.L2346
	lr	%r5,%r1
	sll	%r5,13
	clr	%r2,%r5
	jle	.L2347
	lr	%r0,%r1
	sll	%r0,14
	clr	%r2,%r0
	jle	.L2348
	lr	%r5,%r1
	sll	%r5,15
	clr	%r2,%r5
	jle	.L2349
	lr	%r0,%r1
	sll	%r0,16
	clr	%r2,%r0
	jle	.L2350
	lr	%r5,%r1
	sll	%r5,17
	clr	%r2,%r5
	jle	.L2351
	lr	%r0,%r1
	sll	%r0,18
	clr	%r2,%r0
	jle	.L2352
	lr	%r5,%r1
	sll	%r5,19
	clr	%r2,%r5
	jle	.L2353
	lr	%r0,%r1
	sll	%r0,20
	clr	%r2,%r0
	jle	.L2354
	lr	%r5,%r1
	sll	%r5,21
	clr	%r2,%r5
	jle	.L2355
	lr	%r0,%r1
	sll	%r0,22
	clr	%r2,%r0
	jle	.L2356
	lr	%r5,%r1
	sll	%r5,23
	clr	%r2,%r5
	jle	.L2357
	lr	%r0,%r1
	sll	%r0,24
	clr	%r2,%r0
	jle	.L2358
	lr	%r5,%r1
	sll	%r5,25
	clr	%r2,%r5
	jle	.L2359
	lr	%r0,%r1
	sll	%r0,26
	clr	%r2,%r0
	jle	.L2360
	lr	%r5,%r1
	sll	%r5,27
	clr	%r2,%r5
	jle	.L2361
	lr	%r0,%r1
	sll	%r0,28
	clr	%r2,%r0
	jle	.L2362
	lr	%r5,%r1
	sll	%r5,29
	clr	%r2,%r5
	jle	.L2363
	lr	%r0,%r1
	sll	%r0,30
	clr	%r2,%r0
	jle	.L2364
	sll	%r1,31
	clr	%r2,%r1
	jle	.L2372
.L2329:
	ltr	%r4,%r4
	je	.L2326
	lcr	%r2,%r2
.L2326:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2371:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r4,1
	j	.L2327
.L2352:
	l	%r2,.L2374-.L2373(%r13)
	lr	%r1,%r0
.L2331:
	clr	%r3,%r1
	jl	.L2330
	sr	%r3,%r1
.L2330:
	srl	%r2,1
	srl	%r1,1
	ltr	%r2,%r2
	jne	.L2331
	lr	%r2,%r3
	j	.L2329
.L2334:
	lhi	%r2,1
	j	.L2331
.L2335:
	lr	%r1,%r5
	lhi	%r2,2
	j	.L2331
.L2337:
	lr	%r1,%r5
	lhi	%r2,8
	j	.L2331
.L2336:
	lr	%r1,%r0
	lhi	%r2,4
	j	.L2331
.L2338:
	lr	%r1,%r0
	lhi	%r2,16
	j	.L2331
.L2339:
	lr	%r1,%r5
	lhi	%r2,32
	j	.L2331
.L2341:
	lr	%r1,%r5
	lhi	%r2,128
	j	.L2331
.L2340:
	lr	%r1,%r0
	lhi	%r2,64
	j	.L2331
.L2342:
	lr	%r1,%r0
	lhi	%r2,256
	j	.L2331
.L2343:
	lr	%r1,%r5
	lhi	%r2,512
	j	.L2331
.L2344:
	lr	%r1,%r0
	lhi	%r2,1024
	j	.L2331
.L2345:
	lr	%r1,%r5
	lhi	%r2,2048
	j	.L2331
.L2347:
	lr	%r1,%r5
	lhi	%r2,8192
	j	.L2331
.L2346:
	lr	%r1,%r0
	lhi	%r2,4096
	j	.L2331
.L2349:
	l	%r2,.L2375-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2348:
	lr	%r1,%r0
	lhi	%r2,16384
	j	.L2331
.L2351:
	l	%r2,.L2376-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2350:
	l	%r2,.L2377-.L2373(%r13)
	lr	%r1,%r0
	j	.L2331
.L2353:
	l	%r2,.L2378-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2354:
	l	%r2,.L2379-.L2373(%r13)
	lr	%r1,%r0
	j	.L2331
.L2355:
	l	%r2,.L2380-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2356:
	l	%r2,.L2381-.L2373(%r13)
	lr	%r1,%r0
	j	.L2331
.L2357:
	l	%r2,.L2382-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2358:
	l	%r2,.L2383-.L2373(%r13)
	lr	%r1,%r0
	j	.L2331
.L2359:
	l	%r2,.L2384-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2360:
	l	%r2,.L2385-.L2373(%r13)
	lr	%r1,%r0
	j	.L2331
.L2361:
	l	%r2,.L2386-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2372:
	l	%r1,.L2387-.L2373(%r13)
	lr	%r2,%r1
	j	.L2331
.L2363:
	l	%r2,.L2388-.L2373(%r13)
	lr	%r1,%r5
	j	.L2331
.L2362:
	l	%r2,.L2389-.L2373(%r13)
	lr	%r1,%r0
	j	.L2331
.L2364:
	l	%r2,.L2390-.L2373(%r13)
	lr	%r1,%r0
	j	.L2331
	.section	.rodata
	.align	8
.L2373:
.L2390:
	.long	1073741824
.L2389:
	.long	268435456
.L2388:
	.long	536870912
.L2387:
	.long	-2147483648
.L2386:
	.long	134217728
.L2385:
	.long	67108864
.L2384:
	.long	33554432
.L2383:
	.long	16777216
.L2382:
	.long	8388608
.L2381:
	.long	4194304
.L2380:
	.long	2097152
.L2379:
	.long	1048576
.L2378:
	.long	524288
.L2377:
	.long	65536
.L2376:
	.long	131072
.L2375:
	.long	32768
.L2374:
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
	larl	%r13,.L2509
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L2507
	tml	%r3,32768
	jne	.L2394
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2395
	tml	%r1,32768
	jne	.L2396
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2397
	tml	%r1,32768
	jne	.L2398
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2399
	tml	%r1,32768
	jne	.L2400
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2401
	tml	%r1,32768
	jne	.L2402
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2403
	tml	%r1,32768
	jne	.L2404
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2405
	tml	%r1,32768
	jne	.L2406
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2407
	tml	%r1,32768
	jne	.L2408
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2409
	tml	%r1,32768
	jne	.L2410
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2411
	tml	%r1,32768
	jne	.L2412
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2413
	tml	%r1,32768
	jne	.L2414
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2415
	tml	%r1,32768
	jne	.L2416
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2417
	tml	%r1,32768
	jne	.L2418
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2419
	tml	%r1,32768
	jne	.L2420
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L2510-.L2509(%r13)
	clr	%r2,%r1
	jle	.L2421
	tml	%r1,32768
	jne	.L2422
	sll	%r3,15
	n	%r3,.L2510-.L2509(%r13)
	clr	%r2,%r3
	jle	.L2423
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L2508
.L2424:
	ltr	%r4,%r4
	je	.L2442
	lr	%r2,%r5
.L2442:
	n	%r2,.L2510-.L2509(%r13)
	lm	%r11,%r13,44(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2411:
	.cfi_restore_state
	jl	.L2458
	sr	%r5,%r1
	lhi	%r0,512
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,512
.L2426:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,2
	srl	%r11,2
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2427
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2427:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,3
	srl	%r11,3
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2428
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2428:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,4
	srl	%r11,4
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2429
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2429:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,5
	srl	%r11,5
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2430
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2430:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,6
	srl	%r11,6
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2431
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2431:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,7
	srl	%r11,7
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2432
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2432:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,8
	srl	%r11,8
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2433
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2433:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,9
	srl	%r11,9
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2434
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2434:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,10
	srl	%r11,10
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2435
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2435:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,11
	srl	%r11,11
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2436
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2436:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,12
	srl	%r11,12
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2437
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2437:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,13
	srl	%r11,13
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2438
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2438:
	l	%r11,.L2510-.L2509(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,14
	srl	%r11,14
	ltr	%r11,%r11
	je	.L2424
	clr	%r5,%r12
	jl	.L2439
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2510-.L2509(%r13)
.L2439:
	n	%r0,.L2510-.L2509(%r13)
	srl	%r1,15
	chi	%r0,16384
	je	.L2424
	clr	%r5,%r1
	jl	.L2447
	sr	%r5,%r1
	lhi	%r0,1
	n	%r5,.L2510-.L2509(%r13)
	or	%r2,%r0
	j	.L2424
.L2447:
	lhi	%r5,0
	j	.L2424
.L2507:
	je	.L2445
	lhi	%r2,0
	j	.L2424
.L2394:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L2510-.L2509(%r13)
	j	.L2424
.L2395:
	jl	.L2450
	sr	%r5,%r1
	lhi	%r0,2
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,2
	j	.L2426
.L2396:
	lhi	%r2,32767
	sr	%r5,%r1
	nr	%r3,%r2
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r12,1
	lhi	%r0,2
	lhi	%r2,2
.L2444:
	clr	%r5,%r3
	jl	.L2426
	sr	%r5,%r3
	or	%r2,%r12
	n	%r5,.L2510-.L2509(%r13)
	j	.L2426
.L2397:
	jl	.L2451
	sr	%r5,%r1
	lhi	%r0,4
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,4
	j	.L2426
.L2398:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,2
	lhi	%r0,4
	lhi	%r2,4
	j	.L2444
.L2399:
	jl	.L2452
	sr	%r5,%r1
	lhi	%r0,8
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,8
	j	.L2426
.L2400:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,4
	lhi	%r0,8
	lhi	%r2,8
	j	.L2444
.L2401:
	jl	.L2453
	sr	%r5,%r1
	lhi	%r0,16
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,16
	j	.L2426
.L2402:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,8
	lhi	%r0,16
	lhi	%r2,16
	j	.L2444
.L2403:
	jl	.L2454
	sr	%r5,%r1
	lhi	%r0,32
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,32
	j	.L2426
.L2404:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,16
	lhi	%r0,32
	lhi	%r2,32
	j	.L2444
.L2405:
	jl	.L2455
	sr	%r5,%r1
	lhi	%r0,64
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,64
	j	.L2426
.L2406:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,32
	lhi	%r0,64
	lhi	%r2,64
	j	.L2444
.L2407:
	jl	.L2456
	sr	%r5,%r1
	lhi	%r0,128
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,128
	j	.L2426
.L2408:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,64
	lhi	%r0,128
	lhi	%r2,128
	j	.L2444
.L2410:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,128
	lhi	%r0,256
	lhi	%r2,256
	j	.L2444
.L2412:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,256
	lhi	%r0,512
	lhi	%r2,512
	j	.L2444
.L2445:
	lhi	%r2,1
	lhi	%r5,0
	j	.L2424
.L2450:
	lhi	%r0,2
.L2443:
	lr	%r3,%r1
	lr	%r12,%r0
	srl	%r3,1
	sll	%r12,16
	lhi	%r2,0
	srl	%r12,17
	j	.L2444
.L2414:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,512
	lhi	%r0,1024
	lhi	%r2,1024
	j	.L2444
.L2416:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,1024
	lhi	%r0,2048
	lhi	%r2,2048
	j	.L2444
.L2451:
	lhi	%r0,4
	j	.L2443
.L2452:
	lhi	%r0,8
	j	.L2443
.L2418:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,2048
	lhi	%r0,4096
	lhi	%r2,4096
	j	.L2444
.L2420:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,4096
	lhi	%r0,8192
	lhi	%r2,8192
	j	.L2444
.L2453:
	lhi	%r0,16
	j	.L2443
.L2454:
	lhi	%r0,32
	j	.L2443
.L2422:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2510-.L2509(%r13)
	srl	%r3,1
	lhi	%r12,8192
	lhi	%r0,16384
	lhi	%r2,16384
	j	.L2444
.L2423:
	l	%r1,.L2511-.L2509(%r13)
	lhi	%r0,-32768
	tml	%r2,32768
	je	.L2443
	lhi	%r2,-32768
	lhi	%r5,0
	j	.L2426
.L2455:
	lhi	%r0,64
	j	.L2443
.L2508:
	ahi	%r5,-32768
	l	%r1,.L2511-.L2509(%r13)
	lhi	%r3,16384
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r12,16384
	lhi	%r0,-32768
	lhi	%r2,-32768
	j	.L2444
.L2456:
	lhi	%r0,128
	j	.L2443
.L2409:
	jl	.L2457
	sr	%r5,%r1
	lhi	%r0,256
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,256
	j	.L2426
.L2457:
	lhi	%r0,256
	j	.L2443
.L2413:
	jl	.L2459
	sr	%r5,%r1
	lhi	%r0,1024
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,1024
	j	.L2426
.L2421:
	jl	.L2463
	sr	%r5,%r1
	lhi	%r0,16384
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,16384
	j	.L2426
.L2459:
	lhi	%r0,1024
	j	.L2443
.L2463:
	lhi	%r0,16384
	j	.L2443
.L2458:
	lhi	%r0,512
	j	.L2443
.L2419:
	jl	.L2462
	sr	%r5,%r1
	lhi	%r0,8192
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,8192
	j	.L2426
.L2417:
	jl	.L2461
	sr	%r5,%r1
	lhi	%r0,4096
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,4096
	j	.L2426
.L2415:
	jl	.L2460
	sr	%r5,%r1
	lhi	%r0,2048
	n	%r5,.L2510-.L2509(%r13)
	lhi	%r2,2048
	j	.L2426
.L2462:
	lhi	%r0,8192
	j	.L2443
.L2461:
	lhi	%r0,4096
	j	.L2443
.L2460:
	lhi	%r0,2048
	j	.L2443
	.section	.rodata
	.align	8
.L2509:
.L2511:
	.long	32768
.L2510:
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
	jle	.L2514
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2513:
	ltr	%r3,%r3
	jl	.L2514
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2515
	ltr	%r3,%r3
	jl	.L2514
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2515
	ltr	%r3,%r3
	jl	.L2514
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2515
	ltr	%r3,%r3
	jl	.L2514
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2515
	ahi	%r2,-4
	brct	%r0,.L2513
	ltr	%r4,%r4
	ber	%r14
.L2535:
	lr	%r2,%r5
	br	%r14
.L2515:
	ltr	%r1,%r1
	je	.L2522
.L2514:
	lhi	%r2,0
.L2519:
	clr	%r5,%r3
	jl	.L2518
	sr	%r5,%r3
	or	%r2,%r1
.L2518:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2519
	ltr	%r4,%r4
	ber	%r14
	j	.L2535
.L2522:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2535
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
	je	.L2538
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L2538:
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
	je	.L2544
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L2544:
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
	larl	%r13,.L2557
	cl	%r2,.L2558-.L2557(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L2559-.L2557(%r13)
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
	jne	.L2554
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L2554:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L2557:
.L2559:
	.long	65280
.L2558:
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
	jl	.L2564
	jh	.L2565
	clr	%r3,%r5
	jl	.L2564
	jh	.L2565
	lhi	%r2,1
	br	%r14
.L2564:
	lhi	%r2,0
	br	%r14
.L2565:
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
	jl	.L2571
	jh	.L2570
	clr	%r3,%r5
	jl	.L2571
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2571:
	lhi	%r2,-1
	br	%r14
.L2570:
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
	larl	%r13,.L2575
	l	%r4,.L2576-.L2575(%r13)
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
.L2575:
.L2576:
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
	je	.L2578
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L2578:
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
	larl	%r13,.L2590
	l	%r4,.L2591-.L2590(%r13)
	l	%r1,.L2591-.L2590(%r13)
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
	l	%r5,.L2591-.L2590(%r13)
	lr	%r0,%r3
	n	%r3,.L2591-.L2590(%r13)
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
.L2590:
.L2591:
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
	larl	%r13,.L2594
	l	%r1,.L2595-.L2594(%r13)
	l	%r0,.L2595-.L2594(%r13)
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
	l	%r12,.L2595-.L2594(%r13)
	lr	%r0,%r11
	n	%r11,.L2595-.L2594(%r13)
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
.L2594:
.L2595:
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
	je	.L2597
	ahi	%r2,-1
.L2597:
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
	larl	%r13,.L2605
	l	%r0,.L2606-.L2605(%r13)
	l	%r1,.L2606-.L2605(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L2607-.L2605(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L2608-.L2605(%r13)
	l	%r3,.L2608-.L2605(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L2608-.L2605(%r13)
	nr	%r3,%r1
	l	%r1,.L2608-.L2605(%r13)
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
	n	%r2,.L2607-.L2605(%r13)
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
.L2605:
.L2608:
	.long	858993459
.L2607:
	.long	252645135
.L2606:
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
	larl	%r5,.L2611
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L2612-.L2611(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L2613-.L2611(%r5)
	srl	%r0,2
	n	%r0,.L2613-.L2611(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L2614-.L2611(%r5)
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
.L2611:
.L2614:
	.long	252645135
.L2613:
	.long	858993459
.L2612:
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
	larl	%r5,.L2624
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L2625-.L2624(%r5)
	tml	%r2,1
	je	.L2616
.L2618:
	mdbr	%f0,%f2
.L2616:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2617
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L2618
.L2623:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2618
	j	.L2623
.L2617:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L2625-.L2624(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2624:
.L2625:
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
	larl	%r5,.L2635
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L2636-.L2635(%r5)
	tml	%r2,1
	je	.L2627
.L2629:
	meebr	%f0,%f2
.L2627:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2628
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L2629
.L2634:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2629
	j	.L2634
.L2628:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L2636-.L2635(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2635:
.L2636:
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
	jl	.L2641
	jh	.L2642
	clr	%r3,%r5
	jl	.L2641
	jh	.L2642
	lhi	%r2,1
	br	%r14
.L2641:
	lhi	%r2,0
	br	%r14
.L2642:
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
	jl	.L2648
	jh	.L2647
	clr	%r3,%r5
	jl	.L2648
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2648:
	lhi	%r2,-1
	br	%r14
.L2647:
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
