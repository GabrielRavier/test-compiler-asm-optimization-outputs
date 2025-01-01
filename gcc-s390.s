	.file	"mini-libc.c"
	.machinemode esa
	.machine "zEC12+nohtm"
.text
	.align	8
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
.L4:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
	brct	%r1,.L4
	br	%r14
.L2:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	sr	%r4,%r1
.L5:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L5
	br	%r14
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
	je	.L19
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r0,%r5
.L12:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r1,%r4
	je	.L27
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
	brct	%r0,.L12
	lhi	%r2,0
	j	.L11
.L19:
	.cfi_restore 12
	lhi	%r2,0
	br	%r14
.L27:
	.cfi_offset 12, -48
	ahi	%r2,1
.L11:
	l	%r12,48(%r15)
	.cfi_restore 12
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
	je	.L36
	lr	%r1,%r4
.L30:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	ber	%r14
	ahi	%r2,1
	ahi	%r4,-1
	brct	%r1,.L30
	lhi	%r2,0
	br	%r14
.L36:
	lhi	%r2,0
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
	je	.L49
	lr	%r1,%r4
.L42:
	lhi	%r0,0
	ic	%r0,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r0,%r5
	jne	.L53
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
	brct	%r1,.L42
	lhi	%r2,0
	br	%r14
.L49:
	lhi	%r2,0
	br	%r14
.L53:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
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
	lhi	%r1,0
	sr	%r4,%r1
.L57:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L57
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
	lhi	%r1,255
	nr	%r3,%r1
	ahi	%r4,-1
	lr	%r1,%r2
	ar	%r1,%r4
	ahi	%r4,2
.L62:
	brct	%r4,.L64
	j	.L65
.L64:
	lr	%r2,%r1
	ahi	%r1,-1
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r5,%r3
	jne	.L62
	br	%r14
.L65:
	lhi	%r2,0
	br	%r14
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
	lr	%r1,%r2
.L69:
	stc	%r3,0(%r1)
	ahi	%r1,1
	brct	%r4,.L69
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
.L75:
	ahi	%r3,1
	ahi	%r2,1
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	jne	.L75
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
	icm	%r1,1,0(%r2)
	ber	%r14
.L79:
	lhi	%r4,255
	nr	%r1,%r4
	cr	%r1,%r3
	ber	%r14
	ahi	%r2,1
	icm	%r1,1,0(%r2)
	jne	.L79
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
.L88:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r4,%r3
	ber	%r14
	ahi	%r2,1
	tml	%r1,255
	jne	.L88
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	ic	%r4,0(%r2)
	ic	%r5,0(%r3)
	lhi	%r12,255
	nr	%r12,%r4
	lhi	%r0,255
	nr	%r0,%r5
	lhi	%r1,1
	ahi	%r3,-1
	cr	%r0,%r12
	jne	.L93
.L92:
	tml	%r4,255
	je	.L93
	ic	%r4,0(%r1,%r2)
	ahi	%r1,1
	ic	%r5,0(%r1,%r3)
	lhi	%r0,255
	nr	%r0,%r4
	lhi	%r12,255
	nr	%r12,%r5
	cr	%r0,%r12
	je	.L92
.L93:
	lhi	%r2,255
	nr	%r2,%r4
	lhi	%r1,255
	nr	%r5,%r1
	sr	%r2,%r5
	l	%r12,48(%r15)
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
	lr	%r4,%r2
	cli	0(%r2),0
	je	.L100
.L101:
	ahi	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r2)
	ltr	%r3,%r3
	jne	.L101
.L100:
	sr	%r2,%r4
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
	ltr	%r4,%r4
	je	.L110
	icm	%r5,1,0(%r2)
	je	.L107
.L108:
	icm	%r1,1,0(%r3)
	je	.L107
	brct	%r4,.L111
	j	.L107
.L111:
	lhi	%r0,255
	nr	%r1,%r0
	nr	%r0,%r5
	cr	%r1,%r0
	jne	.L107
	ahi	%r2,1
	ahi	%r3,1
	icm	%r5,1,0(%r2)
	jne	.L108
.L107:
	lhi	%r2,255
	nr	%r2,%r5
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L110:
	lhi	%r2,0
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
	nr	%r1,%r4
	ahi	%r1,-2
	srl	%r1,1
	ahi	%r1,1
.L115:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	brct	%r1,.L115
	br	%r14
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
	lhi	%r1,25
	clr	%r2,%r1
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
	je	.L125
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L125:
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
	jle	.L129
	lhi	%r1,127
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L129:
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
	je	.L141
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L141:
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
	larl	%r5,.L151
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L147
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L148
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L149
	a	%r2,.L152-.L151(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L147:
	lhi	%r2,1
	br	%r14
.L148:
	lhi	%r2,1
	br	%r14
.L149:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L151:
.L152:
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
	larl	%r5,.L164
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L163
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L158
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L165-.L164(%r5)
	jle	.L159
	l	%r1,.L166-.L164(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L160
	l	%r1,.L167-.L164(%r5)
	ar	%r1,%r2
	cl	%r1,.L168-.L164(%r5)
	jh	.L161
	n	%r2,.L169-.L164(%r5)
	x	%r2,.L169-.L164(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L163:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L158:
	lhi	%r2,1
	br	%r14
.L159:
	lhi	%r2,1
	br	%r14
.L160:
	lhi	%r2,1
	br	%r14
.L161:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L164:
.L169:
	.long	65534
.L168:
	.long	1048579
.L167:
	.long	-65532
.L166:
	.long	-57344
.L165:
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
	jle	.L172
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L172:
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
	larl	%r5,.L185
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L180
	kdbr	%f0,%f2
	jnh	.L183
	sdbr	%f0,%f2
	br	%r14
.L180:
	ldr	%f0,%f2
	br	%r14
.L183:
	ld	%f0,.L186-.L185(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L185:
.L186:
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
	larl	%r5,.L196
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L191
	kebr	%f0,%f2
	jnh	.L194
	sebr	%f0,%f2
	br	%r14
.L191:
	ler	%f0,%f2
	br	%r14
.L194:
	le	%f0,.L197-.L196(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L196:
.L197:
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
	jo	.L204
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L200
	ltr	%r1,%r1
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L200:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L203
	lhi	%r1,0
.L203:
	tml	%r1,255
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L204:
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
	jo	.L214
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L210
	ltr	%r1,%r1
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L210:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L213
	lhi	%r1,0
.L213:
	tml	%r1,255
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L214:
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
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-144
	.cfi_def_cfa_offset 240
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	jo	.L225
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L219
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
	je	.L220
	ltr	%r1,%r1
	je	.L219
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L219
.L220:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L224
	lhi	%r1,0
.L224:
	tml	%r1,255
	je	.L222
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L223:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
.L219:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L222:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L223
.L225:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L219
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
	jo	.L234
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L230
	ltr	%r1,%r1
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L230:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L233
	lhi	%r1,0
.L233:
	tml	%r1,255
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L234:
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
	jo	.L245
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L241
	ltr	%r1,%r1
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L241:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L244
	lhi	%r1,0
.L244:
	tml	%r1,255
	je	.L243
	ler	%f2,%f0
.L243:
	ler	%f0,%f2
	br	%r14
.L245:
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
	st	%r15,60(%r15)
	.cfi_offset 15, -36
	ahi	%r15,-144
	.cfi_def_cfa_offset 240
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	std	%f0,112(%r15)
	std	%f2,120(%r15)
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L251
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	jo	.L257
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	cr	%r1,%r3
	je	.L252
	ltr	%r1,%r1
	je	.L251
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L251
.L252:
	lhi	%r1,1
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jl	.L256
	lhi	%r1,0
.L256:
	tml	%r1,255
	je	.L254
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L255:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
.L251:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L254:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L255
.L257:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
	j	.L251
	.cfi_endproc
.LFE36:
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.text
	.align	8
.globl l64a
	.type	l64a, @function
l64a:
.LFB37:
	.cfi_startproc
	ltr	%r2,%r2
	je	.L263
	larl	%r1,s.0
	larl	%r4,digits
.L262:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L262
.L261:
	mvi	0(%r1),0
	larl	%r2,s.0
	br	%r14
.L263:
	larl	%r1,s.0
	j	.L261
	.cfi_endproc
.LFE37:
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align	8
.globl srand
	.type	srand, @function
srand:
.LFB38:
	.cfi_startproc
	larl	%r1,seed
	lhi	%r3,0
	st	%r3,0(%r1)
	ahi	%r2,-1
	st	%r2,4(%r1)
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
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r1,seed
	lm	%r4,%r5,0(%r1)
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
	stm	%r2,%r3,0(%r1)
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
.globl insque
	.type	insque, @function
insque:
.LFB40:
	.cfi_startproc
	ltr	%r3,%r3
	je	.L274
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	st	%r2,4(%r1)
	br	%r14
.L274:
	lhi	%r1,0
	st	%r1,4(%r2)
	st	%r1,0(%r2)
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
	je	.L277
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L277:
	icm	%r1,15,4(%r2)
	ber	%r14
	l	%r2,0(%r2)
	st	%r2,0(%r1)
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
	lr	%r8,%r2
	st	%r3,96(%r15)
	st	%r4,100(%r15)
	lr	%r9,%r5
	icm	%r13,15,0(%r4)
	je	.L281
	lr	%r12,%r3
	lhi	%r10,0
	lr	%r11,%r13
	sr	%r11,%r10
.L283:
	lr	%r7,%r12
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L280
	ahi	%r10,1
	ar	%r12,%r9
	brct	%r11,.L283
.L281:
	l	%r1,100(%r15)
	lr	%r2,%r13
	ahi	%r2,1
	st	%r2,0(%r1)
	lr	%r2,%r13
	msr	%r2,%r9
	lr	%r4,%r9
	lr	%r3,%r8
	a	%r2,96(%r15)
	brasl	%r14,memcpy
	lr	%r7,%r2
.L280:
	lr	%r2,%r7
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
	icm	%r11,15,0(%r4)
	je	.L291
	lr	%r9,%r2
	lr	%r8,%r5
	lr	%r12,%r3
	lhi	%r10,0
	sr	%r11,%r10
.L290:
	lr	%r7,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L288
	ahi	%r10,1
	ar	%r12,%r8
	brct	%r11,.L290
	lhi	%r7,0
.L288:
	lr	%r2,%r7
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
.L291:
	.cfi_restore_state
	lhi	%r7,0
	j	.L288
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
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r12,%r2
	j	.L299
.L300:
	ahi	%r12,1
.L299:
	ic	%r11,0(%r12)
	lhi	%r2,255
	nr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L300
	stc	%r11,103(%r15)
	cli	103(%r15),43
	je	.L306
	cli	103(%r15),45
	jne	.L307
	lhi	%r4,1
.L301:
	ahi	%r12,1
.L302:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jh	.L304
.L303:
	lr	%r3,%r2
	sll	%r3,2
	ar	%r3,%r2
	sll	%r3,1
	ahi	%r12,1
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r3
	sr	%r2,%r1
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jle	.L303
.L304:
	ltr	%r4,%r4
	jne	.L298
	lcr	%r2,%r2
.L298:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L306:
	.cfi_restore_state
	lr	%r4,%r2
	j	.L301
.L307:
	lr	%r4,%r2
	j	.L302
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	8
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
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r12,%r2
	j	.L313
.L314:
	ahi	%r12,1
.L313:
	ic	%r11,0(%r12)
	lhi	%r2,255
	nr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L314
	stc	%r11,103(%r15)
	cli	103(%r15),43
	je	.L320
	cli	103(%r15),45
	jne	.L321
	lhi	%r4,1
.L315:
	ahi	%r12,1
.L316:
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jh	.L318
.L317:
	lr	%r3,%r2
	sll	%r3,2
	ar	%r3,%r2
	sll	%r3,1
	ahi	%r12,1
	lhi	%r2,255
	nr	%r1,%r2
	ahi	%r1,-48
	lr	%r2,%r3
	sr	%r2,%r1
	ic	%r1,0(%r12)
	lhi	%r3,255
	nr	%r3,%r1
	ahi	%r3,-48
	lhi	%r5,9
	clr	%r3,%r5
	jle	.L317
.L318:
	ltr	%r4,%r4
	jne	.L312
	lcr	%r2,%r2
.L312:
	lm	%r11,%r15,148(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L320:
	.cfi_restore_state
	lr	%r4,%r2
	j	.L315
.L321:
	lr	%r4,%r2
	j	.L316
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	8
.globl atoll
	.type	atoll, @function
atoll:
.LFB47:
	.cfi_startproc
	stm	%r11,%r15,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r12,%r2
	j	.L327
.L328:
	ahi	%r12,1
.L327:
	ic	%r11,0(%r12)
	lhi	%r2,255
	nr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r0,%r2
	jne	.L328
	stc	%r11,103(%r15)
	cli	103(%r15),43
	je	.L329
	cli	103(%r15),45
	jne	.L330
	lhi	%r0,1
.L329:
	ahi	%r12,1
.L330:
	ic	%r1,0(%r12)
	lhi	%r4,255
	nr	%r4,%r1
	ahi	%r4,-48
	lhi	%r2,0
	lhi	%r3,0
	lhi	%r5,9
	clr	%r4,%r5
	jh	.L332
.L331:
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,2
	alr	%r3,%r5
	alcr	%r2,%r4
	sldl	%r2,1
	ahi	%r12,1
	lhi	%r4,255
	nr	%r1,%r4
	ahi	%r1,-48
	lr	%r4,%r1
	lhi	%r5,0
	srda	%r4,32
	slr	%r3,%r5
	slbr	%r2,%r4
	ic	%r1,0(%r12)
	lhi	%r4,255
	nr	%r4,%r1
	ahi	%r4,-48
	lhi	%r5,9
	clr	%r4,%r5
	jle	.L331
.L332:
	ltr	%r0,%r0
	jne	.L326
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L326
	ahi	%r2,-1
.L326:
	lm	%r11,%r15,148(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	lr	%r8,%r3
	lr	%r9,%r5
	ltr	%r12,%r4
	jne	.L343
	lhi	%r11,0
	j	.L340
.L345:
	lr	%r12,%r10
.L342:
	ltr	%r12,%r12
	je	.L348
.L343:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	ar	%r11,%r8
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L345
	jle	.L340
	ar	%r11,%r9
	lr	%r8,%r11
	ahi	%r12,-1
	sr	%r12,%r10
	j	.L342
.L348:
	lhi	%r11,0
.L340:
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
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r10,%r5
	l	%r7,192(%r15)
	lr	%r11,%r4
	ltr	%r4,%r4
	jne	.L353
	lhi	%r12,0
	j	.L350
.L352:
	sra	%r11,1
	je	.L357
.L353:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L350
	ltr	%r2,%r2
	jle	.L352
	ar	%r12,%r10
	lr	%r9,%r12
	ahi	%r11,-1
	j	.L352
.L357:
	lhi	%r12,0
.L350:
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
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
.LFB51:
	.cfi_startproc
	lr	%r4,%r2
	lr	%r5,%r3
	ltr	%r2,%r2
	jl	.L365
.L362:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L365:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L362
	ahi	%r4,-1
	j	.L362
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	8
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
.globl llabs
	.type	llabs, @function
llabs:
.LFB55:
	.cfi_startproc
	lr	%r4,%r2
	lr	%r5,%r3
	ltr	%r2,%r2
	jl	.L378
.L375:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L378:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L375
	ahi	%r4,-1
	j	.L375
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.align	8
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
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	icm	%r1,15,0(%r2)
	je	.L390
.L384:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L384
	lhi	%r2,0
	br	%r14
.L390:
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
	l	%r4,0(%r2)
	l	%r5,0(%r3)
	lhi	%r1,4
	ahi	%r3,-4
	cr	%r4,%r5
	jne	.L394
.L393:
	ltr	%r4,%r4
	je	.L394
	ltr	%r5,%r5
	je	.L394
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	je	.L393
.L394:
	cr	%r4,%r5
	jl	.L399
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L399:
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
.L403:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L403
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
	lr	%r3,%r2
	icm	%r1,15,0(%r2)
	je	.L408
.L409:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L409
.L408:
	sr	%r2,%r3
	sra	%r2,2
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
	je	.L423
	lr	%r5,%r4
.L414:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L416
	ltr	%r1,%r1
	je	.L416
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r5,.L414
	lhi	%r2,0
	br	%r14
.L423:
	lhi	%r2,0
	br	%r14
.L419:
	lhi	%r2,1
	cr	%r4,%r1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L416:
	l	%r4,0(%r2)
	l	%r1,0(%r3)
	cr	%r4,%r1
	jhe	.L419
	lhi	%r2,-1
	br	%r14
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
	je	.L434
	lr	%r1,%r4
.L428:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
	brct	%r1,.L428
	lhi	%r2,0
	br	%r14
.L434:
	lhi	%r2,0
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
	je	.L449
	lr	%r1,%r4
.L440:
	clc	0(4,%r2),0(%r3)
	jne	.L453
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r1,.L440
	lhi	%r2,0
	br	%r14
.L449:
	lhi	%r2,0
	br	%r14
.L445:
	lhi	%r2,1
	cr	%r4,%r1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L453:
	l	%r4,0(%r2)
	l	%r1,0(%r3)
	cr	%r4,%r1
	jhe	.L445
	lhi	%r2,-1
	br	%r14
	.cfi_endproc
.LFE63:
	.size	wmemcmp, .-wmemcmp
	.align	8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
.LFB64:
	.cfi_startproc
	lr	%r5,%r4
	ahi	%r5,-1
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
.L457:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
	brct	%r4,.L457
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L473
	cr	%r2,%r3
	je	.L462
	lr	%r5,%r2
	sr	%r5,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r5,%r1
	jl	.L463
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,0
	lr	%r5,%r0
	ahi	%r5,1
	ltr	%r4,%r4
	je	.L462
.L464:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r0,-1
	ahi	%r1,4
	brct	%r5,.L464
	j	.L462
.L463:
	lr	%r5,%r4
	ahi	%r5,-1
	ltr	%r4,%r4
	je	.L462
	lr	%r1,%r5
	sll	%r1,2
	l	%r4,.L474-.L473(%r13)
	nr	%r4,%r5
	ahi	%r4,1
.L465:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
	brct	%r4,.L465
.L462:
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L473:
.L474:
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
	lr	%r4,%r2
	lr	%r1,%r5
	ahi	%r1,1
.L477:
	st	%r3,0(%r4)
	ahi	%r5,-1
	ahi	%r4,4
	brct	%r1,.L477
	br	%r14
	.cfi_endproc
.LFE66:
	.size	wmemset, .-wmemset
	.align	8
.globl bcopy
	.type	bcopy, @function
bcopy:
.LFB67:
	.cfi_startproc
	clr	%r2,%r3
	jhe	.L482
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
.L484:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
	brct	%r1,.L484
	br	%r14
.L482:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	sr	%r4,%r1
.L485:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	brct	%r4,.L485
	br	%r14
	.cfi_endproc
.LFE67:
	.size	bcopy, .-bcopy
	.align	8
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
.LFB72:
	.cfi_startproc
	rll	%r2,%r2,0(%r3)
	br	%r14
	.cfi_endproc
.LFE72:
	.size	rotl_sz, .-rotl_sz
	.align	8
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
.globl rotl16
	.type	rotl16, @function
rotl16:
.LFB74:
	.cfi_startproc
	larl	%r5,.L507
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r1
	n	%r2,.L508-.L507(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L507:
.L508:
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
	larl	%r5,.L511
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r1
	n	%r2,.L512-.L511(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L511:
.L512:
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
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,7
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r1
	lhi	%r1,255
	nr	%r2,%r1
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
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,7
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r1
	lhi	%r1,255
	nr	%r2,%r1
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
	larl	%r5,.L519
	lr	%r1,%r2
	srl	%r1,8
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L520-.L519(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L519:
.L520:
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
	larl	%r5,.L523
	lr	%r1,%r2
	sll	%r2,24
	lr	%r3,%r1
	srl	%r3,24
	or	%r2,%r3
	lr	%r3,%r1
	srl	%r3,8
	n	%r3,.L524-.L523(%r5)
	or	%r2,%r3
	sll	%r1,8
	n	%r1,.L525-.L523(%r5)
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L523:
.L525:
	.long	16711680
.L524:
	.long	65280
	.align	2
.text
	.cfi_endproc
.LFE79:
	.size	bswap_32, .-bswap_32
	.align	8
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
	larl	%r13,.L528
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
	l	%r3,.L529-.L528(%r13)
	nr	%r3,%r11
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,24
	n	%r1,.L530-.L528(%r13)
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,8
	l	%r12,.L531-.L528(%r13)
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
	n	%r0,.L529-.L528(%r13)
	or	%r2,%r0
	sldl	%r4,40
	n	%r4,.L530-.L528(%r13)
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
.L528:
.L531:
	.long	-16777216
.L530:
	.long	16711680
.L529:
	.long	65280
	.align	2
.text
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
	lhi	%r3,32
.L535:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L538
	ahi	%r1,1
	brct	%r3,.L535
	lhi	%r2,0
	br	%r14
.L538:
	ahi	%r1,1
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
	je	.L543
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L542:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L542
	br	%r14
.L543:
	lr	%r2,%r1
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
	larl	%r5,.L552
	keb	%f0,.L553-.L552(%r5)
	jl	.L550
	lhi	%r2,1
	keb	%f0,.L554-.L552(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L550:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L552:
.L554:
	.long	2139095039
.L553:
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
	larl	%r5,.L560
	kdb	%f0,.L561-.L560(%r5)
	jl	.L558
	lhi	%r2,1
	kdb	%f0,.L562-.L560(%r5)
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L558:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L560:
.L562:
	.long	2146435071
	.long	-1
.L561:
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
	larl	%r5,.L568
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L569-.L568(%r5)
	ld	%f3,.L569-.L568+8(%r5)
	kxbr	%f0,%f1
	jl	.L566
	lhi	%r2,1
	ld	%f1,.L570-.L568(%r5)
	ld	%f3,.L570-.L568+8(%r5)
	kxbr	%f0,%f1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L566:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L568:
.L570:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L569:
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
	larl	%r5,.L581
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L580
	le	%f2,.L582-.L581(%r5)
	j	.L577
.L580:
	le	%f2,.L583-.L581(%r5)
	j	.L577
.L576:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L577:
	tml	%r2,1
	je	.L576
	meebr	%f0,%f2
	j	.L576
	.section	.rodata
	.align	8
.L581:
.L583:
	.long	1056964608
.L582:
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
	larl	%r5,.L592
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L591
	ld	%f2,.L593-.L592(%r5)
	j	.L588
.L591:
	ld	%f2,.L594-.L592(%r5)
	j	.L588
.L587:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L588:
	tml	%r2,1
	je	.L587
	mdbr	%f0,%f2
	j	.L587
	.section	.rodata
	.align	8
.L592:
.L594:
	.long	1071644672
	.long	0
.L593:
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
	larl	%r5,.L603
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L596
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L596
	ltr	%r4,%r4
	jl	.L602
	ld	%f0,.L604-.L603(%r5)
	ld	%f2,.L604-.L603+8(%r5)
	j	.L599
.L602:
	ld	%f0,.L605-.L603(%r5)
	ld	%f2,.L605-.L603+8(%r5)
	j	.L599
.L598:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L596
	mxbr	%f0,%f0
.L599:
	tml	%r4,1
	je	.L598
	mxbr	%f1,%f0
	j	.L598
.L596:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L603:
.L605:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L604:
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
	lhi	%r1,0
	sr	%r4,%r1
.L608:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	bcr	7,%r0
	brct	%r4,.L608
	br	%r14
	.cfi_endproc
.LFE90:
	.size	memxor, .-memxor
	.align	8
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
	je	.L614
	lr	%r0,%r4
.L613:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L613
.L614:
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
	lr	%r1,%r2
	lhi	%r2,0
	ltr	%r3,%r3
	je	.L630
	lr	%r5,%r3
	sr	%r5,%r2
.L623:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	brct	%r5,.L623
	lr	%r2,%r3
	br	%r14
.L630:
	lr	%r2,%r3
	br	%r14
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
	je	.L641
.L635:
	lr	%r1,%r3
	lhi	%r4,255
	nr	%r5,%r4
.L638:
	icm	%r4,1,0(%r1)
	je	.L642
	ahi	%r1,1
	lhi	%r0,255
	nr	%r4,%r0
	cr	%r4,%r5
	jne	.L638
	br	%r14
.L641:
	lhi	%r2,0
	br	%r14
.L642:
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L635
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
	lhi	%r2,0
	j	.L646
.L645:
	ahi	%r1,1
	tml	%r4,255
	ber	%r14
.L646:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L645
	lr	%r2,%r1
	j	.L645
	.cfi_endproc
.LFE94:
	.size	strrchr, .-strrchr
	.align	8
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
	jhe	.L655
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
.L653:
	lr	%r3,%r9
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L651
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L651
	lr	%r2,%r12
	ahi	%r2,1
	j	.L653
.L655:
	lr	%r12,%r2
.L651:
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
.globl copysign
	.type	copysign, @function
copysign:
.LFB96:
	.cfi_startproc
	larl	%r5,.L670
	kdb	%f0,.L671-.L670(%r5)
	jl	.L669
	kdb	%f0,.L671-.L670(%r5)
	jnh	.L662
	kdb	%f2,.L671-.L670(%r5)
	jl	.L661
.L662:
	br	%r14
.L669:
	kdb	%f2,.L671-.L670(%r5)
	jnh	.L662
.L661:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L670:
.L671:
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
	stm	%r8,%r15,32(%r15)
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
	ltr	%r10,%r5
	je	.L672
	clr	%r3,%r10
	jl	.L677
	sr	%r3,%r10
	alr	%r3,%r2
	lr	%r11,%r3
	jnle	.L678
	lhi	%r9,0
	ic	%r9,0(%r4)
	ahi	%r10,-1
	ahi	%r4,1
	lr	%r8,%r4
	j	.L675
.L674:
	ahi	%r12,1
	clr	%r11,%r12
	jl	.L682
.L675:
	lhi	%r1,0
	ic	%r1,0(%r12)
	cr	%r1,%r9
	jne	.L674
	lr	%r4,%r10
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L674
	lr	%r2,%r12
	j	.L672
.L682:
	lhi	%r2,0
.L672:
	lm	%r8,%r15,128(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_def_cfa_offset 96
	br	%r14
.L677:
	.cfi_restore_state
	lhi	%r2,0
	j	.L672
.L678:
	lhi	%r2,0
	j	.L672
	.cfi_endproc
.LFE97:
	.size	memmem, .-memmem
	.align	8
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
.globl frexp
	.type	frexp, @function
frexp:
.LFB99:
	.cfi_startproc
	larl	%r5,.L710
	kdb	%f0,.L711-.L710(%r5)
	jl	.L709
	lhi	%r3,0
.L688:
	kdb	%f0,.L712-.L710(%r5)
	jnhe	.L706
	lhi	%r1,0
.L692:
	ahi	%r1,1
	mdb	%f0,.L713-.L710(%r5)
	kdb	%f0,.L712-.L710(%r5)
	jhe	.L692
.L693:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L709:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L688
.L706:
	kdb	%f0,.L713-.L710(%r5)
	jnl	.L707
	cdb	%f0,.L711-.L710(%r5)
	je	.L699
	lhi	%r1,0
.L695:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L713-.L710(%r5)
	jl	.L695
	j	.L693
.L707:
	lhi	%r1,0
	j	.L693
.L699:
	lhi	%r1,0
	j	.L693
	.section	.rodata
	.align	8
.L710:
.L713:
	.long	1071644672
	.long	0
.L712:
	.long	1072693248
	.long	0
.L711:
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
	lr	%r1,%r3
	or	%r3,%r2
	je	.L718
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
	j	.L717
.L720:
	lr	%r7,%r4
	nr	%r7,%r12
	lr	%r4,%r5
	nr	%r4,%r13
	alr	%r3,%r4
	alcr	%r2,%r7
	sldl	%r12,1
	srdl	%r0,1
	lr	%r4,%r0
	or	%r4,%r1
	je	.L725
.L717:
	lhi	%r8,0
	lhi	%r4,1
	nr	%r4,%r1
	lr	%r9,%r4
	lcr	%r4,%r8
	lcr	%r5,%r9
	je	.L720
	ahi	%r4,-1
	j	.L720
.L718:
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
.L725:
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
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
.LFB101:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L735
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L728:
	ltr	%r3,%r3
	jl	.L735
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L730
	ahi	%r2,-1
	brct	%r0,.L728
.L731:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L733:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L731
.L734:
	clr	%r5,%r3
	jl	.L733
	sr	%r5,%r3
	or	%r2,%r1
	j	.L733
.L730:
	ltr	%r1,%r1
	je	.L742
.L735:
	lhi	%r2,0
	j	.L734
.L742:
	lr	%r2,%r1
	j	.L731
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
	je	.L746
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
.L746:
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
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srda	%r0,63
	xr	%r2,%r0
	xr	%r3,%r1
	cr	%r4,%r0
	je	.L761
.L756:
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
.L761:
	cr	%r5,%r1
	jne	.L756
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
	je	.L766
	lhi	%r2,0
.L765:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L765
	br	%r14
.L766:
	lr	%r2,%r4
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
	lr	%r5,%r4
	srl	%r5,3
	lhi	%r1,-8
	nr	%r1,%r4
	clr	%r2,%r3
	jhe	.L771
.L774:
	ltr	%r5,%r5
	je	.L794
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r5,3
	ahi	%r5,-8
	srl	%r5,3
	ahi	%r5,1
.L777:
	l	%r10,0(%r12,%r3)
	l	%r11,4(%r12,%r3)
	st	%r10,0(%r12,%r2)
	st	%r11,4(%r12,%r2)
	ahi	%r12,8
	brct	%r5,.L777
	clr	%r4,%r1
	jle	.L770
	sr	%r4,%r1
.L778:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L778
.L770:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L771:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L774
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L775:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L775
	br	%r14
.L794:
	clr	%r4,%r1
	bler	%r14
	sr	%r4,%r1
.L790:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L790
	br	%r14
	.cfi_endproc
.LFE105:
	.size	__cmovd, .-__cmovd
	.align	8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
.LFB106:
	.cfi_startproc
	lr	%r1,%r4
	srl	%r1,1
	clr	%r2,%r3
	jhe	.L797
.L800:
	ltr	%r1,%r1
	je	.L799
	lhi	%r5,0
	sll	%r1,1
	ahi	%r1,-2
	srl	%r1,1
	ahi	%r1,1
.L803:
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahi	%r5,2
	brct	%r1,.L803
.L799:
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L797:
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r2,%r5
	jh	.L800
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L801:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L801
	br	%r14
	.cfi_endproc
.LFE106:
	.size	__cmovh, .-__cmovh
	.align	8
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
	jhe	.L812
.L815:
	ltr	%r5,%r5
	je	.L835
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r5,2
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
.L818:
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	ahi	%r12,4
	brct	%r5,.L818
	clr	%r4,%r1
	jle	.L811
	sr	%r4,%r1
.L819:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L819
.L811:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L812:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r2,%r0
	jh	.L815
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L816:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L816
	br	%r14
.L835:
	clr	%r4,%r1
	bler	%r14
	sr	%r4,%r1
.L831:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L831
	br	%r14
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
	larl	%r5,.L842
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L843-.L842(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L842:
.L843:
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
	larl	%r5,.L848
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L847
.L845:
	ledbr	%f0,%f0
	br	%r14
.L847:
	adb	%f0,.L849-.L848(%r5)
	j	.L845
	.section	.rodata
	.align	8
.L848:
.L849:
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
.globl __umodi
	.type	__umodi, @function
__umodi:
.LFB113:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r4,0
	dlr	%r4,%r3
	lr	%r2,%r4
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
	lr	%r5,%r2
	lhi	%r2,0
	lhi	%r0,15
	lhi	%r1,16
.L860:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L860
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
	lr	%r4,%r2
	lhi	%r2,0
	lhi	%r1,16
.L866:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L866
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
	larl	%r5,.L878
	keb	%f0,.L879-.L878(%r5)
	jhe	.L877
	cfebr	%r2,5,%f0
	br	%r14
.L877:
	seb	%f0,.L879-.L878(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L880-.L878(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L878:
.L879:
	.long	1191182336
.L880:
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
	lr	%r5,%r2
	lhi	%r2,0
	lhi	%r4,0
	lhi	%r3,16
.L882:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L882
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
	lr	%r5,%r2
	lhi	%r2,0
	lhi	%r4,0
	lhi	%r3,16
.L887:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L887
	br	%r14
	.cfi_endproc
.LFE118:
	.size	__popcounthi2, .-__popcounthi2
	.align	8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
.LFB119:
	.cfi_startproc
	ltr	%r4,%r2
	je	.L894
	lhi	%r2,0
.L893:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L893
	br	%r14
.L894:
	lr	%r2,%r4
	br	%r14
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	ltr	%r4,%r2
	je	.L901
	ltr	%r3,%r3
	je	.L902
	lhi	%r2,0
.L900:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L900
	br	%r14
.L901:
	lr	%r2,%r4
	br	%r14
.L902:
	lr	%r2,%r3
	br	%r14
	.cfi_endproc
.LFE120:
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
.LFB121:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L914
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L907:
	ltr	%r3,%r3
	jl	.L914
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L909
	ahi	%r2,-1
	brct	%r0,.L907
.L910:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L912:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L910
.L913:
	clr	%r5,%r3
	jl	.L912
	sr	%r5,%r3
	or	%r2,%r1
	j	.L912
.L909:
	ltr	%r1,%r1
	je	.L921
.L914:
	lhi	%r2,0
	j	.L913
.L921:
	lr	%r2,%r1
	j	.L910
	.cfi_endproc
.LFE121:
	.size	__udivmodsi4, .-__udivmodsi4
	.align	8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
.LFB122:
	.cfi_startproc
	kebr	%f0,%f2
	jl	.L926
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L926:
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
	jl	.L931
	lhi	%r2,1
	bhr	%r14
	lhi	%r2,0
	br	%r14
.L931:
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r4,%r2
	lhi	%r5,0
	srda	%r4,32
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	lr	%r1,%r4
	msr	%r1,%r13
	lr	%r2,%r12
	msr	%r2,%r5
	ar	%r1,%r2
	lr	%r3,%r13
	mlr	%r2,%r5
	ar	%r2,%r1
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	lr	%r4,%r2
	ltr	%r3,%r3
	jl	.L946
	lhi	%r0,0
	ltr	%r3,%r3
	je	.L947
.L943:
	lhi	%r5,32
	lhi	%r2,0
.L941:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	je	.L940
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L941
.L940:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L946:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L943
.L947:
	lr	%r2,%r3
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
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r2,%r2
	jl	.L958
	ltr	%r3,%r3
	jl	.L959
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	j	.L949
.L958:
	lcr	%r2,%r2
	ltr	%r3,%r3
	jl	.L960
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
.L953:
	lcr	%r2,%r2
.L949:
	lm	%r14,%r15,152(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
.L959:
	.cfi_restore_state
	lhi	%r4,0
	lcr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L953
.L960:
	lhi	%r4,0
	lcr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L949
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
.LFB128:
	.cfi_startproc
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r2,%r2
	jl	.L966
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L962
.L966:
	lhi	%r4,1
	lpr	%r3,%r3
	lcr	%r2,%r2
	brasl	%r14,__udivmodsi4
	lcr	%r2,%r2
.L962:
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
	.cfi_endproc
.LFE128:
	.size	__modsi3, .-__modsi3
	.align	8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
.LFB129:
	.cfi_startproc
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L987
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L976
	lhi	%r1,1
	lhi	%r0,16
.L969:
	tml	%r3,32768
	jne	.L976
	sll	%r3,1
	n	%r3,.L988-.L987(%r13)
	lr	%r2,%r1
	sll	%r2,1
	lr	%r1,%r2
	clr	%r5,%r3
	jle	.L971
	brct	%r0,.L969
	lhi	%r2,0
.L972:
	ltr	%r4,%r4
	jne	.L986
.L977:
	n	%r2,.L988-.L987(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L974:
	.cfi_restore_state
	n	%r1,.L988-.L987(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L972
.L975:
	clr	%r5,%r3
	jl	.L974
	sr	%r5,%r3
	n	%r5,.L988-.L987(%r13)
	or	%r2,%r1
	j	.L974
.L971:
	tml	%r2,65535
	je	.L972
.L976:
	lhi	%r2,0
	j	.L975
.L986:
	lr	%r2,%r5
	j	.L977
	.section	.rodata
	.align	8
.L987:
.L988:
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
.LFB130:
	.cfi_startproc
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L997
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L990:
	ltr	%r3,%r3
	jl	.L997
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L992
	ahi	%r2,-1
	brct	%r0,.L990
.L993:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L995:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L993
.L996:
	clr	%r5,%r3
	jl	.L995
	sr	%r5,%r3
	or	%r2,%r1
	j	.L995
.L992:
	ltr	%r1,%r1
	je	.L1004
.L997:
	lhi	%r2,0
	j	.L996
.L1004:
	lr	%r2,%r1
	j	.L993
	.cfi_endproc
.LFE130:
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
.LFB131:
	.cfi_startproc
	tml	%r4,32
	je	.L1007
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lhi	%r1,0
.L1008:
	lr	%r3,%r1
	br	%r14
.L1007:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	sll	%r2,0(%r4)
	or	%r2,%r3
	j	.L1008
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
	je	.L1013
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L1014:
	lr	%r2,%r1
	br	%r14
.L1013:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1014
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
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
	larl	%r13,.L1020
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
	l	%r3,.L1021-.L1020(%r13)
	nr	%r3,%r11
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,24
	n	%r1,.L1022-.L1020(%r13)
	or	%r3,%r1
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,8
	l	%r12,.L1023-.L1020(%r13)
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
	n	%r0,.L1021-.L1020(%r13)
	or	%r2,%r0
	sldl	%r4,40
	n	%r4,.L1022-.L1020(%r13)
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
.L1020:
.L1023:
	.long	-16777216
.L1022:
	.long	16711680
.L1021:
	.long	65280
	.align	2
.text
	.cfi_endproc
.LFE133:
	.size	__bswapdi2, .-__bswapdi2
	.align	8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
.LFB134:
	.cfi_startproc
	larl	%r5,.L1026
	lr	%r1,%r2
	srl	%r2,24
	lr	%r3,%r1
	sll	%r3,24
	or	%r2,%r3
	lr	%r3,%r1
	srl	%r3,8
	n	%r3,.L1027-.L1026(%r5)
	or	%r2,%r3
	sll	%r1,8
	n	%r1,.L1028-.L1026(%r5)
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L1026:
.L1028:
	.long	16711680
.L1027:
	.long	65280
	.align	2
.text
	.cfi_endproc
.LFE134:
	.size	__bswapsi2, .-__bswapsi2
	.align	8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
.LFB135:
	.cfi_startproc
	larl	%r5,.L1033
	lr	%r1,%r2
	cl	%r2,.L1034-.L1033(%r5)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r3,%r3
	sll	%r3,4
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	l	%r2,.L1035-.L1033(%r5)
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	lhi	%r4,8
	sr	%r4,%r2
	srl	%r1,0(%r4)
	ar	%r3,%r2
	lhi	%r2,240
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,2
	lhi	%r4,4
	sr	%r4,%r2
	srl	%r1,0(%r4)
	ar	%r2,%r3
	lr	%r4,%r2
	lhi	%r3,12
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,1
	lhi	%r2,2
	sr	%r2,%r3
	srl	%r1,0(%r2)
	tml	%r1,2
	jne	.L1030
	lhi	%r2,2
	sr	%r2,%r1
.L1031:
	ar	%r3,%r4
	ar	%r2,%r3
	br	%r14
.L1030:
	lhi	%r2,0
	j	.L1031
	.section	.rodata
	.align	8
.L1033:
.L1035:
	.long	65280
.L1034:
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
	cr	%r4,%r2
	jh	.L1038
	jl	.L1039
	clr	%r3,%r5
	jl	.L1040
	jh	.L1041
	lhi	%r2,1
	br	%r14
.L1038:
	lhi	%r2,0
	br	%r14
.L1039:
	lhi	%r2,2
	br	%r14
.L1040:
	lhi	%r2,0
	br	%r14
.L1041:
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
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
.LFB138:
	.cfi_startproc
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L1048
	lr	%r1,%r2
	l	%r3,.L1049-.L1048(%r13)
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
	lhi	%r3,15
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,2
	srl	%r1,0(%r3)
	ar	%r2,%r3
	lhi	%r3,3
	nr	%r3,%r1
	ahi	%r3,-1
	srl	%r3,31
	sll	%r3,1
	srl	%r1,0(%r3)
	lhi	%r5,3
	nr	%r5,%r1
	lhi	%r4,1
	nr	%r1,%r4
	xr	%r1,%r4
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
.L1048:
.L1049:
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
	je	.L1051
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r1,0
.L1052:
	lr	%r2,%r1
	br	%r14
.L1051:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1052
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1058
	lr	%r5,%r3
	l	%r4,.L1059-.L1058(%r13)
	nr	%r4,%r2
	l	%r1,.L1059-.L1058(%r13)
	nr	%r1,%r3
	lr	%r3,%r4
	msr	%r3,%r1
	lr	%r12,%r3
	srl	%r12,16
	srl	%r2,16
	lr	%r0,%r2
	msr	%r1,%r2
	ar	%r1,%r12
	l	%r12,.L1059-.L1058(%r13)
	nr	%r12,%r1
	srl	%r5,16
	lr	%r2,%r4
	msr	%r2,%r5
	ar	%r2,%r12
	n	%r3,.L1059-.L1058(%r13)
	lr	%r12,%r2
	sll	%r12,16
	srl	%r1,16
	lr	%r4,%r0
	msr	%r4,%r5
	ar	%r1,%r4
	srl	%r2,16
	ar	%r2,%r1
	ar	%r3,%r12
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L1058:
.L1059:
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
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
.LFB142:
	.cfi_startproc
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L1064
	ahi	%r2,-1
.L1064:
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
	lhi	%r2,15
	nr	%r1,%r2
	lhi	%r2,27030
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r2,%r1
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
	lr	%r1,%r2
	srl	%r1,4
	xr	%r1,%r2
	lhi	%r2,15
	nr	%r1,%r2
	lhi	%r2,27030
	sra	%r2,0(%r1)
	lhi	%r1,1
	nr	%r2,%r1
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1072
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r12,.L1073-.L1072(%r13)
	nr	%r12,%r0
	lr	%r2,%r12
	l	%r12,.L1073-.L1072(%r13)
	nr	%r12,%r1
	slr	%r5,%r12
	slbr	%r4,%r2
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,2
	l	%r12,.L1074-.L1072(%r13)
	nr	%r12,%r0
	lr	%r2,%r12
	l	%r12,.L1074-.L1072(%r13)
	nr	%r12,%r1
	lr	%r3,%r12
	l	%r12,.L1074-.L1072(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L1074-.L1072(%r13)
	nr	%r12,%r5
	alr	%r3,%r12
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r1,.L1075-.L1072(%r13)
	nr	%r1,%r2
	l	%r4,.L1075-.L1072(%r13)
	nr	%r4,%r3
	ar	%r1,%r4
	lr	%r2,%r1
	srl	%r2,16
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,8
	ar	%r2,%r1
	lhi	%r1,127
	nr	%r2,%r1
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L1072:
.L1075:
	.long	252645135
.L1074:
	.long	858993459
.L1073:
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
	larl	%r5,.L1078
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1079-.L1078(%r5)
	sr	%r2,%r1
	lr	%r1,%r2
	srl	%r1,2
	n	%r1,.L1080-.L1078(%r5)
	n	%r2,.L1080-.L1078(%r5)
	ar	%r2,%r1
	lr	%r1,%r2
	srl	%r1,4
	ar	%r1,%r2
	n	%r1,.L1081-.L1078(%r5)
	lr	%r2,%r1
	srl	%r2,16
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,8
	ar	%r2,%r1
	lhi	%r1,63
	nr	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L1078:
.L1081:
	.long	252645135
.L1080:
	.long	858993459
.L1079:
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
	larl	%r5,.L1088
	ldr	%f2,%f0
	lr	%r3,%r2
	ld	%f0,.L1089-.L1088(%r5)
	j	.L1085
.L1083:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1084
	mdbr	%f2,%f2
.L1085:
	tml	%r3,1
	je	.L1083
	mdbr	%f0,%f2
	j	.L1083
.L1084:
	ltr	%r2,%r2
	bher	%r14
	ld	%f2,.L1089-.L1088(%r5)
	ddbr	%f2,%f0
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1088:
.L1089:
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
	larl	%r5,.L1096
	ler	%f2,%f0
	lr	%r3,%r2
	le	%f0,.L1097-.L1096(%r5)
	j	.L1093
.L1091:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1092
	meebr	%f2,%f2
.L1093:
	tml	%r3,1
	je	.L1091
	meebr	%f0,%f2
	j	.L1091
.L1092:
	ltr	%r2,%r2
	bher	%r14
	le	%f2,.L1097-.L1096(%r5)
	debr	%f2,%f0
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1096:
.L1097:
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
	clr	%r4,%r2
	jh	.L1100
	jl	.L1101
	clr	%r3,%r5
	jl	.L1102
	jh	.L1103
	lhi	%r2,1
	br	%r14
.L1100:
	lhi	%r2,0
	br	%r14
.L1101:
	lhi	%r2,2
	br	%r14
.L1102:
	lhi	%r2,0
	br	%r14
.L1103:
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
	.local	s.0
	.comm	s.0,7,2
.globl __floatundisf
.globl __floatundidf
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
