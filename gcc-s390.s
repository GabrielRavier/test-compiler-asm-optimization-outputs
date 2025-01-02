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
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
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
	lm	%r10,%r12,40(%r15)
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
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
	l	%r12,48(%r15)
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	ltr	%r4,%r4
	je	.L194
	brasl	%r14,memcpy
.L194:
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
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
	l	%r12,48(%r15)
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
	je	.L233
	ahi	%r4,-2
	lr	%r5,%r4
	srl	%r5,8
	ltr	%r5,%r5
	je	.L235
	chi	%r5,2
	jle	.L245
	ahi	%r5,-1
	stc	%r3,0(%r2)
	mvc	1(255,%r2),0(%r2)
.L232:
	la	%r1,256(%r1)
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	brct	%r5,.L232
	la	%r1,256(%r1)
.L235:
	stc	%r3,0(%r1)
	larl	%r3,.L246
	ex	%r4,0(%r3)
	br	%r14
.L245:
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brct	%r5,.L245
	j	.L235
.L233:
	stc	%r3,0(%r2)
	br	%r14
.L246:
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
.L250:
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
	jne	.L250
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
.L264:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L264
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
.L268:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L268
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
	je	.L272
	j	.L282
.L274:
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	ic	%r4,0(%r1,%r12)
	nr	%r5,%r3
	lhi	%r0,255
	nr	%r0,%r4
	cr	%r5,%r0
	jne	.L282
.L272:
	tml	%r3,255
	jne	.L274
	lhi	%r2,0
	lhi	%r1,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
	br	%r14
.L282:
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
	je	.L287
.L286:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L286
	sr	%r2,%r3
	br	%r14
.L287:
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
	je	.L298
	icm	%r1,1,0(%r2)
	ic	%r5,0(%r3)
	je	.L312
	lhi	%r0,255
	nr	%r0,%r5
	je	.L311
	brct	%r4,.L309
.L311:
	lhi	%r2,255
	nr	%r1,%r2
.L304:
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L298:
	lhi	%r2,0
	br	%r14
.L309:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L296:
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r0,%r1
	jne	.L293
	lr	%r5,%r3
	ahi	%r5,1
	ahi	%r2,1
	icm	%r1,1,0(%r2)
	je	.L313
	lr	%r3,%r5
	lhi	%r0,255
	ic	%r5,0(%r5)
	nr	%r0,%r5
	je	.L310
	brct	%r4,.L296
.L310:
	lhi	%r4,255
	nr	%r1,%r4
.L293:
	lhi	%r0,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L313:
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
.L312:
	lhi	%r1,0
	j	.L304
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
	je	.L324
	chi	%r5,1
	je	.L328
	chi	%r5,2
	je	.L329
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L329:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L328:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L324:
	srl	%r1,2
	chi	%r1,2
	jle	.L338
	ahi	%r1,-1
	mvc	0(1,%r3),1(%r2)
.L317:
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
	brct	%r1,.L317
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	br	%r14
.L338:
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
	brct	%r1,.L338
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
	je	.L346
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L346:
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
	jle	.L350
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L350:
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
	je	.L362
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L362:
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
	larl	%r5,.L373
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L370
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L372
.L370:
	lhi	%r2,1
	br	%r14
.L372:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L370
	a	%r2,.L374-.L373(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L373:
.L374:
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
	larl	%r5,.L386
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L385
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L382
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L387-.L386(%r5)
	jle	.L382
	l	%r4,.L388-.L386(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L382
	l	%r0,.L389-.L386(%r5)
	ar	%r0,%r2
	cl	%r0,.L390-.L386(%r5)
	jh	.L383
	n	%r2,.L391-.L386(%r5)
	x	%r2,.L391-.L386(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L382:
	lhi	%r2,1
	br	%r14
.L385:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L383:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L386:
.L391:
	.long	65534
.L390:
	.long	1048579
.L389:
	.long	-65532
.L388:
	.long	-57344
.L387:
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
	jle	.L394
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L394:
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
	larl	%r5,.L407
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L402
	kdbr	%f0,%f2
	jnh	.L405
	sdbr	%f0,%f2
	br	%r14
.L405:
	ld	%f0,.L408-.L407(%r5)
	br	%r14
.L402:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L407:
.L408:
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
	larl	%r5,.L418
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L413
	kebr	%f0,%f2
	jnh	.L416
	sebr	%f0,%f2
	br	%r14
.L416:
	le	%f0,.L419-.L418(%r5)
	br	%r14
.L413:
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
	jo	.L428
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L430
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L425
	lhi	%r0,0
.L425:
	tml	%r0,1
	jne	.L428
	ldr	%f2,%f0
.L428:
	ldr	%f0,%f2
	br	%r14
.L430:
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
	jo	.L440
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L442
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L437
	lhi	%r0,0
.L437:
	tml	%r0,1
	jne	.L440
	ler	%f2,%f0
.L440:
	ler	%f0,%f2
	br	%r14
.L442:
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
	jo	.L451
	cxbr	%f0,%f0
	jo	.L445
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
	jne	.L456
	lxr	%f5,%f0
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	lhi	%r0,1
	kxbr	%f0,%f5
	jl	.L450
	lhi	%r0,0
.L450:
	tml	%r0,1
	je	.L448
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L449:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L445:
	ld	%f10,96(%r15)
	ld	%f12,104(%r15)
	std	%f10,0(%r2)
	std	%f12,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L456:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L445
.L451:
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
.L448:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L449
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
	jo	.L464
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L467
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L463
	lhi	%r0,0
.L463:
	tml	%r0,1
	bner	%r14
.L464:
	ldr	%f0,%f2
	br	%r14
.L467:
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
	jo	.L475
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L478
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L474
	lhi	%r0,0
.L474:
	tml	%r0,1
	bner	%r14
.L475:
	ler	%f0,%f2
	br	%r14
.L478:
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
	jo	.L481
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L487
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L492
	lxr	%f5,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	lhi	%r0,1
	kxbr	%f0,%f5
	jl	.L486
	lhi	%r0,0
.L486:
	tml	%r0,1
	je	.L484
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L485:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L481:
	ld	%f14,96(%r15)
	ld	%f9,104(%r15)
	std	%f14,0(%r2)
	std	%f9,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L492:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L481
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
.L484:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L485
.L487:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L481
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
	je	.L495
	larl	%r4,.LANCHOR1
.L496:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L496
.L495:
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
	je	.L511
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L511:
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
	je	.L514
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L514:
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
	je	.L524
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L549
.L536:
	srl	%r11,1
.L526:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L523
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L523
	ar	%r12,%r10
	brct	%r11,.L526
.L524:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L523
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L523:
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
.L549:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L523
	ar	%r12,%r10
	chi	%r13,1
	jne	.L536
	j	.L524
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
	je	.L552
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L573
.L561:
	srl	%r11,1
.L554:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L551
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L551
	ar	%r12,%r9
	brct	%r11,.L554
.L552:
	lhi	%r8,0
.L551:
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
.L573:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L551
	ar	%r12,%r9
	chi	%r7,1
	jne	.L561
	j	.L552
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
.L584:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L578
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L578
	chi	%r1,43
	je	.L579
	chi	%r1,45
	je	.L580
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L589
	lr	%r3,%r2
	lhi	%r12,0
.L582:
	lhi	%r2,0
.L586:
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
	jle	.L586
	ltr	%r12,%r12
	jne	.L577
	lr	%r2,%r5
	sr	%r2,%r1
.L577:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L578:
	.cfi_restore_state
	ahi	%r2,1
	j	.L584
.L580:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L589
	lhi	%r12,1
	j	.L582
.L579:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L582
.L589:
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
.L606:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L602
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L602
	chi	%r1,43
	je	.L603
	chi	%r1,45
	je	.L604
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L613
	lr	%r3,%r2
	lhi	%r12,0
.L607:
	lhi	%r2,0
.L610:
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
	jle	.L610
	ltr	%r12,%r12
	jne	.L601
	lr	%r2,%r5
	sr	%r2,%r1
.L601:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L602:
	.cfi_restore_state
	ahi	%r2,1
	j	.L606
.L604:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r1,9
	ahi	%r11,-48
	lr	%r3,%r2
	lhi	%r12,1
	clr	%r11,%r1
	jle	.L607
.L613:
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
.L603:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L613
	lhi	%r12,0
	j	.L607
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
.L633:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L627
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L627
	chi	%r3,43
	je	.L628
	chi	%r3,45
	jne	.L649
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L638
	lhi	%r2,1
.L631:
	lhi	%r10,0
	lhi	%r11,0
.L635:
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
	jle	.L635
	ltr	%r2,%r2
	jne	.L626
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L626:
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
.L627:
	.cfi_restore_state
	ahi	%r2,1
	j	.L633
.L649:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L638
	lr	%r3,%r2
	lhi	%r2,0
	j	.L631
.L628:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L631
.L638:
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
	je	.L652
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	j	.L655
.L665:
	je	.L651
	ahi	%r12,-1
	ar	%r11,%r8
	sr	%r12,%r10
	lr	%r9,%r11
	ltr	%r12,%r12
	je	.L652
.L655:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r8
	lr	%r2,%r7
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L665
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L655
.L652:
	lhi	%r11,0
.L651:
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
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	ltr	%r11,%r4
	je	.L672
.L680:
	lr	%r10,%r11
	sra	%r10,1
	lr	%r12,%r10
	msr	%r12,%r8
	l	%r4,192(%r15)
	lr	%r2,%r7
	ar	%r12,%r9
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L667
	jle	.L670
	ar	%r12,%r8
	ahi	%r11,-1
	lr	%r9,%r12
	sra	%r11,1
	jne	.L680
.L672:
	lhi	%r12,0
.L667:
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
.L670:
	.cfi_restore_state
	ltr	%r10,%r10
	je	.L672
	lr	%r11,%r10
	j	.L680
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
	jl	.L690
.L687:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L690:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L687
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
	jl	.L703
.L700:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L703:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L700
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
	j	.L718
.L719:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L718:
	icm	%r1,15,0(%r2)
	jne	.L719
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
	je	.L722
	j	.L723
.L724:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L723
.L722:
	ltr	%r4,%r4
	jne	.L724
.L723:
	cr	%r4,%r5
	jl	.L728
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L728:
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
.L733:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L733
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
	je	.L740
.L739:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L739
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L740:
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
	je	.L750
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L766
.L753:
	srl	%r4,1
.L744:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L746
	ltr	%r0,%r0
	je	.L746
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L746
	ltr	%r5,%r5
	je	.L746
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L744
.L750:
	lhi	%r2,0
	br	%r14
.L746:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L767
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L766:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L746
	ltr	%r1,%r1
	je	.L746
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L753
	j	.L750
.L767:
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
	je	.L773
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L780
	chi	%r5,1
	je	.L791
	chi	%r5,2
	je	.L792
	c	%r3,0(%r2)
	ber	%r14
	lr	%r4,%r0
	ahi	%r2,4
.L792:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L791:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L773
.L780:
	srl	%r1,2
	lr	%r0,%r1
.L770:
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
	brct	%r0,.L770
.L773:
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
	je	.L812
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,3
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L819
	chi	%r1,1
	je	.L830
	chi	%r1,2
	je	.L831
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L838
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
.L831:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L838
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L830:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L838
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L812
.L819:
	srl	%r5,2
.L806:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L838
	l	%r1,4(%r2)
	ahi	%r3,4
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L838
	l	%r1,8(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L838
	l	%r1,12(%r2)
	lr	%r3,%r4
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L838
	ahi	%r2,16
	ahi	%r3,4
	brct	%r5,.L806
.L812:
	lhi	%r2,0
	br	%r14
.L838:
	c	%r1,0(%r3)
	jl	.L842
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L842:
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
	je	.L845
	sll	%r4,2
	brasl	%r14,memcpy
.L845:
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
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L908
	cr	%r2,%r3
	je	.L859
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L907
	ltr	%r4,%r4
	je	.L859
	l	%r4,.L909-.L908(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L869
	chi	%r5,1
	je	.L885
	chi	%r5,2
	je	.L886
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	ahi	%r1,-4
.L886:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
.L885:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L859
.L869:
	srl	%r4,2
	chi	%r4,2
	jle	.L904
	ahi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
.L856:
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
	brct	%r4,.L856
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
.L859:
	lm	%r11,%r13,44(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L907:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L859
	lhi	%r11,3
	nr	%r11,%r4
	je	.L878
	chi	%r11,1
	je	.L883
	chi	%r11,2
	je	.L884
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L884:
	l	%r12,0(%r5,%r3)
	ahi	%r1,-1
	st	%r12,0(%r5,%r2)
	ahi	%r5,4
.L883:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L859
.L878:
	srl	%r4,2
	chi	%r4,2
	jle	.L905
	ahi	%r4,-1
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
.L854:
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	ahi	%r5,16
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	brct	%r4,.L854
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	j	.L859
.L905:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	l	%r1,4(%r5,%r3)
	st	%r1,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L905
	j	.L859
.L904:
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
	brct	%r4,.L904
	j	.L859
	.section	.rodata
	.align	8
.L908:
.L909:
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
	je	.L921
	chi	%r0,1
	je	.L925
	chi	%r0,2
	je	.L926
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L926:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L925:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L921:
	srl	%r4,2
	chi	%r4,2
	jle	.L936
	ahi	%r4,-1
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
.L912:
	ahi	%r1,16
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	brct	%r4,.L912
	br	%r14
.L936:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L936
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
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	clr	%r2,%r3
	jhe	.L939
	ltr	%r4,%r4
	je	.L938
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r11,%r4
	ahi	%r11,-1
	lhi	%r12,3
	lr	%r1,%r4
	nr	%r12,%r4
	je	.L970
	chi	%r12,1
	je	.L992
	chi	%r12,2
	jne	.L1035
.L993:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L992:
	ic	%r11,0(%r4,%r2)
	stc	%r11,0(%r4,%r3)
	brct	%r4,.L970
.L938:
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L939:
	.cfi_restore_state
	je	.L938
	ltr	%r4,%r4
	je	.L938
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L949
	lr	%r0,%r3
	lhi	%r11,3
	or	%r0,%r2
	nr	%r0,%r11
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L949
	lr	%r12,%r2
	ahi	%r12,1
	lr	%r1,%r3
	lhi	%r5,2
	sr	%r1,%r12
	clr	%r1,%r5
	jle	.L949
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r11,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r11,%r5
	je	.L988
	chi	%r11,1
	je	.L994
	chi	%r11,2
	je	.L995
	l	%r12,0(%r2)
	lhi	%r1,4
	st	%r12,0(%r3)
.L995:
	l	%r11,0(%r1,%r2)
	st	%r11,0(%r1,%r3)
	ahi	%r1,4
.L994:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1017
.L988:
	srl	%r5,2
	chi	%r5,2
	jle	.L1032
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
.L943:
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	brct	%r5,.L943
	l	%r5,4(%r1,%r2)
	st	%r5,4(%r1,%r3)
	l	%r5,8(%r1,%r2)
	st	%r5,8(%r1,%r3)
	l	%r5,12(%r1,%r2)
	st	%r5,12(%r1,%r3)
	ahi	%r1,16
.L1017:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L938
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L938
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L938
	mvc	2(1,%r3),2(%r2)
	j	.L938
.L970:
	srl	%r1,2
	chi	%r1,2
	jle	.L1030
	ahi	%r1,-1
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
.L941:
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
	brct	%r1,.L941
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
	j	.L938
.L1030:
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
	brct	%r1,.L1030
	j	.L938
.L1035:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	lr	%r4,%r11
	j	.L993
.L1032:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r2)
	st	%r11,4(%r1,%r3)
	l	%r12,8(%r1,%r2)
	st	%r12,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	ahi	%r1,16
	brct	%r5,.L1032
	j	.L1017
.L949:
	lhi	%r12,3
	lhi	%r1,0
	lr	%r11,%r4
	nr	%r12,%r4
	je	.L979
	chi	%r12,1
	je	.L996
	chi	%r12,2
	je	.L997
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L997:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L996:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L938
.L979:
	lr	%r4,%r11
	srl	%r4,2
	chi	%r4,2
	jle	.L1031
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
.L946:
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	brct	%r4,.L946
	ic	%r4,1(%r1,%r2)
	stc	%r4,1(%r1,%r3)
	ic	%r4,2(%r1,%r2)
	stc	%r4,2(%r1,%r3)
	ic	%r2,3(%r1,%r2)
	stc	%r2,3(%r1,%r3)
	j	.L938
.L1031:
	ic	%r11,0(%r1,%r2)
	stc	%r11,0(%r1,%r3)
	ic	%r12,1(%r1,%r2)
	stc	%r12,1(%r1,%r3)
	ic	%r0,2(%r1,%r2)
	stc	%r0,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L1031
	j	.L938
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
	larl	%r5,.L1053
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1054-.L1053(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1053:
.L1054:
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
	larl	%r5,.L1057
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L1058-.L1057(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1057:
.L1058:
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
	larl	%r5,.L1065
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L1066-.L1065(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1065:
.L1066:
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
	jne	.L1074
	tml	%r2,2
	jne	.L1075
	tml	%r2,4
	jne	.L1076
	tml	%r2,8
	jne	.L1077
	tml	%r2,16
	jne	.L1078
	tml	%r2,32
	jne	.L1079
	tml	%r2,64
	jne	.L1080
	tml	%r2,128
	jne	.L1081
	tml	%r2,256
	jne	.L1082
	tml	%r2,512
	jne	.L1083
	tml	%r2,1024
	jne	.L1084
	tml	%r2,2048
	jne	.L1085
	tml	%r2,4096
	jne	.L1086
	tml	%r2,8192
	jne	.L1087
	tml	%r2,16384
	jne	.L1088
	tml	%r2,32768
	jne	.L1089
	tmh	%r2,1
	jne	.L1090
	tmh	%r2,2
	jne	.L1091
	tmh	%r2,4
	jne	.L1092
	tmh	%r2,8
	jne	.L1093
	tmh	%r2,16
	jne	.L1094
	tmh	%r2,32
	jne	.L1095
	tmh	%r2,64
	jne	.L1096
	tmh	%r2,128
	jne	.L1097
	tmh	%r2,256
	jne	.L1098
	tmh	%r2,512
	jne	.L1099
	tmh	%r2,1024
	jne	.L1100
	tmh	%r2,2048
	jne	.L1101
	tmh	%r2,4096
	jne	.L1102
	tmh	%r2,8192
	jne	.L1103
	tmh	%r2,16384
	jne	.L1104
	ltr	%r1,%r1
	lhi	%r2,0
	ber	%r14
	lhi	%r2,32
	br	%r14
.L1074:
	lhi	%r2,1
	br	%r14
.L1075:
	lhi	%r2,2
	br	%r14
.L1086:
	lhi	%r2,13
	br	%r14
.L1102:
	lhi	%r2,29
	br	%r14
.L1076:
	lhi	%r2,3
	br	%r14
.L1077:
	lhi	%r2,4
	br	%r14
.L1078:
	lhi	%r2,5
	br	%r14
.L1079:
	lhi	%r2,6
	br	%r14
.L1080:
	lhi	%r2,7
	br	%r14
.L1081:
	lhi	%r2,8
	br	%r14
.L1082:
	lhi	%r2,9
	br	%r14
.L1083:
	lhi	%r2,10
	br	%r14
.L1084:
	lhi	%r2,11
	br	%r14
.L1085:
	lhi	%r2,12
	br	%r14
.L1087:
	lhi	%r2,14
	br	%r14
.L1088:
	lhi	%r2,15
	br	%r14
.L1089:
	lhi	%r2,16
	br	%r14
.L1090:
	lhi	%r2,17
	br	%r14
.L1091:
	lhi	%r2,18
	br	%r14
.L1092:
	lhi	%r2,19
	br	%r14
.L1093:
	lhi	%r2,20
	br	%r14
.L1094:
	lhi	%r2,21
	br	%r14
.L1095:
	lhi	%r2,22
	br	%r14
.L1096:
	lhi	%r2,23
	br	%r14
.L1097:
	lhi	%r2,24
	br	%r14
.L1098:
	lhi	%r2,25
	br	%r14
.L1099:
	lhi	%r2,26
	br	%r14
.L1100:
	lhi	%r2,27
	br	%r14
.L1101:
	lhi	%r2,28
	br	%r14
.L1103:
	lhi	%r2,30
	br	%r14
.L1104:
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
	je	.L1111
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1110:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L1110
	br	%r14
.L1111:
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
	larl	%r5,.L1121
	lhi	%r2,1
	keb	%f0,.L1122-.L1121(%r5)
	blr	%r14
	keb	%f0,.L1123-.L1121(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1121:
.L1123:
	.long	2139095039
.L1122:
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
	larl	%r5,.L1129
	kdb	%f0,.L1130-.L1129(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L1131-.L1129(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1129:
.L1131:
	.long	2146435071
	.long	-1
.L1130:
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
	larl	%r5,.L1137
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L1138-.L1137(%r5)
	ld	%f3,.L1138-.L1137+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L1139-.L1137(%r5)
	ld	%f3,.L1139-.L1137+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1137:
.L1139:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1138:
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
	larl	%r5,.L1158
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1156
	le	%f1,.L1159-.L1158(%r5)
.L1144:
	tml	%r2,1
	je	.L1145
.L1146:
	meebr	%f0,%f1
.L1145:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L1146
.L1157:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1146
	j	.L1157
.L1156:
	le	%f1,.L1160-.L1158(%r5)
	j	.L1144
	.section	.rodata
	.align	8
.L1158:
.L1160:
	.long	1056964608
.L1159:
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
	larl	%r5,.L1177
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1175
	ld	%f1,.L1178-.L1177(%r5)
.L1163:
	tml	%r2,1
	je	.L1164
.L1165:
	mdbr	%f0,%f1
.L1164:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L1165
.L1176:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L1165
	j	.L1176
.L1175:
	ld	%f1,.L1179-.L1177(%r5)
	j	.L1163
	.section	.rodata
	.align	8
.L1177:
.L1179:
	.long	1071644672
	.long	0
.L1178:
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
	larl	%r5,.L1196
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1181
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1181
	ltr	%r4,%r4
	jl	.L1194
	ld	%f0,.L1197-.L1196(%r5)
	ld	%f2,.L1197-.L1196+8(%r5)
.L1182:
	tml	%r4,1
	je	.L1183
.L1184:
	mxbr	%f1,%f0
.L1183:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1181
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L1184
.L1195:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L1184
	j	.L1195
.L1181:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1194:
	ld	%f0,.L1198-.L1196(%r5)
	ld	%f2,.L1198-.L1196+8(%r5)
	j	.L1182
	.section	.rodata
	.align	8
.L1196:
.L1198:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1197:
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
	jle	.L1207
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1207
	lhi	%r0,-4
	nr	%r0,%r4
	lr	%r5,%r0
	ahi	%r5,-4
	lhi	%r12,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r12,%r5
	je	.L1242
	chi	%r12,1
	je	.L1246
	chi	%r12,2
	je	.L1247
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1247:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L1246:
	l	%r12,0(%r1,%r2)
	x	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r0
	je	.L1270
.L1242:
	srl	%r5,2
	chi	%r5,2
	jle	.L1280
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L1202:
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
	brct	%r5,.L1202
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
.L1270:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r0,%r4
	ar	%r5,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L1200
	xc	0(1,%r5),0(%r3)
	chi	%r0,1
	je	.L1200
	xc	1(1,%r5),1(%r3)
	chi	%r0,2
	je	.L1200
	xc	2(1,%r5),2(%r3)
.L1200:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1280:
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
	brct	%r5,.L1280
	j	.L1270
.L1207:
	lhi	%r12,7
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r12,%r4
	je	.L1229
	chi	%r12,1
	je	.L1248
	chi	%r12,2
	je	.L1249
	chi	%r12,3
	je	.L1250
	chi	%r12,4
	je	.L1251
	chi	%r12,5
	je	.L1252
	chi	%r12,6
	je	.L1253
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1253:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1252:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1251:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1250:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1249:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1248:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1200
.L1229:
	lr	%r4,%r5
	srl	%r4,3
	chi	%r4,2
	jle	.L1279
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
.L1204:
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
	brct	%r4,.L1204
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
	j	.L1200
.L1279:
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
	brct	%r4,.L1279
	j	.L1200
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
	je	.L1287
.L1288:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1288
.L1287:
	ltr	%r4,%r4
	je	.L1290
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1311
.L1299:
	srl	%r4,1
.L1289:
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
	brct	%r4,.L1289
.L1290:
	mvi	0(%r1),0
	br	%r14
.L1311:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1299
	j	.L1290
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
	je	.L1325
	chi	%r5,1
	je	.L1336
	chi	%r5,2
	je	.L1337
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
.L1337:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
.L1336:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1325:
	srl	%r4,2
.L1314:
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
	brct	%r4,.L1314
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
	je	.L1351
.L1357:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1350
.L1349:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1350:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1349
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1357
.L1351:
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
.L1361:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L1360
	lr	%r2,%r1
.L1360:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1361
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
	je	.L1365
	lr	%r11,%r3
.L1367:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1367
	slr	%r11,%r3
	jhe	.L1365
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1385
.L1388:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1387
.L1385:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1388
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1383
.L1371:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1365
.L1372:
	ahi	%r2,1
	j	.L1385
.L1383:
	lhi	%r8,255
	nr	%r1,%r8
	nr	%r4,%r8
	cr	%r1,%r4
	jne	.L1372
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1389
	icm	%r4,1,1(%r12)
	je	.L1372
	lr	%r12,%r8
	brct	%r9,.L1383
	j	.L1371
.L1387:
	lhi	%r2,0
.L1365:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1389:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1372
	j	.L1365
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
	larl	%r5,.L1403
	kdb	%f0,.L1404-.L1403(%r5)
	jl	.L1402
	jnh	.L1395
	kdb	%f2,.L1404-.L1403(%r5)
	jl	.L1394
.L1395:
	br	%r14
.L1402:
	kdb	%f2,.L1404-.L1403(%r5)
	jnh	.L1395
.L1394:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1403:
.L1404:
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
	jl	.L1414
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1414
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1411
.L1415:
	lr	%r2,%r5
.L1407:
	clr	%r3,%r2
	jl	.L1416
.L1411:
	lr	%r5,%r2
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1415
	chi	%r0,1
	je	.L1405
.L1410:
	lr	%r12,%r0
	lhi	%r10,3
	ahi	%r12,-1
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1426
	chi	%r10,1
	je	.L1436
	chi	%r10,2
	jne	.L1452
.L1437:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1443
	ahi	%r1,1
.L1436:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1443
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1405
.L1426:
	srl	%r12,2
.L1408:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1443
	ic	%r8,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1443
	ic	%r8,2(%r1,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1443
	ic	%r8,3(%r1,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1443
	ahi	%r1,4
	brct	%r12,.L1408
.L1405:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1452:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	je	.L1437
.L1443:
	clr	%r3,%r5
	jl	.L1416
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1407
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1410
.L1416:
	lhi	%r2,0
	lm	%r8,%r12,32(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1414:
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
	je	.L1455
	brasl	%r14,memmove
.L1455:
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
	larl	%r5,.L1488
	kdb	%f0,.L1489-.L1488(%r5)
	jl	.L1484
	kdb	%f0,.L1490-.L1488(%r5)
	jnhe	.L1485
	lhi	%r3,0
.L1464:
	lhi	%r0,0
.L1470:
	ahi	%r0,1
	mdb	%f0,.L1491-.L1488(%r5)
	kdb	%f0,.L1490-.L1488(%r5)
	jhe	.L1470
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1487:
	lcdbr	%f0,%f0
	br	%r14
.L1485:
	kdb	%f0,.L1491-.L1488(%r5)
	jnl	.L1467
	cdb	%f0,.L1489-.L1488(%r5)
	jne	.L1476
.L1467:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1484:
	lcdbr	%f2,%f0
	kdb	%f0,.L1492-.L1488(%r5)
	jnle	.L1486
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1464
.L1486:
	kdb	%f0,.L1493-.L1488(%r5)
	jnh	.L1467
	lhi	%r3,1
.L1465:
	ldr	%f0,%f2
	lhi	%r0,0
.L1472:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1491-.L1488(%r5)
	jl	.L1472
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1487
	br	%r14
.L1476:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1465
	.section	.rodata
	.align	8
.L1488:
.L1493:
	.long	-1075838976
	.long	0
.L1492:
	.long	-1074790400
	.long	0
.L1491:
	.long	1071644672
	.long	0
.L1490:
	.long	1072693248
	.long	0
.L1489:
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
	je	.L1498
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
.L1497:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1500
	ahi	%r2,-1
.L1500:
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
	jne	.L1497
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
.L1498:
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
	jhe	.L1508
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L1507:
	ltr	%r3,%r3
	jl	.L1508
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1509
	ltr	%r3,%r3
	jl	.L1508
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1509
	ltr	%r3,%r3
	jl	.L1508
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1509
	ltr	%r3,%r3
	jl	.L1508
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1509
	ahi	%r2,-4
	brct	%r0,.L1507
	ltr	%r4,%r4
	ber	%r14
.L1529:
	lr	%r2,%r5
	br	%r14
.L1509:
	ltr	%r1,%r1
	je	.L1516
.L1508:
	lhi	%r2,0
.L1513:
	clr	%r5,%r3
	jl	.L1512
	sr	%r5,%r3
	or	%r2,%r1
.L1512:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1513
	ltr	%r4,%r4
	ber	%r14
	j	.L1529
.L1516:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1529
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
	je	.L1533
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
.L1533:
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
	je	.L1548
.L1543:
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
.L1548:
	cr	%r5,%r1
	jne	.L1543
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
	je	.L1553
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
.L1553:
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
	jl	.L1649
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1758
.L1649:
	ltr	%r1,%r1
	je	.L1759
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	lr	%r8,%r1
	srl	%r5,3
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L1691
	chi	%r11,1
	je	.L1707
	chi	%r11,2
	je	.L1708
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1708:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r9,0(%r1,%r2)
	st	%r10,4(%r1,%r2)
	ahi	%r1,8
.L1707:
	l	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r0,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r8
	je	.L1735
.L1691:
	srl	%r5,2
	chi	%r5,2
	jle	.L1755
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
.L1652:
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
	brct	%r5,.L1652
.L1735:
	clr	%r4,%r12
	jle	.L1645
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1709
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
	jle	.L1709
	lr	%r8,%r10
	lhi	%r5,3
	or	%r8,%r11
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1709
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1682
	chi	%r8,1
	je	.L1710
	chi	%r8,2
	jne	.L1760
.L1711:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1710:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1734
.L1682:
	srl	%r5,2
	chi	%r5,2
	jle	.L1754
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L1655:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L1655
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L1734:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1645
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1645
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1645
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1645:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1758:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1645
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1700
	chi	%r0,1
	je	.L1705
	chi	%r0,2
	je	.L1706
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1706:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L1705:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1645
.L1700:
	srl	%r4,2
	chi	%r4,2
	jle	.L1756
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1650:
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
	brct	%r4,.L1650
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
	j	.L1645
.L1755:
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
	brct	%r5,.L1755
	j	.L1735
.L1754:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1754
	j	.L1734
.L1760:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1711
.L1756:
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
	brct	%r4,.L1756
	j	.L1645
.L1759:
	ltr	%r4,%r4
	je	.L1645
.L1709:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1673
	chi	%r5,1
	je	.L1712
	chi	%r5,2
	jne	.L1761
.L1713:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1712:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1645
.L1673:
	srl	%r1,2
	chi	%r1,2
	jle	.L1753
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L1657:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L1657
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L1645
.L1753:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1753
	j	.L1645
.L1761:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1713
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
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r4
	clr	%r2,%r3
	srl	%r0,1
	jl	.L1767
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L1852
.L1767:
	ltr	%r0,%r0
	je	.L1766
	lr	%r1,%r0
	lhi	%r5,8
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1770
	lr	%r11,%r3
	lhi	%r12,3
	or	%r11,%r2
	nr	%r11,%r12
	ahi	%r11,-1
	ltr	%r11,%r11
	jhe	.L1770
	lr	%r10,%r3
	ahi	%r10,2
	cr	%r2,%r10
	je	.L1770
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
	je	.L1800
	chi	%r10,1
	je	.L1816
	chi	%r10,2
	jne	.L1853
.L1817:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L1816:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1835
.L1800:
	srl	%r5,2
	chi	%r5,2
	jle	.L1849
	ahi	%r5,-1
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
.L1771:
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	brct	%r5,.L1771
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L1835:
	sll	%r11,1
	cr	%r0,%r11
	je	.L1766
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L1766:
	tml	%r4,1
	je	.L1763
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1763:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1852:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1763
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1809
	chi	%r5,1
	je	.L1814
	chi	%r5,2
	je	.L1815
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1815:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L1814:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1763
.L1809:
	srl	%r4,2
	chi	%r4,2
	jle	.L1850
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1768:
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
	brct	%r4,.L1768
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
	j	.L1763
.L1849:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1849
	j	.L1835
.L1853:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L1817
.L1850:
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
	brct	%r4,.L1850
	j	.L1763
.L1770:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r11,3
	srl	%r5,1
	lhi	%r1,0
	ahi	%r5,1
	nr	%r11,%r5
	je	.L1791
	chi	%r11,1
	je	.L1818
	chi	%r11,2
	jne	.L1854
.L1819:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L1818:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1766
.L1791:
	srl	%r5,2
	chi	%r5,2
	jle	.L1848
	ahi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L1773:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	ahi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brct	%r5,.L1773
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L1766
.L1848:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r11,6(%r1,%r3)
	sth	%r11,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1848
	j	.L1766
.L1854:
	lh	%r12,0(%r3)
	lhi	%r1,2
	sth	%r12,0(%r2)
	j	.L1819
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
	jl	.L1860
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1969
.L1860:
	ltr	%r1,%r1
	je	.L1970
	sll	%r1,2
	lr	%r5,%r1
	ahi	%r5,-4
	lr	%r8,%r1
	srl	%r5,2
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L1902
	chi	%r11,1
	je	.L1918
	chi	%r11,2
	je	.L1919
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L1919:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1918:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r8
	je	.L1946
.L1902:
	srl	%r5,2
	chi	%r5,2
	jle	.L1966
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L1863:
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	brct	%r5,.L1863
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L1946:
	clr	%r4,%r12
	jle	.L1856
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1920
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
	jle	.L1920
	lr	%r9,%r10
	lhi	%r5,3
	or	%r9,%r11
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L1920
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1893
	chi	%r8,1
	je	.L1921
	chi	%r8,2
	jne	.L1971
.L1922:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1921:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1945
.L1893:
	srl	%r5,2
	chi	%r5,2
	jle	.L1965
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L1866:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L1866
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L1945:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1856
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1856
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1856
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1856:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1969:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1856
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1911
	chi	%r0,1
	je	.L1916
	chi	%r0,2
	je	.L1917
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1917:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L1916:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1856
.L1911:
	srl	%r4,2
	chi	%r4,2
	jle	.L1967
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1861:
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
	brct	%r4,.L1861
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
	j	.L1856
.L1966:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L1966
	j	.L1946
.L1965:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L1965
	j	.L1945
.L1971:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1922
.L1967:
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
	brct	%r4,.L1967
	j	.L1856
.L1970:
	ltr	%r4,%r4
	je	.L1856
.L1920:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1884
	chi	%r5,1
	je	.L1923
	chi	%r5,2
	jne	.L1972
.L1924:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L1923:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1856
.L1884:
	srl	%r1,2
	chi	%r1,2
	jle	.L1964
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L1868:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L1868
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L1856
.L1964:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L1964
	j	.L1856
.L1972:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1924
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
	larl	%r5,.L1979
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1980-.L1979(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1979:
.L1980:
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
	larl	%r5,.L1984
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1982
	adb	%f0,.L1985-.L1984(%r5)
.L1982:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1984:
.L1985:
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
	jne	.L1997
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L1998
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L1999
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2000
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2001
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2002
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2003
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2004
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2005
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2006
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2007
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2008
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2009
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2010
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L1997:
	lhi	%r2,0
	br	%r14
.L2008:
	lhi	%r2,12
	br	%r14
.L1998:
	lhi	%r2,2
	br	%r14
.L1999:
	lhi	%r2,3
	br	%r14
.L2000:
	lhi	%r2,4
	br	%r14
.L2001:
	lhi	%r2,5
	br	%r14
.L2002:
	lhi	%r2,6
	br	%r14
.L2003:
	lhi	%r2,7
	br	%r14
.L2004:
	lhi	%r2,8
	br	%r14
.L2005:
	lhi	%r2,9
	br	%r14
.L2006:
	lhi	%r2,10
	br	%r14
.L2007:
	lhi	%r2,11
	br	%r14
.L2009:
	lhi	%r2,13
	br	%r14
.L2010:
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
	jne	.L2017
	tml	%r2,2
	jne	.L2018
	tml	%r2,4
	jne	.L2019
	tml	%r2,8
	jne	.L2020
	tml	%r2,16
	jne	.L2021
	tml	%r2,32
	jne	.L2022
	tml	%r2,64
	jne	.L2023
	tml	%r2,128
	jne	.L2024
	tml	%r2,256
	jne	.L2025
	tml	%r2,512
	jne	.L2026
	tml	%r2,1024
	jne	.L2027
	tml	%r2,2048
	jne	.L2028
	tml	%r2,4096
	jne	.L2029
	tml	%r2,8192
	jne	.L2030
	tml	%r2,16384
	jne	.L2031
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2017:
	lhi	%r2,0
	br	%r14
.L2018:
	lhi	%r2,1
	br	%r14
.L2029:
	lhi	%r2,12
	br	%r14
.L2019:
	lhi	%r2,2
	br	%r14
.L2020:
	lhi	%r2,3
	br	%r14
.L2021:
	lhi	%r2,4
	br	%r14
.L2022:
	lhi	%r2,5
	br	%r14
.L2023:
	lhi	%r2,6
	br	%r14
.L2024:
	lhi	%r2,7
	br	%r14
.L2025:
	lhi	%r2,8
	br	%r14
.L2026:
	lhi	%r2,9
	br	%r14
.L2027:
	lhi	%r2,10
	br	%r14
.L2028:
	lhi	%r2,11
	br	%r14
.L2030:
	lhi	%r2,13
	br	%r14
.L2031:
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
	larl	%r5,.L2043
	keb	%f0,.L2044-.L2043(%r5)
	jhe	.L2042
	cfebr	%r2,5,%f0
	br	%r14
.L2042:
	seb	%f0,.L2044-.L2043(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L2045-.L2043(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2043:
.L2044:
	.long	1191182336
.L2045:
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
	ar	%r2,%r4
	nr	%r0,%r5
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r3,%r1
	sra	%r1,15
	lhi	%r0,1
	sra	%r4,13
	sra	%r3,14
	nr	%r4,%r0
	nr	%r3,%r0
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
	.align	16
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
.LFB118:
	.cfi_startproc
	lhi	%r3,1
	lr	%r0,%r2
	lhi	%r5,1
	sra	%r0,2
	lhi	%r4,1
	nr	%r0,%r5
	nr	%r4,%r2
	lr	%r1,%r2
	lhi	%r5,1
	sra	%r1,1
	nr	%r1,%r3
	lhi	%r3,1
	ar	%r1,%r4
	lr	%r4,%r2
	ar	%r1,%r0
	sra	%r4,3
	lr	%r0,%r2
	nr	%r4,%r3
	sra	%r0,4
	nr	%r0,%r5
	ar	%r1,%r4
	lhi	%r3,1
	ar	%r1,%r0
	lr	%r4,%r2
	lr	%r0,%r2
	sra	%r4,5
	sra	%r0,6
	nr	%r4,%r3
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lhi	%r3,1
	ar	%r1,%r0
	lr	%r4,%r2
	lr	%r0,%r2
	sra	%r4,7
	sra	%r0,8
	nr	%r4,%r3
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lhi	%r3,1
	ar	%r1,%r0
	lr	%r4,%r2
	lr	%r0,%r2
	sra	%r4,9
	sra	%r0,10
	nr	%r4,%r3
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lhi	%r3,1
	ar	%r1,%r0
	lr	%r4,%r2
	lr	%r0,%r2
	sra	%r4,11
	sra	%r0,12
	nr	%r4,%r3
	lhi	%r5,1
	ar	%r1,%r4
	nr	%r0,%r5
	ar	%r1,%r0
	lr	%r3,%r2
	lr	%r4,%r2
	sra	%r2,15
	lhi	%r0,1
	lr	%r5,%r2
	sra	%r3,13
	sra	%r4,14
	nr	%r3,%r0
	nr	%r4,%r0
	ar	%r1,%r3
	ar	%r1,%r4
	lr	%r2,%r1
	ar	%r2,%r5
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
	je	.L2053
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
.L2053:
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
	je	.L2149
	ltr	%r3,%r3
	je	.L2149
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
.L2149:
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
	jle	.L2243
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2242:
	ltr	%r3,%r3
	jl	.L2243
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2244
	ltr	%r3,%r3
	jl	.L2243
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2244
	ltr	%r3,%r3
	jl	.L2243
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2244
	ltr	%r3,%r3
	jl	.L2243
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2244
	ahi	%r2,-4
	brct	%r0,.L2242
	ltr	%r4,%r4
	ber	%r14
.L2264:
	lr	%r2,%r5
	br	%r14
.L2244:
	ltr	%r1,%r1
	je	.L2251
.L2243:
	lhi	%r2,0
.L2248:
	clr	%r5,%r3
	jl	.L2247
	sr	%r5,%r3
	or	%r2,%r1
.L2247:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2248
	ltr	%r4,%r4
	ber	%r14
	j	.L2264
.L2251:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2264
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
	jl	.L2269
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2269:
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
	jl	.L2274
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2274:
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
	jl	.L2384
	je	.L2287
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r3,%r4
	sra	%r1,1
	sll	%r3,1
	ber	%r14
	lhi	%r5,0
.L2282:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2381
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
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L2285
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,28
	sra	%r4,28
	je	.L2285
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
.L2285:
	ltr	%r5,%r5
	je	.L2280
	lcr	%r2,%r2
.L2280:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2384:
	lhi	%r0,1
	nr	%r0,%r1
	lcr	%r2,%r0
	nr	%r2,%r4
	lcr	%r1,%r1
	lr	%r3,%r4
	lhi	%r5,1
	sll	%r3,1
	sra	%r1,1
	jne	.L2282
	lcr	%r2,%r2
	br	%r14
.L2287:
	lhi	%r2,0
	br	%r14
.L2381:
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
	larl	%r13,.L2434
	ltr	%r4,%r2
	jl	.L2432
	lhi	%r1,1
	lhi	%r0,0
.L2387:
	ltr	%r3,%r3
	jhe	.L2388
	lcr	%r3,%r3
	lr	%r0,%r1
.L2388:
	lr	%r5,%r4
	lr	%r1,%r3
	clr	%r4,%r3
	jle	.L2395
	sll	%r1,1
	clr	%r4,%r1
	jle	.L2396
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L2397
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L2398
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L2399
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L2400
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L2401
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L2402
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L2403
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L2404
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L2405
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L2406
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L2407
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L2408
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L2409
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L2410
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L2411
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L2412
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L2413
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L2414
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L2415
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L2416
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L2417
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L2418
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L2419
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L2420
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L2421
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L2422
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L2423
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L2424
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L2425
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L2433
.L2390:
	ltr	%r0,%r0
	je	.L2386
	lcr	%r2,%r2
.L2386:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2432:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r1,0
	lhi	%r0,1
	j	.L2387
.L2413:
	l	%r3,.L2435-.L2434(%r13)
.L2389:
	lhi	%r2,0
.L2392:
	clr	%r5,%r1
	jl	.L2391
	sr	%r5,%r1
	or	%r2,%r3
.L2391:
	srl	%r3,1
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L2392
	j	.L2390
.L2395:
	lhi	%r3,1
	j	.L2389
.L2396:
	lhi	%r3,2
	j	.L2389
.L2398:
	lhi	%r3,8
	j	.L2389
.L2397:
	lhi	%r3,4
	j	.L2389
.L2399:
	lhi	%r3,16
	j	.L2389
.L2400:
	lhi	%r3,32
	j	.L2389
.L2402:
	lhi	%r3,128
	j	.L2389
.L2401:
	lhi	%r3,64
	j	.L2389
.L2403:
	lhi	%r3,256
	j	.L2389
.L2404:
	lhi	%r3,512
	j	.L2389
.L2405:
	lhi	%r3,1024
	j	.L2389
.L2406:
	lhi	%r3,2048
	j	.L2389
.L2408:
	lhi	%r3,8192
	j	.L2389
.L2407:
	lhi	%r3,4096
	j	.L2389
.L2410:
	l	%r3,.L2436-.L2434(%r13)
	j	.L2389
.L2409:
	lhi	%r3,16384
	j	.L2389
.L2412:
	l	%r3,.L2437-.L2434(%r13)
	j	.L2389
.L2411:
	l	%r3,.L2438-.L2434(%r13)
	j	.L2389
.L2414:
	l	%r3,.L2439-.L2434(%r13)
	j	.L2389
.L2415:
	l	%r3,.L2440-.L2434(%r13)
	j	.L2389
.L2416:
	l	%r3,.L2441-.L2434(%r13)
	j	.L2389
.L2417:
	l	%r3,.L2442-.L2434(%r13)
	j	.L2389
.L2418:
	l	%r3,.L2443-.L2434(%r13)
	j	.L2389
.L2419:
	l	%r3,.L2444-.L2434(%r13)
	j	.L2389
.L2420:
	l	%r3,.L2445-.L2434(%r13)
	j	.L2389
.L2421:
	l	%r3,.L2446-.L2434(%r13)
	j	.L2389
.L2422:
	l	%r3,.L2447-.L2434(%r13)
	j	.L2389
.L2433:
	l	%r1,.L2448-.L2434(%r13)
	lr	%r3,%r1
	j	.L2389
.L2424:
	l	%r3,.L2449-.L2434(%r13)
	j	.L2389
.L2423:
	l	%r3,.L2450-.L2434(%r13)
	j	.L2389
.L2425:
	l	%r3,.L2451-.L2434(%r13)
	j	.L2389
	.section	.rodata
	.align	8
.L2434:
.L2451:
	.long	1073741824
.L2450:
	.long	268435456
.L2449:
	.long	536870912
.L2448:
	.long	-2147483648
.L2447:
	.long	134217728
.L2446:
	.long	67108864
.L2445:
	.long	33554432
.L2444:
	.long	16777216
.L2443:
	.long	8388608
.L2442:
	.long	4194304
.L2441:
	.long	2097152
.L2440:
	.long	1048576
.L2439:
	.long	524288
.L2438:
	.long	65536
.L2437:
	.long	131072
.L2436:
	.long	32768
.L2435:
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
	larl	%r13,.L2500
	ltr	%r2,%r2
	jl	.L2498
	lhi	%r4,0
.L2453:
	lpr	%r1,%r3
	clr	%r2,%r1
	lr	%r3,%r2
	jle	.L2460
	lr	%r5,%r1
	sll	%r5,1
	clr	%r2,%r5
	jle	.L2461
	lr	%r0,%r1
	sll	%r0,2
	clr	%r2,%r0
	jle	.L2462
	lr	%r5,%r1
	sll	%r5,3
	clr	%r2,%r5
	jle	.L2463
	lr	%r0,%r1
	sll	%r0,4
	clr	%r2,%r0
	jle	.L2464
	lr	%r5,%r1
	sll	%r5,5
	clr	%r2,%r5
	jle	.L2465
	lr	%r0,%r1
	sll	%r0,6
	clr	%r2,%r0
	jle	.L2466
	lr	%r5,%r1
	sll	%r5,7
	clr	%r2,%r5
	jle	.L2467
	lr	%r0,%r1
	sll	%r0,8
	clr	%r2,%r0
	jle	.L2468
	lr	%r5,%r1
	sll	%r5,9
	clr	%r2,%r5
	jle	.L2469
	lr	%r0,%r1
	sll	%r0,10
	clr	%r2,%r0
	jle	.L2470
	lr	%r5,%r1
	sll	%r5,11
	clr	%r2,%r5
	jle	.L2471
	lr	%r0,%r1
	sll	%r0,12
	clr	%r2,%r0
	jle	.L2472
	lr	%r5,%r1
	sll	%r5,13
	clr	%r2,%r5
	jle	.L2473
	lr	%r0,%r1
	sll	%r0,14
	clr	%r2,%r0
	jle	.L2474
	lr	%r5,%r1
	sll	%r5,15
	clr	%r2,%r5
	jle	.L2475
	lr	%r0,%r1
	sll	%r0,16
	clr	%r2,%r0
	jle	.L2476
	lr	%r5,%r1
	sll	%r5,17
	clr	%r2,%r5
	jle	.L2477
	lr	%r0,%r1
	sll	%r0,18
	clr	%r2,%r0
	jle	.L2478
	lr	%r5,%r1
	sll	%r5,19
	clr	%r2,%r5
	jle	.L2479
	lr	%r0,%r1
	sll	%r0,20
	clr	%r2,%r0
	jle	.L2480
	lr	%r5,%r1
	sll	%r5,21
	clr	%r2,%r5
	jle	.L2481
	lr	%r0,%r1
	sll	%r0,22
	clr	%r2,%r0
	jle	.L2482
	lr	%r5,%r1
	sll	%r5,23
	clr	%r2,%r5
	jle	.L2483
	lr	%r0,%r1
	sll	%r0,24
	clr	%r2,%r0
	jle	.L2484
	lr	%r5,%r1
	sll	%r5,25
	clr	%r2,%r5
	jle	.L2485
	lr	%r0,%r1
	sll	%r0,26
	clr	%r2,%r0
	jle	.L2486
	lr	%r5,%r1
	sll	%r5,27
	clr	%r2,%r5
	jle	.L2487
	lr	%r0,%r1
	sll	%r0,28
	clr	%r2,%r0
	jle	.L2488
	lr	%r5,%r1
	sll	%r5,29
	clr	%r2,%r5
	jle	.L2489
	lr	%r0,%r1
	sll	%r0,30
	clr	%r2,%r0
	jle	.L2490
	sll	%r1,31
	clr	%r2,%r1
	jle	.L2499
.L2455:
	ltr	%r4,%r4
	je	.L2452
	lcr	%r2,%r2
.L2452:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L2498:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r4,1
	j	.L2453
.L2478:
	l	%r2,.L2501-.L2500(%r13)
	lr	%r1,%r0
.L2496:
	clr	%r3,%r1
	jl	.L2456
	sr	%r3,%r1
.L2456:
	srl	%r2,1
	srl	%r1,1
	ltr	%r2,%r2
	jne	.L2496
	lr	%r2,%r3
	j	.L2455
.L2460:
	lhi	%r2,1
	j	.L2496
.L2461:
	lr	%r1,%r5
	lhi	%r2,2
	j	.L2496
.L2463:
	lr	%r1,%r5
	lhi	%r2,8
	j	.L2496
.L2462:
	lr	%r1,%r0
	lhi	%r2,4
	j	.L2496
.L2464:
	lr	%r1,%r0
	lhi	%r2,16
	j	.L2496
.L2465:
	lr	%r1,%r5
	lhi	%r2,32
	j	.L2496
.L2467:
	lr	%r1,%r5
	lhi	%r2,128
	j	.L2496
.L2466:
	lr	%r1,%r0
	lhi	%r2,64
	j	.L2496
.L2468:
	lr	%r1,%r0
	lhi	%r2,256
	j	.L2496
.L2469:
	lr	%r1,%r5
	lhi	%r2,512
	j	.L2496
.L2470:
	lr	%r1,%r0
	lhi	%r2,1024
	j	.L2496
.L2471:
	lr	%r1,%r5
	lhi	%r2,2048
	j	.L2496
.L2473:
	lr	%r1,%r5
	lhi	%r2,8192
	j	.L2496
.L2472:
	lr	%r1,%r0
	lhi	%r2,4096
	j	.L2496
.L2475:
	l	%r2,.L2502-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2474:
	lr	%r1,%r0
	lhi	%r2,16384
	j	.L2496
.L2477:
	l	%r2,.L2503-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2476:
	l	%r2,.L2504-.L2500(%r13)
	lr	%r1,%r0
	j	.L2496
.L2479:
	l	%r2,.L2505-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2480:
	l	%r2,.L2506-.L2500(%r13)
	lr	%r1,%r0
	j	.L2496
.L2481:
	l	%r2,.L2507-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2482:
	l	%r2,.L2508-.L2500(%r13)
	lr	%r1,%r0
	j	.L2496
.L2483:
	l	%r2,.L2509-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2484:
	l	%r2,.L2510-.L2500(%r13)
	lr	%r1,%r0
	j	.L2496
.L2485:
	l	%r2,.L2511-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2486:
	l	%r2,.L2512-.L2500(%r13)
	lr	%r1,%r0
	j	.L2496
.L2487:
	l	%r2,.L2513-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2499:
	l	%r1,.L2514-.L2500(%r13)
	lr	%r2,%r1
	j	.L2496
.L2489:
	l	%r2,.L2515-.L2500(%r13)
	lr	%r1,%r5
	j	.L2496
.L2488:
	l	%r2,.L2516-.L2500(%r13)
	lr	%r1,%r0
	j	.L2496
.L2490:
	l	%r2,.L2517-.L2500(%r13)
	lr	%r1,%r0
	j	.L2496
	.section	.rodata
	.align	8
.L2500:
.L2517:
	.long	1073741824
.L2516:
	.long	268435456
.L2515:
	.long	536870912
.L2514:
	.long	-2147483648
.L2513:
	.long	134217728
.L2512:
	.long	67108864
.L2511:
	.long	33554432
.L2510:
	.long	16777216
.L2509:
	.long	8388608
.L2508:
	.long	4194304
.L2507:
	.long	2097152
.L2506:
	.long	1048576
.L2505:
	.long	524288
.L2504:
	.long	65536
.L2503:
	.long	131072
.L2502:
	.long	32768
.L2501:
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
	larl	%r13,.L2638
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L2636
	tml	%r3,32768
	jne	.L2521
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2522
	tml	%r1,32768
	jne	.L2523
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2524
	tml	%r1,32768
	jne	.L2525
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2526
	tml	%r1,32768
	jne	.L2527
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2528
	tml	%r1,32768
	jne	.L2529
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2530
	tml	%r1,32768
	jne	.L2531
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2532
	tml	%r1,32768
	jne	.L2533
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2534
	tml	%r1,32768
	jne	.L2535
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2536
	tml	%r1,32768
	jne	.L2537
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2538
	tml	%r1,32768
	jne	.L2539
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2540
	tml	%r1,32768
	jne	.L2541
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2542
	tml	%r1,32768
	jne	.L2543
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2544
	tml	%r1,32768
	jne	.L2545
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2546
	tml	%r1,32768
	jne	.L2547
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L2639-.L2638(%r13)
	clr	%r2,%r1
	jle	.L2548
	tml	%r1,32768
	jne	.L2549
	sll	%r3,15
	n	%r3,.L2639-.L2638(%r13)
	clr	%r2,%r3
	jle	.L2550
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L2637
.L2551:
	ltr	%r4,%r4
	je	.L2569
	lr	%r2,%r5
.L2569:
	n	%r2,.L2639-.L2638(%r13)
	lm	%r11,%r13,44(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2538:
	.cfi_restore_state
	jl	.L2585
	sr	%r5,%r1
	lhi	%r0,512
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,512
.L2553:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,2
	srl	%r11,2
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2554
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2554:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,3
	srl	%r11,3
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2555
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2555:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,4
	srl	%r11,4
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2556
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2556:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,5
	srl	%r11,5
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2557
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2557:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,6
	srl	%r11,6
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2558
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2558:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,7
	srl	%r11,7
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2559
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2559:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,8
	srl	%r11,8
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2560
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2560:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,9
	srl	%r11,9
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2561
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2561:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,10
	srl	%r11,10
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2562
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2562:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,11
	srl	%r11,11
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2563
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2563:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,12
	srl	%r11,12
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2564
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2564:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,13
	srl	%r11,13
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2565
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2565:
	l	%r11,.L2639-.L2638(%r13)
	lr	%r12,%r1
	nr	%r11,%r0
	srl	%r12,14
	srl	%r11,14
	ltr	%r11,%r11
	je	.L2551
	clr	%r5,%r12
	jl	.L2566
	sr	%r5,%r12
	or	%r2,%r11
	n	%r5,.L2639-.L2638(%r13)
.L2566:
	n	%r0,.L2639-.L2638(%r13)
	srl	%r1,15
	chi	%r0,16384
	je	.L2551
	clr	%r5,%r1
	jl	.L2574
	sr	%r5,%r1
	lhi	%r0,1
	n	%r5,.L2639-.L2638(%r13)
	or	%r2,%r0
	j	.L2551
.L2574:
	lhi	%r5,0
	j	.L2551
.L2636:
	je	.L2572
	lhi	%r2,0
	j	.L2551
.L2521:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L2639-.L2638(%r13)
	j	.L2551
.L2522:
	jl	.L2577
	sr	%r5,%r1
	lhi	%r0,2
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,2
	j	.L2553
.L2523:
	lhi	%r2,32767
	sr	%r5,%r1
	nr	%r3,%r2
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r12,1
	lhi	%r0,2
	lhi	%r2,2
.L2571:
	clr	%r5,%r3
	jl	.L2553
	sr	%r5,%r3
	or	%r2,%r12
	n	%r5,.L2639-.L2638(%r13)
	j	.L2553
.L2524:
	jl	.L2578
	sr	%r5,%r1
	lhi	%r0,4
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,4
	j	.L2553
.L2525:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,2
	lhi	%r0,4
	lhi	%r2,4
	j	.L2571
.L2526:
	jl	.L2579
	sr	%r5,%r1
	lhi	%r0,8
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,8
	j	.L2553
.L2527:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,4
	lhi	%r0,8
	lhi	%r2,8
	j	.L2571
.L2528:
	jl	.L2580
	sr	%r5,%r1
	lhi	%r0,16
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,16
	j	.L2553
.L2529:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,8
	lhi	%r0,16
	lhi	%r2,16
	j	.L2571
.L2530:
	jl	.L2581
	sr	%r5,%r1
	lhi	%r0,32
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,32
	j	.L2553
.L2531:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,16
	lhi	%r0,32
	lhi	%r2,32
	j	.L2571
.L2532:
	jl	.L2582
	sr	%r5,%r1
	lhi	%r0,64
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,64
	j	.L2553
.L2533:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,32
	lhi	%r0,64
	lhi	%r2,64
	j	.L2571
.L2534:
	jl	.L2583
	sr	%r5,%r1
	lhi	%r0,128
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,128
	j	.L2553
.L2535:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,64
	lhi	%r0,128
	lhi	%r2,128
	j	.L2571
.L2537:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,128
	lhi	%r0,256
	lhi	%r2,256
	j	.L2571
.L2539:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,256
	lhi	%r0,512
	lhi	%r2,512
	j	.L2571
.L2572:
	lhi	%r2,1
	lhi	%r5,0
	j	.L2551
.L2577:
	lhi	%r0,2
.L2570:
	lr	%r3,%r1
	lr	%r12,%r0
	srl	%r3,1
	sll	%r12,16
	lhi	%r2,0
	srl	%r12,17
	j	.L2571
.L2541:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,512
	lhi	%r0,1024
	lhi	%r2,1024
	j	.L2571
.L2543:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,1024
	lhi	%r0,2048
	lhi	%r2,2048
	j	.L2571
.L2578:
	lhi	%r0,4
	j	.L2570
.L2579:
	lhi	%r0,8
	j	.L2570
.L2545:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,2048
	lhi	%r0,4096
	lhi	%r2,4096
	j	.L2571
.L2547:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,4096
	lhi	%r0,8192
	lhi	%r2,8192
	j	.L2571
.L2580:
	lhi	%r0,16
	j	.L2570
.L2581:
	lhi	%r0,32
	j	.L2570
.L2549:
	sr	%r5,%r1
	lr	%r3,%r1
	n	%r5,.L2639-.L2638(%r13)
	srl	%r3,1
	lhi	%r12,8192
	lhi	%r0,16384
	lhi	%r2,16384
	j	.L2571
.L2550:
	l	%r1,.L2640-.L2638(%r13)
	lhi	%r0,-32768
	tml	%r2,32768
	je	.L2570
	lhi	%r2,-32768
	lhi	%r5,0
	j	.L2553
.L2582:
	lhi	%r0,64
	j	.L2570
.L2637:
	ahi	%r5,-32768
	l	%r1,.L2640-.L2638(%r13)
	lhi	%r3,16384
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r12,16384
	lhi	%r0,-32768
	lhi	%r2,-32768
	j	.L2571
.L2583:
	lhi	%r0,128
	j	.L2570
.L2536:
	jl	.L2584
	sr	%r5,%r1
	lhi	%r0,256
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,256
	j	.L2553
.L2584:
	lhi	%r0,256
	j	.L2570
.L2540:
	jl	.L2586
	sr	%r5,%r1
	lhi	%r0,1024
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,1024
	j	.L2553
.L2548:
	jl	.L2590
	sr	%r5,%r1
	lhi	%r0,16384
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,16384
	j	.L2553
.L2586:
	lhi	%r0,1024
	j	.L2570
.L2590:
	lhi	%r0,16384
	j	.L2570
.L2585:
	lhi	%r0,512
	j	.L2570
.L2546:
	jl	.L2589
	sr	%r5,%r1
	lhi	%r0,8192
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,8192
	j	.L2553
.L2544:
	jl	.L2588
	sr	%r5,%r1
	lhi	%r0,4096
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,4096
	j	.L2553
.L2542:
	jl	.L2587
	sr	%r5,%r1
	lhi	%r0,2048
	n	%r5,.L2639-.L2638(%r13)
	lhi	%r2,2048
	j	.L2553
.L2589:
	lhi	%r0,8192
	j	.L2570
.L2588:
	lhi	%r0,4096
	j	.L2570
.L2587:
	lhi	%r0,2048
	j	.L2570
	.section	.rodata
	.align	8
.L2638:
.L2640:
	.long	32768
.L2639:
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
	jle	.L2643
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,8
.L2642:
	ltr	%r3,%r3
	jl	.L2643
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2644
	ltr	%r3,%r3
	jl	.L2643
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2644
	ltr	%r3,%r3
	jl	.L2643
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2644
	ltr	%r3,%r3
	jl	.L2643
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L2644
	ahi	%r2,-4
	brct	%r0,.L2642
	ltr	%r4,%r4
	ber	%r14
.L2664:
	lr	%r2,%r5
	br	%r14
.L2644:
	ltr	%r1,%r1
	je	.L2651
.L2643:
	lhi	%r2,0
.L2648:
	clr	%r5,%r3
	jl	.L2647
	sr	%r5,%r3
	or	%r2,%r1
.L2647:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L2648
	ltr	%r4,%r4
	ber	%r14
	j	.L2664
.L2651:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L2664
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
	je	.L2667
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L2667:
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
	je	.L2673
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L2673:
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
	larl	%r13,.L2686
	cl	%r2,.L2687-.L2686(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L2688-.L2686(%r13)
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
	jne	.L2683
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L2683:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L2686:
.L2688:
	.long	65280
.L2687:
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
	jl	.L2693
	jh	.L2694
	clr	%r3,%r5
	jl	.L2693
	jh	.L2694
	lhi	%r2,1
	br	%r14
.L2693:
	lhi	%r2,0
	br	%r14
.L2694:
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
	jl	.L2700
	jh	.L2699
	clr	%r3,%r5
	jl	.L2700
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2700:
	lhi	%r2,-1
	br	%r14
.L2699:
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
	larl	%r13,.L2704
	l	%r4,.L2705-.L2704(%r13)
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
.L2704:
.L2705:
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
	je	.L2707
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L2707:
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
	larl	%r13,.L2719
	l	%r4,.L2720-.L2719(%r13)
	l	%r1,.L2720-.L2719(%r13)
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
	l	%r5,.L2720-.L2719(%r13)
	lr	%r0,%r3
	n	%r3,.L2720-.L2719(%r13)
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
.L2719:
.L2720:
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
	larl	%r13,.L2723
	l	%r1,.L2724-.L2723(%r13)
	l	%r0,.L2724-.L2723(%r13)
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
	l	%r12,.L2724-.L2723(%r13)
	lr	%r0,%r11
	n	%r11,.L2724-.L2723(%r13)
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
.L2723:
.L2724:
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
	je	.L2726
	ahi	%r2,-1
.L2726:
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
	larl	%r13,.L2734
	l	%r0,.L2735-.L2734(%r13)
	l	%r1,.L2735-.L2734(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L2736-.L2734(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L2737-.L2734(%r13)
	l	%r3,.L2737-.L2734(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L2737-.L2734(%r13)
	nr	%r3,%r1
	l	%r1,.L2737-.L2734(%r13)
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
	n	%r2,.L2736-.L2734(%r13)
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
.L2734:
.L2737:
	.long	858993459
.L2736:
	.long	252645135
.L2735:
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
	larl	%r5,.L2740
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L2741-.L2740(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L2742-.L2740(%r5)
	srl	%r0,2
	n	%r0,.L2742-.L2740(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L2743-.L2740(%r5)
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
.L2740:
.L2743:
	.long	252645135
.L2742:
	.long	858993459
.L2741:
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
	larl	%r5,.L2753
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L2754-.L2753(%r5)
	tml	%r2,1
	je	.L2745
.L2747:
	mdbr	%f0,%f2
.L2745:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2746
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L2747
.L2752:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2747
	j	.L2752
.L2746:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L2754-.L2753(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2753:
.L2754:
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
	larl	%r5,.L2764
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L2765-.L2764(%r5)
	tml	%r2,1
	je	.L2756
.L2758:
	meebr	%f0,%f2
.L2756:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L2757
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L2758
.L2763:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L2758
	j	.L2763
.L2757:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L2765-.L2764(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L2764:
.L2765:
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
	jl	.L2770
	jh	.L2771
	clr	%r3,%r5
	jl	.L2770
	jh	.L2771
	lhi	%r2,1
	br	%r14
.L2770:
	lhi	%r2,0
	br	%r14
.L2771:
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
	jl	.L2777
	jh	.L2776
	clr	%r3,%r5
	jl	.L2777
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L2777:
	lhi	%r2,-1
	br	%r14
.L2776:
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
