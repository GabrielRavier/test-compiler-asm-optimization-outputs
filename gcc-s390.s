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
	je	.L13
	chi	%r0,1
	je	.L26
	chi	%r0,2
	je	.L27
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
.L27:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
.L26:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	brct	%r4,.L13
	br	%r14
.L13:
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
	je	.L22
	chi	%r0,1
	je	.L28
	chi	%r0,2
	je	.L29
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L29:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L28:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L22:
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
	je	.L56
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r5
	tml	%r5,1
	je	.L48
	ic	%r10,0(%r3)
	stc	%r10,0(%r2)
	lhi	%r12,255
	nr	%r10,%r12
	cr	%r10,%r4
	je	.L42
	ahi	%r3,1
	ahi	%r2,1
	ahi	%r5,-1
	je	.L42
.L48:
	srl	%r0,1
.L41:
	ic	%r11,0(%r3)
	stc	%r11,0(%r2)
	lhi	%r1,255
	nr	%r11,%r1
	cr	%r11,%r4
	je	.L42
	ahi	%r5,-1
	lr	%r10,%r3
	ahi	%r10,1
	ahi	%r2,1
	ic	%r1,1(%r3)
	stc	%r1,0(%r2)
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r1,%r4
	je	.L42
	ahi	%r5,-1
	lr	%r3,%r10
	ahi	%r3,1
	ahi	%r2,1
	brct	%r0,.L41
.L42:
	ltr	%r5,%r5
	je	.L45
	ahi	%r2,1
.L40:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L45:
	.cfi_restore_state
	lhi	%r2,0
	j	.L40
.L56:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	ltr	%r5,%r5
	je	.L58
	ahi	%r2,1
	br	%r14
.L58:
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
	je	.L81
	lr	%r5,%r4
	tml	%r4,1
	je	.L71
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L81
	ahi	%r2,1
	ahi	%r4,-1
	je	.L81
.L71:
	srl	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	je	.L81
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	j	.L66
.L64:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	je	.L65
.L66:
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	ahi	%r4,-1
	lhi	%r12,0
	ic	%r12,0(%r1)
	cr	%r12,%r3
	je	.L65
	ahi	%r1,1
	lr	%r2,%r1
	ahi	%r4,-1
	brct	%r5,.L64
.L65:
	ltr	%r4,%r4
	je	.L86
.L63:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L86:
	.cfi_restore_state
	lhi	%r2,0
	j	.L63
.L81:
	.cfi_restore 12
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
	je	.L104
	lr	%r0,%r4
	tml	%r4,1
	je	.L96
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	jne	.L104
	ahi	%r2,1
	ahi	%r3,1
	ahi	%r4,-1
	je	.L104
.L96:
	srl	%r0,1
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	jne	.L104
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	j	.L91
.L89:
	lhi	%r12,0
	ic	%r12,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r12,%r5
	jne	.L90
.L91:
	ahi	%r4,-1
	ahi	%r2,1
	lr	%r1,%r3
	ahi	%r1,1
	lr	%r3,%r1
	lhi	%r10,0
	ic	%r10,0(%r2)
	lhi	%r11,0
	ic	%r11,0(%r1)
	cr	%r10,%r11
	jne	.L90
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r1,1
	lr	%r3,%r1
	brct	%r0,.L89
.L90:
	ltr	%r4,%r4
	je	.L93
	lhi	%r4,0
	ic	%r4,0(%r2)
	lr	%r2,%r4
	lhi	%r0,0
	ic	%r0,0(%r3)
	sr	%r2,%r0
.L88:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L93:
	.cfi_restore_state
	lhi	%r2,0
	j	.L88
.L104:
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	ltr	%r4,%r4
	je	.L106
	lhi	%r4,0
	ic	%r4,0(%r2)
	lr	%r2,%r4
	lhi	%r0,0
	ic	%r0,0(%r3)
	sr	%r2,%r0
	br	%r14
.L106:
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
	je	.L112
	brasl	%r14,memcpy
.L112:
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
	je	.L120
	ahi	%r5,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L120:
	srl	%r4,1
	lr	%r1,%r4
	ahi	%r1,1
.L116:
	brct	%r1,.L118
	j	.L126
.L118:
	lr	%r2,%r5
	lr	%r4,%r5
	ahi	%r4,-1
	lhi	%r0,0
	ic	%r0,0(%r5)
	cr	%r0,%r3
	ber	%r14
	lr	%r2,%r4
	lr	%r5,%r4
	ahi	%r5,-1
	lhi	%r0,0
	ic	%r0,0(%r4)
	cr	%r0,%r3
	jne	.L116
	br	%r14
.L126:
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
	ltr	%r5,%r4
	ber	%r14
	ar	%r5,%r2
	lr	%r1,%r2
	lr	%r4,%r5
	sr	%r4,%r2
	lhi	%r0,3
	nr	%r0,%r4
	je	.L137
	chi	%r0,1
	je	.L141
	chi	%r0,2
	je	.L142
	stc	%r3,0(%r2)
	ahi	%r1,1
.L142:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L141:
	stc	%r3,0(%r1)
	ahi	%r1,1
	cr	%r5,%r1
	ber	%r14
.L137:
	srl	%r4,2
.L130:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	ahi	%r1,4
	brct	%r4,.L130
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
.L148:
	ahi	%r3,1
	ahi	%r2,1
	ic	%r0,0(%r3)
	stc	%r0,0(%r2)
	tml	%r0,255
	jne	.L148
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
.L152:
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	ber	%r14
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	jne	.L152
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
.L161:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L161
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
	ic	%r4,0(%r2)
	ic	%r5,0(%r3)
	lhi	%r12,255
	nr	%r12,%r4
	lhi	%r0,255
	nr	%r0,%r5
	ahi	%r3,-1
	lhi	%r1,1
	cr	%r0,%r12
	jne	.L166
.L165:
	tml	%r4,255
	je	.L166
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	ic	%r5,0(%r1,%r3)
	lhi	%r0,255
	nr	%r0,%r4
	lhi	%r12,255
	nr	%r12,%r5
	cr	%r0,%r12
	je	.L165
.L166:
	lhi	%r2,255
	nr	%r2,%r4
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r2,%r5
	l	%r12,48(%r15)
	.cfi_restore 12
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
	lr	%r4,%r2
	cli	0(%r2),0
	je	.L174
.L175:
	ahi	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r2)
	ltr	%r3,%r3
	jne	.L175
.L174:
	sr	%r2,%r4
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
	je	.L184
.L187:
	icm	%r5,1,0(%r2)
	je	.L181
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L181
	brct	%r4,.L185
	j	.L181
.L185:
	lhi	%r0,255
	nr	%r0,%r5
	cr	%r1,%r0
	jne	.L181
	ahi	%r2,1
	ahi	%r3,1
	j	.L187
.L181:
	lhi	%r2,255
	nr	%r2,%r5
	lhi	%r4,0
	ic	%r4,0(%r3)
	sr	%r2,%r4
	br	%r14
.L184:
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
	je	.L198
	chi	%r4,1
	je	.L202
	chi	%r4,2
	je	.L203
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L203:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L202:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r5
	ber	%r14
.L198:
	srl	%r0,2
.L191:
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
	brct	%r0,.L191
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
	je	.L213
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L213:
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
	jle	.L217
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L217:
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
	je	.L229
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L229:
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
	larl	%r5,.L239
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L237
	lr	%r0,%r2
	ahi	%r0,-127
	lhi	%r3,32
	clr	%r0,%r3
	jle	.L237
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L237
	a	%r2,.L240-.L239(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L237:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L239:
.L240:
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
	larl	%r5,.L252
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L251
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L248
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L253-.L252(%r5)
	jle	.L248
	l	%r4,.L254-.L252(%r5)
	ar	%r4,%r2
	lhi	%r1,8184
	clr	%r4,%r1
	jle	.L248
	l	%r0,.L255-.L252(%r5)
	ar	%r0,%r2
	cl	%r0,.L256-.L252(%r5)
	jh	.L249
	n	%r2,.L257-.L252(%r5)
	x	%r2,.L257-.L252(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L251:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L248:
	lhi	%r2,1
	br	%r14
.L249:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L252:
.L257:
	.long	65534
.L256:
	.long	1048579
.L255:
	.long	-65532
.L254:
	.long	-57344
.L253:
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
	jle	.L260
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L260:
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
	larl	%r5,.L273
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L268
	kdbr	%f0,%f2
	jnh	.L271
	sdbr	%f0,%f2
	br	%r14
.L268:
	ldr	%f0,%f2
	br	%r14
.L271:
	ld	%f0,.L274-.L273(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L273:
.L274:
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
	larl	%r5,.L284
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L279
	kebr	%f0,%f2
	jnh	.L282
	sebr	%f0,%f2
	br	%r14
.L279:
	ler	%f0,%f2
	br	%r14
.L282:
	le	%f0,.L285-.L284(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L284:
.L285:
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
	jo	.L294
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L288
	ltr	%r1,%r1
	ber	%r14
.L294:
	ldr	%f0,%f2
	br	%r14
.L288:
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L291
	lhi	%r0,0
.L291:
	tml	%r0,255
	ber	%r14
	j	.L294
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
	jo	.L305
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L299
	ltr	%r1,%r1
	ber	%r14
.L305:
	ler	%f0,%f2
	br	%r14
.L299:
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L302
	lhi	%r0,0
.L302:
	tml	%r0,255
	jne	.L305
	ler	%f2,%f0
	j	.L305
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
	jo	.L315
	cxbr	%f0,%f0
	jo	.L309
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
	je	.L310
	ltr	%r1,%r1
	je	.L309
.L315:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L309
.L310:
	lhi	%r0,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L314
	lhi	%r0,0
.L314:
	tml	%r0,255
	je	.L312
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L313:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L309:
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L312:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L313
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
	jo	.L324
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L320
	ltr	%r1,%r1
	bner	%r14
.L324:
	ldr	%f0,%f2
	br	%r14
.L320:
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L323
	lhi	%r0,0
.L323:
	tml	%r0,255
	bner	%r14
	j	.L324
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
	jo	.L334
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L330
	ltr	%r1,%r1
	bner	%r14
.L334:
	ler	%f0,%f2
	br	%r14
.L330:
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L333
	lhi	%r0,0
.L333:
	tml	%r0,255
	bner	%r14
	j	.L334
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
	jo	.L339
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L345
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	je	.L340
	ltr	%r1,%r1
	je	.L339
	ld	%f8,112(%r15)
	ld	%f10,120(%r15)
	std	%f8,96(%r15)
	std	%f10,104(%r15)
	j	.L339
.L340:
	lhi	%r0,1
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jl	.L344
	lhi	%r0,0
.L344:
	tml	%r0,255
	je	.L342
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L343:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L339:
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L342:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L343
.L345:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L339
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
	je	.L349
	larl	%r4,.LANCHOR1
.L350:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L350
.L349:
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
	je	.L362
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L362:
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
	je	.L365
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L365:
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
	st	%r3,96(%r15)
	st	%r4,100(%r15)
	lr	%r10,%r5
	icm	%r7,15,0(%r4)
	je	.L369
	lr	%r12,%r3
	lhi	%r13,0
	lr	%r11,%r7
	tml	%r7,1
	je	.L374
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L368
	ahi	%r13,1
	ar	%r12,%r10
	cr	%r7,%r13
	je	.L369
.L374:
	srl	%r11,1
.L371:
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L368
	ar	%r12,%r10
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L368
	ar	%r12,%r10
	brct	%r11,.L371
.L369:
	l	%r1,100(%r15)
	lr	%r2,%r7
	ahi	%r2,1
	st	%r2,0(%r1)
	lr	%r2,%r7
	msr	%r2,%r10
	lr	%r4,%r10
	lr	%r3,%r9
	a	%r2,96(%r15)
	brasl	%r14,memcpy
	lr	%r8,%r2
.L368:
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
	icm	%r7,15,0(%r4)
	je	.L382
	lr	%r10,%r2
	lr	%r9,%r5
	lr	%r12,%r3
	lhi	%r13,0
	lr	%r11,%r7
	tml	%r7,1
	je	.L387
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L381
	ahi	%r13,1
	ar	%r12,%r9
	cr	%r7,%r13
	je	.L382
.L387:
	srl	%r11,1
.L384:
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L381
	ar	%r12,%r9
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L381
	ar	%r12,%r9
	brct	%r11,.L384
.L382:
	lhi	%r8,0
.L381:
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
	j	.L397
.L398:
	ahi	%r12,1
.L397:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L398
	chi	%r11,43
	je	.L404
	chi	%r11,45
	jne	.L405
	lhi	%r4,1
.L399:
	ahi	%r12,1
	j	.L400
.L404:
	lhi	%r4,0
	j	.L399
.L401:
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
.L400:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jle	.L401
	ltr	%r4,%r4
	jne	.L396
	lcr	%r2,%r2
.L396:
	lm	%r11,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L405:
	.cfi_restore_state
	lhi	%r4,0
	j	.L400
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
	j	.L411
.L412:
	ahi	%r12,1
.L411:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L412
	chi	%r11,43
	je	.L418
	chi	%r11,45
	jne	.L419
	lhi	%r4,1
.L413:
	ahi	%r12,1
	j	.L414
.L418:
	lhi	%r4,0
	j	.L413
.L415:
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
.L414:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jle	.L415
	ltr	%r4,%r4
	jne	.L410
	lcr	%r2,%r2
.L410:
	lm	%r11,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L419:
	.cfi_restore_state
	lhi	%r4,0
	j	.L414
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
	j	.L425
.L426:
	ahi	%r12,1
.L425:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L426
	chi	%r11,43
	je	.L427
	chi	%r11,45
	jne	.L428
	lhi	%r2,1
.L427:
	ahi	%r12,1
.L428:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r10,0
	lhi	%r11,0
	lhi	%r4,9
	clr	%r3,%r4
	jh	.L430
.L429:
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
	jle	.L429
.L430:
	ltr	%r2,%r2
	jne	.L424
	lcr	%r10,%r10
	lcr	%r11,%r11
	je	.L424
	ahi	%r10,-1
.L424:
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
	je	.L439
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	j	.L442
.L443:
	lr	%r12,%r7
.L440:
	ltr	%r12,%r12
	je	.L439
.L442:
	lr	%r7,%r12
	srl	%r7,1
	lr	%r11,%r7
	msr	%r11,%r10
	ar	%r11,%r9
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L443
	jle	.L438
	ar	%r11,%r10
	lr	%r9,%r11
	ahi	%r12,-1
	sr	%r12,%r7
	j	.L440
.L439:
	lhi	%r11,0
.L438:
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
	je	.L448
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	lr	%r11,%r4
	j	.L451
.L450:
	sra	%r11,1
	je	.L448
.L451:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L447
	ltr	%r2,%r2
	jle	.L450
	ar	%r12,%r10
	lr	%r9,%r12
	ahi	%r11,-1
	j	.L450
.L448:
	lhi	%r12,0
.L447:
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
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
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
	jl	.L461
.L458:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L461:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L458
	ahi	%r4,-1
	j	.L458
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
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
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
	jl	.L474
.L471:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L474:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L471
	ahi	%r4,-1
	j	.L471
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
	j	.L486
.L482:
	ahi	%r2,4
.L486:
	icm	%r1,15,0(%r2)
	je	.L481
	cr	%r3,%r1
	jne	.L482
.L481:
	ltr	%r1,%r1
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
	l	%r4,0(%r2)
	l	%r5,0(%r3)
	lhi	%r1,4
	ahi	%r3,-4
	cr	%r4,%r5
	jne	.L490
.L489:
	ltr	%r4,%r4
	je	.L490
	ltr	%r5,%r5
	je	.L490
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	je	.L489
.L490:
	cr	%r4,%r5
	jl	.L495
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L495:
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
.L499:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L499
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
	je	.L504
.L505:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L505
.L504:
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
	je	.L528
	lr	%r0,%r4
	tml	%r4,1
	je	.L519
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L528
	ltr	%r1,%r1
	je	.L528
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L528
.L519:
	srl	%r0,1
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L528
	ltr	%r5,%r5
	je	.L528
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	j	.L512
.L510:
	l	%r11,0(%r2)
	c	%r11,0(%r3)
	jne	.L511
	ltr	%r11,%r11
	je	.L511
.L512:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	l	%r12,0(%r2)
	c	%r12,0(%r1)
	jne	.L511
	ltr	%r12,%r12
	je	.L511
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L510
.L511:
	ltr	%r4,%r4
	je	.L515
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jl	.L516
	lhi	%r2,1
	jh	.L509
.L515:
	lhi	%r2,0
.L509:
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L516:
	.cfi_restore_state
	lhi	%r2,-1
	j	.L509
.L528:
	.cfi_restore 11
	.cfi_restore 12
	ltr	%r4,%r4
	je	.L531
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L533
	lhi	%r2,1
	bhr	%r14
.L531:
	lhi	%r2,0
	br	%r14
.L533:
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
	je	.L541
	lr	%r5,%r4
	tml	%r4,1
	je	.L547
	c	%r3,0(%r2)
	je	.L541
	ahi	%r2,4
	ahi	%r4,-1
	je	.L541
.L547:
	srl	%r5,1
.L540:
	c	%r3,0(%r2)
	je	.L541
	ahi	%r4,-1
	lr	%r1,%r2
	ahi	%r1,4
	lr	%r2,%r1
	c	%r3,0(%r1)
	je	.L541
	ahi	%r4,-1
	ahi	%r1,4
	lr	%r2,%r1
	brct	%r5,.L540
.L541:
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
	je	.L575
	lr	%r0,%r4
	tml	%r4,1
	je	.L567
	clc	0(4,%r2),0(%r3)
	jne	.L575
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L575
.L567:
	srl	%r0,1
	clc	0(4,%r2),0(%r3)
	jne	.L575
	j	.L560
.L558:
	clc	0(4,%r2),0(%r3)
	jne	.L559
.L560:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	clc	0(4,%r2),0(%r1)
	jne	.L559
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L558
.L559:
	ltr	%r4,%r4
	je	.L563
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L564
	lhi	%r2,1
	jh	.L557
.L563:
	lhi	%r2,0
.L557:
	br	%r14
.L564:
	lhi	%r2,-1
	j	.L557
.L575:
	ltr	%r4,%r4
	je	.L577
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jl	.L579
	lhi	%r2,1
	bhr	%r14
.L577:
	lhi	%r2,0
	br	%r14
.L579:
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
	je	.L586
	sll	%r4,2
	brasl	%r14,memcpy
.L586:
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
	larl	%r13,.L626
	cr	%r2,%r3
	je	.L590
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r0,%r2
	sr	%r0,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r0,%r1
	jl	.L591
	lhi	%r1,0
	ltr	%r4,%r4
	je	.L590
	lhi	%r0,3
	nr	%r0,%r4
	je	.L612
	chi	%r0,1
	je	.L617
	chi	%r0,2
	je	.L618
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L618:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L617:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r5,%r5
	je	.L590
.L612:
	srl	%r4,2
	lr	%r5,%r4
.L592:
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
	brct	%r5,.L592
	j	.L590
.L591:
	ltr	%r4,%r4
	je	.L590
	lr	%r1,%r5
	sll	%r1,2
	n	%r5,.L627-.L626(%r13)
	ahi	%r5,1
	lhi	%r4,3
	nr	%r4,%r5
	je	.L603
	chi	%r4,1
	je	.L619
	chi	%r4,2
	je	.L620
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L620:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,-4
.L619:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L590
.L603:
	srl	%r5,2
.L593:
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
	brct	%r5,.L593
.L590:
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L626:
.L627:
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
	je	.L637
	chi	%r0,1
	je	.L641
	chi	%r0,2
	je	.L642
	st	%r3,0(%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L642:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L641:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L637:
	srl	%r4,2
.L630:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L630
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
	jhe	.L647
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	lhi	%r5,3
	nr	%r5,%r4
	je	.L658
	chi	%r5,1
	je	.L671
	chi	%r5,2
	je	.L672
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L672:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L671:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	brct	%r4,.L658
	br	%r14
.L658:
	srl	%r1,2
.L649:
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
	brct	%r1,.L649
	br	%r14
.L647:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	lr	%r5,%r4
	lhi	%r0,3
	nr	%r0,%r4
	je	.L667
	chi	%r0,1
	je	.L673
	chi	%r0,2
	je	.L674
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L674:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L673:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L667:
	srl	%r5,2
.L650:
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
	brct	%r5,.L650
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
	larl	%r5,.L698
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	sll	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L699-.L698(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L698:
.L699:
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
	larl	%r5,.L702
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L703-.L702(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L702:
.L703:
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
	larl	%r5,.L710
	lr	%r1,%r2
	srl	%r1,8
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L711-.L710(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L710:
.L711:
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
	larl	%r5,.L714
	lr	%r1,%r2
	sll	%r2,24
	lr	%r3,%r1
	srl	%r3,24
	or	%r2,%r3
	lr	%r0,%r1
	srl	%r0,8
	n	%r0,.L715-.L714(%r5)
	or	%r2,%r0
	sll	%r1,8
	n	%r1,.L716-.L714(%r5)
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L714:
.L716:
	.long	16711680
.L715:
	.long	65280
	.align	2
.text
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
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L719
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r2,56
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,56
	or	%r2,%r0
	lr	%r10,%r4
	lr	%r11,%r5
	srdl	%r10,40
	l	%r3,.L720-.L719(%r13)
	nr	%r3,%r11
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,24
	n	%r1,.L721-.L719(%r13)
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,8
	l	%r12,.L722-.L719(%r13)
	nr	%r12,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	sldl	%r0,8
	lhi	%r11,255
	nr	%r0,%r11
	or	%r2,%r0
	lr	%r0,%r4
	lr	%r1,%r5
	sldl	%r0,24
	n	%r0,.L720-.L719(%r13)
	or	%r2,%r0
	sldl	%r4,40
	n	%r4,.L721-.L719(%r13)
	or	%r2,%r4
	or	%r3,%r12
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
	.section	.rodata
	.align	8
.L719:
.L722:
	.long	-16777216
.L721:
	.long	16711680
.L720:
	.long	65280
	.align	2
.text
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
.L726:
	lr	%r5,%r2
	srl	%r5,0(%r1)
	ahi	%r1,1
	lr	%r3,%r1
	tml	%r5,1
	jne	.L734
	lr	%r0,%r2
	srl	%r0,0(%r1)
	ahi	%r1,1
	tml	%r0,1
	jne	.L734
	lr	%r5,%r2
	srl	%r5,0(%r1)
	lr	%r1,%r3
	ahi	%r1,2
	tml	%r5,1
	jne	.L734
	lr	%r3,%r2
	srl	%r3,0(%r1)
	ahi	%r1,1
	tml	%r3,1
	jne	.L734
	brct	%r4,.L726
	lhi	%r2,0
	br	%r14
.L734:
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
	je	.L741
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L740:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L740
	br	%r14
.L741:
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
	larl	%r5,.L750
	lhi	%r2,1
	keb	%f0,.L751-.L750(%r5)
	blr	%r14
	keb	%f0,.L752-.L750(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L750:
.L752:
	.long	2139095039
.L751:
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
	larl	%r5,.L758
	lhi	%r2,1
	kdb	%f0,.L759-.L758(%r5)
	blr	%r14
	kdb	%f0,.L760-.L758(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L758:
.L760:
	.long	2146435071
	.long	-1
.L759:
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
	larl	%r5,.L766
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L767-.L766(%r5)
	ld	%f3,.L767-.L766+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L768-.L766(%r5)
	ld	%f3,.L768-.L766+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L766:
.L768:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L767:
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
	larl	%r5,.L779
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L778
	le	%f1,.L780-.L779(%r5)
	j	.L775
.L778:
	le	%f1,.L781-.L779(%r5)
	j	.L775
.L774:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f1,%f1
.L775:
	tml	%r2,1
	je	.L774
	meebr	%f0,%f1
	j	.L774
	.section	.rodata
	.align	8
.L779:
.L781:
	.long	1056964608
.L780:
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
	larl	%r5,.L790
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L789
	ld	%f1,.L791-.L790(%r5)
	j	.L786
.L789:
	ld	%f1,.L792-.L790(%r5)
	j	.L786
.L785:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f1,%f1
.L786:
	tml	%r2,1
	je	.L785
	mdbr	%f0,%f1
	j	.L785
	.section	.rodata
	.align	8
.L790:
.L792:
	.long	1071644672
	.long	0
.L791:
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
	larl	%r5,.L801
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L794
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L794
	ltr	%r4,%r4
	jl	.L800
	ld	%f0,.L802-.L801(%r5)
	ld	%f2,.L802-.L801+8(%r5)
	j	.L797
.L800:
	ld	%f0,.L803-.L801(%r5)
	ld	%f2,.L803-.L801+8(%r5)
	j	.L797
.L796:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L794
	mxbr	%f0,%f0
.L797:
	tml	%r4,1
	je	.L796
	mxbr	%f1,%f0
	j	.L796
.L794:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L801:
.L803:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L802:
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
	je	.L813
	chi	%r0,1
	je	.L817
	chi	%r0,2
	je	.L818
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L818:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L817:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r5
	je	.L805
.L813:
	srl	%r4,2
.L806:
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
	brct	%r4,.L806
.L805:
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
	lhi	%r1,0
	lr	%r5,%r2
	srst	%r1,%r5
	jo	.-4
	ltr	%r4,%r4
	je	.L841
	lr	%r0,%r4
	tml	%r4,1
	je	.L833
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L841
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	je	.L841
.L833:
	srl	%r0,1
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L841
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	j	.L829
.L827:
	ic	%r11,0(%r3)
	stc	%r11,0(%r1)
	tml	%r11,255
	je	.L828
.L829:
	lr	%r11,%r3
	ahi	%r11,1
	ahi	%r1,1
	ahi	%r4,-1
	ic	%r3,1(%r3)
	stc	%r3,0(%r1)
	tml	%r3,255
	je	.L828
	lr	%r3,%r11
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L827
.L828:
	ltr	%r4,%r4
	jne	.L830
	mvi	0(%r1),0
.L830:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L841:
	ltr	%r4,%r4
	bner	%r14
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
	je	.L860
	lr	%r4,%r3
	tml	%r3,1
	je	.L855
	lhi	%r5,0
	ic	%r5,0(%r2,%r1)
	ltr	%r5,%r5
	ber	%r14
	ahi	%r2,1
	cr	%r3,%r2
	ber	%r14
.L855:
	srl	%r4,1
.L848:
	lhi	%r0,0
	ic	%r0,0(%r2,%r1)
	ltr	%r0,%r0
	ber	%r14
	ahi	%r2,1
	lhi	%r5,0
	ic	%r5,0(%r2,%r1)
	ltr	%r5,%r5
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L848
	br	%r14
.L860:
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
.L872:
	icm	%r5,1,0(%r2)
	je	.L869
	lr	%r1,%r3
	lhi	%r4,255
	nr	%r5,%r4
.L868:
	lhi	%r0,0
	ic	%r0,0(%r1)
	ltr	%r0,%r0
	je	.L873
	ahi	%r1,1
	cr	%r0,%r5
	jne	.L868
	br	%r14
.L873:
	ahi	%r2,1
	j	.L872
.L869:
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
	j	.L877
.L876:
	ahi	%r1,1
	tml	%r4,255
	ber	%r14
.L877:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L876
	lr	%r2,%r1
	j	.L876
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
	jhe	.L886
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
.L884:
	lr	%r3,%r9
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L882
	lr	%r4,%r10
	lr	%r3,%r11
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L882
	lr	%r2,%r12
	ahi	%r2,1
	j	.L884
.L886:
	lr	%r12,%r2
.L882:
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
	larl	%r5,.L900
	kdb	%f0,.L901-.L900(%r5)
	jl	.L899
.L890:
	kdb	%f0,.L901-.L900(%r5)
	jnh	.L893
	kdb	%f2,.L901-.L900(%r5)
	jl	.L892
.L893:
	br	%r14
.L899:
	kdb	%f2,.L901-.L900(%r5)
	jnh	.L890
.L892:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L900:
.L901:
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
	je	.L906
	clr	%r3,%r9
	jl	.L908
	sr	%r3,%r9
	alr	%r3,%r2
	lr	%r11,%r3
	jnle	.L908
	lhi	%r7,0
	ic	%r7,0(%r4)
	ahi	%r9,-1
	ahi	%r4,1
	lr	%r8,%r4
	j	.L905
.L904:
	clr	%r12,%r11
	jh	.L908
.L905:
	ic	%r1,0(%r12)
	lr	%r10,%r12
	ahi	%r12,1
	lhi	%r2,255
	nr	%r1,%r2
	cr	%r1,%r7
	jne	.L904
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L904
	j	.L902
.L906:
	lr	%r10,%r2
	j	.L902
.L908:
	lhi	%r10,0
.L902:
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
	larl	%r5,.L938
	kdb	%f0,.L939-.L938(%r5)
	jl	.L937
	lhi	%r3,0
.L916:
	kdb	%f0,.L940-.L938(%r5)
	jnhe	.L934
	lhi	%r1,0
.L920:
	ahi	%r1,1
	mdb	%f0,.L941-.L938(%r5)
	kdb	%f0,.L940-.L938(%r5)
	jhe	.L920
.L921:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L937:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L916
.L934:
	kdb	%f0,.L941-.L938(%r5)
	lhi	%r1,0
	jnl	.L921
	cdb	%f0,.L939-.L938(%r5)
	je	.L921
.L923:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L941-.L938(%r5)
	jl	.L923
	j	.L921
	.section	.rodata
	.align	8
.L938:
.L941:
	.long	1071644672
	.long	0
.L940:
	.long	1072693248
	.long	0
.L939:
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
	je	.L946
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
	lhi	%r2,0
	lhi	%r3,0
	j	.L945
.L948:
	lr	%r10,%r4
	nr	%r10,%r12
	lr	%r11,%r5
	nr	%r11,%r13
	alr	%r3,%r11
	alcr	%r2,%r10
	sldl	%r12,1
	srdl	%r0,1
	lr	%r7,%r0
	or	%r7,%r1
	je	.L953
.L945:
	lhi	%r8,0
	lhi	%r9,1
	nr	%r9,%r1
	lcr	%r4,%r8
	lcr	%r5,%r9
	je	.L948
	ahi	%r4,-1
	j	.L948
.L946:
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
.L953:
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
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
	jhe	.L957
.L956:
	ltr	%r3,%r3
	jl	.L957
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L957
	ltr	%r3,%r3
	jl	.L957
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L957
	brct	%r2,.L956
	lhi	%r1,0
.L957:
	lhi	%r2,0
	ltr	%r1,%r1
	jne	.L961
.L959:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L960:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L959
.L961:
	clr	%r5,%r3
	jl	.L960
	sr	%r5,%r3
	or	%r2,%r1
	j	.L960
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
	je	.L976
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
.L976:
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
	je	.L991
.L986:
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
.L991:
	cr	%r5,%r1
	jne	.L986
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
.L995:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r0,%r1
	nr	%r0,%r3
	ar	%r2,%r0
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L995
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
	jl	.L1001
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L1001
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1034
	chi	%r5,1
	je	.L1039
	chi	%r5,2
	je	.L1040
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1040:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1039:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1034:
	srl	%r4,2
.L1002:
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
	brct	%r4,.L1002
	br	%r14
.L1001:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1004
	sll	%r5,3
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-8
	srl	%r0,3
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1025
	chi	%r11,1
	je	.L1041
	chi	%r11,2
	je	.L1042
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
.L1042:
	l	%r10,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1041:
	l	%r13,0(%r5,%r3)
	l	%r10,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r10,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1004
.L1025:
	srl	%r0,2
.L1005:
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
	brct	%r0,.L1005
.L1004:
	clr	%r4,%r1
	jle	.L1000
	lr	%r5,%r4
	sr	%r5,%r1
	lhi	%r0,3
	nr	%r0,%r5
	je	.L1016
	chi	%r0,1
	je	.L1043
	chi	%r0,2
	je	.L1044
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ahi	%r1,1
.L1044:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1043:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1000
.L1016:
	srl	%r5,2
.L1006:
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
	brct	%r5,.L1006
.L1000:
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
	jl	.L1056
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jh	.L1056
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1078
	chi	%r0,1
	je	.L1083
	chi	%r0,2
	je	.L1084
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1084:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1083:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1078:
	srl	%r4,2
.L1057:
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
	brct	%r4,.L1057
	br	%r14
.L1056:
	ltr	%r1,%r1
	je	.L1093
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
	je	.L1069
	chi	%r12,1
	je	.L1085
	chi	%r12,2
	je	.L1086
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1086:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1085:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r0,%r1
	je	.L1059
.L1069:
	srl	%r5,2
.L1060:
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
	brct	%r5,.L1060
.L1059:
	tml	%r4,1
	je	.L1055
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1055:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1093:
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
	jl	.L1099
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L1099
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1132
	chi	%r5,1
	je	.L1137
	chi	%r5,2
	je	.L1138
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1138:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1137:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1132:
	srl	%r4,2
.L1100:
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
	brct	%r4,.L1100
	br	%r14
.L1099:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1102
	sll	%r5,2
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1123
	chi	%r11,1
	je	.L1139
	chi	%r11,2
	je	.L1140
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1140:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1139:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1102
.L1123:
	srl	%r0,2
.L1103:
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
	brct	%r0,.L1103
.L1102:
	clr	%r4,%r1
	jle	.L1098
	lr	%r12,%r4
	sr	%r12,%r1
	lhi	%r0,3
	nr	%r0,%r12
	je	.L1114
	chi	%r0,1
	je	.L1141
	chi	%r0,2
	je	.L1142
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1142:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1141:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1098
.L1114:
	srl	%r12,2
.L1104:
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
	brct	%r12,.L1104
.L1098:
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
	larl	%r5,.L1158
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L1159-.L1158(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1158:
.L1159:
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
	larl	%r5,.L1164
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L1163
.L1161:
	ledbr	%f0,%f0
	br	%r14
.L1163:
	adb	%f0,.L1165-.L1164(%r5)
	j	.L1161
	.section	.rodata
	.align	8
.L1164:
.L1165:
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
.L1176:
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r1,%r3
	sra	%r1,0(%r12)
	tml	%r1,1
	jne	.L1174
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	lr	%r12,%r4
	sr	%r12,%r1
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1174
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1174
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1174
	ahi	%r1,3
	lr	%r2,%r1
	brct	%r5,.L1176
.L1174:
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
.L1187:
	lr	%r1,%r3
	sra	%r1,0(%r2)
	tml	%r1,1
	bner	%r14
	lr	%r0,%r2
	ahi	%r0,1
	lr	%r2,%r0
	lr	%r5,%r3
	sra	%r5,0(%r2)
	tml	%r5,1
	bner	%r14
	ahi	%r2,1
	lr	%r1,%r3
	sra	%r1,0(%r2)
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	lr	%r5,%r3
	sra	%r5,0(%r2)
	tml	%r5,1
	bner	%r14
	ahi	%r0,3
	lr	%r2,%r0
	brct	%r4,.L1187
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
	larl	%r5,.L1203
	keb	%f0,.L1204-.L1203(%r5)
	jhe	.L1202
	cfebr	%r2,5,%f0
	br	%r14
.L1202:
	seb	%f0,.L1204-.L1203(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1205-.L1203(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1203:
.L1204:
	.long	1191182336
.L1205:
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
.L1207:
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
	brct	%r5,.L1207
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
.L1215:
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
	brct	%r5,.L1215
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
.L1224:
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
.L1231:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L1231
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
	jhe	.L1239
.L1238:
	ltr	%r3,%r3
	jl	.L1239
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1239
	ltr	%r3,%r3
	jl	.L1239
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1239
	brct	%r2,.L1238
	lhi	%r1,0
.L1239:
	lhi	%r2,0
	ltr	%r1,%r1
	jne	.L1243
.L1241:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1242:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1241
.L1243:
	clr	%r5,%r3
	jl	.L1242
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1242
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
	jl	.L1259
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1259:
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
	jl	.L1264
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1264:
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r1,%r3
	lr	%r4,%r2
	lhi	%r5,0
	srda	%r4,32
	lr	%r2,%r1
	lhi	%r3,0
	lr	%r12,%r1
	lr	%r13,%r3
	srda	%r12,32
	msr	%r2,%r4
	lr	%r1,%r12
	msr	%r1,%r5
	ar	%r1,%r2
	lr	%r3,%r5
	mlr	%r2,%r13
	ar	%r2,%r1
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	jl	.L1279
	lhi	%r0,0
.L1272:
	ltr	%r3,%r3
	je	.L1277
	lhi	%r5,32
	lhi	%r2,0
.L1274:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	je	.L1273
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L1274
.L1273:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L1279:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L1272
.L1277:
	lhi	%r2,0
	j	.L1273
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
	jl	.L1287
	lhi	%r12,0
.L1282:
	ltr	%r3,%r3
	jl	.L1288
.L1283:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L1281
	lcr	%r2,%r2
.L1281:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L1287:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L1282
.L1288:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L1283
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
	jl	.L1295
	lhi	%r12,0
.L1291:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L1290
	lcr	%r2,%r2
.L1290:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L1295:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L1291
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
	larl	%r13,.L1315
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L1299
	lhi	%r2,16
.L1298:
	tml	%r3,32768
	jne	.L1299
	sll	%r3,1
	n	%r3,.L1316-.L1315(%r13)
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1299
	brct	%r2,.L1298
	lhi	%r1,0
.L1299:
	tml	%r1,65535
	je	.L1307
	lhi	%r2,0
	j	.L1303
.L1302:
	n	%r1,.L1316-.L1315(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1301
.L1303:
	clr	%r5,%r3
	jl	.L1302
	sr	%r5,%r3
	n	%r5,.L1316-.L1315(%r13)
	or	%r2,%r1
	j	.L1302
.L1307:
	lr	%r2,%r1
.L1301:
	ltr	%r4,%r4
	jne	.L1314
.L1304:
	n	%r2,.L1316-.L1315(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1314:
	.cfi_restore_state
	lr	%r2,%r5
	j	.L1304
	.section	.rodata
	.align	8
.L1315:
.L1316:
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
	jhe	.L1319
.L1318:
	ltr	%r3,%r3
	jl	.L1319
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1319
	ltr	%r3,%r3
	jl	.L1319
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1319
	brct	%r2,.L1318
	lhi	%r1,0
.L1319:
	lhi	%r2,0
	ltr	%r1,%r1
	jne	.L1323
.L1321:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L1322:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L1321
.L1323:
	clr	%r5,%r3
	jl	.L1322
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1322
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
	je	.L1337
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lhi	%r1,0
.L1338:
	lr	%r3,%r1
	br	%r14
.L1337:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	sll	%r2,0(%r4)
	or	%r2,%r3
	j	.L1338
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
	je	.L1343
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L1344:
	lr	%r2,%r1
	br	%r14
.L1343:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1344
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
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1350
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,56
	sldl	%r2,56
	or	%r2,%r0
	lr	%r10,%r4
	lr	%r11,%r5
	srdl	%r10,40
	l	%r3,.L1351-.L1350(%r13)
	nr	%r3,%r11
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,24
	n	%r1,.L1352-.L1350(%r13)
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,8
	l	%r12,.L1353-.L1350(%r13)
	nr	%r12,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	sldl	%r0,8
	lhi	%r11,255
	nr	%r0,%r11
	or	%r2,%r0
	lr	%r0,%r4
	lr	%r1,%r5
	sldl	%r0,24
	n	%r0,.L1351-.L1350(%r13)
	or	%r2,%r0
	sldl	%r4,40
	n	%r4,.L1352-.L1350(%r13)
	or	%r2,%r4
	or	%r3,%r12
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
	.section	.rodata
	.align	8
.L1350:
.L1353:
	.long	-16777216
.L1352:
	.long	16711680
.L1351:
	.long	65280
	.align	2
.text
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
	larl	%r5,.L1356
	lr	%r1,%r2
	srl	%r2,24
	lr	%r3,%r1
	sll	%r3,24
	or	%r2,%r3
	lr	%r0,%r1
	srl	%r0,8
	n	%r0,.L1357-.L1356(%r5)
	or	%r2,%r0
	sll	%r1,8
	n	%r1,.L1358-.L1356(%r5)
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L1356:
.L1358:
	.long	16711680
.L1357:
	.long	65280
	.align	2
.text
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
	larl	%r13,.L1363
	lr	%r1,%r2
	cl	%r2,.L1364-.L1363(%r13)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r0,%r3
	sll	%r0,4
	lhi	%r2,16
	sr	%r2,%r0
	srl	%r1,0(%r2)
	l	%r5,.L1365-.L1363(%r13)
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
	jne	.L1360
	sr	%r2,%r1
.L1361:
	ar	%r4,%r0
	ar	%r2,%r4
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1360:
	.cfi_restore_state
	lhi	%r2,0
	j	.L1361
	.section	.rodata
	.align	8
.L1363:
.L1365:
	.long	65280
.L1364:
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
	jl	.L1370
	jh	.L1371
	clr	%r3,%r5
	jl	.L1370
	jh	.L1371
	lhi	%r2,1
	br	%r14
.L1370:
	lhi	%r2,0
	br	%r14
.L1371:
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
	larl	%r13,.L1378
	lr	%r1,%r2
	l	%r3,.L1379-.L1378(%r13)
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
.L1378:
.L1379:
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
	je	.L1381
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r1,0
.L1382:
	lr	%r2,%r1
	br	%r14
.L1381:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1382
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
	larl	%r13,.L1388
	lr	%r5,%r3
	l	%r4,.L1389-.L1388(%r13)
	nr	%r4,%r2
	l	%r1,.L1389-.L1388(%r13)
	nr	%r1,%r3
	lr	%r3,%r4
	msr	%r3,%r1
	lr	%r12,%r3
	srl	%r12,16
	srl	%r2,16
	lr	%r0,%r2
	msr	%r1,%r2
	ar	%r1,%r12
	l	%r12,.L1389-.L1388(%r13)
	nr	%r12,%r1
	srl	%r5,16
	lr	%r2,%r4
	msr	%r2,%r5
	ar	%r2,%r12
	n	%r3,.L1389-.L1388(%r13)
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
.L1388:
.L1389:
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
	je	.L1394
	ahi	%r2,-1
.L1394:
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
	larl	%r13,.L1402
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r2,.L1403-.L1402(%r13)
	nr	%r2,%r0
	l	%r3,.L1403-.L1402(%r13)
	nr	%r3,%r1
	slr	%r5,%r3
	slbr	%r4,%r2
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,2
	l	%r2,.L1404-.L1402(%r13)
	nr	%r2,%r0
	l	%r3,.L1404-.L1402(%r13)
	nr	%r3,%r1
	l	%r0,.L1404-.L1402(%r13)
	nr	%r0,%r4
	l	%r1,.L1404-.L1402(%r13)
	nr	%r1,%r5
	alr	%r3,%r1
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r12,.L1405-.L1402(%r13)
	nr	%r12,%r2
	l	%r4,.L1405-.L1402(%r13)
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
.L1402:
.L1405:
	.long	252645135
.L1404:
	.long	858993459
.L1403:
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
	larl	%r5,.L1408
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1409-.L1408(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r0,.L1410-.L1408(%r5)
	n	%r2,.L1410-.L1408(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L1411-.L1408(%r5)
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
.L1408:
.L1411:
	.long	252645135
.L1410:
	.long	858993459
.L1409:
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
	larl	%r5,.L1418
	ldr	%f2,%f0
	lr	%r3,%r2
	ld	%f0,.L1419-.L1418(%r5)
	j	.L1415
.L1413:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1414
	mdbr	%f2,%f2
.L1415:
	tml	%r3,1
	je	.L1413
	mdbr	%f0,%f2
	j	.L1413
.L1414:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L1419-.L1418(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1418:
.L1419:
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
	larl	%r5,.L1426
	ler	%f2,%f0
	lr	%r3,%r2
	le	%f0,.L1427-.L1426(%r5)
	j	.L1423
.L1421:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1422
	meebr	%f2,%f2
.L1423:
	tml	%r3,1
	je	.L1421
	meebr	%f0,%f2
	j	.L1421
.L1422:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L1427-.L1426(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1426:
.L1427:
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
	jl	.L1432
	jh	.L1433
	clr	%r3,%r5
	jl	.L1432
	jh	.L1433
	lhi	%r2,1
	br	%r14
.L1432:
	lhi	%r2,0
	br	%r14
.L1433:
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
