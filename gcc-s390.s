	.file	"mini-libc.c"
	.machinemode esa
	.machine "z900+htm"
.text
	.align	8
.globl memmove
	.type	memmove, @function
memmove:
.LFB0:
	.cfi_startproc
	stm	%r6,%r12,68(%r15)
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	jle	.L2
	ltr	%r4,%r4
	je	.L3
	lr	%r1,%r2
	lr	%r12,%r4
	ahi	%r3,-1
	ahi	%r1,-1
	ahi	%r12,-1
	lhi	%r11,7
	nr	%r11,%r4
	lr	%r5,%r4
	je	.L41
	chi	%r11,1
	je	.L91
	chi	%r11,2
	je	.L92
	chi	%r11,3
	je	.L93
	chi	%r11,4
	je	.L94
	chi	%r11,5
	je	.L95
	chi	%r11,6
	je	.L96
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	lr	%r4,%r12
.L96:
	ic	%r6,0(%r4,%r3)
	stc	%r6,0(%r4,%r1)
	ahi	%r4,-1
.L95:
	ic	%r7,0(%r4,%r3)
	stc	%r7,0(%r4,%r1)
	ahi	%r4,-1
.L94:
	ic	%r8,0(%r4,%r3)
	stc	%r8,0(%r4,%r1)
	ahi	%r4,-1
.L93:
	ic	%r9,0(%r4,%r3)
	stc	%r9,0(%r4,%r1)
	ahi	%r4,-1
.L92:
	ic	%r10,0(%r4,%r3)
	stc	%r10,0(%r4,%r1)
	ahi	%r4,-1
.L91:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	brct	%r4,.L41
.L3:
	lm	%r6,%r12,68(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
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
	lhi	%r6,3
	nr	%r0,%r6
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L12
	lr	%r7,%r3
	ahi	%r7,1
	lr	%r8,%r2
	sr	%r8,%r7
	lhi	%r9,2
	clr	%r8,%r9
	jle	.L12
	lhi	%r12,-4
	nr	%r12,%r4
	lr	%r5,%r12
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
	lhi	%r10,7
	nr	%r10,%r5
	lhi	%r1,0
	je	.L83
	chi	%r10,1
	je	.L97
	chi	%r10,2
	je	.L98
	chi	%r10,3
	je	.L99
	chi	%r10,4
	je	.L100
	chi	%r10,5
	je	.L101
	chi	%r10,6
	jne	.L159
.L102:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L101:
	l	%r6,0(%r1,%r3)
	st	%r6,0(%r1,%r2)
	ahi	%r1,4
.L100:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	ahi	%r1,4
.L99:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	ahi	%r1,4
.L98:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
.L97:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L140
.L83:
	srl	%r5,3
	chi	%r5,2
	jle	.L155
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
.L6:
	ahi	%r1,32
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
	brct	%r5,.L6
	ahi	%r1,32
.L140:
	lr	%r5,%r2
	lr	%r12,%r4
	ar	%r3,%r1
	ar	%r5,%r1
	sr	%r12,%r1
	cr	%r4,%r1
	je	.L3
	mvc	0(1,%r5),0(%r3)
	chi	%r12,1
	je	.L3
	mvc	1(1,%r5),1(%r3)
	chi	%r12,2
	je	.L3
	mvc	2(1,%r5),2(%r3)
	j	.L3
.L41:
	srl	%r5,3
	chi	%r5,2
	jle	.L153
	ahi	%r5,-1
	lr	%r12,%r4
	ahi	%r12,-7
	lr	%r11,%r4
	ahi	%r11,-6
	lr	%r10,%r4
	ahi	%r10,-5
	lr	%r9,%r4
	ahi	%r9,-4
	lr	%r8,%r4
	ahi	%r8,-3
	lr	%r7,%r4
	ahi	%r7,-2
	lr	%r6,%r4
	ahi	%r6,-1
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	ic	%r0,0(%r6,%r3)
	stc	%r0,0(%r6,%r1)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r1)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r1)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r1)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r1)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
.L4:
	ahi	%r4,-8
	lr	%r12,%r4
	ahi	%r12,-7
	lr	%r11,%r4
	ahi	%r11,-6
	lr	%r10,%r4
	ahi	%r10,-5
	lr	%r9,%r4
	ahi	%r9,-4
	lr	%r8,%r4
	ahi	%r8,-3
	lr	%r7,%r4
	ahi	%r7,-2
	lr	%r6,%r4
	ahi	%r6,-1
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	ic	%r0,0(%r6,%r3)
	stc	%r0,0(%r6,%r1)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r1)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r1)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r1)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r1)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r1)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r1)
	brct	%r5,.L4
	j	.L3
.L153:
	lr	%r6,%r4
	ahi	%r6,-1
	lr	%r7,%r4
	ahi	%r7,-2
	ic	%r11,0(%r4,%r3)
	lr	%r9,%r4
	stc	%r11,0(%r4,%r1)
	ahi	%r9,-3
	ic	%r0,0(%r6,%r3)
	lr	%r12,%r4
	stc	%r0,0(%r6,%r1)
	ahi	%r12,-4
	ic	%r8,0(%r7,%r3)
	lr	%r6,%r4
	stc	%r8,0(%r7,%r1)
	ahi	%r6,-5
	ic	%r10,0(%r9,%r3)
	lr	%r7,%r4
	stc	%r10,0(%r9,%r1)
	ahi	%r7,-6
	ic	%r11,0(%r12,%r3)
	lr	%r9,%r4
	stc	%r11,0(%r12,%r1)
	ahi	%r9,-7
	ic	%r0,0(%r6,%r3)
	stc	%r0,0(%r6,%r1)
	ic	%r8,0(%r7,%r3)
	stc	%r8,0(%r7,%r1)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r1)
	ahi	%r4,-8
	brct	%r5,.L153
	j	.L3
.L155:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r6,12(%r1,%r3)
	st	%r6,12(%r1,%r2)
	l	%r7,16(%r1,%r3)
	st	%r7,16(%r1,%r2)
	l	%r8,20(%r1,%r3)
	st	%r8,20(%r1,%r2)
	l	%r9,24(%r1,%r3)
	st	%r9,24(%r1,%r2)
	l	%r10,28(%r1,%r3)
	st	%r10,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L155
	j	.L140
.L12:
	lhi	%r0,7
	nr	%r0,%r4
	lhi	%r1,0
	lr	%r11,%r4
	je	.L62
	chi	%r0,1
	je	.L103
	chi	%r0,2
	je	.L104
	chi	%r0,3
	je	.L105
	chi	%r0,4
	je	.L106
	chi	%r0,5
	je	.L107
	chi	%r0,6
	je	.L108
	mvc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L108:
	ic	%r6,0(%r1,%r3)
	stc	%r6,0(%r1,%r2)
	ahi	%r1,1
.L107:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	ahi	%r1,1
.L106:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ahi	%r1,1
.L105:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,1
.L104:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
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
	chi	%r4,2
	jle	.L154
	ahi	%r4,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
.L9:
	ahi	%r1,8
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r5,3(%r1,%r3)
	stc	%r5,3(%r1,%r2)
	ic	%r5,4(%r1,%r3)
	stc	%r5,4(%r1,%r2)
	ic	%r5,5(%r1,%r3)
	stc	%r5,5(%r1,%r2)
	ic	%r5,6(%r1,%r3)
	stc	%r5,6(%r1,%r2)
	ic	%r5,7(%r1,%r3)
	stc	%r5,7(%r1,%r2)
	brct	%r4,.L9
	j	.L3
.L159:
	l	%r11,0(%r3)
	st	%r11,0(%r2)
	lhi	%r1,4
	j	.L102
.L154:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r6,3(%r1,%r3)
	stc	%r6,3(%r1,%r2)
	ic	%r7,4(%r1,%r3)
	stc	%r7,4(%r1,%r2)
	ic	%r8,5(%r1,%r3)
	stc	%r8,5(%r1,%r2)
	ic	%r9,6(%r1,%r3)
	stc	%r9,6(%r1,%r2)
	ic	%r10,7(%r1,%r3)
	stc	%r10,7(%r1,%r2)
	ahi	%r1,8
	brct	%r4,.L154
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
	je	.L225
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lr	%r12,%r5
	ahi	%r12,-1
	lhi	%r1,7
	nr	%r1,%r5
	lr	%r0,%r5
	je	.L183
	chi	%r1,1
	je	.L206
	chi	%r1,2
	je	.L207
	chi	%r1,3
	je	.L208
	chi	%r1,4
	je	.L209
	chi	%r1,5
	je	.L210
	chi	%r1,6
	jne	.L228
.L211:
	ic	%r1,0(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	stc	%r1,0(%r2)
	cr	%r12,%r4
	je	.L221
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L210:
	ic	%r1,0(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	stc	%r1,0(%r2)
	cr	%r12,%r4
	je	.L221
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L209:
	ic	%r1,0(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	stc	%r1,0(%r2)
	cr	%r12,%r4
	je	.L221
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L208:
	ic	%r1,0(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	stc	%r1,0(%r2)
	cr	%r12,%r4
	je	.L221
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L207:
	ic	%r1,0(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	stc	%r1,0(%r2)
	cr	%r12,%r4
	je	.L221
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L206:
	ic	%r1,0(%r3)
	lhi	%r12,255
	nr	%r12,%r1
	stc	%r1,0(%r2)
	cr	%r12,%r4
	je	.L221
	ahi	%r3,1
	ahi	%r2,1
	chi	%r5,1
	je	.L164
.L183:
	lr	%r5,%r0
	srl	%r5,3
.L162:
	ic	%r1,0(%r3)
	lhi	%r0,255
	nr	%r0,%r1
	stc	%r1,0(%r2)
	cr	%r0,%r4
	je	.L221
	lr	%r1,%r2
	ahi	%r1,1
	ic	%r0,1(%r3)
	lhi	%r12,255
	nr	%r12,%r0
	cr	%r12,%r4
	stc	%r0,0(%r1)
	lr	%r2,%r1
	je	.L221
	ahi	%r2,1
	ic	%r0,2(%r3)
	lhi	%r12,255
	nr	%r12,%r0
	cr	%r12,%r4
	stc	%r0,0(%r2)
	je	.L221
	ic	%r0,3(%r3)
	lhi	%r12,255
	lr	%r2,%r1
	nr	%r12,%r0
	ahi	%r2,2
	stc	%r0,2(%r1)
	cr	%r12,%r4
	je	.L221
	ic	%r0,4(%r3)
	lhi	%r12,255
	nr	%r12,%r0
	ahi	%r2,1
	stc	%r0,3(%r1)
	cr	%r12,%r4
	je	.L221
	ic	%r0,5(%r3)
	lhi	%r12,255
	nr	%r12,%r0
	ahi	%r2,1
	stc	%r0,4(%r1)
	cr	%r12,%r4
	je	.L221
	ic	%r0,6(%r3)
	lhi	%r12,255
	nr	%r12,%r0
	ahi	%r2,1
	stc	%r0,5(%r1)
	cr	%r12,%r4
	je	.L221
	ic	%r0,7(%r3)
	lhi	%r12,255
	nr	%r12,%r0
	ahi	%r2,1
	stc	%r0,6(%r1)
	cr	%r12,%r4
	je	.L221
	ahi	%r1,7
	ahi	%r3,8
	lr	%r2,%r1
	brct	%r5,.L162
.L164:
	lhi	%r2,0
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L221:
	.cfi_restore_state
	ahi	%r2,1
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L228:
	.cfi_restore_state
	ic	%r1,0(%r3)
	lhi	%r5,255
	nr	%r5,%r1
	stc	%r1,0(%r2)
	cr	%r5,%r4
	je	.L221
	lr	%r5,%r12
	ahi	%r3,1
	ahi	%r2,1
	j	.L211
.L225:
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
	je	.L234
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,7
	nr	%r1,%r4
	lr	%r5,%r4
	je	.L249
	chi	%r1,1
	je	.L272
	chi	%r1,2
	je	.L273
	chi	%r1,3
	je	.L274
	chi	%r1,4
	je	.L275
	chi	%r1,5
	je	.L276
	chi	%r1,6
	jne	.L293
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L294:
	ahi	%r2,1
	ahi	%r4,-1
.L276:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L275:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L274:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L273:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
.L272:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	chi	%r4,1
	je	.L234
.L249:
	lr	%r4,%r5
	srl	%r4,3
.L231:
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
	lr	%r2,%r1
	lhi	%r0,0
	ahi	%r2,2
	ic	%r0,2(%r1)
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
	brct	%r4,.L231
.L234:
	lhi	%r2,0
	br	%r14
.L293:
	lhi	%r4,0
	ic	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	ahi	%r2,1
	lr	%r4,%r0
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L294
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
	je	.L353
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lr	%r12,%r4
	ahi	%r12,-1
	lhi	%r1,7
	nr	%r1,%r4
	lr	%r0,%r4
	je	.L316
	chi	%r1,1
	je	.L339
	chi	%r1,2
	je	.L340
	chi	%r1,3
	je	.L341
	chi	%r1,4
	je	.L342
	chi	%r1,5
	je	.L343
	chi	%r1,6
	jne	.L362
.L344:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L343:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L342:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L341:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L340:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L339:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	ahi	%r2,1
	ahi	%r3,1
	chi	%r4,1
	je	.L301
.L316:
	srl	%r0,3
.L297:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L355
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,2(%r2)
	ic	%r5,2(%r3)
	cr	%r1,%r5
	jne	.L355
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,3(%r2)
	ic	%r5,3(%r3)
	cr	%r1,%r5
	jne	.L355
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,4(%r2)
	ic	%r5,4(%r3)
	cr	%r1,%r5
	jne	.L355
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,5(%r2)
	ic	%r5,5(%r3)
	cr	%r1,%r5
	jne	.L355
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,6(%r2)
	ic	%r5,6(%r3)
	cr	%r1,%r5
	jne	.L355
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,7(%r2)
	ic	%r5,7(%r3)
	cr	%r1,%r5
	jne	.L355
	ahi	%r2,8
	ahi	%r3,8
	brct	%r0,.L297
.L301:
	lhi	%r2,0
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L355:
	.cfi_restore_state
	sr	%r1,%r5
	lr	%r2,%r1
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L362:
	.cfi_restore_state
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L355
	lr	%r4,%r12
	ahi	%r2,1
	ahi	%r3,1
	j	.L344
.L353:
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
	lr	%r1,%r2
	lhi	%r2,255
	ar	%r1,%r4
	nr	%r3,%r2
	ahi	%r4,1
	lhi	%r5,7
	nr	%r5,%r4
	je	.L391
	lr	%r2,%r1
	lhi	%r0,0
	ahi	%r1,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	chi	%r5,1
	je	.L391
	chi	%r5,2
	je	.L399
	chi	%r5,3
	je	.L400
	chi	%r5,4
	je	.L401
	chi	%r5,5
	je	.L402
	chi	%r5,6
	jne	.L422
	lr	%r2,%r1
	lhi	%r0,0
	ahi	%r1,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L402:
	lr	%r2,%r1
	lhi	%r5,0
	ahi	%r1,-1
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L401:
	lr	%r2,%r1
	lhi	%r0,0
	ahi	%r1,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L400:
	lr	%r2,%r1
	lhi	%r5,0
	ahi	%r1,-1
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L399:
	lr	%r2,%r1
	lhi	%r0,0
	ahi	%r1,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L391:
	srl	%r4,3
	lr	%r0,%r1
	ahi	%r4,1
	ahi	%r0,-1
	lr	%r2,%r1
	brct	%r4,.L417
	lhi	%r2,0
	br	%r14
.L417:
	lhi	%r5,0
	ic	%r5,0(%r1)
	cr	%r5,%r3
	ber	%r14
	lr	%r2,%r0
	lr	%r5,%r1
	lhi	%r0,0
	ahi	%r5,-2
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	st	%r12,92(%r15)
	.cfi_offset 12, -4
.L420:
	lr	%r12,%r1
	lhi	%r0,0
	ahi	%r12,-3
	ic	%r0,0(%r5)
	cr	%r0,%r3
	lr	%r2,%r5
	je	.L374
	lhi	%r0,0
	ahi	%r5,-2
	ic	%r0,0(%r12)
	cr	%r0,%r3
	lr	%r2,%r12
	je	.L374
	lhi	%r0,0
	ahi	%r12,-2
	ic	%r0,0(%r5)
	cr	%r0,%r3
	lr	%r2,%r5
	je	.L374
	lhi	%r0,0
	ahi	%r5,-2
	ic	%r0,0(%r12)
	cr	%r0,%r3
	lr	%r2,%r12
	je	.L374
	lhi	%r0,0
	ahi	%r12,-2
	ic	%r0,0(%r5)
	cr	%r0,%r3
	lr	%r2,%r5
	je	.L374
	lhi	%r5,0
	ahi	%r1,-8
	ic	%r5,0(%r12)
	cr	%r5,%r3
	lr	%r2,%r12
	je	.L374
	lr	%r12,%r1
	ahi	%r12,-1
	lr	%r2,%r1
	brct	%r4,.L377
	lhi	%r2,0
.L374:
	l	%r12,92(%r15)
	.cfi_restore 12
	br	%r14
.L422:
	lr	%r2,%r1
	lhi	%r5,0
	ahi	%r1,-1
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	lr	%r2,%r1
	lhi	%r0,0
	ahi	%r1,-1
	ic	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L402
	br	%r14
.L377:
	.cfi_offset 12, -4
	lhi	%r0,0
	ic	%r0,0(%r1)
	cr	%r0,%r3
	je	.L374
	lr	%r2,%r12
	lr	%r5,%r1
	lhi	%r12,0
	ahi	%r5,-2
	ic	%r12,0(%r2)
	cr	%r12,%r3
	jne	.L420
	j	.L374
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
	lhi	%r5,0
	lhi	%r4,0
	mvcle	%r0,%r4,0(%r3)
	jo	.-4
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
	tml	%r1,255
	stc	%r1,0(%r2)
	ber	%r14
.L431:
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
	jne	.L431
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
.L445:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L445
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
.L449:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L449
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
	ic	%r4,0(%r2)
	lr	%r12,%r3
	lhi	%r5,255
	ic	%r3,0(%r3)
	lhi	%r0,255
	ahi	%r12,-1
	nr	%r5,%r4
	nr	%r0,%r3
	cr	%r5,%r0
	lhi	%r1,1
	je	.L453
	j	.L463
.L455:
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	lhi	%r0,255
	nr	%r5,%r4
	ic	%r3,0(%r1,%r12)
	nr	%r0,%r3
	cr	%r5,%r0
	jne	.L463
.L453:
	tml	%r4,255
	jne	.L455
	lhi	%r1,255
	lhi	%r2,0
	nr	%r3,%r1
	sr	%r2,%r3
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L463:
	.cfi_restore_state
	lhi	%r1,255
	lr	%r2,%r5
	nr	%r3,%r1
	sr	%r2,%r3
	l	%r12,92(%r15)
	.cfi_restore 12
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
	je	.L468
.L467:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L467
	sr	%r2,%r3
	br	%r14
.L468:
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
	je	.L479
	ic	%r5,0(%r2)
	lhi	%r4,255
	nr	%r4,%r5
	je	.L521
	stm	%r10,%r12,84(%r15)
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ahi	%r0,-1
	lhi	%r12,3
	nr	%r12,%r0
	je	.L495
	ic	%r1,0(%r3)
	lhi	%r11,255
	nr	%r11,%r1
	je	.L513
	cr	%r11,%r4
	jne	.L514
	lr	%r10,%r3
	ahi	%r2,1
	ahi	%r10,1
	lhi	%r4,255
	ic	%r5,0(%r2)
	nr	%r4,%r5
	je	.L515
	chi	%r12,1
	lr	%r3,%r10
	je	.L495
	chi	%r12,2
	je	.L508
	ic	%r1,0(%r10)
	lhi	%r12,255
	nr	%r12,%r1
	je	.L513
	cr	%r12,%r4
	jne	.L514
	ahi	%r2,1
	lr	%r4,%r10
	ahi	%r4,1
	icm	%r5,1,0(%r2)
	je	.L515
	lr	%r3,%r4
.L508:
	ic	%r1,0(%r3)
	lhi	%r11,255
	nr	%r11,%r1
	je	.L513
	lhi	%r4,255
	nr	%r4,%r5
	cr	%r11,%r4
	jne	.L514
	ahi	%r2,1
	lr	%r1,%r3
	ahi	%r1,1
	icm	%r5,1,0(%r2)
	je	.L515
	lr	%r3,%r1
.L495:
	srl	%r0,2
	ahi	%r0,1
.L475:
	ic	%r1,0(%r3)
	lhi	%r10,255
	nr	%r10,%r1
	je	.L513
	lhi	%r4,255
	nr	%r4,%r5
	brct	%r0,.L477
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
.L477:
	.cfi_restore_state
	cr	%r10,%r4
	jne	.L514
	lr	%r12,%r3
	ahi	%r12,1
	ic	%r5,1(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L515
	ic	%r1,0(%r12)
	lhi	%r10,255
	nr	%r10,%r1
	lr	%r3,%r12
	je	.L513
	cr	%r10,%r11
	jne	.L514
	ic	%r5,2(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L515
	ahi	%r3,1
	lhi	%r10,255
	ic	%r1,0(%r3)
	nr	%r10,%r1
	je	.L513
	cr	%r10,%r11
	jne	.L514
	ic	%r5,3(%r2)
	lhi	%r11,255
	nr	%r11,%r5
	lr	%r4,%r11
	je	.L515
	lr	%r3,%r12
	ic	%r1,2(%r12)
	ahi	%r3,2
	lhi	%r12,255
	nr	%r12,%r1
	je	.L513
	cr	%r12,%r11
	jne	.L514
	ahi	%r2,4
	icm	%r5,1,0(%r2)
	je	.L515
	ahi	%r3,1
	j	.L475
.L479:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	lhi	%r2,0
	br	%r14
.L513:
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
.L514:
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
.L515:
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
.L521:
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
	nr	%r4,%r1
	lr	%r0,%r4
	ahi	%r0,-2
	srl	%r0,1
	ahi	%r0,1
	ar	%r4,%r2
	lhi	%r5,7
	nr	%r5,%r0
	je	.L540
	chi	%r5,1
	je	.L548
	chi	%r5,2
	je	.L549
	chi	%r5,3
	je	.L550
	chi	%r5,4
	je	.L551
	chi	%r5,5
	je	.L552
	chi	%r5,6
	jne	.L564
.L553:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L552:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L551:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L550:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L549:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L548:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L540:
	srl	%r0,3
.L525:
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
	brct	%r0,.L525
	br	%r14
.L564:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	j	.L553
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
	je	.L572
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L572:
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
	jle	.L576
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L576:
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
	je	.L588
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L588:
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
	larl	%r5,.L599
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L596
	lr	%r0,%r2
	ahi	%r0,-127
	lhi	%r3,32
	clr	%r0,%r3
	jh	.L598
.L596:
	lhi	%r2,1
	br	%r14
.L598:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L596
	a	%r2,.L600-.L599(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L599:
.L600:
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
	larl	%r5,.L612
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L611
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L608
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L613-.L612(%r5)
	jle	.L608
	l	%r4,.L614-.L612(%r5)
	ar	%r4,%r2
	lhi	%r1,8184
	clr	%r4,%r1
	jle	.L608
	l	%r0,.L615-.L612(%r5)
	ar	%r0,%r2
	cl	%r0,.L616-.L612(%r5)
	jh	.L609
	n	%r2,.L617-.L612(%r5)
	x	%r2,.L617-.L612(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L608:
	lhi	%r2,1
	br	%r14
.L611:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L609:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L612:
.L617:
	.long	65534
.L616:
	.long	1048579
.L615:
	.long	-65532
.L614:
	.long	-57344
.L613:
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
	jle	.L620
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L620:
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
	larl	%r5,.L633
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L628
	kdbr	%f0,%f2
	jnh	.L631
	sdbr	%f0,%f2
	br	%r14
.L631:
	ld	%f0,.L634-.L633(%r5)
	br	%r14
.L628:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L633:
.L634:
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
	larl	%r5,.L644
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L639
	kebr	%f0,%f2
	jnh	.L642
	sebr	%f0,%f2
	br	%r14
.L642:
	le	%f0,.L645-.L644(%r5)
	br	%r14
.L639:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L644:
.L645:
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
	jo	.L654
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L656
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L651
	lhi	%r0,0
.L651:
	tml	%r0,1
	jne	.L654
	ldr	%f2,%f0
.L654:
	ldr	%f0,%f2
	br	%r14
.L656:
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
	jo	.L666
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L668
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L663
	lhi	%r0,0
.L663:
	tml	%r0,1
	jne	.L666
	ler	%f2,%f0
.L666:
	ler	%f0,%f2
	br	%r14
.L668:
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
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	std	%f1,112(%r15)
	std	%f3,120(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L677
	cxbr	%f0,%f0
	jo	.L671
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
	cr	%r1,%r3
	jne	.L682
	lxr	%f5,%f0
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	kxbr	%f0,%f5
	lhi	%r0,1
	jl	.L676
	lhi	%r0,0
.L676:
	tml	%r0,1
	je	.L674
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L675:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L671:
	ld	%f10,96(%r15)
	ld	%f12,104(%r15)
	std	%f10,0(%r2)
	std	%f12,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L682:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L671
.L677:
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
.L674:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L675
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
	jo	.L690
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L693
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L689
	lhi	%r0,0
.L689:
	tml	%r0,1
	bner	%r14
.L690:
	ldr	%f0,%f2
	br	%r14
.L693:
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
	jo	.L701
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	ipm	%r2
	srl	%r1,28
	srl	%r2,28
	cr	%r1,%r2
	jne	.L704
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L700
	lhi	%r0,0
.L700:
	tml	%r0,1
	bner	%r14
.L701:
	ler	%f0,%f2
	br	%r14
.L704:
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
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f1,96(%r15)
	std	%f3,104(%r15)
	cxbr	%f0,%f0
	jo	.L707
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L713
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	ipm	%r3
	srl	%r1,28
	srl	%r3,28
	cr	%r1,%r3
	jne	.L718
	lxr	%f5,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	kxbr	%f0,%f5
	lhi	%r0,1
	jl	.L712
	lhi	%r0,0
.L712:
	tml	%r0,1
	je	.L710
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L711:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f7,128(%r15)
	ld	%f8,136(%r15)
	std	%f7,96(%r15)
	std	%f8,104(%r15)
.L707:
	ld	%f14,96(%r15)
	ld	%f9,104(%r15)
	std	%f14,0(%r2)
	std	%f9,8(%r2)
	l	%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L718:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L707
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
.L710:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L711
.L713:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L707
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
	je	.L721
	larl	%r4,.LANCHOR1
.L722:
	lhi	%r3,63
	nr	%r3,%r2
	srl	%r2,6
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	ltr	%r2,%r2
	jne	.L722
.L721:
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
	ahi	%r2,-1
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
	lr	%r0,%r2
	lr	%r1,%r3
	sldl	%r0,6
	slr	%r1,%r3
	slbr	%r0,%r2
	lr	%r2,%r0
	lr	%r3,%r1
	sldl	%r2,7
	alr	%r1,%r3
	alcr	%r0,%r2
	sldl	%r0,2
	alr	%r1,%r5
	alcr	%r0,%r4
	lr	%r2,%r0
	lr	%r3,%r1
	sldl	%r2,6
	slr	%r3,%r1
	slbr	%r2,%r0
	sldl	%r2,7
	alr	%r3,%r5
	alcr	%r2,%r4
	sldl	%r2,2
	alr	%r3,%r5
	alcr	%r2,%r4
	lr	%r10,%r2
	lr	%r11,%r3
	sldl	%r10,3
	slr	%r11,%r3
	slbr	%r10,%r2
	lr	%r0,%r10
	lr	%r1,%r11
	sldl	%r0,3
	slr	%r1,%r11
	slbr	%r0,%r10
	lr	%r2,%r0
	lr	%r3,%r1
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
	alcr	%r2,%r4
	lhi	%r5,1
	alr	%r5,%r3
	lhi	%r4,0
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
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
	je	.L737
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L737:
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
	je	.L740
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L740:
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
	icm	%r13,15,0(%r4)
	lr	%r11,%r5
	lr	%r10,%r2
	lr	%r7,%r3
	st	%r4,96(%r15)
	je	.L750
	lhi	%r1,7
	st	%r13,100(%r15)
	nr	%r1,%r13
	lr	%r12,%r3
	lhi	%r8,0
	je	.L774
	chi	%r1,1
	je	.L782
	chi	%r1,2
	je	.L783
	chi	%r1,3
	je	.L784
	chi	%r1,4
	je	.L785
	chi	%r1,5
	je	.L786
	chi	%r1,6
	jne	.L817
.L787:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L749
	ahi	%r8,1
	ar	%r12,%r11
.L786:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L749
	ahi	%r8,1
	ar	%r12,%r11
.L785:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L749
	ahi	%r8,1
	ar	%r12,%r11
.L784:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L749
	ahi	%r8,1
	ar	%r12,%r11
.L783:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L749
	ahi	%r8,1
	ar	%r12,%r11
.L782:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L749
	ahi	%r8,1
	ar	%r12,%r11
	cr	%r13,%r8
	je	.L750
.L774:
	lr	%r8,%r13
	srl	%r8,3
.L752:
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	lr	%r0,%r2
	ltr	%r0,%r0
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L749
	ar	%r12,%r11
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r3,%r2
	ltr	%r3,%r3
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L749
	ar	%r12,%r11
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r5,%r2
	ltr	%r5,%r5
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L749
	ar	%r12,%r11
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r4,%r2
	ltr	%r4,%r4
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L749
	ar	%r12,%r11
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	ltr	%r1,%r1
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L749
	ar	%r12,%r11
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r0,%r2
	ltr	%r0,%r0
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L749
	ar	%r12,%r11
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r3,%r2
	ltr	%r3,%r3
	lr	%r9,%r12
	lr	%r2,%r10
	je	.L749
	ar	%r12,%r11
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L749
	ar	%r12,%r11
	brct	%r8,.L752
.L750:
	lr	%r9,%r11
	msr	%r9,%r13
	l	%r2,96(%r15)
	ahi	%r13,1
	ar	%r9,%r7
	st	%r13,0(%r2)
	ltr	%r11,%r11
	je	.L749
	lr	%r4,%r11
	lr	%r3,%r10
	lr	%r2,%r9
	brasl	%r14,memmove
.L749:
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
.L817:
	.cfi_restore_state
	lr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L749
	lhi	%r8,1
	ar	%r12,%r11
	j	.L787
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
	je	.L820
	lhi	%r1,7
	nr	%r1,%r13
	lr	%r12,%r3
	lr	%r10,%r5
	lr	%r11,%r2
	lr	%r8,%r13
	lhi	%r7,0
	je	.L841
	chi	%r1,1
	je	.L849
	chi	%r1,2
	je	.L850
	chi	%r1,3
	je	.L851
	chi	%r1,4
	je	.L852
	chi	%r1,5
	je	.L853
	chi	%r1,6
	jne	.L883
.L854:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L819
	ahi	%r7,1
	ar	%r12,%r10
.L853:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L819
	ahi	%r7,1
	ar	%r12,%r10
.L852:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L819
	ahi	%r7,1
	ar	%r12,%r10
.L851:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L819
	ahi	%r7,1
	ar	%r12,%r10
.L850:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L819
	ahi	%r7,1
	ar	%r12,%r10
.L849:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L819
	ahi	%r7,1
	ar	%r12,%r10
	cr	%r13,%r7
	je	.L820
.L841:
	srl	%r8,3
.L822:
	lr	%r3,%r12
	lr	%r2,%r11
	basr	%r14,%r6
	lr	%r0,%r2
	ltr	%r0,%r0
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L819
	ar	%r12,%r10
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r3,%r2
	ltr	%r3,%r3
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L819
	ar	%r12,%r10
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r4,%r2
	ltr	%r4,%r4
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L819
	ar	%r12,%r10
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r5,%r2
	ltr	%r5,%r5
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L819
	ar	%r12,%r10
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r13,%r2
	ltr	%r13,%r13
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L819
	ar	%r12,%r10
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	ltr	%r1,%r1
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L819
	ar	%r12,%r10
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r7,%r2
	ltr	%r7,%r7
	lr	%r9,%r12
	lr	%r2,%r11
	je	.L819
	ar	%r12,%r10
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	lr	%r9,%r12
	je	.L819
	ar	%r12,%r10
	brct	%r8,.L822
.L820:
	lhi	%r9,0
.L819:
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
.L883:
	.cfi_restore_state
	lr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L819
	ar	%r12,%r10
	lhi	%r7,1
	j	.L854
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
.L894:
	ic	%r4,0(%r2)
	lhi	%r1,255
	nr	%r1,%r4
	stc	%r4,103(%r15)
	cli	103(%r15),32
	je	.L888
	lr	%r3,%r1
	ahi	%r3,-9
	lhi	%r5,4
	clr	%r3,%r5
	jle	.L888
	chi	%r1,43
	je	.L889
	chi	%r1,45
	je	.L890
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L899
	lr	%r3,%r2
	lhi	%r12,0
.L892:
	lhi	%r2,0
.L896:
	ahi	%r3,1
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	lhi	%r5,255
	nr	%r5,%r4
	lhi	%r0,255
	ic	%r4,0(%r3)
	sll	%r1,1
	ahi	%r5,-48
	nr	%r0,%r4
	lr	%r2,%r1
	ahi	%r0,-48
	sr	%r2,%r5
	lhi	%r11,9
	clr	%r0,%r11
	jle	.L896
	ltr	%r12,%r12
	jne	.L887
	lr	%r2,%r5
	sr	%r2,%r1
.L887:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L888:
	.cfi_restore_state
	ahi	%r2,1
	j	.L894
.L890:
	ic	%r4,1(%r2)
	lhi	%r11,255
	nr	%r11,%r4
	ahi	%r2,1
	ahi	%r11,-48
	lhi	%r12,9
	clr	%r11,%r12
	lr	%r3,%r2
	jh	.L899
	lhi	%r12,1
	j	.L892
.L889:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	lhi	%r12,0
	jle	.L892
.L899:
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
.L916:
	ic	%r4,0(%r2)
	lhi	%r1,255
	nr	%r1,%r4
	stc	%r4,103(%r15)
	cli	103(%r15),32
	je	.L912
	lr	%r3,%r1
	ahi	%r3,-9
	lhi	%r5,4
	clr	%r3,%r5
	jle	.L912
	chi	%r1,43
	je	.L913
	chi	%r1,45
	je	.L914
	ahi	%r1,-48
	lhi	%r12,9
	clr	%r1,%r12
	jh	.L923
	lr	%r3,%r2
	lhi	%r12,0
.L917:
	lhi	%r2,0
.L920:
	ahi	%r3,1
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	lhi	%r5,255
	nr	%r5,%r4
	lhi	%r0,255
	ic	%r4,0(%r3)
	sll	%r1,1
	ahi	%r5,-48
	nr	%r0,%r4
	lr	%r2,%r1
	ahi	%r0,-48
	sr	%r2,%r5
	lhi	%r11,9
	clr	%r0,%r11
	jle	.L920
	ltr	%r12,%r12
	jne	.L911
	lr	%r2,%r5
	sr	%r2,%r1
.L911:
	lm	%r11,%r15,108(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L912:
	.cfi_restore_state
	ahi	%r2,1
	j	.L916
.L914:
	ic	%r4,1(%r2)
	lhi	%r11,255
	nr	%r11,%r4
	ahi	%r2,1
	ahi	%r11,-48
	lhi	%r1,9
	clr	%r11,%r1
	lr	%r3,%r2
	lhi	%r12,1
	jle	.L917
.L923:
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
.L913:
	.cfi_restore_state
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	clr	%r0,%r2
	jh	.L923
	lhi	%r12,0
	j	.L917
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
.L943:
	ic	%r1,0(%r2)
	lhi	%r3,255
	nr	%r3,%r1
	stc	%r1,103(%r15)
	cli	103(%r15),32
	je	.L937
	lr	%r4,%r3
	ahi	%r4,-9
	lhi	%r5,4
	clr	%r4,%r5
	jle	.L937
	chi	%r3,43
	je	.L938
	chi	%r3,45
	jne	.L959
	ic	%r1,1(%r2)
	lhi	%r10,255
	ahi	%r2,1
	nr	%r10,%r1
	lr	%r3,%r2
	lr	%r2,%r10
	ahi	%r2,-48
	lhi	%r11,9
	clr	%r2,%r11
	jh	.L948
	lhi	%r2,1
.L941:
	lhi	%r10,0
	lhi	%r11,0
.L945:
	ahi	%r3,1
	lhi	%r13,255
	nr	%r1,%r13
	lr	%r4,%r10
	lr	%r5,%r11
	ahi	%r1,-48
	sldl	%r4,2
	alr	%r5,%r11
	alcr	%r4,%r10
	lr	%r12,%r1
	sldl	%r4,1
	lhi	%r13,0
	ic	%r1,0(%r3)
	lhi	%r0,255
	srda	%r12,32
	nr	%r0,%r1
	lr	%r11,%r5
	slr	%r11,%r13
	lr	%r10,%r4
	slbr	%r10,%r12
	lhi	%r9,9
	ahi	%r0,-48
	clr	%r0,%r9
	jle	.L945
	ltr	%r2,%r2
	jne	.L936
	slr	%r13,%r5
	slbr	%r12,%r4
	lr	%r10,%r12
	lr	%r11,%r13
.L936:
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
.L937:
	.cfi_restore_state
	ahi	%r2,1
	j	.L943
.L959:
	ahi	%r3,-48
	lhi	%r12,9
	clr	%r3,%r12
	jh	.L948
	lr	%r3,%r2
	lhi	%r2,0
	j	.L941
.L938:
	ic	%r1,1(%r2)
	lhi	%r0,255
	nr	%r0,%r1
	ahi	%r2,1
	ahi	%r0,-48
	lhi	%r9,9
	clr	%r0,%r9
	lr	%r3,%r2
	lhi	%r2,0
	jle	.L941
.L948:
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
	je	.L962
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	j	.L965
.L975:
	je	.L961
	ahi	%r12,-1
	ar	%r11,%r8
	sr	%r12,%r10
	ltr	%r12,%r12
	lr	%r9,%r11
	je	.L962
.L965:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r8
	ar	%r11,%r9
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L975
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L965
.L962:
	lhi	%r11,0
.L961:
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
	ltr	%r11,%r4
	lr	%r7,%r2
	lr	%r9,%r3
	lr	%r8,%r5
	je	.L982
.L990:
	lr	%r10,%r11
	sra	%r10,1
	lr	%r12,%r10
	msr	%r12,%r8
	ar	%r12,%r9
	lr	%r3,%r12
	l	%r4,136(%r15)
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L977
	jle	.L980
	ar	%r12,%r8
	ahi	%r11,-1
	sra	%r11,1
	lr	%r9,%r12
	jne	.L990
.L982:
	lhi	%r12,0
.L977:
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
.L980:
	.cfi_restore_state
	ltr	%r10,%r10
	je	.L982
	lr	%r11,%r10
	j	.L990
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
	jl	.L1000
.L997:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L1000:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L997
	ahi	%r4,-1
	lr	%r2,%r4
	lr	%r3,%r5
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
	lr	%r11,%r4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
	lr	%r12,%r2
	lr	%r10,%r3
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r2,%r3
	lr	%r5,%r6
	lr	%r3,%r11
	brasl	%r14,__divdi3
	lr	%r4,%r9
	stm	%r2,%r3,0(%r12)
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	l	%r4,128(%r15)
	stm	%r2,%r3,8(%r12)
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
	jl	.L1013
.L1010:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L1013:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L1010
	ahi	%r4,-1
	lr	%r2,%r4
	lr	%r3,%r5
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
	lr	%r11,%r4
	ahi	%r15,-40
	.cfi_def_cfa_offset 136
	lr	%r12,%r2
	lr	%r10,%r3
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r2,%r3
	lr	%r5,%r6
	lr	%r3,%r11
	brasl	%r14,__divdi3
	lr	%r4,%r9
	stm	%r2,%r3,0(%r12)
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	l	%r4,128(%r15)
	stm	%r2,%r3,8(%r12)
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
	j	.L1028
.L1029:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L1028:
	icm	%r1,15,0(%r2)
	jne	.L1029
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
	l	%r4,0(%r2)
	l	%r3,0(%r3)
	cr	%r4,%r3
	lhi	%r1,4
	je	.L1032
	j	.L1033
.L1034:
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r3,0(%r1,%r5)
	cr	%r4,%r3
	jne	.L1033
.L1032:
	ltr	%r4,%r4
	jne	.L1034
.L1033:
	cr	%r4,%r3
	jl	.L1038
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1038:
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
.L1043:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L1043
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
	je	.L1050
.L1049:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L1049
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L1050:
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
	je	.L1060
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,7
	nr	%r1,%r4
	lr	%r5,%r4
	je	.L1075
	chi	%r1,1
	je	.L1098
	chi	%r1,2
	je	.L1099
	chi	%r1,3
	je	.L1100
	chi	%r1,4
	je	.L1101
	chi	%r1,5
	je	.L1102
	chi	%r1,6
	jne	.L1118
.L1103:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1102:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1056
	ltr	%r1,%r1
	je	.L1056
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1101:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1100:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1056
	ltr	%r1,%r1
	je	.L1056
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1099:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1098:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1056
	ltr	%r1,%r1
	je	.L1056
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L1060
.L1075:
	srl	%r5,3
.L1054:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1056
	ltr	%r4,%r4
	je	.L1056
	lr	%r1,%r3
	ahi	%r1,4
	ahi	%r2,4
	l	%r0,0(%r2)
	lr	%r4,%r2
	lr	%r3,%r1
	c	%r0,0(%r1)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r3,4
	ahi	%r2,4
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	lr	%r2,%r4
	lr	%r3,%r1
	ahi	%r2,8
	ahi	%r3,8
	l	%r0,8(%r4)
	c	%r0,8(%r1)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r2,4
	ahi	%r3,4
	l	%r0,12(%r4)
	c	%r0,12(%r1)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r2,4
	ahi	%r3,4
	l	%r0,16(%r4)
	c	%r0,16(%r1)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r2,4
	ahi	%r3,4
	l	%r0,20(%r4)
	c	%r0,20(%r1)
	jne	.L1056
	ltr	%r0,%r0
	je	.L1056
	ahi	%r2,4
	ahi	%r3,4
	l	%r4,24(%r4)
	c	%r4,24(%r1)
	jne	.L1056
	ltr	%r4,%r4
	je	.L1056
	ahi	%r1,28
	ahi	%r2,4
	lr	%r3,%r1
	brct	%r5,.L1054
.L1060:
	lhi	%r2,0
	br	%r14
.L1056:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L1119
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1119:
	lhi	%r2,-1
	br	%r14
.L1118:
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jne	.L1056
	ltr	%r4,%r4
	je	.L1056
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
	j	.L1103
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
	je	.L1125
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,7
	nr	%r1,%r4
	lr	%r5,%r4
	je	.L1140
	chi	%r1,1
	je	.L1163
	chi	%r1,2
	je	.L1164
	chi	%r1,3
	je	.L1165
	chi	%r1,4
	je	.L1166
	chi	%r1,5
	je	.L1167
	chi	%r1,6
	jne	.L1184
	c	%r3,0(%r2)
	ber	%r14
.L1185:
	ahi	%r4,-1
	ahi	%r2,4
.L1167:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1166:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1165:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1164:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
.L1163:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	chi	%r4,1
	je	.L1125
.L1140:
	srl	%r5,3
.L1122:
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
	brct	%r5,.L1122
.L1125:
	lhi	%r2,0
	br	%r14
.L1184:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	lr	%r4,%r0
	c	%r3,0(%r2)
	jne	.L1185
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
	je	.L1194
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,7
	nr	%r1,%r4
	lr	%r5,%r4
	je	.L1209
	chi	%r1,1
	je	.L1232
	chi	%r1,2
	je	.L1233
	chi	%r1,3
	je	.L1234
	chi	%r1,4
	je	.L1235
	chi	%r1,5
	je	.L1236
	chi	%r1,6
	jne	.L1252
.L1237:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1236:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1235:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1234:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1233:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L1232:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r2,4
	ahi	%r3,4
	chi	%r4,1
	je	.L1194
.L1209:
	srl	%r5,3
.L1188:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r3,4
	l	%r1,4(%r2)
	lr	%r4,%r3
	c	%r1,0(%r3)
	jne	.L1248
	ahi	%r3,4
	l	%r1,8(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	lr	%r3,%r4
	ahi	%r3,8
	l	%r1,12(%r2)
	c	%r1,8(%r4)
	jne	.L1248
	ahi	%r3,4
	l	%r1,16(%r2)
	c	%r1,12(%r4)
	jne	.L1248
	ahi	%r3,4
	l	%r1,20(%r2)
	c	%r1,16(%r4)
	jne	.L1248
	ahi	%r3,4
	l	%r1,24(%r2)
	c	%r1,20(%r4)
	jne	.L1248
	ahi	%r3,4
	l	%r1,28(%r2)
	c	%r1,24(%r4)
	jne	.L1248
	ahi	%r2,32
	ahi	%r3,4
	brct	%r5,.L1188
.L1194:
	lhi	%r2,0
	br	%r14
.L1248:
	c	%r1,0(%r3)
	jl	.L1253
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1253:
	lhi	%r2,-1
	br	%r14
.L1252:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L1248
	lr	%r4,%r0
	ahi	%r2,4
	ahi	%r3,4
	j	.L1237
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
	lr	%r0,%r2
	lr	%r12,%r3
	sll	%r4,2
	lr	%r13,%r4
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
	stm	%r7,%r13,68(%r15)
	.cfi_offset 7, -28
	.cfi_offset 8, -24
	.cfi_offset 9, -20
	.cfi_offset 10, -16
	.cfi_offset 11, -12
	.cfi_offset 12, -8
	.cfi_offset 13, -4
	larl	%r13,.L1364
	cr	%r2,%r3
	je	.L1273
	lr	%r8,%r4
	lr	%r0,%r2
	lr	%r1,%r4
	ahi	%r8,-1
	sr	%r0,%r3
	sll	%r1,2
	clr	%r0,%r1
	jhe	.L1361
	ltr	%r4,%r4
	je	.L1273
	l	%r4,.L1365-.L1364(%r13)
	nr	%r4,%r8
	ahi	%r4,1
	lhi	%r5,7
	lr	%r1,%r8
	nr	%r5,%r4
	sll	%r1,2
	je	.L1291
	chi	%r5,1
	je	.L1327
	chi	%r5,2
	je	.L1328
	chi	%r5,3
	je	.L1329
	chi	%r5,4
	je	.L1330
	chi	%r5,5
	je	.L1331
	chi	%r5,6
	jne	.L1362
.L1332:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,-4
.L1331:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,-4
.L1330:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	ahi	%r1,-4
.L1329:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,-4
.L1328:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L1327:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L1273
.L1291:
	srl	%r4,3
	chi	%r4,2
	jle	.L1358
	ahi	%r4,-1
	lr	%r5,%r1
	ahi	%r5,-28
	lr	%r12,%r1
	ahi	%r12,-24
	lr	%r11,%r1
	ahi	%r11,-20
	lr	%r10,%r1
	ahi	%r10,-16
	lr	%r9,%r1
	ahi	%r9,-12
	lr	%r8,%r1
	ahi	%r8,-8
	lr	%r7,%r1
	ahi	%r7,-4
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,0(%r7,%r3)
	st	%r0,0(%r7,%r2)
	l	%r0,0(%r8,%r3)
	st	%r0,0(%r8,%r2)
	l	%r0,0(%r9,%r3)
	st	%r0,0(%r9,%r2)
	l	%r0,0(%r10,%r3)
	st	%r0,0(%r10,%r2)
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
.L1270:
	ahi	%r1,-32
	lr	%r5,%r1
	ahi	%r5,-28
	lr	%r12,%r1
	ahi	%r12,-24
	lr	%r11,%r1
	ahi	%r11,-20
	lr	%r10,%r1
	ahi	%r10,-16
	lr	%r9,%r1
	ahi	%r9,-12
	lr	%r8,%r1
	ahi	%r8,-8
	lr	%r7,%r1
	ahi	%r7,-4
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,0(%r7,%r3)
	st	%r0,0(%r7,%r2)
	l	%r0,0(%r8,%r3)
	st	%r0,0(%r8,%r2)
	l	%r0,0(%r9,%r3)
	st	%r0,0(%r9,%r2)
	l	%r0,0(%r10,%r3)
	st	%r0,0(%r10,%r2)
	l	%r0,0(%r11,%r3)
	st	%r0,0(%r11,%r2)
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	brct	%r4,.L1270
.L1273:
	lm	%r7,%r13,68(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L1361:
	.cfi_restore_state
	ltr	%r4,%r4
	lhi	%r1,0
	je	.L1273
	lhi	%r7,7
	nr	%r7,%r4
	je	.L1312
	chi	%r7,1
	je	.L1321
	chi	%r7,2
	je	.L1322
	chi	%r7,3
	je	.L1323
	chi	%r7,4
	je	.L1324
	chi	%r7,5
	je	.L1325
	chi	%r7,6
	jne	.L1363
.L1326:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r8,-1
	ahi	%r1,4
.L1325:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r8,-1
	ahi	%r1,4
.L1324:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	ahi	%r8,-1
	ahi	%r1,4
.L1323:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r8,-1
	ahi	%r1,4
.L1322:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r8,-1
	ahi	%r1,4
.L1321:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r8,%r8
	je	.L1273
.L1312:
	srl	%r4,3
	chi	%r4,2
	jle	.L1359
	ahi	%r4,-1
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	l	%r5,16(%r1,%r3)
	st	%r5,16(%r1,%r2)
	l	%r5,20(%r1,%r3)
	st	%r5,20(%r1,%r2)
	l	%r5,24(%r1,%r3)
	st	%r5,24(%r1,%r2)
	l	%r5,28(%r1,%r3)
	st	%r5,28(%r1,%r2)
.L1268:
	ahi	%r1,32
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r5,4(%r1,%r3)
	st	%r5,4(%r1,%r2)
	l	%r5,8(%r1,%r3)
	st	%r5,8(%r1,%r2)
	l	%r5,12(%r1,%r3)
	st	%r5,12(%r1,%r2)
	l	%r5,16(%r1,%r3)
	st	%r5,16(%r1,%r2)
	l	%r5,20(%r1,%r3)
	st	%r5,20(%r1,%r2)
	l	%r5,24(%r1,%r3)
	st	%r5,24(%r1,%r2)
	l	%r5,28(%r1,%r3)
	st	%r5,28(%r1,%r2)
	brct	%r4,.L1268
	j	.L1273
.L1359:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	l	%r9,8(%r1,%r3)
	st	%r9,8(%r1,%r2)
	l	%r10,12(%r1,%r3)
	st	%r10,12(%r1,%r2)
	l	%r11,16(%r1,%r3)
	st	%r11,16(%r1,%r2)
	l	%r12,20(%r1,%r3)
	st	%r12,20(%r1,%r2)
	l	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r7,28(%r1,%r3)
	st	%r7,28(%r1,%r2)
	ahi	%r1,32
	brct	%r4,.L1359
	j	.L1273
.L1358:
	lr	%r8,%r1
	ahi	%r8,-4
	lr	%r10,%r1
	ahi	%r10,-8
	l	%r5,0(%r1,%r3)
	lr	%r12,%r1
	st	%r5,0(%r1,%r2)
	ahi	%r12,-12
	l	%r9,0(%r8,%r3)
	lr	%r7,%r1
	st	%r9,0(%r8,%r2)
	ahi	%r7,-16
	l	%r11,0(%r10,%r3)
	lr	%r8,%r1
	st	%r11,0(%r10,%r2)
	ahi	%r8,-20
	l	%r0,0(%r12,%r3)
	lr	%r10,%r1
	st	%r0,0(%r12,%r2)
	ahi	%r10,-24
	l	%r5,0(%r7,%r3)
	lr	%r12,%r1
	st	%r5,0(%r7,%r2)
	ahi	%r12,-28
	l	%r9,0(%r8,%r3)
	st	%r9,0(%r8,%r2)
	l	%r11,0(%r10,%r3)
	st	%r11,0(%r10,%r2)
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	ahi	%r1,-32
	brct	%r4,.L1358
	j	.L1273
.L1363:
	l	%r5,0(%r3)
	lr	%r8,%r4
	st	%r5,0(%r2)
	ahi	%r8,-2
	lhi	%r1,4
	j	.L1326
.L1362:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	ahi	%r1,-4
	j	.L1332
	.section	.rodata
	.align	8
.L1364:
.L1365:
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
	nr	%r0,%r4
	lr	%r1,%r2
	je	.L1385
	chi	%r0,1
	je	.L1393
	chi	%r0,2
	je	.L1394
	chi	%r0,3
	je	.L1395
	chi	%r0,4
	je	.L1396
	chi	%r0,5
	je	.L1397
	chi	%r0,6
	jne	.L1410
.L1398:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1397:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1396:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1395:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1394:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L1393:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L1385:
	srl	%r4,3
.L1368:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	st	%r3,16(%r1)
	st	%r3,20(%r1)
	st	%r3,24(%r1)
	st	%r3,28(%r1)
	ahi	%r1,32
	brct	%r4,.L1368
	br	%r14
.L1410:
	lr	%r5,%r4
	st	%r3,0(%r2)
	ahi	%r5,-2
	ahi	%r1,4
	j	.L1398
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	stm	%r7,%r12,72(%r15)
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	jhe	.L1413
	ltr	%r4,%r4
	je	.L1412
	lr	%r7,%r4
	ahi	%r2,-1
	ahi	%r3,-1
	ahi	%r7,-1
	lhi	%r0,7
	nr	%r0,%r4
	lr	%r1,%r4
	je	.L1452
	chi	%r0,1
	je	.L1502
	chi	%r0,2
	je	.L1503
	chi	%r0,3
	je	.L1504
	chi	%r0,4
	je	.L1505
	chi	%r0,5
	je	.L1506
	chi	%r0,6
	je	.L1507
	ic	%r8,0(%r4,%r2)
	stc	%r8,0(%r4,%r3)
	lr	%r4,%r7
.L1507:
	ic	%r9,0(%r4,%r2)
	stc	%r9,0(%r4,%r3)
	ahi	%r4,-1
.L1506:
	ic	%r10,0(%r4,%r2)
	stc	%r10,0(%r4,%r3)
	ahi	%r4,-1
.L1505:
	ic	%r11,0(%r4,%r2)
	stc	%r11,0(%r4,%r3)
	ahi	%r4,-1
.L1504:
	ic	%r12,0(%r4,%r2)
	stc	%r12,0(%r4,%r3)
	ahi	%r4,-1
.L1503:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L1502:
	ic	%r7,0(%r4,%r2)
	stc	%r7,0(%r4,%r3)
	brct	%r4,.L1452
.L1412:
	lm	%r7,%r12,72(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L1413:
	.cfi_restore_state
	je	.L1412
	ltr	%r4,%r4
	je	.L1412
	lr	%r1,%r4
	ahi	%r1,-1
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L1423
	lr	%r0,%r3
	or	%r0,%r2
	lhi	%r7,3
	nr	%r0,%r7
	ahi	%r0,-1
	ltr	%r0,%r0
	jhe	.L1423
	lr	%r8,%r2
	ahi	%r8,1
	lr	%r9,%r3
	sr	%r9,%r8
	lhi	%r10,2
	clr	%r9,%r10
	jle	.L1423
	lhi	%r12,-4
	nr	%r12,%r4
	lr	%r5,%r12
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
	lhi	%r11,7
	nr	%r11,%r5
	lhi	%r1,0
	je	.L1494
	chi	%r11,1
	je	.L1508
	chi	%r11,2
	je	.L1509
	chi	%r11,3
	je	.L1510
	chi	%r11,4
	je	.L1511
	chi	%r11,5
	je	.L1512
	chi	%r11,6
	jne	.L1569
.L1513:
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	ahi	%r1,4
.L1512:
	l	%r7,0(%r1,%r2)
	st	%r7,0(%r1,%r3)
	ahi	%r1,4
.L1511:
	l	%r8,0(%r1,%r2)
	st	%r8,0(%r1,%r3)
	ahi	%r1,4
.L1510:
	l	%r9,0(%r1,%r2)
	st	%r9,0(%r1,%r3)
	ahi	%r1,4
.L1509:
	l	%r10,0(%r1,%r2)
	st	%r10,0(%r1,%r3)
	ahi	%r1,4
.L1508:
	l	%r11,0(%r1,%r2)
	st	%r11,0(%r1,%r3)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1551
.L1494:
	srl	%r5,3
	chi	%r5,2
	jle	.L1566
	ahi	%r5,-1
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	l	%r0,16(%r1,%r2)
	st	%r0,16(%r1,%r3)
	l	%r0,20(%r1,%r2)
	st	%r0,20(%r1,%r3)
	l	%r0,24(%r1,%r2)
	st	%r0,24(%r1,%r3)
	l	%r0,28(%r1,%r2)
	st	%r0,28(%r1,%r3)
.L1417:
	ahi	%r1,32
	l	%r0,0(%r1,%r2)
	st	%r0,0(%r1,%r3)
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r0,8(%r1,%r2)
	st	%r0,8(%r1,%r3)
	l	%r0,12(%r1,%r2)
	st	%r0,12(%r1,%r3)
	l	%r0,16(%r1,%r2)
	st	%r0,16(%r1,%r3)
	l	%r0,20(%r1,%r2)
	st	%r0,20(%r1,%r3)
	l	%r0,24(%r1,%r2)
	st	%r0,24(%r1,%r3)
	l	%r0,28(%r1,%r2)
	st	%r0,28(%r1,%r3)
	brct	%r5,.L1417
	ahi	%r1,32
.L1551:
	lr	%r5,%r4
	ar	%r3,%r1
	ar	%r2,%r1
	sr	%r5,%r1
	cr	%r4,%r1
	je	.L1412
	mvc	0(1,%r3),0(%r2)
	chi	%r5,1
	je	.L1412
	mvc	1(1,%r3),1(%r2)
	chi	%r5,2
	je	.L1412
	mvc	2(1,%r3),2(%r2)
	j	.L1412
.L1452:
	srl	%r1,3
	chi	%r1,2
	jle	.L1564
	ahi	%r1,-1
	lr	%r5,%r4
	ahi	%r5,-7
	lr	%r12,%r4
	ahi	%r12,-6
	lr	%r11,%r4
	ahi	%r11,-5
	lr	%r10,%r4
	ahi	%r10,-4
	lr	%r9,%r4
	ahi	%r9,-3
	lr	%r8,%r4
	ahi	%r8,-2
	lr	%r7,%r4
	ahi	%r7,-1
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ic	%r0,0(%r7,%r2)
	stc	%r0,0(%r7,%r3)
	ic	%r0,0(%r8,%r2)
	stc	%r0,0(%r8,%r3)
	ic	%r0,0(%r9,%r2)
	stc	%r0,0(%r9,%r3)
	ic	%r0,0(%r10,%r2)
	stc	%r0,0(%r10,%r3)
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
.L1415:
	ahi	%r4,-8
	lr	%r5,%r4
	ahi	%r5,-7
	lr	%r12,%r4
	ahi	%r12,-6
	lr	%r11,%r4
	ahi	%r11,-5
	lr	%r10,%r4
	ahi	%r10,-4
	lr	%r9,%r4
	ahi	%r9,-3
	lr	%r8,%r4
	ahi	%r8,-2
	lr	%r7,%r4
	ahi	%r7,-1
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ic	%r0,0(%r7,%r2)
	stc	%r0,0(%r7,%r3)
	ic	%r0,0(%r8,%r2)
	stc	%r0,0(%r8,%r3)
	ic	%r0,0(%r9,%r2)
	stc	%r0,0(%r9,%r3)
	ic	%r0,0(%r10,%r2)
	stc	%r0,0(%r10,%r3)
	ic	%r0,0(%r11,%r2)
	stc	%r0,0(%r11,%r3)
	ic	%r0,0(%r12,%r2)
	stc	%r0,0(%r12,%r3)
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	brct	%r1,.L1415
	j	.L1412
.L1564:
	lr	%r8,%r4
	ahi	%r8,-1
	lr	%r10,%r4
	ahi	%r10,-2
	ic	%r0,0(%r4,%r2)
	lr	%r12,%r4
	stc	%r0,0(%r4,%r3)
	ahi	%r12,-3
	ic	%r9,0(%r8,%r2)
	lr	%r7,%r4
	stc	%r9,0(%r8,%r3)
	ahi	%r7,-4
	ic	%r11,0(%r10,%r2)
	lr	%r8,%r4
	stc	%r11,0(%r10,%r3)
	ahi	%r8,-5
	ic	%r5,0(%r12,%r2)
	lr	%r10,%r4
	stc	%r5,0(%r12,%r3)
	ahi	%r10,-6
	ic	%r0,0(%r7,%r2)
	lr	%r12,%r4
	stc	%r0,0(%r7,%r3)
	ahi	%r12,-7
	ic	%r9,0(%r8,%r2)
	stc	%r9,0(%r8,%r3)
	ic	%r11,0(%r10,%r2)
	stc	%r11,0(%r10,%r3)
	ic	%r5,0(%r12,%r2)
	stc	%r5,0(%r12,%r3)
	ahi	%r4,-8
	brct	%r1,.L1564
	j	.L1412
.L1566:
	l	%r12,0(%r1,%r2)
	st	%r12,0(%r1,%r3)
	l	%r0,4(%r1,%r2)
	st	%r0,4(%r1,%r3)
	l	%r7,8(%r1,%r2)
	st	%r7,8(%r1,%r3)
	l	%r8,12(%r1,%r2)
	st	%r8,12(%r1,%r3)
	l	%r9,16(%r1,%r2)
	st	%r9,16(%r1,%r3)
	l	%r10,20(%r1,%r2)
	st	%r10,20(%r1,%r3)
	l	%r11,24(%r1,%r2)
	st	%r11,24(%r1,%r3)
	l	%r12,28(%r1,%r2)
	st	%r12,28(%r1,%r3)
	ahi	%r1,32
	brct	%r5,.L1566
	j	.L1551
.L1423:
	lhi	%r0,7
	nr	%r0,%r4
	lhi	%r1,0
	lr	%r7,%r4
	je	.L1473
	chi	%r0,1
	je	.L1514
	chi	%r0,2
	je	.L1515
	chi	%r0,3
	je	.L1516
	chi	%r0,4
	je	.L1517
	chi	%r0,5
	je	.L1518
	chi	%r0,6
	je	.L1519
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L1519:
	ic	%r8,0(%r1,%r2)
	stc	%r8,0(%r1,%r3)
	ahi	%r1,1
.L1518:
	ic	%r9,0(%r1,%r2)
	stc	%r9,0(%r1,%r3)
	ahi	%r1,1
.L1517:
	ic	%r10,0(%r1,%r2)
	stc	%r10,0(%r1,%r3)
	ahi	%r1,1
.L1516:
	ic	%r11,0(%r1,%r2)
	stc	%r11,0(%r1,%r3)
	ahi	%r1,1
.L1515:
	ic	%r12,0(%r1,%r2)
	stc	%r12,0(%r1,%r3)
	ahi	%r1,1
.L1514:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1412
.L1473:
	lr	%r4,%r7
	srl	%r4,3
	chi	%r4,2
	jle	.L1565
	ahi	%r4,-1
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	stc	%r5,4(%r1,%r3)
	ic	%r5,5(%r1,%r2)
	stc	%r5,5(%r1,%r3)
	ic	%r5,6(%r1,%r2)
	stc	%r5,6(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	stc	%r5,7(%r1,%r3)
.L1420:
	ahi	%r1,8
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r5,1(%r1,%r2)
	stc	%r5,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	stc	%r5,3(%r1,%r3)
	ic	%r5,4(%r1,%r2)
	stc	%r5,4(%r1,%r3)
	ic	%r5,5(%r1,%r2)
	stc	%r5,5(%r1,%r3)
	ic	%r5,6(%r1,%r2)
	stc	%r5,6(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	stc	%r5,7(%r1,%r3)
	brct	%r4,.L1420
	j	.L1412
.L1569:
	l	%r1,0(%r2)
	st	%r1,0(%r3)
	lhi	%r1,4
	j	.L1513
.L1565:
	ic	%r7,0(%r1,%r2)
	stc	%r7,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r8,2(%r1,%r2)
	stc	%r8,2(%r1,%r3)
	ic	%r9,3(%r1,%r2)
	stc	%r9,3(%r1,%r3)
	ic	%r10,4(%r1,%r2)
	stc	%r10,4(%r1,%r3)
	ic	%r11,5(%r1,%r2)
	stc	%r11,5(%r1,%r3)
	ic	%r12,6(%r1,%r2)
	stc	%r12,6(%r1,%r3)
	ic	%r5,7(%r1,%r2)
	stc	%r5,7(%r1,%r3)
	ahi	%r1,8
	brct	%r4,.L1565
	j	.L1412
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
	lr	%r1,%r3
	lcr	%r2,%r4
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
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
	lr	%r0,%r2
	lr	%r1,%r3
	lcr	%r2,%r4
	stm	%r12,%r13,88(%r15)
	.cfi_offset 12, -8
	.cfi_offset 13, -4
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
	larl	%r5,.L1587
	lhi	%r1,15
	nr	%r3,%r1
	lcr	%r1,%r3
	lhi	%r4,15
	nr	%r1,%r4
	lr	%r0,%r2
	srl	%r0,0(%r1)
	sll	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L1588-.L1587(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1587:
.L1588:
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
	larl	%r5,.L1591
	lhi	%r1,15
	nr	%r3,%r1
	lcr	%r1,%r3
	lhi	%r4,15
	nr	%r1,%r4
	lr	%r0,%r2
	sll	%r0,0(%r1)
	srl	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L1592-.L1591(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1591:
.L1592:
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
	lcr	%r5,%r3
	lhi	%r4,7
	nr	%r5,%r4
	lr	%r0,%r2
	srl	%r0,0(%r5)
	sll	%r2,0(%r3)
	or	%r2,%r0
	lhi	%r3,255
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
	nr	%r3,%r1
	lcr	%r5,%r3
	lhi	%r4,7
	nr	%r5,%r4
	lr	%r0,%r2
	sll	%r0,0(%r5)
	srl	%r2,0(%r3)
	or	%r2,%r0
	lhi	%r3,255
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
	larl	%r5,.L1599
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L1600-.L1599(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1599:
.L1600:
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
	lr	%r1,%r2
	lrvr	%r2,%r3
	lrvr	%r3,%r1
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
.L1608:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r5,%r2
	tml	%r4,1
	lr	%r3,%r1
	srl	%r5,0(%r1)
	jne	.L1624
	ahi	%r1,1
	lr	%r4,%r2
	tml	%r5,1
	srl	%r4,0(%r1)
	jne	.L1624
	lr	%r1,%r3
	ahi	%r1,2
	lr	%r3,%r2
	tml	%r4,1
	srl	%r3,0(%r1)
	jne	.L1624
	ahi	%r1,1
	lr	%r4,%r2
	tml	%r3,1
	srl	%r4,0(%r1)
	jne	.L1624
	ahi	%r1,1
	lr	%r5,%r2
	tml	%r4,1
	srl	%r5,0(%r1)
	jne	.L1624
	ahi	%r1,1
	lr	%r3,%r2
	tml	%r5,1
	srl	%r3,0(%r1)
	jne	.L1624
	ahi	%r1,1
	lr	%r4,%r2
	tml	%r3,1
	srl	%r4,0(%r1)
	jne	.L1624
	ahi	%r1,1
	tml	%r4,1
	jne	.L1624
	brct	%r0,.L1608
	lhi	%r2,0
	br	%r14
.L1624:
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
	je	.L1632
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L1631:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	bner	%r14
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L1631
	br	%r14
.L1632:
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
	larl	%r5,.L1642
	lhi	%r2,1
	keb	%f0,.L1643-.L1642(%r5)
	blr	%r14
	keb	%f0,.L1644-.L1642(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1642:
.L1644:
	.long	2139095039
.L1643:
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
	larl	%r5,.L1650
	lhi	%r2,1
	kdb	%f0,.L1651-.L1650(%r5)
	blr	%r14
	kdb	%f0,.L1652-.L1650(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1650:
.L1652:
	.long	2146435071
	.long	-1
.L1651:
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
	larl	%r5,.L1658
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L1659-.L1658(%r5)
	ld	%f3,.L1659-.L1658+8(%r5)
	kxbr	%f0,%f1
	lhi	%r2,1
	blr	%r14
	ld	%f1,.L1660-.L1658(%r5)
	ld	%f3,.L1660-.L1658+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L1658:
.L1660:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L1659:
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
	larl	%r5,.L1679
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1677
	le	%f1,.L1680-.L1679(%r5)
.L1665:
	tml	%r2,1
	je	.L1666
.L1667:
	meebr	%f0,%f1
.L1666:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	lr	%r0,%r2
	tml	%r2,1
	srl	%r0,31
	meebr	%f1,%f1
	jne	.L1667
.L1678:
	ar	%r2,%r0
	sra	%r2,1
	lr	%r0,%r2
	tml	%r2,1
	srl	%r0,31
	meebr	%f1,%f1
	jne	.L1667
	j	.L1678
.L1677:
	le	%f1,.L1681-.L1679(%r5)
	j	.L1665
	.section	.rodata
	.align	8
.L1679:
.L1681:
	.long	1056964608
.L1680:
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
	larl	%r5,.L1698
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L1696
	ld	%f1,.L1699-.L1698(%r5)
.L1684:
	tml	%r2,1
	je	.L1685
.L1686:
	mdbr	%f0,%f1
.L1685:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	lr	%r0,%r2
	tml	%r2,1
	srl	%r0,31
	mdbr	%f1,%f1
	jne	.L1686
.L1697:
	ar	%r2,%r0
	sra	%r2,1
	lr	%r0,%r2
	tml	%r2,1
	srl	%r0,31
	mdbr	%f1,%f1
	jne	.L1686
	j	.L1697
.L1696:
	ld	%f1,.L1700-.L1698(%r5)
	j	.L1684
	.section	.rodata
	.align	8
.L1698:
.L1700:
	.long	1071644672
	.long	0
.L1699:
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
	larl	%r5,.L1717
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L1702
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L1702
	ltr	%r4,%r4
	jl	.L1715
	ld	%f0,.L1718-.L1717(%r5)
	ld	%f2,.L1718-.L1717+8(%r5)
.L1703:
	tml	%r4,1
	je	.L1704
.L1705:
	mxbr	%f1,%f0
.L1704:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L1702
	lr	%r0,%r4
	tml	%r4,1
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1705
.L1716:
	ar	%r4,%r0
	sra	%r4,1
	lr	%r0,%r4
	tml	%r4,1
	srl	%r0,31
	mxbr	%f0,%f0
	jne	.L1705
	j	.L1716
.L1702:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L1715:
	ld	%f0,.L1719-.L1717(%r5)
	ld	%f2,.L1719-.L1717+8(%r5)
	j	.L1703
	.section	.rodata
	.align	8
.L1717:
.L1719:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L1718:
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
	lhi	%r5,6
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	clr	%r1,%r5
	jle	.L1728
	lr	%r0,%r2
	or	%r0,%r3
	tml	%r0,3
	jne	.L1728
	lhi	%r12,-4
	nr	%r12,%r4
	lr	%r5,%r12
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
	lhi	%r0,7
	nr	%r0,%r5
	lhi	%r1,0
	je	.L1771
	chi	%r0,1
	je	.L1779
	chi	%r0,2
	je	.L1780
	chi	%r0,3
	je	.L1781
	chi	%r0,4
	je	.L1782
	chi	%r0,5
	je	.L1783
	chi	%r0,6
	je	.L1784
	xc	0(4,%r2),0(%r3)
	lhi	%r1,4
.L1784:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1783:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1782:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1781:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1780:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L1779:
	l	%r0,0(%r1,%r2)
	x	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r12
	je	.L1811
.L1771:
	srl	%r5,3
	chi	%r5,2
	jle	.L1821
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
.L1723:
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
	brct	%r5,.L1723
	ahi	%r1,32
.L1811:
	lr	%r5,%r2
	lr	%r12,%r4
	ar	%r3,%r1
	ar	%r5,%r1
	sr	%r12,%r1
	cr	%r4,%r1
	je	.L1721
	xc	0(1,%r5),0(%r3)
	chi	%r12,1
	je	.L1721
	xc	1(1,%r5),1(%r3)
	chi	%r12,2
	je	.L1721
	xc	2(1,%r5),2(%r3)
.L1721:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1821:
	.cfi_restore_state
	l	%r12,0(%r1,%r2)
	l	%r0,4(%r1,%r2)
	x	%r12,0(%r1,%r3)
	x	%r0,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	st	%r0,4(%r1,%r2)
	l	%r12,8(%r1,%r2)
	l	%r0,12(%r1,%r2)
	x	%r12,8(%r1,%r3)
	x	%r0,12(%r1,%r3)
	st	%r12,8(%r1,%r2)
	st	%r0,12(%r1,%r2)
	l	%r12,16(%r1,%r2)
	l	%r0,20(%r1,%r2)
	x	%r12,16(%r1,%r3)
	x	%r0,20(%r1,%r3)
	st	%r12,16(%r1,%r2)
	st	%r0,20(%r1,%r2)
	l	%r12,24(%r1,%r2)
	l	%r0,28(%r1,%r2)
	x	%r12,24(%r1,%r3)
	x	%r0,28(%r1,%r3)
	st	%r12,24(%r1,%r2)
	st	%r0,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L1821
	j	.L1811
.L1728:
	lhi	%r0,7
	nr	%r0,%r4
	lhi	%r1,0
	lr	%r5,%r4
	je	.L1750
	chi	%r0,1
	je	.L1785
	chi	%r0,2
	je	.L1786
	chi	%r0,3
	je	.L1787
	chi	%r0,4
	je	.L1788
	chi	%r0,5
	je	.L1789
	chi	%r0,6
	je	.L1790
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1790:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1789:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1788:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1787:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1786:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1785:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1721
.L1750:
	lr	%r4,%r5
	srl	%r4,3
	chi	%r4,2
	jle	.L1820
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
.L1725:
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
	brct	%r4,.L1725
	j	.L1721
.L1820:
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
	stc	%r12,5(%r1,%r2)
	ic	%r0,6(%r1,%r3)
	ic	%r12,6(%r1,%r2)
	xr	%r12,%r0
	ic	%r5,7(%r1,%r2)
	stc	%r12,6(%r1,%r2)
	ic	%r12,7(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,7(%r1,%r2)
	ahi	%r1,8
	brct	%r4,.L1820
	j	.L1721
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
	je	.L1828
.L1829:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1829
.L1828:
	ltr	%r4,%r4
	je	.L1893
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	lr	%r12,%r4
	ahi	%r12,-1
	lhi	%r5,7
	nr	%r5,%r4
	lr	%r0,%r4
	je	.L1852
	chi	%r5,1
	je	.L1875
	chi	%r5,2
	je	.L1876
	chi	%r5,3
	je	.L1877
	chi	%r5,4
	je	.L1878
	chi	%r5,5
	je	.L1879
	chi	%r5,6
	jne	.L1897
.L1880:
	ic	%r12,0(%r3)
	stc	%r12,0(%r1)
	tml	%r12,255
	je	.L1833
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1879:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1833
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1878:
	ic	%r12,0(%r3)
	stc	%r12,0(%r1)
	tml	%r12,255
	je	.L1833
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1877:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1833
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1876:
	ic	%r12,0(%r3)
	stc	%r12,0(%r1)
	tml	%r12,255
	je	.L1833
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
.L1875:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1833
	ahi	%r3,1
	ahi	%r1,1
	chi	%r4,1
	je	.L1831
.L1852:
	srl	%r0,3
.L1830:
	ic	%r4,0(%r3)
	stc	%r4,0(%r1)
	tml	%r4,255
	je	.L1833
	ic	%r12,1(%r3)
	stc	%r12,1(%r1)
	tml	%r12,255
	je	.L1833
	ic	%r5,2(%r3)
	stc	%r5,2(%r1)
	tml	%r5,255
	je	.L1833
	ic	%r4,3(%r3)
	stc	%r4,3(%r1)
	tml	%r4,255
	je	.L1833
	ic	%r12,4(%r3)
	stc	%r12,4(%r1)
	tml	%r12,255
	je	.L1833
	ic	%r5,5(%r3)
	stc	%r5,5(%r1)
	tml	%r5,255
	je	.L1833
	ic	%r4,6(%r3)
	stc	%r4,6(%r1)
	tml	%r4,255
	je	.L1833
	ic	%r12,7(%r3)
	stc	%r12,7(%r1)
	tml	%r12,255
	je	.L1833
	ahi	%r3,8
	ahi	%r1,8
	brct	%r0,.L1830
.L1831:
	mvi	0(%r1),0
.L1833:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L1897:
	.cfi_restore_state
	ic	%r4,0(%r3)
	stc	%r4,0(%r1)
	tml	%r4,255
	je	.L1833
	ahi	%r3,1
	ahi	%r1,1
	lr	%r4,%r12
	j	.L1880
.L1893:
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
	nr	%r1,%r3
	lr	%r5,%r3
	je	.L1919
	chi	%r1,1
	je	.L1942
	chi	%r1,2
	je	.L1943
	chi	%r1,3
	je	.L1944
	chi	%r1,4
	je	.L1945
	chi	%r1,5
	je	.L1946
	chi	%r1,6
	jne	.L1959
.L1947:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1946:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1945:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1944:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1943:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
.L1942:
	la	%r1,0(%r2,%r4)
	cli	0(%r1),0
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1919:
	srl	%r5,3
.L1900:
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
	brct	%r5,.L1900
	br	%r14
.L1959:
	cli	0(%r4),0
	ber	%r14
	lhi	%r2,1
	j	.L1947
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
	je	.L1966
.L1972:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1965
.L1964:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1965:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1964
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1972
.L1966:
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
	j	.L1977
.L1980:
	lr	%r2,%r1
	ahi	%r1,1
	tml	%r4,255
	lr	%r5,%r2
	ber	%r14
.L1977:
	ic	%r4,0(%r1)
	lhi	%r2,255
	nr	%r2,%r4
	cr	%r2,%r3
	je	.L1980
	ahi	%r1,1
	lr	%r2,%r5
	tml	%r4,255
	lr	%r5,%r2
	jne	.L1977
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
	je	.L1982
	lr	%r10,%r3
.L1984:
	ahi	%r10,1
	cli	0(%r10),0
	jne	.L1984
	slr	%r10,%r3
	jhe	.L1982
	lhi	%r11,255
	ahi	%r10,-1
	nr	%r11,%r9
	j	.L2035
.L2039:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L2038
.L2035:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r11
	jne	.L2039
	lhi	%r8,3
	nr	%r8,%r10
	lr	%r0,%r10
	lr	%r4,%r3
	lr	%r5,%r2
	lr	%r12,%r9
	je	.L2008
	lhi	%r1,255
	nr	%r1,%r9
	cr	%r11,%r1
	jne	.L1989
	lr	%r7,%r3
	ahi	%r5,1
	ahi	%r7,1
	ic	%r1,1(%r2)
	lhi	%r6,255
	nr	%r6,%r1
	je	.L2034
	ic	%r12,1(%r3)
	lhi	%r13,255
	nr	%r13,%r12
	je	.L1989
	chi	%r8,1
	lr	%r4,%r7
	je	.L2008
	chi	%r8,2
	je	.L2022
	cr	%r6,%r13
	jne	.L1989
	lr	%r8,%r3
	ahi	%r5,1
	ahi	%r8,2
	icm	%r1,1,2(%r2)
	je	.L2034
	icm	%r12,1,2(%r3)
	je	.L1989
	lr	%r4,%r8
.L2022:
	lhi	%r7,255
	nr	%r1,%r7
	nr	%r12,%r7
	cr	%r1,%r12
	jne	.L1989
	ahi	%r5,1
	lr	%r6,%r4
	ahi	%r6,1
	icm	%r1,1,0(%r5)
	je	.L2034
	icm	%r12,1,1(%r4)
	je	.L1989
	lr	%r4,%r6
.L2008:
	srl	%r0,2
	ahi	%r0,1
.L1986:
	lhi	%r13,255
	lhi	%r8,255
	nr	%r13,%r1
	nr	%r8,%r12
	brct	%r0,.L2021
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	je	.L1982
.L1989:
	ahi	%r2,1
	j	.L2035
.L2021:
	cr	%r13,%r8
	jne	.L1989
	lr	%r12,%r4
	ahi	%r12,1
	ic	%r1,1(%r5)
	lhi	%r7,255
	nr	%r7,%r1
	je	.L2034
	lhi	%r1,0
	ic	%r1,1(%r4)
	ltr	%r1,%r1
	lr	%r4,%r12
	je	.L1989
	cr	%r7,%r1
	jne	.L1989
	lr	%r6,%r12
	ahi	%r6,1
	ic	%r1,2(%r5)
	lhi	%r13,255
	nr	%r13,%r1
	je	.L2034
	lhi	%r8,0
	ic	%r8,1(%r12)
	ltr	%r8,%r8
	lr	%r4,%r6
	je	.L1989
	cr	%r13,%r8
	jne	.L1989
	ic	%r1,3(%r5)
	lhi	%r7,255
	nr	%r7,%r1
	je	.L2034
	lhi	%r1,0
	ic	%r1,1(%r6)
	ltr	%r1,%r1
	je	.L1989
	lr	%r4,%r12
	ahi	%r4,2
	cr	%r7,%r1
	jne	.L1989
	ahi	%r5,4
	lr	%r6,%r12
	ahi	%r6,3
	icm	%r1,1,0(%r5)
	je	.L2034
	icm	%r12,1,3(%r12)
	lr	%r4,%r6
	jne	.L1986
	ahi	%r2,1
	j	.L2035
.L2038:
	lhi	%r2,0
.L1982:
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
.L2034:
	.cfi_restore_state
	ic	%r12,1(%r4)
	lhi	%r4,255
	nr	%r1,%r4
	nr	%r12,%r4
	cr	%r1,%r12
	jne	.L1989
	j	.L1982
	.cfi_endproc
.LFE95:
	.size	strstr, .-strstr
	.align	8
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	larl	%r5,.L2053
	kdb	%f0,.L2054-.L2053(%r5)
	jl	.L2052
	jnh	.L2045
	kdb	%f2,.L2054-.L2053(%r5)
	jl	.L2044
.L2045:
	br	%r14
.L2052:
	kdb	%f2,.L2054-.L2053(%r5)
	jnh	.L2045
.L2044:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2053:
.L2054:
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
	jl	.L2064
	sr	%r3,%r0
	alr	%r3,%r2
	jnle	.L2064
	stm	%r8,%r12,76(%r15)
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	ic	%r9,0(%r4)
	lhi	%r12,255
	nr	%r12,%r9
	j	.L2061
.L2065:
	lr	%r2,%r5
.L2057:
	clr	%r3,%r2
	jl	.L2066
.L2061:
	lr	%r5,%r2
	lhi	%r1,0
	ahi	%r5,1
	ic	%r1,0(%r2)
	cr	%r1,%r12
	jne	.L2065
	chi	%r0,1
	je	.L2055
.L2060:
	lr	%r11,%r0
	ahi	%r11,-1
	lhi	%r10,7
	nr	%r10,%r11
	lhi	%r1,1
	je	.L2084
	chi	%r10,1
	je	.L2106
	chi	%r10,2
	je	.L2107
	chi	%r10,3
	je	.L2108
	chi	%r10,4
	je	.L2109
	chi	%r10,5
	je	.L2110
	chi	%r10,6
	je	.L2111
	clc	1(1,%r4),1(%r2)
	lhi	%r1,2
	jne	.L2121
.L2111:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2121
	ahi	%r1,1
.L2110:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2121
	ahi	%r1,1
.L2109:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2121
	ahi	%r1,1
.L2108:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2121
	ahi	%r1,1
.L2107:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2121
	ahi	%r1,1
.L2106:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2121
	ahi	%r1,1
	cr	%r1,%r0
	je	.L2055
.L2084:
	srl	%r11,3
.L2058:
	la	%r10,0(%r1,%r2)
	ic	%r8,0(%r1,%r4)
	clm	%r8,1,0(%r10)
	jne	.L2121
	lhi	%r10,1
	ic	%r8,1(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2121
	lhi	%r10,2
	ic	%r8,2(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2121
	lhi	%r10,3
	ic	%r8,3(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2121
	lhi	%r10,4
	ic	%r8,4(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2121
	lhi	%r10,5
	ic	%r8,5(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2121
	lhi	%r10,6
	ic	%r8,6(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2121
	lhi	%r10,7
	ic	%r8,7(%r1,%r4)
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r8,1,0(%r10)
	jne	.L2121
	ahi	%r1,8
	brct	%r11,.L2058
.L2055:
	lm	%r8,%r12,76(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2121:
	.cfi_restore_state
	clr	%r3,%r5
	jl	.L2066
	lr	%r2,%r5
	ahi	%r2,1
	clm	%r9,1,0(%r5)
	jne	.L2057
	lr	%r11,%r5
	lr	%r5,%r2
	lr	%r2,%r11
	j	.L2060
.L2066:
	lhi	%r2,0
	lm	%r8,%r12,76(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L2064:
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
	ltr	%r12,%r4
	lr	%r11,%r2
	je	.L2132
	brasl	%r14,memmove
.L2132:
	lr	%r2,%r11
	l	%r4,112(%r15)
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
	larl	%r5,.L2165
	kdb	%f0,.L2166-.L2165(%r5)
	jl	.L2161
	kdb	%f0,.L2167-.L2165(%r5)
	jnhe	.L2162
	lhi	%r3,0
.L2141:
	lhi	%r0,0
.L2147:
	ahi	%r0,1
	mdb	%f0,.L2168-.L2165(%r5)
	kdb	%f0,.L2167-.L2165(%r5)
	jhe	.L2147
	ltr	%r3,%r3
	st	%r0,0(%r2)
	ber	%r14
.L2164:
	lcdbr	%f0,%f0
	br	%r14
.L2162:
	kdb	%f0,.L2168-.L2165(%r5)
	jnl	.L2144
	cdb	%f0,.L2166-.L2165(%r5)
	jne	.L2153
.L2144:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L2161:
	lcdbr	%f2,%f0
	kdb	%f0,.L2169-.L2165(%r5)
	jnle	.L2163
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L2141
.L2163:
	kdb	%f0,.L2170-.L2165(%r5)
	jnh	.L2144
	lhi	%r3,1
.L2142:
	ldr	%f0,%f2
	lhi	%r0,0
.L2149:
	ahi	%r0,-1
	adbr	%f0,%f0
	kdb	%f0,.L2168-.L2165(%r5)
	jl	.L2149
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L2164
	br	%r14
.L2153:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L2142
	.section	.rodata
	.align	8
.L2165:
.L2170:
	.long	-1075838976
	.long	0
.L2169:
	.long	-1074790400
	.long	0
.L2168:
	.long	1071644672
	.long	0
.L2167:
	.long	1072693248
	.long	0
.L2166:
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
	je	.L2175
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
.L2174:
	lhi	%r10,0
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r2,%r10
	lcr	%r3,%r11
	je	.L2177
	ahi	%r2,-1
.L2177:
	lr	%r8,%r2
	lr	%r9,%r3
	nr	%r8,%r12
	nr	%r9,%r13
	srdl	%r0,1
	alr	%r5,%r9
	alcr	%r4,%r8
	lr	%r7,%r0
	or	%r7,%r1
	sldl	%r12,1
	jne	.L2174
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
.L2175:
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
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	clr	%r3,%r2
	lr	%r12,%r2
	jhe	.L2223
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r5,4
.L2184:
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ltr	%r3,%r3
	jl	.L2189
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2186
	ahi	%r2,-8
	brct	%r5,.L2184
.L2187:
	ltr	%r4,%r4
	je	.L2183
	lr	%r2,%r12
.L2183:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L2186:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2199
.L2189:
	lhi	%r2,0
	j	.L2194
.L2224:
	lr	%r5,%r1
.L2193:
	or	%r2,%r5
	srl	%r1,1
	ltr	%r1,%r1
	srl	%r3,1
	je	.L2187
.L2194:
	lr	%r5,%r12
	lr	%r0,%r12
	sr	%r5,%r3
	slr	%r0,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2191
	lr	%r12,%r5
.L2191:
	ltr	%r0,%r0
	jne	.L2224
	lhi	%r5,0
	j	.L2193
.L2223:
	sr	%r2,%r3
	lr	%r1,%r12
	slr	%r1,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2197
	lr	%r12,%r2
.L2197:
	lhi	%r2,255
	nr	%r2,%r0
	j	.L2187
.L2199:
	lhi	%r2,0
	j	.L2187
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
	je	.L2228
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
.L2228:
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
	je	.L2243
.L2238:
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
.L2243:
	cr	%r5,%r1
	jne	.L2238
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
.L2247:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	ltr	%r4,%r4
	sll	%r3,1
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	ltr	%r4,%r4
	sll	%r3,1
	jne	.L2247
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
	stm	%r7,%r12,72(%r15)
	.cfi_offset 7, -24
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
	jl	.L2256
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2442
.L2256:
	ltr	%r1,%r1
	je	.L2443
	sll	%r1,3
	lr	%r5,%r1
	ahi	%r5,-8
	srl	%r5,3
	ahi	%r5,1
	lhi	%r8,7
	nr	%r8,%r5
	lr	%r7,%r1
	lhi	%r1,0
	je	.L2330
	chi	%r8,1
	je	.L2366
	chi	%r8,2
	je	.L2367
	chi	%r8,3
	je	.L2368
	chi	%r8,4
	je	.L2369
	chi	%r8,5
	je	.L2370
	chi	%r8,6
	je	.L2371
	lm	%r0,%r1,0(%r3)
	stm	%r0,%r1,0(%r2)
	lhi	%r1,8
.L2371:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	st	%r9,0(%r1,%r2)
	ahi	%r1,8
.L2370:
	l	%r8,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	st	%r8,0(%r1,%r2)
	ahi	%r1,8
.L2369:
	l	%r0,0(%r1,%r3)
	l	%r9,4(%r1,%r3)
	st	%r9,4(%r1,%r2)
	st	%r0,0(%r1,%r2)
	ahi	%r1,8
.L2368:
	l	%r10,0(%r1,%r3)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	st	%r10,0(%r1,%r2)
	ahi	%r1,8
.L2367:
	l	%r0,0(%r1,%r3)
	l	%r11,4(%r1,%r3)
	st	%r11,4(%r1,%r2)
	st	%r0,0(%r1,%r2)
	ahi	%r1,8
.L2366:
	l	%r9,0(%r1,%r3)
	l	%r10,4(%r1,%r3)
	st	%r10,4(%r1,%r2)
	st	%r9,0(%r1,%r2)
	ahi	%r1,8
	cr	%r1,%r7
	je	.L2422
.L2330:
	srl	%r5,3
.L2259:
	l	%r7,0(%r1,%r3)
	l	%r8,4(%r1,%r3)
	st	%r8,4(%r1,%r2)
	st	%r7,0(%r1,%r2)
	l	%r0,8(%r1,%r3)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	st	%r0,8(%r1,%r2)
	l	%r9,16(%r1,%r3)
	l	%r10,20(%r1,%r3)
	st	%r10,20(%r1,%r2)
	st	%r9,16(%r1,%r2)
	l	%r7,24(%r1,%r3)
	l	%r8,28(%r1,%r3)
	st	%r8,28(%r1,%r2)
	st	%r7,24(%r1,%r2)
	l	%r0,32(%r1,%r3)
	l	%r11,36(%r1,%r3)
	st	%r11,36(%r1,%r2)
	st	%r0,32(%r1,%r2)
	l	%r9,40(%r1,%r3)
	l	%r10,44(%r1,%r3)
	st	%r10,44(%r1,%r2)
	st	%r9,40(%r1,%r2)
	l	%r7,48(%r1,%r3)
	l	%r8,52(%r1,%r3)
	st	%r8,52(%r1,%r2)
	st	%r7,48(%r1,%r2)
	l	%r0,56(%r1,%r3)
	l	%r11,60(%r1,%r3)
	st	%r11,60(%r1,%r2)
	st	%r0,56(%r1,%r2)
	ahi	%r1,64
	brct	%r5,.L2259
.L2422:
	clr	%r4,%r12
	jle	.L2252
	lr	%r10,%r4
	sr	%r10,%r12
	lr	%r1,%r10
	ahi	%r1,-1
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L2372
	lr	%r9,%r12
	lr	%r5,%r2
	ahi	%r9,1
	ar	%r5,%r12
	ar	%r9,%r3
	lr	%r7,%r5
	lr	%r11,%r3
	sr	%r7,%r9
	ar	%r11,%r12
	lhi	%r8,2
	clr	%r7,%r8
	jle	.L2372
	lr	%r1,%r11
	or	%r1,%r5
	lhi	%r0,3
	nr	%r1,%r0
	ahi	%r1,-1
	ltr	%r1,%r1
	jhe	.L2372
	lhi	%r9,-4
	nr	%r9,%r10
	lr	%r0,%r9
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	lhi	%r7,7
	nr	%r7,%r0
	lhi	%r1,0
	je	.L2309
	chi	%r7,1
	je	.L2373
	chi	%r7,2
	je	.L2374
	chi	%r7,3
	je	.L2375
	chi	%r7,4
	je	.L2376
	chi	%r7,5
	je	.L2377
	chi	%r7,6
	je	.L2378
	l	%r8,0(%r11)
	st	%r8,0(%r5)
	lhi	%r1,4
.L2378:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	ahi	%r1,4
.L2377:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2376:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	ahi	%r1,4
.L2375:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2374:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	ahi	%r1,4
.L2373:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L2421
.L2309:
	srl	%r0,3
	chi	%r0,2
	jle	.L2438
	ahi	%r0,-1
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
.L2262:
	ahi	%r1,32
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
	brct	%r0,.L2262
.L2421:
	ar	%r12,%r9
	cr	%r9,%r10
	je	.L2252
	lr	%r10,%r12
	ahi	%r10,1
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	clr	%r4,%r10
	jle	.L2252
	ahi	%r10,1
	ic	%r5,1(%r12,%r3)
	stc	%r5,1(%r12,%r2)
	clr	%r4,%r10
	jle	.L2252
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2252:
	lm	%r7,%r12,72(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L2442:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2252
	lhi	%r0,7
	nr	%r0,%r4
	je	.L2351
	chi	%r0,1
	je	.L2360
	chi	%r0,2
	je	.L2361
	chi	%r0,3
	je	.L2362
	chi	%r0,4
	je	.L2363
	chi	%r0,5
	je	.L2364
	chi	%r0,6
	jne	.L2444
.L2365:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ahi	%r1,-1
.L2364:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L2363:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L2362:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
.L2361:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,-1
.L2360:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2252
.L2351:
	srl	%r4,3
	chi	%r4,2
	jle	.L2439
	ahi	%r4,-1
	lr	%r5,%r1
	ahi	%r5,-7
	lr	%r12,%r1
	ahi	%r12,-6
	lr	%r11,%r1
	ahi	%r11,-5
	lr	%r10,%r1
	ahi	%r10,-4
	lr	%r9,%r1
	ahi	%r9,-3
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r7,%r1
	ahi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
.L2257:
	ahi	%r1,-8
	lr	%r5,%r1
	ahi	%r5,-7
	lr	%r12,%r1
	ahi	%r12,-6
	lr	%r11,%r1
	ahi	%r11,-5
	lr	%r10,%r1
	ahi	%r10,-4
	lr	%r9,%r1
	ahi	%r9,-3
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r7,%r1
	ahi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	brct	%r4,.L2257
	j	.L2252
.L2438:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	l	%r8,4(%r1,%r11)
	st	%r8,4(%r1,%r5)
	l	%r7,8(%r1,%r11)
	st	%r7,8(%r1,%r5)
	l	%r8,12(%r1,%r11)
	st	%r8,12(%r1,%r5)
	l	%r7,16(%r1,%r11)
	st	%r7,16(%r1,%r5)
	l	%r8,20(%r1,%r11)
	st	%r8,20(%r1,%r5)
	l	%r7,24(%r1,%r11)
	st	%r7,24(%r1,%r5)
	l	%r8,28(%r1,%r11)
	st	%r8,28(%r1,%r5)
	ahi	%r1,32
	brct	%r0,.L2438
	j	.L2421
.L2443:
	ltr	%r4,%r4
	je	.L2252
.L2372:
	lr	%r1,%r4
	sr	%r1,%r12
	lhi	%r9,7
	nr	%r9,%r1
	je	.L2288
	chi	%r9,1
	je	.L2379
	chi	%r9,2
	je	.L2380
	chi	%r9,3
	je	.L2381
	chi	%r9,4
	je	.L2382
	chi	%r9,5
	je	.L2383
	chi	%r9,6
	je	.L2384
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
.L2384:
	ic	%r7,0(%r12,%r3)
	stc	%r7,0(%r12,%r2)
	ahi	%r12,1
.L2383:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
.L2382:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L2381:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
.L2380:
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r12,1
.L2379:
	ic	%r9,0(%r12,%r3)
	stc	%r9,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L2252
.L2288:
	srl	%r1,3
	chi	%r1,2
	jle	.L2437
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ic	%r4,4(%r12,%r3)
	stc	%r4,4(%r12,%r2)
	ic	%r4,5(%r12,%r3)
	stc	%r4,5(%r12,%r2)
	ic	%r4,6(%r12,%r3)
	stc	%r4,6(%r12,%r2)
	ic	%r4,7(%r12,%r3)
	stc	%r4,7(%r12,%r2)
.L2264:
	ahi	%r12,8
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ic	%r4,4(%r12,%r3)
	stc	%r4,4(%r12,%r2)
	ic	%r4,5(%r12,%r3)
	stc	%r4,5(%r12,%r2)
	ic	%r4,6(%r12,%r3)
	stc	%r4,6(%r12,%r2)
	ic	%r4,7(%r12,%r3)
	stc	%r4,7(%r12,%r2)
	brct	%r1,.L2264
	j	.L2252
.L2439:
	lr	%r7,%r1
	ahi	%r7,-1
	lr	%r9,%r1
	ic	%r0,0(%r1,%r3)
	ahi	%r9,-2
	stc	%r0,0(%r1,%r2)
	lr	%r11,%r1
	ic	%r8,0(%r7,%r3)
	ahi	%r11,-3
	stc	%r8,0(%r7,%r2)
	lr	%r7,%r1
	ahi	%r7,-4
	ic	%r10,0(%r9,%r3)
	lr	%r8,%r1
	stc	%r10,0(%r9,%r2)
	ahi	%r8,-5
	ic	%r12,0(%r11,%r3)
	lr	%r9,%r1
	stc	%r12,0(%r11,%r2)
	ahi	%r9,-6
	ic	%r5,0(%r7,%r3)
	lr	%r11,%r1
	stc	%r5,0(%r7,%r2)
	ahi	%r11,-7
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	ahi	%r1,-8
	brct	%r4,.L2439
	j	.L2252
.L2444:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
	j	.L2365
.L2437:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r0,1(%r12,%r3)
	stc	%r0,1(%r12,%r2)
	ic	%r7,2(%r12,%r3)
	stc	%r7,2(%r12,%r2)
	ic	%r8,3(%r12,%r3)
	stc	%r8,3(%r12,%r2)
	ic	%r10,4(%r12,%r3)
	stc	%r10,4(%r12,%r2)
	ic	%r11,5(%r12,%r3)
	stc	%r11,5(%r12,%r2)
	ic	%r5,6(%r12,%r3)
	stc	%r5,6(%r12,%r2)
	ic	%r9,7(%r12,%r3)
	stc	%r9,7(%r12,%r2)
	ahi	%r12,8
	brct	%r1,.L2437
	j	.L2252
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
	stm	%r7,%r12,72(%r15)
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 12, -4
	clr	%r2,%r3
	srl	%r0,1
	jl	.L2450
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r2,%r1
	jle	.L2595
.L2450:
	ltr	%r0,%r0
	je	.L2449
	lr	%r1,%r0
	ahi	%r1,-1
	lhi	%r12,8
	clr	%r1,%r12
	jle	.L2453
	lr	%r7,%r3
	or	%r7,%r2
	lhi	%r5,3
	nr	%r7,%r5
	ahi	%r7,-1
	ltr	%r7,%r7
	jhe	.L2453
	lr	%r8,%r3
	ahi	%r8,2
	cr	%r2,%r8
	je	.L2453
	lhi	%r11,-4
	nr	%r11,%r4
	lr	%r5,%r11
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
	lhi	%r9,7
	lr	%r10,%r4
	nr	%r9,%r5
	srl	%r10,2
	lhi	%r1,0
	je	.L2503
	chi	%r9,1
	je	.L2539
	chi	%r9,2
	je	.L2540
	chi	%r9,3
	je	.L2541
	chi	%r9,4
	je	.L2542
	chi	%r9,5
	je	.L2543
	chi	%r9,6
	je	.L2544
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L2544:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L2543:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	ahi	%r1,4
.L2542:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	ahi	%r1,4
.L2541:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
.L2540:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L2539:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r11
	je	.L2578
.L2503:
	srl	%r5,3
	chi	%r5,2
	jle	.L2592
	ahi	%r5,-1
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
.L2454:
	ahi	%r1,32
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
	brct	%r5,.L2454
.L2578:
	sll	%r10,1
	cr	%r0,%r10
	je	.L2449
	lh	%r0,0(%r11,%r3)
	sth	%r0,0(%r11,%r2)
.L2449:
	tml	%r4,1
	je	.L2446
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L2446:
	lm	%r7,%r12,72(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L2595:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2446
	lhi	%r5,7
	nr	%r5,%r4
	je	.L2524
	chi	%r5,1
	je	.L2533
	chi	%r5,2
	je	.L2534
	chi	%r5,3
	je	.L2535
	chi	%r5,4
	je	.L2536
	chi	%r5,5
	je	.L2537
	chi	%r5,6
	jne	.L2596
.L2538:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	ahi	%r1,-1
.L2537:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ahi	%r1,-1
.L2536:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L2535:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L2534:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
.L2533:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2446
.L2524:
	srl	%r4,3
	chi	%r4,2
	jle	.L2593
	ahi	%r4,-1
	lr	%r5,%r1
	ahi	%r5,-7
	lr	%r12,%r1
	ahi	%r12,-6
	lr	%r11,%r1
	ahi	%r11,-5
	lr	%r10,%r1
	ahi	%r10,-4
	lr	%r9,%r1
	ahi	%r9,-3
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r7,%r1
	ahi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
.L2451:
	ahi	%r1,-8
	lr	%r5,%r1
	ahi	%r5,-7
	lr	%r12,%r1
	ahi	%r12,-6
	lr	%r11,%r1
	ahi	%r11,-5
	lr	%r10,%r1
	ahi	%r10,-4
	lr	%r9,%r1
	ahi	%r9,-3
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r7,%r1
	ahi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	brct	%r4,.L2451
	j	.L2446
.L2592:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	l	%r9,4(%r1,%r3)
	st	%r9,4(%r1,%r2)
	l	%r12,8(%r1,%r3)
	st	%r12,8(%r1,%r2)
	l	%r7,12(%r1,%r3)
	st	%r7,12(%r1,%r2)
	l	%r8,16(%r1,%r3)
	st	%r8,16(%r1,%r2)
	l	%r9,20(%r1,%r3)
	st	%r9,20(%r1,%r2)
	l	%r12,24(%r1,%r3)
	st	%r12,24(%r1,%r2)
	l	%r7,28(%r1,%r3)
	st	%r7,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L2592
	j	.L2578
.L2453:
	sll	%r0,1
	lr	%r5,%r0
	ahi	%r5,-2
	srl	%r5,1
	ahi	%r5,1
	lhi	%r10,7
	nr	%r10,%r5
	lhi	%r1,0
	je	.L2482
	chi	%r10,1
	je	.L2545
	chi	%r10,2
	je	.L2546
	chi	%r10,3
	je	.L2547
	chi	%r10,4
	je	.L2548
	chi	%r10,5
	je	.L2549
	chi	%r10,6
	je	.L2550
	lh	%r11,0(%r3)
	sth	%r11,0(%r2)
	lhi	%r1,2
.L2550:
	lh	%r8,0(%r1,%r3)
	sth	%r8,0(%r1,%r2)
	ahi	%r1,2
.L2549:
	lh	%r9,0(%r1,%r3)
	sth	%r9,0(%r1,%r2)
	ahi	%r1,2
.L2548:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L2547:
	lh	%r7,0(%r1,%r3)
	sth	%r7,0(%r1,%r2)
	ahi	%r1,2
.L2546:
	lh	%r10,0(%r1,%r3)
	sth	%r10,0(%r1,%r2)
	ahi	%r1,2
.L2545:
	lh	%r11,0(%r1,%r3)
	sth	%r11,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L2449
.L2482:
	srl	%r5,3
	chi	%r5,2
	jle	.L2591
	ahi	%r5,-1
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	lh	%r0,8(%r1,%r3)
	sth	%r0,8(%r1,%r2)
	lh	%r0,10(%r1,%r3)
	sth	%r0,10(%r1,%r2)
	lh	%r0,12(%r1,%r3)
	sth	%r0,12(%r1,%r2)
	lh	%r0,14(%r1,%r3)
	sth	%r0,14(%r1,%r2)
.L2456:
	ahi	%r1,16
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r0,6(%r1,%r3)
	sth	%r0,6(%r1,%r2)
	lh	%r0,8(%r1,%r3)
	sth	%r0,8(%r1,%r2)
	lh	%r0,10(%r1,%r3)
	sth	%r0,10(%r1,%r2)
	lh	%r0,12(%r1,%r3)
	sth	%r0,12(%r1,%r2)
	lh	%r0,14(%r1,%r3)
	sth	%r0,14(%r1,%r2)
	brct	%r5,.L2456
	j	.L2449
.L2593:
	lr	%r7,%r1
	ahi	%r7,-1
	lr	%r8,%r1
	ahi	%r8,-2
	ic	%r5,0(%r1,%r3)
	lr	%r10,%r1
	stc	%r5,0(%r1,%r2)
	ahi	%r10,-3
	ic	%r0,0(%r7,%r3)
	lr	%r12,%r1
	stc	%r0,0(%r7,%r2)
	ahi	%r12,-4
	ic	%r9,0(%r8,%r3)
	lr	%r7,%r1
	stc	%r9,0(%r8,%r2)
	ahi	%r7,-5
	ic	%r11,0(%r10,%r3)
	lr	%r8,%r1
	stc	%r11,0(%r10,%r2)
	ahi	%r8,-6
	ic	%r5,0(%r12,%r3)
	lr	%r10,%r1
	stc	%r5,0(%r12,%r2)
	ahi	%r10,-7
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r9,0(%r8,%r3)
	stc	%r9,0(%r8,%r2)
	ic	%r11,0(%r10,%r3)
	stc	%r11,0(%r10,%r2)
	ahi	%r1,-8
	brct	%r4,.L2593
	j	.L2446
.L2596:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
	j	.L2538
.L2591:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r8,2(%r1,%r3)
	sth	%r8,2(%r1,%r2)
	lh	%r9,4(%r1,%r3)
	sth	%r9,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	lh	%r7,8(%r1,%r3)
	sth	%r7,8(%r1,%r2)
	lh	%r10,10(%r1,%r3)
	sth	%r10,10(%r1,%r2)
	lh	%r11,12(%r1,%r3)
	sth	%r11,12(%r1,%r2)
	lh	%r0,14(%r1,%r3)
	sth	%r0,14(%r1,%r2)
	ahi	%r1,16
	brct	%r5,.L2591
	j	.L2449
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
.LFB107:
	.cfi_startproc
	stm	%r7,%r12,72(%r15)
	.cfi_offset 7, -24
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
	jl	.L2602
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L2791
.L2602:
	ltr	%r1,%r1
	je	.L2792
	sll	%r1,2
	lr	%r5,%r1
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
	lhi	%r8,7
	nr	%r8,%r5
	lr	%r7,%r1
	lhi	%r1,0
	je	.L2676
	chi	%r8,1
	je	.L2712
	chi	%r8,2
	je	.L2713
	chi	%r8,3
	je	.L2714
	chi	%r8,4
	je	.L2715
	chi	%r8,5
	je	.L2716
	chi	%r8,6
	je	.L2717
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	lhi	%r1,4
.L2717:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L2716:
	l	%r9,0(%r1,%r3)
	st	%r9,0(%r1,%r2)
	ahi	%r1,4
.L2715:
	l	%r10,0(%r1,%r3)
	st	%r10,0(%r1,%r2)
	ahi	%r1,4
.L2714:
	l	%r11,0(%r1,%r3)
	st	%r11,0(%r1,%r2)
	ahi	%r1,4
.L2713:
	l	%r8,0(%r1,%r3)
	st	%r8,0(%r1,%r2)
	ahi	%r1,4
.L2712:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	cr	%r1,%r7
	je	.L2768
.L2676:
	srl	%r5,3
	chi	%r5,2
	jle	.L2788
	ahi	%r5,-1
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
.L2605:
	ahi	%r1,32
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r0,8(%r1,%r3)
	st	%r0,8(%r1,%r2)
	l	%r0,12(%r1,%r3)
	st	%r0,12(%r1,%r2)
	l	%r0,16(%r1,%r3)
	st	%r0,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r0,24(%r1,%r3)
	st	%r0,24(%r1,%r2)
	l	%r0,28(%r1,%r3)
	st	%r0,28(%r1,%r2)
	brct	%r5,.L2605
.L2768:
	clr	%r4,%r12
	jle	.L2598
	lr	%r10,%r4
	sr	%r10,%r12
	lr	%r1,%r10
	ahi	%r1,-1
	lhi	%r5,6
	clr	%r1,%r5
	jle	.L2718
	lr	%r11,%r12
	lr	%r5,%r2
	ahi	%r11,1
	ar	%r5,%r12
	ar	%r11,%r3
	lr	%r8,%r5
	sr	%r8,%r11
	lr	%r11,%r3
	ar	%r11,%r12
	lhi	%r0,2
	clr	%r8,%r0
	jle	.L2718
	lr	%r7,%r11
	or	%r7,%r5
	lhi	%r9,3
	nr	%r7,%r9
	ahi	%r7,-1
	ltr	%r7,%r7
	jhe	.L2718
	lhi	%r9,-4
	nr	%r9,%r10
	lr	%r0,%r9
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	lhi	%r8,7
	nr	%r8,%r0
	lhi	%r1,0
	je	.L2655
	chi	%r8,1
	je	.L2719
	chi	%r8,2
	je	.L2720
	chi	%r8,3
	je	.L2721
	chi	%r8,4
	je	.L2722
	chi	%r8,5
	je	.L2723
	chi	%r8,6
	je	.L2724
	l	%r1,0(%r11)
	st	%r1,0(%r5)
	lhi	%r1,4
.L2724:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	ahi	%r1,4
.L2723:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2722:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	ahi	%r1,4
.L2721:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
.L2720:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	ahi	%r1,4
.L2719:
	l	%r8,0(%r1,%r11)
	st	%r8,0(%r1,%r5)
	ahi	%r1,4
	cr	%r9,%r1
	je	.L2767
.L2655:
	srl	%r0,3
	chi	%r0,2
	jle	.L2787
	ahi	%r0,-1
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
.L2608:
	ahi	%r1,32
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
	brct	%r0,.L2608
.L2767:
	ar	%r12,%r9
	cr	%r9,%r10
	je	.L2598
	lr	%r10,%r12
	ahi	%r10,1
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	clr	%r4,%r10
	jle	.L2598
	ahi	%r10,1
	ic	%r11,1(%r12,%r3)
	stc	%r11,1(%r12,%r2)
	clr	%r4,%r10
	jle	.L2598
	ic	%r3,2(%r12,%r3)
	stc	%r3,2(%r12,%r2)
.L2598:
	lm	%r7,%r12,72(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	br	%r14
.L2791:
	.cfi_restore_state
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L2598
	lhi	%r0,7
	nr	%r0,%r4
	je	.L2697
	chi	%r0,1
	je	.L2706
	chi	%r0,2
	je	.L2707
	chi	%r0,3
	je	.L2708
	chi	%r0,4
	je	.L2709
	chi	%r0,5
	je	.L2710
	chi	%r0,6
	jne	.L2793
.L2711:
	ic	%r8,0(%r1,%r3)
	stc	%r8,0(%r1,%r2)
	ahi	%r1,-1
.L2710:
	ic	%r9,0(%r1,%r3)
	stc	%r9,0(%r1,%r2)
	ahi	%r1,-1
.L2709:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,-1
.L2708:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,-1
.L2707:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,-1
.L2706:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	je	.L2598
.L2697:
	srl	%r4,3
	chi	%r4,2
	jle	.L2789
	ahi	%r4,-1
	lr	%r5,%r1
	ahi	%r5,-7
	lr	%r12,%r1
	ahi	%r12,-6
	lr	%r11,%r1
	ahi	%r11,-5
	lr	%r10,%r1
	ahi	%r10,-4
	lr	%r9,%r1
	ahi	%r9,-3
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r7,%r1
	ahi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
.L2603:
	ahi	%r1,-8
	lr	%r5,%r1
	ahi	%r5,-7
	lr	%r12,%r1
	ahi	%r12,-6
	lr	%r11,%r1
	ahi	%r11,-5
	lr	%r10,%r1
	ahi	%r10,-4
	lr	%r9,%r1
	ahi	%r9,-3
	lr	%r8,%r1
	ahi	%r8,-2
	lr	%r7,%r1
	ahi	%r7,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ic	%r0,0(%r7,%r3)
	stc	%r0,0(%r7,%r2)
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r0,0(%r9,%r3)
	stc	%r0,0(%r9,%r2)
	ic	%r0,0(%r10,%r3)
	stc	%r0,0(%r10,%r2)
	ic	%r0,0(%r11,%r3)
	stc	%r0,0(%r11,%r2)
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	brct	%r4,.L2603
	j	.L2598
.L2788:
	l	%r7,0(%r1,%r3)
	st	%r7,0(%r1,%r2)
	l	%r9,4(%r1,%r3)
	st	%r9,4(%r1,%r2)
	l	%r10,8(%r1,%r3)
	st	%r10,8(%r1,%r2)
	l	%r11,12(%r1,%r3)
	st	%r11,12(%r1,%r2)
	l	%r8,16(%r1,%r3)
	st	%r8,16(%r1,%r2)
	l	%r0,20(%r1,%r3)
	st	%r0,20(%r1,%r2)
	l	%r7,24(%r1,%r3)
	st	%r7,24(%r1,%r2)
	l	%r9,28(%r1,%r3)
	st	%r9,28(%r1,%r2)
	ahi	%r1,32
	brct	%r5,.L2788
	j	.L2768
.L2787:
	l	%r7,0(%r1,%r11)
	st	%r7,0(%r1,%r5)
	l	%r8,4(%r1,%r11)
	st	%r8,4(%r1,%r5)
	l	%r7,8(%r1,%r11)
	st	%r7,8(%r1,%r5)
	l	%r8,12(%r1,%r11)
	st	%r8,12(%r1,%r5)
	l	%r7,16(%r1,%r11)
	st	%r7,16(%r1,%r5)
	l	%r8,20(%r1,%r11)
	st	%r8,20(%r1,%r5)
	l	%r7,24(%r1,%r11)
	st	%r7,24(%r1,%r5)
	l	%r8,28(%r1,%r11)
	st	%r8,28(%r1,%r5)
	ahi	%r1,32
	brct	%r0,.L2787
	j	.L2767
.L2792:
	ltr	%r4,%r4
	je	.L2598
.L2718:
	lr	%r1,%r4
	sr	%r1,%r12
	lhi	%r0,7
	nr	%r0,%r1
	je	.L2634
	chi	%r0,1
	je	.L2725
	chi	%r0,2
	je	.L2726
	chi	%r0,3
	je	.L2727
	chi	%r0,4
	je	.L2728
	chi	%r0,5
	je	.L2729
	chi	%r0,6
	je	.L2730
	ic	%r9,0(%r12,%r3)
	stc	%r9,0(%r12,%r2)
	ahi	%r12,1
.L2730:
	ic	%r7,0(%r12,%r3)
	stc	%r7,0(%r12,%r2)
	ahi	%r12,1
.L2729:
	ic	%r8,0(%r12,%r3)
	stc	%r8,0(%r12,%r2)
	ahi	%r12,1
.L2728:
	ic	%r10,0(%r12,%r3)
	stc	%r10,0(%r12,%r2)
	ahi	%r12,1
.L2727:
	ic	%r5,0(%r12,%r3)
	stc	%r5,0(%r12,%r2)
	ahi	%r12,1
.L2726:
	ic	%r11,0(%r12,%r3)
	stc	%r11,0(%r12,%r2)
	ahi	%r12,1
.L2725:
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r2)
	ahi	%r12,1
	cr	%r4,%r12
	je	.L2598
.L2634:
	srl	%r1,3
	chi	%r1,2
	jle	.L2786
	ahi	%r1,-1
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ic	%r4,4(%r12,%r3)
	stc	%r4,4(%r12,%r2)
	ic	%r4,5(%r12,%r3)
	stc	%r4,5(%r12,%r2)
	ic	%r4,6(%r12,%r3)
	stc	%r4,6(%r12,%r2)
	ic	%r4,7(%r12,%r3)
	stc	%r4,7(%r12,%r2)
.L2610:
	ahi	%r12,8
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r4,1(%r12,%r3)
	stc	%r4,1(%r12,%r2)
	ic	%r4,2(%r12,%r3)
	stc	%r4,2(%r12,%r2)
	ic	%r4,3(%r12,%r3)
	stc	%r4,3(%r12,%r2)
	ic	%r4,4(%r12,%r3)
	stc	%r4,4(%r12,%r2)
	ic	%r4,5(%r12,%r3)
	stc	%r4,5(%r12,%r2)
	ic	%r4,6(%r12,%r3)
	stc	%r4,6(%r12,%r2)
	ic	%r4,7(%r12,%r3)
	stc	%r4,7(%r12,%r2)
	brct	%r1,.L2610
	j	.L2598
.L2789:
	lr	%r7,%r1
	ahi	%r7,-1
	lr	%r9,%r1
	ic	%r0,0(%r1,%r3)
	ahi	%r9,-2
	stc	%r0,0(%r1,%r2)
	lr	%r11,%r1
	ic	%r8,0(%r7,%r3)
	ahi	%r11,-3
	stc	%r8,0(%r7,%r2)
	lr	%r7,%r1
	ahi	%r7,-4
	ic	%r10,0(%r9,%r3)
	lr	%r8,%r1
	stc	%r10,0(%r9,%r2)
	ahi	%r8,-5
	ic	%r12,0(%r11,%r3)
	lr	%r9,%r1
	stc	%r12,0(%r11,%r2)
	ahi	%r9,-6
	ic	%r5,0(%r7,%r3)
	lr	%r11,%r1
	stc	%r5,0(%r7,%r2)
	ahi	%r11,-7
	ic	%r0,0(%r8,%r3)
	stc	%r0,0(%r8,%r2)
	ic	%r10,0(%r9,%r3)
	stc	%r10,0(%r9,%r2)
	ic	%r12,0(%r11,%r3)
	stc	%r12,0(%r11,%r2)
	ahi	%r1,-8
	brct	%r4,.L2789
	j	.L2598
.L2793:
	ic	%r7,0(%r1,%r3)
	stc	%r7,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
	j	.L2711
.L2786:
	ic	%r4,0(%r12,%r3)
	stc	%r4,0(%r12,%r2)
	ic	%r9,1(%r12,%r3)
	stc	%r9,1(%r12,%r2)
	ic	%r7,2(%r12,%r3)
	stc	%r7,2(%r12,%r2)
	ic	%r8,3(%r12,%r3)
	stc	%r8,3(%r12,%r2)
	ic	%r10,4(%r12,%r3)
	stc	%r10,4(%r12,%r2)
	ic	%r5,5(%r12,%r3)
	stc	%r5,5(%r12,%r2)
	ic	%r11,6(%r12,%r3)
	stc	%r11,6(%r12,%r2)
	ic	%r0,7(%r12,%r3)
	stc	%r0,7(%r12,%r2)
	ahi	%r12,8
	brct	%r1,.L2786
	j	.L2598
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
	larl	%r5,.L2800
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L2801-.L2800(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2800:
.L2801:
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
	larl	%r5,.L2805
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L2803
	adb	%f0,.L2806-.L2805(%r5)
.L2803:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L2805:
.L2806:
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
	jne	.L2818
	lr	%r2,%r1
	sra	%r2,14
	bner	%r14
	lr	%r0,%r1
	sra	%r0,13
	ltr	%r0,%r0
	jne	.L2819
	lr	%r3,%r1
	sra	%r3,12
	ltr	%r3,%r3
	jne	.L2820
	lr	%r4,%r1
	sra	%r4,11
	ltr	%r4,%r4
	jne	.L2821
	lr	%r5,%r1
	sra	%r5,10
	ltr	%r5,%r5
	jne	.L2822
	lr	%r2,%r1
	sra	%r2,9
	ltr	%r2,%r2
	jne	.L2823
	lr	%r0,%r1
	sra	%r0,8
	ltr	%r0,%r0
	jne	.L2824
	lr	%r3,%r1
	sra	%r3,7
	ltr	%r3,%r3
	jne	.L2825
	lr	%r4,%r1
	sra	%r4,6
	ltr	%r4,%r4
	jne	.L2826
	lr	%r5,%r1
	sra	%r5,5
	ltr	%r5,%r5
	jne	.L2827
	lr	%r2,%r1
	sra	%r2,4
	ltr	%r2,%r2
	jne	.L2828
	lr	%r0,%r1
	sra	%r0,3
	ltr	%r0,%r0
	jne	.L2829
	lr	%r3,%r1
	sra	%r3,2
	ltr	%r3,%r3
	jne	.L2830
	lr	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L2831
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2818:
	lhi	%r2,0
	br	%r14
.L2829:
	lhi	%r2,12
	br	%r14
.L2819:
	lhi	%r2,2
	br	%r14
.L2820:
	lhi	%r2,3
	br	%r14
.L2821:
	lhi	%r2,4
	br	%r14
.L2822:
	lhi	%r2,5
	br	%r14
.L2823:
	lhi	%r2,6
	br	%r14
.L2824:
	lhi	%r2,7
	br	%r14
.L2825:
	lhi	%r2,8
	br	%r14
.L2826:
	lhi	%r2,9
	br	%r14
.L2827:
	lhi	%r2,10
	br	%r14
.L2828:
	lhi	%r2,11
	br	%r14
.L2830:
	lhi	%r2,13
	br	%r14
.L2831:
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
	jne	.L2838
	tml	%r2,2
	jne	.L2839
	tml	%r2,4
	jne	.L2840
	tml	%r2,8
	jne	.L2841
	tml	%r2,16
	jne	.L2842
	tml	%r2,32
	jne	.L2843
	tml	%r2,64
	jne	.L2844
	tml	%r2,128
	jne	.L2845
	tml	%r2,256
	jne	.L2846
	tml	%r2,512
	jne	.L2847
	tml	%r2,1024
	jne	.L2848
	tml	%r2,2048
	jne	.L2849
	tml	%r2,4096
	jne	.L2850
	tml	%r2,8192
	jne	.L2851
	tml	%r2,16384
	jne	.L2852
	lr	%r1,%r2
	sra	%r1,15
	ltr	%r1,%r1
	lhi	%r2,16
	ber	%r14
	lhi	%r2,15
	br	%r14
.L2838:
	lhi	%r2,0
	br	%r14
.L2839:
	lhi	%r2,1
	br	%r14
.L2850:
	lhi	%r2,12
	br	%r14
.L2840:
	lhi	%r2,2
	br	%r14
.L2841:
	lhi	%r2,3
	br	%r14
.L2842:
	lhi	%r2,4
	br	%r14
.L2843:
	lhi	%r2,5
	br	%r14
.L2844:
	lhi	%r2,6
	br	%r14
.L2845:
	lhi	%r2,7
	br	%r14
.L2846:
	lhi	%r2,8
	br	%r14
.L2847:
	lhi	%r2,9
	br	%r14
.L2848:
	lhi	%r2,10
	br	%r14
.L2849:
	lhi	%r2,11
	br	%r14
.L2851:
	lhi	%r2,13
	br	%r14
.L2852:
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
	larl	%r5,.L2864
	keb	%f0,.L2865-.L2864(%r5)
	jhe	.L2863
	cfebr	%r2,5,%f0
	br	%r14
.L2863:
	seb	%f0,.L2865-.L2864(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L2866-.L2864(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L2864:
.L2865:
	.long	1191182336
.L2866:
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
	lr	%r0,%r1
	lhi	%r4,1
	nr	%r4,%r1
	nr	%r2,%r3
	sra	%r0,2
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,3
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,5
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,6
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,7
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,8
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,9
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,10
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,11
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,12
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r2,%r4
	lr	%r4,%r1
	ar	%r2,%r0
	sra	%r4,13
	lhi	%r3,1
	lr	%r0,%r1
	nr	%r4,%r3
	sra	%r0,14
	lhi	%r5,1
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
	sra	%r1,1
	lhi	%r3,1
	lr	%r0,%r2
	lhi	%r4,1
	nr	%r4,%r2
	nr	%r1,%r3
	sra	%r0,2
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lr	%r4,%r2
	ar	%r1,%r0
	sra	%r4,3
	lhi	%r3,1
	lr	%r0,%r2
	nr	%r4,%r3
	sra	%r0,4
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lr	%r4,%r2
	ar	%r1,%r0
	sra	%r4,5
	lhi	%r3,1
	lr	%r0,%r2
	nr	%r4,%r3
	sra	%r0,6
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lr	%r4,%r2
	ar	%r1,%r0
	sra	%r4,7
	lhi	%r3,1
	lr	%r0,%r2
	nr	%r4,%r3
	sra	%r0,8
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lr	%r4,%r2
	ar	%r1,%r0
	sra	%r4,9
	lhi	%r3,1
	lr	%r0,%r2
	nr	%r4,%r3
	sra	%r0,10
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lr	%r4,%r2
	ar	%r1,%r0
	sra	%r4,11
	lhi	%r3,1
	lr	%r0,%r2
	nr	%r4,%r3
	sra	%r0,12
	lhi	%r5,1
	nr	%r0,%r5
	ar	%r1,%r4
	lr	%r4,%r2
	ar	%r1,%r0
	sra	%r4,13
	lhi	%r3,1
	lr	%r0,%r2
	nr	%r4,%r3
	sra	%r0,14
	lhi	%r5,1
	ar	%r1,%r4
	nr	%r0,%r5
	ar	%r1,%r0
	sra	%r2,15
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
.L2873:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	ltr	%r4,%r4
	sll	%r3,1
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	ltr	%r4,%r4
	sll	%r3,1
	jne	.L2873
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
.L2880:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	srl	%r3,1
	ltr	%r3,%r3
	sll	%r4,1
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	srl	%r3,1
	ltr	%r3,%r3
	sll	%r4,1
	jne	.L2880
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
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r12,%r2
	jle	.L2926
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r5,4
.L2887:
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ltr	%r3,%r3
	jl	.L2892
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L2889
	ahi	%r2,-8
	brct	%r5,.L2887
.L2890:
	ltr	%r4,%r4
	je	.L2886
	lr	%r2,%r12
.L2886:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L2889:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L2902
.L2892:
	lhi	%r2,0
	j	.L2897
.L2927:
	lr	%r5,%r1
.L2896:
	or	%r2,%r5
	srl	%r1,1
	ltr	%r1,%r1
	srl	%r3,1
	je	.L2890
.L2897:
	lr	%r5,%r12
	lr	%r0,%r12
	sr	%r5,%r3
	slr	%r0,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2894
	lr	%r12,%r5
.L2894:
	ltr	%r0,%r0
	jne	.L2927
	lhi	%r5,0
	j	.L2896
.L2926:
	sr	%r2,%r3
	lr	%r1,%r12
	slr	%r1,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L2900
	lr	%r12,%r2
.L2900:
	lhi	%r2,255
	nr	%r2,%r0
	j	.L2890
.L2902:
	lhi	%r2,0
	j	.L2890
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
	jl	.L2932
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2932:
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
	jl	.L2937
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L2937:
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
	jl	.L2957
	je	.L2949
	lhi	%r0,0
.L2945:
	lhi	%r5,32
	lhi	%r2,0
	j	.L2948
.L2958:
	lr	%r1,%r5
	ahi	%r1,-1
	tml	%r1,255
	lr	%r5,%r1
	je	.L2947
.L2948:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sra	%r3,1
	sll	%r4,1
	jne	.L2958
.L2947:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L2957:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L2945
.L2949:
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
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	ltr	%r2,%r2
	jl	.L3004
	lhi	%r1,1
	lhi	%r12,0
.L2961:
	ltr	%r3,%r3
	jhe	.L2962
	lcr	%r3,%r3
	lr	%r12,%r1
.L2962:
	clr	%r2,%r3
	lr	%r4,%r2
	lr	%r1,%r3
	jle	.L3005
	lhi	%r3,1
	lhi	%r5,4
.L2963:
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	sll	%r1,1
	clr	%r2,%r1
	sll	%r3,1
	jle	.L2968
	brct	%r5,.L2963
.L2968:
	ltr	%r3,%r3
	lhi	%r2,0
	jne	.L2965
	j	.L2966
.L3006:
	lr	%r0,%r3
	or	%r2,%r0
	srl	%r3,1
	ltr	%r3,%r3
	srl	%r1,1
	je	.L2966
.L2965:
	lr	%r0,%r4
	lr	%r5,%r4
	sr	%r0,%r1
	slr	%r5,%r1
	lhi	%r5,0
	alcr	%r5,%r5
	ltr	%r5,%r5
	je	.L2970
	lr	%r4,%r0
.L2970:
	ltr	%r5,%r5
	jne	.L3006
	lhi	%r0,0
	or	%r2,%r0
	srl	%r3,1
	ltr	%r3,%r3
	srl	%r1,1
	jne	.L2965
.L2966:
	ltr	%r12,%r12
	je	.L2960
	lcr	%r2,%r2
.L2960:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3004:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r1,0
	lhi	%r12,1
	j	.L2961
.L3005:
	slr	%r2,%r3
	lhi	%r2,0
	alcr	%r2,%r2
	j	.L2966
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
	jl	.L3050
	lhi	%r0,0
.L3009:
	lpr	%r1,%r3
	clr	%r4,%r1
	lr	%r2,%r4
	jle	.L3051
	lhi	%r3,1
	lhi	%r5,4
.L3010:
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	sll	%r1,1
	clr	%r4,%r1
	sll	%r3,1
	jle	.L3015
	brct	%r5,.L3010
.L3015:
	ltr	%r3,%r3
	je	.L3049
.L3012:
	lr	%r4,%r2
	sr	%r4,%r1
	clr	%r2,%r1
	jl	.L3017
	lr	%r2,%r4
.L3017:
	srl	%r3,1
	ltr	%r3,%r3
	srl	%r1,1
	jne	.L3012
.L3013:
	ltr	%r0,%r0
	ber	%r14
.L3052:
	lcr	%r2,%r2
	br	%r14
.L3050:
	lcr	%r4,%r4
	lhi	%r0,1
	j	.L3009
.L3051:
	sr	%r2,%r1
	clr	%r4,%r1
	jhe	.L3013
.L3049:
	ltr	%r0,%r0
	lr	%r2,%r4
	ber	%r14
	j	.L3052
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
	larl	%r13,.L3214
	clr	%r3,%r2
	lr	%r5,%r2
	jhe	.L3212
	tml	%r3,32768
	jne	.L3059
	lr	%r1,%r3
	sll	%r1,1
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3132
	tml	%r1,32768
	jne	.L3132
	lr	%r1,%r3
	sll	%r1,2
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3134
	tml	%r1,32768
	jne	.L3134
	lr	%r1,%r3
	sll	%r1,3
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3136
	tml	%r1,32768
	jne	.L3136
	lr	%r1,%r3
	sll	%r1,4
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3138
	tml	%r1,32768
	jne	.L3138
	lr	%r1,%r3
	sll	%r1,5
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3140
	tml	%r1,32768
	jne	.L3140
	lr	%r1,%r3
	sll	%r1,6
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3142
	tml	%r1,32768
	jne	.L3142
	lr	%r1,%r3
	sll	%r1,7
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3144
	tml	%r1,32768
	jne	.L3144
	lr	%r1,%r3
	sll	%r1,8
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3146
	tml	%r1,32768
	jne	.L3146
	lr	%r1,%r3
	sll	%r1,9
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3148
	tml	%r1,32768
	jne	.L3148
	lr	%r1,%r3
	sll	%r1,10
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3150
	tml	%r1,32768
	jne	.L3150
	lr	%r1,%r3
	sll	%r1,11
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3152
	tml	%r1,32768
	jne	.L3152
	lr	%r1,%r3
	sll	%r1,12
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3154
	tml	%r1,32768
	jne	.L3154
	lr	%r1,%r3
	sll	%r1,13
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3156
	tml	%r1,32768
	jne	.L3156
	lr	%r1,%r3
	sll	%r1,14
	n	%r1,.L3215-.L3214(%r13)
	clr	%r2,%r1
	jle	.L3158
	tml	%r1,32768
	jne	.L3158
	sll	%r3,15
	n	%r3,.L3215-.L3214(%r13)
	clr	%r2,%r3
	jle	.L3159
	ltr	%r3,%r3
	lhi	%r2,0
	jne	.L3213
.L3062:
	ltr	%r4,%r4
	je	.L3121
	lr	%r2,%r5
.L3121:
	n	%r2,.L3215-.L3214(%r13)
	lm	%r10,%r13,80(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L3132:
	.cfi_restore_state
	lhi	%r0,2
.L3061:
	lr	%r10,%r5
	sr	%r10,%r1
	n	%r10,.L3215-.L3214(%r13)
	clr	%r5,%r1
	jhe	.L3128
	lr	%r10,%r5
.L3128:
	n	%r10,.L3215-.L3214(%r13)
	clr	%r5,%r1
	jl	.L3129
	lr	%r12,%r0
.L3130:
	lr	%r11,%r1
	srl	%r11,1
	lr	%r5,%r10
	sr	%r5,%r11
	lr	%r2,%r0
	n	%r5,.L3215-.L3214(%r13)
	sll	%r2,16
	clr	%r10,%r11
	srl	%r2,17
	jhe	.L3064
	lr	%r5,%r10
.L3064:
	n	%r5,.L3215-.L3214(%r13)
	clr	%r10,%r11
	jhe	.L3066
	lhi	%r2,0
.L3066:
	l	%r3,.L3215-.L3214(%r13)
	nr	%r3,%r0
	lr	%r10,%r3
	srl	%r10,2
	or	%r2,%r12
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r3,%r10
	srl	%r11,2
	je	.L3062
	lr	%r12,%r5
	sr	%r12,%r11
	n	%r12,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3068
	lr	%r12,%r5
.L3068:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r12
	ltr	%r11,%r11
	jne	.L3070
	lhi	%r3,0
.L3070:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r3,%r2
	srl	%r10,3
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r2,%r3
	lr	%r12,%r10
	srl	%r11,3
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3072
	lr	%r2,%r5
.L3072:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3074
	lhi	%r12,0
.L3074:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r12,%r3
	srl	%r10,4
	lr	%r3,%r1
	ltr	%r10,%r10
	lr	%r2,%r12
	lr	%r11,%r10
	srl	%r3,4
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3076
	lr	%r2,%r5
.L3076:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3078
	lhi	%r11,0
.L3078:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r11,%r12
	lr	%r12,%r10
	srl	%r12,5
	lr	%r3,%r1
	ltr	%r12,%r12
	lr	%r2,%r11
	lr	%r10,%r12
	srl	%r3,5
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3215-.L3214(%r13)
	lr	%r12,%r5
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3080
	lr	%r2,%r5
.L3080:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3082
	lhi	%r10,0
.L3082:
	l	%r12,.L3215-.L3214(%r13)
	nr	%r12,%r0
	or	%r10,%r11
	srl	%r12,6
	lr	%r11,%r1
	ltr	%r12,%r12
	lr	%r2,%r10
	lr	%r3,%r12
	srl	%r11,6
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3215-.L3214(%r13)
	lr	%r12,%r5
	slr	%r12,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3084
	lr	%r2,%r5
.L3084:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3086
	lhi	%r3,0
.L3086:
	l	%r12,.L3215-.L3214(%r13)
	nr	%r12,%r0
	or	%r3,%r10
	lr	%r10,%r12
	srl	%r10,7
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r2,%r3
	lr	%r12,%r10
	srl	%r11,7
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3088
	lr	%r2,%r5
.L3088:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3090
	lhi	%r12,0
.L3090:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r12,%r3
	srl	%r10,8
	lr	%r3,%r1
	ltr	%r10,%r10
	lr	%r2,%r12
	lr	%r11,%r10
	srl	%r3,8
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3092
	lr	%r2,%r5
.L3092:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3094
	lhi	%r11,0
.L3094:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r11,%r12
	lr	%r12,%r10
	srl	%r12,9
	lr	%r3,%r1
	ltr	%r12,%r12
	lr	%r2,%r11
	lr	%r10,%r12
	srl	%r3,9
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3215-.L3214(%r13)
	lr	%r12,%r5
	slr	%r12,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3096
	lr	%r2,%r5
.L3096:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3098
	lhi	%r10,0
.L3098:
	l	%r12,.L3215-.L3214(%r13)
	nr	%r12,%r0
	or	%r10,%r11
	lr	%r11,%r12
	srl	%r11,10
	lr	%r12,%r1
	ltr	%r11,%r11
	lr	%r2,%r10
	lr	%r3,%r11
	srl	%r12,10
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r12
	n	%r2,.L3215-.L3214(%r13)
	lr	%r11,%r5
	slr	%r11,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	jne	.L3100
	lr	%r2,%r5
.L3100:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r12,%r12
	jne	.L3102
	lhi	%r3,0
.L3102:
	l	%r11,.L3215-.L3214(%r13)
	nr	%r11,%r0
	or	%r3,%r10
	lr	%r10,%r11
	srl	%r10,11
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r2,%r3
	lr	%r12,%r10
	srl	%r11,11
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3104
	lr	%r2,%r5
.L3104:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3106
	lhi	%r12,0
.L3106:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r12,%r3
	srl	%r10,12
	lr	%r3,%r1
	ltr	%r10,%r10
	lr	%r2,%r12
	lr	%r11,%r10
	srl	%r3,12
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r3
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r3
	lhi	%r3,0
	alcr	%r3,%r3
	ltr	%r3,%r3
	jne	.L3108
	lr	%r2,%r5
.L3108:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r3,%r3
	jne	.L3110
	lhi	%r11,0
.L3110:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r11,%r12
	srl	%r10,13
	lr	%r12,%r1
	ltr	%r10,%r10
	lr	%r2,%r11
	lr	%r3,%r10
	srl	%r12,13
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r12
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r12
	lhi	%r12,0
	alcr	%r12,%r12
	ltr	%r12,%r12
	jne	.L3112
	lr	%r2,%r5
.L3112:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r12,%r12
	je	.L3113
	lr	%r12,%r3
.L3114:
	l	%r10,.L3215-.L3214(%r13)
	nr	%r10,%r0
	or	%r12,%r11
	srl	%r10,14
	lr	%r11,%r1
	ltr	%r10,%r10
	lr	%r2,%r12
	lr	%r3,%r10
	srl	%r11,14
	je	.L3062
	lr	%r2,%r5
	sr	%r2,%r11
	n	%r2,.L3215-.L3214(%r13)
	lr	%r10,%r5
	slr	%r10,%r11
	lhi	%r11,0
	alcr	%r11,%r11
	ltr	%r11,%r11
	jne	.L3116
	lr	%r2,%r5
.L3116:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r2
	ltr	%r11,%r11
	jne	.L3118
	lhi	%r3,0
.L3118:
	or	%r3,%r12
	n	%r0,.L3215-.L3214(%r13)
	chi	%r0,16384
	srl	%r1,15
	lr	%r2,%r3
	je	.L3062
	lr	%r12,%r5
	sr	%r12,%r1
	l	%r0,.L3215-.L3214(%r13)
	nr	%r0,%r12
	lr	%r10,%r5
	slr	%r10,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L3119
	lr	%r1,%r0
.L3120:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r1
	or	%r2,%r3
	j	.L3062
.L3129:
	lhi	%r12,0
	j	.L3130
.L3113:
	lhi	%r12,0
	j	.L3114
.L3119:
	lr	%r1,%r5
	j	.L3120
.L3134:
	lhi	%r0,4
	j	.L3061
.L3136:
	lhi	%r0,8
	j	.L3061
.L3138:
	lhi	%r0,16
	j	.L3061
.L3148:
	lhi	%r0,512
	j	.L3061
.L3140:
	lhi	%r0,32
	j	.L3061
.L3142:
	lhi	%r0,64
	j	.L3061
.L3144:
	lhi	%r0,128
	j	.L3061
.L3146:
	lhi	%r0,256
	j	.L3061
.L3212:
	lr	%r2,%r3
	xr	%r2,%r5
	lr	%r1,%r5
	sr	%r1,%r3
	ahi	%r2,-1
	lr	%r3,%r2
	n	%r1,.L3215-.L3214(%r13)
	ltr	%r3,%r3
	srl	%r2,31
	jl	.L3057
	lr	%r1,%r5
.L3057:
	l	%r5,.L3215-.L3214(%r13)
	nr	%r5,%r1
	j	.L3062
.L3150:
	lhi	%r0,1024
	j	.L3061
.L3152:
	lhi	%r0,2048
	j	.L3061
.L3154:
	lhi	%r0,4096
	j	.L3061
.L3156:
	lhi	%r0,8192
	j	.L3061
.L3158:
	lhi	%r0,16384
	j	.L3061
.L3213:
	lhi	%r0,-32768
	l	%r1,.L3216-.L3214(%r13)
	j	.L3061
.L3159:
	l	%r1,.L3216-.L3214(%r13)
	lhi	%r0,-32768
	j	.L3061
.L3059:
	sr	%r5,%r3
	n	%r5,.L3215-.L3214(%r13)
	lhi	%r2,1
	j	.L3062
	.section	.rodata
	.align	8
.L3214:
.L3216:
	.long	32768
.L3215:
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
	st	%r12,92(%r15)
	.cfi_offset 12, -4
	clr	%r2,%r3
	lr	%r12,%r2
	jle	.L3257
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r5,4
.L3218:
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ltr	%r3,%r3
	jl	.L3223
	sll	%r3,1
	clr	%r12,%r3
	sll	%r1,1
	jle	.L3220
	ahi	%r2,-8
	brct	%r5,.L3218
.L3221:
	ltr	%r4,%r4
	je	.L3217
	lr	%r2,%r12
.L3217:
	l	%r12,92(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L3220:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L3233
.L3223:
	lhi	%r2,0
	j	.L3228
.L3258:
	lr	%r5,%r1
.L3227:
	or	%r2,%r5
	srl	%r1,1
	ltr	%r1,%r1
	srl	%r3,1
	je	.L3221
.L3228:
	lr	%r5,%r12
	lr	%r0,%r12
	sr	%r5,%r3
	slr	%r0,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3225
	lr	%r12,%r5
.L3225:
	ltr	%r0,%r0
	jne	.L3258
	lhi	%r5,0
	j	.L3227
.L3257:
	sr	%r2,%r3
	lr	%r1,%r12
	slr	%r1,%r3
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L3231
	lr	%r12,%r2
.L3231:
	lhi	%r2,255
	nr	%r2,%r0
	j	.L3221
.L3233:
	lhi	%r2,0
	j	.L3221
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
	je	.L3261
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lhi	%r3,0
	br	%r14
.L3261:
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,32
	sr	%r5,%r4
	lr	%r1,%r2
	lr	%r2,%r3
	sll	%r1,0(%r4)
	srl	%r2,0(%r5)
	or	%r2,%r1
	sll	%r3,0(%r4)
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
	je	.L3267
	lr	%r3,%r2
	sra	%r3,4064(%r4)
	sra	%r2,31
	br	%r14
.L3267:
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,32
	sr	%r5,%r4
	lr	%r1,%r3
	lr	%r3,%r2
	srl	%r1,0(%r4)
	sll	%r3,0(%r5)
	or	%r3,%r1
	sra	%r2,0(%r4)
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
	lr	%r1,%r2
	lrvr	%r2,%r3
	lrvr	%r3,%r1
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
	larl	%r13,.L3280
	lhi	%r0,0
	cl	%r2,.L3281-.L3280(%r13)
	slbr	%r0,%r0
	lcr	%r12,%r0
	sll	%r12,4
	lr	%r1,%r2
	lhi	%r2,16
	sr	%r2,%r12
	srl	%r1,0(%r2)
	l	%r5,.L3282-.L3280(%r13)
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,3
	lhi	%r3,8
	sr	%r3,%r5
	srl	%r1,0(%r3)
	lhi	%r4,240
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,2
	lhi	%r2,4
	sr	%r2,%r4
	srl	%r1,0(%r2)
	lhi	%r0,12
	nr	%r0,%r1
	ahi	%r0,-1
	srl	%r0,31
	lhi	%r2,2
	ar	%r5,%r12
	sll	%r0,1
	lr	%r12,%r2
	sr	%r12,%r0
	ar	%r4,%r5
	srl	%r1,0(%r12)
	tml	%r1,2
	jne	.L3277
	sr	%r2,%r1
	ar	%r0,%r4
	ar	%r2,%r0
	lm	%r12,%r13,88(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L3277:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	ar	%r2,%r0
	lm	%r12,%r13,88(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L3280:
.L3282:
	.long	65280
.L3281:
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
	jl	.L3287
	jh	.L3288
	clr	%r3,%r5
	jl	.L3287
	jh	.L3288
	lhi	%r2,1
	br	%r14
.L3287:
	lhi	%r2,0
	br	%r14
.L3288:
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
	jl	.L3294
	jh	.L3293
	clr	%r3,%r5
	jl	.L3294
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3294:
	lhi	%r2,-1
	br	%r14
.L3293:
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
	larl	%r13,.L3298
	lr	%r1,%r2
	l	%r4,.L3299-.L3298(%r13)
	nr	%r4,%r2
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,4
	srl	%r1,0(%r4)
	lhi	%r2,255
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	lhi	%r5,15
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,2
	srl	%r1,0(%r5)
	lhi	%r3,3
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,1
	srl	%r1,0(%r3)
	ar	%r2,%r4
	lhi	%r0,3
	lhi	%r4,1
	nr	%r0,%r1
	nr	%r1,%r4
	ar	%r2,%r5
	srl	%r0,1
	xr	%r1,%r4
	lhi	%r5,2
	lcr	%r1,%r1
	sr	%r5,%r0
	ar	%r2,%r3
	nr	%r1,%r5
	ar	%r2,%r1
	l	%r13,92(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L3298:
.L3299:
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
	je	.L3301
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L3301:
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,32
	sr	%r5,%r4
	lr	%r1,%r3
	lr	%r3,%r2
	srl	%r1,0(%r4)
	sll	%r3,0(%r5)
	or	%r3,%r1
	srl	%r2,0(%r4)
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
	larl	%r13,.L3308
	lr	%r5,%r3
	l	%r4,.L3309-.L3308(%r13)
	nr	%r4,%r2
	l	%r1,.L3309-.L3308(%r13)
	nr	%r1,%r3
	lr	%r3,%r4
	msr	%r3,%r1
	srl	%r2,16
	msr	%r1,%r2
	srl	%r5,16
	msr	%r4,%r5
	msr	%r2,%r5
	lr	%r0,%r3
	srl	%r0,16
	ar	%r1,%r0
	l	%r5,.L3309-.L3308(%r13)
	nr	%r5,%r1
	ar	%r4,%r5
	srl	%r1,16
	ar	%r1,%r2
	lr	%r2,%r4
	n	%r3,.L3309-.L3308(%r13)
	srl	%r2,16
	sll	%r4,16
	ar	%r2,%r1
	ar	%r3,%r4
	l	%r13,92(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L3308:
.L3309:
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
	larl	%r13,.L3312
	lr	%r12,%r3
	l	%r0,.L3313-.L3312(%r13)
	nr	%r0,%r3
	l	%r1,.L3313-.L3312(%r13)
	nr	%r1,%r5
	lr	%r10,%r3
	lr	%r3,%r0
	msr	%r3,%r1
	srl	%r10,16
	msr	%r1,%r10
	lr	%r11,%r5
	srl	%r11,16
	msr	%r0,%r11
	msr	%r10,%r11
	msr	%r12,%r4
	lr	%r4,%r3
	srl	%r4,16
	msr	%r2,%r5
	ar	%r1,%r4
	l	%r5,.L3313-.L3312(%r13)
	nr	%r5,%r1
	ar	%r0,%r5
	srl	%r1,16
	ar	%r1,%r10
	lr	%r10,%r0
	srl	%r10,16
	ar	%r1,%r10
	n	%r3,.L3313-.L3312(%r13)
	ar	%r12,%r1
	sll	%r0,16
	ar	%r2,%r12
	ar	%r3,%r0
	lm	%r10,%r13,80(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
	.section	.rodata
	.align	8
.L3312:
.L3313:
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
	je	.L3315
	ahi	%r2,-1
.L3315:
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
	xr	%r2,%r3
	lr	%r3,%r2
	srl	%r3,16
	xr	%r3,%r2
	lr	%r2,%r3
	srl	%r2,8
	xr	%r2,%r3
	lr	%r1,%r2
	srl	%r1,4
	xr	%r1,%r2
	lhi	%r0,15
	nr	%r1,%r0
	lhi	%r2,27030
	sra	%r2,0(%r1)
	lhi	%r4,1
	nr	%r2,%r4
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
	lr	%r2,%r1
	srl	%r2,8
	xr	%r2,%r1
	lr	%r3,%r2
	srl	%r3,4
	xr	%r3,%r2
	lhi	%r0,15
	nr	%r3,%r0
	lhi	%r2,27030
	sra	%r2,0(%r3)
	lhi	%r4,1
	nr	%r2,%r4
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
	larl	%r13,.L3323
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r2,.L3324-.L3323(%r13)
	l	%r3,.L3324-.L3323(%r13)
	nr	%r2,%r0
	nr	%r3,%r1
	slr	%r5,%r3
	slbr	%r4,%r2
	lr	%r10,%r4
	lr	%r11,%r5
	srdl	%r10,2
	l	%r2,.L3325-.L3323(%r13)
	l	%r0,.L3325-.L3323(%r13)
	l	%r3,.L3325-.L3323(%r13)
	l	%r1,.L3325-.L3323(%r13)
	nr	%r2,%r10
	nr	%r0,%r4
	nr	%r3,%r11
	nr	%r1,%r5
	alr	%r3,%r1
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r10,.L3326-.L3323(%r13)
	n	%r2,.L3326-.L3323(%r13)
	nr	%r10,%r3
	ar	%r2,%r10
	lr	%r11,%r2
	srl	%r11,16
	ar	%r11,%r2
	lr	%r2,%r11
	srl	%r2,8
	ar	%r2,%r11
	lhi	%r12,127
	nr	%r2,%r12
	lm	%r10,%r13,80(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
	.section	.rodata
	.align	8
.L3323:
.L3326:
	.long	252645135
.L3325:
	.long	858993459
.L3324:
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
	larl	%r5,.L3329
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L3330-.L3329(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r0,.L3331-.L3329(%r5)
	n	%r2,.L3331-.L3329(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L3332-.L3329(%r5)
	lr	%r2,%r3
	srl	%r2,16
	ar	%r3,%r2
	lr	%r2,%r3
	srl	%r2,8
	ar	%r2,%r3
	lhi	%r4,63
	nr	%r2,%r4
	br	%r14
	.section	.rodata
	.align	8
.L3329:
.L3332:
	.long	252645135
.L3331:
	.long	858993459
.L3330:
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
	larl	%r5,.L3342
	tml	%r2,1
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L3343-.L3342(%r5)
	je	.L3334
.L3336:
	mdbr	%f0,%f2
.L3334:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3335
	lr	%r0,%r1
	tml	%r1,1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3336
.L3341:
	ar	%r1,%r0
	sra	%r1,1
	lr	%r0,%r1
	tml	%r1,1
	srl	%r0,31
	mdbr	%f2,%f2
	jne	.L3336
	j	.L3341
.L3335:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L3343-.L3342(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3342:
.L3343:
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
	larl	%r5,.L3353
	tml	%r2,1
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L3354-.L3353(%r5)
	je	.L3345
.L3347:
	meebr	%f0,%f2
.L3345:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L3346
	lr	%r0,%r1
	tml	%r1,1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3347
.L3352:
	ar	%r1,%r0
	sra	%r1,1
	lr	%r0,%r1
	tml	%r1,1
	srl	%r0,31
	meebr	%f2,%f2
	jne	.L3347
	j	.L3352
.L3346:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L3354-.L3353(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L3353:
.L3354:
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
	jl	.L3359
	jh	.L3360
	clr	%r3,%r5
	jl	.L3359
	jh	.L3360
	lhi	%r2,1
	br	%r14
.L3359:
	lhi	%r2,0
	br	%r14
.L3360:
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
	jl	.L3366
	jh	.L3365
	clr	%r3,%r5
	jl	.L3366
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L3366:
	lhi	%r2,-1
	br	%r14
.L3365:
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
