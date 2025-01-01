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
	je	.L446
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L436
	ar	%r12,%r10
	chi	%r13,1
	je	.L437
.L446:
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
	lr	%r2,%r13
	msr	%r2,%r10
	lr	%r4,%r10
	lr	%r3,%r9
	ar	%r2,%r7
	brasl	%r14,memcpy
	lr	%r8,%r2
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
	je	.L459
	lr	%r10,%r2
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	je	.L468
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L458
	ar	%r12,%r9
	chi	%r13,1
	je	.L459
.L468:
	srl	%r11,1
.L461:
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L458
	ar	%r12,%r9
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L458
	ar	%r12,%r9
	brct	%r11,.L461
.L459:
	lhi	%r8,0
.L458:
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L483
.L484:
	ahi	%r12,1
.L483:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L484
	chi	%r11,43
	je	.L490
	chi	%r11,45
	jne	.L491
	lhi	%r4,1
.L485:
	ahi	%r12,1
	j	.L486
.L490:
	lhi	%r4,0
	j	.L485
.L487:
	lr	%r0,%r2
	sll	%r0,2
	ar	%r0,%r2
	sll	%r0,1
	ahi	%r12,1
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r0
	sr	%r2,%r1
.L486:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jle	.L487
	ltr	%r4,%r4
	jne	.L482
	lcr	%r2,%r2
.L482:
	lm	%r11,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L491:
	.cfi_restore_state
	lhi	%r4,0
	j	.L486
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	8
	.align	16
.globl atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L497
.L498:
	ahi	%r12,1
.L497:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L498
	chi	%r11,43
	je	.L504
	chi	%r11,45
	jne	.L505
	lhi	%r4,1
.L499:
	ahi	%r12,1
	j	.L500
.L504:
	lhi	%r4,0
	j	.L499
.L501:
	lr	%r0,%r2
	sll	%r0,2
	ar	%r0,%r2
	sll	%r0,1
	ahi	%r12,1
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r0
	sr	%r2,%r1
.L500:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jle	.L501
	ltr	%r4,%r4
	jne	.L496
	lcr	%r2,%r2
.L496:
	lm	%r11,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L505:
	.cfi_restore_state
	lhi	%r4,0
	j	.L500
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	8
	.align	16
.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	stm	%r10,%r15,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L511
.L512:
	ahi	%r12,1
.L511:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L512
	chi	%r11,43
	je	.L513
	chi	%r11,45
	jne	.L514
	lhi	%r2,1
.L513:
	ahi	%r12,1
.L514:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r10,0
	lhi	%r11,0
	lhi	%r4,9
	clr	%r3,%r4
	jh	.L516
.L515:
	lr	%r4,%r10
	lr	%r5,%r11
	sldl	%r4,2
	alr	%r11,%r5
	alcr	%r10,%r4
	sldl	%r10,1
	ahi	%r12,1
	lhi	%r0,255
	nr	%r1,%r0
	ahi	%r1,-48
	lr	%r4,%r1
	lhi	%r5,0
	srda	%r4,32
	slr	%r11,%r5
	slbr	%r10,%r4
	ic	%r1,0(%r12)
	nr	%r0,%r1
	ahi	%r0,-48
	lhi	%r5,9
	clr	%r0,%r5
	jle	.L515
.L516:
	ltr	%r2,%r2
	jne	.L510
	lcr	%r10,%r10
	lcr	%r11,%r11
	je	.L510
	ahi	%r10,-1
.L510:
	lr	%r2,%r10
	lr	%r3,%r11
	lm	%r10,%r15,136(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
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
	je	.L528
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	j	.L531
.L532:
	lr	%r12,%r7
.L529:
	ltr	%r12,%r12
	je	.L528
.L531:
	lr	%r7,%r12
	srl	%r7,1
	lr	%r11,%r7
	msr	%r11,%r10
	ar	%r11,%r9
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L532
	jle	.L527
	ar	%r11,%r10
	lr	%r9,%r11
	ahi	%r12,-1
	sr	%r12,%r7
	j	.L529
.L528:
	lhi	%r11,0
.L527:
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
	je	.L540
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	lr	%r11,%r4
	j	.L543
.L542:
	sra	%r11,1
	je	.L540
.L543:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L539
	ltr	%r2,%r2
	jle	.L542
	ar	%r12,%r10
	lr	%r9,%r12
	ahi	%r11,-1
	j	.L542
.L540:
	lhi	%r12,0
.L539:
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
	jl	.L559
.L556:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L559:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L556
	ahi	%r4,-1
	j	.L556
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
.LFB53:
	.cfi_startproc
	lpr	%r2,%r2
	br	%r14
	.cfi_endproc
.LFE53:
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
.LFB55:
	.cfi_startproc
	lr	%r4,%r2
	lr	%r5,%r3
	ltr	%r2,%r2
	jl	.L572
.L569:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L572:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L569
	ahi	%r4,-1
	j	.L569
	.cfi_endproc
.LFE55:
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
	j	.L586
.L580:
	ahi	%r2,4
.L586:
	icm	%r1,15,0(%r2)
	je	.L583
	cr	%r3,%r1
	jne	.L580
	ltr	%r1,%r1
	bner	%r14
.L583:
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
	jne	.L590
.L589:
	ltr	%r4,%r4
	je	.L590
	ltr	%r5,%r5
	je	.L590
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	je	.L589
.L590:
	cr	%r4,%r5
	jl	.L595
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L595:
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
.L602:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L602
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
	je	.L607
.L608:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L608
.L607:
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
	je	.L636
	lr	%r0,%r4
	tml	%r4,1
	je	.L624
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L638
	ltr	%r1,%r1
	je	.L638
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L636
.L624:
	srl	%r0,1
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L638
	ltr	%r5,%r5
	je	.L638
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	j	.L615
.L613:
	l	%r11,0(%r2)
	c	%r11,0(%r3)
	jne	.L614
	ltr	%r11,%r11
	je	.L614
.L615:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	l	%r12,0(%r2)
	c	%r12,0(%r1)
	jne	.L614
	ltr	%r12,%r12
	je	.L614
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L613
	j	.L618
.L614:
	ltr	%r4,%r4
	je	.L618
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jl	.L619
	lhi	%r2,1
	jh	.L612
.L618:
	lhi	%r2,0
.L612:
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L619:
	.cfi_restore_state
	lhi	%r2,-1
	j	.L612
.L638:
	.cfi_restore 11
	.cfi_restore 12
	ltr	%r4,%r4
	je	.L636
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L641
	lhi	%r2,1
	bhr	%r14
.L636:
	lhi	%r2,0
	br	%r14
.L641:
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
	je	.L653
	lr	%r5,%r4
	tml	%r4,1
	je	.L656
	c	%r3,0(%r2)
	je	.L664
	ahi	%r2,4
	ahi	%r4,-1
	je	.L653
.L656:
	srl	%r5,1
.L648:
	c	%r3,0(%r2)
	je	.L664
	ahi	%r4,-1
	lr	%r1,%r2
	ahi	%r1,4
	lr	%r2,%r1
	c	%r3,0(%r1)
	je	.L664
	ahi	%r4,-1
	ahi	%r1,4
	lr	%r2,%r1
	brct	%r5,.L648
.L653:
	lhi	%r2,0
	br	%r14
.L664:
	ltr	%r4,%r4
	bner	%r14
	j	.L653
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
	je	.L691
	lr	%r0,%r4
	tml	%r4,1
	je	.L679
	clc	0(4,%r2),0(%r3)
	jne	.L692
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L691
.L679:
	srl	%r0,1
	clc	0(4,%r2),0(%r3)
	jne	.L692
	j	.L670
.L668:
	clc	0(4,%r2),0(%r3)
	jne	.L688
.L670:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	clc	0(4,%r2),0(%r1)
	jne	.L688
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L668
.L673:
	lhi	%r2,0
.L667:
	br	%r14
.L688:
	ltr	%r4,%r4
	je	.L673
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L674
	lhi	%r2,1
	jh	.L667
	j	.L673
.L674:
	lhi	%r2,-1
	j	.L667
.L692:
	ltr	%r4,%r4
	je	.L691
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jl	.L695
	lhi	%r2,1
	bhr	%r14
.L691:
	lhi	%r2,0
	br	%r14
.L695:
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
	je	.L702
	sll	%r4,2
	brasl	%r14,memcpy
.L702:
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
	larl	%r13,.L754
	cr	%r2,%r3
	je	.L709
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r0,%r2
	sr	%r0,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r0,%r1
	jl	.L710
	lhi	%r1,0
	ltr	%r4,%r4
	je	.L709
	lhi	%r0,3
	nr	%r0,%r4
	je	.L733
	chi	%r0,1
	je	.L738
	chi	%r0,2
	je	.L739
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	ahi	%r5,-1
	lhi	%r1,4
.L739:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L738:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r5,%r5
	je	.L709
.L733:
	srl	%r4,2
	lr	%r5,%r4
.L711:
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
	brct	%r5,.L711
	j	.L709
.L710:
	ltr	%r4,%r4
	je	.L709
	lr	%r1,%r5
	sll	%r1,2
	n	%r5,.L755-.L754(%r13)
	ahi	%r5,1
	lhi	%r4,3
	nr	%r4,%r5
	je	.L724
	chi	%r4,1
	je	.L740
	chi	%r4,2
	je	.L741
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L741:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,-4
.L740:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L709
.L724:
	srl	%r5,2
.L712:
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
	brct	%r5,.L712
.L709:
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L754:
.L755:
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
	je	.L767
	chi	%r0,1
	je	.L771
	chi	%r0,2
	je	.L772
	st	%r3,0(%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L772:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L771:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L767:
	srl	%r4,2
.L758:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L758
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
	jhe	.L781
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	lhi	%r5,3
	nr	%r5,%r4
	je	.L796
	chi	%r5,1
	je	.L809
	chi	%r5,2
	je	.L810
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L810:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L809:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	brct	%r4,.L796
	br	%r14
.L796:
	srl	%r1,2
.L783:
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
	brct	%r1,.L783
	br	%r14
.L781:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	lr	%r5,%r4
	lhi	%r0,3
	nr	%r0,%r4
	je	.L805
	chi	%r0,1
	je	.L811
	chi	%r0,2
	je	.L812
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L812:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L811:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L805:
	srl	%r5,2
.L784:
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
	brct	%r5,.L784
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
.LFB72:
	.cfi_startproc
	rll	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	8
	.align	16
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
.LFB73:
	.cfi_startproc
	lhi	%r1,32
	sr	%r1,%r3
	rll	%r2,%r2,0(%r1)
	br	%r14
	.cfi_endproc
.LFE73:
	.size	rotr_sz, .-rotr_sz
	.align	8
	.align	16
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	larl	%r5,.L844
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	sll	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L845-.L844(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L844:
.L845:
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
	larl	%r5,.L848
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L849-.L848(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L848:
.L849:
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
	larl	%r5,.L856
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L857-.L856(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L856:
.L857:
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
.L865:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r3,%r1
	tml	%r4,1
	jne	.L873
	ahi	%r1,1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	tml	%r0,1
	jne	.L873
	lr	%r4,%r2
	srl	%r4,0(%r1)
	lr	%r1,%r3
	ahi	%r1,2
	tml	%r4,1
	jne	.L873
	lr	%r3,%r2
	srl	%r3,0(%r1)
	ahi	%r1,1
	tml	%r3,1
	jne	.L873
	brct	%r5,.L865
	lhi	%r2,0
	br	%r14
.L873:
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
	je	.L880
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L879:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L879
	br	%r14
.L880:
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
	larl	%r5,.L890
	lhi	%r2,1
	keb	%f0,.L891-.L890(%r5)
	blr	%r14
	keb	%f0,.L892-.L890(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L890:
.L892:
	.long	2139095039
.L891:
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
	larl	%r5,.L898
	lhi	%r2,1
	kdb	%f0,.L899-.L898(%r5)
	blr	%r14
	kdb	%f0,.L900-.L898(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L898:
.L900:
	.long	2146435071
	.long	-1
.L899:
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
	larl	%r5,.L906
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L907-.L906(%r5)
	ld	%f3,.L907-.L906+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L908-.L906(%r5)
	ld	%f3,.L908-.L906+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L906:
.L908:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L907:
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
	larl	%r5,.L925
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	lr	%r1,%r2
	ltr	%r2,%r2
	jl	.L924
	le	%f1,.L926-.L925(%r5)
	j	.L915
.L924:
	le	%f1,.L927-.L925(%r5)
	j	.L915
.L914:
	lr	%r2,%r1
	srl	%r2,31
	ar	%r2,%r1
	sra	%r2,1
	lr	%r1,%r2
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
.L915:
	tml	%r1,1
	je	.L914
	meebr	%f0,%f1
	j	.L914
	.section	.rodata
	.align	8
.L925:
.L927:
	.long	1056964608
.L926:
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
	larl	%r5,.L942
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	lr	%r1,%r2
	ltr	%r2,%r2
	jl	.L941
	ld	%f1,.L943-.L942(%r5)
	j	.L932
.L941:
	ld	%f1,.L944-.L942(%r5)
	j	.L932
.L931:
	lr	%r2,%r1
	srl	%r2,31
	ar	%r2,%r1
	sra	%r2,1
	lr	%r1,%r2
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
.L932:
	tml	%r1,1
	je	.L931
	mdbr	%f0,%f1
	j	.L931
	.section	.rodata
	.align	8
.L942:
.L944:
	.long	1071644672
	.long	0
.L943:
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
	larl	%r5,.L959
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L946
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L946
	lr	%r1,%r4
	ltr	%r4,%r4
	jl	.L958
	ld	%f0,.L960-.L959(%r5)
	ld	%f2,.L960-.L959+8(%r5)
	j	.L949
.L958:
	ld	%f0,.L961-.L959(%r5)
	ld	%f2,.L961-.L959+8(%r5)
	j	.L949
.L948:
	lr	%r4,%r1
	srl	%r4,31
	ar	%r4,%r1
	sra	%r4,1
	lr	%r1,%r4
	ltr	%r4,%r4
	je	.L946
	mxbr	%f0,%f0
.L949:
	tml	%r1,1
	je	.L948
	mxbr	%f1,%f0
	j	.L948
.L946:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L959:
.L961:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L960:
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
	je	.L973
	chi	%r0,1
	je	.L977
	chi	%r0,2
	je	.L978
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L978:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L977:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r5
	je	.L963
.L973:
	srl	%r4,2
.L964:
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
	brct	%r4,.L964
.L963:
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
	lhi	%r0,0
	lhi	%r5,0
	lr	%r1,%r2
	srst	%r5,%r1
	jo	.-4
	lr	%r1,%r5
	ltr	%r4,%r4
	je	.L1010
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r4
	tml	%r4,1
	je	.L999
	ic	%r12,0(%r3)
	stc	%r12,0(%r5)
	tml	%r12,255
	je	.L1007
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	je	.L996
.L999:
	srl	%r0,1
.L991:
	ic	%r11,0(%r3)
	stc	%r11,0(%r1)
	tml	%r11,255
	je	.L1007
	lr	%r11,%r3
	ahi	%r11,1
	ahi	%r1,1
	ahi	%r4,-1
	ic	%r3,1(%r3)
	stc	%r3,0(%r1)
	tml	%r3,255
	je	.L1007
	lr	%r3,%r11
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L991
	j	.L996
.L1007:
	ltr	%r4,%r4
	jne	.L994
.L996:
	mvi	0(%r1),0
.L994:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1010:
	mvi	0(%r5),0
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
	je	.L1029
	lr	%r4,%r3
	tml	%r3,1
	je	.L1023
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L1023:
	srl	%r4,1
.L1016:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1016
	br	%r14
.L1029:
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
.L1041:
	icm	%r5,1,0(%r2)
	je	.L1038
	lr	%r1,%r3
	lhi	%r4,255
	nr	%r5,%r4
.L1037:
	lhi	%r0,0
	ic	%r0,0(%r1)
	ltr	%r0,%r0
	je	.L1042
	ahi	%r1,1
	cr	%r0,%r5
	jne	.L1037
	br	%r14
.L1042:
	ahi	%r2,1
	j	.L1041
.L1038:
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
	j	.L1046
.L1045:
	ahi	%r1,1
	tml	%r4,255
	ber	%r14
.L1046:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L1045
	lr	%r2,%r1
	j	.L1045
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
	lhi	%r0,0
	lhi	%r10,0
	lr	%r1,%r3
	srst	%r10,%r1
	jo	.-4
	slr	%r10,%r3
	jhe	.L1055
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
.L1053:
	lr	%r3,%r9
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L1051
	lr	%r4,%r10
	lr	%r3,%r11
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L1051
	lr	%r2,%r12
	ahi	%r2,1
	j	.L1053
.L1055:
	lr	%r12,%r2
.L1051:
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
.LFE95:
	.size	strstr, .-strstr
	.align	8
	.align	16
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	larl	%r5,.L1072
	kdb	%f0,.L1073-.L1072(%r5)
	jl	.L1071
.L1062:
	kdb	%f0,.L1073-.L1072(%r5)
	jnh	.L1065
	kdb	%f2,.L1073-.L1072(%r5)
	jl	.L1064
.L1065:
	br	%r14
.L1071:
	kdb	%f2,.L1073-.L1072(%r5)
	jnh	.L1062
.L1064:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1072:
.L1073:
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
	lr	%r12,%r2
	ltr	%r9,%r5
	je	.L1078
	clr	%r3,%r9
	jl	.L1080
	sr	%r3,%r9
	alr	%r3,%r2
	lr	%r11,%r3
	jnle	.L1080
	lhi	%r7,0
	ic	%r7,0(%r4)
	ahi	%r9,-1
	ahi	%r4,1
	lr	%r8,%r4
	j	.L1077
.L1076:
	clr	%r12,%r11
	jh	.L1080
.L1077:
	ic	%r1,0(%r12)
	lr	%r10,%r12
	ahi	%r12,1
	lhi	%r2,255
	nr	%r1,%r2
	cr	%r1,%r7
	jne	.L1076
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L1076
	j	.L1074
.L1078:
	lr	%r10,%r2
	j	.L1074
.L1080:
	lhi	%r10,0
.L1074:
	lr	%r2,%r10
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
.LFE97:
	.size	memmem, .-memmem
	.align	8
	.align	16
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
.LFB98:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r4
	brasl	%r14,memcpy
	ar	%r2,%r12
	lm	%r12,%r15,144(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
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
	larl	%r5,.L1116
	kdb	%f0,.L1117-.L1116(%r5)
	jl	.L1115
	lhi	%r3,0
.L1091:
	kdb	%f0,.L1118-.L1116(%r5)
	jnhe	.L1112
	lhi	%r1,0
.L1095:
	ahi	%r1,1
	mdb	%f0,.L1119-.L1116(%r5)
	kdb	%f0,.L1118-.L1116(%r5)
	jhe	.L1095
.L1096:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L1115:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L1091
.L1112:
	kdb	%f0,.L1119-.L1116(%r5)
	lhi	%r1,0
	jnl	.L1096
	cdb	%f0,.L1117-.L1116(%r5)
	je	.L1096
.L1098:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1119-.L1116(%r5)
	jl	.L1098
	j	.L1096
	.section	.rodata
	.align	8
.L1116:
.L1119:
	.long	1071644672
	.long	0
.L1118:
	.long	1072693248
	.long	0
.L1117:
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
	je	.L1124
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
	j	.L1123
.L1126:
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
	je	.L1131
.L1123:
	lhi	%r10,0
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r2,%r10
	lcr	%r3,%r11
	je	.L1126
	ahi	%r2,-1
	j	.L1126
.L1124:
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
.L1131:
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
	jhe	.L1151
.L1134:
	ltr	%r3,%r3
	jl	.L1135
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1135
	ltr	%r3,%r3
	jl	.L1135
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1135
	brct	%r2,.L1134
.L1143:
	lhi	%r2,0
.L1137:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1135:
	ltr	%r1,%r1
	je	.L1143
.L1151:
	lhi	%r2,0
	j	.L1139
.L1138:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1137
.L1139:
	clr	%r5,%r3
	jl	.L1138
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1138
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
	je	.L1156
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
.L1156:
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
	je	.L1171
.L1166:
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
.L1171:
	cr	%r5,%r1
	jne	.L1166
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
.L1175:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L1175
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
	jl	.L1181
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L1181
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1216
	chi	%r5,1
	je	.L1221
	chi	%r5,2
	je	.L1222
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1222:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1221:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1216:
	srl	%r4,2
.L1182:
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
	brct	%r4,.L1182
	br	%r14
.L1181:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1184
	sll	%r5,3
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-8
	srl	%r0,3
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1207
	chi	%r11,1
	je	.L1223
	chi	%r11,2
	je	.L1224
	lm	%r10,%r11,0(%r3)
	stm	%r10,%r11,0(%r2)
	lhi	%r5,8
.L1224:
	l	%r13,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1223:
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1184
.L1207:
	srl	%r0,2
.L1185:
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
	brct	%r0,.L1185
.L1184:
	clr	%r4,%r1
	jle	.L1180
	lr	%r5,%r4
	sr	%r5,%r1
	lhi	%r0,3
	nr	%r0,%r5
	je	.L1198
	chi	%r0,1
	je	.L1225
	chi	%r0,2
	je	.L1226
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ahi	%r1,1
.L1226:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1225:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1180
.L1198:
	srl	%r5,2
.L1186:
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
	brct	%r5,.L1186
.L1180:
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
	jl	.L1248
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jh	.L1248
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1274
	chi	%r0,1
	je	.L1279
	chi	%r0,2
	je	.L1280
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1280:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1279:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1274:
	srl	%r4,2
.L1249:
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
	brct	%r4,.L1249
	br	%r14
.L1248:
	ltr	%r1,%r1
	je	.L1297
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
	je	.L1265
	chi	%r12,1
	je	.L1281
	chi	%r12,2
	je	.L1282
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lhi	%r1,2
.L1282:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1281:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r0,%r1
	je	.L1251
.L1265:
	srl	%r5,2
.L1252:
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
	brct	%r5,.L1252
.L1251:
	tml	%r4,1
	je	.L1247
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1247:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1297:
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
	jl	.L1303
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L1303
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1338
	chi	%r5,1
	je	.L1343
	chi	%r5,2
	je	.L1344
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1344:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1343:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1338:
	srl	%r4,2
.L1304:
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
	brct	%r4,.L1304
	br	%r14
.L1303:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1306
	sll	%r5,2
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1329
	chi	%r11,1
	je	.L1345
	chi	%r11,2
	je	.L1346
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lhi	%r5,4
.L1346:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1345:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1306
.L1329:
	srl	%r0,2
.L1307:
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
	brct	%r0,.L1307
.L1306:
	clr	%r4,%r1
	jle	.L1302
	lr	%r12,%r4
	sr	%r12,%r1
	lhi	%r0,3
	nr	%r0,%r12
	je	.L1320
	chi	%r0,1
	je	.L1347
	chi	%r0,2
	je	.L1348
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1348:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1347:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1302
.L1320:
	srl	%r12,2
.L1308:
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
	brct	%r12,.L1308
.L1302:
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
	larl	%r5,.L1374
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L1375-.L1374(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1374:
.L1375:
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
	larl	%r5,.L1380
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L1379
.L1377:
	ledbr	%f0,%f0
	br	%r14
.L1379:
	adb	%f0,.L1381-.L1380(%r5)
	j	.L1377
	.section	.rodata
	.align	8
.L1380:
.L1381:
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
.L1392:
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r1,%r3
	sra	%r1,0(%r12)
	tml	%r1,1
	jne	.L1390
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	lr	%r12,%r4
	sr	%r12,%r1
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1390
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1390
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1390
	ahi	%r1,3
	lr	%r2,%r1
	brct	%r5,.L1392
.L1390:
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
.L1403:
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
	brct	%r4,.L1403
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
	larl	%r5,.L1419
	keb	%f0,.L1420-.L1419(%r5)
	jhe	.L1418
	cfebr	%r2,5,%f0
	br	%r14
.L1418:
	seb	%f0,.L1420-.L1419(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1421-.L1419(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1419:
.L1420:
	.long	1191182336
.L1421:
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
.L1423:
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
	brct	%r5,.L1423
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
.L1431:
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
	brct	%r5,.L1431
	br	%r14
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
	.align	16
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	ltr	%r4,%r2
	lhi	%r2,0
	ber	%r14
.L1440:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L1440
	br	%r14
	.cfi_endproc
.LFE119:
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
.L1447:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L1447
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
	.align	16
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r1,1
	lhi	%r2,16
	clr	%r3,%r5
	jhe	.L1471
.L1454:
	ltr	%r3,%r3
	jl	.L1455
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1455
	ltr	%r3,%r3
	jl	.L1455
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1455
	brct	%r2,.L1454
.L1463:
	lhi	%r2,0
.L1457:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1455:
	ltr	%r1,%r1
	je	.L1463
.L1471:
	lhi	%r2,0
	j	.L1459
.L1458:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1457
.L1459:
	clr	%r5,%r3
	jl	.L1458
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1458
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
	.align	16
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	kebr	%f0,%f2
	jl	.L1477
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1477:
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
	jl	.L1482
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1482:
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
	jl	.L1502
	lhi	%r0,0
.L1489:
	ltr	%r3,%r3
	je	.L1494
	lhi	%r5,32
	lhi	%r2,0
.L1491:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	je	.L1490
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L1491
.L1490:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L1502:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L1489
.L1494:
	lhi	%r2,0
	j	.L1490
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r2,%r2
	jl	.L1513
	lhi	%r12,0
.L1505:
	ltr	%r3,%r3
	jl	.L1514
.L1506:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L1504
	lcr	%r2,%r2
.L1504:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L1513:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L1505
.L1514:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L1506
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r2,%r2
	jl	.L1524
	lhi	%r12,0
.L1517:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L1516
	lcr	%r2,%r2
.L1516:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L1524:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L1517
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
	larl	%r13,.L1544
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L1528
	lhi	%r2,16
.L1527:
	tml	%r3,32768
	jne	.L1528
	sll	%r3,1
	n	%r3,.L1545-.L1544(%r13)
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1528
	brct	%r2,.L1527
	lhi	%r1,0
.L1528:
	tml	%r1,65535
	je	.L1536
	lhi	%r2,0
	j	.L1532
.L1531:
	n	%r1,.L1545-.L1544(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1530
.L1532:
	clr	%r5,%r3
	jl	.L1531
	sr	%r5,%r3
	n	%r5,.L1545-.L1544(%r13)
	or	%r2,%r1
	j	.L1531
.L1536:
	lr	%r2,%r1
.L1530:
	ltr	%r4,%r4
	jne	.L1543
.L1533:
	n	%r2,.L1545-.L1544(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1543:
	.cfi_restore_state
	lr	%r2,%r5
	j	.L1533
	.section	.rodata
	.align	8
.L1544:
.L1545:
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
.LFB130:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r1,1
	lhi	%r2,16
	clr	%r3,%r5
	jhe	.L1564
.L1547:
	ltr	%r3,%r3
	jl	.L1548
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1548
	ltr	%r3,%r3
	jl	.L1548
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1548
	brct	%r2,.L1547
.L1556:
	lhi	%r2,0
.L1550:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1548:
	ltr	%r1,%r1
	je	.L1556
.L1564:
	lhi	%r2,0
	j	.L1552
.L1551:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1550
.L1552:
	clr	%r5,%r3
	jl	.L1551
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1551
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
	.align	16
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	tml	%r4,32
	je	.L1568
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lhi	%r1,0
.L1569:
	lr	%r3,%r1
	br	%r14
.L1568:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	sll	%r2,0(%r4)
	or	%r2,%r3
	j	.L1569
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
	je	.L1574
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L1575:
	lr	%r2,%r1
	br	%r14
.L1574:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1575
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
	larl	%r13,.L1587
	lr	%r1,%r2
	cl	%r2,.L1588-.L1587(%r13)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r0,%r3
	sll	%r0,4
	lhi	%r2,16
	sr	%r2,%r0
	srl	%r1,0(%r2)
	l	%r5,.L1589-.L1587(%r13)
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
	jne	.L1584
	sr	%r2,%r1
.L1585:
	ar	%r4,%r0
	ar	%r2,%r4
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1584:
	.cfi_restore_state
	lhi	%r2,0
	j	.L1585
	.section	.rodata
	.align	8
.L1587:
.L1589:
	.long	65280
.L1588:
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
	jl	.L1594
	jh	.L1595
	clr	%r3,%r5
	jl	.L1594
	jh	.L1595
	lhi	%r2,1
	br	%r14
.L1594:
	lhi	%r2,0
	br	%r14
.L1595:
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
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	brasl	%r14,__cmpdi2
	ahi	%r2,-1
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
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
	larl	%r13,.L1602
	lr	%r1,%r2
	l	%r3,.L1603-.L1602(%r13)
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
.L1602:
.L1603:
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
	je	.L1605
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r1,0
.L1606:
	lr	%r2,%r1
	br	%r14
.L1605:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1606
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
	larl	%r13,.L1612
	lr	%r5,%r3
	l	%r4,.L1613-.L1612(%r13)
	nr	%r4,%r2
	l	%r1,.L1613-.L1612(%r13)
	nr	%r1,%r3
	lr	%r3,%r4
	msr	%r3,%r1
	lr	%r12,%r3
	srl	%r12,16
	srl	%r2,16
	lr	%r0,%r2
	msr	%r1,%r2
	ar	%r1,%r12
	l	%r12,.L1613-.L1612(%r13)
	nr	%r12,%r1
	srl	%r5,16
	lr	%r2,%r4
	msr	%r2,%r5
	ar	%r2,%r12
	n	%r3,.L1613-.L1612(%r13)
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
.L1612:
.L1613:
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
	lr	%r9,%r2
	lr	%r11,%r3
	lr	%r10,%r4
	lr	%r12,%r5
	lr	%r3,%r5
	lr	%r2,%r11
	brasl	%r14,__muldsi3
	msr	%r12,%r9
	msr	%r11,%r10
	ar	%r12,%r11
	ar	%r2,%r12
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
	je	.L1618
	ahi	%r2,-1
.L1618:
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
	larl	%r13,.L1626
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r2,.L1627-.L1626(%r13)
	nr	%r2,%r0
	l	%r3,.L1627-.L1626(%r13)
	nr	%r3,%r1
	slr	%r5,%r3
	slbr	%r4,%r2
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,2
	l	%r2,.L1628-.L1626(%r13)
	nr	%r2,%r0
	l	%r3,.L1628-.L1626(%r13)
	nr	%r3,%r1
	l	%r0,.L1628-.L1626(%r13)
	nr	%r0,%r4
	l	%r1,.L1628-.L1626(%r13)
	nr	%r1,%r5
	alr	%r3,%r1
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r12,.L1629-.L1626(%r13)
	nr	%r12,%r2
	l	%r4,.L1629-.L1626(%r13)
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
.L1626:
.L1629:
	.long	252645135
.L1628:
	.long	858993459
.L1627:
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
	larl	%r5,.L1632
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1633-.L1632(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r0,.L1634-.L1632(%r5)
	n	%r2,.L1634-.L1632(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L1635-.L1632(%r5)
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
.L1632:
.L1635:
	.long	252645135
.L1634:
	.long	858993459
.L1633:
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
	larl	%r5,.L1645
	ldr	%f2,%f0
	lr	%r3,%r2
	ld	%f0,.L1646-.L1645(%r5)
	j	.L1639
.L1637:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1638
	mdbr	%f2,%f2
.L1639:
	tml	%r3,1
	je	.L1637
	mdbr	%f0,%f2
	j	.L1637
.L1638:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L1646-.L1645(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1645:
.L1646:
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
	larl	%r5,.L1656
	ler	%f2,%f0
	lr	%r3,%r2
	le	%f0,.L1657-.L1656(%r5)
	j	.L1650
.L1648:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1649
	meebr	%f2,%f2
.L1650:
	tml	%r3,1
	je	.L1648
	meebr	%f0,%f2
	j	.L1648
.L1649:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L1657-.L1656(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1656:
.L1657:
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
	jl	.L1662
	jh	.L1663
	clr	%r3,%r5
	jl	.L1662
	jh	.L1663
	lhi	%r2,1
	br	%r14
.L1662:
	lhi	%r2,0
	br	%r14
.L1663:
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
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	brasl	%r14,__ucmpdi2
	ahi	%r2,-1
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
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
