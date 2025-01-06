	.file	"mini-libc.c"
	.machinemode esa
	.machine "z10+htm"
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
	nr	%r0,%r4
	lr	%r5,%r4
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
	ahi	%r1,-1
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L12
	lr	%r0,%r3
	or	%r0,%r2
	lhi	%r10,3
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
	lhi	%r1,0
	srl	%r5,2
	ahi	%r5,1
	nr	%r10,%r5
	je	.L51
	chi	%r10,1
	je	.L57
	chi	%r10,2
	je	.L58
	l	%r11,0(%r3)
	st	%r11,0(%r2)
	lhi	%r1,4
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
	cr	%r1,%r4
	je	.L3
	chi	%r0,1
	mvc	0(1,%r5),0(%r3)
	je	.L3
	chi	%r0,2
	mvc	1(1,%r5),1(%r3)
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
	lr	%r12,%r4
	ahi	%r12,-1
	lr	%r11,%r4
	ahi	%r11,-2
	stc	%r0,0(%r4,%r1)
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r1)
	lr	%r12,%r4
	ahi	%r12,-3
	ahi	%r4,-4
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r1)
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
	nr	%r12,%r4
	lhi	%r1,0
	lr	%r11,%r4
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
	cr	%r1,%r4
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
	lhi	%r0,255
	stc	%r1,0(%r2)
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L119
	ic	%r12,1(%r3)
	lhi	%r1,255
	ahi	%r2,1
	stc	%r12,0(%r2)
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
	lhi	%r0,255
	stc	%r1,0(%r2)
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L128
	ic	%r1,1(%r3)
	lhi	%r0,255
	ahi	%r2,1
	stc	%r1,0(%r2)
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
	nr	%r5,%r4
	lr	%r1,%r4
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
	lhi	%r0,0
	ahi	%r1,1
	lr	%r2,%r1
	ic	%r0,0(%r1)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	lhi	%r0,0
	lr	%r2,%r1
	ahi	%r2,2
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
	cr	%r5,%r1
	jne	.L188
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r5,%r1
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
	cr	%r5,%r1
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
	l	%r4,104(%r15)
	lr	%r2,%r12
	lm	%r12,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r4
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
	lhi	%r1,255
	nr	%r3,%r1
	lr	%r1,%r4
	ahi	%r1,1
	lhi	%r5,3
	ar	%r2,%r4
	lr	%r4,%r2
	nr	%r5,%r1
	je	.L209
	lhi	%r0,0
	ahi	%r4,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	chi	%r5,1
	je	.L209
	chi	%r5,2
	je	.L213
	lr	%r2,%r4
	lhi	%r5,0
	ahi	%r4,-1
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L213:
	lr	%r2,%r4
	lhi	%r0,0
	ahi	%r4,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L209:
	srl	%r1,2
	lr	%r0,%r4
	lr	%r2,%r4
	ahi	%r0,-1
	ahi	%r1,1
	brct	%r1,.L223
	lhi	%r2,0
	br	%r14
.L223:
	lhi	%r5,0
	ic	%r5,0(%r4)
	cr	%r5,%r3
	ber	%r14
	lr	%r2,%r0
	lhi	%r0,0
	lr	%r5,%r4
	ahi	%r5,-2
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	st	%r12,92(%r15)
	.cfi_offset 12, -4
.L226:
	lhi	%r0,0
	lr	%r12,%r4
	ahi	%r12,-3
	lr	%r2,%r5
	ic	%r0,0(%r5)
	cr	%r0,%r3
	je	.L200
	lhi	%r5,0
	ahi	%r4,-4
	lr	%r2,%r12
	ic	%r5,0(%r12)
	cr	%r5,%r3
	je	.L200
	lr	%r0,%r4
	lr	%r2,%r4
	ahi	%r0,-1
	brct	%r1,.L203
	lhi	%r2,0
.L200:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L203:
	.cfi_restore_state
	lhi	%r12,0
	ic	%r12,0(%r4)
	cr	%r12,%r3
	je	.L200
	lr	%r2,%r0
	lhi	%r0,0
	lr	%r5,%r4
	ahi	%r5,-2
	ic	%r0,0(%r2)
	cr	%r0,%r3
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lr	%r0,%r2
	lhi	%r12,0
	lhi	%r13,0
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
	ic	%r0,1(%r3)
	ahi	%r3,1
	ahi	%r2,1
	stc	%r0,0(%r2)
	tml	%r0,255
	ber	%r14
	ic	%r0,1(%r3)
	ahi	%r3,1
	ahi	%r2,1
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
	lhi	%r5,255
	lhi	%r0,255
	ahi	%r12,-1
	lhi	%r1,1
	ic	%r4,0(%r2)
	ic	%r3,0(%r3)
	nr	%r5,%r4
	nr	%r0,%r3
	cr	%r0,%r5
	je	.L263
	j	.L273
.L265:
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	lhi	%r0,255
	ic	%r3,0(%r1,%r12)
	nr	%r5,%r4
	nr	%r0,%r3
	cr	%r0,%r5
	jne	.L273
.L263:
	tml	%r4,255
	jne	.L265
	lhi	%r1,255
	nr	%r3,%r1
	lhi	%r2,0
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	sr	%r2,%r3
	br	%r14
.L273:
	.cfi_restore_state
	lhi	%r1,255
	nr	%r3,%r1
	lr	%r2,%r5
	l	%r12,92(%r15)
	.cfi_restore 12
	sr	%r2,%r3
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
	cli	0(%r2),0
	lr	%r3,%r2
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
	icm	%r5,1,0(%r2)
	ic	%r1,0(%r3)
	je	.L300
	lhi	%r0,255
	nr	%r0,%r1
	je	.L301
	st	%r12,92(%r15)
	.cfi_offset 12, -4
.L286:
	lhi	%r12,255
	nr	%r12,%r5
	brct	%r4,.L287
.L299:
	lhi	%r4,255
	nr	%r1,%r4
	lr	%r2,%r12
	l	%r12,92(%r15)
	.cfi_restore 12
	sr	%r2,%r1
	br	%r14
.L289:
	lhi	%r2,0
	br	%r14
.L287:
	.cfi_offset 12, -4
	cr	%r0,%r12
	jne	.L299
	ahi	%r2,1
	lr	%r1,%r3
	ahi	%r1,1
	icm	%r5,1,0(%r2)
	je	.L302
	lr	%r3,%r1
	ic	%r1,0(%r1)
	lhi	%r0,255
	nr	%r0,%r1
	jne	.L286
	lhi	%r2,255
	lhi	%r4,255
	nr	%r2,%r5
	nr	%r1,%r4
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	sr	%r2,%r1
	br	%r14
.L302:
	.cfi_restore_state
	ic	%r1,1(%r3)
	lhi	%r4,255
	lhi	%r2,0
	l	%r12,92(%r15)
	.cfi_restore 12
	nr	%r1,%r4
	sr	%r2,%r1
	br	%r14
.L301:
	lhi	%r2,255
	nr	%r2,%r5
.L295:
	lhi	%r3,255
	nr	%r1,%r3
	sr	%r2,%r1
	br	%r14
.L300:
	lhi	%r2,0
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
	ahi	%r0,-2
	lhi	%r5,3
	ar	%r4,%r2
	srl	%r0,1
	ahi	%r0,1
	nr	%r5,%r0
	je	.L313
	chi	%r5,1
	je	.L317
	chi	%r5,2
	je	.L318
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L318:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L317:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r2,2
	ahi	%r3,2
	cr	%r2,%r4
	ber	%r14
.L313:
	srl	%r0,2
.L306:
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
	brct	%r0,.L306
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
	je	.L332
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L332:
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
	jle	.L336
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L336:
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
	je	.L348
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L348:
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
	larl	%r5,.L359
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L356
	lr	%r0,%r2
	ahi	%r0,-127
	lhi	%r3,32
	clr	%r0,%r3
	jh	.L358
.L356:
	lhi	%r2,1
	br	%r14
.L358:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L356
	a	%r2,.L360-.L359(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L359:
.L360:
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
	larl	%r5,.L372
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L371
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L368
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L373-.L372(%r5)
	jle	.L368
	l	%r4,.L374-.L372(%r5)
	ar	%r4,%r2
	lhi	%r1,8184
	clr	%r4,%r1
	jle	.L368
	l	%r0,.L375-.L372(%r5)
	ar	%r0,%r2
	cl	%r0,.L376-.L372(%r5)
	jh	.L369
	n	%r2,.L377-.L372(%r5)
	x	%r2,.L377-.L372(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L368:
	lhi	%r2,1
	br	%r14
.L371:
	ahi	%r2,1
	lhi	%r3,127
	lhi	%r4,32
	nr	%r2,%r3
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L369:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L372:
.L377:
	.long	65534
.L376:
	.long	1048579
.L375:
	.long	-65532
.L374:
	.long	-57344
.L373:
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
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L380
	lhi	%r0,32
	or	%r2,%r0
	lhi	%r4,5
	ahi	%r2,-97
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L380:
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
	larl	%r5,.L393
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L388
	kdbr	%f0,%f2
	jnh	.L391
	sdbr	%f0,%f2
	br	%r14
.L391:
	ld	%f0,.L394-.L393(%r5)
	br	%r14
.L388:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L393:
.L394:
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
	larl	%r5,.L404
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L399
	kebr	%f0,%f2
	jnh	.L402
	sebr	%f0,%f2
	br	%r14
.L402:
	le	%f0,.L405-.L404(%r5)
	br	%r14
.L399:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L404:
.L405:
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
	jo	.L414
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r2,%r1
	jne	.L416
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L411
	lhi	%r0,0
.L411:
	tml	%r0,1
	jne	.L414
	ldr	%f2,%f0
.L414:
	ldr	%f0,%f2
	br	%r14
.L416:
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
	jo	.L426
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r2,%r1
	jne	.L428
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L423
	lhi	%r0,0
.L423:
	tml	%r0,1
	jne	.L426
	ler	%f2,%f0
.L426:
	ler	%f0,%f2
	br	%r14
.L428:
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
	st	%r15,92(%r15)
	.cfi_offset 15, -4
	ahi	%r15,-56
	.cfi_def_cfa_offset 152
	ld	%f0,0(%r3)
	std	%f0,96(%r15)
	ld	%f2,8(%r3)
	std	%f2,104(%r15)
	ld	%f1,0(%r4)
	std	%f1,112(%r15)
	ld	%f3,8(%r4)
	std	%f3,120(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L437
	cxbr	%f0,%f0
	jo	.L431
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ipm	%r1
	tcxb	%f0,1365
	ipm	%r3
	srl	%r1,28
	srl	%r3,28
	cr	%r3,%r1
	jne	.L442
	lhi	%r0,1
	lxr	%f5,%f0
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	kxbr	%f0,%f5
	jl	.L436
	lhi	%r0,0
.L436:
	tml	%r0,1
	je	.L434
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L435:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	std	%f7,96(%r15)
	ld	%f8,136(%r15)
	std	%f8,104(%r15)
.L431:
	ld	%f10,96(%r15)
	std	%f10,0(%r2)
	ld	%f12,104(%r15)
	std	%f12,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L442:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L431
.L437:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f10,96(%r15)
	std	%f10,0(%r2)
	ld	%f12,104(%r15)
	std	%f12,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L434:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L435
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
	jo	.L450
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r2,%r1
	jne	.L453
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L449
	lhi	%r0,0
.L449:
	tml	%r0,1
	bner	%r14
.L450:
	ldr	%f0,%f2
	br	%r14
.L453:
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
	jo	.L461
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r2,%r1
	jne	.L464
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L460
	lhi	%r0,0
.L460:
	tml	%r0,1
	bner	%r14
.L461:
	ler	%f0,%f2
	br	%r14
.L464:
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
	.cfi_offset 15, -4
	ahi	%r15,-56
	.cfi_def_cfa_offset 152
	ld	%f0,0(%r3)
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
	jo	.L467
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L473
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	ipm	%r3
	srl	%r1,28
	srl	%r3,28
	cr	%r3,%r1
	jne	.L478
	lhi	%r0,1
	lxr	%f5,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	kxbr	%f0,%f5
	jl	.L472
	lhi	%r0,0
.L472:
	tml	%r0,1
	je	.L470
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L471:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	std	%f7,96(%r15)
	ld	%f8,136(%r15)
	std	%f8,104(%r15)
.L467:
	ld	%f14,96(%r15)
	std	%f14,0(%r2)
	ld	%f9,104(%r15)
	std	%f9,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L478:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L467
	ld	%f10,112(%r15)
	std	%f10,96(%r15)
	ld	%f12,120(%r15)
	std	%f12,104(%r15)
	ld	%f14,96(%r15)
	std	%f14,0(%r2)
	ld	%f9,104(%r15)
	std	%f9,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L470:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L471
.L473:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L467
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.align	8
.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	ltr	%r2,%r2
	larl	%r1,.LANCHOR0
	je	.L481
	larl	%r4,.LANCHOR1
.L482:
	lhi	%r3,63
	nr	%r3,%r2
	srl	%r2,6
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	ltr	%r2,%r2
	jne	.L482
.L481:
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
	larl	%r1,.LANCHOR0
	lhi	%r3,0
	ahi	%r2,-1
	st	%r3,8(%r1)
	st	%r2,12(%r1)
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	larl	%r12,.LANCHOR0
	lm	%r4,%r5,8(%r12)
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,4
	slr	%r3,%r5
	lr	%r1,%r3
	slbr	%r2,%r4
	lr	%r0,%r2
	sldl	%r0,6
	slr	%r1,%r3
	lr	%r3,%r1
	slbr	%r0,%r2
	lr	%r2,%r0
	sldl	%r2,7
	alr	%r1,%r3
	alcr	%r0,%r2
	sldl	%r0,2
	alr	%r1,%r5
	lr	%r3,%r1
	alcr	%r0,%r4
	lr	%r2,%r0
	sldl	%r2,6
	slr	%r3,%r1
	slbr	%r2,%r0
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
	lr	%r1,%r11
	slbr	%r10,%r2
	lr	%r0,%r10
	sldl	%r0,3
	slr	%r1,%r11
	lr	%r3,%r1
	slbr	%r0,%r10
	lr	%r2,%r0
	sldl	%r2,6
	slr	%r3,%r1
	slbr	%r2,%r0
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
	srdl	%r4,33
	stm	%r2,%r3,8(%r12)
	lr	%r2,%r5
	lm	%r10,%r12,84(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
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
	je	.L497
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L497:
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
	je	.L500
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L500:
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
	lr	%r10,%r5
	icm	%r13,15,0(%r4)
	lr	%r9,%r2
	lr	%r7,%r3
	st	%r4,100(%r15)
	je	.L510
	tml	%r13,1
	lr	%r12,%r3
	lr	%r11,%r13
	jne	.L535
.L522:
	srl	%r11,1
.L512:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r2,%r9
	je	.L509
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L509
	ar	%r12,%r10
	brct	%r11,.L512
.L510:
	lr	%r8,%r10
	l	%r1,100(%r15)
	msr	%r8,%r13
	ahi	%r13,1
	st	%r13,0(%r1)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L509
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L509:
	l	%r4,136(%r15)
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
	br	%r4
.L535:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L509
	ar	%r12,%r10
	chi	%r13,1
	jne	.L522
	j	.L510
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
	je	.L538
	tml	%r7,1
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	jne	.L559
.L547:
	srl	%r11,1
.L540:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r2,%r10
	je	.L537
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L537
	ar	%r12,%r9
	brct	%r11,.L540
.L538:
	lhi	%r8,0
.L537:
	l	%r4,128(%r15)
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
	br	%r4
.L559:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L537
	ar	%r12,%r9
	chi	%r7,1
	jne	.L547
	j	.L538
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
.L570:
	ic	%r4,0(%r2)
	lhi	%r1,255
	stc	%r4,103(%r15)
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L564
	lr	%r3,%r1
	ahi	%r3,-9
	lhi	%r5,4
	clr	%r3,%r5
	jle	.L564
	chi	%r1,43
	je	.L565
	chi	%r1,45
	je	.L566
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L575
	lr	%r3,%r2
	lhi	%r12,0
.L568:
	lhi	%r2,0
.L572:
	ahi	%r3,1
	lhi	%r5,255
	nr	%r5,%r4
	lr	%r1,%r2
	sll	%r1,2
	lhi	%r0,255
	lhi	%r11,9
	ic	%r4,0(%r3)
	ahi	%r5,-48
	ar	%r1,%r2
	nr	%r0,%r4
	sll	%r1,1
	lr	%r2,%r1
	sr	%r2,%r5
	ahi	%r0,-48
	clr	%r0,%r11
	jle	.L572
	ltr	%r12,%r12
	jne	.L563
	lr	%r2,%r5
	sr	%r2,%r1
.L563:
	lm	%r11,%r15,108(%r15)
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
	j	.L570
.L566:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	lhi	%r12,9
	lr	%r3,%r2
	nr	%r11,%r4
	ahi	%r11,-48
	clr	%r11,%r12
	jh	.L575
	lhi	%r12,1
	j	.L568
.L565:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,9
	lhi	%r12,0
	nr	%r0,%r4
	ahi	%r0,-48
	clr	%r0,%r2
	jle	.L568
.L575:
	lm	%r11,%r15,108(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	lhi	%r2,0
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
.L592:
	ic	%r4,0(%r2)
	lhi	%r1,255
	stc	%r4,103(%r15)
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L588
	lr	%r3,%r1
	ahi	%r3,-9
	lhi	%r5,4
	clr	%r3,%r5
	jle	.L588
	chi	%r1,43
	je	.L589
	chi	%r1,45
	je	.L590
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L599
	lr	%r3,%r2
	lhi	%r12,0
.L593:
	lhi	%r2,0
.L596:
	ahi	%r3,1
	lhi	%r5,255
	nr	%r5,%r4
	lr	%r1,%r2
	sll	%r1,2
	lhi	%r0,255
	lhi	%r11,9
	ic	%r4,0(%r3)
	ahi	%r5,-48
	ar	%r1,%r2
	nr	%r0,%r4
	sll	%r1,1
	lr	%r2,%r1
	sr	%r2,%r5
	ahi	%r0,-48
	clr	%r0,%r11
	jle	.L596
	ltr	%r12,%r12
	jne	.L587
	lr	%r2,%r5
	sr	%r2,%r1
.L587:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L588:
	.cfi_restore_state
	ahi	%r2,1
	j	.L592
.L590:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	lhi	%r1,9
	lr	%r3,%r2
	lhi	%r12,1
	nr	%r11,%r4
	ahi	%r11,-48
	clr	%r11,%r1
	jle	.L593
.L599:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	lhi	%r2,0
	br	%r14
.L589:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,9
	nr	%r0,%r4
	ahi	%r0,-48
	clr	%r0,%r2
	jh	.L599
	lhi	%r12,0
	j	.L593
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
.L619:
	ic	%r1,0(%r2)
	lhi	%r3,255
	stc	%r1,103(%r15)
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L613
	lr	%r4,%r3
	ahi	%r4,-9
	lhi	%r5,4
	clr	%r4,%r5
	jle	.L613
	chi	%r3,43
	je	.L614
	chi	%r3,45
	jne	.L635
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	lhi	%r10,9
	nr	%r2,%r1
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L624
	lhi	%r2,1
.L617:
	lhi	%r10,0
	lhi	%r11,0
.L621:
	lr	%r4,%r10
	lr	%r5,%r11
	lhi	%r12,255
	nr	%r1,%r12
	ahi	%r3,1
	lhi	%r13,0
	lhi	%r0,255
	lhi	%r9,9
	sldl	%r4,2
	ahi	%r1,-48
	lr	%r12,%r1
	ic	%r1,0(%r3)
	alr	%r5,%r11
	alcr	%r4,%r10
	nr	%r0,%r1
	srda	%r12,32
	sldl	%r4,1
	ahi	%r0,-48
	lr	%r10,%r4
	lr	%r11,%r5
	slr	%r11,%r13
	slbr	%r10,%r12
	clr	%r0,%r9
	jle	.L621
	ltr	%r2,%r2
	jne	.L612
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L612:
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
.L613:
	.cfi_restore_state
	ahi	%r2,1
	j	.L619
.L635:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L624
	lr	%r3,%r2
	lhi	%r2,0
	j	.L617
.L614:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	lhi	%r9,9
	lr	%r3,%r2
	lhi	%r2,0
	nr	%r0,%r1
	ahi	%r0,-48
	clr	%r0,%r9
	jle	.L617
.L624:
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
	je	.L638
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	j	.L641
.L651:
	je	.L637
	ahi	%r12,-1
	ar	%r11,%r8
	lr	%r9,%r11
	sr	%r12,%r10
	ltr	%r12,%r12
	je	.L638
.L641:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	lr	%r2,%r7
	msr	%r11,%r8
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L651
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L641
.L638:
	lhi	%r11,0
.L637:
	l	%r4,128(%r15)
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
	br	%r4
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
	ltr	%r11,%r4
	lr	%r9,%r3
	lr	%r8,%r5
	je	.L658
.L666:
	lr	%r10,%r11
	sra	%r10,1
	lr	%r12,%r10
	l	%r4,136(%r15)
	lr	%r2,%r7
	msr	%r12,%r8
	ar	%r12,%r9
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L653
	jle	.L656
	ahi	%r11,-1
	ar	%r12,%r8
	lr	%r9,%r12
	sra	%r11,1
	jne	.L666
.L658:
	lhi	%r12,0
.L653:
	l	%r4,128(%r15)
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
	br	%r4
.L656:
	.cfi_restore_state
	ltr	%r10,%r10
	lr	%r11,%r10
	jne	.L666
	j	.L658
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
	ltr	%r2,%r2
	lr	%r4,%r2
	lr	%r5,%r3
	jl	.L676
.L673:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L676:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L673
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
	l	%r4,128(%r15)
	lm	%r9,%r15,108(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_def_cfa_offset 96
	br	%r4
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
	ltr	%r2,%r2
	lr	%r4,%r2
	lr	%r5,%r3
	jl	.L689
.L686:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L689:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L686
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
	l	%r4,128(%r15)
	lm	%r9,%r15,108(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_def_cfa_offset 96
	br	%r4
	.cfi_endproc
.LFE56:
	.size	lldiv, .-lldiv
	.align	8
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	j	.L704
.L705:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L704:
	icm	%r1,15,0(%r2)
	jne	.L705
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
	l	%r3,0(%r2)
	cr	%r3,%r4
	lhi	%r1,4
	je	.L708
	j	.L709
.L710:
	l	%r3,0(%r1,%r2)
	ahi	%r1,4
	l	%r4,0(%r1,%r5)
	cr	%r3,%r4
	jne	.L709
.L708:
	ltr	%r3,%r3
	jne	.L710
.L709:
	cr	%r3,%r4
	jl	.L714
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L714:
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
.L719:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L719
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
	icm	%r1,15,0(%r2)
	lr	%r3,%r2
	je	.L726
.L725:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L725
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L726:
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
	je	.L736
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L752
.L739:
	srl	%r4,1
.L730:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L732
	ltr	%r0,%r0
	je	.L732
	ahi	%r3,4
	l	%r5,4(%r2)
	ahi	%r2,4
	c	%r5,0(%r3)
	jne	.L732
	ltr	%r5,%r5
	je	.L732
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L730
.L736:
	lhi	%r2,0
	br	%r14
.L732:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L753
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L752:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L732
	ltr	%r1,%r1
	je	.L732
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L739
	j	.L736
.L753:
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
	je	.L759
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	nr	%r5,%r4
	lr	%r1,%r4
	je	.L766
	chi	%r5,1
	je	.L777
	chi	%r5,2
	je	.L778
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L778:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L777:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L759
.L766:
	srl	%r1,2
	lr	%r0,%r1
.L756:
	c	%r3,0(%r2)
	ber	%r14
	lr	%r1,%r2
	ahi	%r1,4
	lr	%r2,%r1
	c	%r3,0(%r1)
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
	brct	%r0,.L756
.L759:
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
	je	.L798
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	nr	%r1,%r4
	lr	%r5,%r4
	je	.L805
	chi	%r1,1
	je	.L816
	chi	%r1,2
	je	.L817
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L824
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L817:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L824
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L816:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L824
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L798
.L805:
	srl	%r5,2
.L792:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L824
	ahi	%r3,4
	l	%r1,4(%r2)
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L824
	ahi	%r3,4
	l	%r1,8(%r2)
	c	%r1,0(%r3)
	jne	.L824
	l	%r1,12(%r2)
	lr	%r3,%r4
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L824
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L792
.L798:
	lhi	%r2,0
	br	%r14
.L824:
	c	%r1,0(%r3)
	jl	.L828
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L828:
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
	je	.L831
	sll	%r4,2
	brasl	%r14,memcpy
.L831:
	l	%r4,104(%r15)
	lr	%r2,%r12
	lm	%r12,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r4
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
	larl	%r13,.L894
	cr	%r2,%r3
	je	.L845
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	lr	%r1,%r4
	ahi	%r1,-1
	clr	%r0,%r5
	jhe	.L893
	ltr	%r4,%r4
	je	.L845
	l	%r4,.L895-.L894(%r13)
	nr	%r4,%r1
	lhi	%r5,3
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L855
	chi	%r5,1
	je	.L871
	chi	%r5,2
	je	.L872
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	ahi	%r1,-4
.L872:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
.L871:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L845
.L855:
	srl	%r4,2
	chi	%r4,2
	jle	.L890
	ahi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
.L842:
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
	brct	%r4,.L842
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
.L845:
	lm	%r11,%r13,84(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L893:
	.cfi_restore_state
	ltr	%r4,%r4
	lhi	%r5,0
	je	.L845
	lhi	%r11,3
	nr	%r11,%r4
	je	.L864
	chi	%r11,1
	je	.L869
	chi	%r11,2
	je	.L870
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r5,4
	lr	%r1,%r4
	ahi	%r1,-2
.L870:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	ahi	%r1,-1
	ahi	%r5,4
.L869:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L845
.L864:
	srl	%r4,2
	chi	%r4,2
	jle	.L891
	ahi	%r4,-1
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
.L840:
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	ahi	%r5,16
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	brct	%r4,.L840
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	j	.L845
.L891:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L891
	j	.L845
.L890:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	lr	%r11,%r1
	ahi	%r11,-4
	lr	%r5,%r1
	ahi	%r5,-12
	l	%r12,0(%r11,%r3)
	st	%r12,0(%r11,%r2)
	lr	%r11,%r1
	ahi	%r11,-8
	ahi	%r1,-16
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	brct	%r4,.L890
	j	.L845
	.section	.rodata
	.align	8
.L894:
.L895:
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
	nr	%r0,%r4
	lr	%r1,%r2
	je	.L907
	chi	%r0,1
	je	.L911
	chi	%r0,2
	je	.L912
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L912:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L911:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L907:
	srl	%r4,2
.L898:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L898
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
	jhe	.L922
	ltr	%r4,%r4
	je	.L921
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r11,%r4
	ahi	%r11,-1
	lhi	%r12,3
	nr	%r12,%r4
	lr	%r1,%r4
	je	.L953
	chi	%r12,1
	je	.L975
	chi	%r12,2
	jne	.L1018
.L976:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L975:
	ic	%r11,0(%r4,%r2)
	stc	%r11,0(%r4,%r3)
	brct	%r4,.L953
.L921:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L922:
	.cfi_restore_state
	je	.L921
	ltr	%r4,%r4
	je	.L921
	lr	%r1,%r4
	ahi	%r1,-1
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L932
	lr	%r0,%r3
	or	%r0,%r2
	lhi	%r11,3
	nr	%r0,%r11
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L932
	lr	%r12,%r2
	ahi	%r12,1
	lr	%r1,%r3
	lhi	%r5,2
	sr	%r1,%r12
	clr	%r1,%r5
	jle	.L932
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r11,3
	lhi	%r1,0
	srl	%r5,2
	ahi	%r5,1
	nr	%r11,%r5
	je	.L971
	chi	%r11,1
	je	.L977
	chi	%r11,2
	je	.L978
	l	%r12,0(%r2)
	st	%r12,0(%r3)
	lhi	%r1,4
.L978:
	l	%r11,0(%r1,%r2)
	st	%r11,0(%r1,%r3)
	ahi	%r1,4
.L977:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1000
.L971:
	srl	%r5,2
	chi	%r5,2
	jle	.L1015
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
.L926:
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	brct	%r5,.L926
	l	%r5,4(%r1,%r2)
	st	%r5,4(%r1,%r3)
	l	%r5,8(%r1,%r2)
	st	%r5,8(%r1,%r3)
	l	%r5,12(%r1,%r2)
	st	%r5,12(%r1,%r3)
	ahi	%r1,16
.L1000:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r1,%r4
	je	.L921
	chi	%r5,1
	mvc	0(1,%r3),0(%r2)
	je	.L921
	chi	%r5,2
	mvc	1(1,%r3),1(%r2)
	je	.L921
	mvc	2(1,%r3),2(%r2)
	j	.L921
.L953:
	srl	%r1,2
	chi	%r1,2
	jle	.L1013
	ahi	%r1,-1
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
.L924:
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
	brct	%r1,.L924
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
	j	.L921
.L1013:
	ic	%r12,0(%r4,%r2)
	lr	%r11,%r4
	ahi	%r11,-1
	stc	%r12,0(%r4,%r3)
	lr	%r12,%r4
	ahi	%r12,-2
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	lr	%r11,%r4
	ahi	%r11,-3
	ahi	%r4,-4
	ic	%r5,0(%r12,%r2)
	stc	%r5,0(%r12,%r3)
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	brct	%r1,.L1013
	j	.L921
.L1018:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	lr	%r4,%r11
	j	.L976
.L1015:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r2)
	st	%r11,4(%r1,%r3)
	l	%r12,8(%r1,%r2)
	st	%r12,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	brct	%r5,.L1015
	j	.L1000
.L932:
	lhi	%r12,3
	nr	%r12,%r4
	lhi	%r1,0
	lr	%r11,%r4
	je	.L962
	chi	%r12,1
	je	.L979
	chi	%r12,2
	je	.L980
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L980:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L979:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	cr	%r1,%r4
	je	.L921
.L962:
	lr	%r4,%r11
	srl	%r4,2
	chi	%r4,2
	jle	.L1014
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
.L929:
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	brct	%r4,.L929
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	j	.L921
.L1014:
	ic	%r11,0(%r1,%r2)
	stc	%r11,0(%r1,%r3)
	ic	%r12,1(%r1,%r2)
	stc	%r12,1(%r1,%r3)
	ic	%r0,2(%r1,%r2)
	stc	%r0,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L1014
	j	.L921
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	8
.globl rotl64
	.type	rotl64, @function
rotl64:
.LFB68:
	.cfi_startproc
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lr	%r0,%r2
	lr	%r1,%r3
	lcr	%r2,%r4
	lr	%r12,%r0
	lr	%r13,%r3
	srdl	%r0,0(%r2)
	sldl	%r12,0(%r4)
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lr	%r0,%r2
	lr	%r1,%r3
	lcr	%r2,%r4
	lr	%r12,%r0
	lr	%r13,%r3
	sldl	%r0,0(%r2)
	srdl	%r12,0(%r4)
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
	larl	%r5,.L1036
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1037-.L1036(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1036:
.L1037:
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
	larl	%r5,.L1040
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1041-.L1040(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1040:
.L1041:
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
	lhi	%r5,255
	lcr	%r4,%r3
	sll	%r0,0(%r3)
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
	lhi	%r5,255
	lcr	%r4,%r3
	srl	%r0,0(%r3)
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
	larl	%r5,.L1048
	lrvr	%r2,%r2
	srl	%r2,16
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
	tml	%r2,1
	lr	%r1,%r2
	jne	.L1057
	tml	%r2,2
	jne	.L1058
	tml	%r2,4
	jne	.L1059
	tml	%r2,8
	jne	.L1060
	tml	%r2,16
	jne	.L1061
	tml	%r2,32
	jne	.L1062
	tml	%r2,64
	jne	.L1063
	tml	%r2,128
	jne	.L1064
	tml	%r2,256
	jne	.L1065
	tml	%r2,512
	jne	.L1066
	tml	%r2,1024
	jne	.L1067
	tml	%r2,2048
	jne	.L1068
	tml	%r2,4096
	jne	.L1069
	tml	%r2,8192
	jne	.L1070
	tml	%r2,16384
	jne	.L1071
	tml	%r2,32768
	jne	.L1072
	tmh	%r2,1
	jne	.L1073
	tmh	%r2,2
	jne	.L1074
	tmh	%r2,4
	jne	.L1075
	tmh	%r2,8
	jne	.L1076
	tmh	%r2,16
	jne	.L1077
	tmh	%r2,32
	jne	.L1078
	tmh	%r2,64
	jne	.L1079
	tmh	%r2,128
	jne	.L1080
	tmh	%r2,256
	jne	.L1081
	tmh	%r2,512
	jne	.L1082
	tmh	%r2,1024
	jne	.L1083
	tmh	%r2,2048
	jne	.L1084
	tmh	%r2,4096
	jne	.L1085
	tmh	%r2,8192
	jne	.L1086
	tmh	%r2,16384
	jne	.L1087
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L1057:
	lhi	%r2,1
	br	%r14
.L1058:
	lhi	%r2,2
	br	%r14
.L1069:
	lhi	%r2,13
	br	%r14
.L1085:
	lhi	%r2,29
	br	%r14
.L1059:
	lhi	%r2,3
	br	%r14
.L1060:
	lhi	%r2,4
	br	%r14
.L1061:
	lhi	%r2,5
	br	%r14
.L1062:
	lhi	%r2,6
	br	%r14
.L1063:
	lhi	%r2,7
	br	%r14
.L1064:
	lhi	%r2,8
	br	%r14
.L1065:
	lhi	%r2,9
	br	%r14
.L1066:
	lhi	%r2,10
	br	%r14
.L1067:
	lhi	%r2,11
	br	%r14
.L1068:
	lhi	%r2,12
	br	%r14
.L1070:
	lhi	%r2,14
	br	%r14
.L1071:
	lhi	%r2,15
	br	%r14
.L1072:
	lhi	%r2,16
	br	%r14
.L1073:
	lhi	%r2,17
	br	%r14
.L1074:
	lhi	%r2,18
	br	%r14
.L1075:
	lhi	%r2,19
	br	%r14
.L1076:
	lhi	%r2,20
	br	%r14
.L1077:
	lhi	%r2,21
	br	%r14
.L1078:
	lhi	%r2,22
	br	%r14
.L1079:
	lhi	%r2,23
	br	%r14
.L1080:
	lhi	%r2,24
	br	%r14
.L1081:
	lhi	%r2,25
	br	%r14
.L1082:
	lhi	%r2,26
	br	%r14
.L1083:
	lhi	%r2,27
	br	%r14
.L1084:
	lhi	%r2,28
	br	%r14
.L1086:
	lhi	%r2,30
	br	%r14
.L1087:
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
	je	.L1094
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1093:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	bner	%r14
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L1093
	br	%r14
.L1094:
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
	larl	%r5,.L1104
	lhi	%r2,1
	keb	%f0,.L1105-.L1104(%r5)
	blr	%r14
	keb	%f0,.L1106-.L1104(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1104:
.L1106:
	.long	2139095039
.L1105:
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
	larl	%r5,.L1112
	lhi	%r2,1
	kdb	%f0,.L1113-.L1112(%r5)
	blr	%r14
	kdb	%f0,.L1114-.L1112(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1112:
.L1114:
	.long	2146435071
	.long	-1
.L1113:
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
	larl	%r5,.L1120
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L1121-.L1120(%r5)
	ld	%f3,.L1121-.L1120+8(%r5)
	kxbr	%f0,%f1
	lhi	%r2,1
	blr	%r14
	ld	%f1,.L1122-.L1120(%r5)
	ld	%f3,.L1122-.L1120+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1120:
.L1122:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1121:
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
	larl	%r5,.L1141
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1139
	le	%f1,.L1142-.L1141(%r5)
.L1127:
	tml	%r2,1
	je	.L1128
.L1129:
	meebr	%f0,%f1
.L1128:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	tml	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	meebr	%f1,%f1
	jne	.L1129
.L1140:
	ar	%r2,%r0
	sra	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	tml	%r2,1
	meebr	%f1,%f1
	jne	.L1129
	j	.L1140
.L1139:
	le	%f1,.L1143-.L1141(%r5)
	j	.L1127
	.section	.rodata
	.align	8
.L1141:
.L1143:
	.long	1056964608
.L1142:
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
	larl	%r5,.L1160
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1158
	ld	%f1,.L1161-.L1160(%r5)
.L1146:
	tml	%r2,1
	je	.L1147
.L1148:
	mdbr	%f0,%f1
.L1147:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	tml	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	mdbr	%f1,%f1
	jne	.L1148
.L1159:
	ar	%r2,%r0
	sra	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	tml	%r2,1
	mdbr	%f1,%f1
	jne	.L1148
	j	.L1159
.L1158:
	ld	%f1,.L1162-.L1160(%r5)
	j	.L1146
	.section	.rodata
	.align	8
.L1160:
.L1162:
	.long	1071644672
	.long	0
.L1161:
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
	larl	%r5,.L1179
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1164
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1164
	ltr	%r4,%r4
	jl	.L1177
	ld	%f0,.L1180-.L1179(%r5)
	ld	%f2,.L1180-.L1179+8(%r5)
.L1165:
	tml	%r4,1
	je	.L1166
.L1167:
	mxbr	%f1,%f0
.L1166:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1164
	tml	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1167
.L1178:
	ar	%r4,%r0
	mxbr	%f0,%f0
	sra	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	tml	%r4,1
	jne	.L1167
	j	.L1178
.L1164:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1177:
	ld	%f0,.L1181-.L1179(%r5)
	ld	%f2,.L1181-.L1179+8(%r5)
	j	.L1165
	.section	.rodata
	.align	8
.L1179:
.L1181:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1180:
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
	lr	%r1,%r4
	ahi	%r1,-1
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L1190
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1190
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	lhi	%r1,0
	srl	%r5,2
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1225
	chi	%r12,1
	je	.L1229
	chi	%r12,2
	je	.L1230
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1230:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L1229:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1253
.L1225:
	srl	%r5,2
.L1185:
	l	%r0,0(%r1,%r2)
	l	%r12,4(%r1,%r2)
	x	%r0,0(%r1,%r3)
	x	%r12,4(%r1,%r3)
	st	%r0,0(%r1,%r2)
	st	%r12,4(%r1,%r2)
	l	%r0,8(%r1,%r2)
	l	%r12,12(%r1,%r2)
	x	%r0,8(%r1,%r3)
	x	%r12,12(%r1,%r3)
	st	%r0,8(%r1,%r2)
	st	%r12,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1185
.L1253:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r1,%r4
	je	.L1183
	xc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L1183
	xc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L1183
	xc	2(1,%r5),2(%r3)
.L1183:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1190:
	.cfi_restore_state
	lhi	%r12,7
	nr	%r12,%r4
	lhi	%r1,0
	lr	%r5,%r4
	je	.L1212
	chi	%r12,1
	je	.L1231
	chi	%r12,2
	je	.L1232
	chi	%r12,3
	je	.L1233
	chi	%r12,4
	je	.L1234
	chi	%r12,5
	je	.L1235
	chi	%r12,6
	je	.L1236
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
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
.L1232:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1231:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r4
	je	.L1183
.L1212:
	lr	%r4,%r5
	srl	%r4,3
.L1187:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	ic	%r12,1(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	ic	%r0,2(%r1,%r3)
	xr	%r12,%r5
	stc	%r12,1(%r1,%r2)
	ic	%r12,2(%r1,%r2)
	ic	%r5,3(%r1,%r2)
	xr	%r12,%r0
	stc	%r12,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	ic	%r0,4(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r2)
	ic	%r12,5(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	ic	%r0,6(%r1,%r3)
	xr	%r12,%r5
	stc	%r12,5(%r1,%r2)
	ic	%r12,6(%r1,%r2)
	ic	%r5,7(%r1,%r2)
	xr	%r12,%r0
	stc	%r12,6(%r1,%r2)
	ic	%r12,7(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,7(%r1,%r2)
	ahi	%r1,8
	brct	%r4,.L1187
	j	.L1183
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	8
.globl strncat
	.type	strncat, @function
strncat:
.LFB91:
	.cfi_startproc
	cli	0(%r2),0
	lr	%r1,%r2
	je	.L1264
.L1265:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1265
.L1264:
	ltr	%r4,%r4
	je	.L1267
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1288
.L1276:
	srl	%r4,1
.L1266:
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
	brct	%r4,.L1266
.L1267:
	mvi	0(%r1),0
	br	%r14
.L1288:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1276
	j	.L1267
	.cfi_endproc
.LFE91:
	.size	strncat, .-strncat
	.align	8
.globl strnlen
	.type	strnlen, @function
strnlen:
.LFB92:
	.cfi_startproc
	ltr	%r3,%r3
	lr	%r1,%r2
	lhi	%r2,0
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r3
	lr	%r4,%r3
	je	.L1302
	chi	%r5,1
	je	.L1313
	chi	%r5,2
	je	.L1314
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1314:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1313:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r2,%r3
	ber	%r14
.L1302:
	srl	%r4,2
.L1291:
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	lr	%r3,%r2
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	lhi	%r5,2
	lr	%r2,%r3
	ahi	%r2,2
	la	%r5,0(%r5,%r1)
	la	%r3,0(%r5,%r3)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1291
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
	je	.L1328
.L1334:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1327
.L1326:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1327:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1326
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1334
.L1328:
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
	lhi	%r0,0
.L1339:
	ic	%r4,0(%r1)
	lhi	%r5,255
	lr	%r2,%r0
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L1338
	lr	%r2,%r1
.L1338:
	ahi	%r1,1
	lr	%r0,%r2
	tml	%r4,255
	jne	.L1339
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
	stm	%r7,%r12,72(%r15)
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	icm	%r8,1,0(%r3)
	je	.L1343
	lr	%r9,%r3
.L1345:
	ahi	%r9,1
	cli	0(%r9),0
	jne	.L1345
	slr	%r9,%r3
	jhe	.L1343
	lhi	%r10,255
	ahi	%r9,-1
	nr	%r10,%r8
	j	.L1363
.L1367:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1366
.L1363:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r10
	jne	.L1367
	lr	%r0,%r9
	lr	%r5,%r3
	lr	%r4,%r2
	lr	%r12,%r8
	ahi	%r0,1
.L1347:
	lhi	%r7,255
	lhi	%r11,255
	nr	%r7,%r1
	nr	%r11,%r12
	brct	%r0,.L1361
	lhi	%r5,255
	nr	%r1,%r5
	nr	%r12,%r5
	cr	%r12,%r1
	je	.L1343
.L1350:
	ahi	%r2,1
	j	.L1363
.L1361:
	cr	%r7,%r11
	jne	.L1350
	ahi	%r4,1
	lr	%r7,%r5
	ahi	%r7,1
	icm	%r1,1,0(%r4)
	je	.L1368
	icm	%r12,1,1(%r5)
	lr	%r5,%r7
	jne	.L1347
	ahi	%r2,1
	j	.L1363
.L1366:
	lhi	%r2,0
.L1343:
	lm	%r7,%r12,72(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L1368:
	.cfi_restore_state
	ic	%r12,1(%r5)
	lhi	%r5,255
	nr	%r1,%r5
	nr	%r12,%r5
	cr	%r12,%r1
	jne	.L1350
	j	.L1343
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	larl	%r5,.L1382
	kdb	%f0,.L1383-.L1382(%r5)
	jl	.L1381
	jnh	.L1374
	kdb	%f2,.L1383-.L1382(%r5)
	jl	.L1373
.L1374:
	br	%r14
.L1381:
	kdb	%f2,.L1383-.L1382(%r5)
	jnh	.L1374
.L1373:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1382:
.L1383:
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
	jl	.L1393
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1393
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1390
.L1394:
	lr	%r2,%r5
.L1386:
	clr	%r3,%r2
	jl	.L1395
.L1390:
	lhi	%r1,0
	lr	%r5,%r2
	ahi	%r5,1
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1394
	chi	%r0,1
	je	.L1384
.L1389:
	lr	%r12,%r0
	ahi	%r12,-1
	lhi	%r10,3
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1405
	chi	%r10,1
	je	.L1415
	chi	%r10,2
	jne	.L1431
.L1416:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1422
	ahi	%r1,1
.L1415:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1422
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1384
.L1405:
	srl	%r12,2
.L1387:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1422
	lhi	%r10,1
	ic	%r8,1(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1422
	lhi	%r10,2
	ic	%r8,2(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1422
	lhi	%r10,3
	ic	%r8,3(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1422
	ahi	%r1,4
	brct	%r12,.L1387
.L1384:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1431:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	je	.L1416
.L1422:
	clr	%r3,%r5
	jl	.L1395
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1386
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1389
.L1395:
	lhi	%r2,0
	lm	%r8,%r12,76(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1393:
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
	je	.L1434
	brasl	%r14,memmove
.L1434:
	l	%r4,112(%r15)
	lr	%r2,%r11
	ar	%r2,%r12
	lm	%r11,%r15,100(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r4
	.cfi_endproc
.LFE98:
	.size	mempcpy, .-mempcpy
	.align	8
.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	larl	%r5,.L1467
	kdb	%f0,.L1468-.L1467(%r5)
	jl	.L1463
	kdb	%f0,.L1469-.L1467(%r5)
	jnhe	.L1464
	lhi	%r3,0
.L1443:
	lhi	%r0,0
.L1449:
	ahi	%r0,1
	mdb	%f0,.L1470-.L1467(%r5)
	kdb	%f0,.L1469-.L1467(%r5)
	jhe	.L1449
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1466:
	lcdbr	%f0,%f0
	br	%r14
.L1464:
	kdb	%f0,.L1470-.L1467(%r5)
	jnl	.L1446
	cdb	%f0,.L1468-.L1467(%r5)
	jne	.L1455
.L1446:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1463:
	lcdbr	%f2,%f0
	kdb	%f0,.L1471-.L1467(%r5)
	jnle	.L1465
	lhi	%r3,1
	ldr	%f0,%f2
	j	.L1443
.L1465:
	kdb	%f0,.L1472-.L1467(%r5)
	jnh	.L1446
	lhi	%r3,1
.L1444:
	lhi	%r0,0
	ldr	%f0,%f2
.L1451:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1470-.L1467(%r5)
	jl	.L1451
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1466
	br	%r14
.L1455:
	lhi	%r3,0
	ldr	%f2,%f0
	j	.L1444
	.section	.rodata
	.align	8
.L1467:
.L1472:
	.long	-1075838976
	.long	0
.L1471:
	.long	-1074790400
	.long	0
.L1470:
	.long	1071644672
	.long	0
.L1469:
	.long	1072693248
	.long	0
.L1468:
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
	je	.L1477
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
.L1476:
	lhi	%r11,1
	nr	%r11,%r1
	lhi	%r10,0
	lcr	%r2,%r10
	srdl	%r0,1
	lcr	%r3,%r11
	je	.L1479
	ahi	%r2,-1
.L1479:
	lr	%r9,%r3
	nr	%r9,%r13
	lr	%r8,%r2
	nr	%r8,%r12
	lr	%r7,%r0
	sldl	%r12,1
	alr	%r5,%r9
	alcr	%r4,%r8
	or	%r7,%r1
	jne	.L1476
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
.L1477:
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r0,%r2
	jle	.L1730
	ltr	%r3,%r3
	lhi	%r12,1
	jl	.L1727
	lr	%r1,%r3
	sll	%r1,1
	lhi	%r5,2
	clr	%r2,%r1
	jle	.L1490
	ltr	%r1,%r1
	lr	%r3,%r1
	lhi	%r10,31
	lhi	%r12,2
	lhi	%r2,11
	sll	%r1,1
	sll	%r5,1
	jl	.L1727
.L1492:
	clr	%r0,%r1
	jle	.L1490
	lr	%r12,%r5
	lr	%r11,%r10
	lr	%r3,%r1
	sll	%r5,1
	ahi	%r11,-1
	brct	%r2,.L1695
	lr	%r2,%r0
.L1491:
	ltr	%r4,%r4
	jne	.L1485
	lr	%r2,%r11
.L1485:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1695:
	.cfi_restore_state
	ltr	%r1,%r1
	sll	%r1,1
	jl	.L1727
	clr	%r0,%r1
	jle	.L1490
	ltr	%r1,%r1
	lr	%r12,%r5
	lr	%r3,%r1
	sll	%r5,1
	sll	%r1,1
	jl	.L1727
	clr	%r0,%r1
	jle	.L1490
	ahi	%r10,-3
	lr	%r12,%r5
	ltr	%r1,%r1
	lr	%r3,%r1
	sll	%r5,1
	sll	%r1,1
	jhe	.L1492
.L1727:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r3,%r0
	jle	.L1622
	lr	%r2,%r0
.L1622:
	clr	%r0,%r3
	jl	.L1623
	lr	%r11,%r12
.L1624:
	lr	%r0,%r12
	srl	%r0,1
	ltr	%r0,%r0
	lr	%r10,%r3
	srl	%r10,1
	jne	.L1625
	j	.L1491
.L1490:
	ltr	%r5,%r5
	lr	%r2,%r0
	je	.L1628
	sr	%r2,%r1
	clr	%r1,%r0
	jle	.L1495
	lr	%r2,%r0
.L1495:
	clr	%r0,%r1
	jl	.L1496
	lr	%r11,%r5
.L1497:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L1625:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L1499
	lr	%r1,%r2
.L1499:
	ltr	%r10,%r10
	lr	%r2,%r1
	jne	.L1501
	lhi	%r0,0
.L1501:
	or	%r11,%r0
	lr	%r5,%r12
	srl	%r5,2
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,2
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1503
	lr	%r1,%r2
.L1503:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1505
	lhi	%r5,0
.L1505:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,3
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,3
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1507
	lr	%r1,%r2
.L1507:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1509
	lhi	%r5,0
.L1509:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,4
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,4
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1513
	lhi	%r5,0
.L1513:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,5
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,5
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1517
	lhi	%r5,0
.L1517:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,6
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,6
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1521
	lhi	%r5,0
.L1521:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,7
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,7
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1731
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1732
.L1525:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,8
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,8
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1733
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1734
.L1529:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,9
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,9
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1735
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1736
.L1533:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,10
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,10
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1737
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1738
.L1537:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,11
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,11
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1739
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1740
.L1541:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,12
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,12
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1741
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1545
.L1753:
	lhi	%r5,0
.L1545:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,13
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,13
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1547
	lr	%r1,%r2
.L1547:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1549
	lhi	%r5,0
.L1549:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,14
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,14
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1551
	lr	%r1,%r2
.L1551:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1553
	lhi	%r5,0
.L1553:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,15
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,15
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1557
	lhi	%r5,0
.L1557:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,16
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,16
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1561
	lhi	%r5,0
.L1561:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,17
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,17
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1565
	lhi	%r5,0
.L1565:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,18
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,18
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1569
	lhi	%r5,0
.L1569:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,19
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,19
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1742
.L1571:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1743
.L1573:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,20
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,20
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1744
.L1575:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1745
.L1577:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,21
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,21
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1746
.L1579:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1747
.L1581:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,22
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,22
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1748
.L1583:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1749
.L1585:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,23
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,23
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1750
.L1587:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L1751
.L1589:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,24
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,24
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1752
.L1591:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1593
	lhi	%r5,0
.L1593:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,25
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,25
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1595
	lr	%r1,%r2
.L1595:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1597
	lhi	%r5,0
.L1597:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,26
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,26
	je	.L1491
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1599
	lr	%r1,%r2
.L1599:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1601
	lhi	%r5,0
.L1601:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,27
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,27
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1605
	lhi	%r5,0
.L1605:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,28
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,28
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1609
	lhi	%r5,0
.L1609:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,29
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,29
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1613
	lhi	%r5,0
.L1613:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,30
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,30
	je	.L1491
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1617
	lhi	%r5,0
.L1617:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L1491
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L1619
	lr	%r2,%r1
.L1619:
	or	%r11,%r3
	j	.L1491
.L1496:
	lhi	%r11,0
	j	.L1497
.L1732:
	lhi	%r5,0
	j	.L1525
.L1731:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L1525
	j	.L1732
.L1734:
	lhi	%r5,0
	j	.L1529
.L1733:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L1529
	j	.L1734
.L1623:
	lhi	%r11,0
	j	.L1624
.L1736:
	lhi	%r5,0
	j	.L1533
.L1735:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L1533
	j	.L1736
.L1738:
	lhi	%r5,0
	j	.L1537
.L1737:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L1537
	j	.L1738
.L1740:
	lhi	%r5,0
	j	.L1541
.L1739:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L1541
	j	.L1740
.L1741:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L1545
	j	.L1753
.L1743:
	lhi	%r5,0
	j	.L1573
.L1742:
	lr	%r1,%r2
	j	.L1571
.L1745:
	lhi	%r5,0
	j	.L1577
.L1744:
	lr	%r1,%r2
	j	.L1575
.L1747:
	lhi	%r5,0
	j	.L1581
.L1746:
	lr	%r1,%r2
	j	.L1579
.L1749:
	lhi	%r5,0
	j	.L1585
.L1748:
	lr	%r1,%r2
	j	.L1583
.L1751:
	lhi	%r5,0
	j	.L1589
.L1750:
	lr	%r1,%r2
	j	.L1587
.L1752:
	lr	%r1,%r2
	j	.L1591
.L1730:
	sr	%r2,%r3
	cr	%r3,%r0
	je	.L1488
	lr	%r2,%r0
.L1488:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L1491
.L1628:
	lhi	%r11,0
	j	.L1491
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
	je	.L1757
	stm	%r14,%r15,88(%r15)
	sll	%r2,8
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__clzsi2
	l	%r4,96(%r15)
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	ahi	%r2,-1
	br	%r4
.L1757:
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
	lr	%r0,%r2
	lr	%r1,%r3
	lr	%r4,%r2
	lr	%r5,%r3
	srda	%r0,63
	xr	%r2,%r0
	xr	%r3,%r1
	cr	%r4,%r0
	je	.L1772
.L1767:
	stm	%r14,%r15,88(%r15)
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__clzdi2
	l	%r1,96(%r15)
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	ahi	%r2,-1
	br	%r1
.L1772:
	cr	%r1,%r5
	jne	.L1767
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
	je	.L1777
	lhi	%r2,1
	nr	%r2,%r1
	lr	%r4,%r1
	srl	%r4,1
	lr	%r0,%r3
	sll	%r0,1
	lcr	%r2,%r2
	nr	%r2,%r3
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,1
	nr	%r4,%r5
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r11,%r1
	srl	%r11,2
	lcr	%r4,%r4
	lr	%r12,%r3
	sll	%r12,2
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r11,%r11
	je	.L1774
	lhi	%r0,1
	nr	%r11,%r0
	lr	%r4,%r1
	srl	%r4,3
	lr	%r0,%r3
	sll	%r0,3
	lcr	%r5,%r11
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L1774
	lhi	%r11,1
	nr	%r4,%r11
	lr	%r5,%r1
	srl	%r5,4
	lr	%r12,%r3
	sll	%r12,4
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r11,%r1
	srl	%r11,5
	lr	%r0,%r3
	sll	%r0,5
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r11,%r11
	je	.L1774
	lhi	%r12,1
	nr	%r11,%r12
	lr	%r5,%r1
	srl	%r5,6
	lr	%r12,%r3
	sll	%r12,6
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r4,%r1
	srl	%r4,7
	lr	%r0,%r3
	sll	%r0,7
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L1774
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r11,%r1
	srl	%r11,8
	lr	%r12,%r3
	sll	%r12,8
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r11,%r11
	je	.L1774
	lhi	%r0,1
	nr	%r11,%r0
	lr	%r4,%r1
	srl	%r4,9
	lr	%r0,%r3
	sll	%r0,9
	lcr	%r5,%r11
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L1774
	lhi	%r11,1
	nr	%r4,%r11
	lr	%r5,%r1
	srl	%r5,10
	lr	%r12,%r3
	sll	%r12,10
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,11
	lr	%r11,%r3
	sll	%r11,11
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,12
	lr	%r12,%r3
	sll	%r12,12
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,13
	lr	%r11,%r3
	sll	%r11,13
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,14
	lr	%r12,%r3
	sll	%r12,14
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,15
	lr	%r11,%r3
	sll	%r11,15
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,16
	lr	%r12,%r3
	sll	%r12,16
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,17
	lr	%r11,%r3
	sll	%r11,17
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,18
	lr	%r12,%r3
	sll	%r12,18
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,19
	lr	%r11,%r3
	sll	%r11,19
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,20
	lr	%r12,%r3
	sll	%r12,20
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,21
	lr	%r11,%r3
	sll	%r11,21
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,22
	lr	%r12,%r3
	sll	%r12,22
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,23
	lr	%r11,%r3
	sll	%r11,23
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,24
	lr	%r12,%r3
	sll	%r12,24
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,25
	lr	%r11,%r3
	sll	%r11,25
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,26
	lr	%r12,%r3
	sll	%r12,26
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,27
	lr	%r11,%r3
	sll	%r11,27
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,28
	lr	%r12,%r3
	sll	%r12,28
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L1774
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,29
	lr	%r11,%r3
	sll	%r11,29
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L1774
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r4,%r1
	srl	%r4,30
	lr	%r12,%r3
	sll	%r12,30
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r4,%r4
	je	.L1774
	sll	%r3,31
	lhi	%r11,1
	sra	%r1,31
	nr	%r4,%r11
	nr	%r1,%r3
	lcr	%r5,%r4
	lr	%r3,%r5
	nr	%r3,%r12
	ar	%r3,%r2
	ar	%r1,%r3
	lr	%r2,%r1
.L1774:
	lm	%r11,%r12,88(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1777:
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
	clr	%r2,%r3
	lr	%r1,%r4
	srl	%r1,3
	jl	.L1877
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jhe	.L1983
.L1877:
	ltr	%r1,%r1
	je	.L1984
	sll	%r1,3
	lr	%r8,%r1
	lr	%r5,%r8
	ahi	%r5,-8
	lhi	%r11,3
	lhi	%r1,0
	srl	%r5,3
	ahi	%r5,1
	nr	%r11,%r5
	je	.L1919
	chi	%r11,1
	je	.L1935
	chi	%r11,2
	je	.L1936
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1936:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r9,0(%r1,%r2)
	st	%r10,4(%r1,%r2)
	ahi	%r1,8
.L1935:
	l	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r0,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r8
	je	.L1963
.L1919:
	srl	%r5,2
.L1880:
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
	brct	%r5,.L1880
.L1963:
	clr	%r4,%r12
	jle	.L1873
	lr	%r0,%r4
	sr	%r0,%r12
	lr	%r1,%r0
	ahi	%r1,-1
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L1937
	lr	%r8,%r12
	ahi	%r8,1
	lr	%r11,%r2
	ar	%r11,%r12
	lr	%r9,%r11
	lr	%r10,%r3
	ar	%r10,%r12
	lhi	%r1,2
	ar	%r8,%r3
	sr	%r9,%r8
	clr	%r9,%r1
	jle	.L1937
	lr	%r8,%r10
	or	%r8,%r11
	lhi	%r5,3
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1937
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	lhi	%r1,0
	srl	%r5,2
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1910
	chi	%r8,1
	je	.L1938
	chi	%r8,2
	jne	.L1985
.L1939:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1938:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r1,%r9
	je	.L1962
.L1910:
	srl	%r5,2
	chi	%r5,2
	jle	.L1979
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L1883:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L1883
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L1962:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1873
	lr	%r11,%r12
	ahi	%r11,1
	ic	%r0,0(%r12,%r3)
	clr	%r4,%r11
	stc	%r0,0(%r12,%r2)
	jle	.L1873
	ahi	%r11,1
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	clr	%r4,%r11
	jle	.L1873
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1873:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1983:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1873
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1928
	chi	%r0,1
	je	.L1933
	chi	%r0,2
	je	.L1934
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1934:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L1933:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1873
.L1928:
	srl	%r4,2
	chi	%r4,2
	jle	.L1980
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1878:
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
	brct	%r4,.L1878
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
	j	.L1873
.L1979:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1979
	j	.L1962
.L1985:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1939
.L1980:
	ic	%r11,0(%r1,%r3)
	lr	%r12,%r1
	ahi	%r12,-1
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r9,%r1
	ahi	%r9,-3
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-4
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	brct	%r4,.L1980
	j	.L1873
.L1984:
	ltr	%r4,%r4
	je	.L1873
.L1937:
	lr	%r1,%r4
	sr	%r1,%r12
	lhi	%r9,3
	nr	%r9,%r1
	je	.L1901
	chi	%r9,1
	je	.L1940
	chi	%r9,2
	jne	.L1986
.L1941:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
.L1940:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r12,%r4
	je	.L1873
.L1901:
	srl	%r1,2
	chi	%r1,2
	jle	.L1978
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L1885:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L1885
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L1873
.L1978:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	ic	%r10,2(%r12,%r3)
	stc	%r10,2(%r12,%r2)
	ic	%r9,3(%r12,%r3)
	stc	%r9,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1978
	j	.L1873
.L1986:
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r12,1
	j	.L1941
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r0,%r4
	srl	%r0,1
	jl	.L1992
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jhe	.L2077
.L1992:
	ltr	%r0,%r0
	je	.L1991
	lr	%r1,%r0
	ahi	%r1,-1
	lhi	%r5,8
	clr	%r1,%r5
	jle	.L1995
	lr	%r11,%r3
	or	%r11,%r2
	lhi	%r12,3
	nr	%r11,%r12
	ahi	%r11,-1
	ltr	%r11,%r11
	jhe	.L1995
	lr	%r10,%r3
	ahi	%r10,2
	cr	%r10,%r2
	je	.L1995
	lhi	%r12,-4
	nr	%r12,%r4
	lr	%r5,%r12
	ahi	%r5,-4
	lhi	%r10,3
	lr	%r11,%r4
	lhi	%r1,0
	srl	%r11,2
	srl	%r5,2
	ahi	%r5,1
	nr	%r10,%r5
	je	.L2025
	chi	%r10,1
	je	.L2041
	chi	%r10,2
	jne	.L2078
.L2042:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L2041:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L2060
.L2025:
	srl	%r5,2
	chi	%r5,2
	jle	.L2074
	ahi	%r5,-1
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
.L1996:
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	brct	%r5,.L1996
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2060:
	sll	%r11,1
	cr	%r11,%r0
	je	.L1991
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L1991:
	tml	%r4,1
	je	.L1988
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1988:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2077:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1988
	lhi	%r5,3
	nr	%r5,%r4
	je	.L2034
	chi	%r5,1
	je	.L2039
	chi	%r5,2
	je	.L2040
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2040:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L2039:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1988
.L2034:
	srl	%r4,2
	chi	%r4,2
	jle	.L2075
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1993:
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
	brct	%r4,.L1993
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
	j	.L1988
.L2074:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2074
	j	.L2060
.L2078:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L2042
.L2075:
	ic	%r12,0(%r1,%r3)
	lr	%r10,%r1
	ahi	%r10,-1
	lr	%r11,%r1
	ahi	%r11,-2
	stc	%r12,0(%r1,%r2)
	lr	%r12,%r1
	ahi	%r12,-3
	ahi	%r1,-4
	ic	%r5,0(%r10,%r3)
	stc	%r5,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	brct	%r4,.L2075
	j	.L1988
.L1995:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r11,3
	lhi	%r1,0
	srl	%r5,1
	ahi	%r5,1
	nr	%r11,%r5
	je	.L2016
	chi	%r11,1
	je	.L2043
	chi	%r11,2
	jne	.L2079
.L2044:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L2043:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1991
.L2016:
	srl	%r5,2
	chi	%r5,2
	jle	.L2073
	ahi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L1998:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	ahi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brct	%r5,.L1998
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L1991
.L2073:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r11,6(%r1,%r3)
	sth	%r11,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L2073
	j	.L1991
.L2079:
	lh	%r12,0(%r3)
	lhi	%r1,2
	sth	%r12,0(%r2)
	j	.L2044
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
	clr	%r2,%r3
	lr	%r1,%r4
	srl	%r1,2
	jl	.L2085
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jhe	.L2194
.L2085:
	ltr	%r1,%r1
	je	.L2195
	sll	%r1,2
	lr	%r8,%r1
	lr	%r5,%r8
	ahi	%r5,-4
	lhi	%r11,3
	lhi	%r1,0
	srl	%r5,2
	ahi	%r5,1
	nr	%r11,%r5
	je	.L2127
	chi	%r11,1
	je	.L2143
	chi	%r11,2
	je	.L2144
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L2144:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L2143:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r8
	je	.L2171
.L2127:
	srl	%r5,2
	chi	%r5,2
	jle	.L2191
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L2088:
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	brct	%r5,.L2088
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2171:
	clr	%r4,%r12
	jle	.L2081
	lr	%r0,%r4
	sr	%r0,%r12
	lr	%r1,%r0
	ahi	%r1,-1
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L2145
	lr	%r9,%r12
	ahi	%r9,1
	lr	%r11,%r2
	ar	%r11,%r12
	lr	%r8,%r11
	lr	%r10,%r3
	ar	%r10,%r12
	lhi	%r1,2
	ar	%r9,%r3
	sr	%r8,%r9
	clr	%r8,%r1
	jle	.L2145
	lr	%r9,%r10
	or	%r9,%r11
	lhi	%r5,3
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L2145
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	lhi	%r1,0
	srl	%r5,2
	ahi	%r5,1
	nr	%r8,%r5
	je	.L2118
	chi	%r8,1
	je	.L2146
	chi	%r8,2
	jne	.L2196
.L2147:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L2146:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r1,%r9
	je	.L2170
.L2118:
	srl	%r5,2
	chi	%r5,2
	jle	.L2190
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L2091:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L2091
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L2170:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L2081
	lr	%r10,%r12
	ahi	%r10,1
	ic	%r11,0(%r12,%r3)
	clr	%r4,%r10
	stc	%r11,0(%r12,%r2)
	jle	.L2081
	ahi	%r10,1
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	clr	%r4,%r10
	jle	.L2081
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2081:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2194:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2081
	lhi	%r0,3
	nr	%r0,%r4
	je	.L2136
	chi	%r0,1
	je	.L2141
	chi	%r0,2
	je	.L2142
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2142:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L2141:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2081
.L2136:
	srl	%r4,2
	chi	%r4,2
	jle	.L2192
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2086:
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
	brct	%r4,.L2086
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
	j	.L2081
.L2191:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2191
	j	.L2171
.L2190:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L2190
	j	.L2170
.L2196:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L2147
.L2192:
	ic	%r11,0(%r1,%r3)
	lr	%r12,%r1
	ahi	%r12,-1
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r9,%r1
	ahi	%r9,-3
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-4
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	brct	%r4,.L2192
	j	.L2081
.L2195:
	ltr	%r4,%r4
	je	.L2081
.L2145:
	lr	%r1,%r4
	sr	%r1,%r12
	lhi	%r9,3
	nr	%r9,%r1
	je	.L2109
	chi	%r9,1
	je	.L2148
	chi	%r9,2
	jne	.L2197
.L2149:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
.L2148:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
	cr	%r12,%r4
	je	.L2081
.L2109:
	srl	%r1,2
	chi	%r1,2
	jle	.L2189
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L2093:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L2093
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L2081
.L2189:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r11,1(%r12,%r3)
	stc	%r11,1(%r12,%r2)
	ic	%r0,2(%r12,%r3)
	stc	%r0,2(%r12,%r2)
	ic	%r9,3(%r12,%r3)
	stc	%r9,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L2189
	j	.L2081
.L2197:
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r12,1
	j	.L2149
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
	larl	%r5,.L2204
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L2205-.L2204(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2204:
.L2205:
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
	larl	%r5,.L2209
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L2207
	adb	%f0,.L2210-.L2209(%r5)
.L2207:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2209:
.L2210:
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
	l	%r4,96(%r15)
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r4
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
	l	%r4,96(%r15)
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r4
	.cfi_endproc
.LFE112:
	.size	__ulltof, .-__ulltof
	.align	8
.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	lr	%r5,%r2
	lr	%r1,%r3
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
	jne	.L2222
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2223
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2224
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2225
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2226
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2227
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2228
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2229
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2230
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2231
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2232
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2233
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2234
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2235
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2222:
	lhi	%r2,0
	br	%r14
.L2233:
	lhi	%r2,12
	br	%r14
.L2223:
	lhi	%r2,2
	br	%r14
.L2224:
	lhi	%r2,3
	br	%r14
.L2225:
	lhi	%r2,4
	br	%r14
.L2226:
	lhi	%r2,5
	br	%r14
.L2227:
	lhi	%r2,6
	br	%r14
.L2228:
	lhi	%r2,7
	br	%r14
.L2229:
	lhi	%r2,8
	br	%r14
.L2230:
	lhi	%r2,9
	br	%r14
.L2231:
	lhi	%r2,10
	br	%r14
.L2232:
	lhi	%r2,11
	br	%r14
.L2234:
	lhi	%r2,13
	br	%r14
.L2235:
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
	jne	.L2242
	tml	%r2,2
	jne	.L2243
	tml	%r2,4
	jne	.L2244
	tml	%r2,8
	jne	.L2245
	tml	%r2,16
	jne	.L2246
	tml	%r2,32
	jne	.L2247
	tml	%r2,64
	jne	.L2248
	tml	%r2,128
	jne	.L2249
	tml	%r2,256
	jne	.L2250
	tml	%r2,512
	jne	.L2251
	tml	%r2,1024
	jne	.L2252
	tml	%r2,2048
	jne	.L2253
	tml	%r2,4096
	jne	.L2254
	tml	%r2,8192
	jne	.L2255
	tml	%r2,16384
	jne	.L2256
	lr	%r1,%r2
	sra	%r1,15
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2242:
	lhi	%r2,0
	br	%r14
.L2243:
	lhi	%r2,1
	br	%r14
.L2254:
	lhi	%r2,12
	br	%r14
.L2244:
	lhi	%r2,2
	br	%r14
.L2245:
	lhi	%r2,3
	br	%r14
.L2246:
	lhi	%r2,4
	br	%r14
.L2247:
	lhi	%r2,5
	br	%r14
.L2248:
	lhi	%r2,6
	br	%r14
.L2249:
	lhi	%r2,7
	br	%r14
.L2250:
	lhi	%r2,8
	br	%r14
.L2251:
	lhi	%r2,9
	br	%r14
.L2252:
	lhi	%r2,10
	br	%r14
.L2253:
	lhi	%r2,11
	br	%r14
.L2255:
	lhi	%r2,13
	br	%r14
.L2256:
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
	larl	%r5,.L2268
	keb	%f0,.L2269-.L2268(%r5)
	jhe	.L2267
	cfebr	%r2,5,%f0
	br	%r14
.L2267:
	seb	%f0,.L2269-.L2268(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L2270-.L2268(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2268:
.L2269:
	.long	1191182336
.L2270:
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r1,%r2
	sra	%r2,1
	lhi	%r4,1
	lr	%r11,%r1
	lhi	%r3,1
	sra	%r11,2
	nr	%r3,%r1
	lr	%r12,%r1
	sra	%r12,3
	lr	%r0,%r1
	sra	%r0,4
	lr	%r5,%r1
	nr	%r2,%r4
	sra	%r5,5
	lr	%r10,%r1
	sra	%r10,8
	nr	%r11,%r4
	nr	%r12,%r4
	nr	%r0,%r4
	ar	%r2,%r3
	nr	%r5,%r4
	lr	%r4,%r1
	sra	%r4,6
	lr	%r3,%r1
	sra	%r3,7
	ar	%r2,%r11
	lhi	%r11,1
	nr	%r4,%r11
	nr	%r10,%r11
	nr	%r3,%r11
	lr	%r11,%r1
	sra	%r11,9
	ar	%r2,%r12
	lr	%r12,%r1
	sra	%r12,10
	ar	%r2,%r0
	lhi	%r0,1
	nr	%r11,%r0
	nr	%r12,%r0
	lr	%r0,%r1
	sra	%r0,11
	ar	%r2,%r5
	lhi	%r5,1
	nr	%r0,%r5
	lr	%r5,%r1
	sra	%r5,12
	ar	%r2,%r4
	lhi	%r4,1
	nr	%r5,%r4
	lr	%r4,%r1
	sra	%r4,13
	ar	%r2,%r3
	lhi	%r3,1
	nr	%r4,%r3
	lr	%r3,%r1
	sra	%r3,14
	sra	%r1,15
	ar	%r2,%r10
	lhi	%r10,1
	nr	%r3,%r10
	ar	%r2,%r11
	ar	%r2,%r12
	lm	%r10,%r12,84(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	ar	%r2,%r0
	ar	%r2,%r5
	ar	%r2,%r4
	ar	%r2,%r3
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r1,%r2
	sra	%r1,1
	lhi	%r4,1
	lr	%r11,%r2
	lhi	%r3,1
	sra	%r11,2
	nr	%r3,%r2
	lr	%r12,%r2
	sra	%r12,3
	lr	%r0,%r2
	sra	%r0,4
	lr	%r5,%r2
	nr	%r1,%r4
	sra	%r5,5
	lr	%r10,%r2
	sra	%r10,8
	nr	%r11,%r4
	nr	%r12,%r4
	nr	%r0,%r4
	ar	%r1,%r3
	nr	%r5,%r4
	lr	%r4,%r2
	sra	%r4,6
	lr	%r3,%r2
	sra	%r3,7
	ar	%r1,%r11
	lhi	%r11,1
	nr	%r4,%r11
	nr	%r10,%r11
	nr	%r3,%r11
	lr	%r11,%r2
	sra	%r11,9
	ar	%r1,%r12
	lr	%r12,%r2
	sra	%r12,10
	ar	%r1,%r0
	lhi	%r0,1
	nr	%r11,%r0
	nr	%r12,%r0
	lr	%r0,%r2
	sra	%r0,11
	ar	%r1,%r5
	lhi	%r5,1
	nr	%r0,%r5
	lr	%r5,%r2
	sra	%r5,12
	ar	%r1,%r4
	lhi	%r4,1
	nr	%r5,%r4
	lr	%r4,%r2
	sra	%r4,13
	ar	%r1,%r3
	lhi	%r3,1
	nr	%r4,%r3
	lr	%r3,%r2
	sra	%r3,14
	sra	%r2,15
	ar	%r1,%r10
	lhi	%r10,1
	nr	%r3,%r10
	ar	%r1,%r11
	ar	%r1,%r12
	lm	%r10,%r12,84(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	ar	%r1,%r0
	ar	%r1,%r5
	ar	%r1,%r4
	ar	%r1,%r3
	ar	%r2,%r1
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
	je	.L2280
	lhi	%r2,1
	nr	%r2,%r1
	lr	%r4,%r1
	srl	%r4,1
	lr	%r0,%r3
	sll	%r0,1
	lcr	%r2,%r2
	nr	%r2,%r3
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,1
	nr	%r4,%r5
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r11,%r1
	srl	%r11,2
	lcr	%r4,%r4
	lr	%r12,%r3
	sll	%r12,2
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r11,%r11
	je	.L2277
	lhi	%r0,1
	nr	%r11,%r0
	lr	%r4,%r1
	srl	%r4,3
	lr	%r0,%r3
	sll	%r0,3
	lcr	%r5,%r11
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L2277
	lhi	%r11,1
	nr	%r4,%r11
	lr	%r5,%r1
	srl	%r5,4
	lr	%r12,%r3
	sll	%r12,4
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r11,%r1
	srl	%r11,5
	lr	%r0,%r3
	sll	%r0,5
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r11,%r11
	je	.L2277
	lhi	%r12,1
	nr	%r11,%r12
	lr	%r5,%r1
	srl	%r5,6
	lr	%r12,%r3
	sll	%r12,6
	lcr	%r4,%r11
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r4,%r1
	srl	%r4,7
	lr	%r0,%r3
	sll	%r0,7
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L2277
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r11,%r1
	srl	%r11,8
	lr	%r12,%r3
	sll	%r12,8
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r11,%r11
	je	.L2277
	lhi	%r0,1
	nr	%r11,%r0
	lr	%r4,%r1
	srl	%r4,9
	lr	%r0,%r3
	sll	%r0,9
	lcr	%r5,%r11
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L2277
	lhi	%r11,1
	nr	%r4,%r11
	lr	%r5,%r1
	srl	%r5,10
	lr	%r12,%r3
	sll	%r12,10
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,11
	lr	%r11,%r3
	sll	%r11,11
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,12
	lr	%r12,%r3
	sll	%r12,12
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,13
	lr	%r11,%r3
	sll	%r11,13
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,14
	lr	%r12,%r3
	sll	%r12,14
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,15
	lr	%r11,%r3
	sll	%r11,15
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,16
	lr	%r12,%r3
	sll	%r12,16
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,17
	lr	%r11,%r3
	sll	%r11,17
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,18
	lr	%r12,%r3
	sll	%r12,18
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,19
	lr	%r11,%r3
	sll	%r11,19
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,20
	lr	%r12,%r3
	sll	%r12,20
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,21
	lr	%r11,%r3
	sll	%r11,21
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,22
	lr	%r12,%r3
	sll	%r12,22
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,23
	lr	%r11,%r3
	sll	%r11,23
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,24
	lr	%r12,%r3
	sll	%r12,24
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,25
	lr	%r11,%r3
	sll	%r11,25
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,26
	lr	%r12,%r3
	sll	%r12,26
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,27
	lr	%r11,%r3
	sll	%r11,27
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r1
	srl	%r5,28
	lr	%r12,%r3
	sll	%r12,28
	lcr	%r4,%r0
	nr	%r4,%r11
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2277
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r1
	srl	%r0,29
	lr	%r11,%r3
	sll	%r11,29
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r0,%r0
	je	.L2277
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r4,%r1
	srl	%r4,30
	lr	%r12,%r3
	sll	%r12,30
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r4,%r4
	je	.L2277
	sll	%r3,31
	lhi	%r11,1
	sra	%r1,31
	nr	%r4,%r11
	nr	%r1,%r3
	lcr	%r5,%r4
	lr	%r3,%r5
	nr	%r3,%r12
	ar	%r3,%r2
	ar	%r1,%r3
	lr	%r2,%r1
.L2277:
	lm	%r11,%r12,88(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2280:
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
	je	.L2380
	ltr	%r3,%r3
	je	.L2380
	lhi	%r2,1
	nr	%r2,%r3
	lr	%r4,%r3
	srl	%r4,1
	lr	%r0,%r1
	sll	%r0,1
	lcr	%r2,%r2
	nr	%r2,%r1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,1
	nr	%r4,%r5
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lr	%r11,%r3
	srl	%r11,2
	lcr	%r4,%r4
	lr	%r12,%r1
	sll	%r12,2
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r11,%r11
	je	.L2376
	lhi	%r0,1
	nr	%r11,%r0
	lr	%r4,%r3
	srl	%r4,3
	lr	%r0,%r1
	sll	%r0,3
	lcr	%r5,%r11
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L2376
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r5,%r3
	srl	%r5,4
	lr	%r11,%r1
	sll	%r11,4
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2376
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r4,%r3
	srl	%r4,5
	lr	%r0,%r1
	sll	%r0,5
	lcr	%r12,%r5
	nr	%r12,%r11
	ar	%r2,%r12
	ltr	%r4,%r4
	je	.L2376
	lhi	%r11,1
	nr	%r4,%r11
	lr	%r5,%r3
	srl	%r5,6
	lr	%r12,%r1
	sll	%r12,6
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	ltr	%r5,%r5
	je	.L2376
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r4,%r3
	srl	%r4,7
	lr	%r11,%r1
	sll	%r11,7
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L2376
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r5,%r3
	srl	%r5,8
	lr	%r12,%r1
	sll	%r12,8
	lcr	%r0,%r4
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r4,%r3
	srl	%r4,9
	lr	%r0,%r1
	sll	%r0,9
	lcr	%r5,%r5
	nr	%r5,%r12
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L2376
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r5,%r3
	srl	%r5,10
	lr	%r12,%r1
	sll	%r12,10
	lcr	%r11,%r4
	nr	%r11,%r0
	ar	%r2,%r11
	ltr	%r5,%r5
	je	.L2376
	lhi	%r0,1
	nr	%r5,%r0
	lr	%r0,%r3
	srl	%r0,11
	lr	%r11,%r1
	sll	%r11,11
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,12
	lr	%r12,%r1
	sll	%r12,12
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,13
	lr	%r11,%r1
	sll	%r11,13
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,14
	lr	%r12,%r1
	sll	%r12,14
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,15
	lr	%r11,%r1
	sll	%r11,15
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,16
	lr	%r12,%r1
	sll	%r12,16
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,17
	lr	%r11,%r1
	sll	%r11,17
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,18
	lr	%r12,%r1
	sll	%r12,18
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,19
	lr	%r11,%r1
	sll	%r11,19
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,20
	lr	%r12,%r1
	sll	%r12,20
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,21
	lr	%r11,%r1
	sll	%r11,21
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,22
	lr	%r12,%r1
	sll	%r12,22
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,23
	lr	%r11,%r1
	sll	%r11,23
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,24
	lr	%r12,%r1
	sll	%r12,24
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,25
	lr	%r11,%r1
	sll	%r11,25
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,26
	lr	%r12,%r1
	sll	%r12,26
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,27
	lr	%r11,%r1
	sll	%r11,27
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r5,%r3
	srl	%r5,28
	lr	%r12,%r1
	sll	%r12,28
	lcr	%r0,%r0
	nr	%r0,%r11
	ar	%r2,%r0
	ltr	%r5,%r5
	je	.L2376
	lhi	%r11,1
	nr	%r5,%r11
	lr	%r0,%r3
	srl	%r0,29
	lr	%r11,%r1
	sll	%r11,29
	lcr	%r4,%r5
	nr	%r4,%r12
	ar	%r2,%r4
	ltr	%r0,%r0
	je	.L2376
	lhi	%r12,1
	nr	%r0,%r12
	lr	%r4,%r3
	srl	%r4,30
	lr	%r12,%r1
	sll	%r12,30
	lcr	%r5,%r0
	nr	%r5,%r11
	ar	%r2,%r5
	ltr	%r4,%r4
	je	.L2376
	sra	%r3,31
	lhi	%r11,1
	sll	%r1,31
	nr	%r4,%r11
	nr	%r1,%r3
	lcr	%r0,%r4
	lr	%r3,%r0
	nr	%r3,%r12
	ar	%r3,%r2
	ar	%r1,%r3
	lr	%r2,%r1
.L2376:
	lm	%r11,%r12,88(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2380:
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r0,%r2
	jle	.L2721
	ltr	%r3,%r3
	lhi	%r12,1
	jl	.L2718
	lr	%r1,%r3
	sll	%r1,1
	lhi	%r5,2
	clr	%r2,%r1
	jle	.L2481
	ltr	%r1,%r1
	lr	%r3,%r1
	lhi	%r10,31
	lhi	%r12,2
	lhi	%r2,11
	sll	%r1,1
	sll	%r5,1
	jl	.L2718
.L2483:
	clr	%r0,%r1
	jle	.L2481
	lr	%r12,%r5
	lr	%r11,%r10
	lr	%r3,%r1
	sll	%r5,1
	ahi	%r11,-1
	brct	%r2,.L2686
	lr	%r2,%r0
.L2482:
	ltr	%r4,%r4
	jne	.L2476
	lr	%r2,%r11
.L2476:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2686:
	.cfi_restore_state
	ltr	%r1,%r1
	sll	%r1,1
	jl	.L2718
	clr	%r0,%r1
	jle	.L2481
	ltr	%r1,%r1
	lr	%r12,%r5
	lr	%r3,%r1
	sll	%r5,1
	sll	%r1,1
	jl	.L2718
	clr	%r0,%r1
	jle	.L2481
	ahi	%r10,-3
	lr	%r12,%r5
	ltr	%r1,%r1
	lr	%r3,%r1
	sll	%r5,1
	sll	%r1,1
	jhe	.L2483
.L2718:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r3,%r0
	jle	.L2613
	lr	%r2,%r0
.L2613:
	clr	%r0,%r3
	jl	.L2614
	lr	%r11,%r12
.L2615:
	lr	%r0,%r12
	srl	%r0,1
	ltr	%r0,%r0
	lr	%r10,%r3
	srl	%r10,1
	jne	.L2616
	j	.L2482
.L2481:
	ltr	%r5,%r5
	lr	%r2,%r0
	je	.L2619
	sr	%r2,%r1
	clr	%r1,%r0
	jle	.L2486
	lr	%r2,%r0
.L2486:
	clr	%r0,%r1
	jl	.L2487
	lr	%r11,%r5
.L2488:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L2616:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L2490
	lr	%r1,%r2
.L2490:
	ltr	%r10,%r10
	lr	%r2,%r1
	jne	.L2492
	lhi	%r0,0
.L2492:
	or	%r11,%r0
	lr	%r5,%r12
	srl	%r5,2
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,2
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2494
	lr	%r1,%r2
.L2494:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2496
	lhi	%r5,0
.L2496:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,3
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,3
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2498
	lr	%r1,%r2
.L2498:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2500
	lhi	%r5,0
.L2500:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,4
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,4
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2502
	lr	%r1,%r2
.L2502:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2504
	lhi	%r5,0
.L2504:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,5
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,5
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2506
	lr	%r1,%r2
.L2506:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2508
	lhi	%r5,0
.L2508:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,6
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,6
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2510
	lr	%r1,%r2
.L2510:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2512
	lhi	%r5,0
.L2512:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,7
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,7
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2722
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2723
.L2516:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,8
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,8
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2724
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2725
.L2520:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,9
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,9
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2726
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2727
.L2524:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,10
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,10
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2728
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2729
.L2528:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,11
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,11
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2730
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2731
.L2532:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,12
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,12
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2732
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2536
.L2744:
	lhi	%r5,0
.L2536:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,13
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,13
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2538
	lr	%r1,%r2
.L2538:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2540
	lhi	%r5,0
.L2540:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,14
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,14
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2542
	lr	%r1,%r2
.L2542:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2544
	lhi	%r5,0
.L2544:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,15
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,15
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2546
	lr	%r1,%r2
.L2546:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2548
	lhi	%r5,0
.L2548:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,16
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,16
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2550
	lr	%r1,%r2
.L2550:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2552
	lhi	%r5,0
.L2552:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,17
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,17
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2554
	lr	%r1,%r2
.L2554:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2556
	lhi	%r5,0
.L2556:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,18
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,18
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2558
	lr	%r1,%r2
.L2558:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2560
	lhi	%r5,0
.L2560:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,19
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,19
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2733
.L2562:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2734
.L2564:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,20
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,20
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2735
.L2566:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2736
.L2568:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,21
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,21
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2737
.L2570:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2738
.L2572:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,22
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,22
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2739
.L2574:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2740
.L2576:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,23
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,23
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2741
.L2578:
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L2742
.L2580:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,24
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,24
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2743
.L2582:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2584
	lhi	%r5,0
.L2584:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,25
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,25
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2586
	lr	%r1,%r2
.L2586:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2588
	lhi	%r5,0
.L2588:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,26
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,26
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2590
	lr	%r1,%r2
.L2590:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2592
	lhi	%r5,0
.L2592:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,27
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,27
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2594
	lr	%r1,%r2
.L2594:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2596
	lhi	%r5,0
.L2596:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,28
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,28
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2598
	lr	%r1,%r2
.L2598:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2600
	lhi	%r5,0
.L2600:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,29
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,29
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2602
	lr	%r1,%r2
.L2602:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2604
	lhi	%r5,0
.L2604:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,30
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,30
	je	.L2482
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2606
	lr	%r1,%r2
.L2606:
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2608
	lhi	%r5,0
.L2608:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L2482
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L2610
	lr	%r2,%r1
.L2610:
	or	%r11,%r3
	j	.L2482
.L2487:
	lhi	%r11,0
	j	.L2488
.L2723:
	lhi	%r5,0
	j	.L2516
.L2722:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L2516
	j	.L2723
.L2725:
	lhi	%r5,0
	j	.L2520
.L2724:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L2520
	j	.L2725
.L2614:
	lhi	%r11,0
	j	.L2615
.L2727:
	lhi	%r5,0
	j	.L2524
.L2726:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L2524
	j	.L2727
.L2729:
	lhi	%r5,0
	j	.L2528
.L2728:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L2528
	j	.L2729
.L2731:
	lhi	%r5,0
	j	.L2532
.L2730:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L2532
	j	.L2731
.L2732:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L2536
	j	.L2744
.L2734:
	lhi	%r5,0
	j	.L2564
.L2733:
	lr	%r1,%r2
	j	.L2562
.L2736:
	lhi	%r5,0
	j	.L2568
.L2735:
	lr	%r1,%r2
	j	.L2566
.L2738:
	lhi	%r5,0
	j	.L2572
.L2737:
	lr	%r1,%r2
	j	.L2570
.L2740:
	lhi	%r5,0
	j	.L2576
.L2739:
	lr	%r1,%r2
	j	.L2574
.L2742:
	lhi	%r5,0
	j	.L2580
.L2741:
	lr	%r1,%r2
	j	.L2578
.L2743:
	lr	%r1,%r2
	j	.L2582
.L2721:
	sr	%r2,%r3
	cr	%r3,%r0
	je	.L2479
	lr	%r2,%r0
.L2479:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L2482
.L2619:
	lhi	%r11,0
	j	.L2482
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
	jl	.L2749
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2749:
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
	jl	.L2754
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2754:
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
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	ltr	%r1,%r3
	lr	%r4,%r2
	jl	.L2858
	je	.L2768
	lhi	%r2,1
	nr	%r2,%r1
	lr	%r3,%r1
	lr	%r0,%r4
	sll	%r0,1
	lcr	%r2,%r2
	nr	%r2,%r4
	sra	%r3,1
	je	.L2760
	lhi	%r5,1
	nr	%r5,%r3
	lr	%r3,%r4
	sll	%r3,2
	lcr	%r12,%r5
	nr	%r12,%r0
	ar	%r2,%r12
	sra	%r1,2
	je	.L2760
	lhi	%r5,0
.L2766:
	lhi	%r12,1
	nr	%r12,%r1
	lr	%r0,%r3
	sll	%r0,1
	lcr	%r4,%r12
	nr	%r4,%r3
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,1
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,2
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,2
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,3
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,3
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,4
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,4
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,5
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,5
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,6
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,6
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,7
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,7
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,8
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,8
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,9
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,9
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,10
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,10
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,11
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,11
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,12
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,13
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,13
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,14
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,14
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,15
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,15
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,16
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,16
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,17
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,17
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,18
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,18
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,19
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,19
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,20
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,20
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,21
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,21
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,22
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,22
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,23
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,23
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,24
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,24
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,25
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,25
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	lr	%r12,%r3
	sll	%r12,26
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,26
	je	.L2767
	lhi	%r0,1
	nr	%r4,%r0
	lr	%r0,%r3
	sll	%r0,27
	lcr	%r4,%r4
	nr	%r4,%r12
	ar	%r2,%r4
	lr	%r4,%r1
	sra	%r4,27
	je	.L2767
	lhi	%r12,1
	nr	%r4,%r12
	sra	%r1,28
	sll	%r3,28
	lcr	%r4,%r4
	lcr	%r1,%r1
	nr	%r4,%r0
	nr	%r1,%r3
	ar	%r4,%r2
	ar	%r1,%r4
	lr	%r2,%r1
.L2767:
	ltr	%r5,%r5
	je	.L2760
.L2763:
	lcr	%r2,%r2
.L2760:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L2858:
	.cfi_restore_state
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r1,%r1
	lr	%r3,%r1
	lr	%r12,%r4
	sll	%r12,1
	lcr	%r2,%r2
	nr	%r2,%r4
	sra	%r3,1
	je	.L2763
	lhi	%r0,1
	nr	%r0,%r3
	lr	%r3,%r4
	lhi	%r5,1
	sll	%r3,2
	lcr	%r4,%r0
	nr	%r4,%r12
	ar	%r2,%r4
	sra	%r1,2
	jne	.L2766
	lcr	%r2,%r2
	j	.L2760
.L2768:
	lhi	%r2,0
	j	.L2760
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
	clr	%r0,%r4
	jhe	.L2864
	lr	%r1,%r3
	sll	%r1,2
	clr	%r1,%r4
	jhe	.L2997
	lr	%r1,%r3
	sll	%r1,3
	clr	%r1,%r4
	jhe	.L2998
	lr	%r1,%r3
	sll	%r1,4
	clr	%r1,%r4
	jhe	.L2999
	lr	%r1,%r3
	sll	%r1,5
	clr	%r1,%r4
	jhe	.L3000
	lr	%r1,%r3
	sll	%r1,6
	clr	%r1,%r4
	jhe	.L3001
	lr	%r1,%r3
	sll	%r1,7
	clr	%r1,%r4
	jhe	.L3002
	lr	%r1,%r3
	sll	%r1,8
	clr	%r1,%r4
	jhe	.L3003
	lr	%r1,%r3
	sll	%r1,9
	clr	%r1,%r4
	jhe	.L3004
	lr	%r1,%r3
	sll	%r1,10
	clr	%r1,%r4
	jhe	.L3005
	lr	%r1,%r3
	sll	%r1,11
	clr	%r1,%r4
	jhe	.L3006
	lr	%r1,%r3
	sll	%r1,12
	clr	%r1,%r4
	jhe	.L3007
	lr	%r1,%r3
	sll	%r1,13
	clr	%r1,%r4
	jhe	.L3008
	lr	%r1,%r3
	sll	%r1,14
	clr	%r1,%r4
	jhe	.L3009
	lr	%r1,%r3
	sll	%r1,15
	clr	%r1,%r4
	jhe	.L3010
	lr	%r1,%r3
	sll	%r1,16
	clr	%r1,%r4
	jhe	.L3011
	lr	%r1,%r3
	sll	%r1,17
	clr	%r1,%r4
	jhe	.L3012
	lr	%r1,%r3
	sll	%r1,18
	clr	%r1,%r4
	jhe	.L3013
	lr	%r1,%r3
	sll	%r1,19
	clr	%r1,%r4
	jhe	.L3014
	lr	%r1,%r3
	sll	%r1,20
	clr	%r1,%r4
	jhe	.L3015
	lr	%r1,%r3
	sll	%r1,21
	clr	%r1,%r4
	jhe	.L3016
	lr	%r1,%r3
	sll	%r1,22
	clr	%r1,%r4
	jhe	.L3017
	lr	%r1,%r3
	sll	%r1,23
	clr	%r1,%r4
	jhe	.L3018
	lr	%r1,%r3
	sll	%r1,24
	clr	%r1,%r4
	jhe	.L3019
	lr	%r1,%r3
	sll	%r1,25
	clr	%r1,%r4
	jhe	.L3020
	lr	%r1,%r3
	sll	%r1,26
	clr	%r1,%r4
	jhe	.L3021
	lr	%r1,%r3
	sll	%r1,27
	clr	%r1,%r4
	jhe	.L3022
	lr	%r1,%r3
	sll	%r1,28
	clr	%r1,%r4
	jhe	.L3023
	lr	%r1,%r3
	sll	%r1,29
	clr	%r1,%r4
	jhe	.L3024
	lr	%r1,%r3
	sll	%r1,30
	clr	%r1,%r4
	jhe	.L3025
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
	clr	%r1,%r4
	jle	.L2984
	lr	%r2,%r4
.L2984:
	lr	%r10,%r1
	srl	%r10,1
	lr	%r3,%r2
	sr	%r3,%r10
	clr	%r10,%r2
	jle	.L2986
	lr	%r3,%r2
.L2986:
	lr	%r11,%r1
	srl	%r11,2
	lr	%r12,%r3
	sr	%r12,%r11
	clr	%r11,%r3
	jle	.L2988
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
	srl	%r4,3
	ltr	%r4,%r4
	lr	%r11,%r1
	srl	%r11,3
	je	.L2866
	lr	%r3,%r12
	sr	%r3,%r11
	clr	%r11,%r12
	jle	.L2871
	lr	%r3,%r12
.L2871:
	clr	%r12,%r11
	jhe	.L2873
	lhi	%r4,0
.L2873:
	or	%r2,%r4
	lr	%r12,%r0
	srl	%r12,4
	ltr	%r12,%r12
	lr	%r10,%r1
	srl	%r10,4
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r10,%r3
	jle	.L2875
	lr	%r4,%r3
.L2875:
	clr	%r3,%r10
	jhe	.L2877
	lhi	%r12,0
.L2877:
	or	%r2,%r12
	lr	%r10,%r0
	srl	%r10,5
	ltr	%r10,%r10
	lr	%r11,%r1
	srl	%r11,5
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r11,%r4
	jle	.L2879
	lr	%r3,%r4
.L2879:
	clr	%r4,%r11
	jhe	.L2881
	lhi	%r10,0
.L2881:
	or	%r2,%r10
	lr	%r12,%r0
	srl	%r12,6
	ltr	%r12,%r12
	lr	%r11,%r1
	srl	%r11,6
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r11,%r3
	jle	.L2883
	lr	%r4,%r3
.L2883:
	clr	%r3,%r11
	jhe	.L2885
	lhi	%r12,0
.L2885:
	or	%r2,%r12
	lr	%r11,%r0
	srl	%r11,7
	ltr	%r11,%r11
	lr	%r10,%r1
	srl	%r10,7
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r10,%r4
	jle	.L2887
	lr	%r3,%r4
.L2887:
	clr	%r4,%r10
	jhe	.L2889
	lhi	%r11,0
.L2889:
	or	%r2,%r11
	lr	%r12,%r0
	srl	%r12,8
	ltr	%r12,%r12
	lr	%r10,%r1
	srl	%r10,8
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r10,%r3
	jle	.L2891
	lr	%r4,%r3
.L2891:
	clr	%r3,%r10
	jhe	.L2893
	lhi	%r12,0
.L2893:
	or	%r2,%r12
	lr	%r10,%r0
	srl	%r10,9
	ltr	%r10,%r10
	lr	%r11,%r1
	srl	%r11,9
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r11,%r4
	jle	.L2895
	lr	%r3,%r4
.L2895:
	clr	%r4,%r11
	jhe	.L2897
	lhi	%r10,0
.L2897:
	or	%r2,%r10
	lr	%r12,%r0
	srl	%r12,10
	ltr	%r12,%r12
	lr	%r11,%r1
	srl	%r11,10
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r11,%r3
	jle	.L2899
	lr	%r4,%r3
.L2899:
	clr	%r3,%r11
	jhe	.L2901
	lhi	%r12,0
.L2901:
	or	%r2,%r12
	lr	%r11,%r0
	srl	%r11,11
	ltr	%r11,%r11
	lr	%r10,%r1
	srl	%r10,11
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r10,%r4
	jle	.L2903
	lr	%r3,%r4
.L2903:
	clr	%r4,%r10
	jhe	.L2905
	lhi	%r11,0
.L2905:
	or	%r2,%r11
	lr	%r12,%r0
	srl	%r12,12
	ltr	%r12,%r12
	lr	%r10,%r1
	srl	%r10,12
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r10,%r3
	jle	.L2907
	lr	%r4,%r3
.L2907:
	clr	%r3,%r10
	jhe	.L2909
	lhi	%r12,0
.L2909:
	or	%r2,%r12
	lr	%r10,%r0
	srl	%r10,13
	ltr	%r10,%r10
	lr	%r11,%r1
	srl	%r11,13
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r11,%r4
	jle	.L2911
	lr	%r3,%r4
.L2911:
	clr	%r4,%r11
	jhe	.L2913
	lhi	%r10,0
.L2913:
	or	%r2,%r10
	lr	%r12,%r0
	srl	%r12,14
	ltr	%r12,%r12
	lr	%r11,%r1
	srl	%r11,14
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r11,%r3
	jle	.L2915
	lr	%r4,%r3
.L2915:
	clr	%r3,%r11
	jhe	.L2917
	lhi	%r12,0
.L2917:
	or	%r2,%r12
	lr	%r11,%r0
	srl	%r11,15
	ltr	%r11,%r11
	lr	%r10,%r1
	srl	%r10,15
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r10,%r4
	jle	.L2919
	lr	%r3,%r4
.L2919:
	clr	%r4,%r10
	jhe	.L2921
	lhi	%r11,0
.L2921:
	or	%r2,%r11
	lr	%r12,%r0
	srl	%r12,16
	ltr	%r12,%r12
	lr	%r10,%r1
	srl	%r10,16
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r10,%r3
	jle	.L2923
	lr	%r4,%r3
.L2923:
	clr	%r3,%r10
	jhe	.L2925
	lhi	%r12,0
.L2925:
	or	%r2,%r12
	lr	%r10,%r0
	srl	%r10,17
	ltr	%r10,%r10
	lr	%r11,%r1
	srl	%r11,17
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r11,%r4
	jle	.L2927
	lr	%r3,%r4
.L2927:
	clr	%r4,%r11
	jhe	.L2929
	lhi	%r10,0
.L2929:
	or	%r2,%r10
	lr	%r12,%r0
	srl	%r12,18
	ltr	%r12,%r12
	lr	%r11,%r1
	srl	%r11,18
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r11,%r3
	jle	.L2931
	lr	%r4,%r3
.L2931:
	clr	%r3,%r11
	jhe	.L2933
	lhi	%r12,0
.L2933:
	or	%r2,%r12
	lr	%r11,%r0
	srl	%r11,19
	ltr	%r11,%r11
	lr	%r10,%r1
	srl	%r10,19
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r10,%r4
	jle	.L2935
	lr	%r3,%r4
.L2935:
	clr	%r4,%r10
	jhe	.L2937
	lhi	%r11,0
.L2937:
	or	%r2,%r11
	lr	%r12,%r0
	srl	%r12,20
	ltr	%r12,%r12
	lr	%r10,%r1
	srl	%r10,20
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r10,%r3
	jle	.L2939
	lr	%r4,%r3
.L2939:
	clr	%r3,%r10
	jhe	.L2941
	lhi	%r12,0
.L2941:
	or	%r2,%r12
	lr	%r10,%r0
	srl	%r10,21
	ltr	%r10,%r10
	lr	%r11,%r1
	srl	%r11,21
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r11,%r4
	jle	.L2943
	lr	%r3,%r4
.L2943:
	clr	%r4,%r11
	jhe	.L2945
	lhi	%r10,0
.L2945:
	or	%r2,%r10
	lr	%r12,%r0
	srl	%r12,22
	ltr	%r12,%r12
	lr	%r11,%r1
	srl	%r11,22
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r11,%r3
	jle	.L2947
	lr	%r4,%r3
.L2947:
	clr	%r3,%r11
	jhe	.L2949
	lhi	%r12,0
.L2949:
	or	%r2,%r12
	lr	%r11,%r0
	srl	%r11,23
	ltr	%r11,%r11
	lr	%r10,%r1
	srl	%r10,23
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r10,%r4
	jle	.L2951
	lr	%r3,%r4
.L2951:
	clr	%r4,%r10
	jhe	.L2953
	lhi	%r11,0
.L2953:
	or	%r2,%r11
	lr	%r12,%r0
	srl	%r12,24
	ltr	%r12,%r12
	lr	%r10,%r1
	srl	%r10,24
	je	.L2866
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r10,%r3
	jle	.L2955
	lr	%r4,%r3
.L2955:
	clr	%r3,%r10
	jhe	.L2957
	lhi	%r12,0
.L2957:
	or	%r2,%r12
	lr	%r10,%r0
	srl	%r10,25
	ltr	%r10,%r10
	lr	%r11,%r1
	srl	%r11,25
	je	.L2866
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r11,%r4
	jle	.L2959
	lr	%r3,%r4
.L2959:
	clr	%r4,%r11
	jhe	.L2961
	lhi	%r10,0
.L2961:
	or	%r2,%r10
	lr	%r4,%r0
	srl	%r4,26
	ltr	%r4,%r4
	lr	%r11,%r1
	srl	%r11,26
	je	.L2866
	lr	%r12,%r3
	sr	%r12,%r11
	clr	%r11,%r3
	jle	.L2963
	lr	%r12,%r3
.L2963:
	clr	%r3,%r11
	jhe	.L2965
	lhi	%r4,0
.L2965:
	or	%r2,%r4
	lr	%r3,%r0
	srl	%r3,27
	ltr	%r3,%r3
	lr	%r10,%r1
	srl	%r10,27
	je	.L2866
	lr	%r4,%r12
	sr	%r4,%r10
	clr	%r10,%r12
	jle	.L2967
	lr	%r4,%r12
.L2967:
	clr	%r12,%r10
	jhe	.L2969
	lhi	%r3,0
.L2969:
	or	%r2,%r3
	lr	%r12,%r0
	srl	%r12,28
	ltr	%r12,%r12
	lr	%r11,%r1
	srl	%r11,28
	je	.L2866
	lr	%r10,%r4
	sr	%r10,%r11
	clr	%r11,%r4
	jle	.L2971
	lr	%r10,%r4
.L2971:
	clr	%r4,%r11
	jhe	.L2973
	lhi	%r12,0
.L2973:
	or	%r2,%r12
	lr	%r11,%r0
	srl	%r11,29
	ltr	%r11,%r11
	lr	%r3,%r1
	srl	%r3,29
	je	.L2866
	lr	%r4,%r10
	sr	%r4,%r3
	clr	%r3,%r10
	jle	.L2975
	lr	%r4,%r10
.L2975:
	clr	%r10,%r3
	jhe	.L2977
	lhi	%r11,0
.L2977:
	or	%r2,%r11
	lr	%r3,%r0
	srl	%r3,30
	ltr	%r3,%r3
	lr	%r10,%r1
	srl	%r10,30
	je	.L2866
	lr	%r12,%r4
	sr	%r12,%r10
	clr	%r10,%r4
	jle	.L2979
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
	clr	%r0,%r4
	jle	.L2868
	lr	%r10,%r4
.L2868:
	slr	%r10,%r3
	lhi	%r2,0
	lhi	%r3,0
	alcr	%r2,%r2
	slr	%r4,%r0
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
	clr	%r3,%r1
	jhe	.L3237
	lr	%r3,%r2
	sll	%r3,21
	clr	%r3,%r1
	jhe	.L3238
	lr	%r3,%r2
	sll	%r3,22
	clr	%r3,%r1
	jhe	.L3239
	lr	%r3,%r2
	sll	%r3,23
	clr	%r3,%r1
	jhe	.L3240
	lr	%r3,%r2
	sll	%r3,24
	clr	%r3,%r1
	jhe	.L3241
	lr	%r3,%r2
	sll	%r3,25
	clr	%r3,%r1
	jhe	.L3242
	lr	%r3,%r2
	sll	%r3,26
	clr	%r3,%r1
	jhe	.L3243
	lr	%r3,%r2
	sll	%r3,27
	clr	%r3,%r1
	jhe	.L3244
	lr	%r3,%r2
	sll	%r3,28
	clr	%r3,%r1
	jhe	.L3245
	lr	%r3,%r2
	sll	%r3,29
	clr	%r3,%r1
	jhe	.L3246
	lr	%r3,%r2
	sll	%r3,30
	clr	%r3,%r1
	jhe	.L3247
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
	clr	%r3,%r1
	jh	.L3211
	lr	%r1,%r2
.L3211:
	lr	%r12,%r3
	srl	%r12,1
	lr	%r0,%r1
	sr	%r0,%r12
	clr	%r12,%r1
	jh	.L3213
	lr	%r1,%r0
.L3213:
	lr	%r2,%r3
	srl	%r2,2
	lr	%r12,%r1
	sr	%r12,%r2
	clr	%r2,%r1
	jh	.L3215
	lr	%r1,%r12
.L3215:
	lr	%r12,%r4
	srl	%r12,3
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,3
	je	.L3146
	lr	%r2,%r1
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3153
	lr	%r1,%r2
.L3153:
	lr	%r12,%r4
	srl	%r12,4
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,4
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3155
	lr	%r1,%r2
.L3155:
	lr	%r12,%r4
	srl	%r12,5
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,5
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3157
	lr	%r1,%r2
.L3157:
	lr	%r12,%r4
	srl	%r12,6
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,6
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3159
	lr	%r1,%r2
.L3159:
	lr	%r12,%r4
	srl	%r12,7
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,7
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3161
	lr	%r1,%r2
.L3161:
	lr	%r12,%r4
	srl	%r12,8
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,8
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3163
	lr	%r1,%r2
.L3163:
	lr	%r12,%r4
	srl	%r12,9
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,9
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3165
	lr	%r1,%r2
.L3165:
	lr	%r12,%r4
	srl	%r12,10
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,10
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3167
	lr	%r1,%r2
.L3167:
	lr	%r12,%r4
	srl	%r12,11
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,11
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3169
	lr	%r1,%r2
.L3169:
	lr	%r12,%r4
	srl	%r12,12
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,12
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3171
	lr	%r1,%r2
.L3171:
	lr	%r12,%r4
	srl	%r12,13
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,13
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3173
	lr	%r1,%r2
.L3173:
	lr	%r12,%r4
	srl	%r12,14
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,14
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3175
	lr	%r1,%r2
.L3175:
	lr	%r12,%r4
	srl	%r12,15
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,15
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3177
	lr	%r1,%r2
.L3177:
	lr	%r12,%r4
	srl	%r12,16
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,16
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3179
	lr	%r1,%r2
.L3179:
	lr	%r12,%r4
	srl	%r12,17
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,17
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3181
	lr	%r1,%r2
.L3181:
	lr	%r12,%r4
	srl	%r12,18
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,18
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3183
	lr	%r1,%r2
.L3183:
	lr	%r12,%r4
	srl	%r12,19
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,19
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3185
	lr	%r1,%r2
.L3185:
	lr	%r12,%r4
	srl	%r12,20
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,20
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3187
	lr	%r1,%r2
.L3187:
	lr	%r12,%r4
	srl	%r12,21
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,21
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3189
	lr	%r1,%r2
.L3189:
	lr	%r12,%r4
	srl	%r12,22
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,22
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3191
	lr	%r1,%r2
.L3191:
	lr	%r12,%r4
	srl	%r12,23
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,23
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3193
	lr	%r1,%r2
.L3193:
	lr	%r12,%r4
	srl	%r12,24
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,24
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3195
	lr	%r1,%r2
.L3195:
	lr	%r12,%r4
	srl	%r12,25
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,25
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3197
	lr	%r1,%r2
.L3197:
	lr	%r12,%r4
	srl	%r12,26
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,26
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3199
	lr	%r1,%r2
.L3199:
	lr	%r12,%r4
	srl	%r12,27
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,27
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3201
	lr	%r1,%r2
.L3201:
	lr	%r12,%r4
	srl	%r12,28
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,28
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3203
	lr	%r1,%r2
.L3203:
	lr	%r12,%r4
	srl	%r12,29
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,29
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3205
	lr	%r1,%r2
.L3205:
	lr	%r12,%r4
	srl	%r12,30
	ltr	%r12,%r12
	lr	%r0,%r3
	lr	%r2,%r1
	srl	%r0,30
	je	.L3146
	sr	%r2,%r0
	clr	%r0,%r1
	jh	.L3207
	lr	%r1,%r2
.L3207:
	c	%r4,.L3342-.L3340(%r13)
	srl	%r3,31
	lr	%r2,%r1
	je	.L3146
	sr	%r2,%r3
	clr	%r3,%r1
	jle	.L3146
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
	cr	%r2,%r1
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
	clr	%r4,%r1
	jh	.L3148
	lr	%r1,%r12
.L3148:
	lr	%r3,%r1
	sr	%r3,%r2
	clr	%r2,%r1
	jh	.L3337
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
	clr	%r2,%r3
	lr	%r5,%r2
	jle	.L3516
	tml	%r3,32768
	jne	.L3363
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3436
	tml	%r1,32768
	jne	.L3436
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3438
	tml	%r1,32768
	jne	.L3438
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3440
	tml	%r1,32768
	jne	.L3440
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3442
	tml	%r1,32768
	jne	.L3442
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3444
	tml	%r1,32768
	jne	.L3444
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3446
	tml	%r1,32768
	jne	.L3446
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3448
	tml	%r1,32768
	jne	.L3448
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3450
	tml	%r1,32768
	jne	.L3450
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3452
	tml	%r1,32768
	jne	.L3452
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3454
	tml	%r1,32768
	jne	.L3454
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3456
	tml	%r1,32768
	jne	.L3456
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3458
	tml	%r1,32768
	jne	.L3458
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3460
	tml	%r1,32768
	jne	.L3460
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L3519-.L3518(%r13)
	clr	%r1,%r2
	jhe	.L3462
	tml	%r1,32768
	jne	.L3462
	sll	%r3,15
	n	%r3,.L3519-.L3518(%r13)
	clr	%r3,%r2
	jhe	.L3463
	ltr	%r3,%r3
	lhi	%r2,0
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
	lhi	%r0,2
.L3365:
	lr	%r10,%r5
	sr	%r10,%r1
	n	%r10,.L3519-.L3518(%r13)
	clr	%r5,%r1
	jhe	.L3432
	lr	%r10,%r5
.L3432:
	n	%r10,.L3519-.L3518(%r13)
	clr	%r5,%r1
	jl	.L3433
	lr	%r12,%r0
.L3434:
	lr	%r11,%r1
	srl	%r11,1
	lr	%r5,%r10
	lr	%r2,%r0
	sll	%r2,16
	sr	%r5,%r11
	srl	%r2,17
	n	%r5,.L3519-.L3518(%r13)
	clr	%r10,%r11
	jhe	.L3368
	lr	%r5,%r10
.L3368:
	n	%r5,.L3519-.L3518(%r13)
	clr	%r10,%r11
	jhe	.L3370
	lhi	%r2,0
.L3370:
	or	%r2,%r12
	l	%r3,.L3519-.L3518(%r13)
	nr	%r3,%r0
	lr	%r12,%r3
	srl	%r12,2
	ltr	%r12,%r12
	lr	%r11,%r1
	srl	%r11,2
	je	.L3366
	lr	%r3,%r5
	sr	%r3,%r11
	lr	%r10,%r5
	n	%r3,.L3519-.L3518(%r13)
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
	lhi	%r12,0
.L3374:
	l	%r10,.L3519-.L3518(%r13)
	nr	%r10,%r0
	or	%r12,%r2
	lr	%r11,%r1
	lr	%r2,%r12
	srl	%r11,3
	srl	%r10,3
	ltr	%r10,%r10
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r11
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r3,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3376
	lr	%r2,%r5
.L3376:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3378
	lhi	%r10,0
.L3378:
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r0
	or	%r12,%r10
	lr	%r10,%r1
	lr	%r2,%r12
	srl	%r10,4
	srl	%r11,4
	ltr	%r11,%r11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
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
	lhi	%r11,0
.L3382:
	l	%r10,.L3519-.L3518(%r13)
	nr	%r10,%r0
	or	%r11,%r12
	lr	%r12,%r1
	lr	%r2,%r11
	srl	%r12,5
	srl	%r10,5
	ltr	%r10,%r10
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r12
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r3,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	jne	.L3384
	lr	%r2,%r5
.L3384:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r12,%r12
	jne	.L3386
	lhi	%r10,0
.L3386:
	l	%r12,.L3519-.L3518(%r13)
	nr	%r12,%r0
	or	%r11,%r10
	lr	%r10,%r1
	lr	%r2,%r11
	srl	%r10,6
	srl	%r12,6
	ltr	%r12,%r12
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
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
	lhi	%r12,0
.L3390:
	or	%r12,%r11
	l	%r3,.L3519-.L3518(%r13)
	nr	%r3,%r0
	lr	%r11,%r3
	srl	%r11,7
	ltr	%r11,%r11
	lr	%r10,%r1
	lr	%r2,%r12
	srl	%r10,7
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
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
	or	%r12,%r11
	l	%r3,.L3519-.L3518(%r13)
	nr	%r3,%r0
	lr	%r11,%r3
	srl	%r11,8
	ltr	%r11,%r11
	lr	%r10,%r1
	lr	%r2,%r12
	srl	%r10,8
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r3,%r10
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
	lhi	%r11,0
.L3398:
	or	%r12,%r11
	l	%r3,.L3519-.L3518(%r13)
	nr	%r3,%r0
	lr	%r11,%r3
	srl	%r11,9
	ltr	%r11,%r11
	lr	%r10,%r1
	lr	%r2,%r12
	srl	%r10,9
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r3,%r10
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
	or	%r12,%r11
	l	%r3,.L3519-.L3518(%r13)
	nr	%r3,%r0
	lr	%r11,%r3
	srl	%r11,10
	ltr	%r11,%r11
	lr	%r10,%r1
	lr	%r2,%r12
	srl	%r10,10
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r3,%r10
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
	or	%r12,%r11
	l	%r3,.L3519-.L3518(%r13)
	nr	%r3,%r0
	lr	%r11,%r3
	srl	%r11,11
	ltr	%r11,%r11
	lr	%r10,%r1
	lr	%r2,%r12
	srl	%r10,11
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r3,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3408
	lr	%r2,%r5
.L3408:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	je	.L3409
	lr	%r3,%r11
.L3410:
	or	%r3,%r12
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r0
	lr	%r12,%r11
	srl	%r12,12
	ltr	%r12,%r12
	lr	%r10,%r1
	lr	%r2,%r3
	srl	%r10,12
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r11,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r11,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3412
	lr	%r2,%r5
.L3412:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	je	.L3413
	lr	%r11,%r12
.L3414:
	or	%r3,%r11
	l	%r12,.L3519-.L3518(%r13)
	nr	%r12,%r0
	lr	%r11,%r12
	srl	%r11,13
	ltr	%r11,%r11
	lr	%r10,%r1
	lr	%r2,%r3
	srl	%r10,13
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r12,%r5
	n	%r2,.L3519-.L3518(%r13)
	slr	%r12,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3416
	lr	%r2,%r5
.L3416:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	je	.L3417
	lr	%r12,%r11
.L3418:
	or	%r3,%r12
	l	%r11,.L3519-.L3518(%r13)
	nr	%r11,%r0
	lr	%r12,%r11
	srl	%r12,14
	ltr	%r12,%r12
	lr	%r10,%r1
	lr	%r2,%r3
	srl	%r10,14
	je	.L3366
	lr	%r2,%r5
	sr	%r2,%r10
	lr	%r11,%r5
	n	%r2,.L3519-.L3518(%r13)
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
	lhi	%r12,0
.L3422:
	n	%r0,.L3519-.L3518(%r13)
	or	%r3,%r12
	srl	%r1,15
	lr	%r2,%r3
	chi	%r0,16384
	je	.L3366
	lr	%r11,%r5
	sr	%r11,%r1
	l	%r0,.L3519-.L3518(%r13)
	lr	%r10,%r5
	lhi	%r2,0
	nr	%r0,%r11
	slr	%r10,%r1
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L3423
	lr	%r1,%r0
.L3424:
	l	%r5,.L3519-.L3518(%r13)
	or	%r2,%r3
	nr	%r5,%r1
	j	.L3366
.L3433:
	lhi	%r12,0
	j	.L3434
.L3409:
	lhi	%r3,0
	j	.L3410
.L3413:
	lhi	%r11,0
	j	.L3414
.L3417:
	lhi	%r12,0
	j	.L3418
.L3423:
	lr	%r1,%r5
	j	.L3424
.L3438:
	lhi	%r0,4
	j	.L3365
.L3440:
	lhi	%r0,8
	j	.L3365
.L3442:
	lhi	%r0,16
	j	.L3365
.L3452:
	lhi	%r0,512
	j	.L3365
.L3444:
	lhi	%r0,32
	j	.L3365
.L3446:
	lhi	%r0,64
	j	.L3365
.L3448:
	lhi	%r0,128
	j	.L3365
.L3450:
	lhi	%r0,256
	j	.L3365
.L3516:
	lr	%r2,%r3
	lr	%r1,%r5
	xr	%r2,%r5
	sr	%r1,%r3
	ahi	%r2,-1
	n	%r1,.L3519-.L3518(%r13)
	lr	%r3,%r2
	ltr	%r3,%r3
	srl	%r2,31
	jl	.L3361
	lr	%r1,%r5
.L3361:
	l	%r5,.L3519-.L3518(%r13)
	nr	%r5,%r1
	j	.L3366
.L3454:
	lhi	%r0,1024
	j	.L3365
.L3456:
	lhi	%r0,2048
	j	.L3365
.L3458:
	lhi	%r0,4096
	j	.L3365
.L3460:
	lhi	%r0,8192
	j	.L3365
.L3462:
	lhi	%r0,16384
	j	.L3365
.L3517:
	lhi	%r0,-32768
	l	%r1,.L3520-.L3518(%r13)
	j	.L3365
.L3463:
	l	%r1,.L3520-.L3518(%r13)
	lhi	%r0,-32768
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
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r0,%r2
	jle	.L3766
	ltr	%r3,%r3
	lhi	%r12,1
	jl	.L3763
	lr	%r1,%r3
	sll	%r1,1
	lhi	%r5,2
	clr	%r2,%r1
	jle	.L3526
	ltr	%r1,%r1
	lr	%r3,%r1
	lhi	%r10,31
	lhi	%r12,2
	lhi	%r2,11
	sll	%r1,1
	sll	%r5,1
	jl	.L3763
.L3528:
	clr	%r0,%r1
	jle	.L3526
	lr	%r12,%r5
	lr	%r11,%r10
	lr	%r3,%r1
	sll	%r5,1
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
	ltr	%r1,%r1
	sll	%r1,1
	jl	.L3763
	clr	%r0,%r1
	jle	.L3526
	ltr	%r1,%r1
	lr	%r12,%r5
	lr	%r3,%r1
	sll	%r5,1
	sll	%r1,1
	jl	.L3763
	clr	%r0,%r1
	jle	.L3526
	ahi	%r10,-3
	lr	%r12,%r5
	ltr	%r1,%r1
	lr	%r3,%r1
	sll	%r5,1
	sll	%r1,1
	jhe	.L3528
.L3763:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r3,%r0
	jle	.L3658
	lr	%r2,%r0
.L3658:
	clr	%r0,%r3
	jl	.L3659
	lr	%r11,%r12
.L3660:
	lr	%r0,%r12
	srl	%r0,1
	ltr	%r0,%r0
	lr	%r10,%r3
	srl	%r10,1
	jne	.L3661
	j	.L3527
.L3526:
	ltr	%r5,%r5
	lr	%r2,%r0
	je	.L3664
	sr	%r2,%r1
	clr	%r1,%r0
	jle	.L3531
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
	ltr	%r10,%r10
	lr	%r2,%r1
	jne	.L3537
	lhi	%r0,0
.L3537:
	or	%r11,%r0
	lr	%r5,%r12
	srl	%r5,2
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,2
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3541
	lhi	%r5,0
.L3541:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,3
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,3
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3545
	lhi	%r5,0
.L3545:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,4
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,4
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3549
	lhi	%r5,0
.L3549:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,5
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,5
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3553
	lhi	%r5,0
.L3553:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,6
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,6
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3557
	lhi	%r5,0
.L3557:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,7
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,7
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3767
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3768
.L3561:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,8
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,8
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3769
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3770
.L3565:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,9
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,9
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3771
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3772
.L3569:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,10
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,10
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3773
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3774
.L3573:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,11
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,11
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3775
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3776
.L3577:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,12
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,12
	je	.L3527
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3777
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3581
.L3789:
	lhi	%r5,0
.L3581:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,13
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,13
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3585
	lhi	%r5,0
.L3585:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,14
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,14
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3589
	lhi	%r5,0
.L3589:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,15
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,15
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3593
	lhi	%r5,0
.L3593:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,16
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,16
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3597
	lhi	%r5,0
.L3597:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,17
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,17
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3601
	lhi	%r5,0
.L3601:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,18
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,18
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3605
	lhi	%r5,0
.L3605:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,19
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,19
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
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3779
.L3609:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,20
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,20
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
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3781
.L3613:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,21
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,21
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
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3783
.L3617:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,22
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,22
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
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3785
.L3621:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,23
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,23
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
	ltr	%r0,%r0
	lr	%r2,%r1
	je	.L3787
.L3625:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,24
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,24
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3629
	lhi	%r5,0
.L3629:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,25
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,25
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3633
	lhi	%r5,0
.L3633:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,26
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,26
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3637
	lhi	%r5,0
.L3637:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,27
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,27
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3641
	lhi	%r5,0
.L3641:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,28
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,28
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3645
	lhi	%r5,0
.L3645:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,29
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,29
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
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3649
	lhi	%r5,0
.L3649:
	or	%r11,%r5
	lr	%r5,%r12
	srl	%r5,30
	ltr	%r5,%r5
	lr	%r0,%r3
	srl	%r0,30
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
	ltr	%r0,%r0
	lr	%r2,%r1
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
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L3561
	j	.L3768
.L3770:
	lhi	%r5,0
	j	.L3565
.L3769:
	ltr	%r0,%r0
	lr	%r1,%r2
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
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L3569
	j	.L3772
.L3774:
	lhi	%r5,0
	j	.L3573
.L3773:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L3573
	j	.L3774
.L3776:
	lhi	%r5,0
	j	.L3577
.L3775:
	ltr	%r0,%r0
	lr	%r1,%r2
	lr	%r2,%r1
	jne	.L3577
	j	.L3776
.L3777:
	ltr	%r0,%r0
	lr	%r1,%r2
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
	cr	%r3,%r0
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
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r4)
	lr	%r1,%r3
	sll	%r1,0(%r4)
	srl	%r3,0(%r5)
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
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r4)
	lr	%r1,%r2
	sra	%r1,0(%r4)
	sll	%r2,0(%r5)
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3811
	lhi	%r4,0
	lhi	%r3,16
	lhi	%r12,8
	lhi	%r5,4
	cl	%r2,.L3812-.L3811(%r13)
	lr	%r1,%r2
	lhi	%r2,2
	slbr	%r4,%r4
	lcr	%r0,%r4
	lhi	%r4,12
	sll	%r0,4
	sr	%r3,%r0
	srl	%r1,0(%r3)
	l	%r3,.L3813-.L3811(%r13)
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,3
	sr	%r12,%r3
	ar	%r0,%r3
	srl	%r1,0(%r12)
	lhi	%r12,240
	nr	%r12,%r1
	ahi	%r12,-1
	srl	%r12,31
	sll	%r12,2
	sr	%r5,%r12
	ar	%r0,%r12
	srl	%r1,0(%r5)
	lr	%r5,%r2
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,1
	sr	%r5,%r4
	srl	%r1,0(%r5)
	tml	%r1,2
	jne	.L3808
	sr	%r2,%r1
	ar	%r4,%r0
	lm	%r12,%r13,88(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	ar	%r2,%r4
	br	%r14
.L3808:
	.cfi_restore_state
	ar	%r4,%r0
	lhi	%r2,0
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
	ar	%r2,%r4
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
	lhi	%r0,3
	lhi	%r3,2
	l	%r4,.L3830-.L3829(%r13)
	nr	%r4,%r2
	lr	%r1,%r2
	lhi	%r2,255
	l	%r13,92(%r15)
	.cfi_restore 13
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,4
	srl	%r1,0(%r4)
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	ar	%r2,%r4
	lhi	%r4,3
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,2
	srl	%r1,0(%r5)
	ar	%r2,%r5
	lhi	%r5,1
	nr	%r4,%r1
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
	lhi	%r12,32
	sr	%r12,%r4
	lr	%r1,%r3
	srl	%r1,0(%r4)
	lr	%r5,%r2
	srl	%r5,0(%r4)
	sll	%r2,0(%r12)
	l	%r12,92(%r15)
	.cfi_restore 12
	lr	%r3,%r2
	lr	%r2,%r5
	or	%r3,%r1
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
	l	%r1,.L3845-.L3844(%r13)
	nr	%r4,%r2
	nr	%r1,%r3
	lr	%r3,%r4
	srl	%r2,16
	srl	%r5,16
	msr	%r3,%r1
	msr	%r1,%r2
	msr	%r4,%r5
	msr	%r2,%r5
	lr	%r0,%r3
	srl	%r0,16
	l	%r5,.L3845-.L3844(%r13)
	n	%r3,.L3845-.L3844(%r13)
	l	%r13,92(%r15)
	.cfi_restore 13
	ar	%r1,%r0
	nr	%r5,%r1
	srl	%r1,16
	ar	%r4,%r5
	ar	%r1,%r2
	lr	%r2,%r4
	srl	%r2,16
	sll	%r4,16
	ar	%r2,%r1
	ar	%r3,%r4
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
	stm	%r10,%r13,80(%r15)
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3848
	lr	%r12,%r3
	l	%r0,.L3849-.L3848(%r13)
	l	%r1,.L3849-.L3848(%r13)
	nr	%r0,%r3
	nr	%r1,%r5
	lr	%r10,%r3
	lr	%r3,%r0
	srl	%r10,16
	lr	%r11,%r5
	srl	%r11,16
	msr	%r3,%r1
	msr	%r1,%r10
	msr	%r12,%r4
	msr	%r10,%r11
	msr	%r0,%r11
	msr	%r2,%r5
	lr	%r4,%r3
	srl	%r4,16
	l	%r5,.L3849-.L3848(%r13)
	n	%r3,.L3849-.L3848(%r13)
	ar	%r1,%r4
	nr	%r5,%r1
	srl	%r1,16
	ar	%r0,%r5
	ar	%r1,%r10
	lr	%r10,%r0
	srl	%r10,16
	sll	%r0,16
	ar	%r1,%r10
	ar	%r3,%r0
	ar	%r12,%r1
	ar	%r2,%r12
	lm	%r10,%r13,80(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
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
	lr	%r1,%r3
	srl	%r1,16
	lhi	%r0,15
	lhi	%r2,27030
	lhi	%r5,1
	xr	%r1,%r3
	lr	%r3,%r1
	srl	%r3,8
	xr	%r3,%r1
	lr	%r4,%r3
	srl	%r4,4
	xr	%r4,%r3
	nr	%r4,%r0
	sra	%r2,0(%r4)
	nr	%r2,%r5
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
	lhi	%r4,27030
	lhi	%r0,1
	xr	%r1,%r2
	lr	%r3,%r1
	srl	%r3,8
	lhi	%r2,15
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
	stm	%r8,%r13,72(%r15)
	.cfi_offset 8, -24
	.cfi_offset 9, -20
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3859
	lhi	%r12,127
	lr	%r10,%r2
	lr	%r11,%r3
	l	%r9,.L3860-.L3859(%r13)
	l	%r8,.L3860-.L3859(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r1,.L3861-.L3859(%r13)
	l	%r3,.L3861-.L3859(%r13)
	l	%r0,.L3861-.L3859(%r13)
	l	%r2,.L3861-.L3859(%r13)
	srdl	%r10,1
	nr	%r9,%r11
	nr	%r8,%r10
	slr	%r5,%r9
	lr	%r11,%r5
	slbr	%r4,%r8
	nr	%r1,%r5
	lr	%r10,%r4
	nr	%r0,%r4
	srdl	%r10,2
	nr	%r3,%r11
	nr	%r2,%r10
	l	%r10,.L3862-.L3859(%r13)
	alr	%r3,%r1
	lr	%r5,%r3
	alcr	%r2,%r0
	lr	%r4,%r2
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	nr	%r10,%r3
	n	%r2,.L3862-.L3859(%r13)
	ar	%r2,%r10
	lr	%r11,%r2
	srl	%r11,16
	ar	%r11,%r2
	lr	%r2,%r11
	srl	%r2,8
	ar	%r2,%r11
	nr	%r2,%r12
	lm	%r8,%r13,72(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
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
	lhi	%r4,63
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L3866-.L3865(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r2,.L3867-.L3865(%r5)
	n	%r0,.L3867-.L3865(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3868-.L3865(%r5)
	lr	%r2,%r3
	srl	%r2,16
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
	tml	%r2,1
	lr	%r1,%r2
	ldr	%f2,%f0
	ld	%f0,.L3879-.L3878(%r5)
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
	tml	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3872
.L3877:
	ar	%r1,%r0
	sra	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	tml	%r1,1
	mdbr	%f2,%f2
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
	tml	%r2,1
	lr	%r1,%r2
	ler	%f2,%f0
	le	%f0,.L3890-.L3889(%r5)
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
	tml	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3883
.L3888:
	ar	%r1,%r0
	sra	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	tml	%r1,1
	meebr	%f2,%f2
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
