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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ahi	%r3,-1
	lr	%r1,%r2
	lr	%r12,%r4
	ahi	%r1,-1
	ahi	%r12,-1
	lhi	%r0,3
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L17
	chi	%r0,1
	je	.L30
	chi	%r0,2
	jne	.L52
.L31:
	ic	%r12,0(%r4,%r3)
	stc	%r12,0(%r4,%r1)
	ahi	%r4,-1
.L30:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	brct	%r4,.L17
.L3:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L2:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
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
	lr	%r4,%r5
	srl	%r4,2
.L5:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	stc	%r0,1(%r1,%r2)
	ic	%r5,2(%r1,%r3)
	stc	%r5,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L5
	br	%r14
.L17:
	.cfi_offset 12, -48
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
.L52:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r1)
	lr	%r4,%r12
	j	.L31
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
	je	.L76
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r12,%r5
	ahi	%r12,-1
	lr	%r0,%r5
	tml	%r5,1
	jne	.L81
.L64:
	srl	%r0,1
.L55:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L73
	ahi	%r2,1
	ic	%r11,1(%r3)
	stc	%r11,0(%r2)
	ahi	%r5,-1
	lhi	%r1,255
	nr	%r11,%r1
	cr	%r11,%r4
	je	.L73
	ahi	%r5,-1
	ahi	%r3,2
	ahi	%r2,1
	brct	%r0,.L55
.L59:
	lhi	%r2,0
.L82:
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L73:
	.cfi_restore_state
	ltr	%r5,%r5
	je	.L59
	ahi	%r2,1
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L81:
	.cfi_restore_state
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r11,255
	nr	%r1,%r11
	cr	%r1,%r4
	je	.L73
	ahi	%r3,1
	ahi	%r2,1
	ltr	%r5,%r12
	jne	.L64
	lhi	%r2,0
	j	.L82
.L76:
	.cfi_restore 11
	.cfi_restore 12
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
	je	.L90
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r1,%r4
	tml	%r4,1
	jne	.L103
.L93:
	srl	%r1,1
.L85:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	je	.L101
	ahi	%r2,1
	ahi	%r4,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L101
	ahi	%r2,1
	ahi	%r4,-1
	brct	%r1,.L85
.L90:
	lhi	%r2,0
	br	%r14
.L103:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L101
	ahi	%r2,1
	ltr	%r4,%r5
	jne	.L93
	j	.L90
.L101:
	ltr	%r4,%r4
	bner	%r14
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
	je	.L110
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r1,%r4
	tml	%r4,1
	jne	.L126
.L115:
	srl	%r1,1
.L106:
	clc	0(1,%r3),0(%r2)
	jne	.L124
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
	clc	0(1,%r3),0(%r2)
	jne	.L124
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
	brct	%r1,.L106
.L110:
	lhi	%r2,0
	br	%r14
.L124:
	ltr	%r4,%r4
	je	.L110
	lhi	%r0,0
	lhi	%r5,0
	ic	%r0,0(%r2)
	ic	%r5,0(%r3)
	lr	%r2,%r0
	sr	%r2,%r5
	br	%r14
.L126:
	clc	0(1,%r3),0(%r2)
	jne	.L124
	ahi	%r2,1
	ahi	%r3,1
	ltr	%r4,%r5
	jne	.L115
	j	.L110
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
	je	.L129
	brasl	%r14,memcpy
.L129:
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
	tml	%r4,1
	je	.L140
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L140:
	srl	%r4,1
	ahi	%r4,1
	brct	%r4,.L138
.L147:
	lhi	%r2,0
	br	%r14
.L138:
	lr	%r0,%r1
	ahi	%r0,-1
	lhi	%r5,0
	lr	%r2,%r1
	ic	%r5,0(%r1)
	cr	%r5,%r3
	ber	%r14
	ahi	%r1,-2
	lr	%r2,%r0
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	brct	%r4,.L138
	j	.L147
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
	lhi	%r5,3
	lr	%r1,%r2
	nr	%r5,%r4
	je	.L160
	chi	%r5,1
	je	.L164
	chi	%r5,2
	je	.L165
	stc	%r3,0(%r2)
	ahi	%r1,1
.L165:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L164:
	stc	%r3,0(%r1)
	ahi	%r1,1
	cr	%r0,%r1
	ber	%r14
.L160:
	srl	%r4,2
.L151:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	ahi	%r1,4
	brct	%r4,.L151
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
.L175:
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
	jne	.L175
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
.L189:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
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
.L193:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L193
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
	lr	%r4,%r3
	ahi	%r4,-1
	ic	%r5,0(%r3)
	clm	%r5,1,0(%r2)
	ic	%r3,0(%r2)
	jne	.L204
	lhi	%r1,1
	tml	%r3,255
	je	.L204
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	la	%r12,0(%r1,%r4)
	clm	%r3,1,0(%r12)
	ic	%r5,0(%r1,%r4)
	jne	.L198
.L207:
	tml	%r3,255
	je	.L198
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	la	%r12,0(%r1,%r4)
	clm	%r3,1,0(%r12)
	ic	%r5,0(%r1,%r4)
	je	.L207
.L198:
	lhi	%r2,255
	lhi	%r4,255
	nr	%r2,%r3
	nr	%r5,%r4
	l	%r12,48(%r15)
	.cfi_restore 12
	sr	%r2,%r5
	br	%r14
.L204:
	lhi	%r0,255
	lhi	%r2,255
	nr	%r5,%r0
	nr	%r2,%r3
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
	je	.L210
.L211:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L211
.L210:
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
	je	.L220
.L232:
	icm	%r5,1,0(%r2)
	je	.L217
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L217
	brct	%r4,.L227
.L217:
	lhi	%r2,255
	lhi	%r4,0
	nr	%r2,%r5
	ic	%r4,0(%r3)
	sr	%r2,%r4
	br	%r14
.L227:
	lhi	%r0,255
	nr	%r0,%r5
	cr	%r1,%r0
	jne	.L217
	ahi	%r3,1
	ahi	%r2,1
	j	.L232
.L220:
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
	lr	%r0,%r4
	ar	%r4,%r2
	ahi	%r0,-2
	lhi	%r5,3
	srl	%r0,1
	ahi	%r0,1
	nr	%r5,%r0
	je	.L243
	chi	%r5,1
	je	.L247
	chi	%r5,2
	je	.L248
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L248:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L247:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L243:
	srl	%r0,2
.L236:
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
	brct	%r0,.L236
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
	je	.L261
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L261:
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
	jle	.L265
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L265:
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
	je	.L277
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L277:
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
	larl	%r5,.L288
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L285
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L287
.L285:
	lhi	%r2,1
	br	%r14
.L287:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L285
	a	%r2,.L289-.L288(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L288:
.L289:
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
	larl	%r5,.L301
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L300
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L297
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L302-.L301(%r5)
	jle	.L297
	l	%r4,.L303-.L301(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L297
	l	%r0,.L304-.L301(%r5)
	ar	%r0,%r2
	cl	%r0,.L305-.L301(%r5)
	jh	.L298
	n	%r2,.L306-.L301(%r5)
	x	%r2,.L306-.L301(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L297:
	lhi	%r2,1
	br	%r14
.L300:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L298:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L301:
.L306:
	.long	65534
.L305:
	.long	1048579
.L304:
	.long	-65532
.L303:
	.long	-57344
.L302:
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
	jle	.L309
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L309:
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
	larl	%r5,.L322
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L317
	kdbr	%f0,%f2
	jnh	.L320
	sdbr	%f0,%f2
	br	%r14
.L320:
	ld	%f0,.L323-.L322(%r5)
	br	%r14
.L317:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L322:
.L323:
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
	larl	%r5,.L333
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L328
	kebr	%f0,%f2
	jnh	.L331
	sebr	%f0,%f2
	br	%r14
.L331:
	le	%f0,.L334-.L333(%r5)
	br	%r14
.L328:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L333:
.L334:
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
	jo	.L343
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L345
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L340
	lhi	%r0,0
.L340:
	tml	%r0,1
	jne	.L343
	ldr	%f2,%f0
.L343:
	ldr	%f0,%f2
	br	%r14
.L345:
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
	jo	.L355
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L357
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L352
	lhi	%r0,0
.L352:
	tml	%r0,1
	jne	.L355
	ler	%f2,%f0
.L355:
	ler	%f0,%f2
	br	%r14
.L357:
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
	jo	.L366
	cxbr	%f0,%f0
	jo	.L360
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
	jne	.L371
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L365
	lhi	%r0,0
.L365:
	tml	%r0,1
	je	.L363
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L364:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L360:
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L371:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L360
.L366:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L363:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L364
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
	jo	.L379
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L382
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L378
	lhi	%r0,0
.L378:
	tml	%r0,1
	bner	%r14
.L379:
	ldr	%f0,%f2
	br	%r14
.L382:
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
	jo	.L390
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L393
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L389
	lhi	%r0,0
.L389:
	tml	%r0,1
	bner	%r14
.L390:
	ler	%f0,%f2
	br	%r14
.L393:
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
	jo	.L396
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L402
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L407
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L401
	lhi	%r0,0
.L401:
	tml	%r0,1
	je	.L399
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L400:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L396:
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L407:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L396
	ld	%f8,112(%r15)
	ld	%f10,120(%r15)
	std	%f8,96(%r15)
	std	%f10,104(%r15)
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L399:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L400
.L402:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L396
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
	je	.L410
	larl	%r4,.LANCHOR1
.L411:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L411
.L410:
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
	je	.L426
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L426:
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
	je	.L429
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L429:
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
	st	%r4,100(%r15)
	lr	%r10,%r5
	lr	%r8,%r2
	lr	%r7,%r3
	icm	%r13,15,0(%r4)
	je	.L439
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L463
.L451:
	srl	%r11,1
.L441:
	lr	%r3,%r12
	lr	%r2,%r8
	lr	%r9,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L438
	ar	%r12,%r10
	lr	%r2,%r8
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r9,%r12
	ltr	%r2,%r2
	je	.L438
	ar	%r12,%r10
	brct	%r11,.L441
.L439:
	lr	%r9,%r10
	msr	%r9,%r13
	l	%r1,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r1)
	ar	%r9,%r7
	ltr	%r10,%r10
	je	.L438
	lr	%r4,%r10
	lr	%r3,%r8
	lr	%r2,%r9
	brasl	%r14,memmove
.L438:
	lr	%r2,%r9
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
.L463:
	.cfi_restore_state
	lr	%r9,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L438
	ar	%r12,%r10
	chi	%r13,1
	jne	.L451
	j	.L439
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
	je	.L466
	lr	%r10,%r5
	lr	%r12,%r3
	lr	%r9,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L487
.L475:
	srl	%r11,1
.L468:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L465
	ar	%r12,%r10
	lr	%r2,%r9
	lr	%r3,%r12
	basr	%r14,%r6
	lr	%r8,%r12
	ltr	%r2,%r2
	je	.L465
	ar	%r12,%r10
	brct	%r11,.L468
.L466:
	lhi	%r8,0
.L465:
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
.L487:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L465
	ar	%r12,%r10
	chi	%r7,1
	jne	.L475
	lhi	%r8,0
	j	.L465
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r1,%r2
	lhi	%r12,4
.L492:
	lhi	%r3,0
	cli	0(%r1),32
	ic	%r3,0(%r1)
	je	.L494
	lr	%r2,%r3
	ahi	%r2,-9
	lr	%r5,%r12
	slr	%r5,%r2
	lhi	%r2,0
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L507
.L494:
	ahi	%r1,1
	j	.L492
.L507:
	chi	%r3,43
	je	.L501
	chi	%r3,45
	je	.L508
	ic	%r4,0(%r1)
	lhi	%r0,255
	nr	%r0,%r4
	lhi	%r3,9
	ahi	%r0,-48
	lhi	%r12,0
	clr	%r0,%r3
	jle	.L497
.L498:
	ltr	%r12,%r12
	jne	.L491
	lcr	%r2,%r2
.L491:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L508:
	.cfi_restore_state
	lhi	%r12,1
.L495:
	ahi	%r1,1
	lhi	%r0,255
	ic	%r4,0(%r1)
	nr	%r0,%r4
	lhi	%r3,9
	ahi	%r0,-48
	clr	%r0,%r3
	jh	.L498
.L497:
	lhi	%r5,255
	nr	%r4,%r5
	ahi	%r4,-48
	ahi	%r1,1
	lr	%r0,%r4
	lr	%r3,%r2
	ic	%r4,0(%r1)
	sll	%r3,2
	lhi	%r5,255
	ar	%r3,%r2
	nr	%r5,%r4
	sll	%r3,1
	lr	%r2,%r3
	sr	%r2,%r0
	lr	%r3,%r5
	lhi	%r0,9
	ahi	%r3,-48
	clr	%r3,%r0
	jle	.L497
	j	.L498
.L501:
	lhi	%r12,0
	j	.L495
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
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r1,%r2
	lhi	%r11,4
.L513:
	lhi	%r2,0
	cli	0(%r1),32
	ic	%r2,0(%r1)
	je	.L515
	lr	%r3,%r2
	lr	%r5,%r11
	ahi	%r3,-9
	lhi	%r0,0
	slr	%r5,%r3
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L531
.L515:
	ahi	%r1,1
	j	.L513
.L531:
	chi	%r2,43
	je	.L516
	chi	%r2,45
	je	.L532
.L517:
	ic	%r11,0(%r1)
	lhi	%r4,255
	nr	%r4,%r11
	lhi	%r12,9
	ahi	%r4,-48
	lhi	%r2,0
	lhi	%r3,0
	clr	%r4,%r12
	jh	.L519
.L518:
	lhi	%r13,255
	ahi	%r1,1
	nr	%r11,%r13
	ahi	%r11,-48
	lr	%r12,%r2
	lr	%r13,%r3
	sldl	%r12,2
	alr	%r13,%r3
	lr	%r4,%r11
	lhi	%r5,0
	alcr	%r12,%r2
	srda	%r4,32
	ic	%r11,0(%r1)
	sldl	%r12,1
	lr	%r2,%r12
	lr	%r3,%r13
	slr	%r3,%r5
	slbr	%r2,%r4
	lhi	%r4,255
	nr	%r4,%r11
	lhi	%r5,9
	ahi	%r4,-48
	clr	%r4,%r5
	jle	.L518
.L519:
	ltr	%r0,%r0
	jne	.L512
	lcr	%r2,%r2
	lcr	%r3,%r3
	jne	.L533
.L512:
	lm	%r11,%r13,44(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L532:
	.cfi_restore_state
	lhi	%r0,1
.L516:
	ahi	%r1,1
	j	.L517
.L533:
	ahi	%r2,-1
	lm	%r11,%r13,44(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	je	.L536
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	j	.L539
.L546:
	jle	.L535
	ahi	%r12,-1
	ar	%r11,%r9
	sr	%r12,%r10
	lr	%r8,%r11
	ltr	%r12,%r12
	je	.L536
.L539:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	lr	%r2,%r7
	ar	%r11,%r8
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L546
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L539
.L536:
	lhi	%r11,0
.L535:
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
	ltr	%r11,%r4
	l	%r7,192(%r15)
	je	.L549
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	j	.L552
.L561:
	jle	.L551
	ar	%r12,%r10
	ahi	%r11,-1
	lr	%r9,%r12
.L551:
	sra	%r11,1
	je	.L549
.L552:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r10
	lr	%r4,%r7
	lr	%r2,%r8
	ar	%r12,%r9
	lr	%r3,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	jne	.L561
.L548:
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
.L549:
	.cfi_restore_state
	lhi	%r12,0
	j	.L548
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
	jl	.L569
.L566:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L569:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L566
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
	jl	.L582
.L579:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L582:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L579
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
	j	.L596
.L598:
	cr	%r3,%r1
	je	.L597
	ahi	%r2,4
.L596:
	icm	%r1,15,0(%r2)
	jne	.L598
	lhi	%r2,0
	br	%r14
.L597:
	ltr	%r3,%r3
	bner	%r14
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
	je	.L601
	j	.L602
.L612:
	ltr	%r5,%r5
	je	.L602
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L602
.L601:
	ltr	%r4,%r4
	jne	.L612
.L602:
	cr	%r4,%r5
	jl	.L607
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L607:
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
.L615:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L615
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
	je	.L620
.L621:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L621
.L620:
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
	je	.L631
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r1,%r4
	tml	%r4,1
	jne	.L648
.L637:
	srl	%r1,1
.L626:
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L627
	ltr	%r5,%r5
	je	.L627
	l	%r0,4(%r2)
	ahi	%r2,4
	ahi	%r4,-1
	ahi	%r3,4
	c	%r0,0(%r3)
	jne	.L627
	ltr	%r0,%r0
	je	.L627
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r1,.L626
.L631:
	lhi	%r2,0
	br	%r14
.L627:
	ltr	%r4,%r4
	je	.L631
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L632
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L648:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L627
	ltr	%r0,%r0
	je	.L627
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r4,%r5
	jne	.L637
	j	.L631
.L632:
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
	je	.L656
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r1,%r4
	tml	%r4,1
	jne	.L669
.L659:
	srl	%r1,1
.L651:
	c	%r3,0(%r2)
	je	.L667
	ahi	%r4,-1
	ahi	%r2,4
	c	%r3,0(%r2)
	je	.L667
	ahi	%r4,-1
	ahi	%r2,4
	brct	%r1,.L651
.L656:
	lhi	%r2,0
	br	%r14
.L669:
	c	%r3,0(%r2)
	je	.L667
	ahi	%r2,4
	ltr	%r4,%r5
	jne	.L659
	j	.L656
.L667:
	ltr	%r4,%r4
	bner	%r14
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
	je	.L677
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r1,%r4
	tml	%r4,1
	jne	.L694
.L683:
	srl	%r1,1
.L672:
	clc	0(4,%r2),0(%r3)
	jne	.L692
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	clc	0(4,%r2),0(%r3)
	jne	.L692
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r1,.L672
.L677:
	lhi	%r2,0
	br	%r14
.L692:
	ltr	%r4,%r4
	je	.L677
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jl	.L678
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L694:
	clc	0(4,%r2),0(%r3)
	jne	.L692
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r4,%r5
	jne	.L683
	j	.L677
.L678:
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
	je	.L697
	sll	%r4,2
	brasl	%r14,memcpy
.L697:
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
	larl	%r13,.L750
	cr	%r2,%r3
	je	.L704
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L749
	ltr	%r4,%r4
	je	.L704
	l	%r4,.L751-.L750(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L719
	chi	%r5,1
	je	.L735
	chi	%r5,2
	je	.L736
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L736:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L735:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L704
.L719:
	srl	%r4,2
.L707:
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
	brct	%r4,.L707
.L704:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L749:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L704
	lhi	%r0,3
	nr	%r0,%r4
	je	.L728
	chi	%r0,1
	je	.L733
	chi	%r0,2
	je	.L734
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L734:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L733:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L704
.L728:
	srl	%r4,2
.L706:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L706
	j	.L704
	.section	.rodata
	.align	8
.L750:
.L751:
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
	je	.L763
	chi	%r0,1
	je	.L767
	chi	%r0,2
	je	.L768
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L768:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L767:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L763:
	srl	%r4,2
.L754:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L754
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
	jhe	.L777
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L792
	chi	%r5,1
	je	.L805
	chi	%r5,2
	jne	.L822
.L806:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L805:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L792
	br	%r14
.L777:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L801
	chi	%r0,1
	je	.L807
	chi	%r0,2
	je	.L808
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L808:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L807:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L801:
	lr	%r4,%r5
	srl	%r4,2
.L780:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L780
	br	%r14
.L792:
	srl	%r1,2
.L779:
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
	brct	%r1,.L779
	br	%r14
.L822:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
	j	.L806
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
	larl	%r5,.L840
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L841-.L840(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L840:
.L841:
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
	larl	%r5,.L844
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
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
	larl	%r5,.L852
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L853-.L852(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L852:
.L853:
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
	lhi	%r1,0
	lhi	%r4,8
.L861:
	lr	%r3,%r1
	ahi	%r3,1
	lr	%r5,%r2
	srl	%r5,0(%r1)
	lr	%r1,%r3
	tml	%r5,1
	jne	.L869
	ahi	%r1,1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	tml	%r0,1
	jne	.L869
	lr	%r5,%r2
	srl	%r5,0(%r1)
	lr	%r1,%r3
	ahi	%r1,2
	tml	%r5,1
	jne	.L869
	lr	%r3,%r2
	srl	%r3,0(%r1)
	ahi	%r1,1
	tml	%r3,1
	jne	.L869
	brct	%r4,.L861
	lhi	%r2,0
	br	%r14
.L869:
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
	je	.L876
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L875:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L875
	br	%r14
.L876:
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
	larl	%r5,.L886
	lhi	%r2,1
	keb	%f0,.L887-.L886(%r5)
	blr	%r14
	keb	%f0,.L888-.L886(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L886:
.L888:
	.long	2139095039
.L887:
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
	larl	%r5,.L894
	kdb	%f0,.L895-.L894(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L896-.L894(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L894:
.L896:
	.long	2146435071
	.long	-1
.L895:
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
	larl	%r5,.L902
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L903-.L902(%r5)
	ld	%f3,.L903-.L902+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L904-.L902(%r5)
	ld	%f3,.L904-.L902+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L902:
.L904:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L903:
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
	larl	%r5,.L921
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L920
	le	%f1,.L922-.L921(%r5)
.L911:
	lr	%r1,%r2
	tml	%r2,1
	srl	%r1,31
	je	.L910
	meebr	%f0,%f1
.L910:
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	j	.L911
.L920:
	le	%f1,.L923-.L921(%r5)
	j	.L911
	.section	.rodata
	.align	8
.L921:
.L923:
	.long	1056964608
.L922:
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
	larl	%r5,.L938
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L937
	ld	%f1,.L939-.L938(%r5)
.L928:
	lr	%r1,%r2
	tml	%r2,1
	srl	%r1,31
	je	.L927
	mdbr	%f0,%f1
.L927:
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	j	.L928
.L937:
	ld	%f1,.L940-.L938(%r5)
	j	.L928
	.section	.rodata
	.align	8
.L938:
.L940:
	.long	1071644672
	.long	0
.L939:
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
	larl	%r5,.L956
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L942
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L942
	ltr	%r4,%r4
	jl	.L954
	ld	%f0,.L957-.L956(%r5)
	ld	%f2,.L957-.L956+8(%r5)
	j	.L945
.L955:
	mxbr	%f0,%f0
.L945:
	lr	%r1,%r4
	tml	%r4,1
	srl	%r1,31
	je	.L944
	mxbr	%f1,%f0
.L944:
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	jne	.L955
.L942:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L954:
	ld	%f0,.L958-.L956(%r5)
	ld	%f2,.L958-.L956+8(%r5)
	j	.L945
	.section	.rodata
	.align	8
.L956:
.L958:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L957:
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
	lhi	%r5,3
	lhi	%r1,0
	nr	%r5,%r4
	je	.L970
	chi	%r5,1
	je	.L974
	chi	%r5,2
	je	.L975
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L975:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L974:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r4
	ber	%r14
.L970:
	srl	%r4,2
.L961:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ic	%r0,1(%r1,%r3)
	ic	%r5,1(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	ic	%r5,3(%r1,%r2)
	xr	%r5,%r0
	stc	%r5,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L961
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
	je	.L984
.L985:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L985
.L984:
	ltr	%r4,%r4
	je	.L1007
	lr	%r0,%r4
	ahi	%r0,-1
	lr	%r5,%r4
	tml	%r4,1
	je	.L1008
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ic	%r12,0(%r3)
	stc	%r12,0(%r1)
	tml	%r12,255
	je	.L1004
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r4,%r0
	je	.L992
	srl	%r5,1
.L986:
	ic	%r0,0(%r3)
	stc	%r0,0(%r1)
	tml	%r0,255
	je	.L1004
	ahi	%r1,1
	ic	%r12,1(%r3)
	stc	%r12,0(%r1)
	ahi	%r4,-1
	tml	%r12,255
	je	.L1004
	ahi	%r3,2
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r5,.L986
.L992:
	mvi	0(%r1),0
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1008:
	srl	%r5,1
.L1014:
	ic	%r0,0(%r3)
	stc	%r0,0(%r1)
	tml	%r0,255
	je	.L1011
	ahi	%r1,1
	ic	%r0,1(%r3)
	stc	%r0,0(%r1)
	ahi	%r4,-1
	tml	%r0,255
	je	.L1011
	ahi	%r3,2
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r5,.L1014
.L1007:
	mvi	0(%r1),0
	br	%r14
.L1011:
	ltr	%r4,%r4
	bner	%r14
	mvi	0(%r1),0
	br	%r14
.L1004:
	.cfi_offset 12, -48
	ltr	%r4,%r4
	je	.L992
	l	%r12,48(%r15)
	.cfi_restore 12
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
	ltr	%r3,%r3
	lhi	%r2,0
	ber	%r14
	lr	%r4,%r3
	tml	%r3,1
	jne	.L1036
.L1028:
	srl	%r4,1
.L1021:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1021
	br	%r14
.L1036:
	cli	0(%r1),0
	ber	%r14
	chi	%r3,1
	lhi	%r2,1
	jne	.L1028
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
	je	.L1043
.L1047:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1042
.L1041:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1042:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1041
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1047
.L1043:
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
.L1051:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L1050
	lr	%r2,%r1
.L1050:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1051
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
	stm	%r9,%r12,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r9,%r3
	icm	%r10,1,0(%r3)
	je	.L1057
.L1058:
	ahi	%r9,1
	cli	0(%r9),0
	jne	.L1058
.L1057:
	slr	%r9,%r3
	jhe	.L1059
	lhi	%r1,255
	ahi	%r9,-1
	nr	%r10,%r1
	j	.L1065
.L1083:
	ahi	%r2,1
	ltr	%r0,%r0
	je	.L1082
.L1065:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r10
	jne	.L1083
	ltr	%r2,%r2
	je	.L1059
	lr	%r4,%r3
	icm	%r12,1,0(%r2)
	je	.L1061
	lr	%r5,%r9
	lr	%r1,%r2
	ahi	%r5,1
.L1062:
	lhi	%r0,0
	ic	%r0,0(%r4)
	ltr	%r0,%r0
	je	.L1061
	brct	%r5,.L1077
.L1061:
	clm	%r12,1,0(%r4)
	je	.L1059
	ahi	%r2,1
	j	.L1065
.L1077:
	lhi	%r11,255
	nr	%r11,%r12
	cr	%r0,%r11
	jne	.L1061
	ahi	%r4,1
	ahi	%r1,1
	icm	%r12,1,0(%r1)
	jne	.L1062
	j	.L1061
.L1082:
	lhi	%r2,0
.L1059:
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
	larl	%r5,.L1096
	kdb	%f0,.L1097-.L1096(%r5)
	jl	.L1095
.L1086:
	kdb	%f0,.L1097-.L1096(%r5)
	jnh	.L1089
	kdb	%f2,.L1097-.L1096(%r5)
	jl	.L1088
.L1089:
	br	%r14
.L1095:
	kdb	%f2,.L1097-.L1096(%r5)
	jnh	.L1086
.L1088:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1096:
.L1097:
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
	stm	%r9,%r12,36(%r15)
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r12,%r2
	ltr	%r11,%r5
	je	.L1098
	clr	%r3,%r11
	jl	.L1108
	sr	%r3,%r11
	alr	%r3,%r2
	lr	%r10,%r3
	jnle	.L1108
	lhi	%r9,0
	ic	%r9,0(%r4)
	j	.L1105
.L1100:
	clr	%r12,%r10
	jh	.L1108
.L1105:
	ic	%r1,0(%r12)
	lr	%r2,%r12
	ahi	%r12,1
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r1,%r9
	jne	.L1100
	lr	%r1,%r4
	ahi	%r1,1
	lr	%r5,%r11
	ahi	%r5,-1
	je	.L1098
	lr	%r0,%r11
	ahi	%r0,-1
	lr	%r3,%r12
	tml	%r5,1
	je	.L1117
	clc	1(1,%r4),0(%r12)
	jne	.L1125
	ahi	%r3,1
	lr	%r1,%r4
	ahi	%r1,2
	lr	%r5,%r11
	ahi	%r5,-2
	je	.L1098
.L1117:
	srl	%r0,1
.L1101:
	clc	0(1,%r1),0(%r3)
	jne	.L1125
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r1,1
	clc	0(1,%r1),0(%r3)
	jne	.L1125
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r1,1
	brct	%r0,.L1101
.L1098:
	lm	%r9,%r12,36(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
.L1125:
	.cfi_restore_state
	ltr	%r5,%r5
	je	.L1098
	clc	0(1,%r1),0(%r3)
	je	.L1098
	clr	%r12,%r10
	jle	.L1105
.L1108:
	lhi	%r2,0
	lm	%r9,%r12,36(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
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
	je	.L1131
	brasl	%r14,memmove
.L1131:
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
	larl	%r5,.L1165
	kdb	%f0,.L1166-.L1165(%r5)
	jl	.L1163
	kdb	%f0,.L1167-.L1165(%r5)
	lhi	%r3,0
	jnhe	.L1159
.L1164:
	lhi	%r1,0
.L1142:
	ahi	%r1,1
	mdb	%f0,.L1168-.L1165(%r5)
	kdb	%f0,.L1167-.L1165(%r5)
	jhe	.L1142
.L1143:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L1163:
	lcdbr	%f0,%f0
	lhi	%r3,1
	kdb	%f0,.L1167-.L1165(%r5)
	jhe	.L1164
.L1159:
	kdb	%f0,.L1168-.L1165(%r5)
	lhi	%r1,0
	jnl	.L1143
	cdb	%f0,.L1166-.L1165(%r5)
	je	.L1143
.L1145:
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1168-.L1165(%r5)
	jnl	.L1143
	adbr	%f0,%f0
	ahi	%r1,-1
	kdb	%f0,.L1168-.L1165(%r5)
	jl	.L1145
	j	.L1143
	.section	.rodata
	.align	8
.L1165:
.L1168:
	.long	1071644672
	.long	0
.L1167:
	.long	1072693248
	.long	0
.L1166:
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
	je	.L1173
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
.L1172:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1175
	ahi	%r2,-1
.L1175:
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
	jne	.L1172
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
.L1173:
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
	lhi	%r2,16
	clr	%r3,%r5
	jhe	.L1199
.L1182:
	ltr	%r3,%r3
	jl	.L1183
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1183
	ltr	%r3,%r3
	jl	.L1183
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1183
	brct	%r2,.L1182
.L1191:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
.L1201:
	lr	%r2,%r5
	br	%r14
.L1183:
	ltr	%r1,%r1
	je	.L1191
.L1199:
	lhi	%r2,0
.L1187:
	clr	%r5,%r3
	jl	.L1186
	sr	%r5,%r3
	or	%r2,%r1
.L1186:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1187
	ltr	%r4,%r4
	ber	%r14
	j	.L1201
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
	je	.L1205
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
.L1205:
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
	je	.L1220
.L1215:
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
.L1220:
	cr	%r5,%r1
	jne	.L1215
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
.L1224:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L1224
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
	lhi	%r1,-8
	nr	%r1,%r4
	lr	%r5,%r4
	clr	%r2,%r3
	srl	%r5,3
	jl	.L1230
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1295
.L1230:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1233
	sll	%r5,3
	lr	%r0,%r5
	ahi	%r0,-8
	lr	%r12,%r5
	srl	%r0,3
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1256
	chi	%r11,1
	je	.L1272
	chi	%r11,2
	je	.L1273
	lm	%r10,%r11,0(%r3)
	lhi	%r5,8
	stm	%r10,%r11,0(%r2)
.L1273:
	l	%r13,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1272:
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1233
.L1256:
	srl	%r0,2
.L1234:
	l	%r12,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r12,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	l	%r10,8(%r5,%r3)
	l	%r13,12(%r5,%r3)
	st	%r10,8(%r5,%r2)
	st	%r13,12(%r5,%r2)
	l	%r12,16(%r5,%r3)
	l	%r11,20(%r5,%r3)
	st	%r12,16(%r5,%r2)
	st	%r11,20(%r5,%r2)
	l	%r10,24(%r5,%r3)
	l	%r13,28(%r5,%r3)
	st	%r10,24(%r5,%r2)
	st	%r13,28(%r5,%r2)
	ahi	%r5,32
	brct	%r0,.L1234
.L1233:
	clr	%r4,%r1
	jle	.L1229
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1247
	chi	%r0,1
	je	.L1274
	chi	%r0,2
	je	.L1275
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1275:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1274:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1229
.L1247:
	lr	%r4,%r5
	srl	%r4,2
.L1235:
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	stc	%r12,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1235
.L1229:
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1295:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1265
	chi	%r5,1
	je	.L1270
	chi	%r5,2
	je	.L1271
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1271:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1270:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1265:
	srl	%r4,2
.L1231:
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
	brct	%r4,.L1231
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
	clr	%r2,%r3
	srl	%r1,1
	jl	.L1298
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1351
.L1298:
	ltr	%r1,%r1
	je	.L1347
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	sll	%r1,1
	lr	%r5,%r1
	ahi	%r5,-2
	lr	%r0,%r1
	srl	%r5,1
	lhi	%r12,3
	ahi	%r5,1
	lhi	%r1,0
	nr	%r12,%r5
	je	.L1315
	chi	%r12,1
	je	.L1331
	chi	%r12,2
	je	.L1332
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lhi	%r1,2
.L1332:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1331:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r0,%r1
	je	.L1301
.L1315:
	srl	%r5,2
.L1302:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1302
.L1301:
	tml	%r4,1
	je	.L1297
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1297:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1351:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1324
	chi	%r0,1
	je	.L1329
	chi	%r0,2
	je	.L1330
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1330:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1329:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1324:
	srl	%r4,2
.L1299:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
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
	brct	%r4,.L1299
	br	%r14
.L1347:
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
	lhi	%r1,-4
	nr	%r1,%r4
	lr	%r5,%r4
	clr	%r2,%r3
	srl	%r5,2
	jl	.L1354
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1419
.L1354:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1357
	sll	%r5,2
	lr	%r0,%r5
	ahi	%r0,-4
	lr	%r12,%r5
	srl	%r0,2
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1380
	chi	%r11,1
	je	.L1396
	chi	%r11,2
	je	.L1397
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lhi	%r5,4
.L1397:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1396:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1357
.L1380:
	srl	%r0,2
.L1358:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r11,12(%r5,%r3)
	st	%r11,12(%r5,%r2)
	ahi	%r5,16
	brct	%r0,.L1358
.L1357:
	clr	%r4,%r1
	jle	.L1353
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1371
	chi	%r0,1
	je	.L1398
	chi	%r0,2
	je	.L1399
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1399:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1398:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1353
.L1371:
	lr	%r4,%r5
	srl	%r4,2
.L1359:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r11,2(%r1,%r3)
	stc	%r11,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1359
.L1353:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1419:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1389
	chi	%r5,1
	je	.L1394
	chi	%r5,2
	je	.L1395
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1395:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1394:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1389:
	srl	%r4,2
.L1355:
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
	brct	%r4,.L1355
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
	larl	%r5,.L1426
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1427-.L1426(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1426:
.L1427:
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
	larl	%r5,.L1431
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1429
	adb	%f0,.L1432-.L1431(%r5)
.L1429:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1431:
.L1432:
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
	lhi	%r1,0
	lhi	%r3,15
	lhi	%r5,4
.L1443:
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r4,%r2
	sra	%r4,0(%r12)
	tml	%r4,1
	jne	.L1441
	ahi	%r1,1
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r0,%r2
	lr	%r4,%r1
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1441
	ahi	%r1,1
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r0,%r2
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1441
	lr	%r1,%r4
	lr	%r4,%r3
	ahi	%r1,2
	sr	%r4,%r1
	lr	%r12,%r2
	sra	%r12,0(%r4)
	tml	%r12,1
	jne	.L1441
	ahi	%r1,1
	brct	%r5,.L1443
.L1441:
	lr	%r2,%r1
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
	lhi	%r1,0
	lhi	%r4,4
.L1454:
	lr	%r3,%r2
	sra	%r3,0(%r1)
	tml	%r3,1
	jne	.L1452
	ahi	%r1,1
	lr	%r5,%r2
	lr	%r0,%r1
	sra	%r5,0(%r1)
	tml	%r5,1
	jne	.L1452
	ahi	%r1,1
	lr	%r3,%r2
	sra	%r3,0(%r1)
	tml	%r3,1
	jne	.L1452
	lr	%r1,%r0
	ahi	%r1,2
	lr	%r0,%r2
	sra	%r0,0(%r1)
	tml	%r0,1
	jne	.L1452
	ahi	%r1,1
	brct	%r4,.L1454
.L1452:
	lr	%r2,%r1
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
	larl	%r5,.L1470
	keb	%f0,.L1471-.L1470(%r5)
	jhe	.L1469
	cfebr	%r2,5,%f0
	br	%r14
.L1469:
	seb	%f0,.L1471-.L1470(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1472-.L1470(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1470:
.L1471:
	.long	1191182336
.L1472:
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r1,0
	lhi	%r3,0
	lhi	%r0,4
.L1474:
	lhi	%r12,1
	lr	%r5,%r2
	lr	%r4,%r2
	sra	%r5,0(%r3)
	sra	%r4,1(%r3)
	nr	%r5,%r12
	nr	%r4,%r12
	ar	%r1,%r5
	lr	%r5,%r2
	ar	%r1,%r4
	sra	%r5,2(%r3)
	lhi	%r4,1
	nr	%r5,%r4
	lr	%r12,%r2
	ar	%r1,%r5
	sra	%r12,3(%r3)
	lhi	%r5,1
	ahi	%r3,4
	nr	%r12,%r5
	ar	%r1,%r12
	brct	%r0,.L1474
	lhi	%r2,1
	l	%r12,48(%r15)
	.cfi_restore 12
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r1,0
	lhi	%r3,0
	lhi	%r0,4
.L1483:
	lhi	%r12,1
	lr	%r5,%r2
	lr	%r4,%r2
	sra	%r5,0(%r3)
	sra	%r4,1(%r3)
	nr	%r5,%r12
	nr	%r4,%r12
	ar	%r1,%r5
	lr	%r5,%r2
	ar	%r1,%r4
	sra	%r5,2(%r3)
	lhi	%r4,1
	nr	%r5,%r4
	lr	%r12,%r2
	ar	%r1,%r5
	sra	%r12,3(%r3)
	lhi	%r5,1
	ahi	%r3,4
	nr	%r12,%r5
	ar	%r1,%r12
	brct	%r0,.L1483
	lr	%r2,%r1
	l	%r12,48(%r15)
	.cfi_restore 12
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
.L1493:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L1493
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
.L1500:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	srl	%r3,1
	sll	%r4,1
	ltr	%r3,%r3
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	srl	%r3,1
	sll	%r4,1
	ltr	%r3,%r3
	jne	.L1500
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
	jle	.L1524
.L1507:
	ltr	%r3,%r3
	jl	.L1508
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1508
	ltr	%r3,%r3
	jl	.L1508
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1508
	brct	%r2,.L1507
.L1516:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
.L1526:
	lr	%r2,%r5
	br	%r14
.L1508:
	ltr	%r1,%r1
	je	.L1516
.L1524:
	lhi	%r2,0
.L1512:
	clr	%r5,%r3
	jl	.L1511
	sr	%r5,%r3
	or	%r2,%r1
.L1511:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1512
	ltr	%r4,%r4
	ber	%r14
	j	.L1526
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
	jl	.L1531
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1531:
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
	jl	.L1536
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1536:
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
	jl	.L1556
	lhi	%r0,0
.L1543:
	ltr	%r3,%r3
	je	.L1548
	lhi	%r5,32
	lhi	%r2,0
	j	.L1545
.L1557:
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1544
.L1545:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	jne	.L1557
.L1544:
	ltr	%r0,%r0
	ber	%r14
.L1558:
	lcr	%r2,%r2
	br	%r14
.L1556:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L1543
.L1548:
	ltr	%r0,%r0
	lhi	%r2,0
	ber	%r14
	j	.L1558
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
	jl	.L1585
	lhi	%r0,0
.L1561:
	ltr	%r3,%r3
	jhe	.L1562
	lhi	%r1,1
	lcr	%r3,%r3
	xr	%r0,%r1
.L1562:
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r2,%r3
	jle	.L1583
	lhi	%r4,8
.L1564:
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1563
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1563
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1563
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1563
	brct	%r4,.L1564
.L1571:
	ltr	%r0,%r0
	lhi	%r2,0
	ber	%r14
.L1586:
	lcr	%r2,%r2
	br	%r14
.L1563:
	ltr	%r1,%r1
	je	.L1571
.L1583:
	lhi	%r2,0
.L1567:
	clr	%r5,%r3
	jl	.L1566
	sr	%r5,%r3
	or	%r2,%r1
.L1566:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1567
	ltr	%r0,%r0
	ber	%r14
	j	.L1586
.L1585:
	lcr	%r2,%r2
	lhi	%r0,1
	j	.L1561
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
	ltr	%r4,%r2
	jl	.L1613
	lhi	%r0,0
.L1589:
	lpr	%r1,%r3
	lr	%r2,%r4
	lhi	%r3,1
	clr	%r4,%r1
	jle	.L1602
	lhi	%r5,8
.L1591:
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1612
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1612
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1612
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1612
	brct	%r5,.L1591
	ltr	%r0,%r0
	ber	%r14
.L1614:
	lcr	%r2,%r2
	br	%r14
.L1602:
	clr	%r2,%r1
	jl	.L1593
	sr	%r2,%r1
.L1593:
	srl	%r3,1
	srl	%r1,1
.L1612:
	ltr	%r3,%r3
	jne	.L1602
	ltr	%r0,%r0
	ber	%r14
	j	.L1614
.L1613:
	lcr	%r4,%r4
	lhi	%r0,1
	j	.L1589
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
	larl	%r13,.L1633
	lhi	%r1,1
	lr	%r5,%r2
	clr	%r3,%r2
	jhe	.L1618
	lhi	%r2,16
.L1617:
	tml	%r3,32768
	jne	.L1618
	sll	%r3,1
	sll	%r1,1
	n	%r3,.L1634-.L1633(%r13)
	clr	%r5,%r3
	jle	.L1618
	brct	%r2,.L1617
	lhi	%r1,0
.L1618:
	tml	%r1,65535
	je	.L1626
	lhi	%r2,0
.L1622:
	clr	%r5,%r3
	jl	.L1621
	sr	%r5,%r3
	or	%r2,%r1
	n	%r5,.L1634-.L1633(%r13)
.L1621:
	n	%r1,.L1634-.L1633(%r13)
	srl	%r3,1
	srl	%r1,1
	ltr	%r1,%r1
	jne	.L1622
.L1620:
	ltr	%r4,%r4
	je	.L1623
	lr	%r2,%r5
.L1623:
	n	%r2,.L1634-.L1633(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1626:
	.cfi_restore_state
	lr	%r2,%r1
	j	.L1620
	.section	.rodata
	.align	8
.L1633:
.L1634:
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
	jle	.L1653
.L1636:
	ltr	%r3,%r3
	jl	.L1637
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1637
	ltr	%r3,%r3
	jl	.L1637
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1637
	brct	%r2,.L1636
.L1645:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
.L1655:
	lr	%r2,%r5
	br	%r14
.L1637:
	ltr	%r1,%r1
	je	.L1645
.L1653:
	lhi	%r2,0
.L1641:
	clr	%r5,%r3
	jl	.L1640
	sr	%r5,%r3
	or	%r2,%r1
.L1640:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1641
	ltr	%r4,%r4
	ber	%r14
	j	.L1655
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
	je	.L1658
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L1658:
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
	je	.L1664
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L1664:
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
	larl	%r13,.L1677
	cl	%r2,.L1678-.L1677(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L1679-.L1677(%r13)
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
	jne	.L1674
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L1674:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L1677:
.L1679:
	.long	65280
.L1678:
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
	jl	.L1684
	jh	.L1685
	clr	%r3,%r5
	jl	.L1684
	jh	.L1685
	lhi	%r2,1
	br	%r14
.L1684:
	lhi	%r2,0
	br	%r14
.L1685:
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
	jl	.L1691
	jh	.L1692
	clr	%r3,%r5
	jl	.L1691
	jh	.L1692
	lhi	%r2,1
	ahi	%r2,-1
	br	%r14
.L1691:
	lhi	%r2,0
	ahi	%r2,-1
	br	%r14
.L1692:
	lhi	%r2,2
	ahi	%r2,-1
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
	larl	%r13,.L1696
	l	%r4,.L1697-.L1696(%r13)
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
.L1696:
.L1697:
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
	je	.L1699
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L1699:
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
	larl	%r13,.L1711
	l	%r4,.L1712-.L1711(%r13)
	l	%r1,.L1712-.L1711(%r13)
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
	l	%r5,.L1712-.L1711(%r13)
	lr	%r0,%r3
	n	%r3,.L1712-.L1711(%r13)
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
.L1711:
.L1712:
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
	larl	%r13,.L1715
	l	%r1,.L1716-.L1715(%r13)
	l	%r0,.L1716-.L1715(%r13)
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
	l	%r12,.L1716-.L1715(%r13)
	lr	%r0,%r11
	n	%r11,.L1716-.L1715(%r13)
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
.L1715:
.L1716:
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
	je	.L1718
	ahi	%r2,-1
.L1718:
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
	larl	%r13,.L1726
	l	%r0,.L1727-.L1726(%r13)
	l	%r1,.L1727-.L1726(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L1728-.L1726(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L1729-.L1726(%r13)
	l	%r3,.L1729-.L1726(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L1729-.L1726(%r13)
	nr	%r3,%r1
	l	%r1,.L1729-.L1726(%r13)
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
	n	%r2,.L1728-.L1726(%r13)
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
.L1726:
.L1729:
	.long	858993459
.L1728:
	.long	252645135
.L1727:
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
	larl	%r5,.L1732
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1733-.L1732(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L1734-.L1732(%r5)
	srl	%r0,2
	n	%r0,.L1734-.L1732(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L1735-.L1732(%r5)
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
.L1732:
.L1735:
	.long	252645135
.L1734:
	.long	858993459
.L1733:
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
	larl	%r5,.L1746
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L1747-.L1746(%r5)
	j	.L1739
.L1745:
	mdbr	%f2,%f2
.L1739:
	lr	%r3,%r1
	tml	%r1,1
	srl	%r3,31
	je	.L1737
	mdbr	%f0,%f2
.L1737:
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	jne	.L1745
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L1747-.L1746(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1746:
.L1747:
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
	larl	%r5,.L1758
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L1759-.L1758(%r5)
	j	.L1751
.L1757:
	meebr	%f2,%f2
.L1751:
	lr	%r3,%r1
	tml	%r1,1
	srl	%r3,31
	je	.L1749
	meebr	%f0,%f2
.L1749:
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	jne	.L1757
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L1759-.L1758(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1758:
.L1759:
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
	jl	.L1764
	jh	.L1765
	clr	%r3,%r5
	jl	.L1764
	jh	.L1765
	lhi	%r2,1
	br	%r14
.L1764:
	lhi	%r2,0
	br	%r14
.L1765:
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
	jl	.L1771
	jh	.L1772
	clr	%r3,%r5
	jl	.L1771
	jh	.L1772
	lhi	%r2,1
	ahi	%r2,-1
	br	%r14
.L1771:
	lhi	%r2,0
	ahi	%r2,-1
	br	%r14
.L1772:
	lhi	%r2,2
	ahi	%r2,-1
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
