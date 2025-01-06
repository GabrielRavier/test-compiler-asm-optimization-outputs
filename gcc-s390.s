	.file	"mini-libc.c"
	.machinemode esa
	.machine "z990+htm"
.text
	.align	8
.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	stm	%r11,%r12,88(%r15)
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
	lhi	%r12,7
	nr	%r12,%r4
	lr	%r5,%r4
	je	.L41
	chi	%r12,1
	je	.L91
	chi	%r12,2
	je	.L92
	chi	%r12,3
	je	.L93
	chi	%r12,4
	je	.L94
	chi	%r12,5
	je	.L95
	chi	%r12,6
	je	.L96
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	lr	%r4,%r11
.L96:
	ic	%r11,0(%r4,%r3)
	stc	%r11,0(%r4,%r1)
	ahi	%r4,-1
.L95:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	ahi	%r4,-1
.L94:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	ahi	%r4,-1
.L93:
	ic	%r11,0(%r4,%r3)
	stc	%r11,0(%r4,%r1)
	ahi	%r4,-1
.L92:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	ahi	%r4,-1
.L91:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	brct	%r4,.L41
.L3:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
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
	lhi	%r11,3
	or	%r0,%r2
	nr	%r0,%r11
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L12
	lr	%r12,%r3
	ahi	%r12,1
	lr	%r1,%r2
	lhi	%r5,2
	sr	%r1,%r12
	clr	%r1,%r5
	jle	.L12
	lhi	%r11,-4
	lhi	%r0,7
	nr	%r11,%r4
	lhi	%r1,0
	lr	%r12,%r11
	ahi	%r12,-4
	srl	%r12,2
	ahi	%r12,1
	nr	%r0,%r12
	je	.L83
	chi	%r0,1
	je	.L97
	chi	%r0,2
	je	.L98
	chi	%r0,3
	je	.L99
	chi	%r0,4
	je	.L100
	chi	%r0,5
	je	.L101
	chi	%r0,6
	jne	.L150
.L102:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
.L101:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L100:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
.L99:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L98:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
.L97:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r11
	je	.L140
.L83:
	srl	%r12,3
.L6:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	l	%r5,16(%r1,%r3)
	st	%r5,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r11,24(%r1,%r3)
	st	%r11,24(%r1,%r2)
	l	%r5,28(%r1,%r3)
	st	%r5,28(%r1,%r2)
	ahi	%r1,32
	brct	%r12,.L6
.L140:
	ar	%r3,%r1
	lr	%r12,%r2
	lr	%r0,%r4
	ar	%r12,%r1
	sr	%r0,%r1
	cr	%r4,%r1
	je	.L3
	mvc	0(1,%r12),0(%r3)
	chi	%r0,1
	je	.L3
	mvc	1(1,%r12),1(%r3)
	chi	%r0,2
	je	.L3
	mvc	2(1,%r12),2(%r3)
	j	.L3
.L41:
	srl	%r5,3
.L4:
	lr	%r12,%r4
	ahi	%r12,-1
	ic	%r0,0(%r4,%r3)
	lr	%r11,%r4
	stc	%r0,0(%r4,%r1)
	ahi	%r11,-2
	ahi	%r4,-8
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	ahi	%r12,-2
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ahi	%r11,-2
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	ahi	%r12,-2
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ahi	%r11,-2
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	ahi	%r12,-2
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r1)
	brct	%r5,.L4
	j	.L3
.L12:
	lhi	%r5,7
	lhi	%r1,0
	nr	%r5,%r4
	lr	%r11,%r4
	je	.L62
	chi	%r5,1
	je	.L103
	chi	%r5,2
	je	.L104
	chi	%r5,3
	je	.L105
	chi	%r5,4
	je	.L106
	chi	%r5,5
	je	.L107
	chi	%r5,6
	je	.L108
	mvc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L108:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L107:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L106:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L105:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L104:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L103:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L3
.L62:
	lr	%r4,%r11
	srl	%r4,3
.L9:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r11,4(%r1,%r3)
	stc	%r11,4(%r1,%r2)
	ic	%r12,5(%r1,%r3)
	stc	%r12,5(%r1,%r2)
	ic	%r0,6(%r1,%r3)
	stc	%r0,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
	ahi	%r1,8
	brct	%r4,.L9
	j	.L3
.L150:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
	j	.L102
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
	je	.L216
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lhi	%r1,7
	lr	%r12,%r5
	ahi	%r12,-1
	nr	%r1,%r5
	lr	%r0,%r5
	je	.L174
	chi	%r1,1
	je	.L197
	chi	%r1,2
	je	.L198
	chi	%r1,3
	je	.L199
	chi	%r1,4
	je	.L200
	chi	%r1,5
	je	.L201
	chi	%r1,6
	jne	.L219
.L202:
	ic	%r1,0(%r3)
	lhi	%r12,255
	stc	%r1,0(%r2)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L201:
	ic	%r1,0(%r3)
	lhi	%r12,255
	stc	%r1,0(%r2)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L200:
	ic	%r1,0(%r3)
	lhi	%r12,255
	stc	%r1,0(%r2)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L199:
	ic	%r1,0(%r3)
	lhi	%r12,255
	stc	%r1,0(%r2)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L198:
	ic	%r1,0(%r3)
	lhi	%r12,255
	stc	%r1,0(%r2)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L197:
	ic	%r1,0(%r3)
	lhi	%r12,255
	stc	%r1,0(%r2)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ahi	%r3,1
	ahi	%r2,1
	chi	%r5,1
	je	.L155
.L174:
	srl	%r0,3
.L153:
	ic	%r1,0(%r3)
	lhi	%r5,255
	stc	%r1,0(%r2)
	nr	%r1,%r5
	cr	%r1,%r4
	je	.L212
	ahi	%r2,1
	ic	%r1,1(%r3)
	lhi	%r12,255
	lr	%r5,%r2
	nr	%r12,%r1
	cr	%r12,%r4
	stc	%r1,0(%r2)
	je	.L212
	ahi	%r2,1
	ic	%r1,2(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	cr	%r12,%r4
	stc	%r1,0(%r2)
	je	.L212
	ic	%r1,3(%r3)
	lhi	%r12,255
	stc	%r1,2(%r5)
	lr	%r2,%r5
	nr	%r1,%r12
	ahi	%r2,2
	cr	%r1,%r4
	je	.L212
	ic	%r1,4(%r3)
	ahi	%r2,1
	stc	%r1,3(%r5)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ic	%r1,5(%r3)
	ahi	%r2,1
	stc	%r1,4(%r5)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ic	%r1,6(%r3)
	ahi	%r2,1
	stc	%r1,5(%r5)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ic	%r1,7(%r3)
	ahi	%r2,1
	stc	%r1,6(%r5)
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L212
	ahi	%r3,8
	ahi	%r2,1
	brct	%r0,.L153
.L155:
	lhi	%r2,0
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L212:
	.cfi_restore_state
	ahi	%r2,1
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L219:
	.cfi_restore_state
	ic	%r1,0(%r3)
	lhi	%r5,255
	stc	%r1,0(%r2)
	nr	%r1,%r5
	cr	%r1,%r4
	je	.L212
	lr	%r5,%r12
	ahi	%r3,1
	ahi	%r2,1
	j	.L202
.L216:
	.cfi_restore 12
	lhi	%r2,0
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
	je	.L225
	lr	%r0,%r4
	lhi	%r1,7
	ahi	%r0,-1
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L240
	chi	%r1,1
	je	.L263
	chi	%r1,2
	je	.L264
	chi	%r1,3
	je	.L265
	chi	%r1,4
	je	.L266
	chi	%r1,5
	je	.L267
	chi	%r1,6
	jne	.L284
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L285:
	ahi	%r2,1
	ahi	%r4,-1
.L267:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L266:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L265:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L264:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L263:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	chi	%r4,1
	je	.L225
.L240:
	lr	%r4,%r5
	srl	%r4,3
.L222:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
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
	lhi	%r0,0
	lr	%r2,%r1
	ic	%r0,2(%r1)
	ahi	%r2,2
	cr	%r0,%r3
	ber	%r14
	lhi	%r5,0
	ahi	%r2,1
	ic	%r5,3(%r1)
	cr	%r5,%r3
	ber	%r14
	lhi	%r0,0
	ahi	%r2,1
	ic	%r0,4(%r1)
	cr	%r0,%r3
	ber	%r14
	lhi	%r5,0
	ahi	%r2,1
	ic	%r5,5(%r1)
	cr	%r5,%r3
	ber	%r14
	lhi	%r0,0
	ahi	%r2,1
	ic	%r0,6(%r1)
	cr	%r0,%r3
	ber	%r14
	ahi	%r1,7
	lr	%r2,%r1
	brct	%r4,.L222
.L225:
	lhi	%r2,0
	br	%r14
.L284:
	lhi	%r4,0
	ic	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	ahi	%r2,1
	lr	%r4,%r0
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L285
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
	je	.L344
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lhi	%r1,7
	lr	%r12,%r4
	ahi	%r12,-1
	nr	%r1,%r4
	lr	%r0,%r4
	je	.L307
	chi	%r1,1
	je	.L330
	chi	%r1,2
	je	.L331
	chi	%r1,3
	je	.L332
	chi	%r1,4
	je	.L333
	chi	%r1,5
	je	.L334
	chi	%r1,6
	jne	.L353
.L335:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L334:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L333:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L332:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L331:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L330:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	ahi	%r2,1
	ahi	%r3,1
	chi	%r4,1
	je	.L292
.L307:
	srl	%r0,3
.L288:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L346
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,2(%r2)
	ic	%r5,2(%r3)
	cr	%r1,%r5
	jne	.L346
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,3(%r2)
	ic	%r5,3(%r3)
	cr	%r1,%r5
	jne	.L346
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,4(%r2)
	ic	%r5,4(%r3)
	cr	%r1,%r5
	jne	.L346
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,5(%r2)
	ic	%r5,5(%r3)
	cr	%r1,%r5
	jne	.L346
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,6(%r2)
	ic	%r5,6(%r3)
	cr	%r1,%r5
	jne	.L346
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,7(%r2)
	ic	%r5,7(%r3)
	cr	%r1,%r5
	jne	.L346
	ahi	%r2,8
	ahi	%r3,8
	brct	%r0,.L288
.L292:
	lhi	%r2,0
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L346:
	.cfi_restore_state
	sr	%r1,%r5
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	lr	%r2,%r1
	br	%r14
.L353:
	.cfi_restore_state
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L346
	lr	%r4,%r12
	ahi	%r2,1
	ahi	%r3,1
	j	.L335
.L344:
	.cfi_restore 12
	lhi	%r2,0
	br	%r14
	.cfi_endproc
.LFE3:
	.size	memcmp, .-memcmp
	.align	8
.globl memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.cfi_startproc
	ltr	%r4,%r4
	ber	%r14
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	lr	%r0,%r2
	lr	%r12,%r3
	lr	%r13,%r4
	lr	%r1,%r4
	mvcle	%r0,%r12,0
	jo	.-4
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	lhi	%r5,7
	ar	%r2,%r4
	lr	%r1,%r4
	lr	%r4,%r2
	lhi	%r2,255
	ahi	%r1,1
	nr	%r3,%r2
	nr	%r5,%r1
	je	.L382
	lr	%r2,%r4
	lhi	%r0,0
	ahi	%r4,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	chi	%r5,1
	je	.L382
	chi	%r5,2
	je	.L390
	chi	%r5,3
	je	.L391
	chi	%r5,4
	je	.L392
	chi	%r5,5
	je	.L393
	chi	%r5,6
	jne	.L413
	lr	%r2,%r4
	lhi	%r0,0
	ahi	%r4,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L393:
	lr	%r2,%r4
	lhi	%r5,0
	ahi	%r4,-1
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L392:
	lr	%r2,%r4
	lhi	%r0,0
	ahi	%r4,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L391:
	lr	%r2,%r4
	lhi	%r5,0
	ahi	%r4,-1
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L390:
	lr	%r2,%r4
	lhi	%r0,0
	ahi	%r4,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L382:
	srl	%r1,3
	lr	%r5,%r4
	ahi	%r1,1
	ahi	%r5,-1
	lr	%r2,%r4
	brct	%r1,.L408
	lhi	%r2,0
	br	%r14
.L408:
	lhi	%r0,0
	ic	%r0,0(%r4)
	cr	%r0,%r3
	ber	%r14
	lr	%r2,%r5
	lhi	%r5,0
	lr	%r0,%r4
	ahi	%r0,-2
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	st	%r12,92(%r15)
	.cfi_offset 12, -4
.L411:
	lr	%r2,%r0
	lhi	%r5,0
	lr	%r12,%r4
	ahi	%r12,-3
	ic	%r5,0(%r2)
	cr	%r5,%r3
	je	.L365
	lhi	%r5,0
	ahi	%r0,-2
	ic	%r5,0(%r12)
	lr	%r2,%r12
	cr	%r5,%r3
	je	.L365
	lr	%r2,%r0
	lhi	%r5,0
	ahi	%r12,-2
	ic	%r5,0(%r2)
	cr	%r5,%r3
	je	.L365
	lhi	%r5,0
	ahi	%r0,-2
	ic	%r5,0(%r12)
	lr	%r2,%r12
	cr	%r5,%r3
	je	.L365
	lr	%r2,%r0
	lhi	%r0,0
	ahi	%r12,-2
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L365
	lr	%r2,%r12
	lhi	%r12,0
	ahi	%r4,-8
	ic	%r12,0(%r2)
	cr	%r12,%r3
	je	.L365
	lr	%r5,%r4
	lr	%r2,%r4
	ahi	%r5,-1
	brct	%r1,.L368
	lhi	%r2,0
.L365:
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
.L413:
	lr	%r2,%r4
	lhi	%r5,0
	ahi	%r4,-1
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	lr	%r2,%r4
	lhi	%r0,0
	ahi	%r4,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L393
	br	%r14
.L368:
	.cfi_offset 12, -4
	lhi	%r0,0
	ic	%r0,0(%r4)
	cr	%r0,%r3
	je	.L365
	lhi	%r12,0
	lr	%r0,%r4
	ic	%r12,0(%r5)
	ahi	%r0,-2
	cr	%r12,%r3
	lr	%r2,%r5
	jne	.L411
	j	.L365
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
.L426:
	ahi	%r3,1
	ahi	%r2,1
	ic	%r0,0(%r3)
	tml	%r0,255
	stc	%r0,0(%r2)
	ber	%r14
	ahi	%r2,1
	ahi	%r3,1
	ic	%r0,0(%r3)
	tml	%r0,255
	stc	%r0,0(%r2)
	jne	.L426
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
.L440:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L440
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
.L444:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L444
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
	lhi	%r5,255
	lr	%r12,%r3
	ic	%r4,0(%r2)
	ic	%r3,0(%r3)
	lhi	%r0,255
	ahi	%r12,-1
	nr	%r5,%r4
	nr	%r0,%r3
	lhi	%r1,1
	cr	%r5,%r0
	je	.L448
	j	.L458
.L450:
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	lhi	%r0,255
	nr	%r5,%r4
	ic	%r3,0(%r1,%r12)
	nr	%r0,%r3
	cr	%r5,%r0
	jne	.L458
.L448:
	tml	%r4,255
	jne	.L450
	lhi	%r1,255
	lhi	%r2,0
	nr	%r3,%r1
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	sr	%r2,%r3
	br	%r14
.L458:
	.cfi_restore_state
	lhi	%r1,255
	lr	%r2,%r5
	nr	%r3,%r1
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
	je	.L463
.L462:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L462
	sr	%r2,%r3
	br	%r14
.L463:
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
	ltr	%r0,%r4
	je	.L474
	ic	%r5,0(%r2)
	lhi	%r4,255
	nr	%r4,%r5
	je	.L516
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ahi	%r0,-1
	lhi	%r12,3
	nr	%r12,%r0
	je	.L490
	ic	%r1,0(%r3)
	lhi	%r11,255
	nr	%r11,%r1
	je	.L508
	cr	%r11,%r4
	jne	.L509
	ahi	%r2,1
	lr	%r10,%r3
	lhi	%r4,255
	ahi	%r10,1
	ic	%r5,0(%r2)
	nr	%r4,%r5
	je	.L510
	chi	%r12,1
	lr	%r3,%r10
	je	.L490
	chi	%r12,2
	je	.L503
	ic	%r1,0(%r10)
	lhi	%r12,255
	nr	%r12,%r1
	je	.L508
	cr	%r12,%r4
	jne	.L509
	ahi	%r2,1
	lr	%r4,%r10
	ahi	%r4,1
	icm	%r5,1,0(%r2)
	je	.L510
	lr	%r3,%r4
.L503:
	ic	%r1,0(%r3)
	lhi	%r11,255
	nr	%r11,%r1
	je	.L508
	lhi	%r4,255
	nr	%r4,%r5
	cr	%r11,%r4
	jne	.L509
	ahi	%r2,1
	lr	%r1,%r3
	ahi	%r1,1
	icm	%r5,1,0(%r2)
	je	.L510
	lr	%r3,%r1
.L490:
	srl	%r0,2
	ahi	%r0,1
.L470:
	ic	%r1,0(%r3)
	lhi	%r10,255
	nr	%r10,%r1
	je	.L508
	lhi	%r4,255
	nr	%r4,%r5
	brct	%r0,.L472
	lhi	%r0,255
	lr	%r2,%r4
	nr	%r1,%r0
	sr	%r2,%r1
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L472:
	.cfi_restore_state
	cr	%r10,%r4
	jne	.L509
	lr	%r12,%r3
	ic	%r5,1(%r2)
	ahi	%r12,1
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L510
	ic	%r1,0(%r12)
	lhi	%r10,255
	nr	%r10,%r1
	lr	%r3,%r12
	je	.L508
	cr	%r10,%r11
	jne	.L509
	ic	%r5,2(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L510
	ahi	%r3,1
	lhi	%r10,255
	ic	%r1,0(%r3)
	nr	%r10,%r1
	je	.L508
	cr	%r10,%r11
	jne	.L509
	ic	%r5,3(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L510
	lr	%r3,%r12
	ic	%r1,2(%r12)
	ahi	%r3,2
	lhi	%r12,255
	nr	%r12,%r1
	je	.L508
	cr	%r12,%r11
	jne	.L509
	ahi	%r2,4
	icm	%r5,1,0(%r2)
	je	.L510
	ahi	%r3,1
	j	.L470
.L474:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lhi	%r2,0
	br	%r14
.L508:
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	lhi	%r2,255
	lhi	%r0,255
	nr	%r2,%r5
	nr	%r1,%r0
	sr	%r2,%r1
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L509:
	.cfi_restore_state
	lhi	%r0,255
	lr	%r2,%r4
	nr	%r1,%r0
	sr	%r2,%r1
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L510:
	.cfi_restore_state
	ic	%r1,1(%r3)
	lhi	%r0,255
	lhi	%r2,0
	nr	%r1,%r0
	sr	%r2,%r1
	lm	%r10,%r12,84(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L516:
	ic	%r1,0(%r3)
	lhi	%r3,255
	nr	%r1,%r3
	lhi	%r2,0
	sr	%r2,%r1
	br	%r14
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
	lhi	%r5,7
	nr	%r4,%r1
	lr	%r0,%r4
	ahi	%r0,-2
	srl	%r0,1
	ar	%r4,%r2
	ahi	%r0,1
	nr	%r5,%r0
	je	.L535
	chi	%r5,1
	je	.L543
	chi	%r5,2
	je	.L544
	chi	%r5,3
	je	.L545
	chi	%r5,4
	je	.L546
	chi	%r5,5
	je	.L547
	chi	%r5,6
	jne	.L559
.L548:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L547:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L546:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L545:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L544:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L543:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L535:
	srl	%r0,3
.L520:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	mvc	2(1,%r3),3(%r2)
	mvc	3(1,%r3),2(%r2)
	mvc	4(1,%r3),5(%r2)
	mvc	5(1,%r3),4(%r2)
	mvc	6(1,%r3),7(%r2)
	mvc	7(1,%r3),6(%r2)
	mvc	8(1,%r3),9(%r2)
	mvc	9(1,%r3),8(%r2)
	mvc	10(1,%r3),11(%r2)
	mvc	11(1,%r3),10(%r2)
	mvc	12(1,%r3),13(%r2)
	mvc	13(1,%r3),12(%r2)
	mvc	14(1,%r3),15(%r2)
	mvc	15(1,%r3),14(%r2)
	ahi	%r3,16
	ahi	%r2,16
	brct	%r0,.L520
	br	%r14
.L559:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	j	.L548
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
	lhi	%r0,25
	or	%r2,%r1
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
	je	.L567
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L567:
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
	jle	.L571
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L571:
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
	je	.L583
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L583:
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
	larl	%r5,.L594
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L591
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L593
.L591:
	lhi	%r2,1
	br	%r14
.L593:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L591
	a	%r2,.L595-.L594(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L594:
.L595:
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
	larl	%r5,.L607
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L606
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L603
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L608-.L607(%r5)
	jle	.L603
	l	%r4,.L609-.L607(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L603
	l	%r0,.L610-.L607(%r5)
	ar	%r0,%r2
	cl	%r0,.L611-.L607(%r5)
	jh	.L604
	n	%r2,.L612-.L607(%r5)
	x	%r2,.L612-.L607(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L603:
	lhi	%r2,1
	br	%r14
.L606:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L604:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L607:
.L612:
	.long	65534
.L611:
	.long	1048579
.L610:
	.long	-65532
.L609:
	.long	-57344
.L608:
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
	jle	.L615
	lhi	%r0,32
	lhi	%r4,5
	or	%r2,%r0
	ahi	%r2,-97
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L615:
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
	larl	%r5,.L628
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L623
	kdbr	%f0,%f2
	jnh	.L626
	sdbr	%f0,%f2
	br	%r14
.L626:
	ld	%f0,.L629-.L628(%r5)
	br	%r14
.L623:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L628:
.L629:
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
	larl	%r5,.L639
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L634
	kebr	%f0,%f2
	jnh	.L637
	sebr	%f0,%f2
	br	%r14
.L637:
	le	%f0,.L640-.L639(%r5)
	br	%r14
.L634:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L639:
.L640:
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
	jo	.L649
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L651
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L646
	lhi	%r0,0
.L646:
	tml	%r0,1
	jne	.L649
	ldr	%f2,%f0
.L649:
	ldr	%f0,%f2
	br	%r14
.L651:
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
	jo	.L661
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L663
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L658
	lhi	%r0,0
.L658:
	tml	%r0,1
	jne	.L661
	ler	%f2,%f0
.L661:
	ler	%f0,%f2
	br	%r14
.L663:
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
	ld	%f2,8(%r3)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	std	%f1,112(%r15)
	std	%f3,120(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L672
	cxbr	%f0,%f0
	jo	.L666
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L677
	lhi	%r0,1
	lxr	%f5,%f0
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	kxbr	%f0,%f5
	jl	.L671
	lhi	%r0,0
.L671:
	tml	%r0,1
	je	.L669
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L670:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	std	%f7,96(%r15)
	ld	%f8,136(%r15)
	std	%f8,104(%r15)
.L666:
	ld	%f10,96(%r15)
	std	%f10,0(%r2)
	ld	%f12,104(%r15)
	std	%f12,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L677:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L666
.L672:
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
.L669:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L670
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
	jo	.L685
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L688
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L684
	lhi	%r0,0
.L684:
	tml	%r0,1
	bner	%r14
.L685:
	ldr	%f0,%f2
	br	%r14
.L688:
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
	jo	.L696
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L699
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L695
	lhi	%r0,0
.L695:
	tml	%r0,1
	bner	%r14
.L696:
	ler	%f0,%f2
	br	%r14
.L699:
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
	ld	%f2,8(%r3)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	std	%f1,96(%r15)
	std	%f3,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L702
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L708
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	srl	%r1,28
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L713
	lhi	%r0,1
	lxr	%f5,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	kxbr	%f0,%f5
	jl	.L707
	lhi	%r0,0
.L707:
	tml	%r0,1
	je	.L705
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L706:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	std	%f7,96(%r15)
	ld	%f8,136(%r15)
	std	%f8,104(%r15)
.L702:
	ld	%f14,96(%r15)
	std	%f14,0(%r2)
	ld	%f9,104(%r15)
	std	%f9,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L713:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L702
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
.L705:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L706
.L708:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L702
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
	je	.L716
	larl	%r4,.LANCHOR1
.L717:
	lhi	%r3,63
	nr	%r3,%r2
	srl	%r2,6
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	ltr	%r2,%r2
	jne	.L717
.L716:
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
	slbr	%r2,%r4
	lr	%r1,%r3
	lr	%r0,%r2
	sldl	%r0,6
	slr	%r1,%r3
	slbr	%r0,%r2
	lr	%r3,%r1
	lr	%r2,%r0
	sldl	%r2,7
	alr	%r1,%r3
	alcr	%r0,%r2
	sldl	%r0,2
	alr	%r1,%r5
	alcr	%r0,%r4
	lr	%r3,%r1
	lr	%r2,%r0
	sldl	%r2,6
	slr	%r3,%r1
	slbr	%r2,%r0
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
	lr	%r1,%r11
	lr	%r0,%r10
	sldl	%r0,3
	slr	%r1,%r11
	slbr	%r0,%r10
	lr	%r3,%r1
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
	alcr	%r4,%r2
	lr	%r3,%r5
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
	je	.L732
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L732:
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
	je	.L735
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L735:
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
	lr	%r11,%r5
	icm	%r13,15,0(%r4)
	lr	%r10,%r2
	lr	%r7,%r3
	st	%r4,96(%r15)
	je	.L745
	st	%r13,100(%r15)
	lhi	%r1,7
	nr	%r1,%r13
	lr	%r12,%r3
	lhi	%r8,0
	je	.L769
	chi	%r1,1
	je	.L777
	chi	%r1,2
	je	.L778
	chi	%r1,3
	je	.L779
	chi	%r1,4
	je	.L780
	chi	%r1,5
	je	.L781
	chi	%r1,6
	jne	.L812
.L782:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L744
	ahi	%r8,1
	ar	%r12,%r11
.L781:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L744
	ahi	%r8,1
	ar	%r12,%r11
.L780:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L744
	ahi	%r8,1
	ar	%r12,%r11
.L779:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L744
	ahi	%r8,1
	ar	%r12,%r11
.L778:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L744
	ahi	%r8,1
	ar	%r12,%r11
.L777:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L744
	ahi	%r8,1
	ar	%r12,%r11
	cr	%r13,%r8
	je	.L745
.L769:
	lr	%r8,%r13
	srl	%r8,3
.L747:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	lr	%r0,%r2
	ltr	%r0,%r0
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L744
	ar	%r12,%r11
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r3,%r2
	ltr	%r3,%r3
	lr	%r2,%r10
	je	.L744
	ar	%r12,%r11
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r5,%r2
	ltr	%r5,%r5
	lr	%r2,%r10
	je	.L744
	ar	%r12,%r11
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r4,%r2
	ltr	%r4,%r4
	lr	%r2,%r10
	je	.L744
	ar	%r12,%r11
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	ltr	%r1,%r1
	lr	%r2,%r10
	je	.L744
	ar	%r12,%r11
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r0,%r2
	ltr	%r0,%r0
	lr	%r2,%r10
	je	.L744
	ar	%r12,%r11
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r3,%r2
	ltr	%r3,%r3
	lr	%r2,%r10
	je	.L744
	ar	%r12,%r11
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L744
	ar	%r12,%r11
	brct	%r8,.L747
.L745:
	lr	%r9,%r11
	l	%r2,96(%r15)
	msr	%r9,%r13
	ahi	%r13,1
	ar	%r9,%r7
	st	%r13,0(%r2)
	ltr	%r11,%r11
	je	.L744
	lr	%r4,%r11
	lr	%r3,%r10
	lr	%r2,%r9
	brasl	%r14,memmove
.L744:
	l	%r5,136(%r15)
	lr	%r2,%r9
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
	br	%r5
.L812:
	.cfi_restore_state
	lr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L744
	lhi	%r8,1
	ar	%r12,%r11
	j	.L782
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
	icm	%r13,15,0(%r4)
	je	.L815
	lhi	%r1,7
	lr	%r10,%r5
	nr	%r1,%r13
	lr	%r12,%r3
	lr	%r11,%r2
	lhi	%r7,0
	lr	%r8,%r13
	je	.L836
	chi	%r1,1
	je	.L844
	chi	%r1,2
	je	.L845
	chi	%r1,3
	je	.L846
	chi	%r1,4
	je	.L847
	chi	%r1,5
	je	.L848
	chi	%r1,6
	jne	.L878
.L849:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L814
	ahi	%r7,1
	ar	%r12,%r10
.L848:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L814
	ahi	%r7,1
	ar	%r12,%r10
.L847:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L814
	ahi	%r7,1
	ar	%r12,%r10
.L846:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L814
	ahi	%r7,1
	ar	%r12,%r10
.L845:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L814
	ahi	%r7,1
	ar	%r12,%r10
.L844:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L814
	ahi	%r7,1
	ar	%r12,%r10
	cr	%r13,%r7
	je	.L815
.L836:
	srl	%r8,3
.L817:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	lr	%r0,%r2
	ltr	%r0,%r0
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L814
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r3,%r2
	ltr	%r3,%r3
	lr	%r2,%r11
	je	.L814
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r4,%r2
	ltr	%r4,%r4
	lr	%r2,%r11
	je	.L814
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r5,%r2
	ltr	%r5,%r5
	lr	%r2,%r11
	je	.L814
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r13,%r2
	ltr	%r13,%r13
	lr	%r2,%r11
	je	.L814
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	ltr	%r1,%r1
	lr	%r2,%r11
	je	.L814
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	lr	%r7,%r2
	ltr	%r7,%r7
	lr	%r2,%r11
	je	.L814
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r9,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L814
	ar	%r12,%r10
	brct	%r8,.L817
.L815:
	lhi	%r9,0
.L814:
	l	%r3,128(%r15)
	lr	%r2,%r9
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
	br	%r3
.L878:
	.cfi_restore_state
	lr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L814
	ar	%r12,%r10
	lhi	%r7,1
	j	.L849
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
.L889:
	ic	%r3,0(%r2)
	lhi	%r1,255
	stc	%r3,103(%r15)
	nr	%r1,%r3
	cli	103(%r15),32
	je	.L883
	lr	%r4,%r1
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L883
	chi	%r1,43
	je	.L884
	chi	%r1,45
	je	.L885
	ahi	%r1,-48
	lhi	%r4,9
	clr	%r1,%r4
	jh	.L894
	lr	%r1,%r2
	lhi	%r12,0
.L887:
	lhi	%r2,0
.L891:
	ahi	%r1,1
	lhi	%r4,255
	mhi	%r2,10
	nr	%r4,%r3
	lhi	%r5,255
	ahi	%r4,-48
	lr	%r0,%r2
	ic	%r3,0(%r1)
	sr	%r2,%r4
	nr	%r5,%r3
	lhi	%r11,9
	ahi	%r5,-48
	clr	%r5,%r11
	jle	.L891
	ltr	%r12,%r12
	jne	.L882
	lr	%r2,%r4
	sr	%r2,%r0
.L882:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L883:
	.cfi_restore_state
	ahi	%r2,1
	j	.L889
.L885:
	ic	%r3,1(%r2)
	lhi	%r11,255
	nr	%r11,%r3
	lr	%r1,%r2
	ahi	%r11,-48
	ahi	%r1,1
	lhi	%r12,9
	clr	%r11,%r12
	jh	.L894
	lhi	%r12,1
	j	.L887
.L884:
	ic	%r3,1(%r2)
	lr	%r1,%r2
	lhi	%r2,255
	ahi	%r1,1
	nr	%r2,%r3
	lhi	%r0,9
	ahi	%r2,-48
	lhi	%r12,0
	clr	%r2,%r0
	jle	.L887
.L894:
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
.L911:
	ic	%r3,0(%r2)
	lhi	%r1,255
	stc	%r3,103(%r15)
	nr	%r1,%r3
	cli	103(%r15),32
	je	.L907
	lr	%r4,%r1
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L907
	chi	%r1,43
	je	.L908
	chi	%r1,45
	je	.L909
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L918
	lr	%r1,%r2
	lhi	%r12,0
.L912:
	lhi	%r2,0
.L915:
	ahi	%r1,1
	lhi	%r4,255
	mhi	%r2,10
	nr	%r4,%r3
	lhi	%r5,255
	ahi	%r4,-48
	lr	%r0,%r2
	ic	%r3,0(%r1)
	sr	%r2,%r4
	nr	%r5,%r3
	lhi	%r11,9
	ahi	%r5,-48
	clr	%r5,%r11
	jle	.L915
	ltr	%r12,%r12
	jne	.L906
	lr	%r2,%r4
	sr	%r2,%r0
.L906:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L907:
	.cfi_restore_state
	ahi	%r2,1
	j	.L911
.L909:
	ic	%r3,1(%r2)
	lhi	%r11,255
	nr	%r11,%r3
	lr	%r1,%r2
	ahi	%r11,-48
	ahi	%r1,1
	lhi	%r4,9
	lhi	%r12,1
	clr	%r11,%r4
	jle	.L912
.L918:
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
.L908:
	.cfi_restore_state
	ic	%r3,1(%r2)
	lr	%r1,%r2
	lhi	%r2,255
	ahi	%r1,1
	nr	%r2,%r3
	lhi	%r0,9
	ahi	%r2,-48
	clr	%r2,%r0
	jh	.L918
	lhi	%r12,0
	j	.L912
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
.L938:
	ic	%r1,0(%r2)
	lhi	%r3,255
	stc	%r1,103(%r15)
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L932
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L932
	chi	%r3,43
	je	.L933
	chi	%r3,45
	jne	.L954
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L943
	lhi	%r2,1
.L936:
	lhi	%r10,0
	lhi	%r11,0
.L940:
	ahi	%r3,1
	lhi	%r12,255
	nr	%r1,%r12
	lr	%r4,%r10
	ahi	%r1,-48
	lr	%r5,%r11
	sldl	%r4,2
	lr	%r12,%r1
	alr	%r5,%r11
	lhi	%r13,0
	alcr	%r4,%r10
	ic	%r1,0(%r3)
	lhi	%r0,255
	srda	%r12,32
	sldl	%r4,1
	nr	%r0,%r1
	lr	%r11,%r5
	slr	%r11,%r13
	lr	%r10,%r4
	lhi	%r9,9
	slbr	%r10,%r12
	ahi	%r0,-48
	clr	%r0,%r9
	jle	.L940
	ltr	%r2,%r2
	jne	.L931
	slr	%r13,%r5
	slbr	%r12,%r4
	lr	%r11,%r13
	lr	%r10,%r12
.L931:
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
.L932:
	.cfi_restore_state
	ahi	%r2,1
	j	.L938
.L954:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L943
	lr	%r3,%r2
	lhi	%r2,0
	j	.L936
.L933:
	ic	%r1,1(%r2)
	lhi	%r0,255
	nr	%r0,%r1
	ahi	%r2,1
	ahi	%r0,-48
	lhi	%r9,9
	clr	%r0,%r9
	lr	%r3,%r2
	lhi	%r2,0
	jle	.L936
.L943:
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
	je	.L957
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	j	.L960
.L970:
	je	.L956
	ahi	%r12,-1
	ar	%r11,%r8
	sr	%r12,%r10
	lr	%r9,%r11
	ltr	%r12,%r12
	je	.L957
.L960:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	lr	%r2,%r7
	msr	%r11,%r8
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L970
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L960
.L957:
	lhi	%r11,0
.L956:
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
	je	.L977
.L985:
	lr	%r10,%r11
	sra	%r10,1
	lr	%r12,%r10
	l	%r4,136(%r15)
	msr	%r12,%r8
	ar	%r12,%r9
	lr	%r2,%r7
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L972
	jle	.L975
	ar	%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	lr	%r9,%r12
	jne	.L985
.L977:
	lhi	%r12,0
.L972:
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
.L975:
	.cfi_restore_state
	ltr	%r10,%r10
	lr	%r11,%r10
	jne	.L985
	j	.L977
	.cfi_endproc
.LFE49:
	.size	bsearch_r, .-bsearch_r
	.align	8
.globl div
	.type	div, @function
div:
.LFB50:
	.cfi_startproc
	lhi	%r1,0
	lr	%r0,%r3
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
	jl	.L995
.L992:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L995:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L992
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
	stm	%r2,%r3,0(%r12)
	lr	%r4,%r9
	lr	%r2,%r10
	lr	%r3,%r11
	lr	%r5,%r6
	brasl	%r14,__moddi3
	stm	%r2,%r3,8(%r12)
	l	%r4,128(%r15)
	lr	%r2,%r12
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
	lhi	%r1,0
	lr	%r0,%r3
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
	jl	.L1008
.L1005:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L1008:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L1005
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
	stm	%r2,%r3,0(%r12)
	lr	%r4,%r9
	lr	%r2,%r10
	lr	%r3,%r11
	lr	%r5,%r6
	brasl	%r14,__moddi3
	stm	%r2,%r3,8(%r12)
	l	%r4,128(%r15)
	lr	%r2,%r12
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
	j	.L1023
.L1024:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L1023:
	icm	%r1,15,0(%r2)
	jne	.L1024
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
	je	.L1027
	j	.L1028
.L1029:
	l	%r3,0(%r1,%r2)
	ahi	%r1,4
	l	%r4,0(%r1,%r5)
	cr	%r3,%r4
	jne	.L1028
.L1027:
	ltr	%r3,%r3
	jne	.L1029
.L1028:
	cr	%r3,%r4
	jl	.L1033
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1033:
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
.L1038:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L1038
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
	je	.L1045
.L1044:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L1044
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L1045:
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
	je	.L1055
	lr	%r0,%r4
	lhi	%r1,7
	ahi	%r0,-1
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L1070
	chi	%r1,1
	je	.L1093
	chi	%r1,2
	je	.L1094
	chi	%r1,3
	je	.L1095
	chi	%r1,4
	je	.L1096
	chi	%r1,5
	je	.L1097
	chi	%r1,6
	jne	.L1113
.L1098:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1097:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1051
	ltr	%r1,%r1
	je	.L1051
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1096:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1095:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1051
	ltr	%r1,%r1
	je	.L1051
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1094:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1093:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1051
	ltr	%r1,%r1
	je	.L1051
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L1055
.L1070:
	srl	%r5,3
.L1049:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1051
	ltr	%r4,%r4
	je	.L1051
	lr	%r1,%r3
	ahi	%r1,4
	ahi	%r2,4
	l	%r0,0(%r2)
	lr	%r4,%r2
	lr	%r3,%r1
	c	%r0,0(%r1)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r3,4
	ahi	%r2,4
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	lr	%r2,%r4
	lr	%r3,%r1
	ahi	%r2,8
	ahi	%r3,8
	l	%r0,8(%r4)
	c	%r0,8(%r1)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r2,4
	ahi	%r3,4
	l	%r0,12(%r4)
	c	%r0,12(%r1)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r2,4
	ahi	%r3,4
	l	%r0,16(%r4)
	c	%r0,16(%r1)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r2,4
	ahi	%r3,4
	l	%r0,20(%r4)
	c	%r0,20(%r1)
	jne	.L1051
	ltr	%r0,%r0
	je	.L1051
	ahi	%r2,4
	ahi	%r3,4
	l	%r4,24(%r4)
	c	%r4,24(%r1)
	jne	.L1051
	ltr	%r4,%r4
	je	.L1051
	ahi	%r1,28
	ahi	%r2,4
	lr	%r3,%r1
	brct	%r5,.L1049
.L1055:
	lhi	%r2,0
	br	%r14
.L1051:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L1114
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1114:
	lhi	%r2,-1
	br	%r14
.L1113:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1051
	ltr	%r4,%r4
	je	.L1051
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
	j	.L1098
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
	je	.L1120
	lr	%r0,%r4
	lhi	%r1,7
	ahi	%r0,-1
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L1135
	chi	%r1,1
	je	.L1158
	chi	%r1,2
	je	.L1159
	chi	%r1,3
	je	.L1160
	chi	%r1,4
	je	.L1161
	chi	%r1,5
	je	.L1162
	chi	%r1,6
	jne	.L1179
	c	%r3,0(%r2)
	ber	%r14
.L1180:
	ahi	%r4,-1
	ahi	%r2,4
.L1162:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1161:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1160:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1159:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1158:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L1120
.L1135:
	srl	%r5,3
.L1117:
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
	ahi	%r2,4
	c	%r3,12(%r1)
	ber	%r14
	ahi	%r2,4
	c	%r3,16(%r1)
	ber	%r14
	ahi	%r2,4
	c	%r3,20(%r1)
	ber	%r14
	ahi	%r2,4
	c	%r3,24(%r1)
	ber	%r14
	ahi	%r1,28
	lr	%r2,%r1
	brct	%r5,.L1117
.L1120:
	lhi	%r2,0
	br	%r14
.L1179:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	lr	%r4,%r0
	c	%r3,0(%r2)
	jne	.L1180
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
	je	.L1189
	lr	%r0,%r4
	lhi	%r1,7
	ahi	%r0,-1
	lr	%r5,%r4
	nr	%r1,%r4
	je	.L1204
	chi	%r1,1
	je	.L1227
	chi	%r1,2
	je	.L1228
	chi	%r1,3
	je	.L1229
	chi	%r1,4
	je	.L1230
	chi	%r1,5
	je	.L1231
	chi	%r1,6
	jne	.L1247
.L1232:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1231:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1230:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1229:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1228:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1227:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L1189
.L1204:
	srl	%r5,3
.L1183:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r3,4
	l	%r1,4(%r2)
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L1243
	ahi	%r3,4
	l	%r1,8(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	lr	%r3,%r4
	l	%r1,12(%r2)
	ahi	%r3,8
	c	%r1,8(%r4)
	jne	.L1243
	ahi	%r3,4
	l	%r1,16(%r2)
	c	%r1,12(%r4)
	jne	.L1243
	ahi	%r3,4
	l	%r1,20(%r2)
	c	%r1,16(%r4)
	jne	.L1243
	ahi	%r3,4
	l	%r1,24(%r2)
	c	%r1,20(%r4)
	jne	.L1243
	ahi	%r3,4
	l	%r1,28(%r2)
	c	%r1,24(%r4)
	jne	.L1243
	ahi	%r2,32
	ahi	%r3,4
	brct	%r5,.L1183
.L1189:
	lhi	%r2,0
	br	%r14
.L1243:
	c	%r1,0(%r3)
	jl	.L1248
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1248:
	lhi	%r2,-1
	br	%r14
.L1247:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1243
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
	j	.L1232
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	ltr	%r4,%r4
	ber	%r14
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	sll	%r4,2
	lr	%r12,%r3
	lr	%r13,%r4
	lr	%r0,%r2
	lr	%r1,%r4
	mvcle	%r0,%r12,0
	jo	.-4
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L1353
	cr	%r2,%r3
	je	.L1268
	lr	%r1,%r4
	lr	%r0,%r2
	ahi	%r1,-1
	sr	%r0,%r3
	lr	%r5,%r4
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L1350
	ltr	%r4,%r4
	je	.L1268
	l	%r4,.L1354-.L1353(%r13)
	nr	%r4,%r1
	ahi	%r4,1
	lhi	%r5,7
	nr	%r5,%r4
	sll	%r1,2
	je	.L1286
	chi	%r5,1
	je	.L1322
	chi	%r5,2
	je	.L1323
	chi	%r5,3
	je	.L1324
	chi	%r5,4
	je	.L1325
	chi	%r5,5
	je	.L1326
	chi	%r5,6
	jne	.L1351
.L1327:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L1326:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L1325:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
.L1324:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L1323:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L1322:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L1268
.L1286:
	srl	%r4,3
.L1265:
	lr	%r5,%r1
	ahi	%r5,-4
	l	%r0,0(%r1,%r3)
	lr	%r12,%r1
	st	%r0,0(%r1,%r2)
	ahi	%r12,-8
	ahi	%r1,-32
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,-8
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	ahi	%r12,-8
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,-8
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	ahi	%r12,-8
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,-8
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	brct	%r4,.L1265
.L1268:
	lm	%r12,%r13,88(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L1350:
	.cfi_restore_state
	ltr	%r4,%r4
	lhi	%r5,0
	je	.L1268
	lhi	%r12,7
	nr	%r12,%r4
	je	.L1307
	chi	%r12,1
	je	.L1316
	chi	%r12,2
	je	.L1317
	chi	%r12,3
	je	.L1318
	chi	%r12,4
	je	.L1319
	chi	%r12,5
	je	.L1320
	chi	%r12,6
	jne	.L1352
.L1321:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L1320:
	l	%r12,0(%r5,%r3)
	ahi	%r1,-1
	st	%r12,0(%r5,%r2)
	ahi	%r5,4
.L1319:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L1318:
	l	%r12,0(%r5,%r3)
	ahi	%r1,-1
	st	%r12,0(%r5,%r2)
	ahi	%r5,4
.L1317:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L1316:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L1268
.L1307:
	srl	%r4,3
.L1263:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r1,12(%r5,%r3)
	st	%r1,12(%r5,%r2)
	l	%r0,16(%r5,%r3)
	st	%r0,16(%r5,%r2)
	l	%r12,20(%r5,%r3)
	st	%r12,20(%r5,%r2)
	l	%r1,24(%r5,%r3)
	st	%r1,24(%r5,%r2)
	l	%r0,28(%r5,%r3)
	st	%r0,28(%r5,%r2)
	ahi	%r5,32
	brct	%r4,.L1263
	j	.L1268
.L1352:
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
	j	.L1321
.L1351:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
	j	.L1327
	.section	.rodata
	.align	8
.L1353:
.L1354:
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
	lhi	%r0,7
	lr	%r1,%r2
	nr	%r0,%r4
	je	.L1374
	chi	%r0,1
	je	.L1382
	chi	%r0,2
	je	.L1383
	chi	%r0,3
	je	.L1384
	chi	%r0,4
	je	.L1385
	chi	%r0,5
	je	.L1386
	chi	%r0,6
	jne	.L1399
.L1387:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1386:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1385:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1384:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1383:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1382:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L1374:
	srl	%r4,3
.L1357:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	st	%r3,16(%r1)
	st	%r3,20(%r1)
	st	%r3,24(%r1)
	st	%r3,28(%r1)
	ahi	%r1,32
	brct	%r4,.L1357
	br	%r14
.L1399:
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
	j	.L1387
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	clr	%r2,%r3
	jhe	.L1402
	ltr	%r4,%r4
	je	.L1401
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	lhi	%r12,7
	ahi	%r0,-1
	lr	%r1,%r4
	nr	%r12,%r4
	je	.L1441
	chi	%r12,1
	je	.L1491
	chi	%r12,2
	je	.L1492
	chi	%r12,3
	je	.L1493
	chi	%r12,4
	je	.L1494
	chi	%r12,5
	je	.L1495
	chi	%r12,6
	je	.L1496
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
.L1496:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L1495:
	ic	%r12,0(%r4,%r2)
	stc	%r12,0(%r4,%r3)
	ahi	%r4,-1
.L1494:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L1493:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L1492:
	ic	%r12,0(%r4,%r2)
	stc	%r12,0(%r4,%r3)
	ahi	%r4,-1
.L1491:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L1441
.L1401:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1402:
	.cfi_restore_state
	je	.L1401
	ltr	%r4,%r4
	je	.L1401
	lr	%r1,%r4
	lhi	%r5,6
	ahi	%r1,-1
	clr	%r1,%r5
	jle	.L1412
	lr	%r0,%r3
	lhi	%r12,3
	or	%r0,%r2
	nr	%r0,%r12
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L1412
	lr	%r5,%r2
	ahi	%r5,1
	lr	%r1,%r3
	lhi	%r0,2
	sr	%r1,%r5
	clr	%r1,%r0
	jle	.L1412
	lhi	%r12,-4
	lhi	%r0,7
	nr	%r12,%r4
	lhi	%r1,0
	lr	%r5,%r12
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
	nr	%r0,%r5
	je	.L1483
	chi	%r0,1
	je	.L1497
	chi	%r0,2
	je	.L1498
	chi	%r0,3
	je	.L1499
	chi	%r0,4
	je	.L1500
	chi	%r0,5
	je	.L1501
	chi	%r0,6
	jne	.L1549
.L1502:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	ahi	%r1,4
.L1501:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	ahi	%r1,4
.L1500:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	ahi	%r1,4
.L1499:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	ahi	%r1,4
.L1498:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	ahi	%r1,4
.L1497:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1540
.L1483:
	srl	%r5,3
.L1406:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r12,8(%r1,%r2)
	st	%r12,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	l	%r12,16(%r1,%r2)
	st	%r12,16(%r1,%r3)
	l	%r0,20(%r1,%r2)
	st	%r0,20(%r1,%r3)
	l	%r12,24(%r1,%r2)
	st	%r12,24(%r1,%r3)
	l	%r0,28(%r1,%r2)
	st	%r0,28(%r1,%r3)
	ahi	%r1,32
	brct	%r5,.L1406
.L1540:
	ar	%r3,%r1
	ar	%r2,%r1
	lr	%r5,%r4
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L1401
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L1401
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L1401
	mvc	2(1,%r3),2(%r2)
	j	.L1401
.L1441:
	srl	%r1,3
.L1404:
	lr	%r5,%r4
	ahi	%r5,-1
	ic	%r0,0(%r4,%r2)
	lr	%r12,%r4
	stc	%r0,0(%r4,%r3)
	ahi	%r12,-2
	ahi	%r4,-8
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r5,-2
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ahi	%r12,-2
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r5,-2
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ahi	%r12,-2
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r5,-2
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ic	%r12,0(%r5,%r2)
	stc	%r12,0(%r5,%r3)
	brct	%r1,.L1404
	j	.L1401
.L1412:
	lhi	%r0,7
	lhi	%r1,0
	nr	%r0,%r4
	lr	%r12,%r4
	je	.L1462
	chi	%r0,1
	je	.L1503
	chi	%r0,2
	je	.L1504
	chi	%r0,3
	je	.L1505
	chi	%r0,4
	je	.L1506
	chi	%r0,5
	je	.L1507
	chi	%r0,6
	je	.L1508
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L1508:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L1507:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L1506:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L1505:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L1504:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L1503:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1401
.L1462:
	lr	%r4,%r12
	srl	%r4,3
.L1409:
	ic	%r12,0(%r1,%r2)
	stc	%r12,0(%r1,%r3)
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r0,2(%r1,%r2)
	stc	%r0,2(%r1,%r3)
	ic	%r12,3(%r1,%r2)
	stc	%r12,3(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	stc	%r5,4(%r1,%r3)
	ic	%r0,5(%r1,%r2)
	stc	%r0,5(%r1,%r3)
	ic	%r12,6(%r1,%r2)
	stc	%r12,6(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	stc	%r5,7(%r1,%r3)
	ahi	%r1,8
	brct	%r4,.L1409
	j	.L1401
.L1549:
	l	%r1,0(%r2)
	st	%r1,0(%r3)
	lhi	%r1,4
	j	.L1502
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
	lcr	%r5,%r4
	lr	%r0,%r2
	lr	%r1,%r3
	lr	%r12,%r2
	lr	%r13,%r3
	srdl	%r0,0(%r5)
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
	lcr	%r5,%r4
	lr	%r0,%r2
	lr	%r1,%r3
	lr	%r12,%r2
	lr	%r13,%r3
	sldl	%r0,0(%r5)
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
	larl	%r5,.L1567
	lhi	%r1,15
	lhi	%r4,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r1,%r3
	sll	%r2,0(%r3)
	nr	%r1,%r4
	srl	%r0,0(%r1)
	or	%r2,%r0
	n	%r2,.L1568-.L1567(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1567:
.L1568:
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
	larl	%r5,.L1571
	lhi	%r1,15
	lhi	%r4,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r1,%r3
	srl	%r2,0(%r3)
	nr	%r1,%r4
	sll	%r0,0(%r1)
	or	%r2,%r0
	n	%r2,.L1572-.L1571(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1571:
.L1572:
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
	lhi	%r4,7
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r5,%r3
	sll	%r2,0(%r3)
	nr	%r5,%r4
	lhi	%r3,255
	srl	%r0,0(%r5)
	or	%r2,%r0
	nr	%r2,%r3
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
	lhi	%r4,7
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r5,%r3
	srl	%r2,0(%r3)
	nr	%r5,%r4
	lhi	%r3,255
	sll	%r0,0(%r5)
	or	%r2,%r0
	nr	%r2,%r3
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
	larl	%r5,.L1579
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L1580-.L1579(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1579:
.L1580:
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
	lhi	%r1,0
	lhi	%r0,4
.L1588:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r5,%r2
	tml	%r4,1
	lr	%r3,%r1
	srl	%r5,0(%r1)
	jne	.L1604
	ahi	%r1,1
	lr	%r4,%r2
	tml	%r5,1
	srl	%r4,0(%r1)
	jne	.L1604
	lr	%r1,%r3
	ahi	%r1,2
	tml	%r4,1
	lr	%r3,%r2
	srl	%r3,0(%r1)
	jne	.L1604
	ahi	%r1,1
	lr	%r4,%r2
	tml	%r3,1
	srl	%r4,0(%r1)
	jne	.L1604
	ahi	%r1,1
	lr	%r5,%r2
	tml	%r4,1
	srl	%r5,0(%r1)
	jne	.L1604
	ahi	%r1,1
	lr	%r3,%r2
	tml	%r5,1
	srl	%r3,0(%r1)
	jne	.L1604
	ahi	%r1,1
	lr	%r4,%r2
	tml	%r3,1
	srl	%r4,0(%r1)
	jne	.L1604
	ahi	%r1,1
	tml	%r4,1
	jne	.L1604
	brct	%r0,.L1588
	lhi	%r2,0
	br	%r14
.L1604:
	lr	%r2,%r1
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
	je	.L1612
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1611:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	bner	%r14
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L1611
	br	%r14
.L1612:
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
	larl	%r5,.L1622
	lhi	%r2,1
	keb	%f0,.L1623-.L1622(%r5)
	blr	%r14
	keb	%f0,.L1624-.L1622(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1622:
.L1624:
	.long	2139095039
.L1623:
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
	larl	%r5,.L1630
	lhi	%r2,1
	kdb	%f0,.L1631-.L1630(%r5)
	blr	%r14
	kdb	%f0,.L1632-.L1630(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1630:
.L1632:
	.long	2146435071
	.long	-1
.L1631:
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
	larl	%r5,.L1638
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L1639-.L1638(%r5)
	ld	%f3,.L1639-.L1638+8(%r5)
	kxbr	%f0,%f1
	lhi	%r2,1
	blr	%r14
	ld	%f1,.L1640-.L1638(%r5)
	ld	%f3,.L1640-.L1638+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1638:
.L1640:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1639:
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
	larl	%r5,.L1659
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1657
	le	%f1,.L1660-.L1659(%r5)
.L1645:
	tml	%r2,1
	je	.L1646
.L1647:
	meebr	%f0,%f1
.L1646:
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
	jne	.L1647
.L1658:
	ar	%r2,%r0
	sra	%r2,1
	tml	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	meebr	%f1,%f1
	jne	.L1647
	j	.L1658
.L1657:
	le	%f1,.L1661-.L1659(%r5)
	j	.L1645
	.section	.rodata
	.align	8
.L1659:
.L1661:
	.long	1056964608
.L1660:
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
	larl	%r5,.L1678
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1676
	ld	%f1,.L1679-.L1678(%r5)
.L1664:
	tml	%r2,1
	je	.L1665
.L1666:
	mdbr	%f0,%f1
.L1665:
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
	jne	.L1666
.L1677:
	ar	%r2,%r0
	sra	%r2,1
	tml	%r2,1
	lr	%r0,%r2
	srl	%r0,31
	mdbr	%f1,%f1
	jne	.L1666
	j	.L1677
.L1676:
	ld	%f1,.L1680-.L1678(%r5)
	j	.L1664
	.section	.rodata
	.align	8
.L1678:
.L1680:
	.long	1071644672
	.long	0
.L1679:
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
	larl	%r5,.L1697
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1682
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1682
	ltr	%r4,%r4
	jl	.L1695
	ld	%f0,.L1698-.L1697(%r5)
	ld	%f2,.L1698-.L1697+8(%r5)
.L1683:
	tml	%r4,1
	je	.L1684
.L1685:
	mxbr	%f1,%f0
.L1684:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1682
	tml	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1685
.L1696:
	ar	%r4,%r0
	mxbr	%f0,%f0
	sra	%r4,1
	tml	%r4,1
	lr	%r0,%r4
	srl	%r0,31
	jne	.L1685
	j	.L1696
.L1682:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1695:
	ld	%f0,.L1699-.L1697(%r5)
	ld	%f2,.L1699-.L1697+8(%r5)
	j	.L1683
	.section	.rodata
	.align	8
.L1697:
.L1699:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1698:
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
	jle	.L1708
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1708
	lhi	%r12,-4
	lhi	%r0,7
	nr	%r12,%r4
	lhi	%r1,0
	lr	%r5,%r12
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
	nr	%r0,%r5
	je	.L1751
	chi	%r0,1
	je	.L1759
	chi	%r0,2
	je	.L1760
	chi	%r0,3
	je	.L1761
	chi	%r0,4
	je	.L1762
	chi	%r0,5
	je	.L1763
	chi	%r0,6
	je	.L1764
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1764:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1763:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1762:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1761:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1760:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1759:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1791
.L1751:
	srl	%r5,3
	chi	%r5,2
	jle	.L1801
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r2)
	x	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r2)
	x	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r2)
	x	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r2)
	x	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r2)
	x	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r2)
	x	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r2)
	x	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
.L1703:
	ahi	%r1,32
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r2)
	x	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r2)
	x	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r2)
	x	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r2)
	x	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r2)
	x	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r2)
	x	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r2)
	x	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
	brct	%r5,.L1703
	ahi	%r1,32
.L1791:
	ar	%r3,%r1
	lr	%r5,%r2
	lr	%r12,%r4
	ar	%r5,%r1
	sr	%r12,%r1
	cr	%r4,%r1
	je	.L1701
	xc	0(1,%r5),0(%r3)
	chi	%r12,1
	je	.L1701
	xc	1(1,%r5),1(%r3)
	chi	%r12,2
	je	.L1701
	xc	2(1,%r5),2(%r3)
.L1701:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1801:
	.cfi_restore_state
	l	%r12,0(%r1,%r2)
	l	%r0,4(%r1,%r2)
	x	%r12,0(%r1,%r3)
	x	%r0,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,8(%r1,%r2)
	st	%r0,4(%r1,%r2)
	l	%r0,12(%r1,%r2)
	x	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	x	%r0,12(%r1,%r3)
	l	%r12,16(%r1,%r2)
	st	%r0,12(%r1,%r2)
	l	%r0,20(%r1,%r2)
	x	%r12,16(%r1,%r3)
	st	%r12,16(%r1,%r2)
	x	%r0,20(%r1,%r3)
	l	%r12,24(%r1,%r2)
	st	%r0,20(%r1,%r2)
	l	%r0,28(%r1,%r2)
	x	%r12,24(%r1,%r3)
	st	%r12,24(%r1,%r2)
	x	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L1801
	j	.L1791
.L1708:
	lhi	%r0,7
	lhi	%r1,0
	nr	%r0,%r4
	lr	%r5,%r4
	je	.L1730
	chi	%r0,1
	je	.L1765
	chi	%r0,2
	je	.L1766
	chi	%r0,3
	je	.L1767
	chi	%r0,4
	je	.L1768
	chi	%r0,5
	je	.L1769
	chi	%r0,6
	je	.L1770
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1770:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1769:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1768:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1767:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1766:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1765:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1701
.L1730:
	lr	%r4,%r5
	srl	%r4,3
	chi	%r4,2
	jle	.L1800
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
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
.L1705:
	ahi	%r1,8
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
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
	brct	%r4,.L1705
	j	.L1701
.L1800:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	ic	%r12,1(%r1,%r2)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	xr	%r12,%r5
	ic	%r0,2(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r12,2(%r1,%r2)
	xr	%r12,%r0
	ic	%r5,3(%r1,%r2)
	stc	%r12,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	xr	%r5,%r12
	ic	%r0,4(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r2)
	xr	%r5,%r0
	ic	%r12,5(%r1,%r2)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	xr	%r12,%r5
	ic	%r0,6(%r1,%r3)
	stc	%r12,5(%r1,%r2)
	ic	%r12,6(%r1,%r2)
	xr	%r12,%r0
	ic	%r5,7(%r1,%r2)
	stc	%r12,6(%r1,%r2)
	ic	%r12,7(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,7(%r1,%r2)
	ahi	%r1,8
	brct	%r4,.L1800
	j	.L1701
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
	je	.L1808
.L1809:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1809
.L1808:
	ltr	%r4,%r4
	je	.L1873
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lhi	%r5,7
	lr	%r12,%r4
	ahi	%r12,-1
	nr	%r5,%r4
	lr	%r0,%r4
	je	.L1832
	chi	%r5,1
	je	.L1855
	chi	%r5,2
	je	.L1856
	chi	%r5,3
	je	.L1857
	chi	%r5,4
	je	.L1858
	chi	%r5,5
	je	.L1859
	chi	%r5,6
	jne	.L1877
.L1860:
	ic	%r12,0(%r3)
	stc	%r12,0(%r1)
	tml	%r12,255
	je	.L1813
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1859:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1813
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1858:
	ic	%r12,0(%r3)
	stc	%r12,0(%r1)
	tml	%r12,255
	je	.L1813
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1857:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1813
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1856:
	ic	%r12,0(%r3)
	stc	%r12,0(%r1)
	tml	%r12,255
	je	.L1813
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1855:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1813
	ahi	%r3,1
	ahi	%r1,1
	chi	%r4,1
	je	.L1811
.L1832:
	srl	%r0,3
.L1810:
	ic	%r4,0(%r3)
	stc	%r4,0(%r1)
	tml	%r4,255
	je	.L1813
	ic	%r12,1(%r3)
	stc	%r12,1(%r1)
	tml	%r12,255
	je	.L1813
	ic	%r5,2(%r3)
	stc	%r5,2(%r1)
	tml	%r5,255
	je	.L1813
	ic	%r4,3(%r3)
	stc	%r4,3(%r1)
	tml	%r4,255
	je	.L1813
	ic	%r12,4(%r3)
	stc	%r12,4(%r1)
	tml	%r12,255
	je	.L1813
	ic	%r5,5(%r3)
	stc	%r5,5(%r1)
	tml	%r5,255
	je	.L1813
	ic	%r4,6(%r3)
	stc	%r4,6(%r1)
	tml	%r4,255
	je	.L1813
	ic	%r12,7(%r3)
	stc	%r12,7(%r1)
	tml	%r12,255
	je	.L1813
	ahi	%r3,8
	ahi	%r1,8
	brct	%r0,.L1810
.L1811:
	mvi	0(%r1),0
.L1813:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1877:
	.cfi_restore_state
	ic	%r4,0(%r3)
	stc	%r4,0(%r1)
	tml	%r4,255
	je	.L1813
	ahi	%r3,1
	ahi	%r1,1
	lr	%r4,%r12
	j	.L1860
.L1873:
	.cfi_restore 12
	mvi	0(%r1),0
	br	%r14
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
	lr	%r4,%r2
	lhi	%r2,0
	ber	%r14
	lhi	%r1,7
	lr	%r5,%r3
	nr	%r1,%r3
	je	.L1899
	chi	%r1,1
	je	.L1922
	chi	%r1,2
	je	.L1923
	chi	%r1,3
	je	.L1924
	chi	%r1,4
	je	.L1925
	chi	%r1,5
	je	.L1926
	chi	%r1,6
	jne	.L1939
.L1927:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1926:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1925:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1924:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1923:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1922:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1899:
	srl	%r5,3
.L1880:
	la	%r3,0(%r2,%r4)
	cli	0(%r3),0
	ber	%r14
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	la	%r3,0(%r1,%r4)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	la	%r3,0(%r2,%r4)
	cli	0(%r3),0
	ber	%r14
	lhi	%r3,2
	lr	%r2,%r1
	ahi	%r2,2
	la	%r3,0(%r3,%r4)
	la	%r3,0(%r3,%r1)
	cli	0(%r3),0
	ber	%r14
	lhi	%r3,3
	ahi	%r2,1
	la	%r3,0(%r3,%r4)
	la	%r3,0(%r3,%r1)
	cli	0(%r3),0
	ber	%r14
	lhi	%r3,4
	ahi	%r2,1
	la	%r3,0(%r3,%r4)
	la	%r3,0(%r3,%r1)
	cli	0(%r3),0
	ber	%r14
	lhi	%r3,5
	ahi	%r2,1
	la	%r3,0(%r3,%r4)
	la	%r3,0(%r3,%r1)
	cli	0(%r3),0
	ber	%r14
	lhi	%r3,6
	ahi	%r2,1
	la	%r3,0(%r3,%r4)
	la	%r3,0(%r3,%r1)
	cli	0(%r3),0
	ber	%r14
	ahi	%r1,7
	lr	%r2,%r1
	brct	%r5,.L1880
	br	%r14
.L1939:
	cli	0(%r4),0
	ber	%r14
	lhi	%r2,1
	j	.L1927
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
	je	.L1946
.L1952:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1945
.L1944:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1945:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1944
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1952
.L1946:
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
.L1957:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	lr	%r2,%r1
	cr	%r5,%r3
	je	.L1956
	lr	%r2,%r0
.L1956:
	ahi	%r1,1
	lr	%r0,%r2
	tml	%r4,255
	jne	.L1957
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
	stm	%r6,%r13,64(%r15)
	.cfi_offset 6, -32
	.cfi_offset 7, -28
	.cfi_offset 8, -24
	.cfi_offset 9, -20
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	icm	%r9,1,0(%r3)
	je	.L1961
	lr	%r10,%r3
.L1963:
	ahi	%r10,1
	cli	0(%r10),0
	jne	.L1963
	slr	%r10,%r3
	jhe	.L1961
	lhi	%r11,255
	ahi	%r10,-1
	nr	%r11,%r9
	j	.L2014
.L2018:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L2017
.L2014:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r11
	jne	.L2018
	lhi	%r8,3
	lr	%r4,%r3
	nr	%r8,%r10
	lr	%r5,%r2
	lr	%r12,%r9
	lr	%r0,%r10
	je	.L1987
	lhi	%r1,255
	nr	%r1,%r9
	cr	%r11,%r1
	jne	.L1968
	ahi	%r5,1
	lr	%r7,%r3
	ic	%r1,1(%r2)
	ahi	%r7,1
	lhi	%r6,255
	nr	%r6,%r1
	je	.L2013
	ic	%r12,1(%r3)
	lhi	%r13,255
	nr	%r13,%r12
	je	.L1968
	chi	%r8,1
	lr	%r4,%r7
	je	.L1987
	chi	%r8,2
	je	.L2001
	cr	%r6,%r13
	jne	.L1968
	ahi	%r5,1
	lr	%r8,%r3
	ahi	%r8,2
	icm	%r1,1,2(%r2)
	je	.L2013
	icm	%r12,1,2(%r3)
	je	.L1968
	lr	%r4,%r8
.L2001:
	lhi	%r7,255
	nr	%r1,%r7
	nr	%r12,%r7
	cr	%r1,%r12
	jne	.L1968
	ahi	%r5,1
	lr	%r6,%r4
	ahi	%r6,1
	icm	%r1,1,0(%r5)
	je	.L2013
	icm	%r12,1,1(%r4)
	je	.L1968
	lr	%r4,%r6
.L1987:
	srl	%r0,2
	ahi	%r0,1
.L1965:
	lhi	%r13,255
	lhi	%r8,255
	nr	%r13,%r1
	nr	%r8,%r12
	brct	%r0,.L2000
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	je	.L1961
.L1968:
	ahi	%r2,1
	j	.L2014
.L2000:
	cr	%r13,%r8
	jne	.L1968
	lr	%r12,%r4
	ic	%r1,1(%r5)
	ahi	%r12,1
	lhi	%r7,255
	nr	%r7,%r1
	je	.L2013
	lhi	%r1,0
	ic	%r1,1(%r4)
	lr	%r4,%r12
	ltr	%r1,%r1
	je	.L1968
	cr	%r7,%r1
	jne	.L1968
	lr	%r6,%r12
	ic	%r1,2(%r5)
	ahi	%r6,1
	lhi	%r13,255
	nr	%r13,%r1
	je	.L2013
	lhi	%r8,0
	lr	%r4,%r6
	ic	%r8,1(%r12)
	ltr	%r8,%r8
	je	.L1968
	cr	%r13,%r8
	jne	.L1968
	ic	%r1,3(%r5)
	lhi	%r7,255
	nr	%r7,%r1
	je	.L2013
	lhi	%r1,0
	ic	%r1,1(%r6)
	ltr	%r1,%r1
	je	.L1968
	lr	%r4,%r12
	ahi	%r4,2
	cr	%r7,%r1
	jne	.L1968
	ahi	%r5,4
	lr	%r6,%r12
	ahi	%r6,3
	icm	%r1,1,0(%r5)
	je	.L2013
	icm	%r12,1,3(%r12)
	lr	%r4,%r6
	jne	.L1965
	ahi	%r2,1
	j	.L2014
.L2017:
	lhi	%r2,0
.L1961:
	lm	%r6,%r13,64(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	br	%r14
.L2013:
	.cfi_restore_state
	ic	%r12,1(%r4)
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	jne	.L1968
	j	.L1961
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	larl	%r5,.L2032
	kdb	%f0,.L2033-.L2032(%r5)
	jl	.L2031
	jnh	.L2024
	kdb	%f2,.L2033-.L2032(%r5)
	jl	.L2023
.L2024:
	br	%r14
.L2031:
	kdb	%f2,.L2033-.L2032(%r5)
	jnh	.L2024
.L2023:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2032:
.L2033:
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
	jl	.L2043
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L2043
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ic	%r9,0(%r4)
	lhi	%r12,255
	nr	%r12,%r9
	j	.L2040
.L2044:
	lr	%r2,%r5
.L2036:
	clr	%r3,%r2
	jl	.L2045
.L2040:
	lhi	%r1,0
	lr	%r5,%r2
	ic	%r1,0(%r2)
	ahi	%r5,1
	cr	%r1,%r12
	jne	.L2044
	chi	%r0,1
	je	.L2034
.L2039:
	lr	%r11,%r0
	lhi	%r10,7
	ahi	%r11,-1
	lhi	%r1,1
	nr	%r10,%r11
	je	.L2063
	chi	%r10,1
	je	.L2085
	chi	%r10,2
	je	.L2086
	chi	%r10,3
	je	.L2087
	chi	%r10,4
	je	.L2088
	chi	%r10,5
	je	.L2089
	chi	%r10,6
	je	.L2090
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	jne	.L2100
.L2090:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2100
	ahi	%r1,1
.L2089:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2100
	ahi	%r1,1
.L2088:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2100
	ahi	%r1,1
.L2087:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2100
	ahi	%r1,1
.L2086:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2100
	ahi	%r1,1
.L2085:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2100
	ahi	%r1,1
	cr	%r1,%r0
	je	.L2034
.L2063:
	srl	%r11,3
.L2037:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2100
	lhi	%r10,1
	ic	%r8,1(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2100
	lhi	%r10,2
	ic	%r8,2(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2100
	lhi	%r10,3
	ic	%r8,3(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2100
	lhi	%r10,4
	ic	%r8,4(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2100
	lhi	%r10,5
	ic	%r8,5(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2100
	lhi	%r10,6
	ic	%r8,6(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2100
	lhi	%r10,7
	ic	%r8,7(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2100
	ahi	%r1,8
	brct	%r11,.L2037
.L2034:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2100:
	.cfi_restore_state
	clr	%r3,%r5
	jl	.L2045
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L2036
	lr	%r11,%r5
	lr	%r5,%r2
	lr	%r2,%r11
	j	.L2039
.L2045:
	lhi	%r2,0
	lm	%r8,%r12,76(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2043:
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
	je	.L2111
	brasl	%r14,memmove
.L2111:
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
	larl	%r5,.L2144
	kdb	%f0,.L2145-.L2144(%r5)
	jl	.L2140
	kdb	%f0,.L2146-.L2144(%r5)
	jnhe	.L2141
	lhi	%r3,0
.L2120:
	lhi	%r0,0
.L2126:
	ahi	%r0,1
	mdb	%f0,.L2147-.L2144(%r5)
	kdb	%f0,.L2146-.L2144(%r5)
	jhe	.L2126
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L2143:
	lcdbr	%f0,%f0
	br	%r14
.L2141:
	kdb	%f0,.L2147-.L2144(%r5)
	jnl	.L2123
	cdb	%f0,.L2145-.L2144(%r5)
	jne	.L2132
.L2123:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L2140:
	lcdbr	%f2,%f0
	kdb	%f0,.L2148-.L2144(%r5)
	jnle	.L2142
	lhi	%r3,1
	ldr	%f0,%f2
	j	.L2120
.L2142:
	kdb	%f0,.L2149-.L2144(%r5)
	jnh	.L2123
	lhi	%r3,1
.L2121:
	lhi	%r0,0
	ldr	%f0,%f2
.L2128:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L2147-.L2144(%r5)
	jl	.L2128
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L2143
	br	%r14
.L2132:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L2121
	.section	.rodata
	.align	8
.L2144:
.L2149:
	.long	-1075838976
	.long	0
.L2148:
	.long	-1074790400
	.long	0
.L2147:
	.long	1071644672
	.long	0
.L2146:
	.long	1072693248
	.long	0
.L2145:
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
	je	.L2154
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
.L2153:
	lhi	%r10,0
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r2,%r10
	lcr	%r3,%r11
	srdl	%r0,1
	je	.L2156
	ahi	%r2,-1
.L2156:
	lr	%r8,%r2
	lr	%r9,%r3
	nr	%r8,%r12
	nr	%r9,%r13
	alr	%r5,%r9
	lr	%r7,%r0
	alcr	%r4,%r8
	sldl	%r12,1
	or	%r7,%r1
	jne	.L2153
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
.L2154:
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
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r3,%r2
	lr	%r11,%r2
	jhe	.L2202
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r5,4
.L2163:
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ltr	%r3,%r3
	jl	.L2168
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2165
	ahi	%r2,-8
	brct	%r5,.L2163
.L2166:
	ltr	%r4,%r4
	je	.L2162
	lr	%r2,%r11
.L2162:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2165:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2178
.L2168:
	lhi	%r2,0
	j	.L2173
.L2203:
	lr	%r12,%r1
.L2172:
	or	%r2,%r12
	srl	%r1,1
	ltr	%r1,%r1
	srl	%r3,1
	je	.L2166
.L2173:
	lr	%r12,%r11
	sr	%r12,%r3
	lr	%r0,%r11
	lhi	%r5,0
	slr	%r11,%r3
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L2170
	lr	%r0,%r12
.L2170:
	ltr	%r5,%r5
	lr	%r11,%r0
	jne	.L2203
	lhi	%r12,0
	j	.L2172
.L2202:
	sr	%r2,%r3
	lr	%r1,%r11
	lhi	%r0,0
	slr	%r1,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2176
	lr	%r11,%r2
.L2176:
	lhi	%r2,255
	nr	%r2,%r0
	j	.L2166
.L2178:
	lhi	%r2,0
	j	.L2166
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
	je	.L2207
	stm	%r14,%r15,88(%r15)
	sll	%r2,8
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__clzsi2
	l	%r4,96(%r15)
	ahi	%r2,-1
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r4
.L2207:
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
	srda	%r0,63
	lr	%r4,%r2
	lr	%r5,%r3
	xr	%r2,%r0
	xr	%r3,%r1
	cr	%r4,%r0
	je	.L2222
.L2217:
	stm	%r14,%r15,88(%r15)
	.cfi_offset 14, -8
	.cfi_offset 15, -4
	ahi	%r15,-8
	.cfi_def_cfa_offset 104
	brasl	%r14,__clzdi2
	l	%r1,96(%r15)
	ahi	%r2,-1
	lm	%r14,%r15,96(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r1
.L2222:
	cr	%r5,%r1
	jne	.L2217
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
	ltr	%r4,%r2
	lhi	%r2,0
	ber	%r14
.L2226:
	lhi	%r1,1
	nr	%r1,%r4
	srl	%r4,1
	lcr	%r0,%r1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r2,%r0
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r4
	srl	%r4,1
	lcr	%r0,%r1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r2,%r0
	ltr	%r4,%r4
	jne	.L2226
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
	lr	%r1,%r4
	nr	%r12,%r4
	srl	%r1,3
	clr	%r2,%r3
	jl	.L2235
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2412
.L2235:
	ltr	%r1,%r1
	je	.L2413
	sll	%r1,3
	lhi	%r5,7
	lr	%r9,%r1
	lr	%r8,%r9
	ahi	%r8,-8
	lhi	%r1,0
	srl	%r8,3
	ahi	%r8,1
	nr	%r5,%r8
	je	.L2309
	chi	%r5,1
	je	.L2345
	chi	%r5,2
	je	.L2346
	chi	%r5,3
	je	.L2347
	chi	%r5,4
	je	.L2348
	chi	%r5,5
	je	.L2349
	chi	%r5,6
	je	.L2350
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L2350:
	l	%r10,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	st	%r10,0(%r1,%r2)
	ahi	%r1,8
.L2349:
	l	%r5,0(%r1,%r3)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	st	%r5,0(%r1,%r2)
	ahi	%r1,8
.L2348:
	l	%r10,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	st	%r10,0(%r1,%r2)
	ahi	%r1,8
.L2347:
	l	%r5,0(%r1,%r3)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	st	%r5,0(%r1,%r2)
	ahi	%r1,8
.L2346:
	l	%r10,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	st	%r10,0(%r1,%r2)
	ahi	%r1,8
.L2345:
	l	%r5,0(%r1,%r3)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	st	%r5,0(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r9
	je	.L2401
.L2309:
	srl	%r8,3
.L2238:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	st	%r9,0(%r1,%r2)
	l	%r5,8(%r1,%r3)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	st	%r5,8(%r1,%r2)
	l	%r0,16(%r1,%r3)
	l	%r9,20(%r1,%r3)
	st	%r9,20(%r1,%r2)
	st	%r0,16(%r1,%r2)
	l	%r10,24(%r1,%r3)
	l	%r5,28(%r1,%r3)
	st	%r5,28(%r1,%r2)
	st	%r10,24(%r1,%r2)
	l	%r0,32(%r1,%r3)
	l	%r11,36(%r1,%r3)
	st	%r11,36(%r1,%r2)
	st	%r0,32(%r1,%r2)
	l	%r9,40(%r1,%r3)
	l	%r10,44(%r1,%r3)
	st	%r10,44(%r1,%r2)
	st	%r9,40(%r1,%r2)
	l	%r5,48(%r1,%r3)
	l	%r0,52(%r1,%r3)
	st	%r0,52(%r1,%r2)
	st	%r5,48(%r1,%r2)
	l	%r9,56(%r1,%r3)
	l	%r11,60(%r1,%r3)
	st	%r11,60(%r1,%r2)
	st	%r9,56(%r1,%r2)
	ahi	%r1,64
	brct	%r8,.L2238
.L2401:
	clr	%r4,%r12
	jle	.L2231
	lr	%r10,%r4
	sr	%r10,%r12
	lr	%r8,%r10
	lhi	%r1,6
	ahi	%r8,-1
	clr	%r8,%r1
	jle	.L2351
	lr	%r9,%r12
	ahi	%r9,1
	ar	%r9,%r3
	lr	%r5,%r2
	ar	%r5,%r12
	lr	%r11,%r3
	lr	%r0,%r5
	ar	%r11,%r12
	sr	%r0,%r9
	lhi	%r8,2
	clr	%r0,%r8
	jle	.L2351
	lr	%r1,%r11
	lhi	%r9,3
	or	%r1,%r5
	nr	%r1,%r9
	ahi	%r1,-1
	ltr	%r1,%r1
	jhe	.L2351
	lhi	%r9,-4
	lhi	%r8,7
	nr	%r9,%r10
	lhi	%r1,0
	lr	%r0,%r9
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	nr	%r8,%r0
	je	.L2288
	chi	%r8,1
	je	.L2352
	chi	%r8,2
	je	.L2353
	chi	%r8,3
	je	.L2354
	chi	%r8,4
	je	.L2355
	chi	%r8,5
	je	.L2356
	chi	%r8,6
	je	.L2357
	l	%r1,0(%r11)
	st	%r1,0(%r5)
	lhi	%r1,4
.L2357:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2356:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2355:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2354:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2353:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2352:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L2400
.L2288:
	srl	%r0,3
.L2241:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	l	%r8,4(%r1,%r11)
	st	%r8,4(%r1,%r5)
	l	%r8,8(%r1,%r11)
	st	%r8,8(%r1,%r5)
	l	%r8,12(%r1,%r11)
	st	%r8,12(%r1,%r5)
	l	%r8,16(%r1,%r11)
	st	%r8,16(%r1,%r5)
	l	%r8,20(%r1,%r11)
	st	%r8,20(%r1,%r5)
	l	%r8,24(%r1,%r11)
	st	%r8,24(%r1,%r5)
	l	%r8,28(%r1,%r11)
	st	%r8,28(%r1,%r5)
	ahi	%r1,32
	brct	%r0,.L2241
.L2400:
	ar	%r12,%r9
	cr	%r9,%r10
	je	.L2231
	lr	%r10,%r12
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r10,1
	clr	%r4,%r10
	jle	.L2231
	ahi	%r10,1
	ic	%r11,1(%r12,%r3)
	stc	%r11,1(%r12,%r2)
	clr	%r4,%r10
	jle	.L2231
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2231:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2412:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L2231
	lhi	%r0,7
	nr	%r0,%r4
	je	.L2330
	chi	%r0,1
	je	.L2339
	chi	%r0,2
	je	.L2340
	chi	%r0,3
	je	.L2341
	chi	%r0,4
	je	.L2342
	chi	%r0,5
	je	.L2343
	chi	%r0,6
	jne	.L2414
.L2344:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L2343:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
.L2342:
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahi	%r9,-1
.L2341:
	ic	%r1,0(%r9,%r3)
	stc	%r1,0(%r9,%r2)
	ahi	%r9,-1
.L2340:
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahi	%r9,-1
.L2339:
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L2231
.L2330:
	srl	%r4,3
.L2236:
	lr	%r8,%r9
	ahi	%r8,-1
	ic	%r11,0(%r9,%r3)
	lr	%r10,%r9
	stc	%r11,0(%r9,%r2)
	ahi	%r10,-2
	ahi	%r9,-8
	ic	%r12,0(%r8,%r3)
	stc	%r12,0(%r8,%r2)
	ahi	%r8,-2
	ic	%r1,0(%r10,%r3)
	stc	%r1,0(%r10,%r2)
	ahi	%r10,-2
	ic	%r5,0(%r8,%r3)
	stc	%r5,0(%r8,%r2)
	ahi	%r8,-2
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r10,-2
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	ahi	%r8,-2
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	brct	%r4,.L2236
	j	.L2231
.L2413:
	ltr	%r4,%r4
	je	.L2231
.L2351:
	lr	%r9,%r4
	lhi	%r0,7
	sr	%r9,%r12
	nr	%r0,%r9
	je	.L2267
	chi	%r0,1
	je	.L2358
	chi	%r0,2
	je	.L2359
	chi	%r0,3
	je	.L2360
	chi	%r0,4
	je	.L2361
	chi	%r0,5
	je	.L2362
	chi	%r0,6
	je	.L2363
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	ahi	%r12,1
.L2363:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
.L2362:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L2361:
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r12,1
.L2360:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
.L2359:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L2358:
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L2231
.L2267:
	srl	%r9,3
.L2243:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r8,1(%r12,%r3)
	stc	%r8,1(%r12,%r2)
	ic	%r10,2(%r12,%r3)
	stc	%r10,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ic	%r11,4(%r12,%r3)
	stc	%r11,4(%r12,%r2)
	ic	%r0,5(%r12,%r3)
	stc	%r0,5(%r12,%r2)
	ic	%r1,6(%r12,%r3)
	stc	%r1,6(%r12,%r2)
	ic	%r4,7(%r12,%r3)
	stc	%r4,7(%r12,%r2)
	ahi	%r12,8
	brct	%r9,.L2243
	j	.L2231
.L2414:
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
	j	.L2344
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
	jl	.L2420
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L2556
.L2420:
	ltr	%r0,%r0
	je	.L2419
	lr	%r11,%r0
	lhi	%r1,8
	ahi	%r11,-1
	clr	%r11,%r1
	jle	.L2423
	lr	%r10,%r3
	lhi	%r12,3
	or	%r10,%r2
	nr	%r10,%r12
	ahi	%r10,-1
	ltr	%r10,%r10
	jhe	.L2423
	lr	%r5,%r3
	ahi	%r5,2
	cr	%r2,%r5
	je	.L2423
	lhi	%r11,-4
	lhi	%r12,7
	nr	%r11,%r4
	lr	%r10,%r4
	lr	%r5,%r11
	ahi	%r5,-4
	srl	%r5,2
	srl	%r10,2
	ahi	%r5,1
	lhi	%r1,0
	nr	%r12,%r5
	je	.L2473
	chi	%r12,1
	je	.L2509
	chi	%r12,2
	je	.L2510
	chi	%r12,3
	je	.L2511
	chi	%r12,4
	je	.L2512
	chi	%r12,5
	je	.L2513
	chi	%r12,6
	je	.L2514
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L2514:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L2513:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L2512:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L2511:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L2510:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L2509:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r11
	je	.L2548
.L2473:
	srl	%r5,3
.L2424:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r12,4(%r1,%r3)
	st	%r12,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r12,12(%r1,%r3)
	st	%r12,12(%r1,%r2)
	l	%r12,16(%r1,%r3)
	st	%r12,16(%r1,%r2)
	l	%r12,20(%r1,%r3)
	st	%r12,20(%r1,%r2)
	l	%r12,24(%r1,%r3)
	st	%r12,24(%r1,%r2)
	l	%r12,28(%r1,%r3)
	st	%r12,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L2424
.L2548:
	sll	%r10,1
	cr	%r0,%r10
	je	.L2419
	lh	%r0,0(%r11,%r3)
	sth	%r0,0(%r11,%r2)
.L2419:
	tml	%r4,1
	je	.L2416
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2416:
	lm	%r10,%r12,84(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L2556:
	.cfi_restore_state
	lr	%r11,%r4
	ahi	%r11,-1
	ltr	%r4,%r4
	je	.L2416
	lhi	%r5,7
	nr	%r5,%r4
	je	.L2494
	chi	%r5,1
	je	.L2503
	chi	%r5,2
	je	.L2504
	chi	%r5,3
	je	.L2505
	chi	%r5,4
	je	.L2506
	chi	%r5,5
	je	.L2507
	chi	%r5,6
	jne	.L2557
.L2508:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	ahi	%r11,-1
.L2507:
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ahi	%r11,-1
.L2506:
	ic	%r1,0(%r11,%r3)
	stc	%r1,0(%r11,%r2)
	ahi	%r11,-1
.L2505:
	ic	%r5,0(%r11,%r3)
	stc	%r5,0(%r11,%r2)
	ahi	%r11,-1
.L2504:
	ic	%r10,0(%r11,%r3)
	stc	%r10,0(%r11,%r2)
	ahi	%r11,-1
.L2503:
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	ahi	%r11,-1
	chi	%r11,-1
	je	.L2416
.L2494:
	srl	%r4,3
.L2421:
	lr	%r1,%r11
	ahi	%r1,-1
	ic	%r0,0(%r11,%r3)
	lr	%r5,%r11
	stc	%r0,0(%r11,%r2)
	ahi	%r5,-2
	ahi	%r11,-8
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-2
	ic	%r12,0(%r5,%r3)
	stc	%r12,0(%r5,%r2)
	ahi	%r5,-2
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-2
	ic	%r10,0(%r5,%r3)
	stc	%r10,0(%r5,%r2)
	ahi	%r5,-2
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,-2
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	brct	%r4,.L2421
	j	.L2416
.L2423:
	sll	%r0,1
	lhi	%r10,7
	lr	%r11,%r0
	ahi	%r11,-2
	srl	%r11,1
	lhi	%r1,0
	ahi	%r11,1
	nr	%r10,%r11
	je	.L2452
	chi	%r10,1
	je	.L2515
	chi	%r10,2
	je	.L2516
	chi	%r10,3
	je	.L2517
	chi	%r10,4
	je	.L2518
	chi	%r10,5
	je	.L2519
	chi	%r10,6
	je	.L2520
	lh	%r5,0(%r3)
	lhi	%r1,2
	sth	%r5,0(%r2)
.L2520:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L2519:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L2518:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	ahi	%r1,2
.L2517:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L2516:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L2515:
	lh	%r5,0(%r1,%r3)
	sth	%r5,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L2419
.L2452:
	srl	%r11,3
.L2426:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r10,4(%r1,%r3)
	sth	%r10,4(%r1,%r2)
	lh	%r5,6(%r1,%r3)
	sth	%r5,6(%r1,%r2)
	lh	%r0,8(%r1,%r3)
	sth	%r0,8(%r1,%r2)
	lh	%r12,10(%r1,%r3)
	sth	%r12,10(%r1,%r2)
	lh	%r10,12(%r1,%r3)
	sth	%r10,12(%r1,%r2)
	lh	%r5,14(%r1,%r3)
	sth	%r5,14(%r1,%r2)
	ahi	%r1,16
	brct	%r11,.L2426
	j	.L2419
.L2557:
	ic	%r10,0(%r11,%r3)
	stc	%r10,0(%r11,%r2)
	lr	%r11,%r4
	ahi	%r11,-2
	j	.L2508
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
	lr	%r1,%r4
	nr	%r12,%r4
	srl	%r1,2
	clr	%r2,%r3
	jl	.L2563
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2740
.L2563:
	ltr	%r1,%r1
	je	.L2741
	sll	%r1,2
	lhi	%r5,7
	lr	%r8,%r1
	ahi	%r8,-4
	srl	%r8,2
	lr	%r9,%r1
	ahi	%r8,1
	lhi	%r10,0
	nr	%r5,%r8
	je	.L2637
	chi	%r5,1
	je	.L2673
	chi	%r5,2
	je	.L2674
	chi	%r5,3
	je	.L2675
	chi	%r5,4
	je	.L2676
	chi	%r5,5
	je	.L2677
	chi	%r5,6
	je	.L2678
	l	%r1,0(%r3)
	lhi	%r10,4
	st	%r1,0(%r2)
.L2678:
	l	%r0,0(%r10,%r3)
	st	%r0,0(%r10,%r2)
	ahi	%r10,4
.L2677:
	l	%r11,0(%r10,%r3)
	st	%r11,0(%r10,%r2)
	ahi	%r10,4
.L2676:
	l	%r5,0(%r10,%r3)
	st	%r5,0(%r10,%r2)
	ahi	%r10,4
.L2675:
	l	%r1,0(%r10,%r3)
	st	%r1,0(%r10,%r2)
	ahi	%r10,4
.L2674:
	l	%r0,0(%r10,%r3)
	st	%r0,0(%r10,%r2)
	ahi	%r10,4
.L2673:
	l	%r11,0(%r10,%r3)
	st	%r11,0(%r10,%r2)
	ahi	%r10,4
	cr	%r10,%r9
	je	.L2729
.L2637:
	srl	%r8,3
.L2566:
	l	%r9,0(%r10,%r3)
	st	%r9,0(%r10,%r2)
	l	%r5,4(%r10,%r3)
	st	%r5,4(%r10,%r2)
	l	%r1,8(%r10,%r3)
	st	%r1,8(%r10,%r2)
	l	%r0,12(%r10,%r3)
	st	%r0,12(%r10,%r2)
	l	%r11,16(%r10,%r3)
	st	%r11,16(%r10,%r2)
	l	%r9,20(%r10,%r3)
	st	%r9,20(%r10,%r2)
	l	%r5,24(%r10,%r3)
	st	%r5,24(%r10,%r2)
	l	%r1,28(%r10,%r3)
	st	%r1,28(%r10,%r2)
	ahi	%r10,32
	brct	%r8,.L2566
.L2729:
	clr	%r4,%r12
	jle	.L2559
	lr	%r10,%r4
	sr	%r10,%r12
	lr	%r8,%r10
	lhi	%r0,6
	ahi	%r8,-1
	clr	%r8,%r0
	jle	.L2679
	lr	%r9,%r12
	ahi	%r9,1
	ar	%r9,%r3
	lr	%r5,%r2
	ar	%r5,%r12
	lr	%r11,%r3
	lr	%r8,%r5
	ar	%r11,%r12
	sr	%r8,%r9
	lhi	%r1,2
	clr	%r8,%r1
	jle	.L2679
	lr	%r9,%r11
	lhi	%r0,3
	or	%r9,%r5
	nr	%r9,%r0
	ahi	%r9,-1
	ltr	%r9,%r9
	jhe	.L2679
	lhi	%r9,-4
	lhi	%r8,7
	nr	%r9,%r10
	lhi	%r1,0
	lr	%r0,%r9
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	nr	%r8,%r0
	je	.L2616
	chi	%r8,1
	je	.L2680
	chi	%r8,2
	je	.L2681
	chi	%r8,3
	je	.L2682
	chi	%r8,4
	je	.L2683
	chi	%r8,5
	je	.L2684
	chi	%r8,6
	je	.L2685
	l	%r1,0(%r11)
	st	%r1,0(%r5)
	lhi	%r1,4
.L2685:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2684:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2683:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2682:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2681:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2680:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L2728
.L2616:
	srl	%r0,3
.L2569:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	l	%r8,4(%r1,%r11)
	st	%r8,4(%r1,%r5)
	l	%r8,8(%r1,%r11)
	st	%r8,8(%r1,%r5)
	l	%r8,12(%r1,%r11)
	st	%r8,12(%r1,%r5)
	l	%r8,16(%r1,%r11)
	st	%r8,16(%r1,%r5)
	l	%r8,20(%r1,%r11)
	st	%r8,20(%r1,%r5)
	l	%r8,24(%r1,%r11)
	st	%r8,24(%r1,%r5)
	l	%r8,28(%r1,%r11)
	st	%r8,28(%r1,%r5)
	ahi	%r1,32
	brct	%r0,.L2569
.L2728:
	ar	%r12,%r9
	cr	%r9,%r10
	je	.L2559
	lr	%r10,%r12
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r10,1
	clr	%r4,%r10
	jle	.L2559
	ahi	%r10,1
	ic	%r11,1(%r12,%r3)
	stc	%r11,1(%r12,%r2)
	clr	%r4,%r10
	jle	.L2559
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2559:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2740:
	.cfi_restore_state
	lr	%r9,%r4
	ahi	%r9,-1
	ltr	%r4,%r4
	je	.L2559
	lhi	%r0,7
	nr	%r0,%r4
	je	.L2658
	chi	%r0,1
	je	.L2667
	chi	%r0,2
	je	.L2668
	chi	%r0,3
	je	.L2669
	chi	%r0,4
	je	.L2670
	chi	%r0,5
	je	.L2671
	chi	%r0,6
	jne	.L2742
.L2672:
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ahi	%r9,-1
.L2671:
	ic	%r11,0(%r9,%r3)
	stc	%r11,0(%r9,%r2)
	ahi	%r9,-1
.L2670:
	ic	%r12,0(%r9,%r3)
	stc	%r12,0(%r9,%r2)
	ahi	%r9,-1
.L2669:
	ic	%r1,0(%r9,%r3)
	stc	%r1,0(%r9,%r2)
	ahi	%r9,-1
.L2668:
	ic	%r5,0(%r9,%r3)
	stc	%r5,0(%r9,%r2)
	ahi	%r9,-1
.L2667:
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ahi	%r9,-1
	chi	%r9,-1
	je	.L2559
.L2658:
	srl	%r4,3
.L2564:
	lr	%r8,%r9
	ahi	%r8,-1
	ic	%r11,0(%r9,%r3)
	lr	%r10,%r9
	stc	%r11,0(%r9,%r2)
	ahi	%r10,-2
	ahi	%r9,-8
	ic	%r12,0(%r8,%r3)
	stc	%r12,0(%r8,%r2)
	ahi	%r8,-2
	ic	%r1,0(%r10,%r3)
	stc	%r1,0(%r10,%r2)
	ahi	%r10,-2
	ic	%r5,0(%r8,%r3)
	stc	%r5,0(%r8,%r2)
	ahi	%r8,-2
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ahi	%r10,-2
	ic	%r11,0(%r8,%r3)
	stc	%r11,0(%r8,%r2)
	ahi	%r8,-2
	ic	%r12,0(%r10,%r3)
	stc	%r12,0(%r10,%r2)
	ic	%r10,0(%r8,%r3)
	stc	%r10,0(%r8,%r2)
	brct	%r4,.L2564
	j	.L2559
.L2741:
	ltr	%r4,%r4
	je	.L2559
.L2679:
	lr	%r9,%r4
	lhi	%r0,7
	sr	%r9,%r12
	nr	%r0,%r9
	je	.L2595
	chi	%r0,1
	je	.L2686
	chi	%r0,2
	je	.L2687
	chi	%r0,3
	je	.L2688
	chi	%r0,4
	je	.L2689
	chi	%r0,5
	je	.L2690
	chi	%r0,6
	je	.L2691
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	ahi	%r12,1
.L2691:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
.L2690:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L2689:
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r12,1
.L2688:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
.L2687:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L2686:
	ic	%r1,0(%r12,%r3)
	stc	%r1,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L2559
.L2595:
	srl	%r9,3
.L2571:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r8,1(%r12,%r3)
	stc	%r8,1(%r12,%r2)
	ic	%r10,2(%r12,%r3)
	stc	%r10,2(%r12,%r2)
	ic	%r5,3(%r12,%r3)
	stc	%r5,3(%r12,%r2)
	ic	%r11,4(%r12,%r3)
	stc	%r11,4(%r12,%r2)
	ic	%r0,5(%r12,%r3)
	stc	%r0,5(%r12,%r2)
	ic	%r1,6(%r12,%r3)
	stc	%r1,6(%r12,%r2)
	ic	%r4,7(%r12,%r3)
	stc	%r4,7(%r12,%r2)
	ahi	%r12,8
	brct	%r9,.L2571
	j	.L2559
.L2742:
	ic	%r8,0(%r9,%r3)
	stc	%r8,0(%r9,%r2)
	lr	%r9,%r4
	ahi	%r9,-2
	j	.L2672
	.cfi_endproc
.LFE107:
	.size	__cmovw, .-__cmovw
	.align	8
.globl __modi
	.type	__modi, @function
__modi:
.LFB108:
	.cfi_startproc
	lhi	%r5,0
	lr	%r4,%r2
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
	larl	%r5,.L2749
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L2750-.L2749(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2749:
.L2750:
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
	larl	%r5,.L2754
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L2752
	adb	%f0,.L2755-.L2754(%r5)
.L2752:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2754:
.L2755:
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
	jne	.L2767
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2768
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2769
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2770
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2771
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2772
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2773
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2774
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2775
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2776
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2777
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2778
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2779
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2780
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2767:
	lhi	%r2,0
	br	%r14
.L2778:
	lhi	%r2,12
	br	%r14
.L2768:
	lhi	%r2,2
	br	%r14
.L2769:
	lhi	%r2,3
	br	%r14
.L2770:
	lhi	%r2,4
	br	%r14
.L2771:
	lhi	%r2,5
	br	%r14
.L2772:
	lhi	%r2,6
	br	%r14
.L2773:
	lhi	%r2,7
	br	%r14
.L2774:
	lhi	%r2,8
	br	%r14
.L2775:
	lhi	%r2,9
	br	%r14
.L2776:
	lhi	%r2,10
	br	%r14
.L2777:
	lhi	%r2,11
	br	%r14
.L2779:
	lhi	%r2,13
	br	%r14
.L2780:
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
	jne	.L2787
	tml	%r2,2
	jne	.L2788
	tml	%r2,4
	jne	.L2789
	tml	%r2,8
	jne	.L2790
	tml	%r2,16
	jne	.L2791
	tml	%r2,32
	jne	.L2792
	tml	%r2,64
	jne	.L2793
	tml	%r2,128
	jne	.L2794
	tml	%r2,256
	jne	.L2795
	tml	%r2,512
	jne	.L2796
	tml	%r2,1024
	jne	.L2797
	tml	%r2,2048
	jne	.L2798
	tml	%r2,4096
	jne	.L2799
	tml	%r2,8192
	jne	.L2800
	tml	%r2,16384
	jne	.L2801
	lr	%r1,%r2
	sra	%r1,15
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2787:
	lhi	%r2,0
	br	%r14
.L2788:
	lhi	%r2,1
	br	%r14
.L2799:
	lhi	%r2,12
	br	%r14
.L2789:
	lhi	%r2,2
	br	%r14
.L2790:
	lhi	%r2,3
	br	%r14
.L2791:
	lhi	%r2,4
	br	%r14
.L2792:
	lhi	%r2,5
	br	%r14
.L2793:
	lhi	%r2,6
	br	%r14
.L2794:
	lhi	%r2,7
	br	%r14
.L2795:
	lhi	%r2,8
	br	%r14
.L2796:
	lhi	%r2,9
	br	%r14
.L2797:
	lhi	%r2,10
	br	%r14
.L2798:
	lhi	%r2,11
	br	%r14
.L2800:
	lhi	%r2,13
	br	%r14
.L2801:
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
	larl	%r5,.L2813
	keb	%f0,.L2814-.L2813(%r5)
	jhe	.L2812
	cfebr	%r2,5,%f0
	br	%r14
.L2812:
	seb	%f0,.L2814-.L2813(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L2815-.L2813(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2813:
.L2814:
	.long	1191182336
.L2815:
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
	sra	%r2,1
	lhi	%r4,1
	nr	%r4,%r1
	nr	%r2,%r3
	lr	%r0,%r1
	lhi	%r5,1
	sra	%r0,2
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,3
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,4
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,5
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,6
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,7
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,8
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,9
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,10
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,11
	nr	%r4,%r3
	ar	%r2,%r0
	lhi	%r5,1
	lr	%r0,%r1
	sra	%r0,12
	ar	%r2,%r4
	nr	%r0,%r5
	lr	%r4,%r1
	lhi	%r3,1
	sra	%r4,13
	ar	%r2,%r0
	nr	%r4,%r3
	lr	%r0,%r1
	lhi	%r5,1
	sra	%r0,14
	ar	%r2,%r4
	nr	%r0,%r5
	sra	%r1,15
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
	lr	%r1,%r2
	lhi	%r3,1
	sra	%r1,1
	lhi	%r4,1
	nr	%r4,%r2
	nr	%r1,%r3
	lr	%r0,%r2
	lhi	%r5,1
	sra	%r0,2
	ar	%r1,%r4
	nr	%r0,%r5
	lr	%r4,%r2
	lhi	%r3,1
	sra	%r4,3
	nr	%r4,%r3
	ar	%r1,%r0
	lhi	%r5,1
	lr	%r0,%r2
	sra	%r0,4
	ar	%r1,%r4
	nr	%r0,%r5
	lr	%r4,%r2
	lhi	%r3,1
	sra	%r4,5
	nr	%r4,%r3
	ar	%r1,%r0
	lhi	%r5,1
	lr	%r0,%r2
	sra	%r0,6
	ar	%r1,%r4
	nr	%r0,%r5
	lr	%r4,%r2
	lhi	%r3,1
	sra	%r4,7
	nr	%r4,%r3
	ar	%r1,%r0
	lhi	%r5,1
	lr	%r0,%r2
	sra	%r0,8
	ar	%r1,%r4
	nr	%r0,%r5
	lr	%r4,%r2
	lhi	%r3,1
	sra	%r4,9
	nr	%r4,%r3
	ar	%r1,%r0
	lhi	%r5,1
	lr	%r0,%r2
	sra	%r0,10
	ar	%r1,%r4
	nr	%r0,%r5
	lr	%r4,%r2
	lhi	%r3,1
	sra	%r4,11
	nr	%r4,%r3
	ar	%r1,%r0
	lhi	%r5,1
	lr	%r0,%r2
	sra	%r0,12
	ar	%r1,%r4
	nr	%r0,%r5
	lr	%r4,%r2
	lhi	%r3,1
	sra	%r4,13
	ar	%r1,%r0
	nr	%r4,%r3
	lr	%r0,%r2
	lhi	%r5,1
	sra	%r0,14
	ar	%r1,%r4
	nr	%r0,%r5
	sra	%r2,15
	ar	%r1,%r0
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
	ltr	%r4,%r2
	lhi	%r2,0
	ber	%r14
.L2822:
	lhi	%r1,1
	nr	%r1,%r4
	srl	%r4,1
	lcr	%r0,%r1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r2,%r0
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r4
	srl	%r4,1
	lcr	%r0,%r1
	nr	%r0,%r3
	sll	%r3,1
	ar	%r2,%r0
	ltr	%r4,%r4
	jne	.L2822
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
	ltr	%r4,%r2
	lhi	%r2,0
	ber	%r14
	ltr	%r3,%r3
	ber	%r14
.L2829:
	lhi	%r1,1
	nr	%r1,%r3
	srl	%r3,1
	lcr	%r0,%r1
	nr	%r0,%r4
	sll	%r4,1
	ar	%r2,%r0
	ltr	%r3,%r3
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r3
	srl	%r3,1
	lcr	%r0,%r1
	nr	%r0,%r4
	sll	%r4,1
	ar	%r2,%r0
	ltr	%r3,%r3
	jne	.L2829
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
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r11,%r2
	jle	.L2875
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r5,4
.L2836:
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ltr	%r3,%r3
	jl	.L2841
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L2838
	ahi	%r2,-8
	brct	%r5,.L2836
.L2839:
	ltr	%r4,%r4
	je	.L2835
	lr	%r2,%r11
.L2835:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2838:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2851
.L2841:
	lhi	%r2,0
	j	.L2846
.L2876:
	lr	%r12,%r1
.L2845:
	or	%r2,%r12
	srl	%r1,1
	ltr	%r1,%r1
	srl	%r3,1
	je	.L2839
.L2846:
	lr	%r12,%r11
	sr	%r12,%r3
	lr	%r0,%r11
	lhi	%r5,0
	slr	%r11,%r3
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L2843
	lr	%r0,%r12
.L2843:
	ltr	%r5,%r5
	lr	%r11,%r0
	jne	.L2876
	lhi	%r12,0
	j	.L2845
.L2875:
	sr	%r2,%r3
	lr	%r1,%r11
	lhi	%r0,0
	slr	%r1,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2849
	lr	%r11,%r2
.L2849:
	lhi	%r2,255
	nr	%r2,%r0
	j	.L2839
.L2851:
	lhi	%r2,0
	j	.L2839
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
	jl	.L2881
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2881:
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
	jl	.L2886
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2886:
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
	ltr	%r3,%r3
	lr	%r4,%r2
	jl	.L2906
	je	.L2898
	lhi	%r0,0
.L2894:
	lhi	%r5,32
	lhi	%r2,0
	j	.L2897
.L2907:
	lr	%r1,%r5
	ahi	%r1,-1
	tml	%r1,255
	lr	%r5,%r1
	je	.L2896
.L2897:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	sll	%r4,1
	ar	%r2,%r1
	sra	%r3,1
	jne	.L2907
.L2896:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L2906:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L2894
.L2898:
	lhi	%r2,0
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
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ltr	%r2,%r2
	jl	.L2953
	lhi	%r1,1
	lhi	%r11,0
.L2910:
	ltr	%r3,%r3
	jhe	.L2911
	lcr	%r3,%r3
	lr	%r11,%r1
.L2911:
	clr	%r2,%r3
	lr	%r4,%r2
	lr	%r1,%r3
	jle	.L2954
	lhi	%r3,1
	lhi	%r5,4
.L2912:
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L2917
	brct	%r5,.L2912
.L2917:
	ltr	%r3,%r3
	lhi	%r2,0
	jne	.L2914
	j	.L2915
.L2955:
	lr	%r12,%r3
	srl	%r3,1
	or	%r2,%r12
	srl	%r1,1
	ltr	%r3,%r3
	je	.L2915
.L2914:
	lr	%r12,%r4
	sr	%r12,%r1
	lr	%r0,%r4
	lhi	%r5,0
	slr	%r4,%r1
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L2919
	lr	%r0,%r12
.L2919:
	ltr	%r5,%r5
	lr	%r4,%r0
	jne	.L2955
	lhi	%r12,0
	srl	%r3,1
	or	%r2,%r12
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L2914
.L2915:
	ltr	%r11,%r11
	je	.L2909
	lcr	%r2,%r2
.L2909:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L2953:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r1,0
	lhi	%r11,1
	j	.L2910
.L2954:
	slr	%r2,%r3
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L2915
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	ltr	%r4,%r2
	jl	.L2999
	lhi	%r0,0
.L2958:
	lpr	%r1,%r3
	lr	%r2,%r4
	clr	%r4,%r1
	jle	.L3000
	lhi	%r3,1
	lhi	%r5,4
.L2959:
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L2964
	brct	%r5,.L2959
.L2964:
	ltr	%r3,%r3
	je	.L2998
.L2961:
	lr	%r5,%r2
	sr	%r5,%r1
	clr	%r2,%r1
	lr	%r4,%r2
	jl	.L2966
	lr	%r4,%r5
.L2966:
	srl	%r3,1
	lr	%r2,%r4
	ltr	%r3,%r3
	srl	%r1,1
	jne	.L2961
.L2962:
	ltr	%r0,%r0
	ber	%r14
.L3001:
	lcr	%r2,%r2
	br	%r14
.L2999:
	lcr	%r4,%r4
	lhi	%r0,1
	j	.L2958
.L3000:
	sr	%r2,%r1
	clr	%r4,%r1
	jhe	.L2962
.L2998:
	ltr	%r0,%r0
	lr	%r2,%r4
	ber	%r14
	j	.L3001
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
	larl	%r13,.L3163
	clr	%r3,%r2
	lr	%r5,%r2
	jhe	.L3161
	tml	%r3,32768
	jne	.L3008
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3081
	tml	%r1,32768
	jne	.L3081
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3083
	tml	%r1,32768
	jne	.L3083
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3085
	tml	%r1,32768
	jne	.L3085
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3087
	tml	%r1,32768
	jne	.L3087
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3089
	tml	%r1,32768
	jne	.L3089
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3091
	tml	%r1,32768
	jne	.L3091
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3093
	tml	%r1,32768
	jne	.L3093
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3095
	tml	%r1,32768
	jne	.L3095
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3097
	tml	%r1,32768
	jne	.L3097
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3099
	tml	%r1,32768
	jne	.L3099
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3101
	tml	%r1,32768
	jne	.L3101
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3103
	tml	%r1,32768
	jne	.L3103
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3105
	tml	%r1,32768
	jne	.L3105
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L3164-.L3163(%r13)
	clr	%r2,%r1
	jle	.L3107
	tml	%r1,32768
	jne	.L3107
	sll	%r3,15
	n	%r3,.L3164-.L3163(%r13)
	clr	%r2,%r3
	jle	.L3108
	ltr	%r3,%r3
	lhi	%r2,0
	jne	.L3162
.L3011:
	ltr	%r4,%r4
	je	.L3070
	lr	%r2,%r5
.L3070:
	n	%r2,.L3164-.L3163(%r13)
	lm	%r10,%r13,80(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3081:
	.cfi_restore_state
	lhi	%r0,2
.L3010:
	lr	%r10,%r5
	sr	%r10,%r1
	n	%r10,.L3164-.L3163(%r13)
	clr	%r5,%r1
	jhe	.L3077
	lr	%r10,%r5
.L3077:
	n	%r10,.L3164-.L3163(%r13)
	clr	%r5,%r1
	jl	.L3078
	lr	%r12,%r0
.L3079:
	lr	%r11,%r1
	srl	%r11,1
	lr	%r5,%r10
	sr	%r5,%r11
	n	%r5,.L3164-.L3163(%r13)
	lr	%r2,%r0
	clr	%r10,%r11
	sll	%r2,16
	srl	%r2,17
	jhe	.L3013
	lr	%r5,%r10
.L3013:
	n	%r5,.L3164-.L3163(%r13)
	clr	%r10,%r11
	jhe	.L3015
	lhi	%r2,0
.L3015:
	l	%r3,.L3164-.L3163(%r13)
	nr	%r3,%r0
	lr	%r10,%r3
	or	%r2,%r12
	srl	%r10,2
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r3,%r10
	srl	%r11,2
	je	.L3011
	lr	%r12,%r5
	sr	%r12,%r11
	n	%r12,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3017
	lr	%r12,%r5
.L3017:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r12
	ltr	%r11,%r11
	jne	.L3019
	lhi	%r3,0
.L3019:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r3,%r2
	srl	%r10,3
	ltr	%r10,%r10
	lr	%r11,%r1
	lr	%r2,%r3
	lr	%r12,%r10
	srl	%r11,3
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3021
	lr	%r2,%r5
.L3021:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3023
	lhi	%r12,0
.L3023:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r12,%r3
	srl	%r10,4
	ltr	%r10,%r10
	lr	%r3,%r1
	lr	%r2,%r12
	lr	%r11,%r10
	srl	%r3,4
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3025
	lr	%r2,%r5
.L3025:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3027
	lhi	%r11,0
.L3027:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r11,%r12
	lr	%r12,%r10
	srl	%r12,5
	lr	%r3,%r1
	ltr	%r12,%r12
	lr	%r2,%r11
	lr	%r10,%r12
	srl	%r3,5
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3164-.L3163(%r13)
	lr	%r12,%r5
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3029
	lr	%r2,%r5
.L3029:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3031
	lhi	%r10,0
.L3031:
	l	%r12,.L3164-.L3163(%r13)
	nr	%r12,%r0
	or	%r10,%r11
	srl	%r12,6
	ltr	%r12,%r12
	lr	%r11,%r1
	lr	%r2,%r10
	lr	%r3,%r12
	srl	%r11,6
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3164-.L3163(%r13)
	lr	%r12,%r5
	slr	%r12,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3033
	lr	%r2,%r5
.L3033:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3035
	lhi	%r3,0
.L3035:
	l	%r12,.L3164-.L3163(%r13)
	nr	%r12,%r0
	or	%r3,%r10
	lr	%r10,%r12
	srl	%r10,7
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r2,%r3
	lr	%r12,%r10
	srl	%r11,7
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3037
	lr	%r2,%r5
.L3037:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3039
	lhi	%r12,0
.L3039:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r12,%r3
	srl	%r10,8
	ltr	%r10,%r10
	lr	%r3,%r1
	lr	%r2,%r12
	lr	%r11,%r10
	srl	%r3,8
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3041
	lr	%r2,%r5
.L3041:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3043
	lhi	%r11,0
.L3043:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r11,%r12
	lr	%r12,%r10
	srl	%r12,9
	lr	%r3,%r1
	ltr	%r12,%r12
	lr	%r2,%r11
	lr	%r10,%r12
	srl	%r3,9
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3164-.L3163(%r13)
	lr	%r12,%r5
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3045
	lr	%r2,%r5
.L3045:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3047
	lhi	%r10,0
.L3047:
	l	%r12,.L3164-.L3163(%r13)
	nr	%r12,%r0
	or	%r10,%r11
	lr	%r11,%r12
	srl	%r11,10
	lr	%r12,%r1
	ltr	%r11,%r11
	lr	%r2,%r10
	lr	%r3,%r11
	srl	%r12,10
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r12
	n	%r2,.L3164-.L3163(%r13)
	lr	%r11,%r5
	slr	%r11,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	jne	.L3049
	lr	%r2,%r5
.L3049:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r12,%r12
	jne	.L3051
	lhi	%r3,0
.L3051:
	l	%r11,.L3164-.L3163(%r13)
	nr	%r11,%r0
	or	%r3,%r10
	lr	%r10,%r11
	srl	%r10,11
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r2,%r3
	lr	%r12,%r10
	srl	%r11,11
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3053
	lr	%r2,%r5
.L3053:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3055
	lhi	%r12,0
.L3055:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r12,%r3
	srl	%r10,12
	ltr	%r10,%r10
	lr	%r3,%r1
	lr	%r2,%r12
	lr	%r11,%r10
	srl	%r3,12
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3057
	lr	%r2,%r5
.L3057:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3059
	lhi	%r11,0
.L3059:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r11,%r12
	srl	%r10,13
	ltr	%r10,%r10
	lr	%r12,%r1
	lr	%r2,%r11
	lr	%r3,%r10
	srl	%r12,13
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r12
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	jne	.L3061
	lr	%r2,%r5
.L3061:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r12,%r12
	je	.L3062
	lr	%r12,%r3
.L3063:
	l	%r10,.L3164-.L3163(%r13)
	nr	%r10,%r0
	or	%r12,%r11
	srl	%r10,14
	ltr	%r10,%r10
	lr	%r11,%r1
	lr	%r2,%r12
	lr	%r3,%r10
	srl	%r11,14
	je	.L3011
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3164-.L3163(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3065
	lr	%r2,%r5
.L3065:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3067
	lhi	%r3,0
.L3067:
	or	%r3,%r12
	n	%r0,.L3164-.L3163(%r13)
	chi	%r0,16384
	srl	%r1,15
	lr	%r2,%r3
	je	.L3011
	lr	%r12,%r5
	sr	%r12,%r1
	l	%r0,.L3164-.L3163(%r13)
	nr	%r0,%r12
	lr	%r10,%r5
	lhi	%r2,0
	slr	%r10,%r1
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L3068
	lr	%r1,%r0
.L3069:
	l	%r5,.L3164-.L3163(%r13)
	or	%r2,%r3
	nr	%r5,%r1
	j	.L3011
.L3078:
	lhi	%r12,0
	j	.L3079
.L3062:
	lhi	%r12,0
	j	.L3063
.L3068:
	lr	%r1,%r5
	j	.L3069
.L3083:
	lhi	%r0,4
	j	.L3010
.L3085:
	lhi	%r0,8
	j	.L3010
.L3087:
	lhi	%r0,16
	j	.L3010
.L3097:
	lhi	%r0,512
	j	.L3010
.L3089:
	lhi	%r0,32
	j	.L3010
.L3091:
	lhi	%r0,64
	j	.L3010
.L3093:
	lhi	%r0,128
	j	.L3010
.L3095:
	lhi	%r0,256
	j	.L3010
.L3161:
	lr	%r2,%r3
	lr	%r1,%r5
	xr	%r2,%r5
	sr	%r1,%r3
	ahi	%r2,-1
	n	%r1,.L3164-.L3163(%r13)
	lr	%r3,%r2
	ltr	%r3,%r3
	srl	%r2,31
	jl	.L3006
	lr	%r1,%r5
.L3006:
	l	%r5,.L3164-.L3163(%r13)
	nr	%r5,%r1
	j	.L3011
.L3099:
	lhi	%r0,1024
	j	.L3010
.L3101:
	lhi	%r0,2048
	j	.L3010
.L3103:
	lhi	%r0,4096
	j	.L3010
.L3105:
	lhi	%r0,8192
	j	.L3010
.L3107:
	lhi	%r0,16384
	j	.L3010
.L3162:
	lhi	%r0,-32768
	l	%r1,.L3165-.L3163(%r13)
	j	.L3010
.L3108:
	l	%r1,.L3165-.L3163(%r13)
	lhi	%r0,-32768
	j	.L3010
.L3008:
	sr	%r5,%r3
	lhi	%r2,1
	n	%r5,.L3164-.L3163(%r13)
	j	.L3011
	.section	.rodata
	.align	8
.L3163:
.L3165:
	.long	32768
.L3164:
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
	stm	%r11,%r12,88(%r15)
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r11,%r2
	jle	.L3206
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r5,4
.L3167:
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ltr	%r3,%r3
	jl	.L3172
	sll	%r3,1
	sll	%r1,1
	clr	%r11,%r3
	jle	.L3169
	ahi	%r2,-8
	brct	%r5,.L3167
.L3170:
	ltr	%r4,%r4
	je	.L3166
	lr	%r2,%r11
.L3166:
	lm	%r11,%r12,88(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L3169:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L3182
.L3172:
	lhi	%r2,0
	j	.L3177
.L3207:
	lr	%r12,%r1
.L3176:
	or	%r2,%r12
	srl	%r1,1
	ltr	%r1,%r1
	srl	%r3,1
	je	.L3170
.L3177:
	lr	%r12,%r11
	sr	%r12,%r3
	lr	%r0,%r11
	lhi	%r5,0
	slr	%r11,%r3
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L3174
	lr	%r0,%r12
.L3174:
	ltr	%r5,%r5
	lr	%r11,%r0
	jne	.L3207
	lhi	%r12,0
	j	.L3176
.L3206:
	sr	%r2,%r3
	lr	%r1,%r11
	lhi	%r0,0
	slr	%r1,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3180
	lr	%r11,%r2
.L3180:
	lhi	%r2,255
	nr	%r2,%r0
	j	.L3170
.L3182:
	lhi	%r2,0
	j	.L3170
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
	je	.L3210
	lhi	%r1,0
	lr	%r2,%r3
	lr	%r3,%r1
	sll	%r2,4064(%r4)
	br	%r14
.L3210:
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,32
	sll	%r2,0(%r4)
	sr	%r5,%r4
	lr	%r1,%r3
	srl	%r3,0(%r5)
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
	je	.L3216
	lr	%r1,%r2
	sra	%r1,31
	lr	%r3,%r2
	lr	%r2,%r1
	sra	%r3,4064(%r4)
	br	%r14
.L3216:
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,32
	srl	%r3,0(%r4)
	sr	%r5,%r4
	lr	%r1,%r2
	sll	%r2,0(%r5)
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
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3229
	lhi	%r4,0
	lr	%r1,%r2
	lhi	%r12,8
	lhi	%r5,4
	cl	%r2,.L3230-.L3229(%r13)
	lhi	%r2,16
	slbr	%r4,%r4
	l	%r3,.L3231-.L3229(%r13)
	lcr	%r0,%r4
	lhi	%r4,240
	sll	%r0,4
	sr	%r2,%r0
	srl	%r1,0(%r2)
	lhi	%r2,2
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,3
	sr	%r12,%r3
	ar	%r0,%r3
	srl	%r1,0(%r12)
	lhi	%r12,12
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,2
	sr	%r5,%r4
	ar	%r0,%r4
	srl	%r1,0(%r5)
	lr	%r5,%r2
	nr	%r12,%r1
	ahi	%r12,-1
	srl	%r12,31
	sll	%r12,1
	sr	%r5,%r12
	srl	%r1,0(%r5)
	tml	%r1,2
	jne	.L3226
	ar	%r12,%r0
	sr	%r2,%r1
	ar	%r2,%r12
	lm	%r12,%r13,88(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L3226:
	.cfi_restore_state
	ar	%r12,%r0
	lhi	%r2,0
	ar	%r2,%r12
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L3229:
.L3231:
	.long	65280
.L3230:
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
	jl	.L3236
	jh	.L3237
	clr	%r3,%r5
	jl	.L3236
	jh	.L3237
	lhi	%r2,1
	br	%r14
.L3236:
	lhi	%r2,0
	br	%r14
.L3237:
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
	jl	.L3243
	jh	.L3242
	clr	%r3,%r5
	jl	.L3243
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3243:
	lhi	%r2,-1
	br	%r14
.L3242:
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
	larl	%r13,.L3247
	lr	%r1,%r2
	lhi	%r5,15
	lhi	%r0,3
	lhi	%r3,2
	l	%r4,.L3248-.L3247(%r13)
	nr	%r4,%r2
	ahi	%r4,-1
	lhi	%r2,255
	srl	%r4,31
	l	%r13,92(%r15)
	.cfi_restore 13
	sll	%r4,4
	srl	%r1,0(%r4)
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	ar	%r2,%r4
	nr	%r5,%r1
	lhi	%r4,3
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,2
	srl	%r1,0(%r5)
	ar	%r2,%r5
	nr	%r4,%r1
	lhi	%r5,1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,1
	srl	%r1,0(%r4)
	ar	%r2,%r4
	nr	%r0,%r1
	nr	%r1,%r5
	srl	%r0,1
	xr	%r1,%r5
	lcr	%r1,%r1
	sr	%r3,%r0
	nr	%r1,%r3
	ar	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L3247:
.L3248:
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
	je	.L3250
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L3250:
	ltr	%r4,%r4
	ber	%r14
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lhi	%r12,32
	sr	%r12,%r4
	lr	%r1,%r3
	lr	%r5,%r2
	srl	%r1,0(%r4)
	sll	%r2,0(%r12)
	srl	%r5,0(%r4)
	lr	%r3,%r2
	l	%r12,92(%r15)
	.cfi_restore 12
	or	%r3,%r1
	lr	%r2,%r5
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
	larl	%r13,.L3262
	lr	%r5,%r3
	srl	%r5,16
	l	%r4,.L3263-.L3262(%r13)
	nr	%r4,%r2
	l	%r1,.L3263-.L3262(%r13)
	nr	%r1,%r3
	lr	%r3,%r4
	srl	%r2,16
	msr	%r3,%r1
	msr	%r1,%r2
	msr	%r4,%r5
	msr	%r2,%r5
	lr	%r0,%r3
	srl	%r0,16
	ar	%r1,%r0
	l	%r5,.L3263-.L3262(%r13)
	nr	%r5,%r1
	srl	%r1,16
	ar	%r4,%r5
	n	%r3,.L3263-.L3262(%r13)
	ar	%r1,%r2
	lr	%r2,%r4
	sll	%r4,16
	srl	%r2,16
	ar	%r2,%r1
	ar	%r3,%r4
	l	%r13,92(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L3262:
.L3263:
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
	larl	%r13,.L3266
	lr	%r12,%r3
	lr	%r10,%r3
	srl	%r10,16
	lr	%r11,%r5
	l	%r0,.L3267-.L3266(%r13)
	nr	%r0,%r3
	l	%r1,.L3267-.L3266(%r13)
	lr	%r3,%r0
	nr	%r1,%r5
	srl	%r11,16
	msr	%r3,%r1
	msr	%r1,%r10
	msr	%r0,%r11
	msr	%r10,%r11
	lr	%r11,%r3
	srl	%r11,16
	ar	%r1,%r11
	n	%r3,.L3267-.L3266(%r13)
	msr	%r12,%r4
	l	%r4,.L3267-.L3266(%r13)
	nr	%r4,%r1
	msr	%r2,%r5
	ar	%r0,%r4
	srl	%r1,16
	ar	%r1,%r10
	lr	%r5,%r0
	srl	%r5,16
	sll	%r0,16
	ar	%r1,%r5
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
.L3266:
.L3267:
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
	je	.L3269
	ahi	%r2,-1
.L3269:
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
	lhi	%r0,15
	lr	%r1,%r3
	srl	%r1,16
	xr	%r1,%r3
	lhi	%r2,27030
	lr	%r3,%r1
	srl	%r3,8
	xr	%r3,%r1
	lhi	%r5,1
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
	xr	%r1,%r2
	lhi	%r0,15
	lr	%r3,%r1
	srl	%r3,8
	xr	%r3,%r1
	lhi	%r2,27030
	lr	%r4,%r3
	srl	%r4,4
	xr	%r4,%r3
	lhi	%r5,1
	nr	%r4,%r0
	sra	%r2,0(%r4)
	nr	%r2,%r5
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
	stm	%r10,%r13,80(%r15)
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L3277
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r2,.L3278-.L3277(%r13)
	l	%r3,.L3278-.L3277(%r13)
	nr	%r2,%r0
	nr	%r3,%r1
	l	%r0,.L3279-.L3277(%r13)
	slr	%r5,%r3
	l	%r1,.L3279-.L3277(%r13)
	slbr	%r4,%r2
	lr	%r11,%r5
	lr	%r10,%r4
	srdl	%r10,2
	nr	%r0,%r4
	l	%r2,.L3279-.L3277(%r13)
	l	%r3,.L3279-.L3277(%r13)
	nr	%r2,%r10
	nr	%r3,%r11
	nr	%r1,%r5
	alr	%r3,%r1
	l	%r10,.L3280-.L3277(%r13)
	alcr	%r2,%r0
	lr	%r5,%r3
	lr	%r4,%r2
	srdl	%r4,4
	alr	%r3,%r5
	lhi	%r12,127
	alcr	%r2,%r4
	nr	%r10,%r3
	n	%r2,.L3280-.L3277(%r13)
	ar	%r2,%r10
	lr	%r11,%r2
	srl	%r11,16
	ar	%r11,%r2
	lr	%r2,%r11
	srl	%r2,8
	ar	%r2,%r11
	nr	%r2,%r12
	lm	%r10,%r13,80(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
	.section	.rodata
	.align	8
.L3277:
.L3280:
	.long	252645135
.L3279:
	.long	858993459
.L3278:
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
	larl	%r5,.L3283
	lr	%r1,%r2
	srl	%r1,1
	lhi	%r4,63
	n	%r1,.L3284-.L3283(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r2,.L3285-.L3283(%r5)
	n	%r0,.L3285-.L3283(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3286-.L3283(%r5)
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
.L3283:
.L3286:
	.long	252645135
.L3285:
	.long	858993459
.L3284:
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
	larl	%r5,.L3296
	tml	%r2,1
	ldr	%f2,%f0
	je	.L3293
	ld	%f0,.L3297-.L3296(%r5)
	lr	%r1,%r2
.L3290:
	mdbr	%f0,%f2
.L3288:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3289
	tml	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3290
.L3295:
	ar	%r1,%r0
	sra	%r1,1
	tml	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3290
	j	.L3295
.L3289:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L3297-.L3296(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
.L3293:
	ld	%f0,.L3297-.L3296(%r5)
	lr	%r1,%r2
	j	.L3288
	.section	.rodata
	.align	8
.L3296:
.L3297:
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
	larl	%r5,.L3307
	tml	%r2,1
	ler	%f2,%f0
	je	.L3304
	le	%f0,.L3308-.L3307(%r5)
	lr	%r1,%r2
.L3301:
	meebr	%f0,%f2
.L3299:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3300
	tml	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3301
.L3306:
	ar	%r1,%r0
	sra	%r1,1
	tml	%r1,1
	lr	%r0,%r1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3301
	j	.L3306
.L3300:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L3308-.L3307(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
.L3304:
	le	%f0,.L3308-.L3307(%r5)
	lr	%r1,%r2
	j	.L3299
	.section	.rodata
	.align	8
.L3307:
.L3308:
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
	jl	.L3313
	jh	.L3314
	clr	%r3,%r5
	jl	.L3313
	jh	.L3314
	lhi	%r2,1
	br	%r14
.L3313:
	lhi	%r2,0
	br	%r14
.L3314:
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
	jl	.L3320
	jh	.L3319
	clr	%r3,%r5
	jl	.L3320
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3320:
	lhi	%r2,-1
	br	%r14
.L3319:
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
