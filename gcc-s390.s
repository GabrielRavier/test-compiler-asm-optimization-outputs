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
	clr	%r2,%r3
	jle	.L2
	ltr	%r4,%r4
	ber	%r14
	ahi	%r3,-1
	lr	%r5,%r2
	ahi	%r5,-1
	lr	%r1,%r4
	lhi	%r0,3
	nr	%r0,%r4
	je	.L17
	chi	%r0,1
	je	.L30
	chi	%r0,2
	je	.L31
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
.L31:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
.L30:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	brct	%r4,.L17
	br	%r14
.L17:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	srl	%r1,2
.L4:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r5)
	ahi	%r4,-1
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	lr	%r12,%r4
	ahi	%r12,-1
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r5)
	ahi	%r12,-1
	ic	%r0,0(%r12,%r3)
	stc	%r0,0(%r12,%r5)
	ahi	%r4,-3
	brct	%r1,.L4
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	lr	%r5,%r4
	lhi	%r0,3
	nr	%r0,%r4
	je	.L26
	chi	%r0,1
	je	.L32
	chi	%r0,2
	je	.L33
	mvc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L33:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L32:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L26:
	srl	%r5,2
.L5:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	lr	%r4,%r1
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r1,2(%r1,%r3)
	stc	%r1,2(%r4,%r2)
	ic	%r0,3(%r4,%r3)
	stc	%r0,3(%r4,%r2)
	ahi	%r4,1
	lr	%r1,%r4
	ahi	%r1,3
	brct	%r5,.L5
	br	%r14
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
	je	.L75
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r5
	tml	%r5,1
	je	.L63
	ic	%r10,0(%r3)
	stc	%r10,0(%r2)
	lhi	%r12,255
	nr	%r10,%r12
	cr	%r10,%r4
	je	.L72
	ahi	%r3,1
	ahi	%r2,1
	ahi	%r5,-1
	je	.L58
.L63:
	srl	%r0,1
.L54:
	ic	%r11,0(%r3)
	stc	%r11,0(%r2)
	lhi	%r1,255
	nr	%r11,%r1
	cr	%r11,%r4
	je	.L72
	ahi	%r5,-1
	lr	%r10,%r3
	ahi	%r10,1
	ahi	%r2,1
	ic	%r1,1(%r3)
	stc	%r1,0(%r2)
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r1,%r4
	je	.L72
	ahi	%r5,-1
	lr	%r3,%r10
	ahi	%r3,1
	ahi	%r2,1
	brct	%r0,.L54
.L58:
	lhi	%r2,0
	j	.L53
.L72:
	ltr	%r5,%r5
	je	.L58
	ahi	%r2,1
.L53:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L75:
	lhi	%r2,0
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
	je	.L100
	lr	%r5,%r4
	tml	%r4,1
	je	.L89
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L101
	ahi	%r2,1
	ahi	%r4,-1
	je	.L100
.L89:
	srl	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	je	.L101
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	j	.L83
.L81:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	je	.L97
.L83:
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	ahi	%r4,-1
	lhi	%r12,0
	ic	%r12,0(%r1)
	cr	%r12,%r3
	je	.L97
	ahi	%r1,1
	lr	%r2,%r1
	ahi	%r4,-1
	brct	%r5,.L81
.L86:
	lhi	%r2,0
	j	.L80
.L97:
	ltr	%r4,%r4
	je	.L86
.L80:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L101:
	ltr	%r4,%r4
	bner	%r14
.L100:
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
	je	.L128
	lr	%r0,%r4
	tml	%r4,1
	je	.L116
	clc	0(1,%r3),0(%r2)
	jne	.L129
	ahi	%r2,1
	ahi	%r3,1
	ahi	%r4,-1
	je	.L128
.L116:
	srl	%r0,1
	clc	0(1,%r3),0(%r2)
	jne	.L129
	j	.L109
.L107:
	clc	0(1,%r3),0(%r2)
	jne	.L125
.L109:
	ahi	%r4,-1
	ahi	%r2,1
	lr	%r1,%r3
	ahi	%r1,1
	lr	%r3,%r1
	clc	0(1,%r1),0(%r2)
	jne	.L125
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r1,1
	lr	%r3,%r1
	brct	%r0,.L107
.L111:
	lhi	%r2,0
	j	.L106
.L125:
	ltr	%r4,%r4
	je	.L111
	lhi	%r4,0
	ic	%r4,0(%r2)
	lr	%r2,%r4
	lhi	%r0,0
	ic	%r0,0(%r3)
	sr	%r2,%r0
.L106:
	br	%r14
.L129:
	ltr	%r4,%r4
	je	.L128
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r5,0
	ic	%r5,0(%r3)
	sr	%r2,%r5
	br	%r14
.L128:
	lhi	%r2,0
	br	%r14
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
	je	.L136
	brasl	%r14,memcpy
.L136:
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
	lhi	%r1,255
	nr	%r3,%r1
	ahi	%r4,-1
	ar	%r2,%r4
	lr	%r5,%r2
	ahi	%r4,1
	tml	%r4,1
	je	.L147
	ahi	%r5,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L147:
	srl	%r4,1
	lr	%r1,%r4
	ahi	%r1,1
.L143:
	brct	%r1,.L145
	j	.L154
.L145:
	lr	%r2,%r5
	ahi	%r5,-1
	lhi	%r4,0
	ic	%r4,0(%r2)
	cr	%r4,%r3
	ber	%r14
	lr	%r2,%r5
	ahi	%r5,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	jne	.L143
	br	%r14
.L154:
	lhi	%r2,0
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
	lr	%r0,%r2
	ar	%r0,%r4
	lr	%r1,%r2
	lhi	%r5,3
	nr	%r5,%r4
	je	.L167
	chi	%r5,1
	je	.L171
	chi	%r5,2
	je	.L172
	stc	%r3,0(%r2)
	ahi	%r1,1
.L172:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L171:
	stc	%r3,0(%r1)
	ahi	%r1,1
	cr	%r0,%r1
	ber	%r14
.L167:
	srl	%r4,2
.L158:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	ahi	%r1,4
	brct	%r4,.L158
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
.L182:
	ahi	%r3,1
	ahi	%r2,1
	ic	%r0,0(%r3)
	stc	%r0,0(%r2)
	tml	%r0,255
	jne	.L182
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
.L189:
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	jne	.L189
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
.L199:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L199
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
	ic	%r5,0(%r3)
	ic	%r4,0(%r2)
	ahi	%r3,-1
	clm	%r5,1,0(%r2)
	jne	.L210
	lhi	%r1,1
	tml	%r4,255
	je	.L210
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L205:
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	ic	%r5,0(%r1,%r3)
	la	%r12,0(%r1,%r3)
	clm	%r4,1,0(%r12)
	jne	.L204
	tml	%r4,255
	jne	.L205
.L204:
	lhi	%r2,255
	nr	%r2,%r4
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r2,%r5
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L210:
	lhi	%r2,255
	nr	%r2,%r4
	lhi	%r0,255
	nr	%r5,%r0
	sr	%r2,%r5
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
	lr	%r1,%r2
	cli	0(%r2),0
	je	.L215
.L216:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L216
.L215:
	sr	%r1,%r2
	lr	%r2,%r1
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
	je	.L225
.L237:
	icm	%r5,1,0(%r2)
	je	.L222
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L222
	brct	%r4,.L232
	j	.L222
.L232:
	lhi	%r0,255
	nr	%r0,%r5
	cr	%r1,%r0
	jne	.L222
	ahi	%r2,1
	ahi	%r3,1
	j	.L237
.L222:
	lhi	%r2,255
	nr	%r2,%r5
	lhi	%r4,0
	ic	%r4,0(%r3)
	sr	%r2,%r4
	br	%r14
.L225:
	lhi	%r2,0
	br	%r14
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
	lr	%r5,%r2
	ar	%r5,%r4
	lr	%r0,%r4
	ahi	%r0,-2
	srl	%r0,1
	ahi	%r0,1
	lhi	%r4,3
	nr	%r4,%r0
	je	.L248
	chi	%r4,1
	je	.L252
	chi	%r4,2
	je	.L253
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L253:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L252:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r5
	ber	%r14
.L248:
	srl	%r0,2
.L241:
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
	brct	%r0,.L241
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
	je	.L266
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L266:
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
	jle	.L270
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L270:
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
	je	.L282
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L282:
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
	larl	%r5,.L292
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L290
	lr	%r0,%r2
	ahi	%r0,-127
	lhi	%r3,32
	clr	%r0,%r3
	jle	.L290
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L290
	a	%r2,.L293-.L292(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L290:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L292:
.L293:
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
	larl	%r5,.L305
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L304
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L301
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L306-.L305(%r5)
	jle	.L301
	l	%r4,.L307-.L305(%r5)
	ar	%r4,%r2
	lhi	%r1,8184
	clr	%r4,%r1
	jle	.L301
	l	%r0,.L308-.L305(%r5)
	ar	%r0,%r2
	cl	%r0,.L309-.L305(%r5)
	jh	.L302
	n	%r2,.L310-.L305(%r5)
	x	%r2,.L310-.L305(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L304:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L301:
	lhi	%r2,1
	br	%r14
.L302:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L305:
.L310:
	.long	65534
.L309:
	.long	1048579
.L308:
	.long	-65532
.L307:
	.long	-57344
.L306:
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
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L313
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L313:
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
	larl	%r5,.L326
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L321
	kdbr	%f0,%f2
	jnh	.L324
	sdbr	%f0,%f2
	br	%r14
.L321:
	ldr	%f0,%f2
	br	%r14
.L324:
	ld	%f0,.L327-.L326(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L326:
.L327:
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
	larl	%r5,.L337
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L332
	kebr	%f0,%f2
	jnh	.L335
	sebr	%f0,%f2
	br	%r14
.L332:
	ler	%f0,%f2
	br	%r14
.L335:
	le	%f0,.L338-.L337(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L337:
.L338:
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
	jo	.L347
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L341
	ltr	%r1,%r1
	ber	%r14
.L347:
	ldr	%f0,%f2
	br	%r14
.L341:
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L344
	lhi	%r0,0
.L344:
	tml	%r0,1
	jne	.L347
	ldr	%f2,%f0
	j	.L347
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
	jo	.L358
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L352
	ltr	%r1,%r1
	ber	%r14
.L358:
	ler	%f0,%f2
	br	%r14
.L352:
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L355
	lhi	%r0,0
.L355:
	tml	%r0,1
	jne	.L358
	ler	%f2,%f0
	j	.L358
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
	.cfi_offset 15, -36
	ahi	%r15,-144
	.cfi_def_cfa_offset 240
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	std	%f1,112(%r15)
	std	%f3,120(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L368
	cxbr	%f0,%f0
	jo	.L362
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	je	.L363
	ltr	%r1,%r1
	je	.L362
.L368:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L362
.L363:
	lhi	%r0,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L367
	lhi	%r0,0
.L367:
	tml	%r0,1
	je	.L365
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L366:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L362:
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L365:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L366
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
	jo	.L380
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L376
	ltr	%r1,%r1
	bner	%r14
.L380:
	ldr	%f0,%f2
	br	%r14
.L376:
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L379
	lhi	%r0,0
.L379:
	tml	%r0,1
	bner	%r14
	j	.L380
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
	jo	.L390
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L386
	ltr	%r1,%r1
	bner	%r14
.L390:
	ler	%f0,%f2
	br	%r14
.L386:
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L389
	lhi	%r0,0
.L389:
	tml	%r0,1
	bner	%r14
	j	.L390
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
	.cfi_offset 15, -36
	ahi	%r15,-144
	.cfi_def_cfa_offset 240
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	std	%f1,96(%r15)
	std	%f3,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L395
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L401
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	je	.L396
	ltr	%r1,%r1
	je	.L395
	ld	%f8,112(%r15)
	ld	%f10,120(%r15)
	std	%f8,96(%r15)
	std	%f10,104(%r15)
	j	.L395
.L396:
	lhi	%r0,1
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jl	.L400
	lhi	%r0,0
.L400:
	tml	%r0,1
	je	.L398
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L399:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L395:
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L398:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L399
.L401:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L395
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
	je	.L408
	larl	%r4,.LANCHOR1
.L409:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L409
.L408:
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
	larl	%r1,.LANCHOR0
	lhi	%r3,0
	st	%r3,8(%r1)
	ahi	%r2,-1
	st	%r2,12(%r1)
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
	slbr	%r2,%r4
	lr	%r12,%r2
	lr	%r13,%r3
	sldl	%r12,6
	slr	%r13,%r3
	slbr	%r12,%r2
	lr	%r2,%r12
	lr	%r3,%r13
	sldl	%r2,7
	alr	%r13,%r3
	alcr	%r12,%r2
	sldl	%r12,2
	alr	%r13,%r5
	alcr	%r12,%r4
	lr	%r2,%r12
	lr	%r3,%r13
	sldl	%r2,6
	slr	%r3,%r13
	slbr	%r2,%r12
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
	lr	%r12,%r10
	lr	%r13,%r11
	sldl	%r12,3
	slr	%r13,%r11
	slbr	%r12,%r10
	lr	%r2,%r12
	lr	%r3,%r13
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
	lhi	%r4,0
	lhi	%r5,1
	alr	%r5,%r3
	alcr	%r4,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	stm	%r2,%r3,8(%r1)
	srdl	%r2,33
	lr	%r2,%r3
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
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
	je	.L424
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L424:
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
	je	.L427
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L427:
	icm	%r4,15,4(%r2)
	ber	%r14
	l	%r2,0(%r2)
	st	%r2,0(%r4)
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
	lr	%r9,%r2
	lr	%r7,%r3
	st	%r4,100(%r15)
	lr	%r10,%r5
	icm	%r13,15,0(%r4)
	je	.L437
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	je	.L449
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L436
	ar	%r12,%r10
	chi	%r13,1
	je	.L437
.L449:
	srl	%r11,1
.L439:
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L436
	ar	%r12,%r10
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L436
	ar	%r12,%r10
	brct	%r11,.L439
.L437:
	l	%r1,100(%r15)
	lr	%r2,%r13
	ahi	%r2,1
	st	%r2,0(%r1)
	msr	%r13,%r10
	lr	%r8,%r7
	ar	%r8,%r13
	ltr	%r10,%r10
	je	.L436
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L436:
	lr	%r2,%r8
	lm	%r7,%r15,132(%r15)
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
	icm	%r13,15,0(%r4)
	je	.L463
	lr	%r10,%r2
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	je	.L472
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L462
	ar	%r12,%r9
	chi	%r13,1
	je	.L463
.L472:
	srl	%r11,1
.L465:
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L462
	ar	%r12,%r9
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L462
	ar	%r12,%r9
	brct	%r11,.L465
.L463:
	lhi	%r8,0
.L462:
	lr	%r2,%r8
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
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r3,%r2
	lhi	%r5,4
	j	.L487
.L489:
	ahi	%r3,1
.L487:
	mvc	103(1,%r15),0(%r3)
	lhi	%r1,255
	n	%r1,100(%r15)
	cli	103(%r15),32
	je	.L489
	ahi	%r1,-9
	lr	%r2,%r5
	slr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	ltr	%r2,%r2
	jne	.L489
	lhi	%r0,255
	n	%r0,100(%r15)
	cli	103(%r15),43
	je	.L496
	chi	%r0,45
	jne	.L497
	lhi	%r5,1
.L490:
	ahi	%r3,1
	j	.L491
.L496:
	lhi	%r5,0
	j	.L490
.L492:
	lr	%r4,%r2
	sll	%r4,2
	ar	%r4,%r2
	sll	%r4,1
	ahi	%r3,1
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r4
	sr	%r2,%r1
.L491:
	ic	%r1,0(%r3)
	lhi	%r4,255
	nr	%r4,%r1
	ahi	%r4,-48
	lhi	%r0,9
	clr	%r4,%r0
	jle	.L492
	ltr	%r5,%r5
	jne	.L486
	lcr	%r2,%r2
.L486:
	l	%r15,164(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L497:
	.cfi_restore_state
	lhi	%r5,0
	j	.L491
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
	jg	atoi
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	lhi	%r12,4
	j	.L506
.L508:
	ahi	%r1,1
.L506:
	mvc	103(1,%r15),0(%r1)
	lhi	%r2,255
	n	%r2,100(%r15)
	cli	103(%r15),32
	je	.L508
	ahi	%r2,-9
	lr	%r4,%r12
	slr	%r4,%r2
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	jne	.L508
	lhi	%r3,255
	n	%r3,100(%r15)
	cli	103(%r15),43
	je	.L509
	chi	%r3,45
	jne	.L510
	lhi	%r0,1
.L509:
	ahi	%r1,1
.L510:
	ic	%r2,0(%r1)
	lhi	%r4,255
	nr	%r4,%r2
	ahi	%r4,-48
	lhi	%r12,0
	lhi	%r13,0
	lhi	%r5,9
	clr	%r4,%r5
	jh	.L512
.L511:
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,2
	alr	%r13,%r5
	alcr	%r12,%r4
	sldl	%r12,1
	ahi	%r1,1
	lhi	%r3,255
	nr	%r2,%r3
	ahi	%r2,-48
	lr	%r4,%r2
	lhi	%r5,0
	srda	%r4,32
	slr	%r13,%r5
	slbr	%r12,%r4
	ic	%r2,0(%r1)
	lhi	%r4,255
	nr	%r4,%r2
	ahi	%r4,-48
	lhi	%r5,9
	clr	%r4,%r5
	jle	.L511
.L512:
	ltr	%r0,%r0
	jne	.L505
	lcr	%r12,%r12
	lcr	%r13,%r13
	je	.L505
	ahi	%r12,-1
.L505:
	lr	%r2,%r12
	lr	%r3,%r13
	lm	%r12,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
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
	je	.L526
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	j	.L529
.L530:
	lr	%r12,%r7
.L527:
	ltr	%r12,%r12
	je	.L526
.L529:
	lr	%r7,%r12
	srl	%r7,1
	lr	%r11,%r7
	msr	%r11,%r10
	ar	%r11,%r9
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L530
	jle	.L525
	ar	%r11,%r10
	lr	%r9,%r11
	ahi	%r12,-1
	sr	%r12,%r7
	j	.L527
.L526:
	lhi	%r11,0
.L525:
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
	l	%r7,192(%r15)
	ltr	%r4,%r4
	je	.L538
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	lr	%r11,%r4
	j	.L541
.L540:
	sra	%r11,1
	je	.L538
.L541:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L537
	ltr	%r2,%r2
	jle	.L540
	ar	%r12,%r10
	lr	%r9,%r12
	ahi	%r11,-1
	j	.L540
.L538:
	lhi	%r12,0
.L537:
	lr	%r2,%r12
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
	jl	.L557
.L554:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L557:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L554
	ahi	%r4,-1
	j	.L554
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
	lr	%r10,%r3
	lr	%r11,%r4
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r5,%r6
	lr	%r2,%r3
	lr	%r3,%r11
	brasl	%r14,__divdi3
	stm	%r2,%r3,0(%r12)
	lr	%r4,%r9
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	stm	%r2,%r3,8(%r12)
	lr	%r2,%r12
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
	jl	.L570
.L567:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L570:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L567
	ahi	%r4,-1
	j	.L567
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
	lr	%r10,%r3
	lr	%r11,%r4
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r5,%r6
	lr	%r2,%r3
	lr	%r3,%r11
	brasl	%r14,__divdi3
	stm	%r2,%r3,0(%r12)
	lr	%r4,%r9
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	stm	%r2,%r3,8(%r12)
	lr	%r2,%r12
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
	j	.L584
.L578:
	ahi	%r2,4
.L584:
	icm	%r1,15,0(%r2)
	je	.L581
	cr	%r3,%r1
	jne	.L578
	ltr	%r1,%r1
	bner	%r14
.L581:
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
	l	%r4,0(%r2)
	l	%r5,0(%r3)
	lhi	%r1,4
	ahi	%r3,-4
	cr	%r4,%r5
	jne	.L588
.L587:
	ltr	%r4,%r4
	je	.L588
	ltr	%r5,%r5
	je	.L588
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	je	.L587
.L588:
	cr	%r4,%r5
	jl	.L593
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L593:
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
.L600:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L600
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
	je	.L605
.L606:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L606
.L605:
	sr	%r2,%r3
	sra	%r2,2
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
	je	.L634
	lr	%r0,%r4
	tml	%r4,1
	je	.L622
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L636
	ltr	%r1,%r1
	je	.L636
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L634
.L622:
	srl	%r0,1
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L636
	ltr	%r5,%r5
	je	.L636
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	j	.L613
.L611:
	l	%r11,0(%r2)
	c	%r11,0(%r3)
	jne	.L612
	ltr	%r11,%r11
	je	.L612
.L613:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	l	%r12,0(%r2)
	c	%r12,0(%r1)
	jne	.L612
	ltr	%r12,%r12
	je	.L612
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L611
	j	.L616
.L612:
	ltr	%r4,%r4
	je	.L616
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jl	.L617
	lhi	%r2,1
	jh	.L610
.L616:
	lhi	%r2,0
.L610:
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L617:
	.cfi_restore_state
	lhi	%r2,-1
	j	.L610
.L636:
	.cfi_restore 11
	.cfi_restore 12
	ltr	%r4,%r4
	je	.L634
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L639
	lhi	%r2,1
	bhr	%r14
.L634:
	lhi	%r2,0
	br	%r14
.L639:
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
	je	.L651
	lr	%r5,%r4
	tml	%r4,1
	je	.L654
	c	%r3,0(%r2)
	je	.L662
	ahi	%r2,4
	ahi	%r4,-1
	je	.L651
.L654:
	srl	%r5,1
.L646:
	c	%r3,0(%r2)
	je	.L662
	ahi	%r4,-1
	lr	%r1,%r2
	ahi	%r1,4
	lr	%r2,%r1
	c	%r3,0(%r1)
	je	.L662
	ahi	%r4,-1
	ahi	%r1,4
	lr	%r2,%r1
	brct	%r5,.L646
.L651:
	lhi	%r2,0
	br	%r14
.L662:
	ltr	%r4,%r4
	bner	%r14
	j	.L651
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
	je	.L689
	lr	%r0,%r4
	tml	%r4,1
	je	.L677
	clc	0(4,%r2),0(%r3)
	jne	.L690
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L689
.L677:
	srl	%r0,1
	clc	0(4,%r2),0(%r3)
	jne	.L690
	j	.L668
.L666:
	clc	0(4,%r2),0(%r3)
	jne	.L686
.L668:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	clc	0(4,%r2),0(%r1)
	jne	.L686
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L666
.L671:
	lhi	%r2,0
.L665:
	br	%r14
.L686:
	ltr	%r4,%r4
	je	.L671
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L672
	lhi	%r2,1
	jh	.L665
	j	.L671
.L672:
	lhi	%r2,-1
	j	.L665
.L690:
	ltr	%r4,%r4
	je	.L689
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jl	.L693
	lhi	%r2,1
	bhr	%r14
.L689:
	lhi	%r2,0
	br	%r14
.L693:
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
	je	.L700
	sll	%r4,2
	brasl	%r14,memcpy
.L700:
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
	larl	%r13,.L752
	cr	%r2,%r3
	je	.L707
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r0,%r2
	sr	%r0,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r0,%r1
	jl	.L708
	lhi	%r1,0
	ltr	%r4,%r4
	je	.L707
	lhi	%r0,3
	nr	%r0,%r4
	je	.L731
	chi	%r0,1
	je	.L736
	chi	%r0,2
	je	.L737
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	ahi	%r5,-1
	lhi	%r1,4
.L737:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L736:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r5,%r5
	je	.L707
.L731:
	srl	%r4,2
	lr	%r5,%r4
.L709:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	lr	%r4,%r1
	l	%r0,4(%r1,%r3)
	st	%r0,4(%r1,%r2)
	l	%r1,8(%r1,%r3)
	st	%r1,8(%r4,%r2)
	l	%r0,12(%r4,%r3)
	st	%r0,12(%r4,%r2)
	ahi	%r4,4
	lr	%r1,%r4
	ahi	%r1,12
	brct	%r5,.L709
	j	.L707
.L708:
	ltr	%r4,%r4
	je	.L707
	lr	%r1,%r5
	sll	%r1,2
	n	%r5,.L753-.L752(%r13)
	ahi	%r5,1
	lhi	%r4,3
	nr	%r4,%r5
	je	.L722
	chi	%r4,1
	je	.L738
	chi	%r4,2
	je	.L739
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L739:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,-4
.L738:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L707
.L722:
	srl	%r5,2
.L710:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,-4
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	lr	%r4,%r1
	ahi	%r4,-4
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	ahi	%r4,-4
	l	%r0,0(%r4,%r3)
	st	%r0,0(%r4,%r2)
	ahi	%r1,-12
	brct	%r5,.L710
.L707:
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L752:
.L753:
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
	lr	%r1,%r2
	lhi	%r0,3
	nr	%r0,%r4
	je	.L765
	chi	%r0,1
	je	.L769
	chi	%r0,2
	je	.L770
	st	%r3,0(%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L770:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L769:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L765:
	srl	%r4,2
.L756:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L756
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
	jhe	.L779
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	lhi	%r5,3
	nr	%r5,%r4
	je	.L794
	chi	%r5,1
	je	.L807
	chi	%r5,2
	je	.L808
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L808:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L807:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	brct	%r4,.L794
	br	%r14
.L794:
	srl	%r1,2
.L781:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	lr	%r5,%r4
	ahi	%r5,-1
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r2)
	stc	%r0,0(%r5,%r3)
	ahi	%r4,-3
	brct	%r1,.L781
	br	%r14
.L779:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	lr	%r5,%r4
	lhi	%r0,3
	nr	%r0,%r4
	je	.L803
	chi	%r0,1
	je	.L809
	chi	%r0,2
	je	.L810
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L810:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L809:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L803:
	srl	%r5,2
.L782:
	ic	%r4,0(%r1,%r2)
	stc	%r4,0(%r1,%r3)
	lr	%r4,%r1
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r1,2(%r1,%r2)
	stc	%r1,2(%r4,%r3)
	ic	%r0,3(%r4,%r2)
	stc	%r0,3(%r4,%r3)
	ahi	%r4,1
	lr	%r1,%r4
	ahi	%r1,3
	brct	%r5,.L782
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
	lr	%r1,%r3
	lr	%r12,%r2
	lr	%r13,%r3
	sldl	%r12,0(%r4)
	lcr	%r4,%r4
	srdl	%r0,0(%r4)
	lr	%r2,%r0
	or	%r2,%r12
	lr	%r3,%r1
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
	lr	%r1,%r3
	lr	%r12,%r2
	lr	%r13,%r3
	srdl	%r12,0(%r4)
	lcr	%r4,%r4
	sldl	%r0,0(%r4)
	lr	%r2,%r0
	or	%r2,%r12
	lr	%r3,%r1
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
	larl	%r5,.L842
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	sll	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L843-.L842(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L842:
.L843:
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
	larl	%r5,.L846
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L847-.L846(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L846:
.L847:
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
	sll	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,7
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r0
	lhi	%r5,255
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
	srl	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,7
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r0
	lhi	%r5,255
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
	larl	%r5,.L854
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L855-.L854(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L854:
.L855:
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
	lr	%r1,%r2
	lrvr	%r2,%r3
	lrvr	%r3,%r1
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
	lhi	%r1,0
	lhi	%r5,8
.L863:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r3,%r1
	tml	%r4,1
	jne	.L871
	ahi	%r1,1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	tml	%r0,1
	jne	.L871
	lr	%r4,%r2
	srl	%r4,0(%r1)
	lr	%r1,%r3
	ahi	%r1,2
	tml	%r4,1
	jne	.L871
	lr	%r3,%r2
	srl	%r3,0(%r1)
	ahi	%r1,1
	tml	%r3,1
	jne	.L871
	brct	%r5,.L863
	lhi	%r2,0
	br	%r14
.L871:
	lr	%r2,%r1
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
	je	.L878
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L877:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L877
	br	%r14
.L878:
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
	larl	%r5,.L888
	lhi	%r2,1
	keb	%f0,.L889-.L888(%r5)
	blr	%r14
	keb	%f0,.L890-.L888(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L888:
.L890:
	.long	2139095039
.L889:
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
	larl	%r5,.L896
	lhi	%r2,1
	kdb	%f0,.L897-.L896(%r5)
	blr	%r14
	kdb	%f0,.L898-.L896(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L896:
.L898:
	.long	2146435071
	.long	-1
.L897:
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
	larl	%r5,.L904
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L905-.L904(%r5)
	ld	%f3,.L905-.L904+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L906-.L904(%r5)
	ld	%f3,.L906-.L904+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L904:
.L906:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L905:
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
	larl	%r5,.L923
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	lr	%r1,%r2
	ltr	%r2,%r2
	jl	.L922
	le	%f1,.L924-.L923(%r5)
	j	.L913
.L922:
	le	%f1,.L925-.L923(%r5)
	j	.L913
.L912:
	lr	%r2,%r1
	srl	%r2,31
	ar	%r2,%r1
	sra	%r2,1
	lr	%r1,%r2
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
.L913:
	tml	%r1,1
	je	.L912
	meebr	%f0,%f1
	j	.L912
	.section	.rodata
	.align	8
.L923:
.L925:
	.long	1056964608
.L924:
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
	larl	%r5,.L940
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	lr	%r1,%r2
	ltr	%r2,%r2
	jl	.L939
	ld	%f1,.L941-.L940(%r5)
	j	.L930
.L939:
	ld	%f1,.L942-.L940(%r5)
	j	.L930
.L929:
	lr	%r2,%r1
	srl	%r2,31
	ar	%r2,%r1
	sra	%r2,1
	lr	%r1,%r2
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
.L930:
	tml	%r1,1
	je	.L929
	mdbr	%f0,%f1
	j	.L929
	.section	.rodata
	.align	8
.L940:
.L942:
	.long	1071644672
	.long	0
.L941:
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
	larl	%r5,.L957
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L944
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L944
	lr	%r1,%r4
	ltr	%r4,%r4
	jl	.L956
	ld	%f0,.L958-.L957(%r5)
	ld	%f2,.L958-.L957+8(%r5)
	j	.L947
.L956:
	ld	%f0,.L959-.L957(%r5)
	ld	%f2,.L959-.L957+8(%r5)
	j	.L947
.L946:
	lr	%r4,%r1
	srl	%r4,31
	ar	%r4,%r1
	sra	%r4,1
	lr	%r1,%r4
	ltr	%r4,%r4
	je	.L944
	mxbr	%f0,%f0
.L947:
	tml	%r1,1
	je	.L946
	mxbr	%f1,%f0
	j	.L946
.L944:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L957:
.L959:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L958:
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
	ltr	%r5,%r4
	ber	%r14
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r1,0
	lr	%r4,%r5
	lhi	%r0,3
	nr	%r0,%r5
	je	.L971
	chi	%r0,1
	je	.L975
	chi	%r0,2
	je	.L976
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L976:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L975:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r5
	je	.L961
.L971:
	srl	%r4,2
.L962:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ic	%r12,1(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	xr	%r12,%r5
	stc	%r12,1(%r1,%r2)
	ic	%r12,2(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	xr	%r12,%r0
	stc	%r12,2(%r1,%r2)
	ic	%r5,3(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	xr	%r5,%r12
	stc	%r5,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L962
.L961:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
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
	je	.L989
.L990:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L990
.L989:
	ltr	%r4,%r4
	je	.L1012
	lr	%r0,%r4
	tml	%r4,1
	je	.L1001
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1013
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	je	.L1012
.L1001:
	srl	%r0,1
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1013
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	j	.L993
.L991:
	ic	%r11,0(%r3)
	stc	%r11,0(%r1)
	tml	%r11,255
	je	.L1009
.L993:
	lr	%r11,%r3
	ahi	%r11,1
	ahi	%r1,1
	ahi	%r4,-1
	ic	%r3,1(%r3)
	stc	%r3,0(%r1)
	tml	%r3,255
	je	.L1009
	lr	%r3,%r11
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L991
	j	.L997
.L1009:
	ltr	%r4,%r4
	jne	.L994
.L997:
	mvi	0(%r1),0
.L994:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1013:
	ltr	%r4,%r4
	bner	%r14
.L1012:
	mvi	0(%r1),0
	br	%r14
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
	lhi	%r2,0
	ltr	%r3,%r3
	je	.L1032
	lr	%r4,%r3
	tml	%r3,1
	je	.L1026
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1026:
	srl	%r4,1
.L1019:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1019
	br	%r14
.L1032:
	lhi	%r2,0
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
.L1044:
	icm	%r5,1,0(%r2)
	je	.L1041
	lr	%r1,%r3
	lhi	%r4,255
	nr	%r5,%r4
.L1040:
	lhi	%r0,0
	ic	%r0,0(%r1)
	ltr	%r0,%r0
	je	.L1045
	ahi	%r1,1
	cr	%r0,%r5
	jne	.L1040
	br	%r14
.L1045:
	ahi	%r2,1
	j	.L1044
.L1041:
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
	j	.L1049
.L1048:
	ahi	%r1,1
	tml	%r4,255
	ber	%r14
.L1049:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L1048
	lr	%r2,%r1
	j	.L1048
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
	stm	%r9,%r12,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r9,%r3
	icm	%r10,1,0(%r3)
	je	.L1055
.L1056:
	ahi	%r9,1
	cli	0(%r9),0
	jne	.L1056
.L1055:
	slr	%r9,%r3
	jhe	.L1057
	lhi	%r1,255
	nr	%r10,%r1
	ahi	%r9,-1
	j	.L1063
.L1062:
	ltr	%r2,%r2
	je	.L1057
	lr	%r4,%r3
	icm	%r12,1,0(%r2)
	je	.L1059
	lr	%r1,%r2
	lr	%r5,%r9
	ahi	%r5,1
.L1060:
	lhi	%r0,0
	ic	%r0,0(%r4)
	ltr	%r0,%r0
	je	.L1059
	brct	%r5,.L1075
	j	.L1059
.L1075:
	lhi	%r11,255
	nr	%r11,%r12
	cr	%r0,%r11
	jne	.L1059
	ahi	%r1,1
	ahi	%r4,1
	icm	%r12,1,0(%r1)
	jne	.L1060
.L1059:
	clm	%r12,1,0(%r4)
	je	.L1057
	ahi	%r2,1
.L1063:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r10
	je	.L1062
	ahi	%r2,1
	ltr	%r0,%r0
	jne	.L1063
	lhi	%r2,0
.L1057:
	lm	%r9,%r12,36(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
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
	larl	%r5,.L1092
	kdb	%f0,.L1093-.L1092(%r5)
	jl	.L1091
.L1082:
	kdb	%f0,.L1093-.L1092(%r5)
	jnh	.L1085
	kdb	%f2,.L1093-.L1092(%r5)
	jl	.L1084
.L1085:
	br	%r14
.L1091:
	kdb	%f2,.L1093-.L1092(%r5)
	jnh	.L1082
.L1084:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1092:
.L1093:
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
	stm	%r6,%r12,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r1,%r2
	ltr	%r8,%r5
	je	.L1094
	clr	%r3,%r8
	jl	.L1104
	sr	%r3,%r8
	alr	%r3,%r2
	lr	%r9,%r3
	jnle	.L1104
	lhi	%r7,0
	ic	%r7,0(%r4)
	j	.L1101
.L1121:
	ltr	%r0,%r0
	je	.L1094
	clc	0(1,%r3),0(%r5)
	je	.L1094
.L1096:
	clr	%r1,%r9
	jh	.L1104
.L1101:
	ic	%r3,0(%r1)
	lr	%r2,%r1
	ahi	%r1,1
	lhi	%r5,255
	nr	%r3,%r5
	cr	%r3,%r7
	jne	.L1096
	lr	%r3,%r4
	ahi	%r3,1
	lr	%r0,%r8
	ahi	%r0,-1
	je	.L1094
	lr	%r5,%r1
	lr	%r10,%r0
	tml	%r0,1
	je	.L1113
	clc	1(1,%r4),0(%r1)
	jne	.L1121
	ahi	%r5,1
	ahi	%r3,1
	ahi	%r0,-1
	je	.L1094
.L1113:
	srl	%r10,1
.L1097:
	clc	0(1,%r3),0(%r5)
	jne	.L1121
	ahi	%r0,-1
	ahi	%r5,1
	ahi	%r3,1
	clc	0(1,%r3),0(%r5)
	jne	.L1121
	ahi	%r0,-1
	ahi	%r5,1
	ahi	%r3,1
	brct	%r10,.L1097
.L1094:
	lm	%r6,%r12,24(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	br	%r14
.L1104:
	.cfi_restore_state
	lhi	%r2,0
	j	.L1094
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
	je	.L1127
	brasl	%r14,memmove
.L1127:
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
	larl	%r5,.L1159
	kdb	%f0,.L1160-.L1159(%r5)
	jl	.L1158
	lhi	%r3,0
.L1134:
	kdb	%f0,.L1161-.L1159(%r5)
	jnhe	.L1155
	lhi	%r1,0
.L1138:
	ahi	%r1,1
	mdb	%f0,.L1162-.L1159(%r5)
	kdb	%f0,.L1161-.L1159(%r5)
	jhe	.L1138
.L1139:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L1158:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L1134
.L1155:
	kdb	%f0,.L1162-.L1159(%r5)
	lhi	%r1,0
	jnl	.L1139
	cdb	%f0,.L1160-.L1159(%r5)
	je	.L1139
.L1141:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1162-.L1159(%r5)
	jl	.L1141
	j	.L1139
	.section	.rodata
	.align	8
.L1159:
.L1162:
	.long	1071644672
	.long	0
.L1161:
	.long	1072693248
	.long	0
.L1160:
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
	lr	%r1,%r3
	or	%r3,%r2
	je	.L1167
	stm	%r7,%r13,28(%r15)
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r12,%r4
	lr	%r13,%r5
	lr	%r0,%r2
	lhi	%r4,0
	lhi	%r5,0
	j	.L1166
.L1169:
	lr	%r8,%r2
	nr	%r8,%r12
	lr	%r9,%r3
	nr	%r9,%r13
	alr	%r5,%r9
	alcr	%r4,%r8
	sldl	%r12,1
	srdl	%r0,1
	lr	%r7,%r0
	or	%r7,%r1
	je	.L1174
.L1166:
	lhi	%r10,0
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r2,%r10
	lcr	%r3,%r11
	je	.L1169
	ahi	%r2,-1
	j	.L1169
.L1167:
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	.cfi_restore 13
	lhi	%r2,0
	lhi	%r3,0
	br	%r14
.L1174:
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
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
	lhi	%r2,16
	clr	%r3,%r5
	jhe	.L1194
.L1177:
	ltr	%r3,%r3
	jl	.L1178
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1178
	ltr	%r3,%r3
	jl	.L1178
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1178
	brct	%r2,.L1177
.L1186:
	lhi	%r2,0
.L1180:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1178:
	ltr	%r1,%r1
	je	.L1186
.L1194:
	lhi	%r2,0
	j	.L1182
.L1181:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1180
.L1182:
	clr	%r5,%r3
	jl	.L1181
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1181
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
	je	.L1199
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	sll	%r2,8
	brasl	%r14,__clzsi2
	ahi	%r2,-1
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
.L1199:
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
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srda	%r0,63
	xr	%r2,%r0
	xr	%r3,%r1
	cr	%r4,%r0
	je	.L1214
.L1209:
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	brasl	%r14,__clzdi2
	ahi	%r2,-1
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
.L1214:
	cr	%r5,%r1
	jne	.L1209
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
	ltr	%r4,%r2
	lhi	%r2,0
	ber	%r14
.L1218:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L1218
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
	lr	%r5,%r4
	srl	%r5,3
	lhi	%r1,-8
	nr	%r1,%r4
	clr	%r2,%r3
	jl	.L1224
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L1224
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1259
	chi	%r5,1
	je	.L1264
	chi	%r5,2
	je	.L1265
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1265:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1264:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1259:
	srl	%r4,2
.L1225:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-3
	brct	%r4,.L1225
	br	%r14
.L1224:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1227
	sll	%r5,3
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-8
	srl	%r0,3
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1250
	chi	%r11,1
	je	.L1266
	chi	%r11,2
	je	.L1267
	lm	%r10,%r11,0(%r3)
	stm	%r10,%r11,0(%r2)
	lhi	%r5,8
.L1267:
	l	%r13,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1266:
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1227
.L1250:
	srl	%r0,2
.L1228:
	l	%r12,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r12,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	l	%r10,8(%r5,%r3)
	l	%r12,12(%r5,%r3)
	st	%r10,8(%r5,%r2)
	st	%r12,12(%r5,%r2)
	l	%r10,16(%r5,%r3)
	l	%r11,20(%r5,%r3)
	st	%r10,16(%r5,%r2)
	st	%r11,20(%r5,%r2)
	l	%r12,24(%r5,%r3)
	l	%r10,28(%r5,%r3)
	st	%r12,24(%r5,%r2)
	st	%r10,28(%r5,%r2)
	ahi	%r5,32
	brct	%r0,.L1228
.L1227:
	clr	%r4,%r1
	jle	.L1223
	lr	%r5,%r4
	sr	%r5,%r1
	lhi	%r0,3
	nr	%r0,%r5
	je	.L1241
	chi	%r0,1
	je	.L1268
	chi	%r0,2
	je	.L1269
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ahi	%r1,1
.L1269:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1268:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1223
.L1241:
	srl	%r5,2
.L1229:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	lr	%r10,%r1
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r1,2(%r1,%r3)
	stc	%r1,2(%r10,%r2)
	ic	%r13,3(%r10,%r3)
	stc	%r13,3(%r10,%r2)
	ahi	%r10,1
	lr	%r1,%r10
	ahi	%r1,3
	brct	%r5,.L1229
.L1223:
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
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
	lr	%r1,%r4
	srl	%r1,1
	clr	%r2,%r3
	jl	.L1291
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jh	.L1291
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1317
	chi	%r0,1
	je	.L1322
	chi	%r0,2
	je	.L1323
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1323:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1322:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1317:
	srl	%r4,2
.L1292:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-3
	brct	%r4,.L1292
	br	%r14
.L1291:
	ltr	%r1,%r1
	je	.L1340
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	sll	%r1,1
	lr	%r0,%r1
	lhi	%r1,0
	lr	%r5,%r0
	ahi	%r5,-2
	srl	%r5,1
	ahi	%r5,1
	lhi	%r12,3
	nr	%r12,%r5
	je	.L1308
	chi	%r12,1
	je	.L1324
	chi	%r12,2
	je	.L1325
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lhi	%r1,2
.L1325:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1324:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r0,%r1
	je	.L1294
.L1308:
	srl	%r5,2
.L1295:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lr	%r12,%r1
	lh	%r0,2(%r1,%r3)
	sth	%r0,2(%r1,%r2)
	lh	%r1,4(%r1,%r3)
	sth	%r1,4(%r12,%r2)
	lh	%r0,6(%r12,%r3)
	sth	%r0,6(%r12,%r2)
	ahi	%r12,2
	lr	%r1,%r12
	ahi	%r1,6
	brct	%r5,.L1295
.L1294:
	tml	%r4,1
	je	.L1290
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1290:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1340:
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
	br	%r14
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
	lr	%r5,%r4
	srl	%r5,2
	lhi	%r1,-4
	nr	%r1,%r4
	clr	%r2,%r3
	jl	.L1346
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L1346
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1381
	chi	%r5,1
	je	.L1386
	chi	%r5,2
	je	.L1387
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1387:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1386:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1381:
	srl	%r4,2
.L1347:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r5,%r1
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r5,-1
	ic	%r0,0(%r5,%r3)
	stc	%r0,0(%r5,%r2)
	ahi	%r1,-3
	brct	%r4,.L1347
	br	%r14
.L1346:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1349
	sll	%r5,2
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1372
	chi	%r11,1
	je	.L1388
	chi	%r11,2
	je	.L1389
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lhi	%r5,4
.L1389:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1388:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1349
.L1372:
	srl	%r0,2
.L1350:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	lr	%r12,%r5
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r5,8(%r5,%r3)
	st	%r5,8(%r12,%r2)
	l	%r11,12(%r12,%r3)
	st	%r11,12(%r12,%r2)
	ahi	%r12,4
	lr	%r5,%r12
	ahi	%r5,12
	brct	%r0,.L1350
.L1349:
	clr	%r4,%r1
	jle	.L1345
	lr	%r12,%r4
	sr	%r12,%r1
	lhi	%r0,3
	nr	%r0,%r12
	je	.L1363
	chi	%r0,1
	je	.L1390
	chi	%r0,2
	je	.L1391
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1391:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1390:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1345
.L1363:
	srl	%r12,2
.L1351:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	lr	%r5,%r1
	ic	%r11,1(%r1,%r3)
	stc	%r11,1(%r1,%r2)
	ic	%r1,2(%r1,%r3)
	stc	%r1,2(%r5,%r2)
	ic	%r0,3(%r5,%r3)
	stc	%r0,3(%r5,%r2)
	ahi	%r5,1
	lr	%r1,%r5
	ahi	%r1,3
	brct	%r12,.L1351
.L1345:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
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
	larl	%r5,.L1417
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L1418-.L1417(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1417:
.L1418:
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
	larl	%r5,.L1423
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L1422
.L1420:
	ledbr	%f0,%f0
	br	%r14
.L1422:
	adb	%f0,.L1424-.L1423(%r5)
	j	.L1420
	.section	.rodata
	.align	8
.L1423:
.L1424:
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r3,%r2
	lhi	%r2,0
	lhi	%r4,15
	lhi	%r5,4
.L1435:
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r1,%r3
	sra	%r1,0(%r12)
	tml	%r1,1
	jne	.L1433
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	lr	%r12,%r4
	sr	%r12,%r1
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1433
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1433
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1433
	ahi	%r1,3
	lr	%r2,%r1
	brct	%r5,.L1435
.L1433:
	l	%r12,48(%r15)
	.cfi_restore 12
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
	lr	%r3,%r2
	lhi	%r2,0
	lhi	%r4,4
.L1446:
	lr	%r1,%r3
	sra	%r1,0(%r2)
	tml	%r1,1
	bner	%r14
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	lr	%r5,%r3
	sra	%r5,0(%r1)
	tml	%r5,1
	bner	%r14
	ahi	%r2,1
	lr	%r0,%r3
	sra	%r0,0(%r2)
	tml	%r0,1
	bner	%r14
	ahi	%r2,1
	lr	%r5,%r3
	sra	%r5,0(%r2)
	tml	%r5,1
	bner	%r14
	ahi	%r1,3
	lr	%r2,%r1
	brct	%r4,.L1446
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
	larl	%r5,.L1462
	keb	%f0,.L1463-.L1462(%r5)
	jhe	.L1461
	cfebr	%r2,5,%f0
	br	%r14
.L1461:
	seb	%f0,.L1463-.L1462(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1464-.L1462(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1462:
.L1463:
	.long	1191182336
.L1464:
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
	lr	%r3,%r2
	lhi	%r2,0
	lhi	%r1,0
	lhi	%r5,4
.L1466:
	lr	%r4,%r3
	sra	%r4,0(%r1)
	lhi	%r0,1
	nr	%r4,%r0
	ar	%r2,%r4
	ahi	%r1,1
	lr	%r4,%r3
	sra	%r4,0(%r1)
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r3
	sra	%r4,1(%r1)
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r3
	sra	%r4,2(%r1)
	nr	%r4,%r0
	ar	%r2,%r4
	ahi	%r1,3
	brct	%r5,.L1466
	lhi	%r3,1
	nr	%r2,%r3
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
	lr	%r3,%r2
	lhi	%r2,0
	lhi	%r1,0
	lhi	%r5,4
.L1474:
	lr	%r4,%r3
	sra	%r4,0(%r1)
	lhi	%r0,1
	nr	%r4,%r0
	ar	%r2,%r4
	ahi	%r1,1
	lr	%r4,%r3
	sra	%r4,0(%r1)
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r3
	sra	%r4,1(%r1)
	nr	%r4,%r0
	ar	%r2,%r4
	lr	%r4,%r3
	sra	%r4,2(%r1)
	nr	%r4,%r0
	ar	%r2,%r4
	ahi	%r1,3
	brct	%r5,.L1474
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
	ltr	%r4,%r2
	lhi	%r2,0
	ber	%r14
.L1483:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L1483
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
	ltr	%r4,%r2
	lhi	%r2,0
	ber	%r14
	ltr	%r3,%r3
	ber	%r14
.L1490:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L1490
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
	lhi	%r2,16
	clr	%r5,%r3
	jle	.L1514
.L1497:
	ltr	%r3,%r3
	jl	.L1498
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1498
	ltr	%r3,%r3
	jl	.L1498
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1498
	brct	%r2,.L1497
.L1506:
	lhi	%r2,0
.L1500:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1498:
	ltr	%r1,%r1
	je	.L1506
.L1514:
	lhi	%r2,0
	j	.L1502
.L1501:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1500
.L1502:
	clr	%r5,%r3
	jl	.L1501
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1501
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
	jl	.L1520
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1520:
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
	jl	.L1525
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1525:
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
	ltr	%r3,%r3
	jl	.L1545
	lhi	%r0,0
.L1532:
	ltr	%r3,%r3
	je	.L1537
	lhi	%r5,32
	lhi	%r2,0
.L1534:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	je	.L1533
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L1534
.L1533:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L1545:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L1532
.L1537:
	lhi	%r2,0
	j	.L1533
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
	ltr	%r2,%r2
	jl	.L1572
	lhi	%r0,0
.L1548:
	ltr	%r3,%r3
	jl	.L1573
.L1549:
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r2,%r3
	jle	.L1570
	lhi	%r4,8
.L1551:
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1550
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1550
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1550
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1550
	brct	%r4,.L1551
.L1558:
	lhi	%r4,0
.L1552:
	lr	%r2,%r4
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r4
	br	%r14
.L1572:
	lcr	%r2,%r2
	lhi	%r0,1
	j	.L1548
.L1573:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r0,%r1
	j	.L1549
.L1550:
	ltr	%r1,%r1
	je	.L1558
.L1570:
	lhi	%r4,0
	j	.L1554
.L1574:
	sr	%r5,%r3
	or	%r4,%r1
.L1553:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1552
.L1554:
	clr	%r5,%r3
	jl	.L1553
	j	.L1574
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
	ltr	%r2,%r2
	jl	.L1601
	lhi	%r0,0
.L1577:
	lr	%r5,%r2
	lpr	%r1,%r3
	lhi	%r3,1
	clr	%r2,%r1
	jle	.L1590
	lhi	%r4,8
.L1579:
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1600
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1600
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1600
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1600
	brct	%r4,.L1579
.L1580:
	lr	%r2,%r5
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r5
	br	%r14
.L1601:
	lcr	%r2,%r2
	lhi	%r0,1
	j	.L1577
.L1602:
	sr	%r5,%r1
.L1581:
	srl	%r3,1
	srl	%r1,1
.L1600:
	ltr	%r3,%r3
	je	.L1580
.L1590:
	clr	%r5,%r1
	jl	.L1581
	j	.L1602
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L1622
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L1606
	lhi	%r2,16
.L1605:
	tml	%r3,32768
	jne	.L1606
	sll	%r3,1
	n	%r3,.L1623-.L1622(%r13)
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1606
	brct	%r2,.L1605
	lhi	%r1,0
.L1606:
	tml	%r1,65535
	je	.L1614
	lhi	%r2,0
	j	.L1610
.L1609:
	n	%r1,.L1623-.L1622(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1608
.L1610:
	clr	%r5,%r3
	jl	.L1609
	sr	%r5,%r3
	n	%r5,.L1623-.L1622(%r13)
	or	%r2,%r1
	j	.L1609
.L1614:
	lr	%r2,%r1
.L1608:
	ltr	%r4,%r4
	jne	.L1621
.L1611:
	n	%r2,.L1623-.L1622(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1621:
	.cfi_restore_state
	lr	%r2,%r5
	j	.L1611
	.section	.rodata
	.align	8
.L1622:
.L1623:
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
	lhi	%r2,16
	clr	%r5,%r3
	jle	.L1642
.L1625:
	ltr	%r3,%r3
	jl	.L1626
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1626
	ltr	%r3,%r3
	jl	.L1626
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1626
	brct	%r2,.L1625
.L1634:
	lhi	%r2,0
.L1628:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1626:
	ltr	%r1,%r1
	je	.L1634
.L1642:
	lhi	%r2,0
	j	.L1630
.L1629:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1628
.L1630:
	clr	%r5,%r3
	jl	.L1629
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1629
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
	je	.L1646
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lhi	%r1,0
.L1647:
	lr	%r3,%r1
	br	%r14
.L1646:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	sll	%r2,0(%r4)
	or	%r2,%r3
	j	.L1647
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
	je	.L1652
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L1653:
	lr	%r2,%r1
	br	%r14
.L1652:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1653
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
	lr	%r1,%r2
	lrvr	%r2,%r3
	lrvr	%r3,%r1
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
	larl	%r13,.L1665
	lr	%r1,%r2
	cl	%r2,.L1666-.L1665(%r13)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r0,%r3
	sll	%r0,4
	lhi	%r2,16
	sr	%r2,%r0
	srl	%r1,0(%r2)
	l	%r5,.L1667-.L1665(%r13)
	nr	%r5,%r1
	ahi	%r5,-1
	srl	%r5,31
	sll	%r5,3
	lhi	%r4,8
	sr	%r4,%r5
	srl	%r1,0(%r4)
	ar	%r0,%r5
	lhi	%r3,240
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,2
	lhi	%r2,4
	sr	%r2,%r3
	srl	%r1,0(%r2)
	ar	%r3,%r0
	lr	%r0,%r3
	lhi	%r4,12
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,1
	lhi	%r2,2
	lr	%r5,%r2
	sr	%r5,%r4
	srl	%r1,0(%r5)
	tml	%r1,2
	jne	.L1662
	sr	%r2,%r1
.L1663:
	ar	%r4,%r0
	ar	%r2,%r4
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1662:
	.cfi_restore_state
	lhi	%r2,0
	j	.L1663
	.section	.rodata
	.align	8
.L1665:
.L1667:
	.long	65280
.L1666:
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
	jl	.L1672
	jh	.L1673
	clr	%r3,%r5
	jl	.L1672
	jh	.L1673
	lhi	%r2,1
	br	%r14
.L1672:
	lhi	%r2,0
	br	%r14
.L1673:
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
	jl	.L1679
	jh	.L1680
	clr	%r3,%r5
	jl	.L1679
	jh	.L1680
	lhi	%r2,1
	j	.L1676
.L1679:
	lhi	%r2,0
.L1676:
	ahi	%r2,-1
	br	%r14
.L1680:
	lhi	%r2,2
	j	.L1676
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
	larl	%r13,.L1684
	lr	%r1,%r2
	l	%r3,.L1685-.L1684(%r13)
	nr	%r3,%r2
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,4
	srl	%r1,0(%r3)
	lhi	%r2,255
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	srl	%r1,0(%r2)
	ar	%r2,%r3
	lhi	%r4,15
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,2
	srl	%r1,0(%r4)
	ar	%r2,%r4
	lhi	%r3,3
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,1
	srl	%r1,0(%r3)
	lhi	%r5,3
	nr	%r5,%r1
	lhi	%r0,1
	nr	%r1,%r0
	xr	%r1,%r0
	srl	%r5,1
	lhi	%r4,2
	sr	%r4,%r5
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r3
	ar	%r2,%r1
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L1684:
.L1685:
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
	je	.L1687
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r1,0
.L1688:
	lr	%r2,%r1
	br	%r14
.L1687:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1688
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1694
	lr	%r5,%r3
	l	%r4,.L1695-.L1694(%r13)
	nr	%r4,%r2
	l	%r1,.L1695-.L1694(%r13)
	nr	%r1,%r3
	lr	%r3,%r4
	msr	%r3,%r1
	lr	%r12,%r3
	srl	%r12,16
	srl	%r2,16
	lr	%r0,%r2
	msr	%r1,%r2
	ar	%r1,%r12
	l	%r12,.L1695-.L1694(%r13)
	nr	%r12,%r1
	srl	%r5,16
	lr	%r2,%r4
	msr	%r2,%r5
	ar	%r2,%r12
	n	%r3,.L1695-.L1694(%r13)
	lr	%r12,%r2
	sll	%r12,16
	srl	%r1,16
	msr	%r0,%r5
	ar	%r1,%r0
	srl	%r2,16
	ar	%r2,%r1
	ar	%r3,%r12
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L1694:
.L1695:
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
	stm	%r9,%r13,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1698
	lr	%r0,%r3
	l	%r12,.L1699-.L1698(%r13)
	nr	%r12,%r3
	l	%r1,.L1699-.L1698(%r13)
	nr	%r1,%r5
	lr	%r3,%r12
	msr	%r3,%r1
	lr	%r11,%r3
	srl	%r11,16
	lr	%r10,%r0
	srl	%r10,16
	msr	%r1,%r10
	ar	%r1,%r11
	l	%r11,.L1699-.L1698(%r13)
	nr	%r11,%r1
	lr	%r9,%r5
	srl	%r9,16
	msr	%r12,%r9
	ar	%r12,%r11
	n	%r3,.L1699-.L1698(%r13)
	lr	%r11,%r12
	sll	%r11,16
	srl	%r1,16
	msr	%r10,%r9
	ar	%r1,%r10
	srl	%r12,16
	ar	%r1,%r12
	msr	%r0,%r4
	ar	%r0,%r1
	msr	%r2,%r5
	ar	%r2,%r0
	ar	%r3,%r11
	lm	%r9,%r13,36(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
	.section	.rodata
	.align	8
.L1698:
.L1699:
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
	je	.L1701
	ahi	%r2,-1
.L1701:
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
	.align	16
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
	.align	16
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
.LFB145:
	.cfi_startproc
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1709
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r2,.L1710-.L1709(%r13)
	nr	%r2,%r0
	l	%r3,.L1710-.L1709(%r13)
	nr	%r3,%r1
	slr	%r5,%r3
	slbr	%r4,%r2
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,2
	l	%r2,.L1711-.L1709(%r13)
	nr	%r2,%r0
	l	%r3,.L1711-.L1709(%r13)
	nr	%r3,%r1
	l	%r0,.L1711-.L1709(%r13)
	nr	%r0,%r4
	l	%r1,.L1711-.L1709(%r13)
	nr	%r1,%r5
	alr	%r3,%r1
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r12,.L1712-.L1709(%r13)
	nr	%r12,%r2
	l	%r4,.L1712-.L1709(%r13)
	nr	%r4,%r3
	ar	%r12,%r4
	lr	%r5,%r12
	srl	%r5,16
	ar	%r12,%r5
	lr	%r2,%r12
	srl	%r2,8
	ar	%r2,%r12
	lhi	%r3,127
	nr	%r2,%r3
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L1709:
.L1712:
	.long	252645135
.L1711:
	.long	858993459
.L1710:
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
	larl	%r5,.L1715
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1716-.L1715(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r0,.L1717-.L1715(%r5)
	n	%r2,.L1717-.L1715(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L1718-.L1715(%r5)
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
.L1715:
.L1718:
	.long	252645135
.L1717:
	.long	858993459
.L1716:
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
	larl	%r5,.L1728
	ldr	%f2,%f0
	lr	%r3,%r2
	ld	%f0,.L1729-.L1728(%r5)
	j	.L1722
.L1720:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1721
	mdbr	%f2,%f2
.L1722:
	tml	%r3,1
	je	.L1720
	mdbr	%f0,%f2
	j	.L1720
.L1721:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L1729-.L1728(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1728:
.L1729:
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
	larl	%r5,.L1739
	ler	%f2,%f0
	lr	%r3,%r2
	le	%f0,.L1740-.L1739(%r5)
	j	.L1733
.L1731:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1732
	meebr	%f2,%f2
.L1733:
	tml	%r3,1
	je	.L1731
	meebr	%f0,%f2
	j	.L1731
.L1732:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L1740-.L1739(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1739:
.L1740:
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
	jl	.L1745
	jh	.L1746
	clr	%r3,%r5
	jl	.L1745
	jh	.L1746
	lhi	%r2,1
	br	%r14
.L1745:
	lhi	%r2,0
	br	%r14
.L1746:
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
	jl	.L1752
	jh	.L1753
	clr	%r3,%r5
	jl	.L1752
	jh	.L1753
	lhi	%r2,1
	j	.L1749
.L1752:
	lhi	%r2,0
.L1749:
	ahi	%r2,-1
	br	%r14
.L1753:
	lhi	%r2,2
	j	.L1749
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
	.align	2
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
