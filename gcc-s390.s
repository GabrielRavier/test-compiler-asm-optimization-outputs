	.file	"mini-libc.c"
	.machinemode esa
	.machine "z196+htm"
.text
	.align	8
.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	jle	.L2
	ltr	%r4,%r4
	je	.L3
	ahi	%r3,-1
	lr	%r1,%r2
	lr	%r11,%r4
	ahi	%r1,-1
	ahi	%r11,-1
	lhi	%r0,3
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L33
	chi	%r0,1
	je	.L55
	chi	%r0,2
	jne	.L99
.L56:
	ic	%r10,0(%r4,%r3)
	stc	%r10,0(%r4,%r1)
	ahi	%r4,-1
.L55:
	ic	%r11,0(%r4,%r3)
	stc	%r11,0(%r4,%r1)
	brct	%r4,.L33
.L3:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
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
	lhi	%r10,3
	or	%r0,%r2
	nr	%r0,%r10
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L12
	lr	%r11,%r3
	ahi	%r11,1
	lr	%r12,%r2
	lhi	%r1,2
	sr	%r12,%r11
	clr	%r12,%r1
	jle	.L12
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r10,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r10,%r5
	je	.L51
	chi	%r10,1
	je	.L57
	chi	%r10,2
	je	.L58
	l	%r11,0(%r3)
	lhi	%r1,4
	st	%r11,0(%r2)
.L58:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L57:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L80
.L51:
	srl	%r5,2
	chi	%r5,2
	jle	.L95
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L6:
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	brct	%r5,.L6
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	ahi	%r1,16
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
	chi	%r5,2
	jle	.L93
	ahi	%r5,-1
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
.L4:
	lr	%r12,%r4
	ahi	%r12,-3
	lr	%r11,%r4
	ahi	%r11,-2
	lr	%r10,%r4
	ahi	%r10,-1
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r1)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	ahi	%r4,-4
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	brct	%r5,.L4
	ahi	%r12,-4
	ahi	%r11,-4
	ahi	%r4,-1
	lr	%r10,%r4
	ic	%r4,0(%r4,%r3)
	stc	%r4,0(%r10,%r1)
	ic	%r4,0(%r11,%r3)
	stc	%r4,0(%r11,%r1)
	ic	%r3,0(%r12,%r3)
	stc	%r3,0(%r12,%r1)
	j	.L3
.L93:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	lr	%r12,%r4
	ahi	%r12,-1
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r1)
	lr	%r11,%r4
	ahi	%r11,-2
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	lr	%r12,%r4
	ahi	%r12,-3
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r1)
	ahi	%r4,-4
	brct	%r5,.L93
	j	.L3
.L99:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	lr	%r4,%r11
	j	.L56
.L95:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L95
	j	.L80
.L12:
	lhi	%r12,3
	lhi	%r1,0
	lr	%r11,%r4
	nr	%r12,%r4
	je	.L42
	chi	%r12,1
	je	.L59
	chi	%r12,2
	je	.L60
	mvc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L60:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,1
.L59:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L3
.L42:
	lr	%r4,%r11
	srl	%r4,2
	chi	%r4,2
	jle	.L94
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L9:
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ahi	%r1,4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L9
	ic	%r4,1(%r1,%r3)
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r3)
	stc	%r4,2(%r1,%r2)
	ic	%r3,3(%r1,%r3)
	stc	%r3,3(%r1,%r2)
	j	.L3
.L94:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r12,2(%r1,%r3)
	stc	%r12,2(%r1,%r2)
	ic	%r10,3(%r1,%r3)
	stc	%r10,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L94
	j	.L3
	.cfi_endproc
.LFE0:
	.size	memmove, .-memmove
	.align	8
.globl memccpy
	.type	memccpy, @function
memccpy:
.LFB1:
	.cfi_startproc
	lhi	%r1,255
	nr	%r4,%r1
	ltr	%r5,%r5
	je	.L123
	lr	%r0,%r5
	ahi	%r0,-1
	tml	%r5,1
	je	.L124
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	ic	%r1,0(%r3)
	lhi	%r12,255
	stc	%r1,0(%r2)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L119
	ahi	%r3,1
	ahi	%r2,1
	ltr	%r0,%r0
	je	.L104
	srl	%r5,1
.L102:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L119
	ahi	%r2,1
	ic	%r12,1(%r3)
	stc	%r12,0(%r2)
	lhi	%r1,255
	nr	%r12,%r1
	cr	%r12,%r4
	je	.L119
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L102
.L104:
	lhi	%r2,0
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
.L124:
	srl	%r5,1
.L130:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L128
	ahi	%r2,1
	ic	%r1,1(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L128
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L130
.L123:
	lhi	%r2,0
	br	%r14
.L128:
	ahi	%r2,1
	br	%r14
.L119:
	.cfi_offset 12, -4
	ahi	%r2,1
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE1:
	.size	memccpy, .-memccpy
	.align	8
.globl memchr
	.type	memchr, @function
memchr:
.LFB2:
	.cfi_startproc
	lhi	%r1,255
	nr	%r3,%r1
	ltr	%r4,%r4
	je	.L139
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L146
	chi	%r5,1
	je	.L157
	chi	%r5,2
	je	.L158
	lhi	%r4,0
	ic	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	ahi	%r2,1
	lr	%r4,%r0
.L158:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L157:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	ahi	%r2,1
	chi	%r4,1
	je	.L139
.L146:
	srl	%r1,2
	lr	%r4,%r1
.L136:
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
	brct	%r4,.L136
.L139:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE2:
	.size	memchr, .-memchr
	.align	8
.globl memcmp
	.type	memcmp, @function
memcmp:
.LFB3:
	.cfi_startproc
	ltr	%r4,%r4
	je	.L176
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L191
.L179:
	srl	%r4,1
.L172:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L188
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L188
	ahi	%r2,2
	ahi	%r3,2
	brct	%r4,.L172
.L176:
	lhi	%r2,0
	br	%r14
.L188:
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L191:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L188
	ahi	%r2,1
	ahi	%r3,1
	ltr	%r0,%r0
	jne	.L179
	j	.L176
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	stm	%r12,%r15,80(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-16
	.cfi_def_cfa_offset 112
	lr	%r12,%r2
	ltr	%r4,%r4
	je	.L194
	brasl	%r14,memcpy
.L194:
	lr	%r2,%r12
	lm	%r12,%r15,96(%r15)
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
	je	.L209
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	chi	%r5,1
	je	.L209
	chi	%r5,2
	je	.L213
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L213:
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L209:
	srl	%r4,2
	lr	%r5,%r1
	ahi	%r4,1
	ahi	%r5,-1
	brct	%r4,.L223
	lhi	%r2,0
	br	%r14
.L223:
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
	st	%r12,92(%r15)
	.cfi_offset 12, -4
.L226:
	lr	%r12,%r1
	ahi	%r12,-3
	lr	%r2,%r0
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L200
	ahi	%r1,-4
	lhi	%r5,0
	lr	%r2,%r12
	ic	%r5,0(%r12)
	cr	%r5,%r3
	je	.L200
	lr	%r12,%r1
	ahi	%r12,-1
	brct	%r4,.L203
	lhi	%r2,0
.L200:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L203:
	.cfi_restore_state
	lhi	%r0,0
	lr	%r2,%r1
	ic	%r0,0(%r1)
	cr	%r0,%r3
	je	.L200
	lr	%r0,%r1
	ahi	%r0,-2
	lhi	%r5,0
	lr	%r2,%r12
	ic	%r5,0(%r12)
	cr	%r5,%r3
	jne	.L226
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE5:
	.size	memrchr, .-memrchr
	.align	8
.globl memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	ltr	%r4,%r4
	ber	%r14
	lr	%r0,%r2
	lr	%r1,%r4
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lhi	%r12,0
	lhi	%r13,0
	mvcle	%r0,%r12,0(%r3)
	jo	.-4
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE6:
	.size	memset, .-memset
	.align	8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
.LFB7:
	.cfi_startproc
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	ber	%r14
.L241:
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
	jne	.L241
	br	%r14
	.cfi_endproc
.LFE7:
	.size	stpcpy, .-stpcpy
	.align	8
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
.L255:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L255
	br	%r14
	.cfi_endproc
.LFE8:
	.size	strchrnul, .-strchrnul
	.align	8
.globl strchr
	.type	strchr, @function
strchr:
.LFB9:
	.cfi_startproc
.L259:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L259
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE9:
	.size	strchr, .-strchr
	.align	8
.globl strcmp
	.type	strcmp, @function
strcmp:
.LFB10:
	.cfi_startproc
	st	%r12,92(%r15)
	.cfi_offset 12, -4
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
	je	.L263
	j	.L273
.L265:
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	ic	%r4,0(%r1,%r12)
	nr	%r5,%r3
	lhi	%r0,255
	nr	%r0,%r4
	cr	%r5,%r0
	jne	.L273
.L263:
	tml	%r3,255
	jne	.L265
	lhi	%r2,0
	lhi	%r1,255
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
	br	%r14
.L273:
	.cfi_restore_state
	lr	%r2,%r5
	lhi	%r1,255
	l	%r12,92(%r15)
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE10:
	.size	strcmp, .-strcmp
	.align	8
.globl strlen
	.type	strlen, @function
strlen:
.LFB11:
	.cfi_startproc
	lr	%r3,%r2
	cli	0(%r2),0
	je	.L278
.L277:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L277
	sr	%r2,%r3
	br	%r14
.L278:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE11:
	.size	strlen, .-strlen
	.align	8
.globl strncmp
	.type	strncmp, @function
strncmp:
.LFB12:
	.cfi_startproc
	ltr	%r4,%r4
	je	.L289
	icm	%r1,1,0(%r2)
	ic	%r5,0(%r3)
	je	.L303
	lhi	%r0,255
	nr	%r0,%r5
	je	.L302
	brct	%r4,.L300
.L302:
	lhi	%r2,255
	nr	%r1,%r2
.L295:
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L289:
	lhi	%r2,0
	br	%r14
.L300:
	st	%r12,92(%r15)
	.cfi_offset 12, -4
.L287:
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r0,%r1
	jne	.L284
	lr	%r5,%r3
	ahi	%r5,1
	ahi	%r2,1
	icm	%r1,1,0(%r2)
	je	.L304
	lr	%r3,%r5
	lhi	%r0,255
	ic	%r5,0(%r5)
	nr	%r0,%r5
	je	.L301
	brct	%r4,.L287
.L301:
	lhi	%r4,255
	nr	%r1,%r4
.L284:
	lhi	%r0,255
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L304:
	.cfi_restore_state
	ic	%r5,1(%r3)
	lhi	%r1,0
	lhi	%r0,255
	l	%r12,92(%r15)
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L303:
	lhi	%r1,0
	j	.L295
	.cfi_endproc
.LFE12:
	.size	strncmp, .-strncmp
	.align	8
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
	je	.L315
	chi	%r5,1
	je	.L319
	chi	%r5,2
	je	.L320
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L320:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L319:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L315:
	srl	%r0,2
.L308:
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
	brct	%r0,.L308
	br	%r14
	.cfi_endproc
.LFE13:
	.size	swab, .-swab
	.align	8
.globl isalpha
	.type	isalpha, @function
isalpha:
.LFB14:
	.cfi_startproc
	lhi	%r1,32
	or	%r2,%r1
	lhi	%r0,25
	ahi	%r2,-97
	clr	%r2,%r0
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE14:
	.size	isalpha, .-isalpha
	.align	8
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
.globl isblank
	.type	isblank, @function
isblank:
.LFB16:
	.cfi_startproc
	chi	%r2,32
	je	.L334
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L334:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE16:
	.size	isblank, .-isblank
	.align	8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
.LFB17:
	.cfi_startproc
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L338
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L338:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE17:
	.size	iscntrl, .-iscntrl
	.align	8
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
.globl isspace
	.type	isspace, @function
isspace:
.LFB22:
	.cfi_startproc
	chi	%r2,32
	je	.L350
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L350:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE22:
	.size	isspace, .-isspace
	.align	8
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
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
.LFB24:
	.cfi_startproc
	larl	%r5,.L361
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L358
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L360
.L358:
	lhi	%r2,1
	br	%r14
.L360:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L358
	a	%r2,.L362-.L361(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L361:
.L362:
	.long	-65529
	.align	2
.text
	.cfi_endproc
.LFE24:
	.size	iswcntrl, .-iswcntrl
	.align	8
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
.globl iswprint
	.type	iswprint, @function
iswprint:
.LFB26:
	.cfi_startproc
	larl	%r5,.L374
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L373
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L370
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L375-.L374(%r5)
	jle	.L370
	l	%r4,.L376-.L374(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L370
	l	%r0,.L377-.L374(%r5)
	ar	%r0,%r2
	cl	%r0,.L378-.L374(%r5)
	jh	.L371
	n	%r2,.L379-.L374(%r5)
	x	%r2,.L379-.L374(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L370:
	lhi	%r2,1
	br	%r14
.L373:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L371:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L374:
.L379:
	.long	65534
.L378:
	.long	1048579
.L377:
	.long	-65532
.L376:
	.long	-57344
.L375:
	.long	47061
	.align	2
.text
	.cfi_endproc
.LFE26:
	.size	iswprint, .-iswprint
	.align	8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
.LFB27:
	.cfi_startproc
	lr	%r1,%r2
	lhi	%r3,9
	ahi	%r1,-48
	clr	%r1,%r3
	jle	.L382
	lhi	%r0,32
	or	%r2,%r0
	lhi	%r4,5
	ahi	%r2,-97
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L382:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE27:
	.size	iswxdigit, .-iswxdigit
	.align	8
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
.globl fdim
	.type	fdim, @function
fdim:
.LFB29:
	.cfi_startproc
	larl	%r5,.L395
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L390
	kdbr	%f0,%f2
	jnh	.L393
	sdbr	%f0,%f2
	br	%r14
.L393:
	ld	%f0,.L396-.L395(%r5)
	br	%r14
.L390:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L395:
.L396:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE29:
	.size	fdim, .-fdim
	.align	8
.globl fdimf
	.type	fdimf, @function
fdimf:
.LFB30:
	.cfi_startproc
	larl	%r5,.L406
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L401
	kebr	%f0,%f2
	jnh	.L404
	sebr	%f0,%f2
	br	%r14
.L404:
	le	%f0,.L407-.L406(%r5)
	br	%r14
.L401:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L406:
.L407:
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE30:
	.size	fdimf, .-fdimf
	.align	8
.globl fmax
	.type	fmax, @function
fmax:
.LFB31:
	.cfi_startproc
	cdbr	%f0,%f0
	jo	.L416
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L418
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L413
	lhi	%r0,0
.L413:
	tml	%r0,1
	jne	.L416
	ldr	%f2,%f0
.L416:
	ldr	%f0,%f2
	br	%r14
.L418:
	ltr	%r1,%r1
	ber	%r14
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE31:
	.size	fmax, .-fmax
	.align	8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
.LFB32:
	.cfi_startproc
	cebr	%f0,%f0
	jo	.L428
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L430
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L425
	lhi	%r0,0
.L425:
	tml	%r0,1
	jne	.L428
	ler	%f2,%f0
.L428:
	ler	%f0,%f2
	br	%r14
.L430:
	ltr	%r1,%r1
	ber	%r14
	ler	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE32:
	.size	fmaxf, .-fmaxf
	.align	8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
.LFB33:
	.cfi_startproc
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	st	%r15,92(%r15)
	ld	%f1,0(%r4)
	.cfi_offset 15, -4
	ahi	%r15,-56
	.cfi_def_cfa_offset 152
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	std	%f1,112(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f3,8(%r4)
	std	%f3,120(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L439
	cxbr	%f0,%f0
	jo	.L433
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
	jne	.L444
	lxr	%f5,%f0
	lhi	%r0,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	kxbr	%f0,%f5
	jl	.L438
	lhi	%r0,0
.L438:
	tml	%r0,1
	je	.L436
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L437:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L433:
	ld	%f10,96(%r15)
	ld	%f12,104(%r15)
	std	%f10,0(%r2)
	std	%f12,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L444:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L433
.L439:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f10,96(%r15)
	ld	%f12,104(%r15)
	std	%f10,0(%r2)
	std	%f12,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L436:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L437
	.cfi_endproc
.LFE33:
	.size	fmaxl, .-fmaxl
	.align	8
.globl fmin
	.type	fmin, @function
fmin:
.LFB34:
	.cfi_startproc
	cdbr	%f0,%f0
	jo	.L452
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L455
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L451
	lhi	%r0,0
.L451:
	tml	%r0,1
	bner	%r14
.L452:
	ldr	%f0,%f2
	br	%r14
.L455:
	ltr	%r1,%r1
	bner	%r14
	ldr	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE34:
	.size	fmin, .-fmin
	.align	8
.globl fminf
	.type	fminf, @function
fminf:
.LFB35:
	.cfi_startproc
	cebr	%f0,%f0
	jo	.L463
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L466
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L462
	lhi	%r0,0
.L462:
	tml	%r0,1
	bner	%r14
.L463:
	ler	%f0,%f2
	br	%r14
.L466:
	ltr	%r1,%r1
	bner	%r14
	ler	%f0,%f2
	br	%r14
	.cfi_endproc
.LFE35:
	.size	fminf, .-fminf
	.align	8
.globl fminl
	.type	fminl, @function
fminl:
.LFB36:
	.cfi_startproc
	st	%r15,92(%r15)
	ld	%f0,0(%r3)
	.cfi_offset 15, -4
	ahi	%r15,-56
	.cfi_def_cfa_offset 152
	std	%f0,112(%r15)
	ld	%f2,8(%r3)
	std	%f2,120(%r15)
	ld	%f1,0(%r4)
	std	%f1,96(%r15)
	ld	%f3,8(%r4)
	std	%f3,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L469
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L475
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L480
	lxr	%f5,%f0
	lhi	%r0,1
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	kxbr	%f0,%f5
	jl	.L474
	lhi	%r0,0
.L474:
	tml	%r0,1
	je	.L472
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L473:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L469:
	ld	%f14,96(%r15)
	ld	%f9,104(%r15)
	std	%f14,0(%r2)
	std	%f9,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L480:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L469
	ld	%f10,112(%r15)
	ld	%f12,120(%r15)
	std	%f10,96(%r15)
	std	%f12,104(%r15)
	ld	%f14,96(%r15)
	ld	%f9,104(%r15)
	std	%f14,0(%r2)
	std	%f9,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L472:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L473
.L475:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L469
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.align	8
.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	larl	%r1,.LANCHOR0
	ltr	%r2,%r2
	je	.L483
	larl	%r4,.LANCHOR1
.L484:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L484
.L483:
	mvi	0(%r1),0
	larl	%r2,.LANCHOR0
	br	%r14
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.align	8
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
.globl rand
	.type	rand, @function
rand:
.LFB39:
	.cfi_startproc
	stm	%r10,%r13,80(%r15)
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r1,.LANCHOR0
	lm	%r4,%r5,8(%r1)
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,4
	slr	%r3,%r5
	slbr	%r2,%r4
	lr	%r13,%r3
	lr	%r12,%r2
	sldl	%r12,6
	slr	%r13,%r3
	slbr	%r12,%r2
	lr	%r3,%r13
	lr	%r2,%r12
	sldl	%r2,7
	alr	%r13,%r3
	alcr	%r12,%r2
	sldl	%r12,2
	alr	%r13,%r5
	alcr	%r12,%r4
	lr	%r3,%r13
	lr	%r2,%r12
	sldl	%r2,6
	slr	%r3,%r13
	slbr	%r2,%r12
	sldl	%r2,7
	alr	%r3,%r5
	alcr	%r2,%r4
	sldl	%r2,2
	alr	%r3,%r5
	alcr	%r2,%r4
	lr	%r11,%r3
	lr	%r10,%r2
	sldl	%r10,3
	slr	%r11,%r3
	slbr	%r10,%r2
	lr	%r13,%r11
	lr	%r12,%r10
	sldl	%r12,3
	slr	%r13,%r11
	slbr	%r12,%r10
	lr	%r3,%r13
	lr	%r2,%r12
	sldl	%r2,6
	slr	%r3,%r13
	slbr	%r2,%r12
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
	alcr	%r2,%r4
	lhi	%r5,1
	lhi	%r4,0
	alr	%r5,%r3
	lr	%r3,%r5
	alcr	%r4,%r2
	lr	%r2,%r4
	stm	%r2,%r3,8(%r1)
	lm	%r10,%r13,80(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	srdl	%r2,33
	lr	%r2,%r3
	br	%r14
	.cfi_endproc
.LFE39:
	.size	rand, .-rand
	.align	8
.globl insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	ltr	%r3,%r3
	je	.L499
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L499:
	lhi	%r0,0
	st	%r0,4(%r2)
	st	%r0,0(%r2)
	br	%r14
	.cfi_endproc
.LFE40:
	.size	insque, .-insque
	.align	8
.globl remque
	.type	remque, @function
remque:
.LFB41:
	.cfi_startproc
	icm	%r1,15,0(%r2)
	je	.L502
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L502:
	icm	%r2,15,4(%r2)
	ber	%r14
	st	%r1,0(%r2)
	br	%r14
	.cfi_endproc
.LFE41:
	.size	remque, .-remque
	.align	8
.globl lsearch
	.type	lsearch, @function
lsearch:
.LFB42:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-48
	.cfi_def_cfa_offset 144
	st	%r4,100(%r15)
	lr	%r10,%r5
	lr	%r9,%r2
	lr	%r7,%r3
	icm	%r13,15,0(%r4)
	je	.L512
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L537
.L524:
	srl	%r11,1
.L514:
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	lr	%r8,%r12
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L511
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L511
	ar	%r12,%r10
	brct	%r11,.L514
.L512:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L511
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L511:
	lr	%r2,%r8
	lm	%r7,%r15,108(%r15)
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
	je	.L511
	ar	%r12,%r10
	chi	%r13,1
	jne	.L524
	j	.L512
	.cfi_endproc
.LFE42:
	.size	lsearch, .-lsearch
	.align	8
.globl lfind
	.type	lfind, @function
lfind:
.LFB43:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
	icm	%r7,15,0(%r4)
	je	.L540
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L561
.L549:
	srl	%r11,1
.L542:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	lr	%r8,%r12
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L539
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L539
	ar	%r12,%r9
	brct	%r11,.L542
.L540:
	lhi	%r8,0
.L539:
	lr	%r2,%r8
	lm	%r7,%r15,100(%r15)
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
.L561:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L539
	ar	%r12,%r9
	chi	%r7,1
	jne	.L549
	j	.L540
	.cfi_endproc
.LFE43:
	.size	lfind, .-lfind
	.align	8
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
.globl atoi
	.type	atoi, @function
atoi:
.LFB45:
	.cfi_startproc
	stm	%r11,%r15,76(%r15)
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-32
	.cfi_def_cfa_offset 128
.L572:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L566
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L566
	chi	%r1,43
	je	.L567
	chi	%r1,45
	je	.L568
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L577
	lr	%r3,%r2
	lhi	%r12,0
.L570:
	lhi	%r2,0
.L574:
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
	jle	.L574
	ltr	%r12,%r12
	jne	.L565
	lr	%r2,%r5
	sr	%r2,%r1
.L565:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L566:
	.cfi_restore_state
	ahi	%r2,1
	j	.L572
.L568:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L577
	lhi	%r12,1
	j	.L570
.L567:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L570
.L577:
	lhi	%r2,0
	lm	%r11,%r15,108(%r15)
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
.globl atol
	.type	atol, @function
atol:
.LFB156:
	.cfi_startproc
	stm	%r11,%r15,76(%r15)
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-32
	.cfi_def_cfa_offset 128
.L594:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L590
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L590
	chi	%r1,43
	je	.L591
	chi	%r1,45
	je	.L592
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L601
	lr	%r3,%r2
	lhi	%r12,0
.L595:
	lhi	%r2,0
.L598:
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
	jle	.L598
	ltr	%r12,%r12
	jne	.L589
	lr	%r2,%r5
	sr	%r2,%r1
.L589:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L590:
	.cfi_restore_state
	ahi	%r2,1
	j	.L594
.L592:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	lr	%r3,%r2
	lhi	%r12,1
	clr	%r11,%r1
	jle	.L595
.L601:
	lhi	%r2,0
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L591:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L601
	lhi	%r12,0
	j	.L595
	.cfi_endproc
.LFE156:
	.size	atol, .-atol
	.align	8
.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	stm	%r9,%r15,68(%r15)
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
.L621:
	ic	%r11,0(%r2)
	stc	%r11,103(%r15)
	lhi	%r1,255
	nr	%r1,%r11
	cli	103(%r15),32
	je	.L615
	lr	%r3,%r1
	lhi	%r4,4
	ahi	%r3,-9
	clr	%r3,%r4
	jle	.L615
	chi	%r1,43
	je	.L616
	chi	%r1,45
	jne	.L637
	ic	%r11,1(%r2)
	lhi	%r5,255
	ahi	%r2,1
	nr	%r5,%r11
	lhi	%r9,9
	ahi	%r5,-48
	lr	%r3,%r2
	clr	%r5,%r9
	jh	.L626
	lhi	%r10,1
.L619:
	lhi	%r12,0
	lhi	%r13,0
.L623:
	ahi	%r3,1
	lhi	%r0,255
	lhi	%r2,255
	nr	%r0,%r11
	lhi	%r1,0
	ahi	%r0,-48
	ic	%r11,0(%r3)
	srda	%r0,32
	nr	%r2,%r11
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,2
	alr	%r5,%r13
	alcr	%r4,%r12
	sldl	%r4,1
	lr	%r12,%r4
	lr	%r13,%r5
	slr	%r13,%r1
	slbr	%r12,%r0
	lhi	%r9,9
	ahi	%r2,-48
	clr	%r2,%r9
	jle	.L623
	ltr	%r10,%r10
	jne	.L614
	slr	%r1,%r5
	slbr	%r0,%r4
	lr	%r13,%r1
	lr	%r12,%r0
.L614:
	lr	%r2,%r12
	lr	%r3,%r13
	lm	%r9,%r15,108(%r15)
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
.L615:
	.cfi_restore_state
	ahi	%r2,1
	j	.L621
.L637:
	ahi	%r1,-48
	lhi	%r10,9
	clr	%r1,%r10
	jh	.L626
	lr	%r3,%r2
	lhi	%r10,0
	j	.L619
.L616:
	ic	%r11,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r11
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r10,0
	clr	%r0,%r2
	jle	.L619
.L626:
	lhi	%r12,0
	lhi	%r13,0
	lr	%r2,%r12
	lr	%r3,%r13
	lm	%r9,%r15,108(%r15)
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
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
	ltr	%r12,%r4
	je	.L640
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	j	.L643
.L653:
	je	.L639
	ahi	%r12,-1
	ar	%r11,%r8
	sr	%r12,%r10
	lr	%r9,%r11
	ltr	%r12,%r12
	je	.L640
.L643:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r8
	lr	%r2,%r7
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L653
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L643
.L640:
	lhi	%r11,0
.L639:
	lr	%r2,%r11
	lm	%r7,%r15,100(%r15)
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
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
.LFB49:
	.cfi_startproc
	stm	%r7,%r15,60(%r15)
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	ltr	%r11,%r4
	je	.L660
.L668:
	lr	%r10,%r11
	sra	%r10,1
	lr	%r12,%r10
	msr	%r12,%r8
	l	%r4,136(%r15)
	lr	%r2,%r7
	ar	%r12,%r9
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L655
	jle	.L658
	ar	%r12,%r8
	ahi	%r11,-1
	lr	%r9,%r12
	sra	%r11,1
	jne	.L668
.L660:
	lhi	%r12,0
.L655:
	lr	%r2,%r12
	lm	%r7,%r15,100(%r15)
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
.L658:
	.cfi_restore_state
	ltr	%r10,%r10
	je	.L660
	lr	%r11,%r10
	j	.L668
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	8
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
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	lr	%r4,%r2
	lr	%r5,%r3
	ltr	%r2,%r2
	jl	.L678
.L675:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L678:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L675
	ahi	%r4,-1
	lr	%r3,%r5
	lr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
	.cfi_startproc
	stm	%r9,%r15,68(%r15)
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
	lr	%r12,%r2
	lr	%r11,%r4
	lr	%r10,%r3
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r2,%r3
	lr	%r5,%r6
	lr	%r3,%r11
	brasl	%r14,__divdi3
	lr	%r4,%r9
	lr	%r5,%r6
	stm	%r2,%r3,0(%r12)
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r2,%r12
	stm	%r4,%r5,8(%r12)
	lm	%r9,%r15,108(%r15)
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
.globl llabs
	.type	llabs, @function
llabs:
.LFB154:
	.cfi_startproc
	lr	%r4,%r2
	lr	%r5,%r3
	ltr	%r2,%r2
	jl	.L691
.L688:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L691:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L688
	ahi	%r4,-1
	lr	%r3,%r5
	lr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE154:
	.size	llabs, .-llabs
	.align	8
.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
	.cfi_startproc
	stm	%r9,%r15,68(%r15)
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
	lr	%r12,%r2
	lr	%r11,%r4
	lr	%r10,%r3
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r2,%r3
	lr	%r5,%r6
	lr	%r3,%r11
	brasl	%r14,__divdi3
	lr	%r4,%r9
	lr	%r5,%r6
	stm	%r2,%r3,0(%r12)
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r2,%r12
	stm	%r4,%r5,8(%r12)
	lm	%r9,%r15,108(%r15)
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
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	j	.L706
.L707:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L706:
	icm	%r1,15,0(%r2)
	jne	.L707
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE57:
	.size	wcschr, .-wcschr
	.align	8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
.LFB58:
	.cfi_startproc
	lr	%r5,%r3
	ahi	%r5,-4
	l	%r4,0(%r3)
	lhi	%r1,4
	l	%r3,0(%r2)
	cr	%r3,%r4
	je	.L710
	j	.L711
.L712:
	l	%r3,0(%r1,%r2)
	ahi	%r1,4
	l	%r4,0(%r1,%r5)
	cr	%r3,%r4
	jne	.L711
.L710:
	ltr	%r3,%r3
	jne	.L712
.L711:
	cr	%r3,%r4
	jl	.L716
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L716:
	lhi	%r2,-1
	br	%r14
	.cfi_endproc
.LFE58:
	.size	wcscmp, .-wcscmp
	.align	8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
.LFB59:
	.cfi_startproc
	lhi	%r1,0
.L721:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L721
	br	%r14
	.cfi_endproc
.LFE59:
	.size	wcscpy, .-wcscpy
	.align	8
.globl wcslen
	.type	wcslen, @function
wcslen:
.LFB60:
	.cfi_startproc
	lr	%r3,%r2
	icm	%r1,15,0(%r2)
	je	.L728
.L727:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L727
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L728:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE60:
	.size	wcslen, .-wcslen
	.align	8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.LFB61:
	.cfi_startproc
	ltr	%r4,%r4
	je	.L738
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L754
.L741:
	srl	%r4,1
.L732:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L734
	ltr	%r0,%r0
	je	.L734
	ahi	%r2,4
	ahi	%r3,4
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L734
	ltr	%r5,%r5
	je	.L734
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L732
.L738:
	lhi	%r2,0
	br	%r14
.L734:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L755
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L754:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L734
	ltr	%r1,%r1
	je	.L734
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L741
	j	.L738
.L755:
	lhi	%r2,-1
	br	%r14
	.cfi_endproc
.LFE61:
	.size	wcsncmp, .-wcsncmp
	.align	8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
.LFB62:
	.cfi_startproc
	ltr	%r4,%r4
	je	.L761
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L768
	chi	%r5,1
	je	.L779
	chi	%r5,2
	je	.L780
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L780:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L779:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L761
.L768:
	srl	%r1,2
	lr	%r0,%r1
.L758:
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
	brct	%r0,.L758
.L761:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE62:
	.size	wmemchr, .-wmemchr
	.align	8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
.LFB63:
	.cfi_startproc
	ltr	%r4,%r4
	je	.L800
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L807
	chi	%r1,1
	je	.L818
	chi	%r1,2
	je	.L819
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L826
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L819:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L826
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L818:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L826
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L800
.L807:
	srl	%r5,2
.L794:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L826
	ahi	%r3,4
	l	%r1,4(%r2)
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L826
	ahi	%r3,4
	l	%r1,8(%r2)
	c	%r1,0(%r3)
	jne	.L826
	lr	%r3,%r4
	ahi	%r3,8
	l	%r1,12(%r2)
	c	%r1,8(%r4)
	jne	.L826
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L794
.L800:
	lhi	%r2,0
	br	%r14
.L826:
	c	%r1,0(%r3)
	jl	.L830
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L830:
	lhi	%r2,-1
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	stm	%r12,%r15,80(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-16
	.cfi_def_cfa_offset 112
	lr	%r12,%r2
	ltr	%r4,%r4
	je	.L833
	sll	%r4,2
	brasl	%r14,memcpy
.L833:
	lr	%r2,%r12
	lm	%r12,%r15,96(%r15)
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
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	stm	%r11,%r13,84(%r15)
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L896
	cr	%r2,%r3
	je	.L847
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L895
	ltr	%r4,%r4
	je	.L847
	l	%r4,.L897-.L896(%r13)
	nr	%r4,%r1
	lhi	%r5,3
	ahi	%r4,1
	sll	%r1,2
	nr	%r5,%r4
	je	.L857
	chi	%r5,1
	je	.L873
	chi	%r5,2
	je	.L874
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	ahi	%r1,-4
.L874:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
.L873:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L847
.L857:
	srl	%r4,2
	chi	%r4,2
	jle	.L892
	ahi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
.L844:
	lr	%r5,%r1
	ahi	%r5,-12
	lr	%r12,%r1
	ahi	%r12,-8
	lr	%r11,%r1
	ahi	%r11,-4
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r1,-16
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	brct	%r4,.L844
	lr	%r5,%r1
	ahi	%r5,-12
	ahi	%r12,-16
	ahi	%r1,-4
	lr	%r11,%r1
	l	%r1,0(%r1,%r3)
	st	%r1,0(%r11,%r2)
	l	%r1,0(%r12,%r3)
	st	%r1,0(%r12,%r2)
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
.L847:
	lm	%r11,%r13,84(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L895:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L847
	lhi	%r11,3
	nr	%r11,%r4
	je	.L866
	chi	%r11,1
	je	.L871
	chi	%r11,2
	je	.L872
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L872:
	l	%r12,0(%r5,%r3)
	ahi	%r1,-1
	st	%r12,0(%r5,%r2)
	ahi	%r5,4
.L871:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L847
.L866:
	srl	%r4,2
	chi	%r4,2
	jle	.L893
	ahi	%r4,-1
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
.L842:
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	ahi	%r5,16
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	brct	%r4,.L842
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	j	.L847
.L893:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L893
	j	.L847
.L892:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	lr	%r11,%r1
	ahi	%r11,-4
	l	%r12,0(%r11,%r3)
	st	%r12,0(%r11,%r2)
	lr	%r11,%r1
	ahi	%r11,-8
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	lr	%r5,%r1
	ahi	%r5,-12
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	ahi	%r1,-16
	brct	%r4,.L892
	j	.L847
	.section	.rodata
	.align	8
.L896:
.L897:
	.long	1073741823
	.align	2
.text
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	8
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
	je	.L909
	chi	%r0,1
	je	.L913
	chi	%r0,2
	je	.L914
	lr	%r5,%r4
	st	%r3,0(%r2)
	ahi	%r5,-2
	ahi	%r1,4
.L914:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L913:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L909:
	srl	%r4,2
.L900:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L900
	br	%r14
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	jhe	.L924
	ltr	%r4,%r4
	je	.L923
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r11,%r4
	ahi	%r11,-1
	lhi	%r12,3
	lr	%r1,%r4
	nr	%r12,%r4
	je	.L955
	chi	%r12,1
	je	.L977
	chi	%r12,2
	jne	.L1020
.L978:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L977:
	ic	%r11,0(%r4,%r2)
	stc	%r11,0(%r4,%r3)
	brct	%r4,.L955
.L923:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L924:
	.cfi_restore_state
	je	.L923
	ltr	%r4,%r4
	je	.L923
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L934
	lr	%r0,%r3
	lhi	%r11,3
	or	%r0,%r2
	nr	%r0,%r11
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L934
	lr	%r12,%r2
	ahi	%r12,1
	lr	%r1,%r3
	lhi	%r5,2
	sr	%r1,%r12
	clr	%r1,%r5
	jle	.L934
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r11,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r11,%r5
	je	.L973
	chi	%r11,1
	je	.L979
	chi	%r11,2
	je	.L980
	l	%r12,0(%r2)
	lhi	%r1,4
	st	%r12,0(%r3)
.L980:
	l	%r11,0(%r1,%r2)
	st	%r11,0(%r1,%r3)
	ahi	%r1,4
.L979:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1002
.L973:
	srl	%r5,2
	chi	%r5,2
	jle	.L1017
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
.L928:
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	brct	%r5,.L928
	l	%r5,4(%r1,%r2)
	st	%r5,4(%r1,%r3)
	l	%r5,8(%r1,%r2)
	st	%r5,8(%r1,%r3)
	l	%r5,12(%r1,%r2)
	st	%r5,12(%r1,%r3)
	ahi	%r1,16
.L1002:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L923
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L923
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L923
	mvc	2(1,%r3),2(%r2)
	j	.L923
.L955:
	srl	%r1,2
	chi	%r1,2
	jle	.L1015
	ahi	%r1,-1
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
.L926:
	lr	%r5,%r4
	ahi	%r5,-3
	lr	%r12,%r4
	ahi	%r12,-2
	lr	%r11,%r4
	ahi	%r11,-1
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r4,-4
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r1,.L926
	lr	%r5,%r4
	ahi	%r5,-3
	ahi	%r12,-4
	ahi	%r4,-1
	ic	%r1,0(%r4,%r2)
	stc	%r1,0(%r4,%r3)
	ic	%r1,0(%r12,%r2)
	stc	%r1,0(%r12,%r3)
	ic	%r1,0(%r5,%r2)
	stc	%r1,0(%r5,%r3)
	j	.L923
.L1015:
	ic	%r12,0(%r4,%r2)
	stc	%r12,0(%r4,%r3)
	lr	%r11,%r4
	ahi	%r11,-1
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	lr	%r12,%r4
	ahi	%r12,-2
	ic	%r5,0(%r12,%r2)
	stc	%r5,0(%r12,%r3)
	lr	%r11,%r4
	ahi	%r11,-3
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ahi	%r4,-4
	brct	%r1,.L1015
	j	.L923
.L1020:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	lr	%r4,%r11
	j	.L978
.L1017:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r2)
	st	%r11,4(%r1,%r3)
	l	%r12,8(%r1,%r2)
	st	%r12,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	brct	%r5,.L1017
	j	.L1002
.L934:
	lhi	%r12,3
	lhi	%r1,0
	lr	%r11,%r4
	nr	%r12,%r4
	je	.L964
	chi	%r12,1
	je	.L981
	chi	%r12,2
	je	.L982
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L982:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L981:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L923
.L964:
	lr	%r4,%r11
	srl	%r4,2
	chi	%r4,2
	jle	.L1016
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
.L931:
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	brct	%r4,.L931
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	j	.L923
.L1016:
	ic	%r11,0(%r1,%r2)
	stc	%r11,0(%r1,%r3)
	ic	%r12,1(%r1,%r2)
	stc	%r12,1(%r1,%r3)
	ic	%r0,2(%r1,%r2)
	stc	%r0,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L1016
	j	.L923
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	8
.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	lr	%r0,%r2
	lcr	%r2,%r4
	lr	%r1,%r3
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lr	%r12,%r0
	lr	%r13,%r3
	sldl	%r12,0(%r4)
	srdl	%r0,0(%r2)
	lr	%r2,%r0
	lr	%r3,%r1
	or	%r2,%r12
	or	%r3,%r13
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE68:
	.size	rotl64, .-rotl64
	.align	8
.globl rotr64
	.type	rotr64, @function
rotr64:
.LFB69:
	.cfi_startproc
	lr	%r0,%r2
	lcr	%r2,%r4
	lr	%r1,%r3
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lr	%r12,%r0
	lr	%r13,%r3
	srdl	%r12,0(%r4)
	sldl	%r0,0(%r2)
	lr	%r2,%r0
	lr	%r3,%r1
	or	%r2,%r12
	or	%r3,%r13
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE69:
	.size	rotr64, .-rotr64
	.align	8
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
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	larl	%r5,.L1038
	lr	%r0,%r2
	lhi	%r1,15
	nr	%r3,%r1
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1039-.L1038(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1038:
.L1039:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE74:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	larl	%r5,.L1042
	lr	%r0,%r2
	lhi	%r1,15
	nr	%r3,%r1
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1043-.L1042(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1042:
.L1043:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE75:
	.size	rotr16, .-rotr16
	.align	8
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
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
.LFB78:
	.cfi_startproc
	larl	%r5,.L1050
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L1051-.L1050(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1050:
.L1051:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE78:
	.size	bswap_16, .-bswap_16
	.align	8
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
.globl ffs
	.type	ffs, @function
ffs:
.LFB81:
	.cfi_startproc
	lr	%r1,%r2
	tml	%r2,1
	jne	.L1059
	tml	%r2,2
	jne	.L1060
	tml	%r2,4
	jne	.L1061
	tml	%r2,8
	jne	.L1062
	tml	%r2,16
	jne	.L1063
	tml	%r2,32
	jne	.L1064
	tml	%r2,64
	jne	.L1065
	tml	%r2,128
	jne	.L1066
	tml	%r2,256
	jne	.L1067
	tml	%r2,512
	jne	.L1068
	tml	%r2,1024
	jne	.L1069
	tml	%r2,2048
	jne	.L1070
	tml	%r2,4096
	jne	.L1071
	tml	%r2,8192
	jne	.L1072
	tml	%r2,16384
	jne	.L1073
	tml	%r2,32768
	jne	.L1074
	tmh	%r2,1
	jne	.L1075
	tmh	%r2,2
	jne	.L1076
	tmh	%r2,4
	jne	.L1077
	tmh	%r2,8
	jne	.L1078
	tmh	%r2,16
	jne	.L1079
	tmh	%r2,32
	jne	.L1080
	tmh	%r2,64
	jne	.L1081
	tmh	%r2,128
	jne	.L1082
	tmh	%r2,256
	jne	.L1083
	tmh	%r2,512
	jne	.L1084
	tmh	%r2,1024
	jne	.L1085
	tmh	%r2,2048
	jne	.L1086
	tmh	%r2,4096
	jne	.L1087
	tmh	%r2,8192
	jne	.L1088
	tmh	%r2,16384
	jne	.L1089
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L1059:
	lhi	%r2,1
	br	%r14
.L1060:
	lhi	%r2,2
	br	%r14
.L1071:
	lhi	%r2,13
	br	%r14
.L1087:
	lhi	%r2,29
	br	%r14
.L1061:
	lhi	%r2,3
	br	%r14
.L1062:
	lhi	%r2,4
	br	%r14
.L1063:
	lhi	%r2,5
	br	%r14
.L1064:
	lhi	%r2,6
	br	%r14
.L1065:
	lhi	%r2,7
	br	%r14
.L1066:
	lhi	%r2,8
	br	%r14
.L1067:
	lhi	%r2,9
	br	%r14
.L1068:
	lhi	%r2,10
	br	%r14
.L1069:
	lhi	%r2,11
	br	%r14
.L1070:
	lhi	%r2,12
	br	%r14
.L1072:
	lhi	%r2,14
	br	%r14
.L1073:
	lhi	%r2,15
	br	%r14
.L1074:
	lhi	%r2,16
	br	%r14
.L1075:
	lhi	%r2,17
	br	%r14
.L1076:
	lhi	%r2,18
	br	%r14
.L1077:
	lhi	%r2,19
	br	%r14
.L1078:
	lhi	%r2,20
	br	%r14
.L1079:
	lhi	%r2,21
	br	%r14
.L1080:
	lhi	%r2,22
	br	%r14
.L1081:
	lhi	%r2,23
	br	%r14
.L1082:
	lhi	%r2,24
	br	%r14
.L1083:
	lhi	%r2,25
	br	%r14
.L1084:
	lhi	%r2,26
	br	%r14
.L1085:
	lhi	%r2,27
	br	%r14
.L1086:
	lhi	%r2,28
	br	%r14
.L1088:
	lhi	%r2,30
	br	%r14
.L1089:
	lhi	%r2,31
	br	%r14
	.cfi_endproc
.LFE81:
	.size	ffs, .-ffs
	.align	8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
.LFB82:
	.cfi_startproc
	ltr	%r1,%r2
	je	.L1096
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1095:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L1095
	br	%r14
.L1096:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE82:
	.size	libiberty_ffs, .-libiberty_ffs
	.align	8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
.LFB83:
	.cfi_startproc
	larl	%r5,.L1106
	keb	%f0,.L1107-.L1106(%r5)
	lhi	%r2,1
	blr	%r14
	keb	%f0,.L1108-.L1106(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1106:
.L1108:
	.long	2139095039
.L1107:
	.long	-8388609
	.align	2
.text
	.cfi_endproc
.LFE83:
	.size	gl_isinff, .-gl_isinff
	.align	8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
.LFB84:
	.cfi_startproc
	larl	%r5,.L1114
	kdb	%f0,.L1115-.L1114(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L1116-.L1114(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1114:
.L1116:
	.long	2146435071
	.long	-1
.L1115:
	.long	-1048577
	.long	-1
	.align	2
.text
	.cfi_endproc
.LFE84:
	.size	gl_isinfd, .-gl_isinfd
	.align	8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
.LFB85:
	.cfi_startproc
	larl	%r5,.L1122
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L1123-.L1122(%r5)
	ld	%f3,.L1123-.L1122+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L1124-.L1122(%r5)
	ld	%f3,.L1124-.L1122+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1122:
.L1124:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1123:
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
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
.LFB87:
	.cfi_startproc
	larl	%r5,.L1143
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1141
	le	%f1,.L1144-.L1143(%r5)
.L1129:
	tml	%r2,1
	je	.L1130
.L1131:
	meebr	%f0,%f1
.L1130:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L1131
.L1142:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1131
	j	.L1142
.L1141:
	le	%f1,.L1145-.L1143(%r5)
	j	.L1129
	.section	.rodata
	.align	8
.L1143:
.L1145:
	.long	1056964608
.L1144:
	.long	1073741824
	.align	2
.text
	.cfi_endproc
.LFE87:
	.size	ldexpf, .-ldexpf
	.align	8
.globl ldexp
	.type	ldexp, @function
ldexp:
.LFB88:
	.cfi_startproc
	larl	%r5,.L1162
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1160
	ld	%f1,.L1163-.L1162(%r5)
.L1148:
	tml	%r2,1
	je	.L1149
.L1150:
	mdbr	%f0,%f1
.L1149:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L1150
.L1161:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1150
	j	.L1161
.L1160:
	ld	%f1,.L1164-.L1162(%r5)
	j	.L1148
	.section	.rodata
	.align	8
.L1162:
.L1164:
	.long	1071644672
	.long	0
.L1163:
	.long	1073741824
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE88:
	.size	ldexp, .-ldexp
	.align	8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
.LFB89:
	.cfi_startproc
	larl	%r5,.L1181
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1166
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1166
	ltr	%r4,%r4
	jl	.L1179
	ld	%f0,.L1182-.L1181(%r5)
	ld	%f2,.L1182-.L1181+8(%r5)
.L1167:
	tml	%r4,1
	je	.L1168
.L1169:
	mxbr	%f1,%f0
.L1168:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1166
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L1169
.L1180:
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	mxbr	%f0,%f0
	sra	%r4,1
	tml	%r4,1
	jne	.L1169
	j	.L1180
.L1166:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1179:
	ld	%f0,.L1183-.L1181(%r5)
	ld	%f2,.L1183-.L1181+8(%r5)
	j	.L1167
	.section	.rodata
	.align	8
.L1181:
.L1183:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1182:
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
.globl memxor
	.type	memxor, @function
memxor:
.LFB90:
	.cfi_startproc
	ltr	%r4,%r4
	ber	%r14
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1192
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1192
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1227
	chi	%r12,1
	je	.L1231
	chi	%r12,2
	je	.L1232
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1232:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L1231:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1255
.L1227:
	srl	%r5,2
	chi	%r5,2
	jle	.L1265
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L1187:
	l	%r0,4(%r1,%r2)
	x	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r2)
	x	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r2)
	x	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	brct	%r5,.L1187
	l	%r5,4(%r1,%r2)
	x	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r2)
	x	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r2)
	x	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	ahi	%r1,16
.L1255:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L1185
	xc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L1185
	xc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L1185
	xc	2(1,%r5),2(%r3)
.L1185:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1265:
	.cfi_restore_state
	l	%r0,0(%r1,%r2)
	l	%r12,4(%r1,%r2)
	x	%r0,0(%r1,%r3)
	x	%r12,4(%r1,%r3)
	st	%r0,0(%r1,%r2)
	st	%r12,4(%r1,%r2)
	l	%r0,8(%r1,%r2)
	l	%r12,12(%r1,%r2)
	x	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	x	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1265
	j	.L1255
.L1192:
	lhi	%r12,7
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r12,%r4
	je	.L1214
	chi	%r12,1
	je	.L1233
	chi	%r12,2
	je	.L1234
	chi	%r12,3
	je	.L1235
	chi	%r12,4
	je	.L1236
	chi	%r12,5
	je	.L1237
	chi	%r12,6
	je	.L1238
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1238:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1237:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1236:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1235:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1234:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1233:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1185
.L1214:
	lr	%r4,%r5
	srl	%r4,3
	chi	%r4,2
	jle	.L1264
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
.L1189:
	ic	%r5,1(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r2)
	ic	%r0,4(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r2)
	ic	%r0,5(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r2)
	ic	%r0,6(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r2)
	ic	%r0,7(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,7(%r1,%r2)
	ahi	%r1,8
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1189
	ic	%r4,1(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	xr	%r4,%r5
	stc	%r4,1(%r1,%r2)
	ic	%r4,2(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	xr	%r4,%r5
	stc	%r4,2(%r1,%r2)
	ic	%r4,3(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	xr	%r4,%r5
	stc	%r4,3(%r1,%r2)
	ic	%r4,4(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	xr	%r4,%r5
	stc	%r4,4(%r1,%r2)
	ic	%r4,5(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	xr	%r4,%r5
	stc	%r4,5(%r1,%r2)
	ic	%r4,6(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	xr	%r4,%r5
	stc	%r4,6(%r1,%r2)
	ic	%r4,7(%r1,%r2)
	ic	%r3,7(%r1,%r3)
	xr	%r4,%r3
	stc	%r4,7(%r1,%r2)
	j	.L1185
.L1264:
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
	brct	%r4,.L1264
	j	.L1185
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	lr	%r1,%r2
	cli	0(%r2),0
	je	.L1272
.L1273:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1273
.L1272:
	ltr	%r4,%r4
	je	.L1275
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1296
.L1284:
	srl	%r4,1
.L1274:
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
	brct	%r4,.L1274
.L1275:
	mvi	0(%r1),0
	br	%r14
.L1296:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1284
	j	.L1275
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	8
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
	je	.L1310
	chi	%r5,1
	je	.L1321
	chi	%r5,2
	je	.L1322
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1322:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1321:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1310:
	srl	%r4,2
.L1299:
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
	brct	%r4,.L1299
	br	%r14
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	icm	%r5,1,0(%r2)
	je	.L1336
.L1342:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1335
.L1334:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1335:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1334
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1342
.L1336:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE93:
	.size	strpbrk, .-strpbrk
	.align	8
.globl strrchr
	.type	strrchr, @function
strrchr:
.LFB94:
	.cfi_startproc
	lr	%r1,%r2
	lhi	%r5,0
	j	.L1347
.L1350:
	lr	%r2,%r1
	ahi	%r1,1
	lr	%r5,%r2
	tml	%r4,255
	ber	%r14
.L1347:
	ic	%r4,0(%r1)
	lhi	%r2,255
	nr	%r2,%r4
	cr	%r2,%r3
	je	.L1350
	ahi	%r1,1
	lr	%r2,%r5
	lr	%r5,%r2
	tml	%r4,255
	jne	.L1347
	br	%r14
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	8
.globl strstr
	.type	strstr, @function
strstr:
.LFB95:
	.cfi_startproc
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	icm	%r10,1,0(%r3)
	je	.L1352
	lr	%r11,%r3
.L1354:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1354
	slr	%r11,%r3
	jhe	.L1352
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1372
.L1375:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1374
.L1372:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1375
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1370
.L1358:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1352
.L1359:
	ahi	%r2,1
	j	.L1372
.L1370:
	lhi	%r8,255
	nr	%r1,%r8
	nr	%r4,%r8
	cr	%r1,%r4
	jne	.L1359
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1376
	icm	%r4,1,1(%r12)
	je	.L1359
	lr	%r12,%r8
	brct	%r9,.L1370
	j	.L1358
.L1374:
	lhi	%r2,0
.L1352:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1376:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1359
	j	.L1352
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	larl	%r5,.L1390
	kdb	%f0,.L1391-.L1390(%r5)
	jl	.L1389
	jnh	.L1382
	kdb	%f2,.L1391-.L1390(%r5)
	jl	.L1381
.L1382:
	br	%r14
.L1389:
	kdb	%f2,.L1391-.L1390(%r5)
	jnh	.L1382
.L1381:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1390:
.L1391:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE96:
	.size	copysign, .-copysign
	.align	8
.globl memmem
	.type	memmem, @function
memmem:
.LFB97:
	.cfi_startproc
	ltr	%r0,%r5
	ber	%r14
	clr	%r3,%r0
	jl	.L1401
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1401
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1398
.L1402:
	lr	%r2,%r5
.L1394:
	clr	%r3,%r2
	jl	.L1403
.L1398:
	lr	%r5,%r2
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1402
	chi	%r0,1
	je	.L1392
.L1397:
	lr	%r12,%r0
	lhi	%r10,3
	ahi	%r12,-1
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1413
	chi	%r10,1
	je	.L1423
	chi	%r10,2
	jne	.L1439
.L1424:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1430
	ahi	%r1,1
.L1423:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1430
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1392
.L1413:
	srl	%r12,2
.L1395:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1430
	ic	%r8,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1430
	ic	%r8,2(%r1,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1430
	ic	%r8,3(%r1,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1430
	ahi	%r1,4
	brct	%r12,.L1395
.L1392:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1439:
	.cfi_restore_state
	lhi	%r1,2
	clc	1(1,%r4),1(%r2)
	je	.L1424
.L1430:
	clr	%r3,%r5
	jl	.L1403
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1394
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1397
.L1403:
	lhi	%r2,0
	lm	%r8,%r12,76(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1401:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	stm	%r11,%r15,76(%r15)
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-24
	.cfi_def_cfa_offset 120
	lr	%r11,%r2
	ltr	%r12,%r4
	je	.L1442
	brasl	%r14,memmove
.L1442:
	lr	%r2,%r11
	ar	%r2,%r12
	lm	%r11,%r15,100(%r15)
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
.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	larl	%r5,.L1475
	kdb	%f0,.L1476-.L1475(%r5)
	jl	.L1471
	kdb	%f0,.L1477-.L1475(%r5)
	jnhe	.L1472
	lhi	%r3,0
.L1451:
	lhi	%r0,0
.L1457:
	mdb	%f0,.L1478-.L1475(%r5)
	ahi	%r0,1
	kdb	%f0,.L1477-.L1475(%r5)
	jhe	.L1457
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1474:
	lcdbr	%f0,%f0
	br	%r14
.L1472:
	kdb	%f0,.L1478-.L1475(%r5)
	jnl	.L1454
	cdb	%f0,.L1476-.L1475(%r5)
	jne	.L1463
.L1454:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1471:
	lcdbr	%f2,%f0
	kdb	%f0,.L1479-.L1475(%r5)
	jnle	.L1473
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1451
.L1473:
	kdb	%f0,.L1480-.L1475(%r5)
	jnh	.L1454
	lhi	%r3,1
.L1452:
	ldr	%f0,%f2
	lhi	%r0,0
.L1459:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1478-.L1475(%r5)
	jl	.L1459
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1474
	br	%r14
.L1463:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1452
	.section	.rodata
	.align	8
.L1475:
.L1480:
	.long	-1075838976
	.long	0
.L1479:
	.long	-1074790400
	.long	0
.L1478:
	.long	1071644672
	.long	0
.L1477:
	.long	1072693248
	.long	0
.L1476:
	.long	0
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE99:
	.size	frexp, .-frexp
	.align	8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
.LFB100:
	.cfi_startproc
	lr	%r0,%r2
	or	%r2,%r3
	je	.L1485
	stm	%r7,%r13,68(%r15)
	.cfi_offset 7, -28
	.cfi_offset 8, -24
	.cfi_offset 9, -20
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lr	%r1,%r3
	lr	%r12,%r4
	lr	%r13,%r5
	lhi	%r4,0
	lhi	%r5,0
.L1484:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1487
	ahi	%r2,-1
.L1487:
	lr	%r8,%r2
	nr	%r8,%r12
	lr	%r9,%r3
	nr	%r9,%r13
	alr	%r5,%r9
	alcr	%r4,%r8
	srdl	%r0,1
	sldl	%r12,1
	lr	%r7,%r0
	or	%r7,%r1
	jne	.L1484
	lr	%r2,%r4
	lr	%r3,%r5
	lm	%r7,%r13,68(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L1485:
	lhi	%r2,0
	lhi	%r3,0
	br	%r14
	.cfi_endproc
.LFE100:
	.size	__muldi3, .-__muldi3
	.align	8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	lr	%r0,%r2
	clr	%r3,%r2
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	jhe	.L1738
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L1735
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L1498
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L1735
.L1500:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1498
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L1703
	lr	%r2,%r0
.L1499:
	ltr	%r4,%r4
	jne	.L1493
	lr	%r2,%r11
.L1493:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1703:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1735
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1498
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1735
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1498
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L1500
.L1735:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L1630
	lr	%r2,%r0
.L1630:
	clr	%r0,%r3
	jl	.L1631
	lr	%r11,%r12
.L1632:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L1633
	j	.L1499
.L1498:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L1636
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L1503
	lr	%r2,%r0
.L1503:
	clr	%r0,%r1
	jl	.L1504
	lr	%r11,%r5
.L1505:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L1633:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L1507
	lr	%r1,%r2
.L1507:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L1509
	lhi	%r0,0
.L1509:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1511
	lr	%r1,%r2
.L1511:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1513
	lhi	%r5,0
.L1513:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1515
	lr	%r1,%r2
.L1515:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1517
	lhi	%r5,0
.L1517:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1519
	lr	%r1,%r2
.L1519:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1521
	lhi	%r5,0
.L1521:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1523
	lr	%r1,%r2
.L1523:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1525
	lhi	%r5,0
.L1525:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1527
	lr	%r1,%r2
.L1527:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1529
	lhi	%r5,0
.L1529:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1739
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1740
.L1533:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1741
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1742
.L1537:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1743
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1744
.L1541:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1745
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1746
.L1545:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1747
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1748
.L1549:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1749
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1553
.L1761:
	lhi	%r5,0
.L1553:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1555
	lr	%r1,%r2
.L1555:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1557
	lhi	%r5,0
.L1557:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1559
	lr	%r1,%r2
.L1559:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1561
	lhi	%r5,0
.L1561:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1563
	lr	%r1,%r2
.L1563:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1565
	lhi	%r5,0
.L1565:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1567
	lr	%r1,%r2
.L1567:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1569
	lhi	%r5,0
.L1569:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1571
	lr	%r1,%r2
.L1571:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1573
	lhi	%r5,0
.L1573:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1575
	lr	%r1,%r2
.L1575:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1577
	lhi	%r5,0
.L1577:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1750
.L1579:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1751
.L1581:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1752
.L1583:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1753
.L1585:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1754
.L1587:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1755
.L1589:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1756
.L1591:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1757
.L1593:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1758
.L1595:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1759
.L1597:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1760
.L1599:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1601
	lhi	%r5,0
.L1601:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1603
	lr	%r1,%r2
.L1603:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1605
	lhi	%r5,0
.L1605:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1607
	lr	%r1,%r2
.L1607:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1609
	lhi	%r5,0
.L1609:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1611
	lr	%r1,%r2
.L1611:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1613
	lhi	%r5,0
.L1613:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1615
	lr	%r1,%r2
.L1615:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1617
	lhi	%r5,0
.L1617:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1619
	lr	%r1,%r2
.L1619:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1621
	lhi	%r5,0
.L1621:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L1499
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1623
	lr	%r1,%r2
.L1623:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1625
	lhi	%r5,0
.L1625:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L1499
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L1627
	lr	%r2,%r1
.L1627:
	or	%r11,%r3
	j	.L1499
.L1504:
	lhi	%r11,0
	j	.L1505
.L1740:
	lhi	%r5,0
	j	.L1533
.L1739:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1533
	j	.L1740
.L1742:
	lhi	%r5,0
	j	.L1537
.L1741:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1537
	j	.L1742
.L1631:
	lhi	%r11,0
	j	.L1632
.L1744:
	lhi	%r5,0
	j	.L1541
.L1743:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1541
	j	.L1744
.L1746:
	lhi	%r5,0
	j	.L1545
.L1745:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1545
	j	.L1746
.L1748:
	lhi	%r5,0
	j	.L1549
.L1747:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1549
	j	.L1748
.L1749:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1553
	j	.L1761
.L1751:
	lhi	%r5,0
	j	.L1581
.L1750:
	lr	%r1,%r2
	j	.L1579
.L1753:
	lhi	%r5,0
	j	.L1585
.L1752:
	lr	%r1,%r2
	j	.L1583
.L1755:
	lhi	%r5,0
	j	.L1589
.L1754:
	lr	%r1,%r2
	j	.L1587
.L1757:
	lhi	%r5,0
	j	.L1593
.L1756:
	lr	%r1,%r2
	j	.L1591
.L1759:
	lhi	%r5,0
	j	.L1597
.L1758:
	lr	%r1,%r2
	j	.L1595
.L1760:
	lr	%r1,%r2
	j	.L1599
.L1738:
	sr	%r2,%r3
	cr	%r3,%r0
	je	.L1496
	lr	%r2,%r0
.L1496:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L1499
.L1636:
	lhi	%r11,0
	j	.L1499
	.cfi_endproc
.LFE101:
	.size	udivmodsi4, .-udivmodsi4
	.align	8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
.LFB102:
	.cfi_startproc
	ltr	%r2,%r2
	je	.L1765
	stm	%r14,%r15,88(%r15)
	sll	%r2,8
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__clzsi2
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	ahi	%r2,-1
	br	%r14
.L1765:
	lhi	%r2,7
	br	%r14
	.cfi_endproc
.LFE102:
	.size	__clrsbqi2, .-__clrsbqi2
	.align	8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
.LFB103:
	.cfi_startproc
	lr	%r4,%r2
	lr	%r0,%r2
	lr	%r1,%r3
	lr	%r5,%r3
	srda	%r0,63
	xr	%r2,%r0
	xr	%r3,%r1
	cr	%r4,%r0
	je	.L1780
.L1775:
	stm	%r14,%r15,88(%r15)
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__clzdi2
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	ahi	%r2,-1
	br	%r14
.L1780:
	cr	%r5,%r1
	jne	.L1775
	lhi	%r2,63
	br	%r14
	.cfi_endproc
.LFE103:
	.size	__clrsbdi2, .-__clrsbdi2
	.align	8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
.LFB104:
	.cfi_startproc
	ltr	%r1,%r2
	je	.L1785
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
.L1785:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lhi	%r12,-8
	nr	%r12,%r4
	lr	%r1,%r4
	clr	%r2,%r3
	srl	%r1,3
	jl	.L1881
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1987
.L1881:
	ltr	%r1,%r1
	je	.L1988
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	lr	%r8,%r1
	srl	%r5,3
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L1923
	chi	%r11,1
	je	.L1939
	chi	%r11,2
	je	.L1940
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1940:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r9,0(%r1,%r2)
	st	%r10,4(%r1,%r2)
	ahi	%r1,8
.L1939:
	l	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r0,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r8
	je	.L1967
.L1923:
	srl	%r5,2
.L1884:
	l	%r8,0(%r1,%r3)
	l	%r9,4(%r1,%r3)
	st	%r8,0(%r1,%r2)
	st	%r9,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	l	%r0,12(%r1,%r3)
	st	%r10,8(%r1,%r2)
	st	%r0,12(%r1,%r2)
	l	%r8,16(%r1,%r3)
	l	%r11,20(%r1,%r3)
	st	%r8,16(%r1,%r2)
	st	%r11,20(%r1,%r2)
	l	%r9,24(%r1,%r3)
	l	%r10,28(%r1,%r3)
	st	%r9,24(%r1,%r2)
	st	%r10,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L1884
.L1967:
	clr	%r4,%r12
	jle	.L1877
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1941
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
	jle	.L1941
	lr	%r8,%r10
	lhi	%r5,3
	or	%r8,%r11
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1941
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1914
	chi	%r8,1
	je	.L1942
	chi	%r8,2
	jne	.L1989
.L1943:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1942:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1966
.L1914:
	srl	%r5,2
	chi	%r5,2
	jle	.L1983
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L1887:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L1887
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L1966:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1877
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1877
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1877
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1877:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1987:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1877
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1932
	chi	%r0,1
	je	.L1937
	chi	%r0,2
	je	.L1938
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1938:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L1937:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1877
.L1932:
	srl	%r4,2
	chi	%r4,2
	jle	.L1984
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1882:
	lr	%r5,%r1
	ahi	%r5,-3
	lr	%r12,%r1
	ahi	%r12,-2
	lr	%r11,%r1
	ahi	%r11,-1
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1882
	lr	%r5,%r1
	ahi	%r5,-3
	ahi	%r12,-4
	ahi	%r1,-1
	lr	%r11,%r1
	ic	%r1,0(%r1,%r3)
	stc	%r1,0(%r11,%r2)
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	j	.L1877
.L1983:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1983
	j	.L1966
.L1989:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1943
.L1984:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	lr	%r12,%r1
	ahi	%r12,-1
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	lr	%r8,%r1
	ahi	%r8,-2
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	lr	%r9,%r1
	ahi	%r9,-3
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r1,-4
	brct	%r4,.L1984
	j	.L1877
.L1988:
	ltr	%r4,%r4
	je	.L1877
.L1941:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1905
	chi	%r5,1
	je	.L1944
	chi	%r5,2
	jne	.L1990
.L1945:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1944:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1877
.L1905:
	srl	%r1,2
	chi	%r1,2
	jle	.L1982
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L1889:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L1889
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L1877
.L1982:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1982
	j	.L1877
.L1990:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1945
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	lr	%r0,%r4
	clr	%r2,%r3
	srl	%r0,1
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	jl	.L1996
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L2081
.L1996:
	ltr	%r0,%r0
	je	.L1995
	lr	%r1,%r0
	lhi	%r5,8
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1999
	lr	%r11,%r3
	lhi	%r12,3
	or	%r11,%r2
	nr	%r11,%r12
	ahi	%r11,-1
	ltr	%r11,%r11
	jhe	.L1999
	lr	%r10,%r3
	ahi	%r10,2
	cr	%r2,%r10
	je	.L1999
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
	je	.L2029
	chi	%r10,1
	je	.L2045
	chi	%r10,2
	jne	.L2082
.L2046:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L2045:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L2064
.L2029:
	srl	%r5,2
	chi	%r5,2
	jle	.L2078
	ahi	%r5,-1
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
.L2000:
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	brct	%r5,.L2000
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2064:
	sll	%r11,1
	cr	%r0,%r11
	je	.L1995
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L1995:
	tml	%r4,1
	je	.L1992
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1992:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2081:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1992
	lhi	%r5,3
	nr	%r5,%r4
	je	.L2038
	chi	%r5,1
	je	.L2043
	chi	%r5,2
	je	.L2044
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2044:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L2043:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1992
.L2038:
	srl	%r4,2
	chi	%r4,2
	jle	.L2079
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1997:
	lr	%r5,%r1
	ahi	%r5,-3
	lr	%r12,%r1
	ahi	%r12,-2
	lr	%r11,%r1
	ahi	%r11,-1
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1997
	lr	%r5,%r1
	ahi	%r5,-3
	ahi	%r12,-4
	ahi	%r1,-1
	lr	%r11,%r1
	ic	%r1,0(%r1,%r3)
	stc	%r1,0(%r11,%r2)
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	j	.L1992
.L2078:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2078
	j	.L2064
.L2082:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L2046
.L2079:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	lr	%r10,%r1
	ahi	%r10,-1
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	lr	%r11,%r1
	ahi	%r11,-2
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	lr	%r12,%r1
	ahi	%r12,-3
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r1,-4
	brct	%r4,.L2079
	j	.L1992
.L1999:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r11,3
	srl	%r5,1
	lhi	%r1,0
	ahi	%r5,1
	nr	%r11,%r5
	je	.L2020
	chi	%r11,1
	je	.L2047
	chi	%r11,2
	jne	.L2083
.L2048:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L2047:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1995
.L2020:
	srl	%r5,2
	chi	%r5,2
	jle	.L2077
	ahi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2002:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	ahi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brct	%r5,.L2002
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L1995
.L2077:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r11,6(%r1,%r3)
	sth	%r11,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L2077
	j	.L1995
.L2083:
	lh	%r12,0(%r3)
	lhi	%r1,2
	sth	%r12,0(%r2)
	j	.L2048
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lhi	%r12,-4
	nr	%r12,%r4
	lr	%r1,%r4
	clr	%r2,%r3
	srl	%r1,2
	jl	.L2089
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2198
.L2089:
	ltr	%r1,%r1
	je	.L2199
	sll	%r1,2
	lr	%r5,%r1
	ahi	%r5,-4
	lr	%r8,%r1
	srl	%r5,2
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L2131
	chi	%r11,1
	je	.L2147
	chi	%r11,2
	je	.L2148
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L2148:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L2147:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r8
	je	.L2175
.L2131:
	srl	%r5,2
	chi	%r5,2
	jle	.L2195
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L2092:
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	brct	%r5,.L2092
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2175:
	clr	%r4,%r12
	jle	.L2085
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L2149
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
	jle	.L2149
	lr	%r9,%r10
	lhi	%r5,3
	or	%r9,%r11
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L2149
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L2122
	chi	%r8,1
	je	.L2150
	chi	%r8,2
	jne	.L2200
.L2151:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L2150:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L2174
.L2122:
	srl	%r5,2
	chi	%r5,2
	jle	.L2194
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L2095:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L2095
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L2174:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L2085
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L2085
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L2085
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2085:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2198:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2085
	lhi	%r0,3
	nr	%r0,%r4
	je	.L2140
	chi	%r0,1
	je	.L2145
	chi	%r0,2
	je	.L2146
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2146:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L2145:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2085
.L2140:
	srl	%r4,2
	chi	%r4,2
	jle	.L2196
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2090:
	lr	%r5,%r1
	ahi	%r5,-3
	lr	%r12,%r1
	ahi	%r12,-2
	lr	%r11,%r1
	ahi	%r11,-1
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-4
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2090
	lr	%r5,%r1
	ahi	%r5,-3
	ahi	%r12,-4
	ahi	%r1,-1
	lr	%r11,%r1
	ic	%r1,0(%r1,%r3)
	stc	%r1,0(%r11,%r2)
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	ic	%r1,0(%r5,%r3)
	stc	%r1,0(%r5,%r2)
	j	.L2085
.L2195:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2195
	j	.L2175
.L2194:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L2194
	j	.L2174
.L2200:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L2151
.L2196:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	lr	%r12,%r1
	ahi	%r12,-1
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	lr	%r8,%r1
	ahi	%r8,-2
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	lr	%r9,%r1
	ahi	%r9,-3
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r1,-4
	brct	%r4,.L2196
	j	.L2085
.L2199:
	ltr	%r4,%r4
	je	.L2085
.L2149:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L2113
	chi	%r5,1
	je	.L2152
	chi	%r5,2
	jne	.L2201
.L2153:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L2152:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L2085
.L2113:
	srl	%r1,2
	chi	%r1,2
	jle	.L2193
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L2097:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L2097
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L2085
.L2193:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L2193
	j	.L2085
.L2201:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L2153
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	8
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
.globl __uitod
	.type	__uitod, @function
__uitod:
.LFB109:
	.cfi_startproc
	larl	%r5,.L2208
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L2209-.L2208(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2208:
.L2209:
	.long	1106247680
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE109:
	.size	__uitod, .-__uitod
	.align	8
.globl __uitof
	.type	__uitof, @function
__uitof:
.LFB110:
	.cfi_startproc
	larl	%r5,.L2213
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jhe	.L2211
	adb	%f0,.L2214-.L2213(%r5)
.L2211:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2213:
.L2214:
	.long	1106247680
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE110:
	.size	__uitof, .-__uitof
	.align	8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
.LFB111:
	.cfi_startproc
	stm	%r14,%r15,88(%r15)
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__floatundidf
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE111:
	.size	__ulltod, .-__ulltod
	.align	8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
.LFB112:
	.cfi_startproc
	stm	%r14,%r15,88(%r15)
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__floatundisf
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.align	8
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
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
.LFB114:
	.cfi_startproc
	lr	%r1,%r2
	sra	%r2,15
	ltr	%r2,%r2
	jne	.L2226
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2227
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2228
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2229
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2230
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2231
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2232
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2233
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2234
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2235
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2236
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2237
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2238
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2239
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2226:
	lhi	%r2,0
	br	%r14
.L2237:
	lhi	%r2,12
	br	%r14
.L2227:
	lhi	%r2,2
	br	%r14
.L2228:
	lhi	%r2,3
	br	%r14
.L2229:
	lhi	%r2,4
	br	%r14
.L2230:
	lhi	%r2,5
	br	%r14
.L2231:
	lhi	%r2,6
	br	%r14
.L2232:
	lhi	%r2,7
	br	%r14
.L2233:
	lhi	%r2,8
	br	%r14
.L2234:
	lhi	%r2,9
	br	%r14
.L2235:
	lhi	%r2,10
	br	%r14
.L2236:
	lhi	%r2,11
	br	%r14
.L2238:
	lhi	%r2,13
	br	%r14
.L2239:
	lhi	%r2,14
	br	%r14
	.cfi_endproc
.LFE114:
	.size	__clzhi2, .-__clzhi2
	.align	8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
.LFB115:
	.cfi_startproc
	tml	%r2,1
	jne	.L2246
	tml	%r2,2
	jne	.L2247
	tml	%r2,4
	jne	.L2248
	tml	%r2,8
	jne	.L2249
	tml	%r2,16
	jne	.L2250
	tml	%r2,32
	jne	.L2251
	tml	%r2,64
	jne	.L2252
	tml	%r2,128
	jne	.L2253
	tml	%r2,256
	jne	.L2254
	tml	%r2,512
	jne	.L2255
	tml	%r2,1024
	jne	.L2256
	tml	%r2,2048
	jne	.L2257
	tml	%r2,4096
	jne	.L2258
	tml	%r2,8192
	jne	.L2259
	tml	%r2,16384
	jne	.L2260
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2246:
	lhi	%r2,0
	br	%r14
.L2247:
	lhi	%r2,1
	br	%r14
.L2258:
	lhi	%r2,12
	br	%r14
.L2248:
	lhi	%r2,2
	br	%r14
.L2249:
	lhi	%r2,3
	br	%r14
.L2250:
	lhi	%r2,4
	br	%r14
.L2251:
	lhi	%r2,5
	br	%r14
.L2252:
	lhi	%r2,6
	br	%r14
.L2253:
	lhi	%r2,7
	br	%r14
.L2254:
	lhi	%r2,8
	br	%r14
.L2255:
	lhi	%r2,9
	br	%r14
.L2256:
	lhi	%r2,10
	br	%r14
.L2257:
	lhi	%r2,11
	br	%r14
.L2259:
	lhi	%r2,13
	br	%r14
.L2260:
	lhi	%r2,14
	br	%r14
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	larl	%r5,.L2272
	keb	%f0,.L2273-.L2272(%r5)
	jhe	.L2271
	cfebr	%r2,5,%f0
	br	%r14
.L2271:
	seb	%f0,.L2273-.L2272(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L2274-.L2272(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2272:
.L2273:
	.long	1191182336
.L2274:
	.long	32768
	.align	2
.text
	.cfi_endproc
.LFE116:
	.size	__fixunssfsi, .-__fixunssfsi
	.align	8
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
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB166:
	.cfi_startproc
	ltr	%r1,%r2
	je	.L2282
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
.L2282:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE166:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	ltr	%r1,%r2
	je	.L2378
	ltr	%r3,%r3
	je	.L2378
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
.L2378:
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB162:
	.cfi_startproc
	lr	%r0,%r2
	clr	%r2,%r3
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	jle	.L2715
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L2712
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L2475
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L2712
.L2477:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2475
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L2680
	lr	%r2,%r0
.L2476:
	ltr	%r4,%r4
	jne	.L2470
	lr	%r2,%r11
.L2470:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2680:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2712
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2475
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2712
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2475
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L2477
.L2712:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L2607
	lr	%r2,%r0
.L2607:
	clr	%r0,%r3
	jl	.L2608
	lr	%r11,%r12
.L2609:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L2610
	j	.L2476
.L2475:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L2613
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L2480
	lr	%r2,%r0
.L2480:
	clr	%r0,%r1
	jl	.L2481
	lr	%r11,%r5
.L2482:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L2610:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L2484
	lr	%r1,%r2
.L2484:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L2486
	lhi	%r0,0
.L2486:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2488
	lr	%r1,%r2
.L2488:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2490
	lhi	%r5,0
.L2490:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2492
	lr	%r1,%r2
.L2492:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2494
	lhi	%r5,0
.L2494:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2496
	lr	%r1,%r2
.L2496:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2498
	lhi	%r5,0
.L2498:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2500
	lr	%r1,%r2
.L2500:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2502
	lhi	%r5,0
.L2502:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2504
	lr	%r1,%r2
.L2504:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2506
	lhi	%r5,0
.L2506:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2716
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2717
.L2510:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2718
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2719
.L2514:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2720
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2721
.L2518:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2722
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2723
.L2522:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2724
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2725
.L2526:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2726
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2530
.L2738:
	lhi	%r5,0
.L2530:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2532
	lr	%r1,%r2
.L2532:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2534
	lhi	%r5,0
.L2534:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2536
	lr	%r1,%r2
.L2536:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2538
	lhi	%r5,0
.L2538:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2540
	lr	%r1,%r2
.L2540:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2542
	lhi	%r5,0
.L2542:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2544
	lr	%r1,%r2
.L2544:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2546
	lhi	%r5,0
.L2546:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2548
	lr	%r1,%r2
.L2548:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2550
	lhi	%r5,0
.L2550:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2552
	lr	%r1,%r2
.L2552:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2554
	lhi	%r5,0
.L2554:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2727
.L2556:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2728
.L2558:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2729
.L2560:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2730
.L2562:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2731
.L2564:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2732
.L2566:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2733
.L2568:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2734
.L2570:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2735
.L2572:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2736
.L2574:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2737
.L2576:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2578
	lhi	%r5,0
.L2578:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2580
	lr	%r1,%r2
.L2580:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2582
	lhi	%r5,0
.L2582:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2584
	lr	%r1,%r2
.L2584:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2586
	lhi	%r5,0
.L2586:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2588
	lr	%r1,%r2
.L2588:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2590
	lhi	%r5,0
.L2590:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2592
	lr	%r1,%r2
.L2592:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2594
	lhi	%r5,0
.L2594:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2596
	lr	%r1,%r2
.L2596:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2598
	lhi	%r5,0
.L2598:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L2476
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2600
	lr	%r1,%r2
.L2600:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2602
	lhi	%r5,0
.L2602:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L2476
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L2604
	lr	%r2,%r1
.L2604:
	or	%r11,%r3
	j	.L2476
.L2481:
	lhi	%r11,0
	j	.L2482
.L2717:
	lhi	%r5,0
	j	.L2510
.L2716:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2510
	j	.L2717
.L2719:
	lhi	%r5,0
	j	.L2514
.L2718:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2514
	j	.L2719
.L2608:
	lhi	%r11,0
	j	.L2609
.L2721:
	lhi	%r5,0
	j	.L2518
.L2720:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2518
	j	.L2721
.L2723:
	lhi	%r5,0
	j	.L2522
.L2722:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2522
	j	.L2723
.L2725:
	lhi	%r5,0
	j	.L2526
.L2724:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2526
	j	.L2725
.L2726:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2530
	j	.L2738
.L2728:
	lhi	%r5,0
	j	.L2558
.L2727:
	lr	%r1,%r2
	j	.L2556
.L2730:
	lhi	%r5,0
	j	.L2562
.L2729:
	lr	%r1,%r2
	j	.L2560
.L2732:
	lhi	%r5,0
	j	.L2566
.L2731:
	lr	%r1,%r2
	j	.L2564
.L2734:
	lhi	%r5,0
	j	.L2570
.L2733:
	lr	%r1,%r2
	j	.L2568
.L2736:
	lhi	%r5,0
	j	.L2574
.L2735:
	lr	%r1,%r2
	j	.L2572
.L2737:
	lr	%r1,%r2
	j	.L2576
.L2715:
	sr	%r2,%r3
	cr	%r0,%r3
	je	.L2473
	lr	%r2,%r0
.L2473:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L2476
.L2613:
	lhi	%r11,0
	j	.L2476
	.cfi_endproc
.LFE162:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	kebr	%f0,%f2
	jl	.L2743
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2743:
	lhi	%r2,-1
	br	%r14
	.cfi_endproc
.LFE122:
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
.LFB123:
	.cfi_startproc
	kdbr	%f0,%f2
	jl	.L2748
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2748:
	lhi	%r2,-1
	br	%r14
	.cfi_endproc
.LFE123:
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	8
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
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
.LFB126:
	.cfi_startproc
	lr	%r4,%r2
	ltr	%r1,%r3
	jl	.L2858
	je	.L2762
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r5,%r4
	lr	%r3,%r1
	sll	%r5,1
	sra	%r3,1
	ber	%r14
	lhi	%r0,1
	nr	%r3,%r0
	lcr	%r3,%r3
	nr	%r3,%r5
	ar	%r2,%r3
	sra	%r1,2
	lr	%r3,%r4
	sll	%r3,2
	ber	%r14
	lhi	%r5,0
.L2760:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2854
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lhi	%r12,1
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,2
	sra	%r4,2
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L2761
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L2761
	nr	%r4,%r12
	sra	%r1,28
	lcr	%r12,%r4
	lcr	%r1,%r1
	nr	%r12,%r0
	sll	%r3,28
	ar	%r12,%r2
	nr	%r3,%r1
	lr	%r2,%r3
	ar	%r2,%r12
.L2761:
	ltr	%r5,%r5
	je	.L2754
	lcr	%r2,%r2
.L2754:
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
.L2858:
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r1,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r5,%r4
	lr	%r3,%r1
	sll	%r5,1
	sra	%r3,1
	je	.L2852
	lhi	%r0,1
	nr	%r3,%r0
	lcr	%r3,%r3
	nr	%r3,%r5
	ar	%r2,%r3
	lhi	%r5,1
	lr	%r3,%r4
	sra	%r1,2
	sll	%r3,2
	jne	.L2760
.L2852:
	lcr	%r2,%r2
	br	%r14
.L2762:
	lhi	%r2,0
	br	%r14
.L2854:
	ltr	%r5,%r5
	ber	%r14
	lcr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE126:
	.size	__mulhi3, .-__mulhi3
	.align	8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
.LFB127:
	.cfi_startproc
	stm	%r10,%r13,80(%r15)
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3117
	ltr	%r4,%r2
	jl	.L3115
	lhi	%r1,1
	lhi	%r5,0
.L2861:
	ltr	%r3,%r3
	jhe	.L2862
	lcr	%r3,%r3
	lr	%r5,%r1
.L2862:
	clr	%r4,%r3
	jle	.L2863
	lr	%r0,%r3
	sll	%r0,1
	clr	%r4,%r0
	jle	.L2864
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L2997
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L2998
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L2999
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L3000
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L3001
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L3002
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L3003
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L3004
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L3005
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L3006
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L3007
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L3008
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L3009
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L3010
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L3011
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L3012
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L3013
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L3014
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L3015
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L3016
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L3017
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L3018
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L3019
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L3020
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L3021
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L3022
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L3023
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L3024
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L3025
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L3116
.L2866:
	ltr	%r5,%r5
	je	.L2860
	lcr	%r2,%r2
.L2860:
	lm	%r10,%r13,80(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3115:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r1,0
	lhi	%r5,1
	j	.L2861
.L3013:
	l	%r0,.L3118-.L3117(%r13)
.L2865:
	lr	%r2,%r4
	sr	%r2,%r1
	clr	%r4,%r1
	jhe	.L2984
	lr	%r2,%r4
.L2984:
	lr	%r10,%r1
	lr	%r3,%r2
	srl	%r10,1
	sr	%r3,%r10
	clr	%r2,%r10
	jhe	.L2986
	lr	%r3,%r2
.L2986:
	lr	%r11,%r1
	lr	%r12,%r3
	srl	%r11,2
	sr	%r12,%r11
	clr	%r3,%r11
	jhe	.L2988
	lr	%r12,%r3
.L2988:
	clr	%r2,%r10
	jl	.L2989
	lr	%r2,%r0
	srl	%r2,1
.L2990:
	clr	%r4,%r1
	jl	.L2991
	lr	%r4,%r0
.L2992:
	or	%r2,%r4
	clr	%r3,%r11
	jl	.L2993
	lr	%r10,%r0
	srl	%r10,2
.L2994:
	or	%r2,%r10
	lr	%r4,%r0
	lr	%r11,%r1
	srl	%r4,3
	srl	%r11,3
	ltr	%r4,%r4
	je	.L2866
	lr	%r3,%r12
	sr	%r3,%r11
	clr	%r12,%r11
	jhe	.L2871
	lr	%r3,%r12
.L2871:
	clr	%r12,%r11
	jhe	.L2873
	lhi	%r4,0
.L2873:
	or	%r2,%r4
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,4
	srl	%r10,4
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2875
	lr	%r4,%r3
.L2875:
	clr	%r3,%r10
	jhe	.L2877
	lhi	%r12,0
.L2877:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,5
	srl	%r11,5
	ltr	%r10,%r10
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2879
	lr	%r3,%r4
.L2879:
	clr	%r4,%r11
	jhe	.L2881
	lhi	%r10,0
.L2881:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,6
	srl	%r11,6
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2883
	lr	%r4,%r3
.L2883:
	clr	%r3,%r11
	jhe	.L2885
	lhi	%r12,0
.L2885:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,7
	srl	%r10,7
	ltr	%r11,%r11
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2887
	lr	%r3,%r4
.L2887:
	clr	%r4,%r10
	jhe	.L2889
	lhi	%r11,0
.L2889:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,8
	srl	%r10,8
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2891
	lr	%r4,%r3
.L2891:
	clr	%r3,%r10
	jhe	.L2893
	lhi	%r12,0
.L2893:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,9
	srl	%r11,9
	ltr	%r10,%r10
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2895
	lr	%r3,%r4
.L2895:
	clr	%r4,%r11
	jhe	.L2897
	lhi	%r10,0
.L2897:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,10
	srl	%r11,10
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2899
	lr	%r4,%r3
.L2899:
	clr	%r3,%r11
	jhe	.L2901
	lhi	%r12,0
.L2901:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,11
	srl	%r10,11
	ltr	%r11,%r11
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2903
	lr	%r3,%r4
.L2903:
	clr	%r4,%r10
	jhe	.L2905
	lhi	%r11,0
.L2905:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,12
	srl	%r10,12
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2907
	lr	%r4,%r3
.L2907:
	clr	%r3,%r10
	jhe	.L2909
	lhi	%r12,0
.L2909:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,13
	srl	%r11,13
	ltr	%r10,%r10
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2911
	lr	%r3,%r4
.L2911:
	clr	%r4,%r11
	jhe	.L2913
	lhi	%r10,0
.L2913:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,14
	srl	%r11,14
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2915
	lr	%r4,%r3
.L2915:
	clr	%r3,%r11
	jhe	.L2917
	lhi	%r12,0
.L2917:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,15
	srl	%r10,15
	ltr	%r11,%r11
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2919
	lr	%r3,%r4
.L2919:
	clr	%r4,%r10
	jhe	.L2921
	lhi	%r11,0
.L2921:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,16
	srl	%r10,16
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2923
	lr	%r4,%r3
.L2923:
	clr	%r3,%r10
	jhe	.L2925
	lhi	%r12,0
.L2925:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,17
	srl	%r11,17
	ltr	%r10,%r10
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2927
	lr	%r3,%r4
.L2927:
	clr	%r4,%r11
	jhe	.L2929
	lhi	%r10,0
.L2929:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,18
	srl	%r11,18
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2931
	lr	%r4,%r3
.L2931:
	clr	%r3,%r11
	jhe	.L2933
	lhi	%r12,0
.L2933:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,19
	srl	%r10,19
	ltr	%r11,%r11
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2935
	lr	%r3,%r4
.L2935:
	clr	%r4,%r10
	jhe	.L2937
	lhi	%r11,0
.L2937:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,20
	srl	%r10,20
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2939
	lr	%r4,%r3
.L2939:
	clr	%r3,%r10
	jhe	.L2941
	lhi	%r12,0
.L2941:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,21
	srl	%r11,21
	ltr	%r10,%r10
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2943
	lr	%r3,%r4
.L2943:
	clr	%r4,%r11
	jhe	.L2945
	lhi	%r10,0
.L2945:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,22
	srl	%r11,22
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2947
	lr	%r4,%r3
.L2947:
	clr	%r3,%r11
	jhe	.L2949
	lhi	%r12,0
.L2949:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,23
	srl	%r10,23
	ltr	%r11,%r11
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2951
	lr	%r3,%r4
.L2951:
	clr	%r4,%r10
	jhe	.L2953
	lhi	%r11,0
.L2953:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,24
	srl	%r10,24
	ltr	%r12,%r12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2955
	lr	%r4,%r3
.L2955:
	clr	%r3,%r10
	jhe	.L2957
	lhi	%r12,0
.L2957:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,25
	srl	%r11,25
	ltr	%r10,%r10
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2959
	lr	%r3,%r4
.L2959:
	clr	%r4,%r11
	jhe	.L2961
	lhi	%r10,0
.L2961:
	or	%r2,%r10
	lr	%r4,%r0
	lr	%r11,%r1
	srl	%r4,26
	srl	%r11,26
	ltr	%r4,%r4
	je	.L2866
	lr	%r12,%r3
	sr	%r12,%r11
	clr	%r3,%r11
	jhe	.L2963
	lr	%r12,%r3
.L2963:
	clr	%r3,%r11
	jhe	.L2965
	lhi	%r4,0
.L2965:
	or	%r2,%r4
	lr	%r3,%r0
	lr	%r10,%r1
	srl	%r3,27
	srl	%r10,27
	ltr	%r3,%r3
	je	.L2866
	lr	%r4,%r12
	sr	%r4,%r10
	clr	%r12,%r10
	jhe	.L2967
	lr	%r4,%r12
.L2967:
	clr	%r12,%r10
	jhe	.L2969
	lhi	%r3,0
.L2969:
	or	%r2,%r3
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,28
	srl	%r11,28
	ltr	%r12,%r12
	je	.L2866
	lr	%r10,%r4
	sr	%r10,%r11
	clr	%r4,%r11
	jhe	.L2971
	lr	%r10,%r4
.L2971:
	clr	%r4,%r11
	jhe	.L2973
	lhi	%r12,0
.L2973:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r3,%r1
	srl	%r11,29
	srl	%r3,29
	ltr	%r11,%r11
	je	.L2866
	lr	%r4,%r10
	sr	%r4,%r3
	clr	%r10,%r3
	jhe	.L2975
	lr	%r4,%r10
.L2975:
	clr	%r10,%r3
	jhe	.L2977
	lhi	%r11,0
.L2977:
	or	%r2,%r11
	lr	%r3,%r0
	lr	%r10,%r1
	srl	%r3,30
	srl	%r10,30
	ltr	%r3,%r3
	je	.L2866
	lr	%r12,%r4
	sr	%r12,%r10
	clr	%r4,%r10
	jhe	.L2979
	lr	%r12,%r4
.L2979:
	clr	%r4,%r10
	jhe	.L2981
	lhi	%r3,0
.L2981:
	or	%r2,%r3
	srl	%r1,31
	c	%r0,.L3119-.L3117(%r13)
	je	.L2866
	slr	%r12,%r1
	lhi	%r1,0
	alcr	%r1,%r1
	or	%r2,%r1
	j	.L2866
.L2993:
	lhi	%r10,0
	j	.L2994
.L2991:
	lhi	%r4,0
	j	.L2992
.L2989:
	lhi	%r2,0
	j	.L2990
.L2863:
	xr	%r4,%r3
	lpr	%r2,%r4
	ahi	%r2,-1
	srl	%r2,31
	j	.L2866
.L2998:
	lhi	%r0,8
	j	.L2865
.L2997:
	lhi	%r0,4
	j	.L2865
.L2999:
	lhi	%r0,16
	j	.L2865
.L3000:
	lhi	%r0,32
	j	.L2865
.L3002:
	lhi	%r0,128
	j	.L2865
.L3001:
	lhi	%r0,64
	j	.L2865
.L3003:
	lhi	%r0,256
	j	.L2865
.L3004:
	lhi	%r0,512
	j	.L2865
.L3005:
	lhi	%r0,1024
	j	.L2865
.L3006:
	lhi	%r0,2048
	j	.L2865
.L3008:
	lhi	%r0,8192
	j	.L2865
.L3007:
	lhi	%r0,4096
	j	.L2865
.L3010:
	l	%r0,.L3120-.L3117(%r13)
	j	.L2865
.L3009:
	lhi	%r0,16384
	j	.L2865
.L3012:
	l	%r0,.L3121-.L3117(%r13)
	j	.L2865
.L3011:
	l	%r0,.L3122-.L3117(%r13)
	j	.L2865
.L3014:
	l	%r0,.L3123-.L3117(%r13)
	j	.L2865
.L3017:
	l	%r0,.L3124-.L3117(%r13)
	j	.L2865
.L3015:
	l	%r0,.L3125-.L3117(%r13)
	j	.L2865
.L3016:
	l	%r0,.L3126-.L3117(%r13)
	j	.L2865
.L3019:
	l	%r0,.L3127-.L3117(%r13)
	j	.L2865
.L3018:
	l	%r0,.L3128-.L3117(%r13)
	j	.L2865
.L3022:
	l	%r0,.L3129-.L3117(%r13)
	j	.L2865
.L3020:
	l	%r0,.L3130-.L3117(%r13)
	j	.L2865
.L3021:
	l	%r0,.L3131-.L3117(%r13)
	j	.L2865
.L3116:
	l	%r1,.L3132-.L3117(%r13)
	lr	%r0,%r1
	j	.L2865
.L3024:
	l	%r0,.L3133-.L3117(%r13)
	j	.L2865
.L3025:
	l	%r0,.L3119-.L3117(%r13)
	j	.L2865
.L3023:
	l	%r0,.L3134-.L3117(%r13)
	j	.L2865
.L2864:
	lr	%r10,%r4
	sr	%r10,%r0
	clr	%r4,%r0
	jhe	.L2868
	lr	%r10,%r4
.L2868:
	slr	%r10,%r3
	lhi	%r2,0
	alcr	%r2,%r2
	slr	%r4,%r0
	lhi	%r3,0
	alcr	%r3,%r3
	sll	%r3,1
	or	%r2,%r3
	j	.L2866
	.section	.rodata
	.align	8
.L3117:
.L3134:
	.long	268435456
.L3133:
	.long	536870912
.L3132:
	.long	-2147483648
.L3131:
	.long	67108864
.L3130:
	.long	33554432
.L3129:
	.long	134217728
.L3128:
	.long	8388608
.L3127:
	.long	16777216
.L3126:
	.long	2097152
.L3125:
	.long	1048576
.L3124:
	.long	4194304
.L3123:
	.long	524288
.L3122:
	.long	65536
.L3121:
	.long	131072
.L3120:
	.long	32768
.L3119:
	.long	1073741824
.L3118:
	.long	262144
	.align	2
.text
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3340
	ltr	%r1,%r2
	jl	.L3136
	lpr	%r2,%r3
	lhi	%r5,0
	clr	%r1,%r2
	jle	.L3338
.L3137:
	lr	%r4,%r2
	sll	%r4,1
	clr	%r4,%r1
	jhe	.L3144
	lr	%r3,%r2
	sll	%r3,2
	clr	%r3,%r1
	jhe	.L3219
	lr	%r3,%r2
	sll	%r3,3
	clr	%r3,%r1
	jhe	.L3220
	lr	%r3,%r2
	sll	%r3,4
	clr	%r3,%r1
	jhe	.L3221
	lr	%r3,%r2
	sll	%r3,5
	clr	%r3,%r1
	jhe	.L3222
	lr	%r3,%r2
	sll	%r3,6
	clr	%r3,%r1
	jhe	.L3223
	lr	%r3,%r2
	sll	%r3,7
	clr	%r3,%r1
	jhe	.L3224
	lr	%r3,%r2
	sll	%r3,8
	clr	%r3,%r1
	jhe	.L3225
	lr	%r3,%r2
	sll	%r3,9
	clr	%r3,%r1
	jhe	.L3226
	lr	%r3,%r2
	sll	%r3,10
	clr	%r3,%r1
	jhe	.L3227
	lr	%r3,%r2
	sll	%r3,11
	clr	%r3,%r1
	jhe	.L3228
	lr	%r3,%r2
	sll	%r3,12
	clr	%r3,%r1
	jhe	.L3229
	lr	%r3,%r2
	sll	%r3,13
	clr	%r3,%r1
	jhe	.L3230
	lr	%r3,%r2
	sll	%r3,14
	clr	%r3,%r1
	jhe	.L3231
	lr	%r3,%r2
	sll	%r3,15
	clr	%r3,%r1
	jhe	.L3232
	lr	%r3,%r2
	sll	%r3,16
	clr	%r3,%r1
	jhe	.L3233
	lr	%r3,%r2
	sll	%r3,17
	clr	%r3,%r1
	jhe	.L3234
	lr	%r3,%r2
	sll	%r3,18
	clr	%r3,%r1
	jhe	.L3235
	lr	%r3,%r2
	sll	%r3,19
	clr	%r3,%r1
	jhe	.L3236
	lr	%r3,%r2
	sll	%r3,20
	clr	%r1,%r3
	jle	.L3237
	lr	%r3,%r2
	sll	%r3,21
	clr	%r1,%r3
	jle	.L3238
	lr	%r3,%r2
	sll	%r3,22
	clr	%r1,%r3
	jle	.L3239
	lr	%r3,%r2
	sll	%r3,23
	clr	%r1,%r3
	jle	.L3240
	lr	%r3,%r2
	sll	%r3,24
	clr	%r1,%r3
	jle	.L3241
	lr	%r3,%r2
	sll	%r3,25
	clr	%r1,%r3
	jle	.L3242
	lr	%r3,%r2
	sll	%r3,26
	clr	%r1,%r3
	jle	.L3243
	lr	%r3,%r2
	sll	%r3,27
	clr	%r1,%r3
	jle	.L3244
	lr	%r3,%r2
	sll	%r3,28
	clr	%r1,%r3
	jle	.L3245
	lr	%r3,%r2
	sll	%r3,29
	clr	%r1,%r3
	jle	.L3246
	lr	%r3,%r2
	sll	%r3,30
	clr	%r1,%r3
	jle	.L3247
	sll	%r2,31
	lr	%r0,%r2
	clr	%r1,%r0
	lr	%r2,%r1
	jle	.L3339
.L3146:
	ltr	%r5,%r5
	je	.L3135
.L3143:
	lcr	%r2,%r2
.L3135:
	lm	%r12,%r13,88(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L3136:
	.cfi_restore_state
	lcr	%r1,%r1
	lpr	%r2,%r3
	lhi	%r5,1
	clr	%r2,%r1
	jl	.L3137
	lr	%r0,%r1
	sr	%r0,%r2
	cr	%r2,%r1
	jne	.L3141
	lr	%r2,%r0
	j	.L3143
.L3235:
	l	%r4,.L3341-.L3340(%r13)
.L3145:
	lr	%r2,%r1
	sr	%r2,%r3
	clr	%r1,%r3
	jl	.L3211
	lr	%r1,%r2
.L3211:
	lr	%r12,%r3
	lr	%r0,%r1
	srl	%r12,1
	sr	%r0,%r12
	clr	%r1,%r12
	jl	.L3213
	lr	%r1,%r0
.L3213:
	lr	%r2,%r3
	lr	%r12,%r1
	srl	%r2,2
	sr	%r12,%r2
	clr	%r1,%r2
	jl	.L3215
	lr	%r1,%r12
.L3215:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,3
	srl	%r0,3
	ltr	%r12,%r12
	je	.L3146
	lr	%r2,%r1
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3153
	lr	%r1,%r2
.L3153:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,4
	srl	%r0,4
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3155
	lr	%r1,%r2
.L3155:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,5
	srl	%r0,5
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3157
	lr	%r1,%r2
.L3157:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,6
	srl	%r0,6
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3159
	lr	%r1,%r2
.L3159:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,7
	srl	%r0,7
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3161
	lr	%r1,%r2
.L3161:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,8
	srl	%r0,8
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3163
	lr	%r1,%r2
.L3163:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,9
	srl	%r0,9
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3165
	lr	%r1,%r2
.L3165:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,10
	srl	%r0,10
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3167
	lr	%r1,%r2
.L3167:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,11
	srl	%r0,11
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3169
	lr	%r1,%r2
.L3169:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,12
	srl	%r0,12
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3171
	lr	%r1,%r2
.L3171:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,13
	srl	%r0,13
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3173
	lr	%r1,%r2
.L3173:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,14
	srl	%r0,14
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3175
	lr	%r1,%r2
.L3175:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,15
	srl	%r0,15
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3177
	lr	%r1,%r2
.L3177:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,16
	srl	%r0,16
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3179
	lr	%r1,%r2
.L3179:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,17
	srl	%r0,17
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3181
	lr	%r1,%r2
.L3181:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,18
	srl	%r0,18
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3183
	lr	%r1,%r2
.L3183:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,19
	srl	%r0,19
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3185
	lr	%r1,%r2
.L3185:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,20
	srl	%r0,20
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3187
	lr	%r1,%r2
.L3187:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,21
	srl	%r0,21
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3189
	lr	%r1,%r2
.L3189:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,22
	srl	%r0,22
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3191
	lr	%r1,%r2
.L3191:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,23
	srl	%r0,23
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3193
	lr	%r1,%r2
.L3193:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,24
	srl	%r0,24
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3195
	lr	%r1,%r2
.L3195:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,25
	srl	%r0,25
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3197
	lr	%r1,%r2
.L3197:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,26
	srl	%r0,26
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3199
	lr	%r1,%r2
.L3199:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,27
	srl	%r0,27
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3201
	lr	%r1,%r2
.L3201:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,28
	srl	%r0,28
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3203
	lr	%r1,%r2
.L3203:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,29
	srl	%r0,29
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3205
	lr	%r1,%r2
.L3205:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,30
	srl	%r0,30
	ltr	%r12,%r12
	je	.L3146
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3207
	lr	%r1,%r2
.L3207:
	srl	%r3,31
	lr	%r2,%r1
	c	%r4,.L3342-.L3340(%r13)
	je	.L3146
	sr	%r2,%r3
	clr	%r1,%r3
	jhe	.L3146
.L3337:
	lr	%r2,%r1
	j	.L3146
.L3219:
	lhi	%r4,4
	j	.L3145
.L3220:
	lhi	%r4,8
	j	.L3145
.L3221:
	lhi	%r4,16
	j	.L3145
.L3222:
	lhi	%r4,32
	j	.L3145
.L3224:
	lhi	%r4,128
	j	.L3145
.L3223:
	lhi	%r4,64
	j	.L3145
.L3225:
	lhi	%r4,256
	j	.L3145
.L3226:
	lhi	%r4,512
	j	.L3145
.L3227:
	lhi	%r4,1024
	j	.L3145
.L3228:
	lhi	%r4,2048
	j	.L3145
.L3230:
	lhi	%r4,8192
	j	.L3145
.L3229:
	lhi	%r4,4096
	j	.L3145
.L3338:
	lr	%r3,%r1
	sr	%r3,%r2
	cr	%r1,%r2
	jne	.L3138
	lr	%r2,%r3
	j	.L3135
.L3232:
	l	%r4,.L3343-.L3340(%r13)
	j	.L3145
.L3231:
	lhi	%r4,16384
	j	.L3145
.L3234:
	l	%r4,.L3344-.L3340(%r13)
	j	.L3145
.L3233:
	l	%r4,.L3345-.L3340(%r13)
	j	.L3145
.L3236:
	l	%r4,.L3346-.L3340(%r13)
	j	.L3145
.L3239:
	l	%r4,.L3347-.L3340(%r13)
	j	.L3145
.L3237:
	l	%r4,.L3348-.L3340(%r13)
	j	.L3145
.L3238:
	l	%r4,.L3349-.L3340(%r13)
	j	.L3145
.L3241:
	l	%r4,.L3350-.L3340(%r13)
	j	.L3145
.L3240:
	l	%r4,.L3351-.L3340(%r13)
	j	.L3145
.L3243:
	l	%r4,.L3352-.L3340(%r13)
	j	.L3145
.L3244:
	l	%r4,.L3353-.L3340(%r13)
	j	.L3145
.L3242:
	l	%r4,.L3354-.L3340(%r13)
	j	.L3145
.L3339:
	l	%r3,.L3355-.L3340(%r13)
	lr	%r4,%r3
	j	.L3145
.L3245:
	l	%r4,.L3356-.L3340(%r13)
	j	.L3145
.L3246:
	l	%r4,.L3357-.L3340(%r13)
	j	.L3145
.L3247:
	l	%r4,.L3342-.L3340(%r13)
	j	.L3145
.L3138:
	lr	%r2,%r1
	j	.L3135
.L3141:
	lr	%r2,%r1
	j	.L3143
.L3144:
	lr	%r12,%r1
	sr	%r12,%r4
	clr	%r1,%r4
	jl	.L3148
	lr	%r1,%r12
.L3148:
	lr	%r3,%r1
	sr	%r3,%r2
	clr	%r1,%r2
	jl	.L3337
	lr	%r2,%r3
	j	.L3146
	.section	.rodata
	.align	8
.L3340:
.L3357:
	.long	536870912
.L3356:
	.long	268435456
.L3355:
	.long	-2147483648
.L3354:
	.long	33554432
.L3353:
	.long	134217728
.L3352:
	.long	67108864
.L3351:
	.long	8388608
.L3350:
	.long	16777216
.L3349:
	.long	2097152
.L3348:
	.long	1048576
.L3347:
	.long	4194304
.L3346:
	.long	524288
.L3345:
	.long	65536
.L3344:
	.long	131072
.L3343:
	.long	32768
.L3342:
	.long	1073741824
.L3341:
	.long	262144
	.align	2
.text
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	stm	%r10,%r13,80(%r15)
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3518
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L3516
	tml	%r3,32768
	jne	.L3363
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3436
	tml	%r1,32768
	jne	.L3436
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3438
	tml	%r1,32768
	jne	.L3438
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3440
	tml	%r1,32768
	jne	.L3440
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3442
	tml	%r1,32768
	jne	.L3442
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3444
	tml	%r1,32768
	jne	.L3444
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3446
	tml	%r1,32768
	jne	.L3446
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3448
	tml	%r1,32768
	jne	.L3448
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3450
	tml	%r1,32768
	jne	.L3450
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3452
	tml	%r1,32768
	jne	.L3452
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3454
	tml	%r1,32768
	jne	.L3454
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3456
	tml	%r1,32768
	jne	.L3456
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3458
	tml	%r1,32768
	jne	.L3458
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3460
	tml	%r1,32768
	jne	.L3460
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L3519-.L3518(%r13)
	clr	%r2,%r1
	jle	.L3462
	tml	%r1,32768
	jne	.L3462
	sll	%r3,15
	n	%r3,.L3519-.L3518(%r13)
	clr	%r2,%r3
	jle	.L3463
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L3517
.L3366:
	ltr	%r4,%r4
	je	.L3425
	lr	%r2,%r5
.L3425:
	n	%r2,.L3519-.L3518(%r13)
	lm	%r10,%r13,80(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3436:
	.cfi_restore_state
	lhi	%r12,2
.L3365:
	lr	%r3,%r5
	sr	%r3,%r1
	n	%r3,.L3519-.L3518(%r13)
	clr	%r5,%r1
	jhe	.L3432
	lr	%r3,%r5
.L3432:
	n	%r3,.L3519-.L3518(%r13)
	clr	%r5,%r1
	jl	.L3433
	lr	%r2,%r12
.L3434:
	lr	%r11,%r1
	lr	%r5,%r3
	srl	%r11,1
	sr	%r5,%r11
	n	%r5,.L3519-.L3518(%r13)
	lr	%r0,%r12
	clr	%r3,%r11
	sll	%r0,16
	srl	%r0,17
	jhe	.L3368
	lr	%r5,%r3
.L3368:
	n	%r5,.L3519-.L3518(%r13)
	clr	%r3,%r11
	jl	.L3369
	lr	%r10,%r0
.L3370:
	or	%r2,%r10
	l	%r0,.L3519-.L3518(%r13)
	nr	%r0,%r12
	lr	%r11,%r1
	srl	%r0,2
	srl	%r11,2
	ltr	%r0,%r0
	je	.L3366
	lr	%r3,%r5
	sr	%r3,%r11
	n	%r3,.L3519-.L3518(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3372
	lr	%r3,%r5
.L3372:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r3
	ltr	%r11,%r11
	jne	.L3374
	lhi	%r0,0
.L3374:
	or	%r0,%r2
	lr	%r11,%r0
	lr	%r10,%r1
	l	%r0,.L3519-.L3518(%r13)
	nr	%r0,%r12
	lr	%r2,%r11
	srl	%r0,3
	srl	%r10,3
	ltr	%r0,%r0
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3376
	lr	%r2,%r5
.L3376:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3378
	lhi	%r0,0
.L3378:
	or	%r11,%r0
	l	%r0,.L3519-.L3518(%r13)
	nr	%r0,%r12
	lr	%r10,%r1
	srl	%r0,4
	lr	%r2,%r11
	srl	%r10,4
	ltr	%r0,%r0
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3380
	lr	%r2,%r5
.L3380:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3382
	lhi	%r0,0
.L3382:
	or	%r0,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,5
	lr	%r2,%r0
	srl	%r10,5
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3384
	lr	%r2,%r5
.L3384:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3386
	lhi	%r11,0
.L3386:
	or	%r0,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,6
	lr	%r2,%r0
	srl	%r10,6
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3388
	lr	%r2,%r5
.L3388:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3390
	lhi	%r11,0
.L3390:
	or	%r0,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,7
	lr	%r2,%r0
	srl	%r10,7
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3392
	lr	%r2,%r5
.L3392:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3394
	lhi	%r11,0
.L3394:
	or	%r11,%r0
	l	%r3,.L3519-.L3518(%r13)
	nr	%r3,%r12
	lr	%r10,%r1
	srl	%r3,8
	lr	%r2,%r11
	srl	%r10,8
	ltr	%r3,%r3
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3396
	lr	%r2,%r5
.L3396:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3398
	lhi	%r3,0
.L3398:
	or	%r3,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,9
	lr	%r2,%r3
	srl	%r10,9
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3400
	lr	%r2,%r5
.L3400:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3402
	lhi	%r11,0
.L3402:
	or	%r3,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,10
	lr	%r2,%r3
	srl	%r10,10
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3404
	lr	%r2,%r5
.L3404:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3406
	lhi	%r11,0
.L3406:
	or	%r3,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,11
	lr	%r2,%r3
	srl	%r10,11
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3408
	lr	%r2,%r5
.L3408:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3410
	lhi	%r11,0
.L3410:
	or	%r3,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,12
	lr	%r2,%r3
	srl	%r10,12
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3412
	lr	%r2,%r5
.L3412:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3414
	lhi	%r11,0
.L3414:
	or	%r3,%r11
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r12
	lr	%r10,%r1
	srl	%r11,13
	lr	%r2,%r3
	srl	%r10,13
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3416
	lr	%r2,%r5
.L3416:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3418
	lhi	%r11,0
.L3418:
	or	%r3,%r11
	l	%r0,.L3519-.L3518(%r13)
	nr	%r0,%r12
	lr	%r10,%r1
	srl	%r0,14
	lr	%r2,%r3
	srl	%r10,14
	ltr	%r0,%r0
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3519-.L3518(%r13)
	lr	%r11,%r5
	slr	%r11,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3420
	lr	%r2,%r5
.L3420:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3422
	lhi	%r0,0
.L3422:
	or	%r3,%r0
	n	%r12,.L3519-.L3518(%r13)
	srl	%r1,15
	lr	%r2,%r3
	chi	%r12,16384
	je	.L3366
	lr	%r12,%r5
	l	%r11,.L3519-.L3518(%r13)
	sr	%r12,%r1
	nr	%r11,%r12
	lr	%r10,%r5
	lhi	%r2,0
	slr	%r10,%r1
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L3423
	lr	%r1,%r11
.L3424:
	l	%r5,.L3519-.L3518(%r13)
	or	%r2,%r3
	nr	%r5,%r1
	j	.L3366
.L3369:
	lhi	%r10,0
	j	.L3370
.L3433:
	lhi	%r2,0
	j	.L3434
.L3423:
	lr	%r1,%r5
	j	.L3424
.L3438:
	lhi	%r12,4
	j	.L3365
.L3440:
	lhi	%r12,8
	j	.L3365
.L3442:
	lhi	%r12,16
	j	.L3365
.L3452:
	lhi	%r12,512
	j	.L3365
.L3444:
	lhi	%r12,32
	j	.L3365
.L3446:
	lhi	%r12,64
	j	.L3365
.L3448:
	lhi	%r12,128
	j	.L3365
.L3450:
	lhi	%r12,256
	j	.L3365
.L3516:
	lr	%r2,%r3
	lr	%r1,%r5
	xr	%r2,%r5
	sr	%r1,%r3
	ahi	%r2,-1
	xr	%r3,%r5
	n	%r1,.L3519-.L3518(%r13)
	ahi	%r3,-1
	srl	%r2,31
	ltr	%r3,%r3
	jl	.L3361
	lr	%r1,%r5
.L3361:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r1
	j	.L3366
.L3454:
	lhi	%r12,1024
	j	.L3365
.L3456:
	lhi	%r12,2048
	j	.L3365
.L3458:
	lhi	%r12,4096
	j	.L3365
.L3460:
	lhi	%r12,8192
	j	.L3365
.L3462:
	lhi	%r12,16384
	j	.L3365
.L3517:
	lhi	%r12,-32768
	l	%r1,.L3520-.L3518(%r13)
	j	.L3365
.L3463:
	l	%r1,.L3520-.L3518(%r13)
	lhi	%r12,-32768
	j	.L3365
.L3363:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L3519-.L3518(%r13)
	j	.L3366
	.section	.rodata
	.align	8
.L3518:
.L3520:
	.long	32768
.L3519:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE129:
	.size	__udivmodhi4, .-__udivmodhi4
	.align	8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
.LFB164:
	.cfi_startproc
	lr	%r0,%r2
	clr	%r2,%r3
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	jle	.L3766
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L3763
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L3526
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L3763
.L3528:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3526
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L3731
	lr	%r2,%r0
.L3527:
	ltr	%r4,%r4
	jne	.L3521
	lr	%r2,%r11
.L3521:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3731:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L3763
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3526
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L3763
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3526
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L3528
.L3763:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L3658
	lr	%r2,%r0
.L3658:
	clr	%r0,%r3
	jl	.L3659
	lr	%r11,%r12
.L3660:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L3661
	j	.L3527
.L3526:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L3664
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L3531
	lr	%r2,%r0
.L3531:
	clr	%r0,%r1
	jl	.L3532
	lr	%r11,%r5
.L3533:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L3661:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3535
	lr	%r1,%r2
.L3535:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L3537
	lhi	%r0,0
.L3537:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3539
	lr	%r1,%r2
.L3539:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3541
	lhi	%r5,0
.L3541:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3543
	lr	%r1,%r2
.L3543:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3545
	lhi	%r5,0
.L3545:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3547
	lr	%r1,%r2
.L3547:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3549
	lhi	%r5,0
.L3549:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3551
	lr	%r1,%r2
.L3551:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3553
	lhi	%r5,0
.L3553:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3555
	lr	%r1,%r2
.L3555:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3557
	lhi	%r5,0
.L3557:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3767
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3768
.L3561:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3769
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3770
.L3565:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3771
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3772
.L3569:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3773
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3774
.L3573:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3775
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3776
.L3577:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3777
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3581
.L3789:
	lhi	%r5,0
.L3581:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3583
	lr	%r1,%r2
.L3583:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3585
	lhi	%r5,0
.L3585:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3587
	lr	%r1,%r2
.L3587:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3589
	lhi	%r5,0
.L3589:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3591
	lr	%r1,%r2
.L3591:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3593
	lhi	%r5,0
.L3593:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3595
	lr	%r1,%r2
.L3595:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3597
	lhi	%r5,0
.L3597:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3599
	lr	%r1,%r2
.L3599:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3601
	lhi	%r5,0
.L3601:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3603
	lr	%r1,%r2
.L3603:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3605
	lhi	%r5,0
.L3605:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3778
.L3607:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3779
.L3609:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3780
.L3611:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3781
.L3613:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3782
.L3615:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3783
.L3617:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3784
.L3619:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3785
.L3621:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3786
.L3623:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3787
.L3625:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3788
.L3627:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3629
	lhi	%r5,0
.L3629:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3631
	lr	%r1,%r2
.L3631:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3633
	lhi	%r5,0
.L3633:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3635
	lr	%r1,%r2
.L3635:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3637
	lhi	%r5,0
.L3637:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3639
	lr	%r1,%r2
.L3639:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3641
	lhi	%r5,0
.L3641:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3643
	lr	%r1,%r2
.L3643:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3645
	lhi	%r5,0
.L3645:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3647
	lr	%r1,%r2
.L3647:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3649
	lhi	%r5,0
.L3649:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3651
	lr	%r1,%r2
.L3651:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3653
	lhi	%r5,0
.L3653:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L3527
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3655
	lr	%r2,%r1
.L3655:
	or	%r11,%r3
	j	.L3527
.L3532:
	lhi	%r11,0
	j	.L3533
.L3768:
	lhi	%r5,0
	j	.L3561
.L3767:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3561
	j	.L3768
.L3770:
	lhi	%r5,0
	j	.L3565
.L3769:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3565
	j	.L3770
.L3659:
	lhi	%r11,0
	j	.L3660
.L3772:
	lhi	%r5,0
	j	.L3569
.L3771:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3569
	j	.L3772
.L3774:
	lhi	%r5,0
	j	.L3573
.L3773:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3573
	j	.L3774
.L3776:
	lhi	%r5,0
	j	.L3577
.L3775:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3577
	j	.L3776
.L3777:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3581
	j	.L3789
.L3779:
	lhi	%r5,0
	j	.L3609
.L3778:
	lr	%r1,%r2
	j	.L3607
.L3781:
	lhi	%r5,0
	j	.L3613
.L3780:
	lr	%r1,%r2
	j	.L3611
.L3783:
	lhi	%r5,0
	j	.L3617
.L3782:
	lr	%r1,%r2
	j	.L3615
.L3785:
	lhi	%r5,0
	j	.L3621
.L3784:
	lr	%r1,%r2
	j	.L3619
.L3787:
	lhi	%r5,0
	j	.L3625
.L3786:
	lr	%r1,%r2
	j	.L3623
.L3788:
	lr	%r1,%r2
	j	.L3627
.L3766:
	sr	%r2,%r3
	cr	%r0,%r3
	je	.L3524
	lr	%r2,%r0
.L3524:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L3527
.L3664:
	lhi	%r11,0
	j	.L3527
	.cfi_endproc
.LFE164:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	tml	%r4,32
	je	.L3792
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L3792:
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
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	tml	%r4,32
	je	.L3798
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L3798:
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
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	st	%r13,92(%r15)
	.cfi_offset 13, -4
	larl	%r13,.L3811
	cl	%r2,.L3812-.L3811(%r13)
	lr	%r1,%r2
	lhi	%r3,16
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	sll	%r2,4
	sr	%r3,%r2
	lhi	%r0,4
	srl	%r1,0(%r3)
	lhi	%r4,8
	l	%r5,.L3813-.L3811(%r13)
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
	jne	.L3808
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,92(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L3808:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,92(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L3811:
.L3813:
	.long	65280
.L3812:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE135:
	.size	__clzsi2, .-__clzsi2
	.align	8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
.LFB136:
	.cfi_startproc
	cr	%r2,%r4
	jl	.L3818
	jh	.L3819
	clr	%r3,%r5
	jl	.L3818
	jh	.L3819
	lhi	%r2,1
	br	%r14
.L3818:
	lhi	%r2,0
	br	%r14
.L3819:
	lhi	%r2,2
	br	%r14
	.cfi_endproc
.LFE136:
	.size	__cmpdi2, .-__cmpdi2
	.align	8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
.LFB137:
	.cfi_startproc
	cr	%r2,%r4
	jl	.L3825
	jh	.L3824
	clr	%r3,%r5
	jl	.L3825
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3825:
	lhi	%r2,-1
	br	%r14
.L3824:
	lhi	%r2,1
	br	%r14
	.cfi_endproc
.LFE137:
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	st	%r13,92(%r15)
	.cfi_offset 13, -4
	larl	%r13,.L3829
	lhi	%r5,15
	lr	%r1,%r2
	l	%r4,.L3830-.L3829(%r13)
	nr	%r4,%r2
	lhi	%r2,255
	ahi	%r4,-1
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
	l	%r13,92(%r15)
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
.L3829:
.L3830:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	tml	%r4,32
	je	.L3832
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L3832:
	ltr	%r4,%r4
	ber	%r14
	st	%r12,92(%r15)
	.cfi_offset 12, -4
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
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	st	%r13,92(%r15)
	.cfi_offset 13, -4
	larl	%r13,.L3844
	lr	%r5,%r3
	l	%r4,.L3845-.L3844(%r13)
	srl	%r5,16
	nr	%r4,%r2
	l	%r1,.L3845-.L3844(%r13)
	srl	%r2,16
	nr	%r1,%r3
	lr	%r3,%r4
	msr	%r4,%r5
	msr	%r3,%r1
	msr	%r1,%r2
	msr	%r2,%r5
	l	%r5,.L3845-.L3844(%r13)
	lr	%r0,%r3
	n	%r3,.L3845-.L3844(%r13)
	srl	%r0,16
	l	%r13,92(%r15)
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
.L3844:
.L3845:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE140:
	.size	__muldsi3, .-__muldsi3
	.align	8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
.LFB141:
	.cfi_startproc
	stm	%r11,%r13,84(%r15)
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3848
	msr	%r2,%r5
	l	%r1,.L3849-.L3848(%r13)
	nr	%r1,%r5
	srl	%r5,16
	msr	%r4,%r3
	lr	%r12,%r5
	l	%r0,.L3849-.L3848(%r13)
	nr	%r0,%r3
	srl	%r3,16
	lr	%r11,%r0
	lr	%r5,%r0
	msr	%r11,%r1
	msr	%r5,%r12
	msr	%r1,%r3
	msr	%r3,%r12
	l	%r12,.L3849-.L3848(%r13)
	lr	%r0,%r11
	n	%r11,.L3849-.L3848(%r13)
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
	lm	%r11,%r13,84(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L3848:
.L3849:
	.long	65535
	.align	2
.text
	.cfi_endproc
.LFE141:
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L3851
	ahi	%r2,-1
.L3851:
	br	%r14
	.cfi_endproc
.LFE142:
	.size	__negdi2, .-__negdi2
	.align	8
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
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3859
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r0,.L3860-.L3859(%r13)
	l	%r1,.L3860-.L3859(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	l	%r2,.L3861-.L3859(%r13)
	slr	%r5,%r1
	slbr	%r4,%r0
	lr	%r1,%r5
	lr	%r0,%r4
	l	%r3,.L3861-.L3859(%r13)
	l	%r12,.L3862-.L3859(%r13)
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L3861-.L3859(%r13)
	nr	%r0,%r4
	nr	%r3,%r1
	l	%r1,.L3861-.L3859(%r13)
	nr	%r1,%r5
	alr	%r3,%r1
	alcr	%r2,%r0
	lr	%r5,%r3
	lr	%r4,%r2
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	nr	%r12,%r3
	n	%r2,.L3862-.L3859(%r13)
	ar	%r2,%r12
	lhi	%r5,127
	lr	%r4,%r2
	srl	%r4,16
	ar	%r4,%r2
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
	lr	%r2,%r4
	srl	%r2,8
	ar	%r2,%r4
	nr	%r2,%r5
	br	%r14
	.section	.rodata
	.align	8
.L3859:
.L3862:
	.long	252645135
.L3861:
	.long	858993459
.L3860:
	.long	1431655765
	.align	2
.text
	.cfi_endproc
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	larl	%r5,.L3865
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L3866-.L3865(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L3867-.L3865(%r5)
	srl	%r0,2
	n	%r0,.L3867-.L3865(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3868-.L3865(%r5)
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
.L3865:
.L3868:
	.long	252645135
.L3867:
	.long	858993459
.L3866:
	.long	1431655765
	.align	2
.text
	.cfi_endproc
.LFE146:
	.size	__popcountsi2, .-__popcountsi2
	.align	8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
.LFB147:
	.cfi_startproc
	larl	%r5,.L3878
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L3879-.L3878(%r5)
	tml	%r2,1
	je	.L3870
.L3872:
	mdbr	%f0,%f2
.L3870:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3871
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L3872
.L3877:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L3872
	j	.L3877
.L3871:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L3879-.L3878(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3878:
.L3879:
	.long	1072693248
	.long	0
	.align	2
.text
	.cfi_endproc
.LFE147:
	.size	__powidf2, .-__powidf2
	.align	8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
.LFB148:
	.cfi_startproc
	larl	%r5,.L3889
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L3890-.L3889(%r5)
	tml	%r2,1
	je	.L3881
.L3883:
	meebr	%f0,%f2
.L3881:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3882
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L3883
.L3888:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L3883
	j	.L3888
.L3882:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L3890-.L3889(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3889:
.L3890:
	.long	1065353216
	.align	2
.text
	.cfi_endproc
.LFE148:
	.size	__powisf2, .-__powisf2
	.align	8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
.LFB149:
	.cfi_startproc
	clr	%r2,%r4
	jl	.L3895
	jh	.L3896
	clr	%r3,%r5
	jl	.L3895
	jh	.L3896
	lhi	%r2,1
	br	%r14
.L3895:
	lhi	%r2,0
	br	%r14
.L3896:
	lhi	%r2,2
	br	%r14
	.cfi_endproc
.LFE149:
	.size	__ucmpdi2, .-__ucmpdi2
	.align	8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
.LFB150:
	.cfi_startproc
	clr	%r2,%r4
	jl	.L3902
	jh	.L3901
	clr	%r3,%r5
	jl	.L3902
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3902:
	lhi	%r2,-1
	br	%r14
.L3901:
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
