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
	lhi	%r5,0
	j	.L1362
.L1365:
	lr	%r2,%r1
	ahi	%r1,1
	tml	%r4,255
	lr	%r5,%r2
	ber	%r14
.L1362:
	ic	%r4,0(%r1)
	lhi	%r2,255
	nr	%r2,%r4
	cr	%r2,%r3
	je	.L1365
	ahi	%r1,1
	lr	%r2,%r5
	tml	%r4,255
	lr	%r5,%r2
	jne	.L1362
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
	je	.L1367
	lr	%r11,%r3
.L1369:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1369
	slr	%r11,%r3
	jhe	.L1367
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1387
.L1390:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1389
.L1387:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1390
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1385
.L1373:
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	je	.L1367
.L1374:
	ahi	%r2,1
	j	.L1387
.L1385:
	lhi	%r8,255
	nr	%r1,%r8
	nr	%r4,%r8
	cr	%r1,%r4
	jne	.L1374
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1391
	icm	%r4,1,1(%r12)
	je	.L1374
	lr	%r12,%r8
	brct	%r9,.L1385
	j	.L1373
.L1389:
	lhi	%r2,0
.L1367:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1391:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r1,%r12
	nr	%r4,%r12
	cr	%r1,%r4
	jne	.L1374
	j	.L1367
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
	larl	%r5,.L1405
	kdb	%f0,.L1406-.L1405(%r5)
	jl	.L1404
	jnh	.L1397
	kdb	%f2,.L1406-.L1405(%r5)
	jl	.L1396
.L1397:
	br	%r14
.L1404:
	kdb	%f2,.L1406-.L1405(%r5)
	jnh	.L1397
.L1396:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1405:
.L1406:
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
	jl	.L1416
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L1416
	stm	%r8,%r12,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ic	%r9,0(%r4)
	lhi	%r11,255
	nr	%r11,%r9
	j	.L1413
.L1417:
	lr	%r2,%r5
.L1409:
	clr	%r3,%r2
	jl	.L1418
.L1413:
	lr	%r5,%r2
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r11
	jne	.L1417
	chi	%r0,1
	je	.L1407
.L1412:
	lr	%r12,%r0
	lhi	%r10,3
	ahi	%r12,-1
	lhi	%r1,1
	nr	%r10,%r12
	je	.L1428
	chi	%r10,1
	je	.L1438
	chi	%r10,2
	jne	.L1454
.L1439:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1445
	ahi	%r1,1
.L1438:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1445
	ahi	%r1,1
	cr	%r1,%r0
	je	.L1407
.L1428:
	srl	%r12,2
.L1410:
	ic	%r8,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r8,1,0(%r10)
	jne	.L1445
	ic	%r8,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1445
	ic	%r8,2(%r1,%r4)
	lhi	%r10,2
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1445
	ic	%r8,3(%r1,%r4)
	lhi	%r10,3
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L1445
	ahi	%r1,4
	brct	%r12,.L1410
.L1407:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1454:
	.cfi_restore_state
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	je	.L1439
.L1445:
	clr	%r3,%r5
	jl	.L1418
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L1409
	lr	%r12,%r5
	lr	%r5,%r2
	lr	%r2,%r12
	j	.L1412
.L1418:
	lhi	%r2,0
	lm	%r8,%r12,32(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1416:
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
	je	.L1457
	brasl	%r14,memmove
.L1457:
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
	larl	%r5,.L1490
	kdb	%f0,.L1491-.L1490(%r5)
	jl	.L1486
	kdb	%f0,.L1492-.L1490(%r5)
	jnhe	.L1487
	lhi	%r3,0
.L1466:
	lhi	%r0,0
.L1472:
	ahi	%r0,1
	mdb	%f0,.L1493-.L1490(%r5)
	kdb	%f0,.L1492-.L1490(%r5)
	jhe	.L1472
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1489:
	lcdbr	%f0,%f0
	br	%r14
.L1487:
	kdb	%f0,.L1493-.L1490(%r5)
	jnl	.L1469
	cdb	%f0,.L1491-.L1490(%r5)
	jne	.L1478
.L1469:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1486:
	lcdbr	%f2,%f0
	kdb	%f0,.L1494-.L1490(%r5)
	jnle	.L1488
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1466
.L1488:
	kdb	%f0,.L1495-.L1490(%r5)
	jnh	.L1469
	lhi	%r3,1
.L1467:
	ldr	%f0,%f2
	lhi	%r0,0
.L1474:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1493-.L1490(%r5)
	jl	.L1474
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1489
	br	%r14
.L1478:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1467
	.section	.rodata
	.align	8
.L1490:
.L1495:
	.long	-1075838976
	.long	0
.L1494:
	.long	-1074790400
	.long	0
.L1493:
	.long	1071644672
	.long	0
.L1492:
	.long	1072693248
	.long	0
.L1491:
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
	je	.L1500
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
.L1499:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1502
	ahi	%r2,-1
.L1502:
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
	jne	.L1499
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
.L1500:
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
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r2
	clr	%r3,%r2
	jhe	.L1753
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L1750
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L1513
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L1750
.L1515:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1513
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L1718
	lr	%r2,%r0
.L1514:
	ltr	%r4,%r4
	jne	.L1508
	lr	%r2,%r11
.L1508:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1718:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1750
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1513
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L1750
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L1513
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L1515
.L1750:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L1645
	lr	%r2,%r0
.L1645:
	clr	%r0,%r3
	jl	.L1646
	lr	%r11,%r12
.L1647:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L1648
	j	.L1514
.L1513:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L1651
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L1518
	lr	%r2,%r0
.L1518:
	clr	%r0,%r1
	jl	.L1519
	lr	%r11,%r5
.L1520:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L1648:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L1522
	lr	%r1,%r2
.L1522:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L1524
	lhi	%r0,0
.L1524:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1526
	lr	%r1,%r2
.L1526:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1528
	lhi	%r5,0
.L1528:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1530
	lr	%r1,%r2
.L1530:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1532
	lhi	%r5,0
.L1532:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1534
	lr	%r1,%r2
.L1534:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1536
	lhi	%r5,0
.L1536:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1538
	lr	%r1,%r2
.L1538:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1540
	lhi	%r5,0
.L1540:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1542
	lr	%r1,%r2
.L1542:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1544
	lhi	%r5,0
.L1544:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1754
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1755
.L1548:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1756
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1757
.L1552:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1758
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1759
.L1556:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1760
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1761
.L1560:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1762
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1763
.L1564:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1764
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1568
.L1776:
	lhi	%r5,0
.L1568:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1570
	lr	%r1,%r2
.L1570:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1572
	lhi	%r5,0
.L1572:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1574
	lr	%r1,%r2
.L1574:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1576
	lhi	%r5,0
.L1576:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1578
	lr	%r1,%r2
.L1578:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1580
	lhi	%r5,0
.L1580:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1582
	lr	%r1,%r2
.L1582:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1584
	lhi	%r5,0
.L1584:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1586
	lr	%r1,%r2
.L1586:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1588
	lhi	%r5,0
.L1588:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1590
	lr	%r1,%r2
.L1590:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1592
	lhi	%r5,0
.L1592:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1765
.L1594:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1766
.L1596:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1767
.L1598:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1768
.L1600:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1769
.L1602:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1770
.L1604:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1771
.L1606:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1772
.L1608:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1773
.L1610:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L1774
.L1612:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L1775
.L1614:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1616
	lhi	%r5,0
.L1616:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1618
	lr	%r1,%r2
.L1618:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1620
	lhi	%r5,0
.L1620:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1622
	lr	%r1,%r2
.L1622:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1624
	lhi	%r5,0
.L1624:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1626
	lr	%r1,%r2
.L1626:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1628
	lhi	%r5,0
.L1628:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1630
	lr	%r1,%r2
.L1630:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1632
	lhi	%r5,0
.L1632:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1634
	lr	%r1,%r2
.L1634:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1636
	lhi	%r5,0
.L1636:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L1514
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L1638
	lr	%r1,%r2
.L1638:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L1640
	lhi	%r5,0
.L1640:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L1514
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L1642
	lr	%r2,%r1
.L1642:
	or	%r11,%r3
	j	.L1514
.L1519:
	lhi	%r11,0
	j	.L1520
.L1755:
	lhi	%r5,0
	j	.L1548
.L1754:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1548
	j	.L1755
.L1757:
	lhi	%r5,0
	j	.L1552
.L1756:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1552
	j	.L1757
.L1646:
	lhi	%r11,0
	j	.L1647
.L1759:
	lhi	%r5,0
	j	.L1556
.L1758:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1556
	j	.L1759
.L1761:
	lhi	%r5,0
	j	.L1560
.L1760:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1560
	j	.L1761
.L1763:
	lhi	%r5,0
	j	.L1564
.L1762:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1564
	j	.L1763
.L1764:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L1568
	j	.L1776
.L1766:
	lhi	%r5,0
	j	.L1596
.L1765:
	lr	%r1,%r2
	j	.L1594
.L1768:
	lhi	%r5,0
	j	.L1600
.L1767:
	lr	%r1,%r2
	j	.L1598
.L1770:
	lhi	%r5,0
	j	.L1604
.L1769:
	lr	%r1,%r2
	j	.L1602
.L1772:
	lhi	%r5,0
	j	.L1608
.L1771:
	lr	%r1,%r2
	j	.L1606
.L1774:
	lhi	%r5,0
	j	.L1612
.L1773:
	lr	%r1,%r2
	j	.L1610
.L1775:
	lr	%r1,%r2
	j	.L1614
.L1753:
	sr	%r2,%r3
	cr	%r3,%r0
	je	.L1511
	lr	%r2,%r0
.L1511:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L1514
.L1651:
	lhi	%r11,0
	j	.L1514
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
	je	.L1780
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
.L1780:
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
	je	.L1795
.L1790:
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
.L1795:
	cr	%r5,%r1
	jne	.L1790
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
	je	.L1800
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
.L1800:
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
	jl	.L1896
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2005
.L1896:
	ltr	%r1,%r1
	je	.L2006
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	lr	%r8,%r1
	srl	%r5,3
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L1938
	chi	%r11,1
	je	.L1954
	chi	%r11,2
	je	.L1955
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L1955:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r9,0(%r1,%r2)
	st	%r10,4(%r1,%r2)
	ahi	%r1,8
.L1954:
	l	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r0,0(%r1,%r2)
	st	%r11,4(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r8
	je	.L1982
.L1938:
	srl	%r5,2
	chi	%r5,2
	jle	.L2002
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
.L1899:
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
	brct	%r5,.L1899
.L1982:
	clr	%r4,%r12
	jle	.L1892
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1956
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
	jle	.L1956
	lr	%r8,%r10
	lhi	%r5,3
	or	%r8,%r11
	nr	%r8,%r5
	ahi	%r8,-1
	ltr	%r8,%r8
	jhe	.L1956
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L1929
	chi	%r8,1
	je	.L1957
	chi	%r8,2
	jne	.L2007
.L1958:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L1957:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L1981
.L1929:
	srl	%r5,2
	chi	%r5,2
	jle	.L2001
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L1902:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L1902
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L1981:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L1892
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L1892
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L1892
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L1892:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2005:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L1892
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1947
	chi	%r0,1
	je	.L1952
	chi	%r0,2
	je	.L1953
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1953:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L1952:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L1892
.L1947:
	srl	%r4,2
	chi	%r4,2
	jle	.L2003
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L1897:
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
	brct	%r4,.L1897
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
	j	.L1892
.L2002:
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
	brct	%r5,.L2002
	j	.L1982
.L2001:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L2001
	j	.L1981
.L2007:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L1958
.L2003:
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
	brct	%r4,.L2003
	j	.L1892
.L2006:
	ltr	%r4,%r4
	je	.L1892
.L1956:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L1920
	chi	%r5,1
	je	.L1959
	chi	%r5,2
	jne	.L2008
.L1960:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L1959:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L1892
.L1920:
	srl	%r1,2
	chi	%r1,2
	jle	.L2000
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L1904:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L1904
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L1892
.L2000:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r10,1(%r12,%r3)
	stc	%r10,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L2000
	j	.L1892
.L2008:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L1960
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
	jl	.L2014
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L2099
.L2014:
	ltr	%r0,%r0
	je	.L2013
	lr	%r1,%r0
	lhi	%r5,8
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L2017
	lr	%r11,%r3
	lhi	%r12,3
	or	%r11,%r2
	nr	%r11,%r12
	ahi	%r11,-1
	ltr	%r11,%r11
	jhe	.L2017
	lr	%r10,%r3
	ahi	%r10,2
	cr	%r2,%r10
	je	.L2017
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
	je	.L2047
	chi	%r10,1
	je	.L2063
	chi	%r10,2
	jne	.L2100
.L2064:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L2063:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L2082
.L2047:
	srl	%r5,2
	chi	%r5,2
	jle	.L2096
	ahi	%r5,-1
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
.L2018:
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	brct	%r5,.L2018
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2082:
	sll	%r11,1
	cr	%r0,%r11
	je	.L2013
	lh	%r0,0(%r12,%r3)
	sth	%r0,0(%r12,%r2)
.L2013:
	tml	%r4,1
	je	.L2010
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2010:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2099:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2010
	lhi	%r5,3
	nr	%r5,%r4
	je	.L2056
	chi	%r5,1
	je	.L2061
	chi	%r5,2
	je	.L2062
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2062:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L2061:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2010
.L2056:
	srl	%r4,2
	chi	%r4,2
	jle	.L2097
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2015:
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
	brct	%r4,.L2015
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
	j	.L2010
.L2096:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2096
	j	.L2082
.L2100:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L2064
.L2097:
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
	brct	%r4,.L2097
	j	.L2010
.L2017:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	lhi	%r11,3
	srl	%r5,1
	lhi	%r1,0
	ahi	%r5,1
	nr	%r11,%r5
	je	.L2038
	chi	%r11,1
	je	.L2065
	chi	%r11,2
	jne	.L2101
.L2066:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L2065:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L2013
.L2038:
	srl	%r5,2
	chi	%r5,2
	jle	.L2095
	ahi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
.L2020:
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	ahi	%r1,8
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	brct	%r5,.L2020
	lh	%r5,2(%r1,%r3)
	sth	%r5,2(%r1,%r2)
	lh	%r5,4(%r1,%r3)
	sth	%r5,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	j	.L2013
.L2095:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r11,6(%r1,%r3)
	sth	%r11,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L2095
	j	.L2013
.L2101:
	lh	%r12,0(%r3)
	lhi	%r1,2
	sth	%r12,0(%r2)
	j	.L2066
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
	jl	.L2107
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2216
.L2107:
	ltr	%r1,%r1
	je	.L2217
	sll	%r1,2
	lr	%r5,%r1
	ahi	%r5,-4
	lr	%r8,%r1
	srl	%r5,2
	lhi	%r11,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r11,%r5
	je	.L2149
	chi	%r11,1
	je	.L2165
	chi	%r11,2
	je	.L2166
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L2166:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L2165:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r8
	je	.L2193
.L2149:
	srl	%r5,2
	chi	%r5,2
	jle	.L2213
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
.L2110:
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	brct	%r5,.L2110
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
.L2193:
	clr	%r4,%r12
	jle	.L2103
	lr	%r0,%r4
	sr	%r0,%r12
	lhi	%r5,6
	lr	%r1,%r0
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L2167
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
	jle	.L2167
	lr	%r9,%r10
	lhi	%r5,3
	or	%r9,%r11
	nr	%r9,%r5
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L2167
	lhi	%r9,-4
	nr	%r9,%r0
	lr	%r5,%r9
	ahi	%r5,-4
	lhi	%r8,3
	srl	%r5,2
	lhi	%r1,0
	ahi	%r5,1
	nr	%r8,%r5
	je	.L2140
	chi	%r8,1
	je	.L2168
	chi	%r8,2
	jne	.L2218
.L2169:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
.L2168:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L2192
.L2140:
	srl	%r5,2
	chi	%r5,2
	jle	.L2212
	ahi	%r5,-1
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
.L2113:
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	brct	%r5,.L2113
	l	%r5,4(%r1,%r10)
	st	%r5,4(%r1,%r11)
	l	%r5,8(%r1,%r10)
	st	%r5,8(%r1,%r11)
	l	%r5,12(%r1,%r10)
	st	%r5,12(%r1,%r11)
.L2192:
	ar	%r12,%r9
	cr	%r9,%r0
	je	.L2103
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	lr	%r11,%r12
	ahi	%r11,1
	clr	%r4,%r11
	jle	.L2103
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	lr	%r9,%r12
	ahi	%r9,2
	clr	%r4,%r9
	jle	.L2103
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2103:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2216:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2103
	lhi	%r0,3
	nr	%r0,%r4
	je	.L2158
	chi	%r0,1
	je	.L2163
	chi	%r0,2
	je	.L2164
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L2164:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L2163:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2103
.L2158:
	srl	%r4,2
	chi	%r4,2
	jle	.L2214
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
.L2108:
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
	brct	%r4,.L2108
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
	j	.L2103
.L2213:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r11,8(%r1,%r3)
	st	%r11,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2213
	j	.L2193
.L2212:
	l	%r8,0(%r1,%r10)
	st	%r8,0(%r1,%r11)
	l	%r8,4(%r1,%r10)
	st	%r8,4(%r1,%r11)
	l	%r8,8(%r1,%r10)
	st	%r8,8(%r1,%r11)
	l	%r8,12(%r1,%r10)
	st	%r8,12(%r1,%r11)
	ahi	%r1,16
	brct	%r5,.L2212
	j	.L2192
.L2218:
	l	%r1,0(%r10)
	st	%r1,0(%r11)
	lhi	%r1,4
	j	.L2169
.L2214:
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
	brct	%r4,.L2214
	j	.L2103
.L2217:
	ltr	%r4,%r4
	je	.L2103
.L2167:
	lr	%r1,%r4
	lhi	%r5,3
	sr	%r1,%r12
	nr	%r5,%r1
	je	.L2131
	chi	%r5,1
	je	.L2170
	chi	%r5,2
	jne	.L2219
.L2171:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L2170:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L2103
.L2131:
	srl	%r1,2
	chi	%r1,2
	jle	.L2211
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
.L2115:
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ahi	%r12,4
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	brct	%r1,.L2115
	ic	%r1,1(%r12,%r3)
	stc	%r1,1(%r12,%r2)
	ic	%r1,2(%r12,%r3)
	stc	%r1,2(%r12,%r2)
	ic	%r1,3(%r12,%r3)
	stc	%r1,3(%r12,%r2)
	j	.L2103
.L2211:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	ic	%r9,2(%r12,%r3)
	stc	%r9,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L2211
	j	.L2103
.L2219:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
	j	.L2171
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
	larl	%r5,.L2226
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L2227-.L2226(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2226:
.L2227:
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
	larl	%r5,.L2231
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L2229
	adb	%f0,.L2232-.L2231(%r5)
.L2229:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2231:
.L2232:
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
	jne	.L2244
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2245
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2246
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2247
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2248
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2249
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2250
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2251
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2252
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2253
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2254
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2255
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2256
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2257
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2244:
	lhi	%r2,0
	br	%r14
.L2255:
	lhi	%r2,12
	br	%r14
.L2245:
	lhi	%r2,2
	br	%r14
.L2246:
	lhi	%r2,3
	br	%r14
.L2247:
	lhi	%r2,4
	br	%r14
.L2248:
	lhi	%r2,5
	br	%r14
.L2249:
	lhi	%r2,6
	br	%r14
.L2250:
	lhi	%r2,7
	br	%r14
.L2251:
	lhi	%r2,8
	br	%r14
.L2252:
	lhi	%r2,9
	br	%r14
.L2253:
	lhi	%r2,10
	br	%r14
.L2254:
	lhi	%r2,11
	br	%r14
.L2256:
	lhi	%r2,13
	br	%r14
.L2257:
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
	jne	.L2264
	tml	%r2,2
	jne	.L2265
	tml	%r2,4
	jne	.L2266
	tml	%r2,8
	jne	.L2267
	tml	%r2,16
	jne	.L2268
	tml	%r2,32
	jne	.L2269
	tml	%r2,64
	jne	.L2270
	tml	%r2,128
	jne	.L2271
	tml	%r2,256
	jne	.L2272
	tml	%r2,512
	jne	.L2273
	tml	%r2,1024
	jne	.L2274
	tml	%r2,2048
	jne	.L2275
	tml	%r2,4096
	jne	.L2276
	tml	%r2,8192
	jne	.L2277
	tml	%r2,16384
	jne	.L2278
	lr	%r1,%r2
	lhi	%r2,16
	sra	%r1,15
	ltr	%r1,%r1
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2264:
	lhi	%r2,0
	br	%r14
.L2265:
	lhi	%r2,1
	br	%r14
.L2276:
	lhi	%r2,12
	br	%r14
.L2266:
	lhi	%r2,2
	br	%r14
.L2267:
	lhi	%r2,3
	br	%r14
.L2268:
	lhi	%r2,4
	br	%r14
.L2269:
	lhi	%r2,5
	br	%r14
.L2270:
	lhi	%r2,6
	br	%r14
.L2271:
	lhi	%r2,7
	br	%r14
.L2272:
	lhi	%r2,8
	br	%r14
.L2273:
	lhi	%r2,9
	br	%r14
.L2274:
	lhi	%r2,10
	br	%r14
.L2275:
	lhi	%r2,11
	br	%r14
.L2277:
	lhi	%r2,13
	br	%r14
.L2278:
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
	larl	%r5,.L2290
	keb	%f0,.L2291-.L2290(%r5)
	jhe	.L2289
	cfebr	%r2,5,%f0
	br	%r14
.L2289:
	seb	%f0,.L2291-.L2290(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L2292-.L2290(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2290:
.L2291:
	.long	1191182336
.L2292:
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
	je	.L2300
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
.L2300:
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
	je	.L2396
	ltr	%r3,%r3
	je	.L2396
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
.L2396:
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
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r2
	clr	%r2,%r3
	jle	.L2733
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L2730
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L2493
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L2730
.L2495:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2493
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L2698
	lr	%r2,%r0
.L2494:
	ltr	%r4,%r4
	jne	.L2488
	lr	%r2,%r11
.L2488:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2698:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2730
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2493
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L2730
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L2493
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L2495
.L2730:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L2625
	lr	%r2,%r0
.L2625:
	clr	%r0,%r3
	jl	.L2626
	lr	%r11,%r12
.L2627:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L2628
	j	.L2494
.L2493:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L2631
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L2498
	lr	%r2,%r0
.L2498:
	clr	%r0,%r1
	jl	.L2499
	lr	%r11,%r5
.L2500:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L2628:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L2502
	lr	%r1,%r2
.L2502:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L2504
	lhi	%r0,0
.L2504:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2508
	lhi	%r5,0
.L2508:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2512
	lhi	%r5,0
.L2512:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2514
	lr	%r1,%r2
.L2514:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2516
	lhi	%r5,0
.L2516:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2518
	lr	%r1,%r2
.L2518:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2520
	lhi	%r5,0
.L2520:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2522
	lr	%r1,%r2
.L2522:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2524
	lhi	%r5,0
.L2524:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2734
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2735
.L2528:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2736
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2737
.L2532:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2738
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2739
.L2536:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2740
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2741
.L2540:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2742
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2743
.L2544:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2744
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2548
.L2756:
	lhi	%r5,0
.L2548:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2552
	lhi	%r5,0
.L2552:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2556
	lhi	%r5,0
.L2556:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2560
	lhi	%r5,0
.L2560:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2562
	lr	%r1,%r2
.L2562:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2564
	lhi	%r5,0
.L2564:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2566
	lr	%r1,%r2
.L2566:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2568
	lhi	%r5,0
.L2568:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2570
	lr	%r1,%r2
.L2570:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2572
	lhi	%r5,0
.L2572:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2745
.L2574:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2746
.L2576:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2747
.L2578:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2748
.L2580:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2749
.L2582:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2750
.L2584:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2751
.L2586:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2752
.L2588:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2753
.L2590:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L2754
.L2592:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L2755
.L2594:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2596
	lhi	%r5,0
.L2596:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2600
	lhi	%r5,0
.L2600:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2604
	lhi	%r5,0
.L2604:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L2494
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
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2608
	lhi	%r5,0
.L2608:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2610
	lr	%r1,%r2
.L2610:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2612
	lhi	%r5,0
.L2612:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2614
	lr	%r1,%r2
.L2614:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2616
	lhi	%r5,0
.L2616:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L2494
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2618
	lr	%r1,%r2
.L2618:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L2620
	lhi	%r5,0
.L2620:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L2494
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L2622
	lr	%r2,%r1
.L2622:
	or	%r11,%r3
	j	.L2494
.L2499:
	lhi	%r11,0
	j	.L2500
.L2735:
	lhi	%r5,0
	j	.L2528
.L2734:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2528
	j	.L2735
.L2737:
	lhi	%r5,0
	j	.L2532
.L2736:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2532
	j	.L2737
.L2626:
	lhi	%r11,0
	j	.L2627
.L2739:
	lhi	%r5,0
	j	.L2536
.L2738:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2536
	j	.L2739
.L2741:
	lhi	%r5,0
	j	.L2540
.L2740:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2540
	j	.L2741
.L2743:
	lhi	%r5,0
	j	.L2544
.L2742:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2544
	j	.L2743
.L2744:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L2548
	j	.L2756
.L2746:
	lhi	%r5,0
	j	.L2576
.L2745:
	lr	%r1,%r2
	j	.L2574
.L2748:
	lhi	%r5,0
	j	.L2580
.L2747:
	lr	%r1,%r2
	j	.L2578
.L2750:
	lhi	%r5,0
	j	.L2584
.L2749:
	lr	%r1,%r2
	j	.L2582
.L2752:
	lhi	%r5,0
	j	.L2588
.L2751:
	lr	%r1,%r2
	j	.L2586
.L2754:
	lhi	%r5,0
	j	.L2592
.L2753:
	lr	%r1,%r2
	j	.L2590
.L2755:
	lr	%r1,%r2
	j	.L2594
.L2733:
	sr	%r2,%r3
	cr	%r0,%r3
	je	.L2491
	lr	%r2,%r0
.L2491:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L2494
.L2631:
	lhi	%r11,0
	j	.L2494
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
	jl	.L2761
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2761:
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
	jl	.L2766
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2766:
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
	jl	.L2876
	je	.L2780
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
.L2778:
	lhi	%r4,1
	nr	%r4,%r1
	lcr	%r0,%r4
	nr	%r0,%r3
	ar	%r2,%r0
	lr	%r4,%r1
	lr	%r0,%r3
	sra	%r4,1
	sll	%r0,1
	je	.L2872
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
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,3
	sra	%r4,3
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,4
	sra	%r4,4
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,5
	sra	%r4,5
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,6
	sra	%r4,6
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,7
	sra	%r4,7
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,8
	sra	%r4,8
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,9
	sra	%r4,9
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,10
	sra	%r4,10
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,11
	sra	%r4,11
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,12
	sra	%r4,12
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,13
	sra	%r4,13
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,14
	sra	%r4,14
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,15
	sra	%r4,15
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,16
	sra	%r4,16
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,17
	sra	%r4,17
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,18
	sra	%r4,18
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,19
	sra	%r4,19
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,20
	sra	%r4,20
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,21
	sra	%r4,21
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,22
	sra	%r4,22
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,23
	sra	%r4,23
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,24
	sra	%r4,24
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,25
	sra	%r4,25
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,26
	sra	%r4,26
	je	.L2779
	nr	%r4,%r12
	lcr	%r4,%r4
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r0,%r3
	lr	%r4,%r1
	sll	%r0,27
	sra	%r4,27
	je	.L2779
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
.L2779:
	ltr	%r5,%r5
	je	.L2772
	lcr	%r2,%r2
.L2772:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2876:
	lhi	%r2,1
	nr	%r2,%r1
	lcr	%r1,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	lr	%r5,%r4
	lr	%r3,%r1
	sll	%r5,1
	sra	%r3,1
	je	.L2870
	lhi	%r0,1
	nr	%r3,%r0
	lcr	%r3,%r3
	nr	%r3,%r5
	ar	%r2,%r3
	lhi	%r5,1
	lr	%r3,%r4
	sra	%r1,2
	sll	%r3,2
	jne	.L2778
.L2870:
	lcr	%r2,%r2
	br	%r14
.L2780:
	lhi	%r2,0
	br	%r14
.L2872:
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
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L3135
	ltr	%r4,%r2
	jl	.L3133
	lhi	%r1,1
	lhi	%r5,0
.L2879:
	ltr	%r3,%r3
	jhe	.L2880
	lcr	%r3,%r3
	lr	%r5,%r1
.L2880:
	clr	%r4,%r3
	jle	.L2881
	lr	%r0,%r3
	sll	%r0,1
	clr	%r4,%r0
	jle	.L2882
	lr	%r1,%r3
	sll	%r1,2
	clr	%r4,%r1
	jle	.L3015
	lr	%r1,%r3
	sll	%r1,3
	clr	%r4,%r1
	jle	.L3016
	lr	%r1,%r3
	sll	%r1,4
	clr	%r4,%r1
	jle	.L3017
	lr	%r1,%r3
	sll	%r1,5
	clr	%r4,%r1
	jle	.L3018
	lr	%r1,%r3
	sll	%r1,6
	clr	%r4,%r1
	jle	.L3019
	lr	%r1,%r3
	sll	%r1,7
	clr	%r4,%r1
	jle	.L3020
	lr	%r1,%r3
	sll	%r1,8
	clr	%r4,%r1
	jle	.L3021
	lr	%r1,%r3
	sll	%r1,9
	clr	%r4,%r1
	jle	.L3022
	lr	%r1,%r3
	sll	%r1,10
	clr	%r4,%r1
	jle	.L3023
	lr	%r1,%r3
	sll	%r1,11
	clr	%r4,%r1
	jle	.L3024
	lr	%r1,%r3
	sll	%r1,12
	clr	%r4,%r1
	jle	.L3025
	lr	%r1,%r3
	sll	%r1,13
	clr	%r4,%r1
	jle	.L3026
	lr	%r1,%r3
	sll	%r1,14
	clr	%r4,%r1
	jle	.L3027
	lr	%r1,%r3
	sll	%r1,15
	clr	%r4,%r1
	jle	.L3028
	lr	%r1,%r3
	sll	%r1,16
	clr	%r4,%r1
	jle	.L3029
	lr	%r1,%r3
	sll	%r1,17
	clr	%r4,%r1
	jle	.L3030
	lr	%r1,%r3
	sll	%r1,18
	clr	%r4,%r1
	jle	.L3031
	lr	%r1,%r3
	sll	%r1,19
	clr	%r4,%r1
	jle	.L3032
	lr	%r1,%r3
	sll	%r1,20
	clr	%r4,%r1
	jle	.L3033
	lr	%r1,%r3
	sll	%r1,21
	clr	%r4,%r1
	jle	.L3034
	lr	%r1,%r3
	sll	%r1,22
	clr	%r4,%r1
	jle	.L3035
	lr	%r1,%r3
	sll	%r1,23
	clr	%r4,%r1
	jle	.L3036
	lr	%r1,%r3
	sll	%r1,24
	clr	%r4,%r1
	jle	.L3037
	lr	%r1,%r3
	sll	%r1,25
	clr	%r4,%r1
	jle	.L3038
	lr	%r1,%r3
	sll	%r1,26
	clr	%r4,%r1
	jle	.L3039
	lr	%r1,%r3
	sll	%r1,27
	clr	%r4,%r1
	jle	.L3040
	lr	%r1,%r3
	sll	%r1,28
	clr	%r4,%r1
	jle	.L3041
	lr	%r1,%r3
	sll	%r1,29
	clr	%r4,%r1
	jle	.L3042
	lr	%r1,%r3
	sll	%r1,30
	clr	%r4,%r1
	jle	.L3043
	sll	%r3,31
	lhi	%r2,0
	clr	%r4,%r3
	jle	.L3134
.L2884:
	ltr	%r5,%r5
	je	.L2878
	lcr	%r2,%r2
.L2878:
	lm	%r10,%r13,40(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3133:
	.cfi_restore_state
	lcr	%r4,%r4
	lhi	%r1,0
	lhi	%r5,1
	j	.L2879
.L3031:
	l	%r0,.L3136-.L3135(%r13)
.L2883:
	lr	%r2,%r4
	sr	%r2,%r1
	clr	%r4,%r1
	jhe	.L3002
	lr	%r2,%r4
.L3002:
	lr	%r10,%r1
	lr	%r3,%r2
	srl	%r10,1
	sr	%r3,%r10
	clr	%r2,%r10
	jhe	.L3004
	lr	%r3,%r2
.L3004:
	lr	%r11,%r1
	lr	%r12,%r3
	srl	%r11,2
	sr	%r12,%r11
	clr	%r3,%r11
	jhe	.L3006
	lr	%r12,%r3
.L3006:
	clr	%r2,%r10
	jl	.L3007
	lr	%r2,%r0
	srl	%r2,1
.L3008:
	clr	%r4,%r1
	jl	.L3009
	lr	%r4,%r0
.L3010:
	or	%r2,%r4
	clr	%r3,%r11
	jl	.L3011
	lr	%r10,%r0
	srl	%r10,2
.L3012:
	or	%r2,%r10
	lr	%r4,%r0
	lr	%r11,%r1
	srl	%r4,3
	srl	%r11,3
	ltr	%r4,%r4
	je	.L2884
	lr	%r3,%r12
	sr	%r3,%r11
	clr	%r12,%r11
	jhe	.L2889
	lr	%r3,%r12
.L2889:
	clr	%r12,%r11
	jhe	.L2891
	lhi	%r4,0
.L2891:
	or	%r2,%r4
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,4
	srl	%r10,4
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2893
	lr	%r4,%r3
.L2893:
	clr	%r3,%r10
	jhe	.L2895
	lhi	%r12,0
.L2895:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,5
	srl	%r11,5
	ltr	%r10,%r10
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2897
	lr	%r3,%r4
.L2897:
	clr	%r4,%r11
	jhe	.L2899
	lhi	%r10,0
.L2899:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,6
	srl	%r11,6
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2901
	lr	%r4,%r3
.L2901:
	clr	%r3,%r11
	jhe	.L2903
	lhi	%r12,0
.L2903:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,7
	srl	%r10,7
	ltr	%r11,%r11
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2905
	lr	%r3,%r4
.L2905:
	clr	%r4,%r10
	jhe	.L2907
	lhi	%r11,0
.L2907:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,8
	srl	%r10,8
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2909
	lr	%r4,%r3
.L2909:
	clr	%r3,%r10
	jhe	.L2911
	lhi	%r12,0
.L2911:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,9
	srl	%r11,9
	ltr	%r10,%r10
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2913
	lr	%r3,%r4
.L2913:
	clr	%r4,%r11
	jhe	.L2915
	lhi	%r10,0
.L2915:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,10
	srl	%r11,10
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2917
	lr	%r4,%r3
.L2917:
	clr	%r3,%r11
	jhe	.L2919
	lhi	%r12,0
.L2919:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,11
	srl	%r10,11
	ltr	%r11,%r11
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2921
	lr	%r3,%r4
.L2921:
	clr	%r4,%r10
	jhe	.L2923
	lhi	%r11,0
.L2923:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,12
	srl	%r10,12
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2925
	lr	%r4,%r3
.L2925:
	clr	%r3,%r10
	jhe	.L2927
	lhi	%r12,0
.L2927:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,13
	srl	%r11,13
	ltr	%r10,%r10
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2929
	lr	%r3,%r4
.L2929:
	clr	%r4,%r11
	jhe	.L2931
	lhi	%r10,0
.L2931:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,14
	srl	%r11,14
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2933
	lr	%r4,%r3
.L2933:
	clr	%r3,%r11
	jhe	.L2935
	lhi	%r12,0
.L2935:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,15
	srl	%r10,15
	ltr	%r11,%r11
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2937
	lr	%r3,%r4
.L2937:
	clr	%r4,%r10
	jhe	.L2939
	lhi	%r11,0
.L2939:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,16
	srl	%r10,16
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2941
	lr	%r4,%r3
.L2941:
	clr	%r3,%r10
	jhe	.L2943
	lhi	%r12,0
.L2943:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,17
	srl	%r11,17
	ltr	%r10,%r10
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2945
	lr	%r3,%r4
.L2945:
	clr	%r4,%r11
	jhe	.L2947
	lhi	%r10,0
.L2947:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,18
	srl	%r11,18
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2949
	lr	%r4,%r3
.L2949:
	clr	%r3,%r11
	jhe	.L2951
	lhi	%r12,0
.L2951:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,19
	srl	%r10,19
	ltr	%r11,%r11
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2953
	lr	%r3,%r4
.L2953:
	clr	%r4,%r10
	jhe	.L2955
	lhi	%r11,0
.L2955:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,20
	srl	%r10,20
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2957
	lr	%r4,%r3
.L2957:
	clr	%r3,%r10
	jhe	.L2959
	lhi	%r12,0
.L2959:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,21
	srl	%r11,21
	ltr	%r10,%r10
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2961
	lr	%r3,%r4
.L2961:
	clr	%r4,%r11
	jhe	.L2963
	lhi	%r10,0
.L2963:
	or	%r2,%r10
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,22
	srl	%r11,22
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r11
	clr	%r3,%r11
	jhe	.L2965
	lr	%r4,%r3
.L2965:
	clr	%r3,%r11
	jhe	.L2967
	lhi	%r12,0
.L2967:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r10,%r1
	srl	%r11,23
	srl	%r10,23
	ltr	%r11,%r11
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r10
	clr	%r4,%r10
	jhe	.L2969
	lr	%r3,%r4
.L2969:
	clr	%r4,%r10
	jhe	.L2971
	lhi	%r11,0
.L2971:
	or	%r2,%r11
	lr	%r12,%r0
	lr	%r10,%r1
	srl	%r12,24
	srl	%r10,24
	ltr	%r12,%r12
	je	.L2884
	lr	%r4,%r3
	sr	%r4,%r10
	clr	%r3,%r10
	jhe	.L2973
	lr	%r4,%r3
.L2973:
	clr	%r3,%r10
	jhe	.L2975
	lhi	%r12,0
.L2975:
	or	%r2,%r12
	lr	%r10,%r0
	lr	%r11,%r1
	srl	%r10,25
	srl	%r11,25
	ltr	%r10,%r10
	je	.L2884
	lr	%r3,%r4
	sr	%r3,%r11
	clr	%r4,%r11
	jhe	.L2977
	lr	%r3,%r4
.L2977:
	clr	%r4,%r11
	jhe	.L2979
	lhi	%r10,0
.L2979:
	or	%r2,%r10
	lr	%r4,%r0
	lr	%r11,%r1
	srl	%r4,26
	srl	%r11,26
	ltr	%r4,%r4
	je	.L2884
	lr	%r12,%r3
	sr	%r12,%r11
	clr	%r3,%r11
	jhe	.L2981
	lr	%r12,%r3
.L2981:
	clr	%r3,%r11
	jhe	.L2983
	lhi	%r4,0
.L2983:
	or	%r2,%r4
	lr	%r3,%r0
	lr	%r10,%r1
	srl	%r3,27
	srl	%r10,27
	ltr	%r3,%r3
	je	.L2884
	lr	%r4,%r12
	sr	%r4,%r10
	clr	%r12,%r10
	jhe	.L2985
	lr	%r4,%r12
.L2985:
	clr	%r12,%r10
	jhe	.L2987
	lhi	%r3,0
.L2987:
	or	%r2,%r3
	lr	%r12,%r0
	lr	%r11,%r1
	srl	%r12,28
	srl	%r11,28
	ltr	%r12,%r12
	je	.L2884
	lr	%r10,%r4
	sr	%r10,%r11
	clr	%r4,%r11
	jhe	.L2989
	lr	%r10,%r4
.L2989:
	clr	%r4,%r11
	jhe	.L2991
	lhi	%r12,0
.L2991:
	or	%r2,%r12
	lr	%r11,%r0
	lr	%r3,%r1
	srl	%r11,29
	srl	%r3,29
	ltr	%r11,%r11
	je	.L2884
	lr	%r4,%r10
	sr	%r4,%r3
	clr	%r10,%r3
	jhe	.L2993
	lr	%r4,%r10
.L2993:
	clr	%r10,%r3
	jhe	.L2995
	lhi	%r11,0
.L2995:
	or	%r2,%r11
	lr	%r3,%r0
	lr	%r10,%r1
	srl	%r3,30
	srl	%r10,30
	ltr	%r3,%r3
	je	.L2884
	lr	%r12,%r4
	sr	%r12,%r10
	clr	%r4,%r10
	jhe	.L2997
	lr	%r12,%r4
.L2997:
	clr	%r4,%r10
	jhe	.L2999
	lhi	%r3,0
.L2999:
	or	%r2,%r3
	srl	%r1,31
	c	%r0,.L3137-.L3135(%r13)
	je	.L2884
	slr	%r12,%r1
	lhi	%r1,0
	alcr	%r1,%r1
	or	%r2,%r1
	j	.L2884
.L3011:
	lhi	%r10,0
	j	.L3012
.L3009:
	lhi	%r4,0
	j	.L3010
.L3007:
	lhi	%r2,0
	j	.L3008
.L2881:
	xr	%r4,%r3
	lpr	%r2,%r4
	ahi	%r2,-1
	srl	%r2,31
	j	.L2884
.L3016:
	lhi	%r0,8
	j	.L2883
.L3015:
	lhi	%r0,4
	j	.L2883
.L3017:
	lhi	%r0,16
	j	.L2883
.L3018:
	lhi	%r0,32
	j	.L2883
.L3020:
	lhi	%r0,128
	j	.L2883
.L3019:
	lhi	%r0,64
	j	.L2883
.L3021:
	lhi	%r0,256
	j	.L2883
.L3022:
	lhi	%r0,512
	j	.L2883
.L3023:
	lhi	%r0,1024
	j	.L2883
.L3024:
	lhi	%r0,2048
	j	.L2883
.L3026:
	lhi	%r0,8192
	j	.L2883
.L3025:
	lhi	%r0,4096
	j	.L2883
.L3028:
	l	%r0,.L3138-.L3135(%r13)
	j	.L2883
.L3027:
	lhi	%r0,16384
	j	.L2883
.L3030:
	l	%r0,.L3139-.L3135(%r13)
	j	.L2883
.L3029:
	l	%r0,.L3140-.L3135(%r13)
	j	.L2883
.L3032:
	l	%r0,.L3141-.L3135(%r13)
	j	.L2883
.L3035:
	l	%r0,.L3142-.L3135(%r13)
	j	.L2883
.L3033:
	l	%r0,.L3143-.L3135(%r13)
	j	.L2883
.L3034:
	l	%r0,.L3144-.L3135(%r13)
	j	.L2883
.L3037:
	l	%r0,.L3145-.L3135(%r13)
	j	.L2883
.L3036:
	l	%r0,.L3146-.L3135(%r13)
	j	.L2883
.L3040:
	l	%r0,.L3147-.L3135(%r13)
	j	.L2883
.L3038:
	l	%r0,.L3148-.L3135(%r13)
	j	.L2883
.L3039:
	l	%r0,.L3149-.L3135(%r13)
	j	.L2883
.L3134:
	l	%r1,.L3150-.L3135(%r13)
	lr	%r0,%r1
	j	.L2883
.L3042:
	l	%r0,.L3151-.L3135(%r13)
	j	.L2883
.L3043:
	l	%r0,.L3137-.L3135(%r13)
	j	.L2883
.L3041:
	l	%r0,.L3152-.L3135(%r13)
	j	.L2883
.L2882:
	lr	%r10,%r4
	sr	%r10,%r0
	clr	%r4,%r0
	jhe	.L2886
	lr	%r10,%r4
.L2886:
	slr	%r10,%r3
	lhi	%r2,0
	lhi	%r3,0
	alcr	%r2,%r2
	slr	%r4,%r0
	alcr	%r3,%r3
	sll	%r3,1
	or	%r2,%r3
	j	.L2884
	.section	.rodata
	.align	8
.L3135:
.L3152:
	.long	268435456
.L3151:
	.long	536870912
.L3150:
	.long	-2147483648
.L3149:
	.long	67108864
.L3148:
	.long	33554432
.L3147:
	.long	134217728
.L3146:
	.long	8388608
.L3145:
	.long	16777216
.L3144:
	.long	2097152
.L3143:
	.long	1048576
.L3142:
	.long	4194304
.L3141:
	.long	524288
.L3140:
	.long	65536
.L3139:
	.long	131072
.L3138:
	.long	32768
.L3137:
	.long	1073741824
.L3136:
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L3358
	ltr	%r1,%r2
	jl	.L3154
	lpr	%r2,%r3
	lhi	%r5,0
	clr	%r1,%r2
	jle	.L3356
.L3155:
	lr	%r4,%r2
	sll	%r4,1
	clr	%r4,%r1
	jhe	.L3162
	lr	%r3,%r2
	sll	%r3,2
	clr	%r3,%r1
	jhe	.L3237
	lr	%r3,%r2
	sll	%r3,3
	clr	%r3,%r1
	jhe	.L3238
	lr	%r3,%r2
	sll	%r3,4
	clr	%r3,%r1
	jhe	.L3239
	lr	%r3,%r2
	sll	%r3,5
	clr	%r3,%r1
	jhe	.L3240
	lr	%r3,%r2
	sll	%r3,6
	clr	%r3,%r1
	jhe	.L3241
	lr	%r3,%r2
	sll	%r3,7
	clr	%r3,%r1
	jhe	.L3242
	lr	%r3,%r2
	sll	%r3,8
	clr	%r3,%r1
	jhe	.L3243
	lr	%r3,%r2
	sll	%r3,9
	clr	%r3,%r1
	jhe	.L3244
	lr	%r3,%r2
	sll	%r3,10
	clr	%r3,%r1
	jhe	.L3245
	lr	%r3,%r2
	sll	%r3,11
	clr	%r3,%r1
	jhe	.L3246
	lr	%r3,%r2
	sll	%r3,12
	clr	%r3,%r1
	jhe	.L3247
	lr	%r3,%r2
	sll	%r3,13
	clr	%r3,%r1
	jhe	.L3248
	lr	%r3,%r2
	sll	%r3,14
	clr	%r3,%r1
	jhe	.L3249
	lr	%r3,%r2
	sll	%r3,15
	clr	%r3,%r1
	jhe	.L3250
	lr	%r3,%r2
	sll	%r3,16
	clr	%r3,%r1
	jhe	.L3251
	lr	%r3,%r2
	sll	%r3,17
	clr	%r3,%r1
	jhe	.L3252
	lr	%r3,%r2
	sll	%r3,18
	clr	%r3,%r1
	jhe	.L3253
	lr	%r3,%r2
	sll	%r3,19
	clr	%r3,%r1
	jhe	.L3254
	lr	%r3,%r2
	sll	%r3,20
	clr	%r1,%r3
	jle	.L3255
	lr	%r3,%r2
	sll	%r3,21
	clr	%r1,%r3
	jle	.L3256
	lr	%r3,%r2
	sll	%r3,22
	clr	%r1,%r3
	jle	.L3257
	lr	%r3,%r2
	sll	%r3,23
	clr	%r1,%r3
	jle	.L3258
	lr	%r3,%r2
	sll	%r3,24
	clr	%r1,%r3
	jle	.L3259
	lr	%r3,%r2
	sll	%r3,25
	clr	%r1,%r3
	jle	.L3260
	lr	%r3,%r2
	sll	%r3,26
	clr	%r1,%r3
	jle	.L3261
	lr	%r3,%r2
	sll	%r3,27
	clr	%r1,%r3
	jle	.L3262
	lr	%r3,%r2
	sll	%r3,28
	clr	%r1,%r3
	jle	.L3263
	lr	%r3,%r2
	sll	%r3,29
	clr	%r1,%r3
	jle	.L3264
	lr	%r3,%r2
	sll	%r3,30
	clr	%r1,%r3
	jle	.L3265
	sll	%r2,31
	lr	%r0,%r2
	lr	%r2,%r1
	clr	%r1,%r0
	jle	.L3357
.L3164:
	ltr	%r5,%r5
	je	.L3153
.L3161:
	lcr	%r2,%r2
.L3153:
	lm	%r12,%r13,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L3154:
	.cfi_restore_state
	lpr	%r2,%r3
	lcr	%r1,%r1
	lhi	%r5,1
	clr	%r2,%r1
	jl	.L3155
	lr	%r0,%r1
	sr	%r0,%r2
	cr	%r2,%r1
	jne	.L3159
	lr	%r2,%r0
	j	.L3161
.L3253:
	l	%r4,.L3359-.L3358(%r13)
.L3163:
	lr	%r2,%r1
	sr	%r2,%r3
	clr	%r1,%r3
	jl	.L3229
	lr	%r1,%r2
.L3229:
	lr	%r12,%r3
	lr	%r0,%r1
	srl	%r12,1
	sr	%r0,%r12
	clr	%r1,%r12
	jl	.L3231
	lr	%r1,%r0
.L3231:
	lr	%r2,%r3
	lr	%r12,%r1
	srl	%r2,2
	sr	%r12,%r2
	clr	%r1,%r2
	jl	.L3233
	lr	%r1,%r12
.L3233:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,3
	srl	%r0,3
	ltr	%r12,%r12
	je	.L3164
	lr	%r2,%r1
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3171
	lr	%r1,%r2
.L3171:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,4
	srl	%r0,4
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3173
	lr	%r1,%r2
.L3173:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,5
	srl	%r0,5
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3175
	lr	%r1,%r2
.L3175:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,6
	srl	%r0,6
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3177
	lr	%r1,%r2
.L3177:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,7
	srl	%r0,7
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3179
	lr	%r1,%r2
.L3179:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,8
	srl	%r0,8
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3181
	lr	%r1,%r2
.L3181:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,9
	srl	%r0,9
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3183
	lr	%r1,%r2
.L3183:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,10
	srl	%r0,10
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3185
	lr	%r1,%r2
.L3185:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,11
	srl	%r0,11
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3187
	lr	%r1,%r2
.L3187:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,12
	srl	%r0,12
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3189
	lr	%r1,%r2
.L3189:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,13
	srl	%r0,13
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3191
	lr	%r1,%r2
.L3191:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,14
	srl	%r0,14
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3193
	lr	%r1,%r2
.L3193:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,15
	srl	%r0,15
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3195
	lr	%r1,%r2
.L3195:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,16
	srl	%r0,16
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3197
	lr	%r1,%r2
.L3197:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,17
	srl	%r0,17
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3199
	lr	%r1,%r2
.L3199:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,18
	srl	%r0,18
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3201
	lr	%r1,%r2
.L3201:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,19
	srl	%r0,19
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3203
	lr	%r1,%r2
.L3203:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,20
	srl	%r0,20
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3205
	lr	%r1,%r2
.L3205:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,21
	srl	%r0,21
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3207
	lr	%r1,%r2
.L3207:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,22
	srl	%r0,22
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3209
	lr	%r1,%r2
.L3209:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,23
	srl	%r0,23
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3211
	lr	%r1,%r2
.L3211:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,24
	srl	%r0,24
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3213
	lr	%r1,%r2
.L3213:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,25
	srl	%r0,25
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3215
	lr	%r1,%r2
.L3215:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,26
	srl	%r0,26
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3217
	lr	%r1,%r2
.L3217:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,27
	srl	%r0,27
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3219
	lr	%r1,%r2
.L3219:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,28
	srl	%r0,28
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3221
	lr	%r1,%r2
.L3221:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,29
	srl	%r0,29
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3223
	lr	%r1,%r2
.L3223:
	lr	%r0,%r3
	lr	%r12,%r4
	lr	%r2,%r1
	srl	%r12,30
	srl	%r0,30
	ltr	%r12,%r12
	je	.L3164
	sr	%r2,%r0
	clr	%r1,%r0
	jl	.L3225
	lr	%r1,%r2
.L3225:
	srl	%r3,31
	lr	%r2,%r1
	c	%r4,.L3360-.L3358(%r13)
	je	.L3164
	sr	%r2,%r3
	clr	%r1,%r3
	jhe	.L3164
.L3355:
	lr	%r2,%r1
	j	.L3164
.L3237:
	lhi	%r4,4
	j	.L3163
.L3238:
	lhi	%r4,8
	j	.L3163
.L3239:
	lhi	%r4,16
	j	.L3163
.L3240:
	lhi	%r4,32
	j	.L3163
.L3242:
	lhi	%r4,128
	j	.L3163
.L3241:
	lhi	%r4,64
	j	.L3163
.L3243:
	lhi	%r4,256
	j	.L3163
.L3244:
	lhi	%r4,512
	j	.L3163
.L3245:
	lhi	%r4,1024
	j	.L3163
.L3246:
	lhi	%r4,2048
	j	.L3163
.L3248:
	lhi	%r4,8192
	j	.L3163
.L3247:
	lhi	%r4,4096
	j	.L3163
.L3356:
	lr	%r3,%r1
	sr	%r3,%r2
	cr	%r1,%r2
	jne	.L3156
	lr	%r2,%r3
	j	.L3153
.L3250:
	l	%r4,.L3361-.L3358(%r13)
	j	.L3163
.L3249:
	lhi	%r4,16384
	j	.L3163
.L3252:
	l	%r4,.L3362-.L3358(%r13)
	j	.L3163
.L3251:
	l	%r4,.L3363-.L3358(%r13)
	j	.L3163
.L3254:
	l	%r4,.L3364-.L3358(%r13)
	j	.L3163
.L3257:
	l	%r4,.L3365-.L3358(%r13)
	j	.L3163
.L3255:
	l	%r4,.L3366-.L3358(%r13)
	j	.L3163
.L3256:
	l	%r4,.L3367-.L3358(%r13)
	j	.L3163
.L3259:
	l	%r4,.L3368-.L3358(%r13)
	j	.L3163
.L3258:
	l	%r4,.L3369-.L3358(%r13)
	j	.L3163
.L3261:
	l	%r4,.L3370-.L3358(%r13)
	j	.L3163
.L3262:
	l	%r4,.L3371-.L3358(%r13)
	j	.L3163
.L3260:
	l	%r4,.L3372-.L3358(%r13)
	j	.L3163
.L3357:
	l	%r3,.L3373-.L3358(%r13)
	lr	%r4,%r3
	j	.L3163
.L3263:
	l	%r4,.L3374-.L3358(%r13)
	j	.L3163
.L3264:
	l	%r4,.L3375-.L3358(%r13)
	j	.L3163
.L3265:
	l	%r4,.L3360-.L3358(%r13)
	j	.L3163
.L3156:
	lr	%r2,%r1
	j	.L3153
.L3159:
	lr	%r2,%r1
	j	.L3161
.L3162:
	lr	%r12,%r1
	sr	%r12,%r4
	clr	%r1,%r4
	jl	.L3166
	lr	%r1,%r12
.L3166:
	lr	%r3,%r1
	sr	%r3,%r2
	clr	%r1,%r2
	jl	.L3355
	lr	%r2,%r3
	j	.L3164
	.section	.rodata
	.align	8
.L3358:
.L3375:
	.long	536870912
.L3374:
	.long	268435456
.L3373:
	.long	-2147483648
.L3372:
	.long	33554432
.L3371:
	.long	134217728
.L3370:
	.long	67108864
.L3369:
	.long	8388608
.L3368:
	.long	16777216
.L3367:
	.long	2097152
.L3366:
	.long	1048576
.L3365:
	.long	4194304
.L3364:
	.long	524288
.L3363:
	.long	65536
.L3362:
	.long	131072
.L3361:
	.long	32768
.L3360:
	.long	1073741824
.L3359:
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
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L3536
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L3534
	tml	%r3,32768
	jne	.L3381
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3454
	tml	%r1,32768
	jne	.L3454
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3456
	tml	%r1,32768
	jne	.L3456
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3458
	tml	%r1,32768
	jne	.L3458
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3460
	tml	%r1,32768
	jne	.L3460
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3462
	tml	%r1,32768
	jne	.L3462
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3464
	tml	%r1,32768
	jne	.L3464
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3466
	tml	%r1,32768
	jne	.L3466
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3468
	tml	%r1,32768
	jne	.L3468
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3470
	tml	%r1,32768
	jne	.L3470
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3472
	tml	%r1,32768
	jne	.L3472
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3474
	tml	%r1,32768
	jne	.L3474
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3476
	tml	%r1,32768
	jne	.L3476
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3478
	tml	%r1,32768
	jne	.L3478
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L3537-.L3536(%r13)
	clr	%r2,%r1
	jle	.L3480
	tml	%r1,32768
	jne	.L3480
	sll	%r3,15
	n	%r3,.L3537-.L3536(%r13)
	clr	%r2,%r3
	jle	.L3481
	lhi	%r2,0
	ltr	%r3,%r3
	jne	.L3535
.L3384:
	ltr	%r4,%r4
	je	.L3443
	lr	%r2,%r5
.L3443:
	n	%r2,.L3537-.L3536(%r13)
	lm	%r10,%r13,40(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3454:
	.cfi_restore_state
	lhi	%r12,2
.L3383:
	lr	%r3,%r5
	sr	%r3,%r1
	n	%r3,.L3537-.L3536(%r13)
	clr	%r5,%r1
	jhe	.L3450
	lr	%r3,%r5
.L3450:
	n	%r3,.L3537-.L3536(%r13)
	clr	%r5,%r1
	jl	.L3451
	lr	%r2,%r12
.L3452:
	lr	%r11,%r1
	lr	%r5,%r3
	srl	%r11,1
	sr	%r5,%r11
	n	%r5,.L3537-.L3536(%r13)
	lr	%r0,%r12
	clr	%r3,%r11
	sll	%r0,16
	srl	%r0,17
	jhe	.L3386
	lr	%r5,%r3
.L3386:
	n	%r5,.L3537-.L3536(%r13)
	clr	%r3,%r11
	jl	.L3387
	lr	%r10,%r0
.L3388:
	l	%r0,.L3537-.L3536(%r13)
	or	%r2,%r10
	nr	%r0,%r12
	lr	%r11,%r1
	srl	%r0,2
	srl	%r11,2
	ltr	%r0,%r0
	je	.L3384
	lr	%r3,%r5
	sr	%r3,%r11
	n	%r3,.L3537-.L3536(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3390
	lr	%r3,%r5
.L3390:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r3
	ltr	%r11,%r11
	jne	.L3392
	lhi	%r0,0
.L3392:
	or	%r0,%r2
	lr	%r11,%r0
	l	%r0,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r0,%r12
	lr	%r2,%r11
	srl	%r0,3
	srl	%r10,3
	ltr	%r0,%r0
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3394
	lr	%r2,%r5
.L3394:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3396
	lhi	%r0,0
.L3396:
	or	%r11,%r0
	l	%r0,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r0,%r12
	lr	%r2,%r11
	srl	%r0,4
	srl	%r10,4
	ltr	%r0,%r0
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3398
	lr	%r2,%r5
.L3398:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3400
	lhi	%r0,0
.L3400:
	or	%r0,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r0
	srl	%r11,5
	srl	%r10,5
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3402
	lr	%r2,%r5
.L3402:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3404
	lhi	%r11,0
.L3404:
	or	%r0,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r0
	srl	%r11,6
	srl	%r10,6
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3406
	lr	%r2,%r5
.L3406:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3408
	lhi	%r11,0
.L3408:
	or	%r0,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r0
	srl	%r11,7
	srl	%r10,7
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r3,%r5
	slr	%r3,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3410
	lr	%r2,%r5
.L3410:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3412
	lhi	%r11,0
.L3412:
	l	%r3,.L3537-.L3536(%r13)
	or	%r11,%r0
	nr	%r3,%r12
	lr	%r10,%r1
	srl	%r3,8
	lr	%r2,%r11
	srl	%r10,8
	ltr	%r3,%r3
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3414
	lr	%r2,%r5
.L3414:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3416
	lhi	%r3,0
.L3416:
	or	%r3,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,9
	srl	%r10,9
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3418
	lr	%r2,%r5
.L3418:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3420
	lhi	%r11,0
.L3420:
	or	%r3,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,10
	srl	%r10,10
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3422
	lr	%r2,%r5
.L3422:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3424
	lhi	%r11,0
.L3424:
	or	%r3,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,11
	srl	%r10,11
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3426
	lr	%r2,%r5
.L3426:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3428
	lhi	%r11,0
.L3428:
	or	%r3,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,12
	srl	%r10,12
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3430
	lr	%r2,%r5
.L3430:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3432
	lhi	%r11,0
.L3432:
	or	%r3,%r11
	l	%r11,.L3537-.L3536(%r13)
	lr	%r10,%r1
	nr	%r11,%r12
	lr	%r2,%r3
	srl	%r11,13
	srl	%r10,13
	ltr	%r11,%r11
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r0,%r5
	slr	%r0,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3434
	lr	%r2,%r5
.L3434:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3436
	lhi	%r11,0
.L3436:
	l	%r0,.L3537-.L3536(%r13)
	or	%r3,%r11
	nr	%r0,%r12
	lr	%r10,%r1
	srl	%r0,14
	lr	%r2,%r3
	srl	%r10,14
	ltr	%r0,%r0
	je	.L3384
	lr	%r2,%r5
	sr	%r2,%r10
	n	%r2,.L3537-.L3536(%r13)
	lr	%r11,%r5
	slr	%r11,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3438
	lr	%r2,%r5
.L3438:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r2
	ltr	%r10,%r10
	jne	.L3440
	lhi	%r0,0
.L3440:
	or	%r3,%r0
	n	%r12,.L3537-.L3536(%r13)
	srl	%r1,15
	lr	%r2,%r3
	chi	%r12,16384
	je	.L3384
	l	%r11,.L3537-.L3536(%r13)
	lr	%r12,%r5
	sr	%r12,%r1
	nr	%r11,%r12
	lr	%r10,%r5
	lhi	%r2,0
	slr	%r10,%r1
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L3441
	lr	%r1,%r11
.L3442:
	l	%r5,.L3537-.L3536(%r13)
	or	%r2,%r3
	nr	%r5,%r1
	j	.L3384
.L3387:
	lhi	%r10,0
	j	.L3388
.L3451:
	lhi	%r2,0
	j	.L3452
.L3441:
	lr	%r1,%r5
	j	.L3442
.L3456:
	lhi	%r12,4
	j	.L3383
.L3458:
	lhi	%r12,8
	j	.L3383
.L3460:
	lhi	%r12,16
	j	.L3383
.L3470:
	lhi	%r12,512
	j	.L3383
.L3462:
	lhi	%r12,32
	j	.L3383
.L3464:
	lhi	%r12,64
	j	.L3383
.L3466:
	lhi	%r12,128
	j	.L3383
.L3468:
	lhi	%r12,256
	j	.L3383
.L3534:
	lr	%r2,%r3
	lr	%r1,%r5
	xr	%r2,%r5
	sr	%r1,%r3
	ahi	%r2,-1
	xr	%r3,%r5
	n	%r1,.L3537-.L3536(%r13)
	ahi	%r3,-1
	srl	%r2,31
	ltr	%r3,%r3
	jl	.L3379
	lr	%r1,%r5
.L3379:
	l	%r5,.L3537-.L3536(%r13)
	nr	%r5,%r1
	j	.L3384
.L3472:
	lhi	%r12,1024
	j	.L3383
.L3474:
	lhi	%r12,2048
	j	.L3383
.L3476:
	lhi	%r12,4096
	j	.L3383
.L3478:
	lhi	%r12,8192
	j	.L3383
.L3480:
	lhi	%r12,16384
	j	.L3383
.L3535:
	l	%r1,.L3538-.L3536(%r13)
	lhi	%r12,-32768
	j	.L3383
.L3481:
	l	%r1,.L3538-.L3536(%r13)
	lhi	%r12,-32768
	j	.L3383
.L3381:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L3537-.L3536(%r13)
	j	.L3384
	.section	.rodata
	.align	8
.L3536:
.L3538:
	.long	32768
.L3537:
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
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r2
	clr	%r2,%r3
	jle	.L3784
	lhi	%r12,1
	ltr	%r3,%r3
	jl	.L3781
	lr	%r1,%r3
	lhi	%r5,2
	sll	%r1,1
	clr	%r2,%r1
	jle	.L3544
	lhi	%r10,31
	lhi	%r12,2
	lr	%r3,%r1
	lhi	%r2,11
	ltr	%r1,%r1
	jl	.L3781
.L3546:
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3544
	lr	%r11,%r10
	ahi	%r11,-1
	brct	%r2,.L3749
	lr	%r2,%r0
.L3545:
	ltr	%r4,%r4
	jne	.L3539
	lr	%r2,%r11
.L3539:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3749:
	.cfi_restore_state
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L3781
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3544
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jl	.L3781
	sll	%r1,1
	sll	%r5,1
	clr	%r0,%r1
	jle	.L3544
	ahi	%r10,-3
	lr	%r12,%r5
	lr	%r3,%r1
	ltr	%r1,%r1
	jhe	.L3546
.L3781:
	lr	%r2,%r0
	sr	%r2,%r3
	clr	%r0,%r3
	jhe	.L3676
	lr	%r2,%r0
.L3676:
	clr	%r0,%r3
	jl	.L3677
	lr	%r11,%r12
.L3678:
	lr	%r0,%r12
	lr	%r10,%r3
	srl	%r0,1
	srl	%r10,1
	ltr	%r0,%r0
	jne	.L3679
	j	.L3545
.L3544:
	lr	%r2,%r0
	ltr	%r5,%r5
	je	.L3682
	sr	%r2,%r1
	clr	%r0,%r1
	jhe	.L3549
	lr	%r2,%r0
.L3549:
	clr	%r0,%r1
	jl	.L3550
	lr	%r11,%r5
.L3551:
	la	%r0,0(%r12)
	la	%r10,0(%r3)
	lr	%r12,%r5
	lr	%r3,%r1
.L3679:
	lr	%r1,%r2
	sr	%r1,%r10
	lr	%r5,%r2
	slr	%r5,%r10
	lhi	%r10,0
	alcr	%r10,%r10
	ltr	%r10,%r10
	jne	.L3553
	lr	%r1,%r2
.L3553:
	lr	%r2,%r1
	ltr	%r10,%r10
	jne	.L3555
	lhi	%r0,0
.L3555:
	or	%r11,%r0
	lr	%r5,%r12
	lr	%r0,%r3
	srl	%r5,2
	srl	%r0,2
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3557
	lr	%r1,%r2
.L3557:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3559
	lhi	%r5,0
.L3559:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,3
	srl	%r5,3
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3561
	lr	%r1,%r2
.L3561:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3563
	lhi	%r5,0
.L3563:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,4
	srl	%r5,4
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3565
	lr	%r1,%r2
.L3565:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3567
	lhi	%r5,0
.L3567:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,5
	srl	%r5,5
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3569
	lr	%r1,%r2
.L3569:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3571
	lhi	%r5,0
.L3571:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,6
	srl	%r5,6
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3573
	lr	%r1,%r2
.L3573:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3575
	lhi	%r5,0
.L3575:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,7
	srl	%r5,7
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3785
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3786
.L3579:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,8
	srl	%r5,8
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3787
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3788
.L3583:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,9
	srl	%r5,9
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3789
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3790
.L3587:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,10
	srl	%r5,10
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3791
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3792
.L3591:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,11
	srl	%r5,11
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3793
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3794
.L3595:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,12
	srl	%r5,12
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3795
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3599
.L3807:
	lhi	%r5,0
.L3599:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,13
	srl	%r5,13
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3601
	lr	%r1,%r2
.L3601:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3603
	lhi	%r5,0
.L3603:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,14
	srl	%r5,14
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3605
	lr	%r1,%r2
.L3605:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3607
	lhi	%r5,0
.L3607:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,15
	srl	%r5,15
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3609
	lr	%r1,%r2
.L3609:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3611
	lhi	%r5,0
.L3611:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,16
	srl	%r5,16
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3613
	lr	%r1,%r2
.L3613:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3615
	lhi	%r5,0
.L3615:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,17
	srl	%r5,17
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3617
	lr	%r1,%r2
.L3617:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3619
	lhi	%r5,0
.L3619:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,18
	srl	%r5,18
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3621
	lr	%r1,%r2
.L3621:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3623
	lhi	%r5,0
.L3623:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,19
	srl	%r5,19
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3796
.L3625:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3797
.L3627:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,20
	srl	%r5,20
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3798
.L3629:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3799
.L3631:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,21
	srl	%r5,21
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3800
.L3633:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3801
.L3635:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,22
	srl	%r5,22
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3802
.L3637:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3803
.L3639:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,23
	srl	%r5,23
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3804
.L3641:
	lr	%r2,%r1
	ltr	%r0,%r0
	je	.L3805
.L3643:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,24
	srl	%r5,24
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L3806
.L3645:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3647
	lhi	%r5,0
.L3647:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,25
	srl	%r5,25
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3649
	lr	%r1,%r2
.L3649:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3651
	lhi	%r5,0
.L3651:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,26
	srl	%r5,26
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3653
	lr	%r1,%r2
.L3653:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3655
	lhi	%r5,0
.L3655:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,27
	srl	%r5,27
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3657
	lr	%r1,%r2
.L3657:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3659
	lhi	%r5,0
.L3659:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,28
	srl	%r5,28
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3661
	lr	%r1,%r2
.L3661:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3663
	lhi	%r5,0
.L3663:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,29
	srl	%r5,29
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3665
	lr	%r1,%r2
.L3665:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3667
	lhi	%r5,0
.L3667:
	or	%r11,%r5
	lr	%r0,%r3
	lr	%r5,%r12
	srl	%r0,30
	srl	%r5,30
	ltr	%r5,%r5
	je	.L3545
	lr	%r2,%r1
	sr	%r2,%r0
	lr	%r10,%r1
	slr	%r10,%r0
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3669
	lr	%r1,%r2
.L3669:
	lr	%r2,%r1
	ltr	%r0,%r0
	jne	.L3671
	lhi	%r5,0
.L3671:
	or	%r11,%r5
	srl	%r3,31
	ltr	%r12,%r12
	jhe	.L3545
	lr	%r2,%r1
	sr	%r2,%r3
	lr	%r12,%r1
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3673
	lr	%r2,%r1
.L3673:
	or	%r11,%r3
	j	.L3545
.L3550:
	lhi	%r11,0
	j	.L3551
.L3786:
	lhi	%r5,0
	j	.L3579
.L3785:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3579
	j	.L3786
.L3788:
	lhi	%r5,0
	j	.L3583
.L3787:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3583
	j	.L3788
.L3677:
	lhi	%r11,0
	j	.L3678
.L3790:
	lhi	%r5,0
	j	.L3587
.L3789:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3587
	j	.L3790
.L3792:
	lhi	%r5,0
	j	.L3591
.L3791:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3591
	j	.L3792
.L3794:
	lhi	%r5,0
	j	.L3595
.L3793:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3595
	j	.L3794
.L3795:
	lr	%r1,%r2
	ltr	%r0,%r0
	lr	%r2,%r1
	jne	.L3599
	j	.L3807
.L3797:
	lhi	%r5,0
	j	.L3627
.L3796:
	lr	%r1,%r2
	j	.L3625
.L3799:
	lhi	%r5,0
	j	.L3631
.L3798:
	lr	%r1,%r2
	j	.L3629
.L3801:
	lhi	%r5,0
	j	.L3635
.L3800:
	lr	%r1,%r2
	j	.L3633
.L3803:
	lhi	%r5,0
	j	.L3639
.L3802:
	lr	%r1,%r2
	j	.L3637
.L3805:
	lhi	%r5,0
	j	.L3643
.L3804:
	lr	%r1,%r2
	j	.L3641
.L3806:
	lr	%r1,%r2
	j	.L3645
.L3784:
	sr	%r2,%r3
	cr	%r0,%r3
	je	.L3542
	lr	%r2,%r0
.L3542:
	xr	%r0,%r3
	lpr	%r11,%r0
	ahi	%r11,-1
	srl	%r11,31
	j	.L3545
.L3682:
	lhi	%r11,0
	j	.L3545
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
	je	.L3810
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L3810:
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
	je	.L3816
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L3816:
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
	larl	%r13,.L3829
	cl	%r2,.L3830-.L3829(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L3831-.L3829(%r13)
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
	jne	.L3826
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L3826:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L3829:
.L3831:
	.long	65280
.L3830:
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
	jl	.L3836
	jh	.L3837
	clr	%r3,%r5
	jl	.L3836
	jh	.L3837
	lhi	%r2,1
	br	%r14
.L3836:
	lhi	%r2,0
	br	%r14
.L3837:
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
	jl	.L3843
	jh	.L3842
	clr	%r3,%r5
	jl	.L3843
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3843:
	lhi	%r2,-1
	br	%r14
.L3842:
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
	larl	%r13,.L3847
	l	%r4,.L3848-.L3847(%r13)
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
.L3847:
.L3848:
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
	je	.L3850
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L3850:
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
	larl	%r13,.L3862
	l	%r4,.L3863-.L3862(%r13)
	l	%r1,.L3863-.L3862(%r13)
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
	l	%r5,.L3863-.L3862(%r13)
	lr	%r0,%r3
	n	%r3,.L3863-.L3862(%r13)
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
.L3862:
.L3863:
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
	larl	%r13,.L3866
	l	%r1,.L3867-.L3866(%r13)
	l	%r0,.L3867-.L3866(%r13)
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
	l	%r12,.L3867-.L3866(%r13)
	lr	%r0,%r11
	n	%r11,.L3867-.L3866(%r13)
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
.L3866:
.L3867:
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
	je	.L3869
	ahi	%r2,-1
.L3869:
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
	larl	%r13,.L3877
	l	%r0,.L3878-.L3877(%r13)
	l	%r1,.L3878-.L3877(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L3879-.L3877(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L3880-.L3877(%r13)
	l	%r3,.L3880-.L3877(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L3880-.L3877(%r13)
	nr	%r3,%r1
	l	%r1,.L3880-.L3877(%r13)
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
	n	%r2,.L3879-.L3877(%r13)
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
.L3877:
.L3880:
	.long	858993459
.L3879:
	.long	252645135
.L3878:
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
	larl	%r5,.L3883
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L3884-.L3883(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L3885-.L3883(%r5)
	srl	%r0,2
	n	%r0,.L3885-.L3883(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3886-.L3883(%r5)
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
.L3883:
.L3886:
	.long	252645135
.L3885:
	.long	858993459
.L3884:
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
	larl	%r5,.L3896
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L3897-.L3896(%r5)
	tml	%r2,1
	je	.L3888
.L3890:
	mdbr	%f0,%f2
.L3888:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3889
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L3890
.L3895:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L3890
	j	.L3895
.L3889:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L3897-.L3896(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3896:
.L3897:
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
	larl	%r5,.L3907
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L3908-.L3907(%r5)
	tml	%r2,1
	je	.L3899
.L3901:
	meebr	%f0,%f2
.L3899:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3900
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L3901
.L3906:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L3901
	j	.L3906
.L3900:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L3908-.L3907(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3907:
.L3908:
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
	jl	.L3913
	jh	.L3914
	clr	%r3,%r5
	jl	.L3913
	jh	.L3914
	lhi	%r2,1
	br	%r14
.L3913:
	lhi	%r2,0
	br	%r14
.L3914:
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
	jl	.L3920
	jh	.L3919
	clr	%r3,%r5
	jl	.L3920
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3920:
	lhi	%r2,-1
	br	%r14
.L3919:
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
