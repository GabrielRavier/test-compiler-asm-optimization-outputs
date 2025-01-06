	.file	"mini-libc.c"
	.machinemode esa
	.machine "arch13+novx"
.text
	.align	8
	.align	16
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
	ahi	%r4,-4
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r1)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
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
	.align	16
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
	stc	%r1,0(%r2)
	lhi	%r12,255
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
.globl memset
	.type	memset, @function
memset:
.LFB6:
	.cfi_startproc
	ltr	%r4,%r4
	ber	%r14
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lhi	%r12,0
	lhi	%r13,0
	lr	%r0,%r2
	lr	%r1,%r4
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
	.align	16
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
	.align	16
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
	.align	16
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
	.align	16
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
	lr	%r1,%r4
	ar	%r4,%r2
	ahi	%r1,-2
	lhi	%r5,3
	srl	%r1,1
	ahi	%r1,1
	nr	%r5,%r1
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
	srl	%r1,2
	chi	%r1,2
	jle	.L329
	ahi	%r1,-1
	mvc	0(1,%r3),1(%r2)
.L308:
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	ahi	%r2,8
	ahi	%r3,8
	mvc	0(1,%r3),1(%r2)
	brct	%r1,.L308
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	br	%r14
.L329:
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
	brct	%r1,.L329
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
	je	.L337
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L337:
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
	jle	.L341
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L341:
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
	je	.L353
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L353:
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
	larl	%r5,.L364
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L361
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L363
.L361:
	lhi	%r2,1
	br	%r14
.L363:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L361
	a	%r2,.L365-.L364(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L364:
.L365:
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
	larl	%r5,.L377
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L376
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L373
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L378-.L377(%r5)
	jle	.L373
	l	%r4,.L379-.L377(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L373
	l	%r0,.L380-.L377(%r5)
	ar	%r0,%r2
	cl	%r0,.L381-.L377(%r5)
	jh	.L374
	n	%r2,.L382-.L377(%r5)
	x	%r2,.L382-.L377(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L373:
	lhi	%r2,1
	br	%r14
.L376:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L374:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L377:
.L382:
	.long	65534
.L381:
	.long	1048579
.L380:
	.long	-65532
.L379:
	.long	-57344
.L378:
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
	jle	.L385
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L385:
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
	larl	%r5,.L398
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L393
	kdbr	%f0,%f2
	jnh	.L396
	sdbr	%f0,%f2
	br	%r14
.L396:
	ld	%f0,.L399-.L398(%r5)
	br	%r14
.L393:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L398:
.L399:
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
	larl	%r5,.L409
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L404
	kebr	%f0,%f2
	jnh	.L407
	sebr	%f0,%f2
	br	%r14
.L407:
	le	%f0,.L410-.L409(%r5)
	br	%r14
.L404:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L409:
.L410:
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
	jo	.L419
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L421
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L416
	lhi	%r0,0
.L416:
	tml	%r0,1
	jne	.L419
	ldr	%f2,%f0
.L419:
	ldr	%f0,%f2
	br	%r14
.L421:
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
	jo	.L431
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L433
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L428
	lhi	%r0,0
.L428:
	tml	%r0,1
	jne	.L431
	ler	%f2,%f0
.L431:
	ler	%f0,%f2
	br	%r14
.L433:
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
	st	%r15,92(%r15)
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	.cfi_offset 15, -4
	ahi	%r15,-56
	.cfi_def_cfa_offset 152
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
	jo	.L442
	cxbr	%f0,%f0
	jo	.L436
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
	jne	.L447
	lxr	%f5,%f0
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	lhi	%r0,1
	kxbr	%f0,%f5
	jl	.L441
	lhi	%r0,0
.L441:
	tml	%r0,1
	je	.L439
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L440:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L436:
	ld	%f10,96(%r15)
	ld	%f12,104(%r15)
	std	%f10,0(%r2)
	std	%f12,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L447:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L436
.L442:
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
.L439:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L440
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
	jo	.L455
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L458
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L454
	lhi	%r0,0
.L454:
	tml	%r0,1
	bner	%r14
.L455:
	ldr	%f0,%f2
	br	%r14
.L458:
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
	jo	.L466
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L469
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L465
	lhi	%r0,0
.L465:
	tml	%r0,1
	bner	%r14
.L466:
	ler	%f0,%f2
	br	%r14
.L469:
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
	st	%r15,92(%r15)
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	.cfi_offset 15, -4
	ahi	%r15,-56
	.cfi_def_cfa_offset 152
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	ld	%f1,0(%r4)
	ld	%f0,112(%r15)
	std	%f1,96(%r15)
	ld	%f2,120(%r15)
	ld	%f3,8(%r4)
	cxbr	%f0,%f0
	std	%f3,104(%r15)
	jo	.L472
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L478
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L483
	lxr	%f5,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	lhi	%r0,1
	kxbr	%f0,%f5
	jl	.L477
	lhi	%r0,0
.L477:
	tml	%r0,1
	je	.L475
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L476:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L472:
	ld	%f14,96(%r15)
	ld	%f9,104(%r15)
	std	%f14,0(%r2)
	std	%f9,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L483:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L472
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
.L475:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L476
.L478:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L472
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
	je	.L486
	larl	%r4,.LANCHOR1
.L487:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L487
.L486:
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
	lm	%r10,%r13,80(%r15)
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
	je	.L502
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L502:
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
	je	.L505
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L505:
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
	je	.L515
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L540
.L527:
	srl	%r11,1
.L517:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L514
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L514
	ar	%r12,%r10
	brct	%r11,.L517
.L515:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L514
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L514:
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
.L540:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L514
	ar	%r12,%r10
	chi	%r13,1
	jne	.L527
	j	.L515
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
	je	.L543
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L564
.L552:
	srl	%r11,1
.L545:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L542
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L542
	ar	%r12,%r9
	brct	%r11,.L545
.L543:
	lhi	%r8,0
.L542:
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
.L564:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L542
	ar	%r12,%r9
	chi	%r7,1
	jne	.L552
	j	.L543
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
	stm	%r11,%r15,76(%r15)
	.cfi_offset 11, -20
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-32
	.cfi_def_cfa_offset 128
.L575:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L569
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L569
	chi	%r1,43
	je	.L570
	chi	%r1,45
	je	.L571
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L580
	lr	%r3,%r2
	lhi	%r12,0
.L573:
	lhi	%r2,0
.L577:
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
	jle	.L577
	ltr	%r12,%r12
	jne	.L568
	lr	%r2,%r5
	sr	%r2,%r1
.L568:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L569:
	.cfi_restore_state
	ahi	%r2,1
	j	.L575
.L571:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L580
	lhi	%r12,1
	j	.L573
.L570:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L573
.L580:
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
	.align	16
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
.L597:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L593
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L593
	chi	%r1,43
	je	.L594
	chi	%r1,45
	je	.L595
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L604
	lr	%r3,%r2
	lhi	%r12,0
.L598:
	lhi	%r2,0
.L601:
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
	jle	.L601
	ltr	%r12,%r12
	jne	.L592
	lr	%r2,%r5
	sr	%r2,%r1
.L592:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L593:
	.cfi_restore_state
	ahi	%r2,1
	j	.L597
.L595:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	lr	%r3,%r2
	lhi	%r12,1
	clr	%r11,%r1
	jle	.L598
.L604:
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
.L594:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L604
	lhi	%r12,0
	j	.L598
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
.L624:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L618
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L618
	chi	%r3,43
	je	.L619
	chi	%r3,45
	jne	.L640
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L629
	lhi	%r2,1
.L622:
	lhi	%r10,0
	lhi	%r11,0
.L626:
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
	jle	.L626
	ltr	%r2,%r2
	jne	.L617
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L617:
	lr	%r2,%r10
	lr	%r3,%r11
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
.L618:
	.cfi_restore_state
	ahi	%r2,1
	j	.L624
.L640:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L629
	lr	%r3,%r2
	lhi	%r2,0
	j	.L622
.L619:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L622
.L629:
	lhi	%r10,0
	lhi	%r11,0
	lr	%r2,%r10
	lr	%r3,%r11
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
	.align	16
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
	je	.L643
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	j	.L646
.L656:
	je	.L642
	ahi	%r12,-1
	ar	%r11,%r8
	sr	%r12,%r10
	lr	%r9,%r11
	ltr	%r12,%r12
	je	.L643
.L646:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r8
	lr	%r2,%r7
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L656
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L646
.L643:
	lhi	%r11,0
.L642:
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
	.align	16
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
	je	.L663
.L671:
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
	je	.L658
	jle	.L661
	ar	%r12,%r8
	ahi	%r11,-1
	lr	%r9,%r12
	sra	%r11,1
	jne	.L671
.L663:
	lhi	%r12,0
.L658:
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
.L661:
	.cfi_restore_state
	ltr	%r10,%r10
	je	.L663
	lr	%r11,%r10
	j	.L671
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
	jl	.L681
.L678:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L681:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L678
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
	jl	.L694
.L691:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L694:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L691
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
	.align	16
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	j	.L709
.L710:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L709:
	icm	%r1,15,0(%r2)
	jne	.L710
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
	je	.L713
	j	.L714
.L715:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L714
.L713:
	ltr	%r4,%r4
	jne	.L715
.L714:
	cr	%r4,%r5
	jl	.L719
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L719:
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
.L724:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L724
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
	je	.L731
.L730:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L730
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L731:
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
	je	.L741
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L757
.L744:
	srl	%r4,1
.L735:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L737
	ltr	%r0,%r0
	je	.L737
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L737
	ltr	%r5,%r5
	je	.L737
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L735
.L741:
	lhi	%r2,0
	br	%r14
.L737:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L758
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L757:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L737
	ltr	%r1,%r1
	je	.L737
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L744
	j	.L741
.L758:
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
	je	.L764
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L771
	chi	%r5,1
	je	.L782
	chi	%r5,2
	je	.L783
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L783:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L782:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L764
.L771:
	srl	%r1,2
	lr	%r0,%r1
.L761:
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
	brct	%r0,.L761
.L764:
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
	je	.L803
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L810
	chi	%r1,1
	je	.L821
	chi	%r1,2
	je	.L822
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L829
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L822:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L829
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L821:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L829
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L803
.L810:
	srl	%r5,2
.L797:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L829
	l	%r1,4(%r2)
	ahi	%r3,4
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L829
	l	%r1,8(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L829
	l	%r1,12(%r2)
	lr	%r3,%r4
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L829
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L797
.L803:
	lhi	%r2,0
	br	%r14
.L829:
	c	%r1,0(%r3)
	jl	.L833
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L833:
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
	stm	%r12,%r15,80(%r15)
	.cfi_offset 12, -16
	.cfi_offset 13, -12
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-16
	.cfi_def_cfa_offset 112
	lr	%r12,%r2
	ltr	%r4,%r4
	je	.L836
	sll	%r4,2
	brasl	%r14,memcpy
.L836:
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
	.align	16
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
.LFB65:
	.cfi_startproc
	stm	%r11,%r13,84(%r15)
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L899
	cr	%r2,%r3
	je	.L850
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L898
	ltr	%r4,%r4
	je	.L850
	l	%r4,.L900-.L899(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L860
	chi	%r5,1
	je	.L876
	chi	%r5,2
	je	.L877
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	ahi	%r1,-4
.L877:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
.L876:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L850
.L860:
	srl	%r4,2
	chi	%r4,2
	jle	.L895
	ahi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
.L847:
	lr	%r5,%r1
	ahi	%r5,-12
	lr	%r12,%r1
	ahi	%r12,-8
	lr	%r11,%r1
	ahi	%r11,-4
	ahi	%r1,-16
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	brct	%r4,.L847
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
.L850:
	lm	%r11,%r13,84(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L898:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L850
	lhi	%r11,3
	nr	%r11,%r4
	je	.L869
	chi	%r11,1
	je	.L874
	chi	%r11,2
	je	.L875
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L875:
	l	%r12,0(%r5,%r3)
	ahi	%r1,-1
	st	%r12,0(%r5,%r2)
	ahi	%r5,4
.L874:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L850
.L869:
	srl	%r4,2
	chi	%r4,2
	jle	.L896
	ahi	%r4,-1
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
.L845:
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	ahi	%r5,16
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	brct	%r4,.L845
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	j	.L850
.L896:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L896
	j	.L850
.L895:
	l	%r5,0(%r1,%r3)
	lr	%r11,%r1
	st	%r5,0(%r1,%r2)
	ahi	%r11,-4
	l	%r12,0(%r11,%r3)
	lr	%r5,%r1
	st	%r12,0(%r11,%r2)
	lr	%r11,%r1
	ahi	%r11,-8
	l	%r0,0(%r11,%r3)
	ahi	%r5,-12
	st	%r0,0(%r11,%r2)
	l	%r12,0(%r5,%r3)
	ahi	%r1,-16
	st	%r12,0(%r5,%r2)
	brct	%r4,.L895
	j	.L850
	.section	.rodata
	.align	8
.L899:
.L900:
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
	je	.L912
	chi	%r0,1
	je	.L916
	chi	%r0,2
	je	.L917
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L917:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L916:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L912:
	srl	%r4,2
	chi	%r4,2
	jle	.L927
	ahi	%r4,-1
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
.L903:
	ahi	%r1,16
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	brct	%r4,.L903
	br	%r14
.L927:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L927
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
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	jhe	.L930
	ltr	%r4,%r4
	je	.L929
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r11,%r4
	ahi	%r11,-1
	lhi	%r12,3
	lr	%r1,%r4
	nr	%r12,%r4
	je	.L961
	chi	%r12,1
	je	.L983
	chi	%r12,2
	jne	.L1026
.L984:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L983:
	ic	%r11,0(%r4,%r2)
	stc	%r11,0(%r4,%r3)
	brct	%r4,.L961
.L929:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L930:
	.cfi_restore_state
	je	.L929
	ltr	%r4,%r4
	je	.L929
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L940
	lr	%r0,%r3
	lhi	%r11,3
	or	%r0,%r2
	nr	%r0,%r11
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L940
	lr	%r12,%r2
	ahi	%r12,1
	lr	%r1,%r3
	lhi	%r5,2
	sr	%r1,%r12
	clr	%r1,%r5
	jle	.L940
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r11,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r11,%r5
	je	.L979
	chi	%r11,1
	je	.L985
	chi	%r11,2
	je	.L986
	l	%r12,0(%r2)
	lhi	%r1,4
	st	%r12,0(%r3)
.L986:
	l	%r11,0(%r1,%r2)
	st	%r11,0(%r1,%r3)
	ahi	%r1,4
.L985:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1008
.L979:
	srl	%r5,2
	chi	%r5,2
	jle	.L1023
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
.L934:
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	brct	%r5,.L934
	l	%r5,4(%r1,%r2)
	st	%r5,4(%r1,%r3)
	l	%r5,8(%r1,%r2)
	st	%r5,8(%r1,%r3)
	l	%r5,12(%r1,%r2)
	st	%r5,12(%r1,%r3)
	ahi	%r1,16
.L1008:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L929
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L929
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L929
	mvc	2(1,%r3),2(%r2)
	j	.L929
.L961:
	srl	%r1,2
	chi	%r1,2
	jle	.L1021
	ahi	%r1,-1
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
.L932:
	lr	%r5,%r4
	ahi	%r5,-3
	lr	%r12,%r4
	ahi	%r12,-2
	lr	%r11,%r4
	ahi	%r11,-1
	ahi	%r4,-4
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r1,.L932
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
	j	.L929
.L1021:
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
	brct	%r1,.L1021
	j	.L929
.L1026:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	lr	%r4,%r11
	j	.L984
.L1023:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r2)
	st	%r11,4(%r1,%r3)
	l	%r12,8(%r1,%r2)
	st	%r12,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	brct	%r5,.L1023
	j	.L1008
.L940:
	lhi	%r12,3
	lhi	%r1,0
	lr	%r11,%r4
	nr	%r12,%r4
	je	.L970
	chi	%r12,1
	je	.L987
	chi	%r12,2
	je	.L988
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L988:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L987:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L929
.L970:
	lr	%r4,%r11
	srl	%r4,2
	chi	%r4,2
	jle	.L1022
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
.L937:
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	brct	%r4,.L937
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	j	.L929
.L1022:
	ic	%r11,0(%r1,%r2)
	stc	%r11,0(%r1,%r3)
	ic	%r12,1(%r1,%r2)
	stc	%r12,1(%r1,%r3)
	ic	%r0,2(%r1,%r2)
	stc	%r0,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L1022
	j	.L929
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
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
	lm	%r12,%r13,88(%r15)
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
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
	lm	%r12,%r13,88(%r15)
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
	larl	%r5,.L1044
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1045-.L1044(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1044:
.L1045:
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
	larl	%r5,.L1048
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1049-.L1048(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1048:
.L1049:
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
	larl	%r5,.L1056
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L1057-.L1056(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1056:
.L1057:
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
	jne	.L1065
	tml	%r2,2
	jne	.L1066
	tml	%r2,4
	jne	.L1067
	tml	%r2,8
	jne	.L1068
	tml	%r2,16
	jne	.L1069
	tml	%r2,32
	jne	.L1070
	tml	%r2,64
	jne	.L1071
	tml	%r2,128
	jne	.L1072
	tml	%r2,256
	jne	.L1073
	tml	%r2,512
	jne	.L1074
	tml	%r2,1024
	jne	.L1075
	tml	%r2,2048
	jne	.L1076
	tml	%r2,4096
	jne	.L1077
	tml	%r2,8192
	jne	.L1078
	tml	%r2,16384
	jne	.L1079
	tml	%r2,32768
	jne	.L1080
	tmh	%r2,1
	jne	.L1081
	tmh	%r2,2
	jne	.L1082
	tmh	%r2,4
	jne	.L1083
	tmh	%r2,8
	jne	.L1084
	tmh	%r2,16
	jne	.L1085
	tmh	%r2,32
	jne	.L1086
	tmh	%r2,64
	jne	.L1087
	tmh	%r2,128
	jne	.L1088
	tmh	%r2,256
	jne	.L1089
	tmh	%r2,512
	jne	.L1090
	tmh	%r2,1024
	jne	.L1091
	tmh	%r2,2048
	jne	.L1092
	tmh	%r2,4096
	jne	.L1093
	tmh	%r2,8192
	jne	.L1094
	tmh	%r2,16384
	jne	.L1095
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L1065:
	lhi	%r2,1
	br	%r14
.L1066:
	lhi	%r2,2
	br	%r14
.L1077:
	lhi	%r2,13
	br	%r14
.L1093:
	lhi	%r2,29
	br	%r14
.L1067:
	lhi	%r2,3
	br	%r14
.L1068:
	lhi	%r2,4
	br	%r14
.L1069:
	lhi	%r2,5
	br	%r14
.L1070:
	lhi	%r2,6
	br	%r14
.L1071:
	lhi	%r2,7
	br	%r14
.L1072:
	lhi	%r2,8
	br	%r14
.L1073:
	lhi	%r2,9
	br	%r14
.L1074:
	lhi	%r2,10
	br	%r14
.L1075:
	lhi	%r2,11
	br	%r14
.L1076:
	lhi	%r2,12
	br	%r14
.L1078:
	lhi	%r2,14
	br	%r14
.L1079:
	lhi	%r2,15
	br	%r14
.L1080:
	lhi	%r2,16
	br	%r14
.L1081:
	lhi	%r2,17
	br	%r14
.L1082:
	lhi	%r2,18
	br	%r14
.L1083:
	lhi	%r2,19
	br	%r14
.L1084:
	lhi	%r2,20
	br	%r14
.L1085:
	lhi	%r2,21
	br	%r14
.L1086:
	lhi	%r2,22
	br	%r14
.L1087:
	lhi	%r2,23
	br	%r14
.L1088:
	lhi	%r2,24
	br	%r14
.L1089:
	lhi	%r2,25
	br	%r14
.L1090:
	lhi	%r2,26
	br	%r14
.L1091:
	lhi	%r2,27
	br	%r14
.L1092:
	lhi	%r2,28
	br	%r14
.L1094:
	lhi	%r2,30
	br	%r14
.L1095:
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
	je	.L1102
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1101:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L1101
	br	%r14
.L1102:
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
	larl	%r5,.L1112
	keb	%f0,.L1113-.L1112(%r5)
	lhi	%r2,1
	blr	%r14
	keb	%f0,.L1114-.L1112(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1112:
.L1114:
	.long	2139095039
.L1113:
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
	larl	%r5,.L1120
	kdb	%f0,.L1121-.L1120(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L1122-.L1120(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1120:
.L1122:
	.long	2146435071
	.long	-1
.L1121:
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
	larl	%r5,.L1128
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L1129-.L1128(%r5)
	ld	%f3,.L1129-.L1128+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L1130-.L1128(%r5)
	ld	%f3,.L1130-.L1128+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1128:
.L1130:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1129:
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
	larl	%r5,.L1149
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1147
	le	%f1,.L1150-.L1149(%r5)
.L1135:
	tml	%r2,1
	je	.L1136
.L1137:
	meebr	%f0,%f1
.L1136:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L1137
.L1148:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1137
	j	.L1148
.L1147:
	le	%f1,.L1151-.L1149(%r5)
	j	.L1135
	.section	.rodata
	.align	8
.L1149:
.L1151:
	.long	1056964608
.L1150:
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
	larl	%r5,.L1168
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1166
	ld	%f1,.L1169-.L1168(%r5)
.L1154:
	tml	%r2,1
	je	.L1155
.L1156:
	mdbr	%f0,%f1
.L1155:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L1156
.L1167:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1156
	j	.L1167
.L1166:
	ld	%f1,.L1170-.L1168(%r5)
	j	.L1154
	.section	.rodata
	.align	8
.L1168:
.L1170:
	.long	1071644672
	.long	0
.L1169:
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
	larl	%r5,.L1187
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1172
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1172
	ltr	%r4,%r4
	jl	.L1185
	ld	%f0,.L1188-.L1187(%r5)
	ld	%f2,.L1188-.L1187+8(%r5)
.L1173:
	tml	%r4,1
	je	.L1174
.L1175:
	mxbr	%f1,%f0
.L1174:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1172
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L1175
.L1186:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L1175
	j	.L1186
.L1172:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1185:
	ld	%f0,.L1189-.L1187(%r5)
	ld	%f2,.L1189-.L1187+8(%r5)
	j	.L1173
	.section	.rodata
	.align	8
.L1187:
.L1189:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1188:
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
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1198
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1198
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1233
	chi	%r12,1
	je	.L1237
	chi	%r12,2
	je	.L1238
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1238:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L1237:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1261
.L1233:
	srl	%r5,2
	chi	%r5,2
	jle	.L1271
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L1193:
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
	brct	%r5,.L1193
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
.L1261:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L1191
	xc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L1191
	xc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L1191
	xc	2(1,%r5),2(%r3)
.L1191:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1271:
	.cfi_restore_state
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
	brct	%r5,.L1271
	j	.L1261
.L1198:
	lhi	%r12,7
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r12,%r4
	je	.L1220
	chi	%r12,1
	je	.L1239
	chi	%r12,2
	je	.L1240
	chi	%r12,3
	je	.L1241
	chi	%r12,4
	je	.L1242
	chi	%r12,5
	je	.L1243
	chi	%r12,6
	je	.L1244
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1244:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1243:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1242:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1241:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1240:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1239:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1191
.L1220:
	lr	%r4,%r5
	srl	%r4,3
	chi	%r4,2
	jle	.L1270
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
.L1195:
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
	brct	%r4,.L1195
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
	j	.L1191
.L1270:
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
	brct	%r4,.L1270
	j	.L1191
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
	je	.L1278
.L1279:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1279
.L1278:
	ltr	%r4,%r4
	je	.L1281
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1302
.L1290:
	srl	%r4,1
.L1280:
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
	brct	%r4,.L1280
.L1281:
	mvi	0(%r1),0
	br	%r14
.L1302:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1290
	j	.L1281
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
	je	.L1316
	chi	%r5,1
	je	.L1327
	chi	%r5,2
	je	.L1328
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1328:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1327:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1316:
	srl	%r4,2
.L1305:
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
	brct	%r4,.L1305
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
	je	.L1342
.L1348:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1341
.L1340:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1341:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1340
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1348
.L1342:
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
	lhi	%r5,0
	j	.L1353
.L1356:
	lr	%r2,%r1
	ahi	%r1,1
	tml	%r4,255
	lr	%r5,%r2
	ber	%r14
.L1353:
	ic	%r4,0(%r1)
	lhi	%r2,255
	nr	%r2,%r4
	cr	%r2,%r3
	je	.L1356
	ahi	%r1,1
	lr	%r2,%r5
	tml	%r4,255
	lr	%r5,%r2
	jne	.L1353
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
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	icm	%r10,1,0(%r3)
	je	.L1358
	lr	%r11,%r3
.L1360:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1360
	slr	%r11,%r3
	jhe	.L1358
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1378
.L1381:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1380
.L1378:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1381
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1376
.L1364:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1358
.L1365:
	ahi	%r2,1
	j	.L1378
.L1376:
	lhi	%r8,255
	nr	%r1,%r8
	nr	%r4,%r8
	cr	%r1,%r4
	jne	.L1365
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1382
	icm	%r4,1,1(%r12)
	je	.L1365
	lr	%r12,%r8
	brct	%r9,.L1376
	j	.L1364
.L1380:
	lhi	%r2,0
.L1358:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1382:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1365
	j	.L1358
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
	larl	%r5,.L1396
	kdb	%f0,.L1397-.L1396(%r5)
	jl	.L1395
	jnh	.L1388
	kdb	%f2,.L1397-.L1396(%r5)
	jl	.L1387
.L1388:
	br	%r14
.L1395:
	kdb	%f2,.L1397-.L1396(%r5)
	jnh	.L1388
.L1387:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1396:
.L1397:
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
	jl	.L1407
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1407
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1404
.L1408:
	lr	%r2,%r5
.L1400:
	clr	%r3,%r2
	jl	.L1409
.L1404:
	lr	%r5,%r2
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1408
	chi	%r0,1
	je	.L1398
.L1403:
	lr	%r12,%r0
	lhi	%r10,3
	ahi	%r12,-1
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1419
	chi	%r10,1
	je	.L1429
	chi	%r10,2
	jne	.L1445
.L1430:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1436
	ahi	%r1,1
.L1429:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1436
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1398
.L1419:
	srl	%r12,2
.L1401:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1436
	ic	%r8,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1436
	ic	%r8,2(%r1,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1436
	ic	%r8,3(%r1,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1436
	ahi	%r1,4
	brct	%r12,.L1401
.L1398:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1445:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	je	.L1430
.L1436:
	clr	%r3,%r5
	jl	.L1409
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1400
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1403
.L1409:
	lhi	%r2,0
	lm	%r8,%r12,76(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1407:
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
	je	.L1448
	brasl	%r14,memmove
.L1448:
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
	.align	16
.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	larl	%r5,.L1481
	kdb	%f0,.L1482-.L1481(%r5)
	jl	.L1477
	kdb	%f0,.L1483-.L1481(%r5)
	jnhe	.L1478
	lhi	%r3,0
.L1457:
	lhi	%r0,0
.L1463:
	mdb	%f0,.L1484-.L1481(%r5)
	ahi	%r0,1
	kdb	%f0,.L1483-.L1481(%r5)
	jhe	.L1463
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1480:
	lcdbr	%f0,%f0
	br	%r14
.L1478:
	kdb	%f0,.L1484-.L1481(%r5)
	jnl	.L1460
	cdb	%f0,.L1482-.L1481(%r5)
	jne	.L1469
.L1460:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1477:
	lcdbr	%f2,%f0
	kdb	%f0,.L1485-.L1481(%r5)
	jnle	.L1479
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1457
.L1479:
	kdb	%f0,.L1486-.L1481(%r5)
	jnh	.L1460
	lhi	%r3,1
.L1458:
	ldr	%f0,%f2
	lhi	%r0,0
.L1465:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1484-.L1481(%r5)
	jl	.L1465
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1480
	br	%r14
.L1469:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1458
	.section	.rodata
	.align	8
.L1481:
.L1486:
	.long	-1075838976
	.long	0
.L1485:
	.long	-1074790400
	.long	0
.L1484:
	.long	1071644672
	.long	0
.L1483:
	.long	1072693248
	.long	0
.L1482:
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
	je	.L1491
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
.L1490:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1493
	ahi	%r2,-1
.L1493:
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
	jne	.L1490
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
.L1491:
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r0,%r2
	clr	%r3,%r2
	jhe	.L1744
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L1741
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L1504
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L1741
.L1506:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1504
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L1709
	lr	%r2,%r0
.L1505:
	ltr	%r4,%r4
	jne	.L1499
	lr	%r2,%r11
.L1499:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1709:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1741
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1504
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1741
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1504
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L1506
.L1741:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L1636
	lr	%r2,%r0
.L1636:
	clr	%r0,%r3
	jl	.L1637
	lr	%r11,%r12
.L1638:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L1639
	j	.L1505
.L1504:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L1642
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L1509
	lr	%r2,%r0
.L1509:
	clr	%r0,%r1
	jl	.L1510
	lr	%r11,%r5
.L1511:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L1639:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L1513
	lr	%r1,%r2
.L1513:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L1515
	lhi	%r0,0
.L1515:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1517
	lr	%r1,%r2
.L1517:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1519
	lhi	%r5,0
.L1519:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1521
	lr	%r1,%r2
.L1521:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1523
	lhi	%r5,0
.L1523:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1525
	lr	%r1,%r2
.L1525:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1527
	lhi	%r5,0
.L1527:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1529
	lr	%r1,%r2
.L1529:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1531
	lhi	%r5,0
.L1531:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1533
	lr	%r1,%r2
.L1533:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1535
	lhi	%r5,0
.L1535:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L1505
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
.L1539:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L1505
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
.L1543:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L1505
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
	je	.L1750
.L1547:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1751
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1752
.L1551:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1753
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1754
.L1555:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1755
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1559
.L1767:
	lhi	%r5,0
.L1559:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1561
	lr	%r1,%r2
.L1561:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1563
	lhi	%r5,0
.L1563:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1565
	lr	%r1,%r2
.L1565:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1567
	lhi	%r5,0
.L1567:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1569
	lr	%r1,%r2
.L1569:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1571
	lhi	%r5,0
.L1571:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1573
	lr	%r1,%r2
.L1573:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1575
	lhi	%r5,0
.L1575:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1577
	lr	%r1,%r2
.L1577:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1579
	lhi	%r5,0
.L1579:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1581
	lr	%r1,%r2
.L1581:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1583
	lhi	%r5,0
.L1583:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1756
.L1585:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1757
.L1587:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1758
.L1589:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1759
.L1591:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1760
.L1593:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1761
.L1595:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1762
.L1597:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1763
.L1599:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1764
.L1601:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1765
.L1603:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1766
.L1605:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1607
	lhi	%r5,0
.L1607:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1609
	lr	%r1,%r2
.L1609:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1611
	lhi	%r5,0
.L1611:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1613
	lr	%r1,%r2
.L1613:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1615
	lhi	%r5,0
.L1615:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1617
	lr	%r1,%r2
.L1617:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1619
	lhi	%r5,0
.L1619:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1621
	lr	%r1,%r2
.L1621:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1623
	lhi	%r5,0
.L1623:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1625
	lr	%r1,%r2
.L1625:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1627
	lhi	%r5,0
.L1627:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L1505
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1629
	lr	%r1,%r2
.L1629:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1631
	lhi	%r5,0
.L1631:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L1505
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L1633
	lr	%r2,%r1
.L1633:
	or	%r11,%r3
	j	.L1505
.L1510:
	lhi	%r11,0
	j	.L1511
.L1746:
	lhi	%r5,0
	j	.L1539
.L1745:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1539
	j	.L1746
.L1748:
	lhi	%r5,0
	j	.L1543
.L1747:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1543
	j	.L1748
.L1637:
	lhi	%r11,0
	j	.L1638
.L1750:
	lhi	%r5,0
	j	.L1547
.L1749:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1547
	j	.L1750
.L1752:
	lhi	%r5,0
	j	.L1551
.L1751:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1551
	j	.L1752
.L1754:
	lhi	%r5,0
	j	.L1555
.L1753:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1555
	j	.L1754
.L1755:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1559
	j	.L1767
.L1757:
	lhi	%r5,0
	j	.L1587
.L1756:
	lr	%r1,%r2
	j	.L1585
.L1759:
	lhi	%r5,0
	j	.L1591
.L1758:
	lr	%r1,%r2
	j	.L1589
.L1761:
	lhi	%r5,0
	j	.L1595
.L1760:
	lr	%r1,%r2
	j	.L1593
.L1763:
	lhi	%r5,0
	j	.L1599
.L1762:
	lr	%r1,%r2
	j	.L1597
.L1765:
	lhi	%r5,0
	j	.L1603
.L1764:
	lr	%r1,%r2
	j	.L1601
.L1766:
	lr	%r1,%r2
	j	.L1605
.L1744:
	sr	%r2,%r3
	cr	%r3,%r0
	je	.L1502
	lr	%r2,%r0
.L1502:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L1505
.L1642:
	lhi	%r11,0
	j	.L1505
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
	je	.L1771
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
.L1771:
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
	je	.L1786
.L1781:
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
.L1786:
	cr	%r5,%r1
	jne	.L1781
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
	je	.L1791
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
.L1791:
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
	jl	.L1887
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1996
.L1887:
	ltr	%r1,%r1
	je	.L1997
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	lr	%r8,%r1
	srl	%r5,3
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L1929
	chi	%r11,1
	je	.L1945
	chi	%r11,2
	je	.L1946
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1946:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r9,0(%r1,%r2)
	st	%r10,4(%r1,%r2)
	ahi	%r1,8
.L1945:
	l	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r0,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r8
	je	.L1973
.L1929:
	srl	%r5,2
	chi	%r5,2
	jle	.L1993
	ahi	%r5,-1
	l	%r10,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r10,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	l	%r11,12(%r1,%r3)
	st	%r10,8(%r1,%r2)
	st	%r11,12(%r1,%r2)
	l	%r10,16(%r1,%r3)
	l	%r11,20(%r1,%r3)
	st	%r10,16(%r1,%r2)
	st	%r11,20(%r1,%r2)
	l	%r10,24(%r1,%r3)
	l	%r11,28(%r1,%r3)
	st	%r10,24(%r1,%r2)
	st	%r11,28(%r1,%r2)
.L1890:
	ahi	%r1,32
	l	%r10,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r10,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	l	%r11,12(%r1,%r3)
	st	%r10,8(%r1,%r2)
	st	%r11,12(%r1,%r2)
	l	%r10,16(%r1,%r3)
	l	%r11,20(%r1,%r3)
	st	%r10,16(%r1,%r2)
	st	%r11,20(%r1,%r2)
	l	%r10,24(%r1,%r3)
	l	%r11,28(%r1,%r3)
	st	%r10,24(%r1,%r2)
	st	%r11,28(%r1,%r2)
	brct	%r5,.L1890
.L1973:
	clr	%r4,%r12
	jle	.L1883
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1947
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
	jle	.L1947
	lr	%r8,%r10
	lhi	%r5,3
	or	%r8,%r11
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1947
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1920
	chi	%r8,1
	je	.L1948
	chi	%r8,2
	jne	.L1998
.L1949:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1948:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1972
.L1920:
	srl	%r5,2
	chi	%r5,2
	jle	.L1992
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L1893:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L1893
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L1972:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1883
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1883
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1883
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1883:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1996:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1883
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1938
	chi	%r0,1
	je	.L1943
	chi	%r0,2
	je	.L1944
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1944:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L1943:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1883
.L1938:
	srl	%r4,2
	chi	%r4,2
	jle	.L1994
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1888:
	lr	%r5,%r1
	ahi	%r5,-3
	lr	%r12,%r1
	ahi	%r12,-2
	lr	%r11,%r1
	ahi	%r11,-1
	ahi	%r1,-4
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L1888
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
	j	.L1883
.L1993:
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
	brct	%r5,.L1993
	j	.L1973
.L1992:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1992
	j	.L1972
.L1998:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1949
.L1994:
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
	brct	%r4,.L1994
	j	.L1883
.L1997:
	ltr	%r4,%r4
	je	.L1883
.L1947:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1911
	chi	%r5,1
	je	.L1950
	chi	%r5,2
	jne	.L1999
.L1951:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1950:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1883
.L1911:
	srl	%r1,2
	chi	%r1,2
	jle	.L1991
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L1895:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L1895
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L1883
.L1991:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1991
	j	.L1883
.L1999:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1951
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r0,%r4
	clr	%r2,%r3
	srl	%r0,1
	jl	.L2005
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L2090
.L2005:
	ltr	%r0,%r0
	je	.L2004
	lr	%r1,%r0
	lhi	%r5,8
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L2008
	lr	%r11,%r3
	lhi	%r12,3
	or	%r11,%r2
	nr	%r11,%r12
	ahi	%r11,-1
	ltr	%r11,%r11
	jhe	.L2008
	lr	%r10,%r3
	ahi	%r10,2
	cr	%r2,%r10
	je	.L2008
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
	je	.L2038
	chi	%r10,1
	je	.L2054
	chi	%r10,2
	jne	.L2091
.L2055:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L2054:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L2073
.L2038:
	srl	%r5,2
	chi	%r5,2
	jle	.L2087
	ahi	%r5,-1
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
.L2009:
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	brct	%r5,.L2009
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2073:
	sll	%r11,1
	cr	%r0,%r11
	je	.L2004
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L2004:
	tml	%r4,1
	je	.L2001
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2001:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2090:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2001
	lhi	%r5,3
	nr	%r5,%r4
	je	.L2047
	chi	%r5,1
	je	.L2052
	chi	%r5,2
	je	.L2053
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2053:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L2052:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2001
.L2047:
	srl	%r4,2
	chi	%r4,2
	jle	.L2088
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2006:
	lr	%r5,%r1
	ahi	%r5,-3
	lr	%r12,%r1
	ahi	%r12,-2
	lr	%r11,%r1
	ahi	%r11,-1
	ahi	%r1,-4
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2006
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
	j	.L2001
.L2087:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2087
	j	.L2073
.L2091:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L2055
.L2088:
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
	brct	%r4,.L2088
	j	.L2001
.L2008:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r11,3
	srl	%r5,1
	lhi	%r1,0
	ahi	%r5,1
	nr	%r11,%r5
	je	.L2029
	chi	%r11,1
	je	.L2056
	chi	%r11,2
	jne	.L2092
.L2057:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L2056:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L2004
.L2029:
	srl	%r5,2
	chi	%r5,2
	jle	.L2086
	ahi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2011:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	ahi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brct	%r5,.L2011
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L2004
.L2086:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r11,6(%r1,%r3)
	sth	%r11,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L2086
	j	.L2004
.L2092:
	lh	%r12,0(%r3)
	lhi	%r1,2
	sth	%r12,0(%r2)
	j	.L2057
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
	jl	.L2098
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2207
.L2098:
	ltr	%r1,%r1
	je	.L2208
	sll	%r1,2
	lr	%r5,%r1
	ahi	%r5,-4
	lr	%r8,%r1
	srl	%r5,2
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L2140
	chi	%r11,1
	je	.L2156
	chi	%r11,2
	je	.L2157
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L2157:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L2156:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r8
	je	.L2184
.L2140:
	srl	%r5,2
	chi	%r5,2
	jle	.L2204
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L2101:
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	brct	%r5,.L2101
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2184:
	clr	%r4,%r12
	jle	.L2094
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L2158
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
	jle	.L2158
	lr	%r9,%r10
	lhi	%r5,3
	or	%r9,%r11
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L2158
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L2131
	chi	%r8,1
	je	.L2159
	chi	%r8,2
	jne	.L2209
.L2160:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L2159:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L2183
.L2131:
	srl	%r5,2
	chi	%r5,2
	jle	.L2203
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L2104:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L2104
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L2183:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L2094
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L2094
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L2094
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2094:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2207:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2094
	lhi	%r0,3
	nr	%r0,%r4
	je	.L2149
	chi	%r0,1
	je	.L2154
	chi	%r0,2
	je	.L2155
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2155:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L2154:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2094
.L2149:
	srl	%r4,2
	chi	%r4,2
	jle	.L2205
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2099:
	lr	%r5,%r1
	ahi	%r5,-3
	lr	%r12,%r1
	ahi	%r12,-2
	lr	%r11,%r1
	ahi	%r11,-1
	ahi	%r1,-4
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2099
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
	j	.L2094
.L2204:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2204
	j	.L2184
.L2203:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L2203
	j	.L2183
.L2209:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L2160
.L2205:
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
	brct	%r4,.L2205
	j	.L2094
.L2208:
	ltr	%r4,%r4
	je	.L2094
.L2158:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L2122
	chi	%r5,1
	je	.L2161
	chi	%r5,2
	jne	.L2210
.L2162:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L2161:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L2094
.L2122:
	srl	%r1,2
	chi	%r1,2
	jle	.L2202
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L2106:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L2106
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L2094
.L2202:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L2202
	j	.L2094
.L2210:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L2162
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
	larl	%r5,.L2217
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L2218-.L2217(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2217:
.L2218:
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
	larl	%r5,.L2222
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L2220
	adb	%f0,.L2223-.L2222(%r5)
.L2220:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2222:
.L2223:
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
	.align	16
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
	jne	.L2235
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2236
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2237
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2238
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2239
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2240
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2241
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2242
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2243
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2244
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2245
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2246
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2247
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2248
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2235:
	lhi	%r2,0
	br	%r14
.L2246:
	lhi	%r2,12
	br	%r14
.L2236:
	lhi	%r2,2
	br	%r14
.L2237:
	lhi	%r2,3
	br	%r14
.L2238:
	lhi	%r2,4
	br	%r14
.L2239:
	lhi	%r2,5
	br	%r14
.L2240:
	lhi	%r2,6
	br	%r14
.L2241:
	lhi	%r2,7
	br	%r14
.L2242:
	lhi	%r2,8
	br	%r14
.L2243:
	lhi	%r2,9
	br	%r14
.L2244:
	lhi	%r2,10
	br	%r14
.L2245:
	lhi	%r2,11
	br	%r14
.L2247:
	lhi	%r2,13
	br	%r14
.L2248:
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
	jne	.L2255
	tml	%r2,2
	jne	.L2256
	tml	%r2,4
	jne	.L2257
	tml	%r2,8
	jne	.L2258
	tml	%r2,16
	jne	.L2259
	tml	%r2,32
	jne	.L2260
	tml	%r2,64
	jne	.L2261
	tml	%r2,128
	jne	.L2262
	tml	%r2,256
	jne	.L2263
	tml	%r2,512
	jne	.L2264
	tml	%r2,1024
	jne	.L2265
	tml	%r2,2048
	jne	.L2266
	tml	%r2,4096
	jne	.L2267
	tml	%r2,8192
	jne	.L2268
	tml	%r2,16384
	jne	.L2269
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2255:
	lhi	%r2,0
	br	%r14
.L2256:
	lhi	%r2,1
	br	%r14
.L2267:
	lhi	%r2,12
	br	%r14
.L2257:
	lhi	%r2,2
	br	%r14
.L2258:
	lhi	%r2,3
	br	%r14
.L2259:
	lhi	%r2,4
	br	%r14
.L2260:
	lhi	%r2,5
	br	%r14
.L2261:
	lhi	%r2,6
	br	%r14
.L2262:
	lhi	%r2,7
	br	%r14
.L2263:
	lhi	%r2,8
	br	%r14
.L2264:
	lhi	%r2,9
	br	%r14
.L2265:
	lhi	%r2,10
	br	%r14
.L2266:
	lhi	%r2,11
	br	%r14
.L2268:
	lhi	%r2,13
	br	%r14
.L2269:
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
	larl	%r5,.L2281
	keb	%f0,.L2282-.L2281(%r5)
	jhe	.L2280
	cfebr	%r2,5,%f0
	br	%r14
.L2280:
	seb	%f0,.L2282-.L2281(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L2283-.L2281(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2281:
.L2282:
	.long	1191182336
.L2283:
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
	je	.L2291
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
.L2291:
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
	je	.L2387
	ltr	%r3,%r3
	je	.L2387
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
.L2387:
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r0,%r2
	clr	%r2,%r3
	jle	.L2724
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L2721
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L2484
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L2721
.L2486:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2484
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L2689
	lr	%r2,%r0
.L2485:
	ltr	%r4,%r4
	jne	.L2479
	lr	%r2,%r11
.L2479:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2689:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2721
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2484
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2721
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2484
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L2486
.L2721:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L2616
	lr	%r2,%r0
.L2616:
	clr	%r0,%r3
	jl	.L2617
	lr	%r11,%r12
.L2618:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L2619
	j	.L2485
.L2484:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L2622
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L2489
	lr	%r2,%r0
.L2489:
	clr	%r0,%r1
	jl	.L2490
	lr	%r11,%r5
.L2491:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L2619:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L2493
	lr	%r1,%r2
.L2493:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L2495
	lhi	%r0,0
.L2495:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2497
	lr	%r1,%r2
.L2497:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2499
	lhi	%r5,0
.L2499:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2501
	lr	%r1,%r2
.L2501:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2503
	lhi	%r5,0
.L2503:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2505
	lr	%r1,%r2
.L2505:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2507
	lhi	%r5,0
.L2507:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2509
	lr	%r1,%r2
.L2509:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2511
	lhi	%r5,0
.L2511:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2513
	lr	%r1,%r2
.L2513:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2515
	lhi	%r5,0
.L2515:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2725
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2726
.L2519:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2727
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2728
.L2523:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2729
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2730
.L2527:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2731
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2732
.L2531:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2733
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2734
.L2535:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2735
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2539
.L2747:
	lhi	%r5,0
.L2539:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2541
	lr	%r1,%r2
.L2541:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2543
	lhi	%r5,0
.L2543:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2545
	lr	%r1,%r2
.L2545:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2547
	lhi	%r5,0
.L2547:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2549
	lr	%r1,%r2
.L2549:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2551
	lhi	%r5,0
.L2551:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2553
	lr	%r1,%r2
.L2553:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2555
	lhi	%r5,0
.L2555:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2557
	lr	%r1,%r2
.L2557:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2559
	lhi	%r5,0
.L2559:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2561
	lr	%r1,%r2
.L2561:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2563
	lhi	%r5,0
.L2563:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2736
.L2565:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2737
.L2567:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2738
.L2569:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2739
.L2571:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2740
.L2573:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2741
.L2575:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2742
.L2577:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2743
.L2579:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2744
.L2581:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2745
.L2583:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2746
.L2585:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2587
	lhi	%r5,0
.L2587:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2589
	lr	%r1,%r2
.L2589:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2591
	lhi	%r5,0
.L2591:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2593
	lr	%r1,%r2
.L2593:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2595
	lhi	%r5,0
.L2595:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2597
	lr	%r1,%r2
.L2597:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2599
	lhi	%r5,0
.L2599:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2601
	lr	%r1,%r2
.L2601:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2603
	lhi	%r5,0
.L2603:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2605
	lr	%r1,%r2
.L2605:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2607
	lhi	%r5,0
.L2607:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L2485
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2609
	lr	%r1,%r2
.L2609:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2611
	lhi	%r5,0
.L2611:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L2485
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L2613
	lr	%r2,%r1
.L2613:
	or	%r11,%r3
	j	.L2485
.L2490:
	lhi	%r11,0
	j	.L2491
.L2726:
	lhi	%r5,0
	j	.L2519
.L2725:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2519
	j	.L2726
.L2728:
	lhi	%r5,0
	j	.L2523
.L2727:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2523
	j	.L2728
.L2617:
	lhi	%r11,0
	j	.L2618
.L2730:
	lhi	%r5,0
	j	.L2527
.L2729:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2527
	j	.L2730
.L2732:
	lhi	%r5,0
	j	.L2531
.L2731:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2531
	j	.L2732
.L2734:
	lhi	%r5,0
	j	.L2535
.L2733:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2535
	j	.L2734
.L2735:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2539
	j	.L2747
.L2737:
	lhi	%r5,0
	j	.L2567
.L2736:
	lr	%r1,%r2
	j	.L2565
.L2739:
	lhi	%r5,0
	j	.L2571
.L2738:
	lr	%r1,%r2
	j	.L2569
.L2741:
	lhi	%r5,0
	j	.L2575
.L2740:
	lr	%r1,%r2
	j	.L2573
.L2743:
	lhi	%r5,0
	j	.L2579
.L2742:
	lr	%r1,%r2
	j	.L2577
.L2745:
	lhi	%r5,0
	j	.L2583
.L2744:
	lr	%r1,%r2
	j	.L2581
.L2746:
	lr	%r1,%r2
	j	.L2585
.L2724:
	sr	%r2,%r3
	cr	%r0,%r3
	je	.L2482
	lr	%r2,%r0
.L2482:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L2485
.L2622:
	lhi	%r11,0
	j	.L2485
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
	jl	.L2752
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2752:
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
	jl	.L2757
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2757:
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
	jl	.L2867
	je	.L2771
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
.L2769:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2863
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
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L2770
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L2770
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
.L2770:
	ltr	%r5,%r5
	je	.L2763
	lcr	%r2,%r2
.L2763:
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
.L2867:
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r1,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r5,%r4
	lr	%r3,%r1
	sll	%r5,1
	sra	%r3,1
	je	.L2861
	lhi	%r0,1
	nr	%r3,%r0
	lcr	%r3,%r3
	nr	%r3,%r5
	ar	%r2,%r3
	lhi	%r5,1
	lr	%r3,%r4
	sra	%r1,2
	sll	%r3,2
	jne	.L2769
.L2861:
	lcr	%r2,%r2
	br	%r14
.L2771:
	lhi	%r2,0
	br	%r14
.L2863:
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
	stm	%r10,%r13,80(%r15)
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3126
	ltr	%r4,%r2
	jl	.L3124
	lhi	%r1,1
	lhi	%r5,0
.L2870:
	ltr	%r3,%r3
	jhe	.L2871
	lcr	%r3,%r3
	lr	%r5,%r1
.L2871:
	clr	%r4,%r3
	jle	.L2872
	lr	%r0,%r3
	sll	%r0,1
	clr	%r4,%r0
	jle	.L2873
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L3006
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L3007
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L3008
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L3009
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L3010
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L3011
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L3012
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L3013
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L3014
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L3015
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L3016
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L3017
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L3018
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L3019
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L3020
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L3021
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L3022
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L3023
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L3024
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L3025
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L3026
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L3027
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L3028
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L3029
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L3030
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L3031
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L3032
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L3033
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L3034
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L3125
.L2875:
	ltr	%r5,%r5
	je	.L2869
	lcr	%r2,%r2
.L2869:
	lm	%r10,%r13,80(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3124:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r1,0
	lhi	%r5,1
	j	.L2870
.L3022:
	l	%r0,.L3127-.L3126(%r13)
.L2874:
	lr	%r2,%r4
	sr	%r2,%r1
	clr	%r4,%r1
	jhe	.L2993
	lr	%r2,%r4
.L2993:
	lr	%r10,%r1
	lr	%r3,%r2
	srl	%r10,1
	sr	%r3,%r10
	clr	%r2,%r10
	jhe	.L2995
	lr	%r3,%r2
.L2995:
	lr	%r11,%r1
	lr	%r12,%r3
	srl	%r11,2
	sr	%r12,%r11
	clr	%r3,%r11
	jhe	.L2997
	lr	%r12,%r3
.L2997:
	clr	%r2,%r10
	jl	.L2998
	lr	%r2,%r0
	srl	%r2,1
.L2999:
	clr	%r4,%r1
	jl	.L3000
	lr	%r4,%r0
.L3001:
	or	%r2,%r4
	clr	%r3,%r11
	jl	.L3002
	lr	%r10,%r0
	srl	%r10,2
.L3003:
	or	%r2,%r10
	lr	%r4,%r0
	lr	%r11,%r1
	srl	%r4,3
	srl	%r11,3
	ltr	%r4,%r4
	je	.L2875
	lr	%r3,%r12
	sr	%r3,%r11
	clr	%r12,%r11
	jhe	.L2880
	lr	%r3,%r12
.L2880:
	clr	%r12,%r11
	jhe	.L2882
	lhi	%r4,0
.L2882:
	or	%r2,%r4
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,4
	srl	%r10,4
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2884
	lr	%r4,%r3
.L2884:
	clr	%r3,%r10
	jhe	.L2886
	lhi	%r12,0
.L2886:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,5
	srl	%r11,5
	ltr	%r10,%r10
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2888
	lr	%r3,%r4
.L2888:
	clr	%r4,%r11
	jhe	.L2890
	lhi	%r10,0
.L2890:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,6
	srl	%r11,6
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2892
	lr	%r4,%r3
.L2892:
	clr	%r3,%r11
	jhe	.L2894
	lhi	%r12,0
.L2894:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,7
	srl	%r10,7
	ltr	%r11,%r11
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2896
	lr	%r3,%r4
.L2896:
	clr	%r4,%r10
	jhe	.L2898
	lhi	%r11,0
.L2898:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,8
	srl	%r10,8
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2900
	lr	%r4,%r3
.L2900:
	clr	%r3,%r10
	jhe	.L2902
	lhi	%r12,0
.L2902:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,9
	srl	%r11,9
	ltr	%r10,%r10
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2904
	lr	%r3,%r4
.L2904:
	clr	%r4,%r11
	jhe	.L2906
	lhi	%r10,0
.L2906:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,10
	srl	%r11,10
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2908
	lr	%r4,%r3
.L2908:
	clr	%r3,%r11
	jhe	.L2910
	lhi	%r12,0
.L2910:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,11
	srl	%r10,11
	ltr	%r11,%r11
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2912
	lr	%r3,%r4
.L2912:
	clr	%r4,%r10
	jhe	.L2914
	lhi	%r11,0
.L2914:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,12
	srl	%r10,12
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2916
	lr	%r4,%r3
.L2916:
	clr	%r3,%r10
	jhe	.L2918
	lhi	%r12,0
.L2918:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,13
	srl	%r11,13
	ltr	%r10,%r10
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2920
	lr	%r3,%r4
.L2920:
	clr	%r4,%r11
	jhe	.L2922
	lhi	%r10,0
.L2922:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,14
	srl	%r11,14
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2924
	lr	%r4,%r3
.L2924:
	clr	%r3,%r11
	jhe	.L2926
	lhi	%r12,0
.L2926:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,15
	srl	%r10,15
	ltr	%r11,%r11
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2928
	lr	%r3,%r4
.L2928:
	clr	%r4,%r10
	jhe	.L2930
	lhi	%r11,0
.L2930:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,16
	srl	%r10,16
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2932
	lr	%r4,%r3
.L2932:
	clr	%r3,%r10
	jhe	.L2934
	lhi	%r12,0
.L2934:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,17
	srl	%r11,17
	ltr	%r10,%r10
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2936
	lr	%r3,%r4
.L2936:
	clr	%r4,%r11
	jhe	.L2938
	lhi	%r10,0
.L2938:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,18
	srl	%r11,18
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2940
	lr	%r4,%r3
.L2940:
	clr	%r3,%r11
	jhe	.L2942
	lhi	%r12,0
.L2942:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,19
	srl	%r10,19
	ltr	%r11,%r11
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2944
	lr	%r3,%r4
.L2944:
	clr	%r4,%r10
	jhe	.L2946
	lhi	%r11,0
.L2946:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,20
	srl	%r10,20
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2948
	lr	%r4,%r3
.L2948:
	clr	%r3,%r10
	jhe	.L2950
	lhi	%r12,0
.L2950:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,21
	srl	%r11,21
	ltr	%r10,%r10
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2952
	lr	%r3,%r4
.L2952:
	clr	%r4,%r11
	jhe	.L2954
	lhi	%r10,0
.L2954:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,22
	srl	%r11,22
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2956
	lr	%r4,%r3
.L2956:
	clr	%r3,%r11
	jhe	.L2958
	lhi	%r12,0
.L2958:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,23
	srl	%r10,23
	ltr	%r11,%r11
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2960
	lr	%r3,%r4
.L2960:
	clr	%r4,%r10
	jhe	.L2962
	lhi	%r11,0
.L2962:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,24
	srl	%r10,24
	ltr	%r12,%r12
	je	.L2875
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2964
	lr	%r4,%r3
.L2964:
	clr	%r3,%r10
	jhe	.L2966
	lhi	%r12,0
.L2966:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,25
	srl	%r11,25
	ltr	%r10,%r10
	je	.L2875
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2968
	lr	%r3,%r4
.L2968:
	clr	%r4,%r11
	jhe	.L2970
	lhi	%r10,0
.L2970:
	or	%r2,%r10
	lr	%r4,%r0
	lr	%r11,%r1
	srl	%r4,26
	srl	%r11,26
	ltr	%r4,%r4
	je	.L2875
	lr	%r12,%r3
	sr	%r12,%r11
	clr	%r3,%r11
	jhe	.L2972
	lr	%r12,%r3
.L2972:
	clr	%r3,%r11
	jhe	.L2974
	lhi	%r4,0
.L2974:
	or	%r2,%r4
	lr	%r3,%r0
	lr	%r10,%r1
	srl	%r3,27
	srl	%r10,27
	ltr	%r3,%r3
	je	.L2875
	lr	%r4,%r12
	sr	%r4,%r10
	clr	%r12,%r10
	jhe	.L2976
	lr	%r4,%r12
.L2976:
	clr	%r12,%r10
	jhe	.L2978
	lhi	%r3,0
.L2978:
	or	%r2,%r3
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,28
	srl	%r11,28
	ltr	%r12,%r12
	je	.L2875
	lr	%r10,%r4
	sr	%r10,%r11
	clr	%r4,%r11
	jhe	.L2980
	lr	%r10,%r4
.L2980:
	clr	%r4,%r11
	jhe	.L2982
	lhi	%r12,0
.L2982:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r3,%r1
	srl	%r11,29
	srl	%r3,29
	ltr	%r11,%r11
	je	.L2875
	lr	%r4,%r10
	sr	%r4,%r3
	clr	%r10,%r3
	jhe	.L2984
	lr	%r4,%r10
.L2984:
	clr	%r10,%r3
	jhe	.L2986
	lhi	%r11,0
.L2986:
	or	%r2,%r11
	lr	%r3,%r0
	lr	%r10,%r1
	srl	%r3,30
	srl	%r10,30
	ltr	%r3,%r3
	je	.L2875
	lr	%r12,%r4
	sr	%r12,%r10
	clr	%r4,%r10
	jhe	.L2988
	lr	%r12,%r4
.L2988:
	clr	%r4,%r10
	jhe	.L2990
	lhi	%r3,0
.L2990:
	or	%r2,%r3
	srl	%r1,31
	c	%r0,.L3128-.L3126(%r13)
	je	.L2875
	slr	%r12,%r1
	lhi	%r1,0
	alcr	%r1,%r1
	or	%r2,%r1
	j	.L2875
.L3002:
	lhi	%r10,0
	j	.L3003
.L3000:
	lhi	%r4,0
	j	.L3001
.L2998:
	lhi	%r2,0
	j	.L2999
.L2872:
	xr	%r4,%r3
	lpr	%r2,%r4
	ahi	%r2,-1
	srl	%r2,31
	j	.L2875
.L3007:
	lhi	%r0,8
	j	.L2874
.L3006:
	lhi	%r0,4
	j	.L2874
.L3008:
	lhi	%r0,16
	j	.L2874
.L3009:
	lhi	%r0,32
	j	.L2874
.L3011:
	lhi	%r0,128
	j	.L2874
.L3010:
	lhi	%r0,64
	j	.L2874
.L3012:
	lhi	%r0,256
	j	.L2874
.L3013:
	lhi	%r0,512
	j	.L2874
.L3014:
	lhi	%r0,1024
	j	.L2874
.L3015:
	lhi	%r0,2048
	j	.L2874
.L3017:
	lhi	%r0,8192
	j	.L2874
.L3016:
	lhi	%r0,4096
	j	.L2874
.L3019:
	l	%r0,.L3129-.L3126(%r13)
	j	.L2874
.L3018:
	lhi	%r0,16384
	j	.L2874
.L3021:
	l	%r0,.L3130-.L3126(%r13)
	j	.L2874
.L3020:
	l	%r0,.L3131-.L3126(%r13)
	j	.L2874
.L3023:
	l	%r0,.L3132-.L3126(%r13)
	j	.L2874
.L3026:
	l	%r0,.L3133-.L3126(%r13)
	j	.L2874
.L3024:
	l	%r0,.L3134-.L3126(%r13)
	j	.L2874
.L3025:
	l	%r0,.L3135-.L3126(%r13)
	j	.L2874
.L3028:
	l	%r0,.L3136-.L3126(%r13)
	j	.L2874
.L3027:
	l	%r0,.L3137-.L3126(%r13)
	j	.L2874
.L3031:
	l	%r0,.L3138-.L3126(%r13)
	j	.L2874
.L3029:
	l	%r0,.L3139-.L3126(%r13)
	j	.L2874
.L3030:
	l	%r0,.L3140-.L3126(%r13)
	j	.L2874
.L3125:
	l	%r1,.L3141-.L3126(%r13)
	lr	%r0,%r1
	j	.L2874
.L3033:
	l	%r0,.L3142-.L3126(%r13)
	j	.L2874
.L3034:
	l	%r0,.L3128-.L3126(%r13)
	j	.L2874
.L3032:
	l	%r0,.L3143-.L3126(%r13)
	j	.L2874
.L2873:
	lr	%r10,%r4
	sr	%r10,%r0
	clr	%r4,%r0
	jhe	.L2877
	lr	%r10,%r4
.L2877:
	slr	%r10,%r3
	lhi	%r2,0
	lhi	%r3,0
	alcr	%r2,%r2
	slr	%r4,%r0
	alcr	%r3,%r3
	sll	%r3,1
	or	%r2,%r3
	j	.L2875
	.section	.rodata
	.align	8
.L3126:
.L3143:
	.long	268435456
.L3142:
	.long	536870912
.L3141:
	.long	-2147483648
.L3140:
	.long	67108864
.L3139:
	.long	33554432
.L3138:
	.long	134217728
.L3137:
	.long	8388608
.L3136:
	.long	16777216
.L3135:
	.long	2097152
.L3134:
	.long	1048576
.L3133:
	.long	4194304
.L3132:
	.long	524288
.L3131:
	.long	65536
.L3130:
	.long	131072
.L3129:
	.long	32768
.L3128:
	.long	1073741824
.L3127:
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3349
	ltr	%r1,%r2
	jl	.L3145
	lpr	%r2,%r3
	lhi	%r5,0
	clr	%r1,%r2
	jle	.L3347
.L3146:
	lr	%r4,%r2
	sll	%r4,1
	clr	%r4,%r1
	jhe	.L3153
	lr	%r3,%r2
	sll	%r3,2
	clr	%r3,%r1
	jhe	.L3228
	lr	%r3,%r2
	sll	%r3,3
	clr	%r3,%r1
	jhe	.L3229
	lr	%r3,%r2
	sll	%r3,4
	clr	%r3,%r1
	jhe	.L3230
	lr	%r3,%r2
	sll	%r3,5
	clr	%r3,%r1
	jhe	.L3231
	lr	%r3,%r2
	sll	%r3,6
	clr	%r3,%r1
	jhe	.L3232
	lr	%r3,%r2
	sll	%r3,7
	clr	%r3,%r1
	jhe	.L3233
	lr	%r3,%r2
	sll	%r3,8
	clr	%r3,%r1
	jhe	.L3234
	lr	%r3,%r2
	sll	%r3,9
	clr	%r3,%r1
	jhe	.L3235
	lr	%r3,%r2
	sll	%r3,10
	clr	%r3,%r1
	jhe	.L3236
	lr	%r3,%r2
	sll	%r3,11
	clr	%r3,%r1
	jhe	.L3237
	lr	%r3,%r2
	sll	%r3,12
	clr	%r3,%r1
	jhe	.L3238
	lr	%r3,%r2
	sll	%r3,13
	clr	%r3,%r1
	jhe	.L3239
	lr	%r3,%r2
	sll	%r3,14
	clr	%r3,%r1
	jhe	.L3240
	lr	%r3,%r2
	sll	%r3,15
	clr	%r3,%r1
	jhe	.L3241
	lr	%r3,%r2
	sll	%r3,16
	clr	%r3,%r1
	jhe	.L3242
	lr	%r3,%r2
	sll	%r3,17
	clr	%r3,%r1
	jhe	.L3243
	lr	%r3,%r2
	sll	%r3,18
	clr	%r3,%r1
	jhe	.L3244
	lr	%r3,%r2
	sll	%r3,19
	clr	%r3,%r1
	jhe	.L3245
	lr	%r3,%r2
	sll	%r3,20
	clr	%r1,%r3
	jle	.L3246
	lr	%r3,%r2
	sll	%r3,21
	clr	%r1,%r3
	jle	.L3247
	lr	%r3,%r2
	sll	%r3,22
	clr	%r1,%r3
	jle	.L3248
	lr	%r3,%r2
	sll	%r3,23
	clr	%r1,%r3
	jle	.L3249
	lr	%r3,%r2
	sll	%r3,24
	clr	%r1,%r3
	jle	.L3250
	lr	%r3,%r2
	sll	%r3,25
	clr	%r1,%r3
	jle	.L3251
	lr	%r3,%r2
	sll	%r3,26
	clr	%r1,%r3
	jle	.L3252
	lr	%r3,%r2
	sll	%r3,27
	clr	%r1,%r3
	jle	.L3253
	lr	%r3,%r2
	sll	%r3,28
	clr	%r1,%r3
	jle	.L3254
	lr	%r3,%r2
	sll	%r3,29
	clr	%r1,%r3
	jle	.L3255
	lr	%r3,%r2
	sll	%r3,30
	clr	%r1,%r3
	jle	.L3256
	sll	%r2,31
	lr	%r0,%r2
	lr	%r2,%r1
	clr	%r1,%r0
	jle	.L3348
.L3155:
	ltr	%r5,%r5
	je	.L3144
.L3152:
	lcr	%r2,%r2
.L3144:
	lm	%r12,%r13,88(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L3145:
	.cfi_restore_state
	lcr	%r1,%r1
	lpr	%r2,%r3
	lhi	%r5,1
	clr	%r2,%r1
	jl	.L3146
	lr	%r0,%r1
	sr	%r0,%r2
	cr	%r2,%r1
	jne	.L3150
	lr	%r2,%r0
	j	.L3152
.L3244:
	l	%r4,.L3350-.L3349(%r13)
.L3154:
	lr	%r2,%r1
	sr	%r2,%r3
	clr	%r1,%r3
	jl	.L3220
	lr	%r1,%r2
.L3220:
	lr	%r12,%r3
	lr	%r0,%r1
	srl	%r12,1
	sr	%r0,%r12
	clr	%r1,%r12
	jl	.L3222
	lr	%r1,%r0
.L3222:
	lr	%r2,%r3
	lr	%r12,%r1
	srl	%r2,2
	sr	%r12,%r2
	clr	%r1,%r2
	jl	.L3224
	lr	%r1,%r12
.L3224:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,3
	srl	%r0,3
	ltr	%r12,%r12
	je	.L3155
	lr	%r2,%r1
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3162
	lr	%r1,%r2
.L3162:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,4
	srl	%r0,4
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3164
	lr	%r1,%r2
.L3164:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,5
	srl	%r0,5
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3166
	lr	%r1,%r2
.L3166:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,6
	srl	%r0,6
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3168
	lr	%r1,%r2
.L3168:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,7
	srl	%r0,7
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3170
	lr	%r1,%r2
.L3170:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,8
	srl	%r0,8
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3172
	lr	%r1,%r2
.L3172:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,9
	srl	%r0,9
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3174
	lr	%r1,%r2
.L3174:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,10
	srl	%r0,10
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3176
	lr	%r1,%r2
.L3176:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,11
	srl	%r0,11
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3178
	lr	%r1,%r2
.L3178:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,12
	srl	%r0,12
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3180
	lr	%r1,%r2
.L3180:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,13
	srl	%r0,13
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3182
	lr	%r1,%r2
.L3182:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,14
	srl	%r0,14
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3184
	lr	%r1,%r2
.L3184:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,15
	srl	%r0,15
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3186
	lr	%r1,%r2
.L3186:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,16
	srl	%r0,16
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3188
	lr	%r1,%r2
.L3188:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,17
	srl	%r0,17
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3190
	lr	%r1,%r2
.L3190:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,18
	srl	%r0,18
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3192
	lr	%r1,%r2
.L3192:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,19
	srl	%r0,19
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3194
	lr	%r1,%r2
.L3194:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,20
	srl	%r0,20
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3196
	lr	%r1,%r2
.L3196:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,21
	srl	%r0,21
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3198
	lr	%r1,%r2
.L3198:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,22
	srl	%r0,22
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3200
	lr	%r1,%r2
.L3200:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,23
	srl	%r0,23
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3202
	lr	%r1,%r2
.L3202:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,24
	srl	%r0,24
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3204
	lr	%r1,%r2
.L3204:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,25
	srl	%r0,25
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3206
	lr	%r1,%r2
.L3206:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,26
	srl	%r0,26
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3208
	lr	%r1,%r2
.L3208:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,27
	srl	%r0,27
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3210
	lr	%r1,%r2
.L3210:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,28
	srl	%r0,28
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3212
	lr	%r1,%r2
.L3212:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,29
	srl	%r0,29
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3214
	lr	%r1,%r2
.L3214:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,30
	srl	%r0,30
	ltr	%r12,%r12
	je	.L3155
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3216
	lr	%r1,%r2
.L3216:
	srl	%r3,31
	lr	%r2,%r1
	c	%r4,.L3351-.L3349(%r13)
	je	.L3155
	sr	%r2,%r3
	clr	%r1,%r3
	jhe	.L3155
.L3346:
	lr	%r2,%r1
	j	.L3155
.L3228:
	lhi	%r4,4
	j	.L3154
.L3229:
	lhi	%r4,8
	j	.L3154
.L3230:
	lhi	%r4,16
	j	.L3154
.L3231:
	lhi	%r4,32
	j	.L3154
.L3233:
	lhi	%r4,128
	j	.L3154
.L3232:
	lhi	%r4,64
	j	.L3154
.L3234:
	lhi	%r4,256
	j	.L3154
.L3235:
	lhi	%r4,512
	j	.L3154
.L3236:
	lhi	%r4,1024
	j	.L3154
.L3237:
	lhi	%r4,2048
	j	.L3154
.L3239:
	lhi	%r4,8192
	j	.L3154
.L3238:
	lhi	%r4,4096
	j	.L3154
.L3347:
	lr	%r3,%r1
	sr	%r3,%r2
	cr	%r1,%r2
	jne	.L3147
	lr	%r2,%r3
	j	.L3144
.L3241:
	l	%r4,.L3352-.L3349(%r13)
	j	.L3154
.L3240:
	lhi	%r4,16384
	j	.L3154
.L3243:
	l	%r4,.L3353-.L3349(%r13)
	j	.L3154
.L3242:
	l	%r4,.L3354-.L3349(%r13)
	j	.L3154
.L3245:
	l	%r4,.L3355-.L3349(%r13)
	j	.L3154
.L3248:
	l	%r4,.L3356-.L3349(%r13)
	j	.L3154
.L3246:
	l	%r4,.L3357-.L3349(%r13)
	j	.L3154
.L3247:
	l	%r4,.L3358-.L3349(%r13)
	j	.L3154
.L3250:
	l	%r4,.L3359-.L3349(%r13)
	j	.L3154
.L3249:
	l	%r4,.L3360-.L3349(%r13)
	j	.L3154
.L3252:
	l	%r4,.L3361-.L3349(%r13)
	j	.L3154
.L3253:
	l	%r4,.L3362-.L3349(%r13)
	j	.L3154
.L3251:
	l	%r4,.L3363-.L3349(%r13)
	j	.L3154
.L3348:
	l	%r3,.L3364-.L3349(%r13)
	lr	%r4,%r3
	j	.L3154
.L3254:
	l	%r4,.L3365-.L3349(%r13)
	j	.L3154
.L3255:
	l	%r4,.L3366-.L3349(%r13)
	j	.L3154
.L3256:
	l	%r4,.L3351-.L3349(%r13)
	j	.L3154
.L3147:
	lr	%r2,%r1
	j	.L3144
.L3150:
	lr	%r2,%r1
	j	.L3152
.L3153:
	lr	%r12,%r1
	sr	%r12,%r4
	clr	%r1,%r4
	jl	.L3157
	lr	%r1,%r12
.L3157:
	lr	%r3,%r1
	sr	%r3,%r2
	clr	%r1,%r2
	jl	.L3346
	lr	%r2,%r3
	j	.L3155
	.section	.rodata
	.align	8
.L3349:
.L3366:
	.long	536870912
.L3365:
	.long	268435456
.L3364:
	.long	-2147483648
.L3363:
	.long	33554432
.L3362:
	.long	134217728
.L3361:
	.long	67108864
.L3360:
	.long	8388608
.L3359:
	.long	16777216
.L3358:
	.long	2097152
.L3357:
	.long	1048576
.L3356:
	.long	4194304
.L3355:
	.long	524288
.L3354:
	.long	65536
.L3353:
	.long	131072
.L3352:
	.long	32768
.L3351:
	.long	1073741824
.L3350:
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
	stm	%r10,%r13,80(%r15)
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3527
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L3525
	tml	%r3,32768
	jne	.L3372
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3445
	tml	%r1,32768
	jne	.L3445
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3447
	tml	%r1,32768
	jne	.L3447
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3449
	tml	%r1,32768
	jne	.L3449
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3451
	tml	%r1,32768
	jne	.L3451
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3453
	tml	%r1,32768
	jne	.L3453
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3455
	tml	%r1,32768
	jne	.L3455
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3457
	tml	%r1,32768
	jne	.L3457
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3459
	tml	%r1,32768
	jne	.L3459
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3461
	tml	%r1,32768
	jne	.L3461
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3463
	tml	%r1,32768
	jne	.L3463
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3465
	tml	%r1,32768
	jne	.L3465
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3467
	tml	%r1,32768
	jne	.L3467
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3469
	tml	%r1,32768
	jne	.L3469
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L3528-.L3527(%r13)
	clr	%r2,%r1
	jle	.L3471
	tml	%r1,32768
	jne	.L3471
	sll	%r3,15
	n	%r3,.L3528-.L3527(%r13)
	clr	%r2,%r3
	jle	.L3472
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L3526
.L3375:
	ltr	%r4,%r4
	je	.L3434
	lr	%r2,%r5
.L3434:
	n	%r2,.L3528-.L3527(%r13)
	lm	%r10,%r13,80(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3445:
	.cfi_restore_state
	lhi	%r12,2
.L3374:
	lr	%r3,%r5
	sr	%r3,%r1
	n	%r3,.L3528-.L3527(%r13)
	clr	%r5,%r1
	jhe	.L3441
	lr	%r3,%r5
.L3441:
	n	%r3,.L3528-.L3527(%r13)
	clr	%r5,%r1
	jl	.L3442
	lr	%r2,%r12
.L3443:
	lr	%r11,%r1
	lr	%r5,%r3
	srl	%r11,1
	sr	%r5,%r11
	n	%r5,.L3528-.L3527(%r13)
	lr	%r0,%r12
	clr	%r3,%r11
	sll	%r0,16
	srl	%r0,17
	jhe	.L3377
	lr	%r5,%r3
.L3377:
	n	%r5,.L3528-.L3527(%r13)
	clr	%r3,%r11
	jl	.L3378
	lr	%r10,%r0
.L3379:
	l	%r0,.L3528-.L3527(%r13)
	or	%r2,%r10
	nr	%r0,%r12
	lr	%r11,%r1
	srl	%r0,2
	srl	%r11,2
	ltr	%r0,%r0
	je	.L3375
	lr	%r3,%r5
	sr	%r3,%r11
	n	%r3,.L3528-.L3527(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3381
	lr	%r3,%r5
.L3381:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r3
	ltr	%r11,%r11
	jne	.L3383
	lhi	%r0,0
.L3383:
	or	%r0,%r2
	lr	%r11,%r0
	l	%r0,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r0,%r12
	lr	%r2,%r11
	srl	%r0,3
	srl	%r10,3
	ltr	%r0,%r0
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3385
	lr	%r2,%r5
.L3385:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3387
	lhi	%r0,0
.L3387:
	or	%r11,%r0
	l	%r0,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r0,%r12
	lr	%r2,%r11
	srl	%r0,4
	srl	%r10,4
	ltr	%r0,%r0
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3389
	lr	%r2,%r5
.L3389:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3391
	lhi	%r0,0
.L3391:
	or	%r0,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r0
	srl	%r11,5
	srl	%r10,5
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3393
	lr	%r2,%r5
.L3393:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3395
	lhi	%r11,0
.L3395:
	or	%r0,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r0
	srl	%r11,6
	srl	%r10,6
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3397
	lr	%r2,%r5
.L3397:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3399
	lhi	%r11,0
.L3399:
	or	%r0,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r0
	srl	%r11,7
	srl	%r10,7
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3401
	lr	%r2,%r5
.L3401:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3403
	lhi	%r11,0
.L3403:
	l	%r3,.L3528-.L3527(%r13)
	or	%r11,%r0
	nr	%r3,%r12
	lr	%r10,%r1
	srl	%r3,8
	lr	%r2,%r11
	srl	%r10,8
	ltr	%r3,%r3
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3405
	lr	%r2,%r5
.L3405:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3407
	lhi	%r3,0
.L3407:
	or	%r3,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,9
	srl	%r10,9
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3409
	lr	%r2,%r5
.L3409:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3411
	lhi	%r11,0
.L3411:
	or	%r3,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,10
	srl	%r10,10
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3413
	lr	%r2,%r5
.L3413:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3415
	lhi	%r11,0
.L3415:
	or	%r3,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,11
	srl	%r10,11
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3417
	lr	%r2,%r5
.L3417:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3419
	lhi	%r11,0
.L3419:
	or	%r3,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,12
	srl	%r10,12
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3421
	lr	%r2,%r5
.L3421:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3423
	lhi	%r11,0
.L3423:
	or	%r3,%r11
	l	%r11,.L3528-.L3527(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,13
	srl	%r10,13
	ltr	%r11,%r11
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3425
	lr	%r2,%r5
.L3425:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3427
	lhi	%r11,0
.L3427:
	l	%r0,.L3528-.L3527(%r13)
	or	%r3,%r11
	nr	%r0,%r12
	lr	%r10,%r1
	srl	%r0,14
	lr	%r2,%r3
	srl	%r10,14
	ltr	%r0,%r0
	je	.L3375
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3528-.L3527(%r13)
	lr	%r11,%r5
	slr	%r11,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3429
	lr	%r2,%r5
.L3429:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3431
	lhi	%r0,0
.L3431:
	or	%r3,%r0
	n	%r12,.L3528-.L3527(%r13)
	srl	%r1,15
	lr	%r2,%r3
	chi	%r12,16384
	je	.L3375
	l	%r11,.L3528-.L3527(%r13)
	lr	%r12,%r5
	sr	%r12,%r1
	nr	%r11,%r12
	lr	%r10,%r5
	lhi	%r2,0
	slr	%r10,%r1
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L3432
	lr	%r1,%r11
.L3433:
	l	%r5,.L3528-.L3527(%r13)
	or	%r2,%r3
	nr	%r5,%r1
	j	.L3375
.L3378:
	lhi	%r10,0
	j	.L3379
.L3442:
	lhi	%r2,0
	j	.L3443
.L3432:
	lr	%r1,%r5
	j	.L3433
.L3447:
	lhi	%r12,4
	j	.L3374
.L3449:
	lhi	%r12,8
	j	.L3374
.L3451:
	lhi	%r12,16
	j	.L3374
.L3461:
	lhi	%r12,512
	j	.L3374
.L3453:
	lhi	%r12,32
	j	.L3374
.L3455:
	lhi	%r12,64
	j	.L3374
.L3457:
	lhi	%r12,128
	j	.L3374
.L3459:
	lhi	%r12,256
	j	.L3374
.L3525:
	lr	%r2,%r3
	lr	%r1,%r5
	xr	%r2,%r5
	sr	%r1,%r3
	ahi	%r2,-1
	xr	%r3,%r5
	n	%r1,.L3528-.L3527(%r13)
	ahi	%r3,-1
	srl	%r2,31
	ltr	%r3,%r3
	jl	.L3370
	lr	%r1,%r5
.L3370:
	l	%r5,.L3528-.L3527(%r13)
	nr	%r5,%r1
	j	.L3375
.L3463:
	lhi	%r12,1024
	j	.L3374
.L3465:
	lhi	%r12,2048
	j	.L3374
.L3467:
	lhi	%r12,4096
	j	.L3374
.L3469:
	lhi	%r12,8192
	j	.L3374
.L3471:
	lhi	%r12,16384
	j	.L3374
.L3526:
	l	%r1,.L3529-.L3527(%r13)
	lhi	%r12,-32768
	j	.L3374
.L3472:
	l	%r1,.L3529-.L3527(%r13)
	lhi	%r12,-32768
	j	.L3374
.L3372:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L3528-.L3527(%r13)
	j	.L3375
	.section	.rodata
	.align	8
.L3527:
.L3529:
	.long	32768
.L3528:
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r0,%r2
	clr	%r2,%r3
	jle	.L3775
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L3772
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L3535
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L3772
.L3537:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3535
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L3740
	lr	%r2,%r0
.L3536:
	ltr	%r4,%r4
	jne	.L3530
	lr	%r2,%r11
.L3530:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3740:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L3772
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3535
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L3772
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3535
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L3537
.L3772:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L3667
	lr	%r2,%r0
.L3667:
	clr	%r0,%r3
	jl	.L3668
	lr	%r11,%r12
.L3669:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L3670
	j	.L3536
.L3535:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L3673
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L3540
	lr	%r2,%r0
.L3540:
	clr	%r0,%r1
	jl	.L3541
	lr	%r11,%r5
.L3542:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L3670:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3544
	lr	%r1,%r2
.L3544:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L3546
	lhi	%r0,0
.L3546:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3548
	lr	%r1,%r2
.L3548:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3550
	lhi	%r5,0
.L3550:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3552
	lr	%r1,%r2
.L3552:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3554
	lhi	%r5,0
.L3554:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3556
	lr	%r1,%r2
.L3556:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3558
	lhi	%r5,0
.L3558:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3560
	lr	%r1,%r2
.L3560:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3562
	lhi	%r5,0
.L3562:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3564
	lr	%r1,%r2
.L3564:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3566
	lhi	%r5,0
.L3566:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3776
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3777
.L3570:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3778
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3779
.L3574:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3780
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3781
.L3578:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3782
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3783
.L3582:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3784
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3785
.L3586:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3786
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3590
.L3798:
	lhi	%r5,0
.L3590:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3592
	lr	%r1,%r2
.L3592:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3594
	lhi	%r5,0
.L3594:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3596
	lr	%r1,%r2
.L3596:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3598
	lhi	%r5,0
.L3598:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3600
	lr	%r1,%r2
.L3600:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3602
	lhi	%r5,0
.L3602:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3604
	lr	%r1,%r2
.L3604:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3606
	lhi	%r5,0
.L3606:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3608
	lr	%r1,%r2
.L3608:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3610
	lhi	%r5,0
.L3610:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3612
	lr	%r1,%r2
.L3612:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3614
	lhi	%r5,0
.L3614:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3787
.L3616:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3788
.L3618:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3789
.L3620:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3790
.L3622:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3791
.L3624:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3792
.L3626:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3793
.L3628:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3794
.L3630:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3795
.L3632:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3796
.L3634:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3797
.L3636:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3638
	lhi	%r5,0
.L3638:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3640
	lr	%r1,%r2
.L3640:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3642
	lhi	%r5,0
.L3642:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3644
	lr	%r1,%r2
.L3644:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3646
	lhi	%r5,0
.L3646:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3648
	lr	%r1,%r2
.L3648:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3650
	lhi	%r5,0
.L3650:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3652
	lr	%r1,%r2
.L3652:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3654
	lhi	%r5,0
.L3654:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3656
	lr	%r1,%r2
.L3656:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3658
	lhi	%r5,0
.L3658:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L3536
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3660
	lr	%r1,%r2
.L3660:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3662
	lhi	%r5,0
.L3662:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L3536
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3664
	lr	%r2,%r1
.L3664:
	or	%r11,%r3
	j	.L3536
.L3541:
	lhi	%r11,0
	j	.L3542
.L3777:
	lhi	%r5,0
	j	.L3570
.L3776:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3570
	j	.L3777
.L3779:
	lhi	%r5,0
	j	.L3574
.L3778:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3574
	j	.L3779
.L3668:
	lhi	%r11,0
	j	.L3669
.L3781:
	lhi	%r5,0
	j	.L3578
.L3780:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3578
	j	.L3781
.L3783:
	lhi	%r5,0
	j	.L3582
.L3782:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3582
	j	.L3783
.L3785:
	lhi	%r5,0
	j	.L3586
.L3784:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3586
	j	.L3785
.L3786:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3590
	j	.L3798
.L3788:
	lhi	%r5,0
	j	.L3618
.L3787:
	lr	%r1,%r2
	j	.L3616
.L3790:
	lhi	%r5,0
	j	.L3622
.L3789:
	lr	%r1,%r2
	j	.L3620
.L3792:
	lhi	%r5,0
	j	.L3626
.L3791:
	lr	%r1,%r2
	j	.L3624
.L3794:
	lhi	%r5,0
	j	.L3630
.L3793:
	lr	%r1,%r2
	j	.L3628
.L3796:
	lhi	%r5,0
	j	.L3634
.L3795:
	lr	%r1,%r2
	j	.L3632
.L3797:
	lr	%r1,%r2
	j	.L3636
.L3775:
	sr	%r2,%r3
	cr	%r0,%r3
	je	.L3533
	lr	%r2,%r0
.L3533:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L3536
.L3673:
	lhi	%r11,0
	j	.L3536
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
	je	.L3801
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L3801:
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
	je	.L3807
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L3807:
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
	st	%r13,92(%r15)
	.cfi_offset 13, -4
	larl	%r13,.L3820
	cl	%r2,.L3821-.L3820(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L3822-.L3820(%r13)
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
	jne	.L3817
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,92(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L3817:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,92(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L3820:
.L3822:
	.long	65280
.L3821:
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
	jl	.L3827
	jh	.L3828
	clr	%r3,%r5
	jl	.L3827
	jh	.L3828
	lhi	%r2,1
	br	%r14
.L3827:
	lhi	%r2,0
	br	%r14
.L3828:
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
	jl	.L3834
	jh	.L3833
	clr	%r3,%r5
	jl	.L3834
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3834:
	lhi	%r2,-1
	br	%r14
.L3833:
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
	st	%r13,92(%r15)
	.cfi_offset 13, -4
	larl	%r13,.L3838
	l	%r4,.L3839-.L3838(%r13)
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
.L3838:
.L3839:
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
	je	.L3841
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L3841:
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
	.align	16
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	st	%r13,92(%r15)
	.cfi_offset 13, -4
	larl	%r13,.L3853
	l	%r4,.L3854-.L3853(%r13)
	l	%r1,.L3854-.L3853(%r13)
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
	l	%r5,.L3854-.L3853(%r13)
	lr	%r0,%r3
	n	%r3,.L3854-.L3853(%r13)
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
.L3853:
.L3854:
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
	stm	%r11,%r13,84(%r15)
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3857
	l	%r1,.L3858-.L3857(%r13)
	l	%r0,.L3858-.L3857(%r13)
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
	l	%r12,.L3858-.L3857(%r13)
	lr	%r0,%r11
	n	%r11,.L3858-.L3857(%r13)
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
.L3857:
.L3858:
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
	je	.L3860
	ahi	%r2,-1
.L3860:
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3868
	l	%r0,.L3869-.L3868(%r13)
	l	%r1,.L3869-.L3868(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L3870-.L3868(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L3871-.L3868(%r13)
	l	%r3,.L3871-.L3868(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L3871-.L3868(%r13)
	nr	%r3,%r1
	l	%r1,.L3871-.L3868(%r13)
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
	n	%r2,.L3870-.L3868(%r13)
	ar	%r2,%r12
	lm	%r12,%r13,88(%r15)
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
.L3868:
.L3871:
	.long	858993459
.L3870:
	.long	252645135
.L3869:
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
	larl	%r5,.L3874
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L3875-.L3874(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L3876-.L3874(%r5)
	srl	%r0,2
	n	%r0,.L3876-.L3874(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3877-.L3874(%r5)
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
.L3874:
.L3877:
	.long	252645135
.L3876:
	.long	858993459
.L3875:
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
	larl	%r5,.L3887
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L3888-.L3887(%r5)
	tml	%r2,1
	je	.L3879
.L3881:
	mdbr	%f0,%f2
.L3879:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3880
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L3881
.L3886:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L3881
	j	.L3886
.L3880:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L3888-.L3887(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3887:
.L3888:
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
	larl	%r5,.L3898
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L3899-.L3898(%r5)
	tml	%r2,1
	je	.L3890
.L3892:
	meebr	%f0,%f2
.L3890:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3891
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L3892
.L3897:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L3892
	j	.L3897
.L3891:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L3899-.L3898(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3898:
.L3899:
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
	jl	.L3904
	jh	.L3905
	clr	%r3,%r5
	jl	.L3904
	jh	.L3905
	lhi	%r2,1
	br	%r14
.L3904:
	lhi	%r2,0
	br	%r14
.L3905:
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
	jl	.L3911
	jh	.L3910
	clr	%r3,%r5
	jl	.L3911
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3911:
	lhi	%r2,-1
	br	%r14
.L3910:
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
