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
	je	.L75
	lr	%r0,%r5
	ahi	%r0,-1
	tml	%r5,1
	je	.L76
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L72
	ahi	%r3,1
	ahi	%r2,1
	ltr	%r0,%r0
	je	.L57
	srl	%r5,1
.L55:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L72
	ahi	%r2,1
	ic	%r12,1(%r3)
	stc	%r12,0(%r2)
	lhi	%r1,255
	nr	%r12,%r1
	cr	%r12,%r4
	je	.L72
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L55
.L57:
	lhi	%r2,0
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L76:
	srl	%r5,1
.L82:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L80
	ahi	%r2,1
	ic	%r1,1(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L80
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L82
.L75:
	lhi	%r2,0
	br	%r14
.L80:
	ahi	%r2,1
	br	%r14
.L72:
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
	je	.L91
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L107
.L94:
	srl	%r4,1
.L88:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L88
.L91:
	lhi	%r2,0
	br	%r14
.L107:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r0,%r0
	jne	.L94
	j	.L91
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
	je	.L114
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L128
.L117:
	srl	%r4,1
.L110:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L126
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L126
	ahi	%r2,2
	ahi	%r3,2
	brct	%r4,.L110
.L114:
	lhi	%r2,0
	br	%r14
.L126:
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L128:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L126
	ahi	%r2,1
	ahi	%r3,1
	ltr	%r0,%r0
	jne	.L117
	j	.L114
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
	je	.L131
	brasl	%r14,memcpy
.L131:
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
	je	.L142
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L142:
	srl	%r4,1
	ahi	%r4,1
.L138:
	lr	%r5,%r1
	ahi	%r5,-1
	brct	%r4,.L140
	lhi	%r2,0
	br	%r14
.L140:
	lhi	%r0,0
	lr	%r2,%r1
	ic	%r0,0(%r1)
	cr	%r0,%r3
	ber	%r14
	ahi	%r1,-2
	lr	%r2,%r5
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	jne	.L138
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
	je	.L153
	ahi	%r4,-2
	lr	%r5,%r4
	srl	%r5,8
	ltr	%r5,%r5
	jne	.L152
.L155:
	stc	%r3,0(%r1)
	larl	%r3,.L163
	ex	%r4,0(%r3)
	br	%r14
.L152:
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brct	%r5,.L152
	j	.L155
.L153:
	stc	%r3,0(%r2)
	br	%r14
.L163:
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
.L167:
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
	jne	.L167
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
.L181:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L181
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
.L185:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L185
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
	je	.L189
	j	.L197
.L191:
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	ic	%r4,0(%r1,%r12)
	nr	%r5,%r3
	lhi	%r0,255
	nr	%r0,%r4
	cr	%r5,%r0
	jne	.L197
.L189:
	tml	%r3,255
	jne	.L191
	lhi	%r2,0
	lhi	%r1,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
	br	%r14
.L197:
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
	je	.L202
.L201:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L201
	sr	%r2,%r3
	br	%r14
.L202:
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
	je	.L213
	icm	%r1,1,0(%r2)
	ic	%r5,0(%r3)
	je	.L225
	lhi	%r0,255
	nr	%r0,%r5
	je	.L224
	brct	%r4,.L222
.L224:
	lhi	%r2,255
	nr	%r1,%r2
.L217:
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L213:
	lhi	%r2,0
	br	%r14
.L222:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L211:
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r0,%r1
	jne	.L208
	lr	%r5,%r3
	ahi	%r5,1
	ahi	%r2,1
	icm	%r1,1,0(%r2)
	je	.L226
	lr	%r3,%r5
	lhi	%r0,255
	ic	%r5,0(%r5)
	nr	%r0,%r5
	je	.L223
	brct	%r4,.L211
.L223:
	lhi	%r4,255
	nr	%r1,%r4
.L208:
	lhi	%r0,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L226:
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
.L225:
	lhi	%r1,0
	j	.L217
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
	je	.L237
	chi	%r5,1
	je	.L241
	chi	%r5,2
	je	.L242
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L242:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L241:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L237:
	srl	%r0,2
.L230:
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
	brct	%r0,.L230
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
	je	.L255
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L255:
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
	jle	.L259
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L259:
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
	je	.L271
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L271:
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
	larl	%r5,.L282
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L279
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L281
.L279:
	lhi	%r2,1
	br	%r14
.L281:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L279
	a	%r2,.L283-.L282(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L282:
.L283:
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
	larl	%r5,.L295
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L294
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L291
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L296-.L295(%r5)
	jle	.L291
	l	%r4,.L297-.L295(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L291
	l	%r0,.L298-.L295(%r5)
	ar	%r0,%r2
	cl	%r0,.L299-.L295(%r5)
	jh	.L292
	n	%r2,.L300-.L295(%r5)
	x	%r2,.L300-.L295(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L291:
	lhi	%r2,1
	br	%r14
.L294:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L292:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L295:
.L300:
	.long	65534
.L299:
	.long	1048579
.L298:
	.long	-65532
.L297:
	.long	-57344
.L296:
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
	jle	.L303
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L303:
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
	larl	%r5,.L316
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L311
	kdbr	%f0,%f2
	jnh	.L314
	sdbr	%f0,%f2
	br	%r14
.L314:
	ld	%f0,.L317-.L316(%r5)
	br	%r14
.L311:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L316:
.L317:
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
	larl	%r5,.L327
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L322
	kebr	%f0,%f2
	jnh	.L325
	sebr	%f0,%f2
	br	%r14
.L325:
	le	%f0,.L328-.L327(%r5)
	br	%r14
.L322:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L327:
.L328:
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
	jo	.L337
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L339
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L334
	lhi	%r0,0
.L334:
	tml	%r0,1
	jne	.L337
	ldr	%f2,%f0
.L337:
	ldr	%f0,%f2
	br	%r14
.L339:
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
	jo	.L349
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L351
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L346
	lhi	%r0,0
.L346:
	tml	%r0,1
	jne	.L349
	ler	%f2,%f0
.L349:
	ler	%f0,%f2
	br	%r14
.L351:
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
	jo	.L360
	cxbr	%f0,%f0
	jo	.L354
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
	jne	.L365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L359
	lhi	%r0,0
.L359:
	tml	%r0,1
	je	.L357
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L358:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L354:
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
	ltr	%r1,%r1
	je	.L354
.L360:
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
.L357:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L358
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
	jo	.L373
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L376
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L372
	lhi	%r0,0
.L372:
	tml	%r0,1
	bner	%r14
.L373:
	ldr	%f0,%f2
	br	%r14
.L376:
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
	jo	.L384
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L387
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L383
	lhi	%r0,0
.L383:
	tml	%r0,1
	bner	%r14
.L384:
	ler	%f0,%f2
	br	%r14
.L387:
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
	jo	.L390
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L396
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L401
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L395
	lhi	%r0,0
.L395:
	tml	%r0,1
	je	.L393
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L394:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L390:
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L401:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L390
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
.L393:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L394
.L396:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L390
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
	je	.L404
	larl	%r4,.LANCHOR1
.L405:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L405
.L404:
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
	je	.L420
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L420:
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
	je	.L423
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L423:
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
	je	.L433
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L457
.L445:
	srl	%r11,1
.L435:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L432
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L432
	ar	%r12,%r10
	brct	%r11,.L435
.L433:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L432
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L432:
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
.L457:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L432
	ar	%r12,%r10
	chi	%r13,1
	jne	.L445
	j	.L433
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
	je	.L460
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L480
.L469:
	srl	%r11,1
.L462:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L459
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L459
	ar	%r12,%r9
	brct	%r11,.L462
.L460:
	lhi	%r8,0
.L459:
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
.L480:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L459
	ar	%r12,%r9
	chi	%r7,1
	jne	.L469
	j	.L460
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
.L491:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L485
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L485
	chi	%r1,43
	je	.L486
	chi	%r1,45
	je	.L487
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L496
	lr	%r3,%r2
	lhi	%r12,0
.L489:
	lhi	%r2,0
.L493:
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
	jle	.L493
	ltr	%r12,%r12
	jne	.L484
	lr	%r2,%r5
	sr	%r2,%r1
.L484:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L485:
	.cfi_restore_state
	ahi	%r2,1
	j	.L491
.L487:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L496
	lhi	%r12,1
	j	.L489
.L486:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L489
.L496:
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
.L515:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L509
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L509
	chi	%r3,43
	je	.L510
	chi	%r3,45
	jne	.L529
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L520
	lhi	%r2,1
.L513:
	lhi	%r10,0
	lhi	%r11,0
.L517:
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
	jle	.L517
	ltr	%r2,%r2
	jne	.L508
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L508:
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
.L509:
	.cfi_restore_state
	ahi	%r2,1
	j	.L515
.L529:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L520
	lr	%r3,%r2
	lhi	%r2,0
	j	.L513
.L510:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L513
.L520:
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
	je	.L532
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	j	.L535
.L542:
	jle	.L531
	ahi	%r12,-1
	ar	%r11,%r9
	sr	%r12,%r10
	lr	%r8,%r11
	ltr	%r12,%r12
	je	.L532
.L535:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	lr	%r2,%r7
	ar	%r11,%r8
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L542
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L535
.L532:
	lhi	%r11,0
.L531:
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
	ltr	%r12,%r4
	je	.L548
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	j	.L545
.L557:
	ahi	%r12,-1
	ar	%r11,%r10
	sra	%r12,1
	lr	%r9,%r11
	ltr	%r12,%r12
	je	.L548
.L545:
	lr	%r7,%r12
	sra	%r7,1
	lr	%r11,%r7
	msr	%r11,%r10
	l	%r4,192(%r15)
	lr	%r2,%r8
	ar	%r11,%r9
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L544
	jh	.L557
	lr	%r12,%r7
	ltr	%r12,%r12
	jne	.L545
.L548:
	lhi	%r11,0
.L544:
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
	jl	.L565
.L562:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L565:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L562
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
	jl	.L578
.L575:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L578:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L575
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
	j	.L591
.L592:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L591:
	icm	%r1,15,0(%r2)
	jne	.L592
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
	je	.L595
	j	.L596
.L606:
	ltr	%r5,%r5
	je	.L596
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L596
.L595:
	ltr	%r4,%r4
	jne	.L606
.L596:
	cr	%r4,%r5
	jl	.L601
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L601:
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
.L609:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L609
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
	je	.L616
.L615:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L615
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L616:
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
	je	.L626
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L641
.L629:
	srl	%r4,1
.L620:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L622
	ltr	%r0,%r0
	je	.L622
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L622
	ltr	%r5,%r5
	je	.L622
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L620
.L626:
	lhi	%r2,0
	br	%r14
.L622:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L642
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L641:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L622
	ltr	%r1,%r1
	je	.L622
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L629
	j	.L626
.L642:
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
	je	.L648
	lr	%r1,%r4
	ahi	%r1,-1
	tml	%r4,1
	jne	.L664
.L651:
	srl	%r4,1
.L645:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	brct	%r4,.L645
.L648:
	lhi	%r2,0
	br	%r14
.L664:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	ltr	%r1,%r1
	jne	.L651
	j	.L648
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
	je	.L673
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L688
.L676:
	srl	%r4,1
.L667:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L685
	l	%r1,4(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L685
	ahi	%r2,8
	ahi	%r3,4
	brct	%r4,.L667
.L673:
	lhi	%r2,0
	br	%r14
.L685:
	c	%r1,0(%r3)
	jl	.L689
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L688:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L685
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L676
	j	.L673
.L689:
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
	je	.L692
	sll	%r4,2
	brasl	%r14,memcpy
.L692:
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
	larl	%r13,.L747
	cr	%r2,%r3
	je	.L706
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L746
	ltr	%r4,%r4
	je	.L706
	l	%r4,.L748-.L747(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L716
	chi	%r5,1
	je	.L732
	chi	%r5,2
	je	.L733
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L733:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L732:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L706
.L716:
	srl	%r4,2
.L703:
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
	brct	%r4,.L703
.L706:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L746:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L706
	lhi	%r0,3
	nr	%r0,%r4
	je	.L725
	chi	%r0,1
	je	.L730
	chi	%r0,2
	je	.L731
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L731:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L730:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L706
.L725:
	srl	%r4,2
.L701:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L701
	j	.L706
	.section	.rodata
	.align	8
.L747:
.L748:
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
	je	.L760
	chi	%r0,1
	je	.L764
	chi	%r0,2
	je	.L765
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L765:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L764:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L760:
	srl	%r4,2
.L751:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L751
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
	jhe	.L774
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L789
	chi	%r5,1
	je	.L802
	chi	%r5,2
	jne	.L819
.L803:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L802:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L789
	br	%r14
.L774:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L798
	chi	%r0,1
	je	.L804
	chi	%r0,2
	je	.L805
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L805:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L804:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L798:
	lr	%r4,%r5
	srl	%r4,2
.L777:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L777
	br	%r14
.L789:
	srl	%r1,2
.L776:
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
	brct	%r1,.L776
	br	%r14
.L819:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
	j	.L803
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
	larl	%r5,.L837
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L838-.L837(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L837:
.L838:
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
	larl	%r5,.L841
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L842-.L841(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L841:
.L842:
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
	larl	%r5,.L849
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L850-.L849(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L849:
.L850:
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
.L858:
	lr	%r3,%r1
	ahi	%r3,1
	lr	%r5,%r2
	lr	%r0,%r2
	srl	%r5,0(%r1)
	srl	%r0,0(%r3)
	lr	%r1,%r3
	tml	%r5,1
	jne	.L866
	ahi	%r1,1
	lr	%r5,%r2
	tml	%r0,1
	srl	%r5,0(%r1)
	jne	.L866
	lr	%r1,%r3
	ahi	%r1,2
	lr	%r3,%r2
	tml	%r5,1
	srl	%r3,0(%r1)
	jne	.L866
	ahi	%r1,1
	tml	%r3,1
	jne	.L866
	brct	%r4,.L858
	lhi	%r2,0
	br	%r14
.L866:
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
	je	.L873
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L872:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L872
	br	%r14
.L873:
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
	larl	%r5,.L883
	lhi	%r2,1
	keb	%f0,.L884-.L883(%r5)
	blr	%r14
	keb	%f0,.L885-.L883(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L883:
.L885:
	.long	2139095039
.L884:
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
	larl	%r5,.L891
	kdb	%f0,.L892-.L891(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L893-.L891(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L891:
.L893:
	.long	2146435071
	.long	-1
.L892:
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
	larl	%r5,.L899
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L900-.L899(%r5)
	ld	%f3,.L900-.L899+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L901-.L899(%r5)
	ld	%f3,.L901-.L899+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L899:
.L901:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L900:
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
	larl	%r5,.L920
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L918
	le	%f1,.L921-.L920(%r5)
.L906:
	tml	%r2,1
	je	.L907
.L908:
	meebr	%f0,%f1
.L907:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L908
.L919:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L908
	j	.L919
.L918:
	le	%f1,.L922-.L920(%r5)
	j	.L906
	.section	.rodata
	.align	8
.L920:
.L922:
	.long	1056964608
.L921:
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
	larl	%r5,.L939
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L937
	ld	%f1,.L940-.L939(%r5)
.L925:
	tml	%r2,1
	je	.L926
.L927:
	mdbr	%f0,%f1
.L926:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L927
.L938:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L927
	j	.L938
.L937:
	ld	%f1,.L941-.L939(%r5)
	j	.L925
	.section	.rodata
	.align	8
.L939:
.L941:
	.long	1071644672
	.long	0
.L940:
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
	larl	%r5,.L958
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L943
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L943
	ltr	%r4,%r4
	jl	.L956
	ld	%f0,.L959-.L958(%r5)
	ld	%f2,.L959-.L958+8(%r5)
.L944:
	tml	%r4,1
	je	.L945
.L946:
	mxbr	%f1,%f0
.L945:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L943
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L946
.L957:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L946
	j	.L957
.L943:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L956:
	ld	%f0,.L960-.L958(%r5)
	ld	%f2,.L960-.L958+8(%r5)
	j	.L944
	.section	.rodata
	.align	8
.L958:
.L960:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L959:
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
	je	.L972
	chi	%r5,1
	je	.L976
	chi	%r5,2
	je	.L977
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L977:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L976:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r4
	ber	%r14
.L972:
	srl	%r4,2
.L963:
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
	brct	%r4,.L963
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
	je	.L986
.L987:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L987
.L986:
	ltr	%r4,%r4
	je	.L989
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1009
.L998:
	srl	%r4,1
.L988:
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
	brct	%r4,.L988
.L989:
	mvi	0(%r1),0
	br	%r14
.L1009:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L998
	j	.L989
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
	jne	.L1027
.L1019:
	srl	%r4,1
.L1012:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1012
	br	%r14
.L1027:
	cli	0(%r1),0
	ber	%r14
	chi	%r3,1
	lhi	%r2,1
	jne	.L1019
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
	je	.L1034
.L1038:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1033
.L1032:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1033:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1032
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1038
.L1034:
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
.L1042:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L1041
	lr	%r2,%r1
.L1041:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1042
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
	je	.L1046
	lr	%r11,%r3
.L1048:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1048
	slr	%r11,%r3
	jhe	.L1046
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1056
.L1068:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1067
.L1056:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1068
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1064
.L1052:
	lhi	%r12,255
	nr	%r4,%r12
	nr	%r1,%r12
	cr	%r4,%r1
	je	.L1046
.L1053:
	ahi	%r2,1
	j	.L1056
.L1064:
	lhi	%r8,255
	nr	%r4,%r8
	nr	%r1,%r8
	cr	%r4,%r1
	jne	.L1053
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1069
	icm	%r4,1,1(%r12)
	je	.L1053
	lr	%r12,%r8
	brct	%r9,.L1064
	j	.L1052
.L1067:
	lhi	%r2,0
.L1046:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1069:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r4,%r12
	nr	%r1,%r12
	cr	%r4,%r1
	jne	.L1053
	j	.L1046
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
	larl	%r5,.L1083
	kdb	%f0,.L1084-.L1083(%r5)
	jl	.L1082
	jnh	.L1075
	kdb	%f2,.L1084-.L1083(%r5)
	jl	.L1074
.L1075:
	br	%r14
.L1082:
	kdb	%f2,.L1084-.L1083(%r5)
	jnh	.L1075
.L1074:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1083:
.L1084:
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
	ltr	%r5,%r5
	lr	%r12,%r2
	je	.L1085
	clr	%r3,%r5
	jl	.L1093
	sr	%r3,%r5
	alr	%r3,%r2
	lr	%r0,%r3
	jnle	.L1093
	lhi	%r11,0
	ic	%r11,0(%r4)
	j	.L1090
.L1087:
	clr	%r0,%r12
	jl	.L1093
.L1090:
	ic	%r1,0(%r12)
	lr	%r2,%r12
	ahi	%r12,1
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r1,%r11
	jne	.L1087
	chi	%r5,1
	je	.L1085
	lhi	%r1,1
	lr	%r3,%r5
	sr	%r3,%r1
	tml	%r3,1
	je	.L1097
	clc	1(1,%r4),1(%r2)
	jne	.L1087
	lhi	%r1,2
	chi	%r5,2
	je	.L1085
.L1097:
	srl	%r3,1
.L1088:
	ic	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1087
	ic	%r9,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r9,1,0(%r10)
	jne	.L1087
	ahi	%r1,2
	brct	%r3,.L1088
.L1085:
	lm	%r9,%r12,36(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
.L1093:
	.cfi_restore_state
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
	je	.L1107
	brasl	%r14,memmove
.L1107:
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
	larl	%r5,.L1140
	kdb	%f0,.L1141-.L1140(%r5)
	jl	.L1136
	kdb	%f0,.L1142-.L1140(%r5)
	jnhe	.L1137
	lhi	%r3,0
.L1116:
	lhi	%r0,0
.L1122:
	ahi	%r0,1
	mdb	%f0,.L1143-.L1140(%r5)
	kdb	%f0,.L1142-.L1140(%r5)
	jhe	.L1122
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1139:
	lcdbr	%f0,%f0
	br	%r14
.L1137:
	kdb	%f0,.L1143-.L1140(%r5)
	jnl	.L1119
	cdb	%f0,.L1141-.L1140(%r5)
	jne	.L1128
.L1119:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1136:
	lcdbr	%f2,%f0
	kdb	%f0,.L1144-.L1140(%r5)
	jnle	.L1138
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1116
.L1138:
	kdb	%f0,.L1145-.L1140(%r5)
	jnh	.L1119
	lhi	%r3,1
.L1117:
	ldr	%f0,%f2
	lhi	%r0,0
.L1124:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1143-.L1140(%r5)
	jl	.L1124
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1139
	br	%r14
.L1128:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1117
	.section	.rodata
	.align	8
.L1140:
.L1145:
	.long	-1075838976
	.long	0
.L1144:
	.long	-1074790400
	.long	0
.L1143:
	.long	1071644672
	.long	0
.L1142:
	.long	1072693248
	.long	0
.L1141:
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
	je	.L1150
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
.L1149:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1152
	ahi	%r2,-1
.L1152:
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
	jne	.L1149
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
.L1150:
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
	jhe	.L1160
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,16
.L1159:
	ltr	%r3,%r3
	jl	.L1160
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1176
	ltr	%r3,%r3
	jl	.L1160
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1176
	ahi	%r2,-2
	brct	%r0,.L1159
.L1162:
	ltr	%r4,%r4
	ber	%r14
.L1178:
	lr	%r2,%r5
	br	%r14
.L1176:
	lhi	%r2,0
	ltr	%r1,%r1
	je	.L1162
.L1160:
	lhi	%r2,0
.L1165:
	clr	%r5,%r3
	jl	.L1164
	sr	%r5,%r3
	or	%r2,%r1
.L1164:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1165
	ltr	%r4,%r4
	ber	%r14
	j	.L1178
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
	je	.L1182
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
.L1182:
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
	je	.L1197
.L1192:
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
.L1197:
	cr	%r5,%r1
	jne	.L1192
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
.L1201:
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
	jne	.L1201
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
	jl	.L1207
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1272
.L1207:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1210
	sll	%r5,3
	lr	%r0,%r5
	ahi	%r0,-8
	lr	%r12,%r5
	srl	%r0,3
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1233
	chi	%r11,1
	je	.L1249
	chi	%r11,2
	je	.L1250
	lm	%r10,%r11,0(%r3)
	lhi	%r5,8
	stm	%r10,%r11,0(%r2)
.L1250:
	l	%r13,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1249:
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1210
.L1233:
	srl	%r0,2
.L1211:
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
	brct	%r0,.L1211
.L1210:
	clr	%r4,%r1
	jle	.L1206
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1224
	chi	%r0,1
	je	.L1251
	chi	%r0,2
	je	.L1252
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1252:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1251:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1206
.L1224:
	lr	%r4,%r5
	srl	%r4,2
.L1212:
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	stc	%r12,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1212
.L1206:
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1272:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1242
	chi	%r5,1
	je	.L1247
	chi	%r5,2
	je	.L1248
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1248:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1247:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1242:
	srl	%r4,2
.L1208:
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
	brct	%r4,.L1208
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
	jl	.L1275
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1329
.L1275:
	ltr	%r1,%r1
	je	.L1325
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
	je	.L1293
	chi	%r12,1
	je	.L1309
	chi	%r12,2
	je	.L1310
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lhi	%r1,2
.L1310:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1309:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r1,%r0
	je	.L1278
.L1293:
	srl	%r5,2
.L1279:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1279
.L1278:
	tml	%r4,1
	je	.L1274
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1274:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1329:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1302
	chi	%r0,1
	je	.L1307
	chi	%r0,2
	je	.L1308
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1308:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1307:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1302:
	srl	%r4,2
.L1276:
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
	brct	%r4,.L1276
	br	%r14
.L1325:
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
	jl	.L1332
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1397
.L1332:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1335
	sll	%r5,2
	lr	%r0,%r5
	ahi	%r0,-4
	lr	%r12,%r5
	srl	%r0,2
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1358
	chi	%r11,1
	je	.L1374
	chi	%r11,2
	je	.L1375
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lhi	%r5,4
.L1375:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1374:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1335
.L1358:
	srl	%r0,2
.L1336:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r11,12(%r5,%r3)
	st	%r11,12(%r5,%r2)
	ahi	%r5,16
	brct	%r0,.L1336
.L1335:
	clr	%r4,%r1
	jle	.L1331
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1349
	chi	%r0,1
	je	.L1376
	chi	%r0,2
	je	.L1377
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1377:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1376:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1331
.L1349:
	lr	%r4,%r5
	srl	%r4,2
.L1337:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r11,2(%r1,%r3)
	stc	%r11,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1337
.L1331:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1397:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1367
	chi	%r5,1
	je	.L1372
	chi	%r5,2
	je	.L1373
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1373:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1372:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1367:
	srl	%r4,2
.L1333:
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
	brct	%r4,.L1333
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
	larl	%r5,.L1404
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1405-.L1404(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1404:
.L1405:
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
	larl	%r5,.L1409
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1407
	adb	%f0,.L1410-.L1409(%r5)
.L1407:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1409:
.L1410:
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
.L1421:
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r4,%r2
	sra	%r4,0(%r12)
	tml	%r4,1
	jne	.L1419
	ahi	%r1,1
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r0,%r2
	lr	%r4,%r1
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1419
	ahi	%r1,1
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r0,%r2
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1419
	lr	%r1,%r4
	lr	%r4,%r3
	ahi	%r1,2
	sr	%r4,%r1
	lr	%r12,%r2
	sra	%r12,0(%r4)
	tml	%r12,1
	jne	.L1419
	ahi	%r1,1
	brct	%r5,.L1421
.L1419:
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
.L1432:
	lr	%r3,%r2
	sra	%r3,0(%r1)
	tml	%r3,1
	jne	.L1430
	ahi	%r1,1
	lr	%r5,%r2
	lr	%r0,%r1
	sra	%r5,0(%r1)
	tml	%r5,1
	jne	.L1430
	ahi	%r1,1
	lr	%r3,%r2
	sra	%r3,0(%r1)
	tml	%r3,1
	jne	.L1430
	lr	%r1,%r0
	ahi	%r1,2
	lr	%r0,%r2
	sra	%r0,0(%r1)
	tml	%r0,1
	jne	.L1430
	ahi	%r1,1
	brct	%r4,.L1432
.L1430:
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
	larl	%r5,.L1448
	keb	%f0,.L1449-.L1448(%r5)
	jhe	.L1447
	cfebr	%r2,5,%f0
	br	%r14
.L1447:
	seb	%f0,.L1449-.L1448(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1450-.L1448(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1448:
.L1449:
	.long	1191182336
.L1450:
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
.L1452:
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
	brct	%r0,.L1452
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
.L1461:
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
	brct	%r0,.L1461
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
.L1471:
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
	jne	.L1471
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
.L1478:
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
	jne	.L1478
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
	jle	.L1486
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,16
.L1485:
	ltr	%r3,%r3
	jl	.L1486
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1487
	ltr	%r3,%r3
	jl	.L1486
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1487
	ahi	%r2,-2
	brct	%r0,.L1485
	ltr	%r4,%r4
	ber	%r14
.L1503:
	lr	%r2,%r5
	br	%r14
.L1487:
	ltr	%r1,%r1
	je	.L1494
.L1486:
	lhi	%r2,0
.L1491:
	clr	%r5,%r3
	jl	.L1490
	sr	%r5,%r3
	or	%r2,%r1
.L1490:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1491
	ltr	%r4,%r4
	ber	%r14
	j	.L1503
.L1494:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1503
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
	jl	.L1508
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1508:
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
	jl	.L1513
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1513:
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
	jl	.L1533
	je	.L1525
	lhi	%r0,0
.L1521:
	lhi	%r5,32
	lhi	%r2,0
	j	.L1524
.L1534:
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1523
.L1524:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	jne	.L1534
.L1523:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L1533:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L1521
.L1525:
	lhi	%r2,0
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
	ltr	%r2,%r2
	jl	.L1563
	lhi	%r0,0
.L1537:
	ltr	%r3,%r3
	jhe	.L1538
	lhi	%r1,1
	lcr	%r3,%r3
	xr	%r0,%r1
.L1538:
	lr	%r5,%r2
	lhi	%r1,1
	lhi	%r4,8
	clr	%r2,%r3
	jle	.L1540
.L1539:
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1542
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1542
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1542
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1542
	brct	%r4,.L1539
.L1542:
	lhi	%r2,0
	ltr	%r1,%r1
	je	.L1541
.L1540:
	lhi	%r2,0
.L1545:
	clr	%r3,%r5
	jh	.L1544
	sr	%r5,%r3
	or	%r2,%r1
.L1544:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1545
.L1541:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L1563:
	lcr	%r2,%r2
	lhi	%r0,1
	j	.L1537
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
	jl	.L1591
	lhi	%r0,0
.L1566:
	lpr	%r1,%r3
	lr	%r2,%r4
	lhi	%r3,1
	lhi	%r5,8
	clr	%r4,%r1
	jle	.L1573
.L1567:
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1570
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1570
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1570
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1570
	brct	%r5,.L1567
.L1570:
	ltr	%r3,%r3
	je	.L1592
.L1573:
	clr	%r2,%r1
	jl	.L1572
	sr	%r2,%r1
.L1572:
	srl	%r3,1
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L1573
	ltr	%r0,%r0
	ber	%r14
.L1593:
	lcr	%r2,%r2
	br	%r14
.L1591:
	lcr	%r4,%r4
	lhi	%r0,1
	j	.L1566
.L1592:
	ltr	%r0,%r0
	lr	%r2,%r4
	ber	%r14
	j	.L1593
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
	larl	%r13,.L1613
	lhi	%r1,1
	lr	%r5,%r2
	lhi	%r0,16
	clr	%r3,%r2
	jhe	.L1597
.L1596:
	tml	%r3,32768
	jne	.L1597
	lr	%r2,%r1
	sll	%r3,1
	sll	%r2,1
	n	%r3,.L1614-.L1613(%r13)
	lr	%r1,%r2
	clr	%r5,%r3
	jle	.L1612
	brct	%r0,.L1596
	lhi	%r2,0
.L1599:
	ltr	%r4,%r4
	je	.L1603
	lr	%r2,%r5
.L1603:
	n	%r2,.L1614-.L1613(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1612:
	.cfi_restore_state
	tml	%r2,65534
	je	.L1599
.L1597:
	lhi	%r2,0
.L1602:
	clr	%r5,%r3
	jl	.L1601
	sr	%r5,%r3
	or	%r2,%r1
	n	%r5,.L1614-.L1613(%r13)
.L1601:
	n	%r1,.L1614-.L1613(%r13)
	srl	%r3,1
	srl	%r1,1
	ltr	%r1,%r1
	jne	.L1602
	j	.L1599
	.section	.rodata
	.align	8
.L1613:
.L1614:
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
	jle	.L1617
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,16
.L1616:
	ltr	%r3,%r3
	jl	.L1617
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1618
	ltr	%r3,%r3
	jl	.L1617
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1618
	ahi	%r2,-2
	brct	%r0,.L1616
	ltr	%r4,%r4
	ber	%r14
.L1634:
	lr	%r2,%r5
	br	%r14
.L1618:
	ltr	%r1,%r1
	je	.L1625
.L1617:
	lhi	%r2,0
.L1622:
	clr	%r5,%r3
	jl	.L1621
	sr	%r5,%r3
	or	%r2,%r1
.L1621:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1622
	ltr	%r4,%r4
	ber	%r14
	j	.L1634
.L1625:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1634
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
	je	.L1637
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L1637:
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
	je	.L1643
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L1643:
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
	larl	%r13,.L1656
	cl	%r2,.L1657-.L1656(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L1658-.L1656(%r13)
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
	jne	.L1653
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L1653:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L1656:
.L1658:
	.long	65280
.L1657:
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
	jl	.L1663
	jh	.L1664
	clr	%r3,%r5
	jl	.L1663
	jh	.L1664
	lhi	%r2,1
	br	%r14
.L1663:
	lhi	%r2,0
	br	%r14
.L1664:
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
	jl	.L1670
	jh	.L1669
	clr	%r3,%r5
	jl	.L1670
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L1670:
	lhi	%r2,-1
	br	%r14
.L1669:
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
	larl	%r13,.L1674
	l	%r4,.L1675-.L1674(%r13)
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
.L1674:
.L1675:
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
	je	.L1677
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L1677:
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
	larl	%r13,.L1689
	l	%r4,.L1690-.L1689(%r13)
	l	%r1,.L1690-.L1689(%r13)
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
	l	%r5,.L1690-.L1689(%r13)
	lr	%r0,%r3
	n	%r3,.L1690-.L1689(%r13)
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
.L1689:
.L1690:
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
	larl	%r13,.L1693
	l	%r1,.L1694-.L1693(%r13)
	l	%r0,.L1694-.L1693(%r13)
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
	l	%r12,.L1694-.L1693(%r13)
	lr	%r0,%r11
	n	%r11,.L1694-.L1693(%r13)
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
.L1693:
.L1694:
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
	je	.L1696
	ahi	%r2,-1
.L1696:
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
	larl	%r13,.L1704
	l	%r0,.L1705-.L1704(%r13)
	l	%r1,.L1705-.L1704(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L1706-.L1704(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L1707-.L1704(%r13)
	l	%r3,.L1707-.L1704(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L1707-.L1704(%r13)
	nr	%r3,%r1
	l	%r1,.L1707-.L1704(%r13)
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
	n	%r2,.L1706-.L1704(%r13)
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
.L1704:
.L1707:
	.long	858993459
.L1706:
	.long	252645135
.L1705:
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
	larl	%r5,.L1710
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1711-.L1710(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L1712-.L1710(%r5)
	srl	%r0,2
	n	%r0,.L1712-.L1710(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L1713-.L1710(%r5)
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
.L1710:
.L1713:
	.long	252645135
.L1712:
	.long	858993459
.L1711:
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
	larl	%r5,.L1723
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L1724-.L1723(%r5)
	tml	%r2,1
	je	.L1715
.L1717:
	mdbr	%f0,%f2
.L1715:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L1716
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L1717
.L1722:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L1717
	j	.L1722
.L1716:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L1724-.L1723(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1723:
.L1724:
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
	larl	%r5,.L1734
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L1735-.L1734(%r5)
	tml	%r2,1
	je	.L1726
.L1728:
	meebr	%f0,%f2
.L1726:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L1727
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L1728
.L1733:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L1728
	j	.L1733
.L1727:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L1735-.L1734(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1734:
.L1735:
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
	jl	.L1740
	jh	.L1741
	clr	%r3,%r5
	jl	.L1740
	jh	.L1741
	lhi	%r2,1
	br	%r14
.L1740:
	lhi	%r2,0
	br	%r14
.L1741:
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
	jl	.L1747
	jh	.L1746
	clr	%r3,%r5
	jl	.L1747
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L1747:
	lhi	%r2,-1
	br	%r14
.L1746:
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
