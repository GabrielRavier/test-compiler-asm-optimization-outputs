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
	je	.L56
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
.L56:
	lhi	%r2,0
	j	.L54
.L76:
	.cfi_restore 12
	srl	%r5,1
.L83:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L79
	ahi	%r2,1
	ic	%r1,1(%r3)
	stc	%r1,0(%r2)
	lhi	%r0,255
	nr	%r1,%r0
	cr	%r1,%r4
	je	.L79
	ahi	%r3,2
	ahi	%r2,1
	brct	%r5,.L83
.L75:
	lhi	%r2,0
	br	%r14
.L79:
	ahi	%r2,1
	br	%r14
.L72:
	.cfi_offset 12, -48
	ahi	%r2,1
.L54:
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
	je	.L92
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L108
.L95:
	srl	%r4,1
.L89:
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
	brct	%r4,.L89
.L92:
	lhi	%r2,0
	br	%r14
.L108:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r0,%r0
	jne	.L95
	j	.L92
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
	je	.L115
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L129
.L118:
	srl	%r4,1
.L111:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L127
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,1(%r2)
	ic	%r5,1(%r3)
	cr	%r1,%r5
	jne	.L127
	ahi	%r2,2
	ahi	%r3,2
	brct	%r4,.L111
.L115:
	lhi	%r2,0
	br	%r14
.L127:
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L129:
	lhi	%r1,0
	lhi	%r5,0
	ic	%r1,0(%r2)
	ic	%r5,0(%r3)
	cr	%r1,%r5
	jne	.L127
	ahi	%r2,1
	ahi	%r3,1
	ltr	%r0,%r0
	jne	.L118
	j	.L115
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
	je	.L132
	brasl	%r14,memcpy
.L132:
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
	je	.L143
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
.L143:
	srl	%r4,1
	ahi	%r4,1
.L139:
	lr	%r5,%r1
	ahi	%r5,-1
	brct	%r4,.L141
	lhi	%r2,0
	br	%r14
.L141:
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
	jne	.L139
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
	je	.L154
	ahi	%r4,-2
	lr	%r5,%r4
	srl	%r5,8
	ltr	%r5,%r5
	jne	.L153
.L156:
	stc	%r3,0(%r1)
	larl	%r3,.L165
	ex	%r4,0(%r3)
	br	%r14
.L153:
	stc	%r3,0(%r1)
	mvc	1(255,%r1),0(%r1)
	la	%r1,256(%r1)
	brct	%r5,.L153
	j	.L156
.L154:
	stc	%r3,0(%r2)
	br	%r14
.L165:
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
.L169:
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
	jne	.L169
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
.L183:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L183
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
.L187:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L187
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
	je	.L191
	j	.L199
.L193:
	ic	%r3,0(%r1,%r2)
	ahi	%r1,1
	lhi	%r5,255
	ic	%r4,0(%r1,%r12)
	nr	%r5,%r3
	lhi	%r0,255
	nr	%r0,%r4
	cr	%r5,%r0
	jne	.L199
.L191:
	tml	%r3,255
	jne	.L193
	lhi	%r2,0
	lhi	%r1,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r4,%r1
	sr	%r2,%r4
	br	%r14
.L199:
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
	je	.L204
.L203:
	ahi	%r2,1
	cli	0(%r2),0
	jne	.L203
	sr	%r2,%r3
	br	%r14
.L204:
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
	je	.L215
	icm	%r1,1,0(%r2)
	ic	%r5,0(%r3)
	je	.L227
	lhi	%r0,255
	nr	%r0,%r5
	je	.L226
	brct	%r4,.L224
.L226:
	lhi	%r2,255
	nr	%r1,%r2
.L219:
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L215:
	lhi	%r2,0
	br	%r14
.L224:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L213:
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r0,%r1
	jne	.L210
	lr	%r5,%r3
	ahi	%r5,1
	ahi	%r2,1
	icm	%r1,1,0(%r2)
	je	.L228
	lr	%r3,%r5
	lhi	%r0,255
	ic	%r5,0(%r5)
	nr	%r0,%r5
	je	.L225
	brct	%r4,.L213
.L225:
	lhi	%r4,255
	nr	%r1,%r4
.L210:
	lhi	%r0,255
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	nr	%r5,%r0
	sr	%r1,%r5
	lr	%r2,%r1
	br	%r14
.L228:
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
.L227:
	lhi	%r1,0
	j	.L219
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
	je	.L239
	chi	%r5,1
	je	.L243
	chi	%r5,2
	je	.L244
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L244:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L243:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r4
	ber	%r14
.L239:
	srl	%r0,2
.L232:
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
	brct	%r0,.L232
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
	je	.L257
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L257:
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
	jle	.L261
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L261:
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
	je	.L273
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L273:
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
	larl	%r5,.L284
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L281
	lr	%r0,%r2
	lhi	%r3,32
	ahi	%r0,-127
	clr	%r0,%r3
	jh	.L283
.L281:
	lhi	%r2,1
	br	%r14
.L283:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L281
	a	%r2,.L285-.L284(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L284:
.L285:
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
	larl	%r5,.L297
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L296
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L293
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L298-.L297(%r5)
	jle	.L293
	l	%r4,.L299-.L297(%r5)
	lhi	%r1,8184
	ar	%r4,%r2
	clr	%r4,%r1
	jle	.L293
	l	%r0,.L300-.L297(%r5)
	ar	%r0,%r2
	cl	%r0,.L301-.L297(%r5)
	jh	.L294
	n	%r2,.L302-.L297(%r5)
	x	%r2,.L302-.L297(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L293:
	lhi	%r2,1
	br	%r14
.L296:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L294:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L297:
.L302:
	.long	65534
.L301:
	.long	1048579
.L300:
	.long	-65532
.L299:
	.long	-57344
.L298:
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
	jle	.L305
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L305:
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
	larl	%r5,.L318
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L313
	kdbr	%f0,%f2
	jnh	.L316
	sdbr	%f0,%f2
	br	%r14
.L316:
	ld	%f0,.L319-.L318(%r5)
	br	%r14
.L313:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L318:
.L319:
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
	larl	%r5,.L329
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L324
	kebr	%f0,%f2
	jnh	.L327
	sebr	%f0,%f2
	br	%r14
.L327:
	le	%f0,.L330-.L329(%r5)
	br	%r14
.L324:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L329:
.L330:
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
	jo	.L339
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L341
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L336
	lhi	%r0,0
.L336:
	tml	%r0,1
	jne	.L339
	ldr	%f2,%f0
.L339:
	ldr	%f0,%f2
	br	%r14
.L341:
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
	jo	.L351
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L353
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L348
	lhi	%r0,0
.L348:
	tml	%r0,1
	jne	.L351
	ler	%f2,%f0
.L351:
	ler	%f0,%f2
	br	%r14
.L353:
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
	jo	.L362
	cxbr	%f0,%f0
	jo	.L356
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
	jne	.L367
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L361
	lhi	%r0,0
.L361:
	tml	%r0,1
	je	.L359
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L360:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L356:
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L367:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L356
.L362:
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
.L359:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L360
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
	jo	.L375
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	tcdb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L378
	kdbr	%f0,%f2
	lhi	%r0,1
	jl	.L374
	lhi	%r0,0
.L374:
	tml	%r0,1
	bner	%r14
.L375:
	ldr	%f0,%f2
	br	%r14
.L378:
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
	jo	.L386
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	tceb	%f2,1365
	srl	%r1,28
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L389
	kebr	%f0,%f2
	lhi	%r0,1
	jl	.L385
	lhi	%r0,0
.L385:
	tml	%r0,1
	bner	%r14
.L386:
	ler	%f0,%f2
	br	%r14
.L389:
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
	jo	.L392
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L398
	tcxb	%f0,1365
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ipm	%r1
	tcxb	%f0,1365
	srl	%r1,28
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L403
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	lhi	%r0,1
	kxbr	%f0,%f1
	jl	.L397
	lhi	%r0,0
.L397:
	tml	%r0,1
	je	.L395
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L396:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L392:
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L403:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L392
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
.L395:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L396
.L398:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L392
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
	je	.L406
	larl	%r4,.LANCHOR1
.L407:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L407
.L406:
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
	je	.L422
	l	%r1,0(%r3)
	st	%r3,4(%r2)
	st	%r1,0(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L422:
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
	je	.L425
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L425:
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
	je	.L435
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L459
.L447:
	srl	%r11,1
.L437:
	lr	%r3,%r12
	lr	%r2,%r9
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r9
	ltr	%r1,%r1
	je	.L434
	ar	%r12,%r10
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L434
	ar	%r12,%r10
	brct	%r11,.L437
.L435:
	lr	%r8,%r10
	msr	%r8,%r13
	l	%r2,100(%r15)
	ahi	%r13,1
	st	%r13,0(%r2)
	ar	%r8,%r7
	ltr	%r10,%r10
	je	.L434
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L434:
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
.L459:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L434
	ar	%r12,%r10
	chi	%r13,1
	jne	.L447
	j	.L435
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
	je	.L462
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r10,%r2
	lr	%r11,%r7
	tml	%r7,1
	jne	.L483
.L471:
	srl	%r11,1
.L464:
	lr	%r3,%r12
	lr	%r2,%r10
	lr	%r8,%r12
	basr	%r14,%r6
	lr	%r1,%r2
	lr	%r2,%r10
	ltr	%r1,%r1
	je	.L461
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r8,%r12
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L461
	ar	%r12,%r9
	brct	%r11,.L464
.L462:
	lhi	%r8,0
.L461:
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
.L483:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L461
	ar	%r12,%r9
	chi	%r7,1
	jne	.L471
	lhi	%r8,0
	j	.L461
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
.L494:
	ic	%r4,0(%r2)
	stc	%r4,103(%r15)
	lhi	%r1,255
	nr	%r1,%r4
	cli	103(%r15),32
	je	.L488
	lr	%r3,%r1
	lhi	%r5,4
	ahi	%r3,-9
	clr	%r3,%r5
	jle	.L488
	chi	%r1,43
	je	.L489
	chi	%r1,45
	je	.L490
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L499
	lr	%r3,%r2
	lhi	%r12,0
.L492:
	lhi	%r2,0
.L496:
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
	jle	.L496
	ltr	%r12,%r12
	jne	.L487
	lr	%r2,%r5
	sr	%r2,%r1
.L487:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L488:
	.cfi_restore_state
	ahi	%r2,1
	j	.L494
.L490:
	ic	%r4,1(%r2)
	lhi	%r11,255
	ahi	%r2,1
	nr	%r11,%r4
	lhi	%r12,9
	ahi	%r11,-48
	lr	%r3,%r2
	clr	%r11,%r12
	jh	.L499
	lhi	%r12,1
	j	.L492
.L489:
	ic	%r4,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r4
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r2,9
	lhi	%r12,0
	clr	%r0,%r2
	jle	.L492
.L499:
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
.L518:
	ic	%r1,0(%r2)
	stc	%r1,103(%r15)
	lhi	%r3,255
	nr	%r3,%r1
	cli	103(%r15),32
	je	.L512
	lr	%r4,%r3
	lhi	%r5,4
	ahi	%r4,-9
	clr	%r4,%r5
	jle	.L512
	chi	%r3,43
	je	.L513
	chi	%r3,45
	jne	.L532
	ic	%r1,1(%r2)
	ahi	%r2,1
	lr	%r3,%r2
	lhi	%r2,255
	nr	%r2,%r1
	lhi	%r10,9
	ahi	%r2,-48
	clr	%r2,%r10
	jh	.L523
	lhi	%r2,1
.L516:
	lhi	%r10,0
	lhi	%r11,0
.L520:
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
	jle	.L520
	ltr	%r2,%r2
	jne	.L511
	slr	%r13,%r5
	lr	%r11,%r13
	slbr	%r12,%r4
	lr	%r10,%r12
.L511:
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
.L512:
	.cfi_restore_state
	ahi	%r2,1
	j	.L518
.L532:
	ahi	%r3,-48
	lhi	%r11,9
	clr	%r3,%r11
	jh	.L523
	lr	%r3,%r2
	lhi	%r2,0
	j	.L516
.L513:
	ic	%r1,1(%r2)
	lhi	%r0,255
	ahi	%r2,1
	nr	%r0,%r1
	lr	%r3,%r2
	ahi	%r0,-48
	lhi	%r9,9
	lhi	%r2,0
	clr	%r0,%r9
	jle	.L516
.L523:
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
	je	.L535
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	j	.L538
.L545:
	jle	.L534
	ahi	%r12,-1
	ar	%r11,%r9
	sr	%r12,%r10
	lr	%r8,%r11
	ltr	%r12,%r12
	je	.L535
.L538:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	lr	%r2,%r7
	ar	%r11,%r8
	lr	%r3,%r11
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L545
	lr	%r12,%r10
	ltr	%r12,%r12
	jne	.L538
.L535:
	lhi	%r11,0
.L534:
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
	j	.L551
.L561:
	ahi	%r12,-1
	ar	%r11,%r10
	sra	%r12,1
	lr	%r9,%r11
	ltr	%r12,%r12
	je	.L548
.L551:
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
	je	.L547
	jh	.L561
	lr	%r12,%r7
	ltr	%r12,%r12
	jne	.L551
.L548:
	lhi	%r11,0
.L547:
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
	j	.L595
.L596:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
.L595:
	icm	%r1,15,0(%r2)
	jne	.L596
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
	je	.L599
	j	.L600
.L610:
	ltr	%r5,%r5
	je	.L600
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L600
.L599:
	ltr	%r4,%r4
	jne	.L610
.L600:
	cr	%r4,%r5
	jl	.L605
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L605:
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
.L613:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L613
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
.L619:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L619
	sr	%r2,%r3
	sra	%r2,2
	br	%r14
.L620:
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
	je	.L630
	lr	%r5,%r4
	ahi	%r5,-1
	tml	%r4,1
	jne	.L645
.L633:
	srl	%r4,1
.L624:
	l	%r0,0(%r2)
	c	%r0,0(%r3)
	jne	.L626
	ltr	%r0,%r0
	je	.L626
	l	%r5,4(%r2)
	ahi	%r2,4
	ahi	%r3,4
	c	%r5,0(%r3)
	jne	.L626
	ltr	%r5,%r5
	je	.L626
	ahi	%r2,4
	ahi	%r3,4
	brct	%r4,.L624
.L630:
	lhi	%r2,0
	br	%r14
.L626:
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L646
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L645:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L626
	ltr	%r1,%r1
	je	.L626
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L633
	j	.L630
.L646:
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
	je	.L652
	lr	%r1,%r4
	ahi	%r1,-1
	tml	%r4,1
	jne	.L668
.L655:
	srl	%r4,1
.L649:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	brct	%r4,.L649
.L652:
	lhi	%r2,0
	br	%r14
.L668:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r2,4
	ltr	%r1,%r1
	jne	.L655
	j	.L652
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
	tml	%r4,1
	jne	.L692
.L680:
	srl	%r4,1
.L671:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L689
	l	%r1,4(%r2)
	ahi	%r3,4
	c	%r1,0(%r3)
	jne	.L689
	ahi	%r2,8
	ahi	%r3,4
	brct	%r4,.L671
.L677:
	lhi	%r2,0
	br	%r14
.L689:
	c	%r1,0(%r3)
	jl	.L693
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L692:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L689
	ahi	%r2,4
	ahi	%r3,4
	ltr	%r5,%r5
	jne	.L680
	j	.L677
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
	je	.L696
	sll	%r4,2
	brasl	%r14,memcpy
.L696:
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
	larl	%r13,.L749
	cr	%r2,%r3
	je	.L703
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r0,%r2
	lr	%r5,%r4
	sr	%r0,%r3
	sll	%r5,2
	clr	%r0,%r5
	jhe	.L748
	ltr	%r4,%r4
	je	.L703
	l	%r4,.L750-.L749(%r13)
	lhi	%r5,3
	nr	%r4,%r1
	sll	%r1,2
	ahi	%r4,1
	nr	%r5,%r4
	je	.L718
	chi	%r5,1
	je	.L734
	chi	%r5,2
	je	.L735
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L735:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
.L734:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L703
.L718:
	srl	%r4,2
.L706:
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
	brct	%r4,.L706
.L703:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L748:
	.cfi_restore_state
	lhi	%r5,0
	ltr	%r4,%r4
	je	.L703
	lhi	%r0,3
	nr	%r0,%r4
	je	.L727
	chi	%r0,1
	je	.L732
	chi	%r0,2
	je	.L733
	l	%r1,0(%r3)
	lhi	%r5,4
	st	%r1,0(%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L733:
	l	%r0,0(%r5,%r3)
	ahi	%r1,-1
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
.L732:
	l	%r0,0(%r5,%r3)
	st	%r0,0(%r5,%r2)
	ahi	%r5,4
	ltr	%r1,%r1
	je	.L703
.L727:
	srl	%r4,2
.L705:
	l	%r1,0(%r5,%r3)
	st	%r1,0(%r5,%r2)
	l	%r0,4(%r5,%r3)
	st	%r0,4(%r5,%r2)
	l	%r1,8(%r5,%r3)
	st	%r1,8(%r5,%r2)
	l	%r0,12(%r5,%r3)
	st	%r0,12(%r5,%r2)
	ahi	%r5,16
	brct	%r4,.L705
	j	.L703
	.section	.rodata
	.align	8
.L749:
.L750:
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
	je	.L762
	chi	%r0,1
	je	.L766
	chi	%r0,2
	je	.L767
	st	%r3,0(%r2)
	lr	%r5,%r4
	ahi	%r1,4
	ahi	%r5,-2
.L767:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L766:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L762:
	srl	%r4,2
.L753:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L753
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
	jhe	.L776
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r5,3
	lr	%r1,%r4
	nr	%r5,%r4
	je	.L791
	chi	%r5,1
	je	.L804
	chi	%r5,2
	jne	.L821
.L805:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
.L804:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	brct	%r4,.L791
	br	%r14
.L776:
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	lhi	%r1,0
	lr	%r5,%r4
	nr	%r0,%r4
	je	.L800
	chi	%r0,1
	je	.L806
	chi	%r0,2
	je	.L807
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L807:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L806:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L800:
	lr	%r4,%r5
	srl	%r4,2
.L779:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ic	%r0,1(%r1,%r2)
	stc	%r0,1(%r1,%r3)
	ic	%r5,2(%r1,%r2)
	stc	%r5,2(%r1,%r3)
	ic	%r0,3(%r1,%r2)
	stc	%r0,3(%r1,%r3)
	ahi	%r1,4
	brct	%r4,.L779
	br	%r14
.L791:
	srl	%r1,2
.L778:
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
	brct	%r1,.L778
	br	%r14
.L821:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	lr	%r4,%r0
	j	.L805
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
	larl	%r5,.L839
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	sll	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L840-.L839(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L839:
.L840:
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
	larl	%r5,.L843
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	lcr	%r4,%r3
	srl	%r0,0(%r3)
	lhi	%r3,15
	nr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r0
	n	%r2,.L844-.L843(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L843:
.L844:
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
	larl	%r5,.L851
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L852-.L851(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L851:
.L852:
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
.L860:
	lr	%r3,%r1
	ahi	%r3,1
	lr	%r5,%r2
	lr	%r0,%r2
	srl	%r5,0(%r1)
	srl	%r0,0(%r3)
	lr	%r1,%r3
	tml	%r5,1
	jne	.L868
	ahi	%r1,1
	lr	%r5,%r2
	tml	%r0,1
	srl	%r5,0(%r1)
	jne	.L868
	lr	%r1,%r3
	ahi	%r1,2
	lr	%r3,%r2
	tml	%r5,1
	srl	%r3,0(%r1)
	jne	.L868
	ahi	%r1,1
	tml	%r3,1
	jne	.L868
	brct	%r4,.L860
	lhi	%r2,0
	br	%r14
.L868:
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
	je	.L875
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L874:
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	bner	%r14
	ahi	%r2,1
	sra	%r1,1
	tml	%r1,1
	je	.L874
	br	%r14
.L875:
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
	larl	%r5,.L885
	lhi	%r2,1
	keb	%f0,.L886-.L885(%r5)
	blr	%r14
	keb	%f0,.L887-.L885(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L885:
.L887:
	.long	2139095039
.L886:
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
	larl	%r5,.L893
	kdb	%f0,.L894-.L893(%r5)
	lhi	%r2,1
	blr	%r14
	kdb	%f0,.L895-.L893(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L893:
.L895:
	.long	2146435071
	.long	-1
.L894:
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
	larl	%r5,.L901
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L902-.L901(%r5)
	ld	%f3,.L902-.L901+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L903-.L901(%r5)
	ld	%f3,.L903-.L901+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L901:
.L903:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L902:
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
	larl	%r5,.L922
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L920
	le	%f1,.L923-.L922(%r5)
.L908:
	tml	%r2,1
	je	.L909
.L910:
	meebr	%f0,%f1
.L909:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	tml	%r2,1
	jne	.L910
.L921:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	meebr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L910
	j	.L921
.L920:
	le	%f1,.L924-.L922(%r5)
	j	.L908
	.section	.rodata
	.align	8
.L922:
.L924:
	.long	1056964608
.L923:
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
	larl	%r5,.L941
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L939
	ld	%f1,.L942-.L941(%r5)
.L927:
	tml	%r2,1
	je	.L928
.L929:
	mdbr	%f0,%f1
.L928:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r2,%r1
	sra	%r2,1
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	tml	%r2,1
	jne	.L929
.L940:
	lr	%r0,%r2
	srl	%r0,31
	ar	%r2,%r0
	mdbr	%f1,%f1
	sra	%r2,1
	tml	%r2,1
	jne	.L929
	j	.L940
.L939:
	ld	%f1,.L943-.L941(%r5)
	j	.L927
	.section	.rodata
	.align	8
.L941:
.L943:
	.long	1071644672
	.long	0
.L942:
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
	larl	%r5,.L960
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L945
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L945
	ltr	%r4,%r4
	jl	.L958
	ld	%f0,.L961-.L960(%r5)
	ld	%f2,.L961-.L960+8(%r5)
.L946:
	tml	%r4,1
	je	.L947
.L948:
	mxbr	%f1,%f0
.L947:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r4,%r1
	sra	%r4,1
	ltr	%r4,%r4
	je	.L945
	mxbr	%f0,%f0
	tml	%r4,1
	jne	.L948
.L959:
	mxbr	%f0,%f0
	lr	%r0,%r4
	srl	%r0,31
	ar	%r4,%r0
	sra	%r4,1
	tml	%r4,1
	jne	.L948
	j	.L959
.L945:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L958:
	ld	%f0,.L962-.L960(%r5)
	ld	%f2,.L962-.L960+8(%r5)
	j	.L946
	.section	.rodata
	.align	8
.L960:
.L962:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L961:
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
	je	.L974
	chi	%r5,1
	je	.L978
	chi	%r5,2
	je	.L979
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L979:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L978:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r4
	ber	%r14
.L974:
	srl	%r4,2
.L965:
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
	brct	%r4,.L965
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
	je	.L988
.L989:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L989
.L988:
	ltr	%r4,%r4
	je	.L991
	lr	%r0,%r4
	ahi	%r0,-1
	tml	%r4,1
	jne	.L1011
.L1000:
	srl	%r4,1
.L990:
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
	brct	%r4,.L990
.L991:
	mvi	0(%r1),0
	br	%r14
.L1011:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ltr	%r0,%r0
	jne	.L1000
	j	.L991
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
	jne	.L1029
.L1021:
	srl	%r4,1
.L1014:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r3,0(%r2,%r1)
	cli	0(%r3),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1014
	br	%r14
.L1029:
	cli	0(%r1),0
	ber	%r14
	chi	%r3,1
	lhi	%r2,1
	jne	.L1021
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
	je	.L1036
.L1040:
	lhi	%r1,255
	nr	%r5,%r1
	lr	%r1,%r3
	j	.L1035
.L1034:
	ahi	%r1,1
	cr	%r4,%r5
	ber	%r14
.L1035:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L1034
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1040
.L1036:
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
.L1044:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L1043
	lr	%r2,%r1
.L1043:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1044
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
	je	.L1048
	lr	%r11,%r3
.L1050:
	ahi	%r11,1
	cli	0(%r11),0
	jne	.L1050
	slr	%r11,%r3
	jhe	.L1048
	lhi	%r0,255
	ahi	%r11,-1
	nr	%r0,%r10
	j	.L1058
.L1070:
	ahi	%r2,1
	ltr	%r4,%r4
	je	.L1069
.L1058:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r0
	jne	.L1070
	lr	%r9,%r11
	lr	%r12,%r3
	lr	%r5,%r2
	lr	%r4,%r10
	ahi	%r9,1
	brct	%r9,.L1066
.L1054:
	lhi	%r12,255
	nr	%r4,%r12
	nr	%r1,%r12
	cr	%r4,%r1
	je	.L1048
.L1055:
	ahi	%r2,1
	j	.L1058
.L1066:
	lhi	%r8,255
	nr	%r4,%r8
	nr	%r1,%r8
	cr	%r4,%r1
	jne	.L1055
	lr	%r8,%r12
	ahi	%r8,1
	ahi	%r5,1
	icm	%r1,1,0(%r5)
	je	.L1071
	icm	%r4,1,1(%r12)
	je	.L1055
	lr	%r12,%r8
	brct	%r9,.L1066
	j	.L1054
.L1069:
	lhi	%r2,0
.L1048:
	lm	%r8,%r12,32(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
.L1071:
	.cfi_restore_state
	ic	%r4,1(%r12)
	lhi	%r12,255
	nr	%r4,%r12
	nr	%r1,%r12
	cr	%r4,%r1
	jne	.L1055
	j	.L1048
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
	larl	%r5,.L1085
	kdb	%f0,.L1086-.L1085(%r5)
	jl	.L1084
	jnh	.L1077
	kdb	%f2,.L1086-.L1085(%r5)
	jl	.L1076
.L1077:
	br	%r14
.L1084:
	kdb	%f2,.L1086-.L1085(%r5)
	jnh	.L1077
.L1076:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1085:
.L1086:
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
	je	.L1087
	clr	%r3,%r5
	jl	.L1095
	sr	%r3,%r5
	alr	%r3,%r2
	lr	%r0,%r3
	jnle	.L1095
	lhi	%r11,0
	ic	%r11,0(%r4)
	j	.L1092
.L1089:
	clr	%r0,%r12
	jl	.L1095
.L1092:
	ic	%r1,0(%r12)
	lr	%r2,%r12
	ahi	%r12,1
	lhi	%r3,255
	nr	%r1,%r3
	cr	%r1,%r11
	jne	.L1089
	chi	%r5,1
	je	.L1087
	lhi	%r1,1
	lr	%r3,%r5
	sr	%r3,%r1
	tml	%r3,1
	je	.L1099
	clc	1(1,%r4),1(%r2)
	jne	.L1089
	lhi	%r1,2
	chi	%r5,2
	je	.L1087
.L1099:
	srl	%r3,1
.L1090:
	ic	%r9,0(%r1,%r4)
	la	%r10,0(%r1,%r2)
	clm	%r9,1,0(%r10)
	jne	.L1089
	ic	%r9,1(%r1,%r4)
	lhi	%r10,1
	la	%r10,0(%r10,%r2)
	la	%r10,0(%r10,%r1)
	clm	%r9,1,0(%r10)
	jne	.L1089
	ahi	%r1,2
	brct	%r3,.L1090
.L1087:
	lm	%r9,%r12,36(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	br	%r14
.L1095:
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
	je	.L1109
	brasl	%r14,memmove
.L1109:
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
	larl	%r5,.L1142
	kdb	%f0,.L1143-.L1142(%r5)
	jl	.L1138
	kdb	%f0,.L1144-.L1142(%r5)
	jnhe	.L1139
	lhi	%r3,0
.L1118:
	lhi	%r0,0
.L1124:
	ahi	%r0,1
	mdb	%f0,.L1145-.L1142(%r5)
	kdb	%f0,.L1144-.L1142(%r5)
	jhe	.L1124
	st	%r0,0(%r2)
	ltr	%r3,%r3
	ber	%r14
.L1141:
	lcdbr	%f0,%f0
	br	%r14
.L1139:
	kdb	%f0,.L1145-.L1142(%r5)
	jnl	.L1121
	cdb	%f0,.L1143-.L1142(%r5)
	jne	.L1130
.L1121:
	lhi	%r1,0
	st	%r1,0(%r2)
	br	%r14
.L1138:
	lcdbr	%f2,%f0
	kdb	%f0,.L1146-.L1142(%r5)
	jnle	.L1140
	ldr	%f0,%f2
	lhi	%r3,1
	j	.L1118
.L1140:
	kdb	%f0,.L1147-.L1142(%r5)
	jnh	.L1121
	lhi	%r3,1
.L1119:
	ldr	%f0,%f2
	lhi	%r0,0
.L1126:
	adbr	%f0,%f0
	ahi	%r0,-1
	kdb	%f0,.L1145-.L1142(%r5)
	jl	.L1126
	st	%r0,0(%r2)
	ltr	%r3,%r3
	jne	.L1141
	br	%r14
.L1130:
	ldr	%f2,%f0
	lhi	%r3,0
	j	.L1119
	.section	.rodata
	.align	8
.L1142:
.L1147:
	.long	-1075838976
	.long	0
.L1146:
	.long	-1074790400
	.long	0
.L1145:
	.long	1071644672
	.long	0
.L1144:
	.long	1072693248
	.long	0
.L1143:
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
	je	.L1152
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
.L1151:
	lhi	%r10,0
	lcr	%r2,%r10
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r3,%r11
	je	.L1154
	ahi	%r2,-1
.L1154:
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
	jne	.L1151
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
.L1152:
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
	jhe	.L1162
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,16
.L1161:
	ltr	%r3,%r3
	jl	.L1162
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1178
	ltr	%r3,%r3
	jl	.L1162
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1178
	ahi	%r2,-2
	brct	%r0,.L1161
.L1164:
	ltr	%r4,%r4
	ber	%r14
.L1180:
	lr	%r2,%r5
	br	%r14
.L1178:
	lhi	%r2,0
	ltr	%r1,%r1
	je	.L1164
.L1162:
	lhi	%r2,0
.L1167:
	clr	%r5,%r3
	jl	.L1166
	sr	%r5,%r3
	or	%r2,%r1
.L1166:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1167
	ltr	%r4,%r4
	ber	%r14
	j	.L1180
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
	je	.L1184
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
.L1184:
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
	je	.L1199
.L1194:
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
.L1199:
	cr	%r5,%r1
	jne	.L1194
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
.L1203:
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
	jne	.L1203
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
	jl	.L1209
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1274
.L1209:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1212
	sll	%r5,3
	lr	%r0,%r5
	ahi	%r0,-8
	lr	%r12,%r5
	srl	%r0,3
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1235
	chi	%r11,1
	je	.L1251
	chi	%r11,2
	je	.L1252
	lm	%r10,%r11,0(%r3)
	lhi	%r5,8
	stm	%r10,%r11,0(%r2)
.L1252:
	l	%r13,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1251:
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1212
.L1235:
	srl	%r0,2
.L1213:
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
	brct	%r0,.L1213
.L1212:
	clr	%r4,%r1
	jle	.L1208
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1226
	chi	%r0,1
	je	.L1253
	chi	%r0,2
	je	.L1254
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1254:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1253:
	ic	%r10,0(%r1,%r3)
	stc	%r10,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1208
.L1226:
	lr	%r4,%r5
	srl	%r4,2
.L1214:
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ic	%r5,1(%r1,%r3)
	stc	%r5,1(%r1,%r2)
	ic	%r0,2(%r1,%r3)
	stc	%r0,2(%r1,%r2)
	ic	%r12,3(%r1,%r3)
	stc	%r12,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1214
.L1208:
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1274:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1244
	chi	%r5,1
	je	.L1249
	chi	%r5,2
	je	.L1250
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1250:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1249:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1244:
	srl	%r4,2
.L1210:
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
	brct	%r4,.L1210
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
	jl	.L1277
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1330
.L1277:
	ltr	%r1,%r1
	je	.L1326
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
	je	.L1294
	chi	%r12,1
	je	.L1310
	chi	%r12,2
	je	.L1311
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lhi	%r1,2
.L1311:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1310:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r0,%r1
	je	.L1280
.L1294:
	srl	%r5,2
.L1281:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	lh	%r12,2(%r1,%r3)
	sth	%r12,2(%r1,%r2)
	lh	%r0,4(%r1,%r3)
	sth	%r0,4(%r1,%r2)
	lh	%r12,6(%r1,%r3)
	sth	%r12,6(%r1,%r2)
	ahi	%r1,8
	brct	%r5,.L1281
.L1280:
	tml	%r4,1
	je	.L1276
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1276:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1330:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1303
	chi	%r0,1
	je	.L1308
	chi	%r0,2
	je	.L1309
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1309:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1308:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1303:
	srl	%r4,2
.L1278:
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
	brct	%r4,.L1278
	br	%r14
.L1326:
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
	jl	.L1333
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1398
.L1333:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1336
	sll	%r5,2
	lr	%r0,%r5
	ahi	%r0,-4
	lr	%r12,%r5
	srl	%r0,2
	lhi	%r11,3
	ahi	%r0,1
	lhi	%r5,0
	nr	%r11,%r0
	je	.L1359
	chi	%r11,1
	je	.L1375
	chi	%r11,2
	je	.L1376
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lhi	%r5,4
.L1376:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1375:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1336
.L1359:
	srl	%r0,2
.L1337:
	l	%r12,0(%r5,%r3)
	st	%r12,0(%r5,%r2)
	l	%r11,4(%r5,%r3)
	st	%r11,4(%r5,%r2)
	l	%r12,8(%r5,%r3)
	st	%r12,8(%r5,%r2)
	l	%r11,12(%r5,%r3)
	st	%r11,12(%r5,%r2)
	ahi	%r5,16
	brct	%r0,.L1337
.L1336:
	clr	%r4,%r1
	jle	.L1332
	lr	%r5,%r4
	lhi	%r0,3
	sr	%r5,%r1
	nr	%r0,%r5
	je	.L1350
	chi	%r0,1
	je	.L1377
	chi	%r0,2
	je	.L1378
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
.L1378:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1377:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1332
.L1350:
	lr	%r4,%r5
	srl	%r4,2
.L1338:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ic	%r12,1(%r1,%r3)
	stc	%r12,1(%r1,%r2)
	ic	%r11,2(%r1,%r3)
	stc	%r11,2(%r1,%r2)
	ic	%r0,3(%r1,%r3)
	stc	%r0,3(%r1,%r2)
	ahi	%r1,4
	brct	%r4,.L1338
.L1332:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1398:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1368
	chi	%r5,1
	je	.L1373
	chi	%r5,2
	je	.L1374
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	lr	%r1,%r4
	ahi	%r1,-2
.L1374:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1373:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1368:
	srl	%r4,2
.L1334:
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
	brct	%r4,.L1334
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
	larl	%r5,.L1405
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	bher	%r14
	adb	%f0,.L1406-.L1405(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1405:
.L1406:
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
	larl	%r5,.L1410
	ltr	%r2,%r2
	cdfbr	%f0,%r2
	jhe	.L1408
	adb	%f0,.L1411-.L1410(%r5)
.L1408:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1410:
.L1411:
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
.L1422:
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r4,%r2
	sra	%r4,0(%r12)
	tml	%r4,1
	jne	.L1420
	ahi	%r1,1
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r0,%r2
	lr	%r4,%r1
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1420
	ahi	%r1,1
	lr	%r12,%r3
	sr	%r12,%r1
	lr	%r0,%r2
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1420
	lr	%r1,%r4
	lr	%r4,%r3
	ahi	%r1,2
	sr	%r4,%r1
	lr	%r12,%r2
	sra	%r12,0(%r4)
	tml	%r12,1
	jne	.L1420
	ahi	%r1,1
	brct	%r5,.L1422
.L1420:
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
.L1433:
	lr	%r3,%r2
	sra	%r3,0(%r1)
	tml	%r3,1
	jne	.L1431
	ahi	%r1,1
	lr	%r5,%r2
	lr	%r0,%r1
	sra	%r5,0(%r1)
	tml	%r5,1
	jne	.L1431
	ahi	%r1,1
	lr	%r3,%r2
	sra	%r3,0(%r1)
	tml	%r3,1
	jne	.L1431
	lr	%r1,%r0
	ahi	%r1,2
	lr	%r0,%r2
	sra	%r0,0(%r1)
	tml	%r0,1
	jne	.L1431
	ahi	%r1,1
	brct	%r4,.L1433
.L1431:
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
	larl	%r5,.L1449
	keb	%f0,.L1450-.L1449(%r5)
	jhe	.L1448
	cfebr	%r2,5,%f0
	br	%r14
.L1448:
	seb	%f0,.L1450-.L1449(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1451-.L1449(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1449:
.L1450:
	.long	1191182336
.L1451:
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
.L1453:
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
	brct	%r0,.L1453
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
.L1462:
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
	brct	%r0,.L1462
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
.L1472:
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
	jne	.L1472
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
.L1479:
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
	jne	.L1479
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
	jle	.L1487
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,16
.L1486:
	ltr	%r3,%r3
	jl	.L1487
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1488
	ltr	%r3,%r3
	jl	.L1487
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1488
	ahi	%r2,-2
	brct	%r0,.L1486
	ltr	%r4,%r4
	ber	%r14
.L1504:
	lr	%r2,%r5
	br	%r14
.L1488:
	ltr	%r1,%r1
	je	.L1495
.L1487:
	lhi	%r2,0
.L1492:
	clr	%r5,%r3
	jl	.L1491
	sr	%r5,%r3
	or	%r2,%r1
.L1491:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1492
	ltr	%r4,%r4
	ber	%r14
	j	.L1504
.L1495:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1504
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
	jl	.L1509
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1509:
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
	jl	.L1514
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1514:
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
	jl	.L1534
	je	.L1526
	lhi	%r0,0
.L1522:
	lhi	%r5,32
	lhi	%r2,0
	j	.L1525
.L1535:
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1524
.L1525:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	jne	.L1535
.L1524:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L1534:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L1522
.L1526:
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
	jl	.L1564
	lhi	%r0,0
.L1538:
	ltr	%r3,%r3
	jhe	.L1539
	lhi	%r1,1
	lcr	%r3,%r3
	xr	%r0,%r1
.L1539:
	lr	%r5,%r2
	lhi	%r1,1
	lhi	%r4,8
	clr	%r2,%r3
	jle	.L1541
.L1540:
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1543
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1543
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1543
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1543
	brct	%r4,.L1540
.L1543:
	lhi	%r2,0
	ltr	%r1,%r1
	je	.L1542
.L1541:
	lhi	%r2,0
.L1546:
	clr	%r3,%r5
	jh	.L1545
	sr	%r5,%r3
	or	%r2,%r1
.L1545:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1546
.L1542:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L1564:
	lcr	%r2,%r2
	lhi	%r0,1
	j	.L1538
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
	jl	.L1592
	lhi	%r0,0
.L1567:
	lpr	%r1,%r3
	lr	%r2,%r4
	lhi	%r3,1
	lhi	%r5,8
	clr	%r4,%r1
	jle	.L1574
.L1568:
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1571
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1571
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1571
	sll	%r1,1
	sll	%r3,1
	clr	%r4,%r1
	jle	.L1571
	brct	%r5,.L1568
.L1571:
	ltr	%r3,%r3
	je	.L1593
.L1574:
	clr	%r2,%r1
	jl	.L1573
	sr	%r2,%r1
.L1573:
	srl	%r3,1
	srl	%r1,1
	ltr	%r3,%r3
	jne	.L1574
	ltr	%r0,%r0
	ber	%r14
.L1594:
	lcr	%r2,%r2
	br	%r14
.L1592:
	lcr	%r4,%r4
	lhi	%r0,1
	j	.L1567
.L1593:
	ltr	%r0,%r0
	lr	%r2,%r4
	ber	%r14
	j	.L1594
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
	larl	%r13,.L1614
	lhi	%r1,1
	lr	%r5,%r2
	lhi	%r0,16
	clr	%r3,%r2
	jhe	.L1598
.L1597:
	tml	%r3,32768
	jne	.L1598
	lr	%r2,%r1
	sll	%r3,1
	sll	%r2,1
	n	%r3,.L1615-.L1614(%r13)
	lr	%r1,%r2
	clr	%r5,%r3
	jle	.L1613
	brct	%r0,.L1597
	lhi	%r2,0
.L1600:
	ltr	%r4,%r4
	je	.L1604
	lr	%r2,%r5
.L1604:
	n	%r2,.L1615-.L1614(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1613:
	.cfi_restore_state
	tml	%r2,65534
	je	.L1600
.L1598:
	lhi	%r2,0
.L1603:
	clr	%r5,%r3
	jl	.L1602
	sr	%r5,%r3
	or	%r2,%r1
	n	%r5,.L1615-.L1614(%r13)
.L1602:
	n	%r1,.L1615-.L1614(%r13)
	srl	%r3,1
	srl	%r1,1
	ltr	%r1,%r1
	jne	.L1603
	j	.L1600
	.section	.rodata
	.align	8
.L1614:
.L1615:
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
	jle	.L1618
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,16
.L1617:
	ltr	%r3,%r3
	jl	.L1618
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1619
	ltr	%r3,%r3
	jl	.L1618
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1619
	ahi	%r2,-2
	brct	%r0,.L1617
	ltr	%r4,%r4
	ber	%r14
.L1635:
	lr	%r2,%r5
	br	%r14
.L1619:
	ltr	%r1,%r1
	je	.L1626
.L1618:
	lhi	%r2,0
.L1623:
	clr	%r5,%r3
	jl	.L1622
	sr	%r5,%r3
	or	%r2,%r1
.L1622:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1623
	ltr	%r4,%r4
	ber	%r14
	j	.L1635
.L1626:
	ltr	%r4,%r4
	lhi	%r2,0
	ber	%r14
	j	.L1635
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
	je	.L1638
	lr	%r2,%r3
	lhi	%r1,0
	sll	%r2,4064(%r4)
	lr	%r3,%r1
	br	%r14
.L1638:
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
	je	.L1644
	lr	%r3,%r2
	lr	%r1,%r2
	sra	%r3,4064(%r4)
	sra	%r1,31
	lr	%r2,%r1
	br	%r14
.L1644:
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
	larl	%r13,.L1657
	cl	%r2,.L1658-.L1657(%r13)
	lr	%r1,%r2
	lhi	%r2,0
	slbr	%r2,%r2
	l	%r5,.L1659-.L1657(%r13)
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
	jne	.L1654
	lr	%r2,%r5
	ar	%r0,%r4
	sr	%r2,%r1
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
.L1654:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r0,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	ar	%r2,%r0
	br	%r14
	.section	.rodata
	.align	8
.L1657:
.L1659:
	.long	65280
.L1658:
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
	jl	.L1664
	jh	.L1665
	clr	%r3,%r5
	jl	.L1664
	jh	.L1665
	lhi	%r2,1
	br	%r14
.L1664:
	lhi	%r2,0
	br	%r14
.L1665:
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
	jl	.L1671
	jh	.L1670
	clr	%r3,%r5
	jl	.L1671
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L1671:
	lhi	%r2,-1
	br	%r14
.L1670:
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
	larl	%r13,.L1675
	l	%r4,.L1676-.L1675(%r13)
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
.L1675:
.L1676:
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
	je	.L1678
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r2,0
	br	%r14
.L1678:
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
	larl	%r13,.L1690
	l	%r4,.L1691-.L1690(%r13)
	l	%r1,.L1691-.L1690(%r13)
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
	l	%r5,.L1691-.L1690(%r13)
	lr	%r0,%r3
	n	%r3,.L1691-.L1690(%r13)
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
.L1690:
.L1691:
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
	larl	%r13,.L1694
	l	%r1,.L1695-.L1694(%r13)
	l	%r0,.L1695-.L1694(%r13)
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
	l	%r12,.L1695-.L1694(%r13)
	lr	%r0,%r11
	n	%r11,.L1695-.L1694(%r13)
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
.L1694:
.L1695:
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
	je	.L1697
	ahi	%r2,-1
.L1697:
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
	larl	%r13,.L1705
	l	%r0,.L1706-.L1705(%r13)
	l	%r1,.L1706-.L1705(%r13)
	lr	%r4,%r2
	lr	%r5,%r3
	l	%r12,.L1707-.L1705(%r13)
	srdl	%r2,1
	nr	%r0,%r2
	nr	%r1,%r3
	slr	%r5,%r1
	slbr	%r4,%r0
	l	%r2,.L1708-.L1705(%r13)
	l	%r3,.L1708-.L1705(%r13)
	lr	%r1,%r5
	lr	%r0,%r4
	srdl	%r0,2
	nr	%r2,%r0
	l	%r0,.L1708-.L1705(%r13)
	nr	%r3,%r1
	l	%r1,.L1708-.L1705(%r13)
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
	n	%r2,.L1707-.L1705(%r13)
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
.L1705:
.L1708:
	.long	858993459
.L1707:
	.long	252645135
.L1706:
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
	larl	%r5,.L1711
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1712-.L1711(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	n	%r2,.L1713-.L1711(%r5)
	srl	%r0,2
	n	%r0,.L1713-.L1711(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L1714-.L1711(%r5)
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
.L1711:
.L1714:
	.long	252645135
.L1713:
	.long	858993459
.L1712:
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
	larl	%r5,.L1724
	ldr	%f2,%f0
	lr	%r1,%r2
	ld	%f0,.L1725-.L1724(%r5)
	tml	%r2,1
	je	.L1716
.L1718:
	mdbr	%f0,%f2
.L1716:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L1717
	mdbr	%f2,%f2
	tml	%r1,1
	jne	.L1718
.L1723:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	mdbr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L1718
	j	.L1723
.L1717:
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L1725-.L1724(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1724:
.L1725:
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
	larl	%r5,.L1735
	ler	%f2,%f0
	lr	%r1,%r2
	le	%f0,.L1736-.L1735(%r5)
	tml	%r2,1
	je	.L1727
.L1729:
	meebr	%f0,%f2
.L1727:
	lr	%r3,%r1
	srl	%r3,31
	ar	%r1,%r3
	sra	%r1,1
	ltr	%r1,%r1
	je	.L1728
	meebr	%f2,%f2
	tml	%r1,1
	jne	.L1729
.L1734:
	lr	%r0,%r1
	srl	%r0,31
	ar	%r1,%r0
	meebr	%f2,%f2
	sra	%r1,1
	tml	%r1,1
	jne	.L1729
	j	.L1734
.L1728:
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L1736-.L1735(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1735:
.L1736:
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
	jl	.L1741
	jh	.L1742
	clr	%r3,%r5
	jl	.L1741
	jh	.L1742
	lhi	%r2,1
	br	%r14
.L1741:
	lhi	%r2,0
	br	%r14
.L1742:
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
	jl	.L1748
	jh	.L1747
	clr	%r3,%r5
	jl	.L1748
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L1748:
	lhi	%r2,-1
	br	%r14
.L1747:
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
