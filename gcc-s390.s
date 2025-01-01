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
	jne	.L51
.L31:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
.L30:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	brct	%r4,.L17
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
.L51:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
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
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lr	%r0,%r5
	tml	%r5,1
	jne	.L80
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
.L81:
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L72:
	.cfi_restore_state
	ltr	%r5,%r5
	je	.L58
	ahi	%r2,1
	lm	%r10,%r12,40(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L80:
	.cfi_restore_state
	ic	%r10,0(%r3)
	stc	%r10,0(%r2)
	lhi	%r12,255
	nr	%r10,%r12
	cr	%r10,%r4
	je	.L72
	ahi	%r3,1
	ahi	%r2,1
	ahi	%r5,-1
	jne	.L63
	lhi	%r2,0
	j	.L81
.L75:
	.cfi_restore 10
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
	je	.L103
	lr	%r5,%r4
	tml	%r4,1
	je	.L92
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	je	.L104
	ahi	%r2,1
	ahi	%r4,-1
	je	.L103
.L92:
	srl	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	je	.L104
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L86:
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	ahi	%r4,-1
	lhi	%r12,0
	ic	%r12,0(%r1)
	cr	%r12,%r3
	je	.L100
	ahi	%r1,1
	lr	%r2,%r1
	ahi	%r4,-1
	brct	%r5,.L84
.L89:
	lhi	%r2,0
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L84:
	.cfi_restore_state
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	jne	.L86
.L100:
	ltr	%r4,%r4
	je	.L89
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L104:
	ltr	%r4,%r4
	bner	%r14
.L103:
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
	je	.L131
	lr	%r0,%r4
	tml	%r4,1
	je	.L119
	clc	0(1,%r3),0(%r2)
	jne	.L132
	ahi	%r2,1
	ahi	%r3,1
	ahi	%r4,-1
	je	.L131
.L119:
	srl	%r0,1
	clc	0(1,%r3),0(%r2)
	jne	.L132
.L112:
	ahi	%r4,-1
	ahi	%r2,1
	lr	%r1,%r3
	ahi	%r1,1
	lr	%r3,%r1
	clc	0(1,%r1),0(%r2)
	jne	.L128
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r1,1
	lr	%r3,%r1
	brct	%r0,.L110
.L114:
	lhi	%r2,0
	br	%r14
.L110:
	clc	0(1,%r3),0(%r2)
	je	.L112
.L128:
	ltr	%r4,%r4
	je	.L114
	lhi	%r4,0
	ic	%r4,0(%r2)
	lr	%r2,%r4
	lhi	%r0,0
	ic	%r0,0(%r3)
	sr	%r2,%r0
	br	%r14
.L132:
	ltr	%r4,%r4
	je	.L131
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r5,0
	ic	%r5,0(%r3)
	sr	%r2,%r5
	br	%r14
.L131:
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
	je	.L139
	brasl	%r14,memcpy
.L139:
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
	je	.L150
	ahi	%r5,-1
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r3
	ber	%r14
.L150:
	srl	%r4,1
	lr	%r1,%r4
	ahi	%r1,1
	brct	%r1,.L148
.L157:
	lhi	%r2,0
	br	%r14
.L148:
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
	ber	%r14
	brct	%r1,.L148
	j	.L157
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
	je	.L170
	chi	%r5,1
	je	.L174
	chi	%r5,2
	je	.L175
	stc	%r3,0(%r2)
	ahi	%r1,1
.L175:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L174:
	stc	%r3,0(%r1)
	ahi	%r1,1
	cr	%r0,%r1
	ber	%r14
.L170:
	srl	%r4,2
.L161:
	stc	%r3,0(%r1)
	stc	%r3,1(%r1)
	stc	%r3,2(%r1)
	stc	%r3,3(%r1)
	ahi	%r1,4
	brct	%r4,.L161
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
.L185:
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
	jne	.L185
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
.L199:
	ahi	%r2,1
	icm	%r0,1,0(%r2)
	ber	%r14
	lhi	%r4,255
	nr	%r0,%r4
	cr	%r0,%r3
	jne	.L199
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
.L203:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	ltr	%r1,%r1
	jne	.L203
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
	jne	.L214
	lhi	%r1,1
	tml	%r4,255
	je	.L214
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	ic	%r5,0(%r1,%r3)
	la	%r12,0(%r1,%r3)
	clm	%r4,1,0(%r12)
	jne	.L208
.L217:
	tml	%r4,255
	je	.L208
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	ic	%r5,0(%r1,%r3)
	la	%r12,0(%r1,%r3)
	clm	%r4,1,0(%r12)
	je	.L217
.L208:
	lhi	%r2,255
	nr	%r2,%r4
	lhi	%r3,255
	nr	%r5,%r3
	sr	%r2,%r5
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L214:
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
	je	.L220
.L221:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L221
.L220:
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
	je	.L230
.L242:
	icm	%r5,1,0(%r2)
	je	.L227
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L227
	brct	%r4,.L237
.L227:
	lhi	%r2,255
	nr	%r2,%r5
	lhi	%r4,0
	ic	%r4,0(%r3)
	sr	%r2,%r4
	br	%r14
.L237:
	lhi	%r0,255
	nr	%r0,%r5
	cr	%r1,%r0
	jne	.L227
	ahi	%r2,1
	ahi	%r3,1
	j	.L242
.L230:
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
	je	.L253
	chi	%r4,1
	je	.L257
	chi	%r4,2
	je	.L258
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L258:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L257:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	cr	%r2,%r5
	ber	%r14
.L253:
	srl	%r0,2
.L246:
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
	brct	%r0,.L246
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
	je	.L271
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L271:
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
	jle	.L275
	lhi	%r0,127
	xr	%r2,%r0
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L275:
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
	je	.L287
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L287:
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
	larl	%r5,.L298
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L295
	lr	%r0,%r2
	ahi	%r0,-127
	lhi	%r3,32
	clr	%r0,%r3
	jh	.L297
.L295:
	lhi	%r2,1
	br	%r14
.L297:
	ahi	%r0,-8105
	lhi	%r4,1
	clr	%r0,%r4
	jle	.L295
	a	%r2,.L299-.L298(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
	.section	.rodata
	.align	8
.L298:
.L299:
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
	larl	%r5,.L311
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L310
	lhi	%r0,8231
	clr	%r2,%r0
	jle	.L307
	lr	%r3,%r2
	ahi	%r3,-8234
	cl	%r3,.L312-.L311(%r5)
	jle	.L307
	l	%r4,.L313-.L311(%r5)
	ar	%r4,%r2
	lhi	%r1,8184
	clr	%r4,%r1
	jle	.L307
	l	%r0,.L314-.L311(%r5)
	ar	%r0,%r2
	cl	%r0,.L315-.L311(%r5)
	jh	.L308
	n	%r2,.L316-.L311(%r5)
	x	%r2,.L316-.L311(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L307:
	lhi	%r2,1
	br	%r14
.L310:
	ahi	%r2,1
	lhi	%r3,127
	nr	%r2,%r3
	lhi	%r4,32
	clr	%r2,%r4
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L308:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L311:
.L316:
	.long	65534
.L315:
	.long	1048579
.L314:
	.long	-65532
.L313:
	.long	-57344
.L312:
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
	jle	.L319
	lhi	%r0,32
	or	%r2,%r0
	ahi	%r2,-97
	lhi	%r4,5
	clr	%r2,%r4
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L319:
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
	larl	%r5,.L332
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L327
	kdbr	%f0,%f2
	jnh	.L330
	sdbr	%f0,%f2
	br	%r14
.L330:
	ld	%f0,.L333-.L332(%r5)
	br	%r14
.L327:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L332:
.L333:
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
	larl	%r5,.L343
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L338
	kebr	%f0,%f2
	jnh	.L341
	sebr	%f0,%f2
	br	%r14
.L341:
	le	%f0,.L344-.L343(%r5)
	br	%r14
.L338:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L343:
.L344:
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
	jo	.L353
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L355
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L350
	lhi	%r0,0
.L350:
	tml	%r0,1
	jne	.L353
	ldr	%f2,%f0
.L353:
	ldr	%f0,%f2
	br	%r14
.L355:
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
	jo	.L365
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L367
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L362
	lhi	%r0,0
.L362:
	tml	%r0,1
	jne	.L365
	ler	%f2,%f0
.L365:
	ler	%f0,%f2
	br	%r14
.L367:
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
	jo	.L376
	cxbr	%f0,%f0
	jo	.L370
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
	jne	.L381
	lhi	%r0,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L375
	lhi	%r0,0
.L375:
	tml	%r0,1
	je	.L373
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L374:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L370:
	ld	%f8,96(%r15)
	ld	%f10,104(%r15)
	std	%f8,0(%r2)
	std	%f10,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L381:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L370
.L376:
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
.L373:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L374
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
	jo	.L389
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L392
	lhi	%r0,1
	kdbr	%f0,%f2
	jl	.L388
	lhi	%r0,0
.L388:
	tml	%r0,1
	bner	%r14
.L389:
	ldr	%f0,%f2
	br	%r14
.L392:
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
	jo	.L400
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	jne	.L403
	lhi	%r0,1
	kebr	%f0,%f2
	jl	.L399
	lhi	%r0,0
.L399:
	tml	%r0,1
	bner	%r14
.L400:
	ler	%f0,%f2
	br	%r14
.L403:
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
	jo	.L406
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	jo	.L412
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	jne	.L417
	lhi	%r0,1
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jl	.L411
	lhi	%r0,0
.L411:
	tml	%r0,1
	je	.L409
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L410:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f5,128(%r15)
	ld	%f7,136(%r15)
	std	%f5,96(%r15)
	std	%f7,104(%r15)
.L406:
	ld	%f12,96(%r15)
	ld	%f14,104(%r15)
	std	%f12,0(%r2)
	std	%f14,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L417:
	.cfi_restore_state
	ltr	%r1,%r1
	je	.L406
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
.L409:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L410
.L412:
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L406
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
	je	.L420
	larl	%r4,.LANCHOR1
.L421:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r5,0(%r3,%r4)
	mvc	0(1,%r1),0(%r5)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L421
.L420:
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
	je	.L436
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r4,15,0(%r2)
	ber	%r14
	st	%r2,4(%r4)
	br	%r14
.L436:
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
	je	.L439
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L439:
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
	je	.L449
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L473
.L461:
	srl	%r11,1
.L451:
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L448
	ar	%r12,%r10
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L448
	ar	%r12,%r10
	brct	%r11,.L451
.L449:
	l	%r1,100(%r15)
	lr	%r2,%r13
	ahi	%r2,1
	st	%r2,0(%r1)
	msr	%r13,%r10
	lr	%r8,%r7
	ar	%r8,%r13
	ltr	%r10,%r10
	je	.L448
	lr	%r4,%r10
	lr	%r3,%r9
	lr	%r2,%r8
	brasl	%r14,memmove
.L448:
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
.L473:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L448
	ar	%r12,%r10
	chi	%r13,1
	jne	.L461
	j	.L449
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
	je	.L476
	lr	%r10,%r2
	lr	%r9,%r5
	lr	%r12,%r3
	lr	%r11,%r13
	tml	%r13,1
	jne	.L497
.L485:
	srl	%r11,1
.L478:
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L475
	ar	%r12,%r9
	lr	%r8,%r12
	lr	%r3,%r12
	lr	%r2,%r10
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L475
	ar	%r12,%r9
	brct	%r11,.L478
.L476:
	lhi	%r8,0
.L475:
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
.L497:
	.cfi_restore_state
	lr	%r8,%r3
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L475
	ar	%r12,%r9
	chi	%r13,1
	jne	.L485
	lhi	%r8,0
	j	.L475
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
.L502:
	mvc	103(1,%r15),0(%r3)
	lhi	%r1,255
	n	%r1,100(%r15)
	cli	103(%r15),32
	je	.L504
	ahi	%r1,-9
	lr	%r2,%r5
	slr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	ltr	%r2,%r2
	je	.L517
.L504:
	ahi	%r3,1
	j	.L502
.L517:
	lhi	%r0,255
	n	%r0,100(%r15)
	cli	103(%r15),43
	je	.L511
	chi	%r0,45
	je	.L518
	lhi	%r5,0
	ic	%r1,0(%r3)
	lhi	%r4,255
	nr	%r4,%r1
	ahi	%r4,-48
	lhi	%r0,9
	clr	%r4,%r0
	jle	.L507
.L519:
	ltr	%r5,%r5
	jne	.L501
	lcr	%r2,%r2
.L501:
	l	%r15,164(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L518:
	.cfi_restore_state
	lhi	%r5,1
.L505:
	ahi	%r3,1
	j	.L506
.L507:
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
.L506:
	ic	%r1,0(%r3)
	lhi	%r4,255
	nr	%r4,%r1
	ahi	%r4,-48
	lhi	%r0,9
	clr	%r4,%r0
	jle	.L507
	j	.L519
.L511:
	lhi	%r5,0
	j	.L505
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
.L524:
	mvc	103(1,%r15),0(%r1)
	lhi	%r2,255
	n	%r2,100(%r15)
	cli	103(%r15),32
	je	.L526
	ahi	%r2,-9
	lr	%r4,%r12
	slr	%r4,%r2
	lhi	%r0,0
	alcr	%r0,%r0
	ltr	%r0,%r0
	je	.L542
.L526:
	ahi	%r1,1
	j	.L524
.L542:
	lhi	%r3,255
	n	%r3,100(%r15)
	cli	103(%r15),43
	je	.L527
	chi	%r3,45
	je	.L543
.L528:
	ic	%r2,0(%r1)
	lhi	%r4,255
	nr	%r4,%r2
	ahi	%r4,-48
	lhi	%r12,0
	lhi	%r13,0
	lhi	%r5,9
	clr	%r4,%r5
	jh	.L530
.L529:
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
	jle	.L529
.L530:
	ltr	%r0,%r0
	jne	.L523
	lcr	%r12,%r12
	lcr	%r13,%r13
	jne	.L544
.L523:
	lr	%r2,%r12
	lr	%r3,%r13
	lm	%r12,%r15,152(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L543:
	.cfi_restore_state
	lhi	%r0,1
.L527:
	ahi	%r1,1
	j	.L528
.L544:
	ahi	%r12,-1
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
	je	.L547
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	j	.L550
.L557:
	jle	.L546
	ar	%r11,%r10
	lr	%r9,%r11
	ahi	%r12,-1
	sr	%r12,%r7
	ltr	%r12,%r12
	je	.L547
.L550:
	lr	%r7,%r12
	srl	%r7,1
	lr	%r11,%r7
	msr	%r11,%r10
	ar	%r11,%r9
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L557
	lr	%r12,%r7
	ltr	%r12,%r12
	jne	.L550
.L547:
	lhi	%r11,0
.L546:
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
	je	.L560
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	lr	%r11,%r4
	j	.L563
.L572:
	ltr	%r2,%r2
	jle	.L562
	ar	%r12,%r10
	lr	%r9,%r12
	ahi	%r11,-1
.L562:
	sra	%r11,1
	je	.L560
.L563:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jne	.L572
.L559:
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
.L560:
	.cfi_restore_state
	lhi	%r12,0
	j	.L559
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
	jl	.L580
.L577:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L580:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L577
	ahi	%r4,-1
	lr	%r2,%r4
	lr	%r3,%r5
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
	jl	.L593
.L590:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L593:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L590
	ahi	%r4,-1
	lr	%r2,%r4
	lr	%r3,%r5
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
	j	.L607
.L609:
	cr	%r3,%r1
	je	.L608
	ahi	%r2,4
.L607:
	icm	%r1,15,0(%r2)
	jne	.L609
	lhi	%r2,0
	br	%r14
.L608:
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
	je	.L612
	j	.L613
.L623:
	ltr	%r5,%r5
	je	.L613
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	jne	.L613
.L612:
	ltr	%r4,%r4
	jne	.L623
.L613:
	cr	%r4,%r5
	jl	.L618
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L618:
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
.L626:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	ber	%r14
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L626
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
	je	.L631
.L632:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L632
.L631:
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
	je	.L660
	lr	%r0,%r4
	tml	%r4,1
	je	.L648
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L662
	ltr	%r1,%r1
	je	.L662
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L660
.L648:
	srl	%r0,1
	l	%r5,0(%r2)
	c	%r5,0(%r3)
	jne	.L662
	ltr	%r5,%r5
	je	.L662
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
.L639:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	l	%r12,0(%r2)
	c	%r12,0(%r1)
	jne	.L638
	ltr	%r12,%r12
	je	.L638
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L637
.L642:
	lhi	%r2,0
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L637:
	.cfi_restore_state
	l	%r11,0(%r2)
	c	%r11,0(%r3)
	jne	.L638
	ltr	%r11,%r11
	jne	.L639
.L638:
	ltr	%r4,%r4
	je	.L642
	l	%r4,0(%r2)
	c	%r4,0(%r3)
	jl	.L643
	lhi	%r2,1
	jle	.L642
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L643:
	.cfi_restore_state
	lhi	%r2,-1
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L662:
	ltr	%r4,%r4
	je	.L660
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L665
	lhi	%r2,1
	bhr	%r14
.L660:
	lhi	%r2,0
	br	%r14
.L665:
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
	je	.L678
	lr	%r5,%r4
	tml	%r4,1
	jne	.L691
.L681:
	srl	%r5,1
.L673:
	c	%r3,0(%r2)
	je	.L689
	ahi	%r4,-1
	lr	%r1,%r2
	ahi	%r1,4
	lr	%r2,%r1
	c	%r3,0(%r1)
	je	.L689
	ahi	%r4,-1
	ahi	%r1,4
	lr	%r2,%r1
	brct	%r5,.L673
.L678:
	lhi	%r2,0
	br	%r14
.L691:
	c	%r3,0(%r2)
	je	.L689
	ahi	%r2,4
	ahi	%r4,-1
	jne	.L681
	j	.L678
.L689:
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
	je	.L717
	lr	%r0,%r4
	tml	%r4,1
	je	.L705
	clc	0(4,%r2),0(%r3)
	jne	.L718
	ahi	%r2,4
	ahi	%r3,4
	ahi	%r4,-1
	je	.L717
.L705:
	srl	%r0,1
	clc	0(4,%r2),0(%r3)
	jne	.L718
.L696:
	ahi	%r4,-1
	ahi	%r2,4
	lr	%r1,%r3
	ahi	%r1,4
	lr	%r3,%r1
	clc	0(4,%r2),0(%r1)
	jne	.L714
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r1,4
	lr	%r3,%r1
	brct	%r0,.L694
.L699:
	lhi	%r2,0
	br	%r14
.L694:
	clc	0(4,%r2),0(%r3)
	je	.L696
.L714:
	ltr	%r4,%r4
	je	.L699
	l	%r2,0(%r2)
	c	%r2,0(%r3)
	jl	.L700
	lhi	%r2,1
	jle	.L699
	br	%r14
.L700:
	lhi	%r2,-1
	br	%r14
.L718:
	ltr	%r4,%r4
	je	.L717
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jl	.L721
	lhi	%r2,1
	bhr	%r14
.L717:
	lhi	%r2,0
	br	%r14
.L721:
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
	je	.L729
	sll	%r4,2
	brasl	%r14,memcpy
.L729:
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
	larl	%r13,.L782
	cr	%r2,%r3
	je	.L736
	lr	%r5,%r4
	ahi	%r5,-1
	lr	%r0,%r2
	sr	%r0,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r0,%r1
	jhe	.L781
	ltr	%r4,%r4
	je	.L736
	lr	%r1,%r5
	sll	%r1,2
	n	%r5,.L783-.L782(%r13)
	ahi	%r5,1
	lhi	%r4,3
	nr	%r4,%r5
	je	.L751
	chi	%r4,1
	je	.L767
	chi	%r4,2
	je	.L768
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
.L768:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,-4
.L767:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,-4
	chi	%r1,-4
	je	.L736
.L751:
	srl	%r5,2
.L739:
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
	brct	%r5,.L739
.L736:
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L781:
	.cfi_restore_state
	lhi	%r1,0
	ltr	%r4,%r4
	je	.L736
	lhi	%r0,3
	nr	%r0,%r4
	je	.L760
	chi	%r0,1
	je	.L765
	chi	%r0,2
	je	.L766
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	ahi	%r5,-1
	lhi	%r1,4
.L766:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L765:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r5,%r5
	je	.L736
.L760:
	srl	%r4,2
	lr	%r5,%r4
.L738:
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
	brct	%r5,.L738
	j	.L736
	.section	.rodata
	.align	8
.L782:
.L783:
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
	je	.L795
	chi	%r0,1
	je	.L799
	chi	%r0,2
	je	.L800
	st	%r3,0(%r2)
	ahi	%r5,-1
	ahi	%r1,4
.L800:
	st	%r3,0(%r1)
	ahi	%r5,-1
	ahi	%r1,4
.L799:
	st	%r3,0(%r1)
	ahi	%r1,4
	ltr	%r5,%r5
	ber	%r14
.L795:
	srl	%r4,2
.L786:
	st	%r3,0(%r1)
	st	%r3,4(%r1)
	st	%r3,8(%r1)
	st	%r3,12(%r1)
	ahi	%r1,16
	brct	%r4,.L786
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
	jhe	.L809
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	lhi	%r5,3
	nr	%r5,%r4
	je	.L824
	chi	%r5,1
	je	.L837
	chi	%r5,2
	jne	.L854
.L838:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L837:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	brct	%r4,.L824
	br	%r14
.L809:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	lr	%r5,%r4
	lhi	%r0,3
	nr	%r0,%r4
	je	.L833
	chi	%r0,1
	je	.L839
	chi	%r0,2
	je	.L840
	mvc	0(1,%r3),0(%r2)
	lhi	%r1,1
.L840:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
.L839:
	ic	%r0,0(%r1,%r2)
	stc	%r0,0(%r1,%r3)
	ahi	%r1,1
	cr	%r4,%r1
	ber	%r14
.L833:
	srl	%r5,2
.L812:
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
	brct	%r5,.L812
	br	%r14
.L824:
	srl	%r1,2
.L811:
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
	brct	%r1,.L811
	br	%r14
.L854:
	ic	%r0,0(%r4,%r2)
	stc	%r0,0(%r4,%r3)
	ahi	%r4,-1
	j	.L838
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
	larl	%r5,.L872
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	sll	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L873-.L872(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L872:
.L873:
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
	larl	%r5,.L876
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r0
	n	%r2,.L877-.L876(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L876:
.L877:
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
	larl	%r5,.L884
	lrvr	%r2,%r2
	srl	%r2,16
	n	%r2,.L885-.L884(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L884:
.L885:
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
.L893:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	ahi	%r1,1
	lr	%r3,%r1
	tml	%r4,1
	jne	.L901
	ahi	%r1,1
	lr	%r0,%r2
	srl	%r0,0(%r3)
	tml	%r0,1
	jne	.L901
	lr	%r4,%r2
	srl	%r4,0(%r1)
	lr	%r1,%r3
	ahi	%r1,2
	tml	%r4,1
	jne	.L901
	lr	%r3,%r2
	srl	%r3,0(%r1)
	ahi	%r1,1
	tml	%r3,1
	jne	.L901
	brct	%r5,.L893
	lhi	%r2,0
	br	%r14
.L901:
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
	je	.L908
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L907:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	bner	%r14
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L907
	br	%r14
.L908:
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
	larl	%r5,.L918
	lhi	%r2,1
	keb	%f0,.L919-.L918(%r5)
	blr	%r14
	keb	%f0,.L920-.L918(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L918:
.L920:
	.long	2139095039
.L919:
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
	larl	%r5,.L926
	lhi	%r2,1
	kdb	%f0,.L927-.L926(%r5)
	blr	%r14
	kdb	%f0,.L928-.L926(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L926:
.L928:
	.long	2146435071
	.long	-1
.L927:
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
	larl	%r5,.L934
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L935-.L934(%r5)
	ld	%f3,.L935-.L934+8(%r5)
	lhi	%r2,1
	kxbr	%f0,%f1
	blr	%r14
	ld	%f1,.L936-.L934(%r5)
	ld	%f3,.L936-.L934+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L934:
.L936:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L935:
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
	larl	%r5,.L953
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	lr	%r1,%r2
	ltr	%r2,%r2
	jl	.L952
	le	%f1,.L954-.L953(%r5)
.L943:
	tml	%r1,1
	je	.L942
	meebr	%f0,%f1
.L942:
	lr	%r2,%r1
	srl	%r2,31
	ar	%r2,%r1
	sra	%r2,1
	lr	%r1,%r2
	ltr	%r2,%r2
	ber	%r14
	meebr	%f1,%f1
	j	.L943
.L952:
	le	%f1,.L955-.L953(%r5)
	j	.L943
	.section	.rodata
	.align	8
.L953:
.L955:
	.long	1056964608
.L954:
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
	larl	%r5,.L970
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	lr	%r1,%r2
	ltr	%r2,%r2
	jl	.L969
	ld	%f1,.L971-.L970(%r5)
.L960:
	tml	%r1,1
	je	.L959
	mdbr	%f0,%f1
.L959:
	lr	%r2,%r1
	srl	%r2,31
	ar	%r2,%r1
	sra	%r2,1
	lr	%r1,%r2
	ltr	%r2,%r2
	ber	%r14
	mdbr	%f1,%f1
	j	.L960
.L969:
	ld	%f1,.L972-.L970(%r5)
	j	.L960
	.section	.rodata
	.align	8
.L970:
.L972:
	.long	1071644672
	.long	0
.L971:
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
	larl	%r5,.L988
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L974
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L974
	lr	%r1,%r4
	ltr	%r4,%r4
	jl	.L986
	ld	%f0,.L989-.L988(%r5)
	ld	%f2,.L989-.L988+8(%r5)
	j	.L977
.L987:
	mxbr	%f0,%f0
.L977:
	tml	%r1,1
	je	.L976
	mxbr	%f1,%f0
.L976:
	lr	%r4,%r1
	srl	%r4,31
	ar	%r4,%r1
	sra	%r4,1
	lr	%r1,%r4
	ltr	%r4,%r4
	jne	.L987
.L974:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L986:
	ld	%f0,.L990-.L988(%r5)
	ld	%f2,.L990-.L988+8(%r5)
	j	.L977
	.section	.rodata
	.align	8
.L988:
.L990:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L989:
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
	je	.L1002
	chi	%r0,1
	je	.L1006
	chi	%r0,2
	je	.L1007
	xc	0(1,%r2),0(%r3)
	lhi	%r1,1
.L1007:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
.L1006:
	ic	%r0,0(%r1,%r2)
	ic	%r12,0(%r1,%r3)
	xr	%r0,%r12
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r1,%r5
	je	.L992
.L1002:
	srl	%r4,2
.L993:
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
	brct	%r4,.L993
.L992:
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
	je	.L1020
.L1021:
	ahi	%r1,1
	cli	0(%r1),0
	jne	.L1021
.L1020:
	ltr	%r4,%r4
	je	.L1043
	lr	%r0,%r4
	tml	%r4,1
	je	.L1032
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1044
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	je	.L1043
.L1032:
	srl	%r0,1
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L1044
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
.L1024:
	lr	%r11,%r3
	ahi	%r11,1
	ahi	%r1,1
	ahi	%r4,-1
	ic	%r3,1(%r3)
	stc	%r3,0(%r1)
	tml	%r3,255
	je	.L1040
	lr	%r3,%r11
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L1022
	mvi	0(%r1),0
.L1025:
	lm	%r11,%r12,44(%r15)
	.cfi_remember_state
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1022:
	.cfi_restore_state
	ic	%r11,0(%r3)
	stc	%r11,0(%r1)
	tml	%r11,255
	jne	.L1024
.L1040:
	ltr	%r4,%r4
	jne	.L1025
	mvi	0(%r1),0
	j	.L1025
.L1044:
	.cfi_restore 11
	.cfi_restore 12
	ltr	%r4,%r4
	bner	%r14
.L1043:
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
	je	.L1063
	lr	%r4,%r3
	tml	%r3,1
	jne	.L1066
.L1057:
	srl	%r4,1
.L1050:
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	la	%r5,0(%r2,%r1)
	cli	0(%r5),0
	ber	%r14
	ahi	%r2,1
	brct	%r4,.L1050
	br	%r14
.L1066:
	cli	0(%r1),0
	ber	%r14
	lhi	%r2,1
	cr	%r3,%r2
	jne	.L1057
	br	%r14
.L1063:
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
	icm	%r5,1,0(%r2)
	je	.L1073
.L1077:
	lr	%r1,%r3
	lhi	%r4,255
	nr	%r5,%r4
	j	.L1072
.L1071:
	ahi	%r1,1
	cr	%r0,%r5
	ber	%r14
.L1072:
	lhi	%r0,0
	ic	%r0,0(%r1)
	ltr	%r0,%r0
	jne	.L1071
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L1077
.L1073:
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
.L1081:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L1080
	lr	%r2,%r1
.L1080:
	ahi	%r1,1
	tml	%r4,255
	jne	.L1081
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
	je	.L1087
.L1088:
	ahi	%r9,1
	cli	0(%r9),0
	jne	.L1088
.L1087:
	slr	%r9,%r3
	jhe	.L1089
	lhi	%r1,255
	nr	%r10,%r1
	ahi	%r9,-1
	j	.L1095
.L1113:
	ahi	%r2,1
	ltr	%r0,%r0
	je	.L1112
.L1095:
	lhi	%r0,0
	ic	%r0,0(%r2)
	cr	%r0,%r10
	jne	.L1113
	ltr	%r2,%r2
	je	.L1089
	lr	%r4,%r3
	icm	%r12,1,0(%r2)
	je	.L1091
	lr	%r1,%r2
	lr	%r5,%r9
	ahi	%r5,1
.L1092:
	lhi	%r0,0
	ic	%r0,0(%r4)
	ltr	%r0,%r0
	je	.L1091
	brct	%r5,.L1107
.L1091:
	clm	%r12,1,0(%r4)
	je	.L1089
	ahi	%r2,1
	j	.L1095
.L1107:
	lhi	%r11,255
	nr	%r11,%r12
	cr	%r0,%r11
	jne	.L1091
	ahi	%r1,1
	ahi	%r4,1
	icm	%r12,1,0(%r1)
	jne	.L1092
	j	.L1091
.L1112:
	lhi	%r2,0
.L1089:
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
	larl	%r5,.L1126
	kdb	%f0,.L1127-.L1126(%r5)
	jl	.L1125
.L1116:
	kdb	%f0,.L1127-.L1126(%r5)
	jnh	.L1119
	kdb	%f2,.L1127-.L1126(%r5)
	jl	.L1118
.L1119:
	br	%r14
.L1125:
	kdb	%f2,.L1127-.L1126(%r5)
	jnh	.L1116
.L1118:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1126:
.L1127:
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
	je	.L1128
	clr	%r3,%r8
	jl	.L1138
	sr	%r3,%r8
	alr	%r3,%r2
	lr	%r9,%r3
	jnle	.L1138
	lhi	%r7,0
	ic	%r7,0(%r4)
	j	.L1135
.L1130:
	clr	%r1,%r9
	jh	.L1138
.L1135:
	ic	%r3,0(%r1)
	lr	%r2,%r1
	ahi	%r1,1
	lhi	%r5,255
	nr	%r3,%r5
	cr	%r3,%r7
	jne	.L1130
	lr	%r3,%r4
	ahi	%r3,1
	lr	%r0,%r8
	ahi	%r0,-1
	je	.L1128
	lr	%r5,%r1
	lr	%r10,%r0
	tml	%r0,1
	je	.L1147
	clc	1(1,%r4),0(%r1)
	jne	.L1155
	ahi	%r5,1
	ahi	%r3,1
	ahi	%r0,-1
	je	.L1128
.L1147:
	srl	%r10,1
.L1131:
	clc	0(1,%r3),0(%r5)
	jne	.L1155
	ahi	%r0,-1
	ahi	%r5,1
	ahi	%r3,1
	clc	0(1,%r3),0(%r5)
	jne	.L1155
	ahi	%r0,-1
	ahi	%r5,1
	ahi	%r3,1
	brct	%r10,.L1131
.L1128:
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
.L1155:
	.cfi_restore_state
	ltr	%r0,%r0
	je	.L1128
	clc	0(1,%r3),0(%r5)
	je	.L1128
	clr	%r1,%r9
	jle	.L1135
.L1138:
	lhi	%r2,0
	lm	%r6,%r12,24(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
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
	je	.L1161
	brasl	%r14,memmove
.L1161:
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
	larl	%r5,.L1195
	kdb	%f0,.L1196-.L1195(%r5)
	jl	.L1193
	lhi	%r3,0
	kdb	%f0,.L1197-.L1195(%r5)
	jnhe	.L1189
.L1194:
	lhi	%r1,0
.L1172:
	ahi	%r1,1
	mdb	%f0,.L1198-.L1195(%r5)
	kdb	%f0,.L1197-.L1195(%r5)
	jhe	.L1172
.L1173:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L1193:
	lcdbr	%f0,%f0
	lhi	%r3,1
	kdb	%f0,.L1197-.L1195(%r5)
	jhe	.L1194
.L1189:
	kdb	%f0,.L1198-.L1195(%r5)
	lhi	%r1,0
	jnl	.L1173
	cdb	%f0,.L1196-.L1195(%r5)
	je	.L1173
.L1175:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1198-.L1195(%r5)
	jnl	.L1173
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L1198-.L1195(%r5)
	jl	.L1175
	j	.L1173
	.section	.rodata
	.align	8
.L1195:
.L1198:
	.long	1071644672
	.long	0
.L1197:
	.long	1072693248
	.long	0
.L1196:
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
	je	.L1203
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
.L1202:
	lhi	%r10,0
	lhi	%r11,1
	nr	%r11,%r1
	lcr	%r2,%r10
	lcr	%r3,%r11
	je	.L1205
	ahi	%r2,-1
.L1205:
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
	jne	.L1202
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
.L1203:
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
	jhe	.L1229
.L1212:
	ltr	%r3,%r3
	jl	.L1213
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1213
	ltr	%r3,%r3
	jl	.L1213
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1213
	brct	%r2,.L1212
.L1221:
	lhi	%r2,0
	ltr	%r4,%r4
	ber	%r14
.L1231:
	lr	%r2,%r5
	br	%r14
.L1213:
	ltr	%r1,%r1
	je	.L1221
.L1229:
	lhi	%r2,0
.L1217:
	clr	%r5,%r3
	jl	.L1216
	sr	%r5,%r3
	or	%r2,%r1
.L1216:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1217
	ltr	%r4,%r4
	ber	%r14
	j	.L1231
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
	je	.L1235
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
.L1235:
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
	je	.L1250
.L1245:
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
.L1250:
	cr	%r5,%r1
	jne	.L1245
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
.L1254:
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
	jne	.L1254
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
	jl	.L1260
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1325
.L1260:
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ltr	%r5,%r5
	je	.L1263
	sll	%r5,3
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-8
	srl	%r0,3
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1286
	chi	%r11,1
	je	.L1302
	chi	%r11,2
	je	.L1303
	lm	%r10,%r11,0(%r3)
	stm	%r10,%r11,0(%r2)
	lhi	%r5,8
.L1303:
	l	%r13,0(%r5,%r3)
	l	%r11,4(%r5,%r3)
	st	%r13,0(%r5,%r2)
	st	%r11,4(%r5,%r2)
	ahi	%r5,8
.L1302:
	l	%r10,0(%r5,%r3)
	l	%r13,4(%r5,%r3)
	st	%r10,0(%r5,%r2)
	st	%r13,4(%r5,%r2)
	ahi	%r5,8
	cr	%r12,%r5
	je	.L1263
.L1286:
	srl	%r0,2
.L1264:
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
	brct	%r0,.L1264
.L1263:
	clr	%r4,%r1
	jle	.L1259
	lr	%r5,%r4
	sr	%r5,%r1
	lhi	%r0,3
	nr	%r0,%r5
	je	.L1277
	chi	%r0,1
	je	.L1304
	chi	%r0,2
	je	.L1305
	ic	%r13,0(%r1,%r3)
	stc	%r13,0(%r1,%r2)
	ahi	%r1,1
.L1305:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1304:
	ic	%r12,0(%r1,%r3)
	stc	%r12,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1259
.L1277:
	srl	%r5,2
.L1265:
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
	brct	%r5,.L1265
.L1259:
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L1325:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1295
	chi	%r5,1
	je	.L1300
	chi	%r5,2
	je	.L1301
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1301:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1300:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1295:
	srl	%r4,2
.L1261:
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
	brct	%r4,.L1261
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
	jl	.L1328
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jle	.L1381
.L1328:
	ltr	%r1,%r1
	je	.L1377
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
	je	.L1345
	chi	%r12,1
	je	.L1361
	chi	%r12,2
	je	.L1362
	lh	%r1,0(%r3)
	sth	%r1,0(%r2)
	lhi	%r1,2
.L1362:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
.L1361:
	lh	%r12,0(%r1,%r3)
	sth	%r12,0(%r1,%r2)
	ahi	%r1,2
	cr	%r0,%r1
	je	.L1331
.L1345:
	srl	%r5,2
.L1332:
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
	brct	%r5,.L1332
.L1331:
	tml	%r4,1
	je	.L1327
	ahi	%r4,-1
	ic	%r3,0(%r4,%r3)
	stc	%r3,0(%r4,%r2)
.L1327:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L1381:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r0,3
	nr	%r0,%r4
	je	.L1354
	chi	%r0,1
	je	.L1359
	chi	%r0,2
	je	.L1360
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1360:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1359:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1354:
	srl	%r4,2
.L1329:
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
	brct	%r4,.L1329
	br	%r14
.L1377:
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
	jl	.L1384
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jle	.L1449
.L1384:
	stm	%r11,%r12,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	ltr	%r5,%r5
	je	.L1387
	sll	%r5,2
	lr	%r12,%r5
	lhi	%r5,0
	lr	%r0,%r12
	ahi	%r0,-4
	srl	%r0,2
	ahi	%r0,1
	lhi	%r11,3
	nr	%r11,%r0
	je	.L1410
	chi	%r11,1
	je	.L1426
	chi	%r11,2
	je	.L1427
	l	%r5,0(%r3)
	st	%r5,0(%r2)
	lhi	%r5,4
.L1427:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
.L1426:
	l	%r11,0(%r5,%r3)
	st	%r11,0(%r5,%r2)
	ahi	%r5,4
	cr	%r12,%r5
	je	.L1387
.L1410:
	srl	%r0,2
.L1388:
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
	brct	%r0,.L1388
.L1387:
	clr	%r4,%r1
	jle	.L1383
	lr	%r12,%r4
	sr	%r12,%r1
	lhi	%r0,3
	nr	%r0,%r12
	je	.L1401
	chi	%r0,1
	je	.L1428
	chi	%r0,2
	je	.L1429
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L1429:
	ic	%r11,0(%r1,%r3)
	stc	%r11,0(%r1,%r2)
	ahi	%r1,1
.L1428:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,1
	cr	%r4,%r1
	je	.L1383
.L1401:
	srl	%r12,2
.L1389:
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
	brct	%r12,.L1389
.L1383:
	lm	%r11,%r12,44(%r15)
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
.L1449:
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r5,3
	nr	%r5,%r4
	je	.L1419
	chi	%r5,1
	je	.L1424
	chi	%r5,2
	je	.L1425
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
.L1425:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,-1
.L1424:
	ic	%r0,0(%r1,%r3)
	stc	%r0,0(%r1,%r2)
	ahi	%r1,-1
	chi	%r1,-1
	ber	%r14
.L1419:
	srl	%r4,2
.L1385:
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
	brct	%r4,.L1385
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
	larl	%r5,.L1456
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L1457-.L1456(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1456:
.L1457:
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
	larl	%r5,.L1461
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jhe	.L1459
	adb	%f0,.L1462-.L1461(%r5)
.L1459:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L1461:
.L1462:
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
.L1473:
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r1,%r3
	sra	%r1,0(%r12)
	tml	%r1,1
	jne	.L1471
	lr	%r1,%r2
	ahi	%r1,1
	lr	%r2,%r1
	lr	%r12,%r4
	sr	%r12,%r1
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1471
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1471
	ahi	%r2,1
	lr	%r12,%r4
	sr	%r12,%r2
	lr	%r0,%r3
	sra	%r0,0(%r12)
	tml	%r0,1
	jne	.L1471
	ahi	%r1,3
	lr	%r2,%r1
	brct	%r5,.L1473
.L1471:
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
.L1484:
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
	brct	%r4,.L1484
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
	larl	%r5,.L1500
	keb	%f0,.L1501-.L1500(%r5)
	jhe	.L1499
	cfebr	%r2,5,%f0
	br	%r14
.L1499:
	seb	%f0,.L1501-.L1500(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L1502-.L1500(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L1500:
.L1501:
	.long	1191182336
.L1502:
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
.L1504:
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
	brct	%r5,.L1504
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
.L1512:
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
	brct	%r5,.L1512
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
.L1521:
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
	jne	.L1521
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
.L1528:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	ber	%r14
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r0,%r1
	nr	%r0,%r4
	ar	%r2,%r0
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L1528
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
	jle	.L1552
.L1535:
	ltr	%r3,%r3
	jl	.L1536
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1536
	ltr	%r3,%r3
	jl	.L1536
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1536
	brct	%r2,.L1535
.L1544:
	lhi	%r2,0
	ltr	%r4,%r4
	ber	%r14
.L1554:
	lr	%r2,%r5
	br	%r14
.L1536:
	ltr	%r1,%r1
	je	.L1544
.L1552:
	lhi	%r2,0
.L1540:
	clr	%r5,%r3
	jl	.L1539
	sr	%r5,%r3
	or	%r2,%r1
.L1539:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1540
	ltr	%r4,%r4
	ber	%r14
	j	.L1554
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
	jl	.L1559
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1559:
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
	jl	.L1564
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L1564:
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
	jl	.L1584
	lhi	%r0,0
.L1571:
	ltr	%r3,%r3
	je	.L1576
	lhi	%r5,32
	lhi	%r2,0
	j	.L1573
.L1585:
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	je	.L1572
.L1573:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	jne	.L1585
.L1572:
	ltr	%r0,%r0
	ber	%r14
.L1586:
	lcr	%r2,%r2
	br	%r14
.L1584:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L1571
.L1576:
	lhi	%r2,0
	ltr	%r0,%r0
	ber	%r14
	j	.L1586
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
	jl	.L1613
	lhi	%r0,0
.L1589:
	ltr	%r3,%r3
	jhe	.L1590
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r0,%r1
.L1590:
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r2,%r3
	jle	.L1611
	lhi	%r4,8
.L1592:
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1591
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1591
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1591
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L1591
	brct	%r4,.L1592
.L1599:
	lhi	%r4,0
	lr	%r2,%r4
	ltr	%r0,%r0
	ber	%r14
.L1614:
	lcr	%r2,%r4
	br	%r14
.L1591:
	ltr	%r1,%r1
	je	.L1599
.L1611:
	lhi	%r4,0
.L1595:
	clr	%r5,%r3
	jl	.L1594
	sr	%r5,%r3
	or	%r4,%r1
.L1594:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1595
	lr	%r2,%r4
	ltr	%r0,%r0
	ber	%r14
	j	.L1614
.L1613:
	lcr	%r2,%r2
	lhi	%r0,1
	j	.L1589
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
	jl	.L1641
	lhi	%r0,0
.L1617:
	lr	%r5,%r2
	lpr	%r1,%r3
	lhi	%r3,1
	clr	%r2,%r1
	jle	.L1630
	lhi	%r4,8
.L1619:
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1640
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1640
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1640
	sll	%r1,1
	sll	%r3,1
	clr	%r2,%r1
	jle	.L1640
	brct	%r4,.L1619
	lr	%r2,%r5
	ltr	%r0,%r0
	ber	%r14
.L1642:
	lcr	%r2,%r5
	br	%r14
.L1630:
	clr	%r5,%r1
	jl	.L1621
	sr	%r5,%r1
.L1621:
	srl	%r3,1
	srl	%r1,1
.L1640:
	ltr	%r3,%r3
	jne	.L1630
	lr	%r2,%r5
	ltr	%r0,%r0
	ber	%r14
	j	.L1642
.L1641:
	lcr	%r2,%r2
	lhi	%r0,1
	j	.L1617
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
	larl	%r13,.L1661
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L1646
	lhi	%r2,16
.L1645:
	tml	%r3,32768
	jne	.L1646
	sll	%r3,1
	n	%r3,.L1662-.L1661(%r13)
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1646
	brct	%r2,.L1645
	lhi	%r1,0
.L1646:
	tml	%r1,65535
	je	.L1654
	lhi	%r2,0
.L1650:
	clr	%r5,%r3
	jl	.L1649
	sr	%r5,%r3
	n	%r5,.L1662-.L1661(%r13)
	or	%r2,%r1
.L1649:
	n	%r1,.L1662-.L1661(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1650
.L1648:
	ltr	%r4,%r4
	je	.L1651
	lr	%r2,%r5
.L1651:
	n	%r2,.L1662-.L1661(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1654:
	.cfi_restore_state
	lr	%r2,%r1
	j	.L1648
	.section	.rodata
	.align	8
.L1661:
.L1662:
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
	jle	.L1681
.L1664:
	ltr	%r3,%r3
	jl	.L1665
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1665
	ltr	%r3,%r3
	jl	.L1665
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L1665
	brct	%r2,.L1664
.L1673:
	lhi	%r2,0
	ltr	%r4,%r4
	ber	%r14
.L1683:
	lr	%r2,%r5
	br	%r14
.L1665:
	ltr	%r1,%r1
	je	.L1673
.L1681:
	lhi	%r2,0
.L1669:
	clr	%r5,%r3
	jl	.L1668
	sr	%r5,%r3
	or	%r2,%r1
.L1668:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	jne	.L1669
	ltr	%r4,%r4
	ber	%r14
	j	.L1683
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
	je	.L1686
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lhi	%r1,0
	lr	%r3,%r1
	br	%r14
.L1686:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	sll	%r2,0(%r4)
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
	je	.L1692
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
	lr	%r2,%r1
	br	%r14
.L1692:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
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
	larl	%r13,.L1705
	lr	%r1,%r2
	cl	%r2,.L1706-.L1705(%r13)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r0,%r3
	sll	%r0,4
	lhi	%r2,16
	sr	%r2,%r0
	srl	%r1,0(%r2)
	l	%r5,.L1707-.L1705(%r13)
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
	jne	.L1702
	sr	%r2,%r1
	ar	%r4,%r0
	ar	%r2,%r4
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L1702:
	.cfi_restore_state
	lhi	%r2,0
	ar	%r4,%r0
	ar	%r2,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L1705:
.L1707:
	.long	65280
.L1706:
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
	jl	.L1712
	jh	.L1713
	clr	%r3,%r5
	jl	.L1712
	jh	.L1713
	lhi	%r2,1
	br	%r14
.L1712:
	lhi	%r2,0
	br	%r14
.L1713:
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
	jl	.L1719
	jh	.L1720
	clr	%r3,%r5
	jl	.L1719
	jh	.L1720
	lhi	%r2,1
	ahi	%r2,-1
	br	%r14
.L1719:
	lhi	%r2,0
	ahi	%r2,-1
	br	%r14
.L1720:
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
	larl	%r13,.L1724
	lr	%r1,%r2
	l	%r3,.L1725-.L1724(%r13)
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
.L1724:
.L1725:
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
	je	.L1727
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r1,0
	lr	%r2,%r1
	br	%r14
.L1727:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	lr	%r2,%r1
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1734
	lr	%r5,%r3
	l	%r4,.L1735-.L1734(%r13)
	nr	%r4,%r2
	l	%r1,.L1735-.L1734(%r13)
	nr	%r1,%r3
	lr	%r3,%r4
	msr	%r3,%r1
	lr	%r12,%r3
	srl	%r12,16
	srl	%r2,16
	lr	%r0,%r2
	msr	%r1,%r2
	ar	%r1,%r12
	l	%r12,.L1735-.L1734(%r13)
	nr	%r12,%r1
	srl	%r5,16
	lr	%r2,%r4
	msr	%r2,%r5
	ar	%r2,%r12
	n	%r3,.L1735-.L1734(%r13)
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
.L1734:
.L1735:
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
	larl	%r13,.L1738
	lr	%r0,%r3
	l	%r12,.L1739-.L1738(%r13)
	nr	%r12,%r3
	l	%r1,.L1739-.L1738(%r13)
	nr	%r1,%r5
	lr	%r3,%r12
	msr	%r3,%r1
	lr	%r11,%r3
	srl	%r11,16
	lr	%r10,%r0
	srl	%r10,16
	msr	%r1,%r10
	ar	%r1,%r11
	l	%r11,.L1739-.L1738(%r13)
	nr	%r11,%r1
	lr	%r9,%r5
	srl	%r9,16
	msr	%r12,%r9
	ar	%r12,%r11
	n	%r3,.L1739-.L1738(%r13)
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
.L1738:
.L1739:
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
	je	.L1741
	ahi	%r2,-1
.L1741:
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
	larl	%r13,.L1749
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r2,.L1750-.L1749(%r13)
	nr	%r2,%r0
	l	%r3,.L1750-.L1749(%r13)
	nr	%r3,%r1
	slr	%r5,%r3
	slbr	%r4,%r2
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,2
	l	%r2,.L1751-.L1749(%r13)
	nr	%r2,%r0
	l	%r3,.L1751-.L1749(%r13)
	nr	%r3,%r1
	l	%r0,.L1751-.L1749(%r13)
	nr	%r0,%r4
	l	%r1,.L1751-.L1749(%r13)
	nr	%r1,%r5
	alr	%r3,%r1
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r12,.L1752-.L1749(%r13)
	nr	%r12,%r2
	l	%r4,.L1752-.L1749(%r13)
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
.L1749:
.L1752:
	.long	252645135
.L1751:
	.long	858993459
.L1750:
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
	larl	%r5,.L1755
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1756-.L1755(%r5)
	sr	%r2,%r1
	lr	%r0,%r2
	srl	%r0,2
	n	%r0,.L1757-.L1755(%r5)
	n	%r2,.L1757-.L1755(%r5)
	ar	%r2,%r0
	lr	%r3,%r2
	srl	%r3,4
	ar	%r3,%r2
	n	%r3,.L1758-.L1755(%r5)
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
.L1755:
.L1758:
	.long	252645135
.L1757:
	.long	858993459
.L1756:
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
	larl	%r5,.L1769
	ldr	%f2,%f0
	lr	%r3,%r2
	ld	%f0,.L1770-.L1769(%r5)
	j	.L1762
.L1768:
	mdbr	%f2,%f2
.L1762:
	tml	%r3,1
	je	.L1760
	mdbr	%f0,%f2
.L1760:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	jne	.L1768
	ltr	%r2,%r2
	bher	%r14
	ld	%f1,.L1770-.L1769(%r5)
	ddbr	%f1,%f0
	ldr	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1769:
.L1770:
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
	larl	%r5,.L1781
	ler	%f2,%f0
	lr	%r3,%r2
	le	%f0,.L1782-.L1781(%r5)
	j	.L1774
.L1780:
	meebr	%f2,%f2
.L1774:
	tml	%r3,1
	je	.L1772
	meebr	%f0,%f2
.L1772:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	jne	.L1780
	ltr	%r2,%r2
	bher	%r14
	le	%f1,.L1782-.L1781(%r5)
	debr	%f1,%f0
	ler	%f0,%f1
	br	%r14
	.section	.rodata
	.align	8
.L1781:
.L1782:
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
	jl	.L1787
	jh	.L1788
	clr	%r3,%r5
	jl	.L1787
	jh	.L1788
	lhi	%r2,1
	br	%r14
.L1787:
	lhi	%r2,0
	br	%r14
.L1788:
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
	jl	.L1794
	jh	.L1795
	clr	%r3,%r5
	jl	.L1794
	jh	.L1795
	lhi	%r2,1
	ahi	%r2,-1
	br	%r14
.L1794:
	lhi	%r2,0
	ahi	%r2,-1
	br	%r14
.L1795:
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
