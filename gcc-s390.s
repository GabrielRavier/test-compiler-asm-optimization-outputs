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
	lhi	%r5,0
	ic	%r5,0(%r1)
	ahi	%r1,-1
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
	jl	.L201
	lhi	%r1,0
.L201:
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
	jl	.L211
	lhi	%r1,0
.L211:
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
	jl	.L222
	lhi	%r1,0
.L222:
	tml	%r1,255
	je	.L223
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L224:
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
.L223:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L224
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
	jl	.L231
	lhi	%r1,0
.L231:
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
	jl	.L242
	lhi	%r1,0
.L242:
	tml	%r1,255
	je	.L244
	ler	%f2,%f0
.L244:
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
	jl	.L254
	lhi	%r1,0
.L254:
	tml	%r1,255
	je	.L255
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L256:
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
.L255:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L256
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	dr	%r12,%r4
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r13,0(%r2)
	st	%r0,4(%r2)
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	jl	.L366
.L363:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L366:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L363
	ahi	%r4,-1
	j	.L363
	.cfi_endproc
.LFE51:
	.size	imaxabs, .-imaxabs
	.align	8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
.LFB52:
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
	lr	%r10,%r3
	lr	%r11,%r4
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r5,%r6
	lr	%r2,%r3
	lr	%r3,%r11
	brasl	%r14,__divdi3
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r4,%r9
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	st	%r7,0(%r12)
	st	%r8,4(%r12)
	stm	%r2,%r3,8(%r12)
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r12,%r3
	lhi	%r13,0
	srda	%r12,32
	dr	%r12,%r4
	lr	%r0,%r3
	lhi	%r1,0
	srda	%r0,32
	dr	%r0,%r4
	st	%r13,0(%r2)
	st	%r0,4(%r2)
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	jl	.L380
.L377:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L380:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L377
	ahi	%r4,-1
	j	.L377
	.cfi_endproc
.LFE55:
	.size	llabs, .-llabs
	.align	8
.globl lldiv
	.type	lldiv, @function
lldiv:
.LFB56:
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
	lr	%r10,%r3
	lr	%r11,%r4
	lr	%r9,%r5
	lr	%r4,%r5
	lr	%r5,%r6
	lr	%r2,%r3
	lr	%r3,%r11
	brasl	%r14,__divdi3
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r4,%r9
	lr	%r5,%r6
	lr	%r2,%r10
	lr	%r3,%r11
	brasl	%r14,__moddi3
	st	%r7,0(%r12)
	st	%r8,4(%r12)
	stm	%r2,%r3,8(%r12)
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
.LFE56:
	.size	lldiv, .-lldiv
	.align	8
.globl wcschr
	.type	wcschr, @function
wcschr:
.LFB57:
	.cfi_startproc
	icm	%r1,15,0(%r2)
	je	.L392
.L386:
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L386
	lhi	%r2,0
	br	%r14
.L392:
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
	jne	.L396
.L395:
	ltr	%r4,%r4
	je	.L396
	ltr	%r5,%r5
	je	.L396
	l	%r4,0(%r1,%r2)
	ahi	%r1,4
	l	%r5,0(%r1,%r3)
	cr	%r4,%r5
	je	.L395
.L396:
	cr	%r4,%r5
	jl	.L401
	lhi	%r2,1
	jh	.L399
	lhi	%r2,0
.L399:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L401:
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
.L405:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L405
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
	je	.L410
.L411:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L411
.L410:
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
	je	.L425
	lr	%r5,%r4
.L416:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L418
	ltr	%r1,%r1
	je	.L418
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r5,.L416
	lhi	%r2,0
	br	%r14
.L425:
	lhi	%r2,0
	br	%r14
.L421:
	lhi	%r2,1
	cr	%r4,%r1
	jh	.L420
	lhi	%r2,0
.L420:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L418:
	l	%r4,0(%r2)
	l	%r1,0(%r3)
	cr	%r4,%r1
	jhe	.L421
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
	je	.L436
	lr	%r1,%r4
.L430:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
	brct	%r1,.L430
	lhi	%r2,0
	br	%r14
.L436:
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
	je	.L451
	lr	%r1,%r4
.L442:
	clc	0(4,%r3),0(%r2)
	jne	.L455
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r1,.L442
	lhi	%r2,0
	br	%r14
.L451:
	lhi	%r2,0
	br	%r14
.L447:
	lhi	%r2,1
	cr	%r4,%r1
	jh	.L446
	lhi	%r2,0
.L446:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L455:
	l	%r4,0(%r2)
	l	%r1,0(%r3)
	cr	%r4,%r1
	jhe	.L447
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
.L459:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
	brct	%r4,.L459
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
	larl	%r13,.L475
	cr	%r2,%r3
	je	.L464
	lr	%r5,%r2
	sr	%r5,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r5,%r1
	jl	.L465
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,0
	lr	%r5,%r0
	ahi	%r5,1
	ltr	%r4,%r4
	je	.L464
.L466:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r0,-1
	ahi	%r1,4
	brct	%r5,.L466
	j	.L464
.L465:
	lr	%r5,%r4
	ahi	%r5,-1
	ltr	%r4,%r4
	je	.L464
	lr	%r1,%r5
	sll	%r1,2
	l	%r4,.L476-.L475(%r13)
	nr	%r4,%r5
	ahi	%r4,1
.L467:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
	brct	%r4,.L467
.L464:
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L475:
.L476:
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
.L479:
	st	%r3,0(%r4)
	ahi	%r5,-1
	ahi	%r4,4
	brct	%r1,.L479
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
	jhe	.L484
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
.L486:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
	brct	%r1,.L486
	br	%r14
.L484:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	sr	%r4,%r1
.L487:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	brct	%r4,.L487
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
	lr	%r12,%r2
	lr	%r13,%r3
	sldl	%r12,0(%r4)
	lcr	%r4,%r4
	srdl	%r2,0(%r4)
	lr	%r1,%r3
	or	%r1,%r13
	or	%r2,%r12
	lr	%r3,%r1
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
	lr	%r12,%r2
	lr	%r13,%r3
	srdl	%r12,0(%r4)
	lcr	%r4,%r4
	sldl	%r2,0(%r4)
	lr	%r1,%r3
	or	%r1,%r13
	or	%r2,%r12
	lr	%r3,%r1
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
	larl	%r5,.L509
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	srl	%r2,0(%r3)
	or	%r2,%r1
	n	%r2,.L510-.L509(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L509:
.L510:
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
	larl	%r5,.L513
	lhi	%r1,15
	nr	%r3,%r1
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lcr	%r3,%r3
	lhi	%r4,15
	nr	%r3,%r4
	sll	%r2,0(%r3)
	or	%r2,%r1
	n	%r2,.L514-.L513(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L513:
.L514:
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
	larl	%r5,.L521
	lr	%r1,%r2
	srl	%r1,8
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L522-.L521(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L521:
.L522:
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L525
	lr	%r1,%r2
	lr	%r5,%r2
	srl	%r5,24
	srl	%r2,8
	l	%r3,.L526-.L525(%r13)
	nr	%r3,%r2
	lr	%r4,%r1
	sll	%r4,8
	n	%r4,.L527-.L525(%r13)
	sll	%r1,24
	or	%r1,%r5
	lr	%r2,%r3
	or	%r2,%r1
	or	%r2,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L525:
.L527:
	.long	16711680
.L526:
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
	stm	%r6,%r13,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L530
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r6,%r2
	lr	%r7,%r3
	srdl	%r6,56
	srdl	%r2,40
	l	%r8,.L531-.L530(%r13)
	nr	%r8,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,24
	l	%r0,.L532-.L530(%r13)
	nr	%r0,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,8
	l	%r9,.L533-.L530(%r13)
	nr	%r9,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,8
	lhi	%r1,255
	nr	%r1,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,24
	n	%r2,.L531-.L530(%r13)
	lr	%r10,%r4
	lr	%r11,%r5
	sldl	%r10,40
	n	%r10,.L532-.L530(%r13)
	sldl	%r4,56
	or	%r4,%r6
	or	%r8,%r7
	lr	%r3,%r0
	or	%r3,%r8
	or	%r1,%r4
	or	%r2,%r1
	or	%r2,%r10
	or	%r3,%r9
	lm	%r6,%r13,24(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	br	%r14
	.section	.rodata
	.align	8
.L530:
.L533:
	.long	-16777216
.L532:
	.long	16711680
.L531:
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
.L537:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L540
	ahi	%r1,1
	brct	%r3,.L537
	lhi	%r2,0
	br	%r14
.L540:
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
	je	.L545
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L544:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L544
	br	%r14
.L545:
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
	larl	%r5,.L554
	keb	%f0,.L555-.L554(%r5)
	jl	.L552
	lhi	%r2,1
	keb	%f0,.L556-.L554(%r5)
	jh	.L551
	lhi	%r2,0
.L551:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L552:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L554:
.L556:
	.long	2139095039
.L555:
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
	larl	%r5,.L562
	kdb	%f0,.L563-.L562(%r5)
	jl	.L560
	lhi	%r2,1
	kdb	%f0,.L564-.L562(%r5)
	jh	.L559
	lhi	%r2,0
.L559:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L560:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L562:
.L564:
	.long	2146435071
	.long	-1
.L563:
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
	larl	%r5,.L570
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L571-.L570(%r5)
	ld	%f3,.L571-.L570+8(%r5)
	kxbr	%f0,%f1
	jl	.L568
	lhi	%r2,1
	ld	%f1,.L572-.L570(%r5)
	ld	%f3,.L572-.L570+8(%r5)
	kxbr	%f0,%f1
	jh	.L567
	lhi	%r2,0
.L567:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L568:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L570:
.L572:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L571:
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
	larl	%r5,.L583
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L582
	le	%f2,.L584-.L583(%r5)
	j	.L579
.L582:
	le	%f2,.L585-.L583(%r5)
	j	.L579
.L578:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L579:
	tml	%r2,1
	je	.L578
	meebr	%f0,%f2
	j	.L578
	.section	.rodata
	.align	8
.L583:
.L585:
	.long	1056964608
.L584:
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
	larl	%r5,.L594
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f2,%f0
	ber	%r14
	ltr	%r2,%r2
	jl	.L593
	ld	%f2,.L595-.L594(%r5)
	j	.L590
.L593:
	ld	%f2,.L596-.L594(%r5)
	j	.L590
.L589:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L590:
	tml	%r2,1
	je	.L589
	mdbr	%f0,%f2
	j	.L589
	.section	.rodata
	.align	8
.L594:
.L596:
	.long	1071644672
	.long	0
.L595:
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
	larl	%r5,.L605
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L598
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f0,%f1
	je	.L598
	ltr	%r4,%r4
	jl	.L604
	ld	%f0,.L606-.L605(%r5)
	ld	%f2,.L606-.L605+8(%r5)
	j	.L601
.L604:
	ld	%f0,.L607-.L605(%r5)
	ld	%f2,.L607-.L605+8(%r5)
	j	.L601
.L600:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L598
	mxbr	%f0,%f0
.L601:
	tml	%r4,1
	je	.L600
	mxbr	%f1,%f0
	j	.L600
.L598:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L605:
.L607:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L606:
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
.L610:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	bcr	7,%r0
	brct	%r4,.L610
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
	je	.L616
	lr	%r0,%r4
.L615:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L615
.L616:
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
	je	.L632
	lr	%r5,%r3
	sr	%r5,%r2
.L625:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	brct	%r5,.L625
	lr	%r2,%r3
	br	%r14
.L632:
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
	je	.L643
.L637:
	lr	%r1,%r3
	lhi	%r4,255
	nr	%r5,%r4
.L640:
	icm	%r4,1,0(%r1)
	je	.L644
	ahi	%r1,1
	lhi	%r0,255
	nr	%r4,%r0
	cr	%r4,%r5
	jne	.L640
	br	%r14
.L643:
	lhi	%r2,0
	br	%r14
.L644:
	ahi	%r2,1
	icm	%r5,1,0(%r2)
	jne	.L637
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
	j	.L648
.L647:
	ahi	%r1,1
	tml	%r4,255
	ber	%r14
.L648:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r5,%r3
	jne	.L647
	lr	%r2,%r1
	j	.L647
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
	jhe	.L657
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
.L655:
	lr	%r3,%r9
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L653
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L653
	lr	%r2,%r12
	ahi	%r2,1
	j	.L655
.L657:
	lr	%r12,%r2
.L653:
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
	larl	%r5,.L672
	kdb	%f0,.L673-.L672(%r5)
	jl	.L671
	kdb	%f0,.L673-.L672(%r5)
	jnh	.L664
	kdb	%f2,.L673-.L672(%r5)
	jl	.L663
.L664:
	br	%r14
.L671:
	kdb	%f2,.L673-.L672(%r5)
	jnh	.L664
.L663:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L672:
.L673:
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
	je	.L674
	clr	%r3,%r10
	jl	.L679
	sr	%r3,%r10
	alr	%r3,%r2
	lr	%r11,%r3
	jnle	.L680
	lhi	%r9,0
	ic	%r9,0(%r4)
	ahi	%r4,1
	lr	%r8,%r4
	ahi	%r10,-1
	j	.L677
.L676:
	ahi	%r12,1
	clr	%r11,%r12
	jl	.L684
.L677:
	lhi	%r1,0
	ic	%r1,0(%r12)
	cr	%r1,%r9
	jne	.L676
	lr	%r4,%r10
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L676
	lr	%r2,%r12
	j	.L674
.L684:
	lhi	%r2,0
.L674:
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
.L679:
	.cfi_restore_state
	lhi	%r2,0
	j	.L674
.L680:
	lhi	%r2,0
	j	.L674
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
	larl	%r5,.L712
	kdb	%f0,.L713-.L712(%r5)
	jl	.L711
	lhi	%r3,0
.L690:
	kdb	%f0,.L714-.L712(%r5)
	jnhe	.L708
	lhi	%r1,0
.L694:
	ahi	%r1,1
	mdb	%f0,.L715-.L712(%r5)
	kdb	%f0,.L714-.L712(%r5)
	jhe	.L694
.L695:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L711:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L690
.L708:
	kdb	%f0,.L715-.L712(%r5)
	jnl	.L709
	cdb	%f0,.L713-.L712(%r5)
	je	.L701
	lhi	%r1,0
.L697:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L715-.L712(%r5)
	jl	.L697
	j	.L695
.L709:
	lhi	%r1,0
	j	.L695
.L701:
	lhi	%r1,0
	j	.L695
	.section	.rodata
	.align	8
.L712:
.L715:
	.long	1071644672
	.long	0
.L714:
	.long	1072693248
	.long	0
.L713:
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
	je	.L720
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
	j	.L719
.L722:
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
	je	.L727
.L719:
	lhi	%r8,0
	lhi	%r4,1
	nr	%r4,%r1
	lr	%r9,%r4
	lcr	%r4,%r8
	lcr	%r5,%r9
	je	.L722
	ahi	%r4,-1
	j	.L722
.L720:
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
.L727:
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
	jhe	.L737
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L730:
	ltr	%r3,%r3
	jl	.L737
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L732
	ahi	%r2,-1
	brct	%r0,.L730
.L733:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L735:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L733
.L736:
	clr	%r5,%r3
	jl	.L735
	sr	%r5,%r3
	or	%r2,%r1
	j	.L735
.L732:
	ltr	%r1,%r1
	je	.L744
.L737:
	lhi	%r2,0
	j	.L736
.L744:
	lr	%r2,%r1
	j	.L733
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
	je	.L748
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
.L748:
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
	je	.L763
.L758:
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
.L763:
	cr	%r5,%r1
	jne	.L758
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
	je	.L768
	lhi	%r2,0
.L767:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L767
	br	%r14
.L768:
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
	jhe	.L773
.L776:
	ltr	%r5,%r5
	je	.L796
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r5,3
	ahi	%r5,-8
	srl	%r5,3
	ahi	%r5,1
.L779:
	l	%r10,0(%r12,%r3)
	l	%r11,4(%r12,%r3)
	st	%r10,0(%r12,%r2)
	st	%r11,4(%r12,%r2)
	ahi	%r12,8
	brct	%r5,.L779
	clr	%r4,%r1
	jle	.L772
	sr	%r4,%r1
.L780:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L780
.L772:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L773:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L776
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L777:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L777
	br	%r14
.L796:
	clr	%r4,%r1
	bler	%r14
	sr	%r4,%r1
.L792:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L792
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
	jhe	.L799
.L802:
	ltr	%r1,%r1
	je	.L801
	lhi	%r5,0
	sll	%r1,1
	ahi	%r1,-2
	srl	%r1,1
	ahi	%r1,1
.L805:
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahi	%r5,2
	brct	%r1,.L805
.L801:
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L799:
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jl	.L802
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L803:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L803
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
	jhe	.L814
.L817:
	ltr	%r5,%r5
	je	.L837
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r5,2
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
.L820:
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	ahi	%r12,4
	brct	%r5,.L820
	clr	%r4,%r1
	jle	.L813
	sr	%r4,%r1
.L821:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L821
.L813:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L814:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L817
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L818:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L818
	br	%r14
.L837:
	clr	%r4,%r1
	bler	%r14
	sr	%r4,%r1
.L833:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L833
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
	larl	%r5,.L844
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L845-.L844(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L844:
.L845:
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
	larl	%r5,.L850
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L849
.L847:
	ledbr	%f0,%f0
	br	%r14
.L849:
	adb	%f0,.L851-.L850(%r5)
	j	.L847
	.section	.rodata
	.align	8
.L850:
.L851:
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
.L862:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L862
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
.L868:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L868
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
	larl	%r5,.L880
	keb	%f0,.L881-.L880(%r5)
	jhe	.L879
	cfebr	%r2,5,%f0
	br	%r14
.L879:
	seb	%f0,.L881-.L880(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L882-.L880(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L880:
.L881:
	.long	1191182336
.L882:
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
.L884:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L884
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
.L889:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L889
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
	je	.L896
	lhi	%r2,0
.L895:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L895
	br	%r14
.L896:
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
	je	.L903
	ltr	%r3,%r3
	je	.L904
	lhi	%r2,0
.L902:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L902
	br	%r14
.L903:
	lr	%r2,%r4
	br	%r14
.L904:
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
	jhe	.L916
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L909:
	ltr	%r3,%r3
	jl	.L916
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L911
	ahi	%r2,-1
	brct	%r0,.L909
.L912:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L914:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L912
.L915:
	clr	%r5,%r3
	jl	.L914
	sr	%r5,%r3
	or	%r2,%r1
	j	.L914
.L911:
	ltr	%r1,%r1
	je	.L923
.L916:
	lhi	%r2,0
	j	.L915
.L923:
	lr	%r2,%r1
	j	.L912
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
	jl	.L928
	lhi	%r2,1
	jh	.L927
	lhi	%r2,0
.L927:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L928:
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
	jl	.L933
	lhi	%r2,1
	jh	.L932
	lhi	%r2,0
.L932:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L933:
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
	jl	.L948
	lhi	%r0,0
	ltr	%r3,%r3
	je	.L949
.L945:
	lhi	%r5,32
	lhi	%r2,0
.L943:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	je	.L942
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L943
.L942:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L948:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L945
.L949:
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
	jl	.L960
	ltr	%r3,%r3
	jl	.L961
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	j	.L951
.L960:
	lcr	%r2,%r2
	ltr	%r3,%r3
	jl	.L962
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
.L955:
	lcr	%r2,%r2
.L951:
	lm	%r14,%r15,152(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
.L961:
	.cfi_restore_state
	lhi	%r4,0
	lcr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L955
.L962:
	lhi	%r4,0
	lcr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L951
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
	jl	.L968
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L964
.L968:
	lhi	%r4,1
	lpr	%r3,%r3
	lcr	%r2,%r2
	brasl	%r14,__udivmodsi4
	lcr	%r2,%r2
.L964:
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
	larl	%r13,.L989
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L978
	lhi	%r1,1
	lhi	%r0,16
.L971:
	tml	%r3,32768
	jne	.L978
	sll	%r3,1
	n	%r3,.L990-.L989(%r13)
	lr	%r2,%r1
	sll	%r2,1
	lr	%r1,%r2
	clr	%r5,%r3
	jle	.L973
	brct	%r0,.L971
	lhi	%r2,0
.L974:
	ltr	%r4,%r4
	jne	.L988
.L979:
	n	%r2,.L990-.L989(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L976:
	.cfi_restore_state
	n	%r1,.L990-.L989(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L974
.L977:
	clr	%r5,%r3
	jl	.L976
	sr	%r5,%r3
	n	%r5,.L990-.L989(%r13)
	or	%r2,%r1
	j	.L976
.L973:
	tml	%r2,65535
	je	.L974
.L978:
	lhi	%r2,0
	j	.L977
.L988:
	lr	%r2,%r5
	j	.L979
	.section	.rodata
	.align	8
.L989:
.L990:
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
	jhe	.L999
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L992:
	ltr	%r3,%r3
	jl	.L999
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L994
	ahi	%r2,-1
	brct	%r0,.L992
.L995:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L997:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L995
.L998:
	clr	%r5,%r3
	jl	.L997
	sr	%r5,%r3
	or	%r2,%r1
	j	.L997
.L994:
	ltr	%r1,%r1
	je	.L1006
.L999:
	lhi	%r2,0
	j	.L998
.L1006:
	lr	%r2,%r1
	j	.L995
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
	je	.L1009
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lhi	%r1,0
.L1010:
	lr	%r3,%r1
	br	%r14
.L1009:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	sll	%r2,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	or	%r2,%r3
	j	.L1010
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
	je	.L1015
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L1016:
	lr	%r2,%r1
	br	%r14
.L1015:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1016
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	stm	%r6,%r13,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L1022
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r6,%r2
	lr	%r7,%r3
	srdl	%r6,56
	srdl	%r2,40
	l	%r8,.L1023-.L1022(%r13)
	nr	%r8,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,24
	l	%r0,.L1024-.L1022(%r13)
	nr	%r0,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,8
	l	%r9,.L1025-.L1022(%r13)
	nr	%r9,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,8
	lhi	%r1,255
	nr	%r1,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,24
	n	%r2,.L1023-.L1022(%r13)
	lr	%r10,%r4
	lr	%r11,%r5
	sldl	%r10,40
	n	%r10,.L1024-.L1022(%r13)
	sldl	%r4,56
	or	%r4,%r6
	or	%r8,%r7
	lr	%r3,%r0
	or	%r3,%r8
	or	%r1,%r4
	or	%r2,%r1
	or	%r2,%r10
	or	%r3,%r9
	lm	%r6,%r13,24(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	br	%r14
	.section	.rodata
	.align	8
.L1022:
.L1025:
	.long	-16777216
.L1024:
	.long	16711680
.L1023:
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L1028
	lr	%r1,%r2
	lr	%r5,%r2
	srl	%r5,24
	srl	%r2,8
	l	%r3,.L1029-.L1028(%r13)
	nr	%r3,%r2
	lr	%r4,%r1
	sll	%r4,8
	n	%r4,.L1030-.L1028(%r13)
	sll	%r1,24
	or	%r1,%r5
	lr	%r2,%r3
	or	%r2,%r1
	or	%r2,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L1028:
.L1030:
	.long	16711680
.L1029:
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
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L1035
	lr	%r1,%r2
	cl	%r2,.L1036-.L1035(%r13)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r3,%r3
	sll	%r3,4
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	l	%r2,.L1037-.L1035(%r13)
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
	ar	%r3,%r2
	lhi	%r2,12
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,1
	lhi	%r4,2
	lr	%r5,%r4
	sr	%r5,%r2
	srl	%r1,0(%r5)
	ar	%r2,%r3
	sr	%r4,%r1
	tml	%r1,2
	je	.L1033
	lhi	%r4,0
.L1033:
	ar	%r2,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L1035:
.L1037:
	.long	65280
.L1036:
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
	jh	.L1040
	jl	.L1041
	clr	%r3,%r5
	jl	.L1042
	jh	.L1043
	lhi	%r2,1
	br	%r14
.L1040:
	lhi	%r2,0
	br	%r14
.L1041:
	lhi	%r2,2
	br	%r14
.L1042:
	lhi	%r2,0
	br	%r14
.L1043:
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
	larl	%r5,.L1050
	lr	%r1,%r2
	l	%r3,.L1051-.L1050(%r5)
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
	lhi	%r4,3
	nr	%r4,%r1
	ar	%r2,%r3
	lhi	%r3,1
	nr	%r1,%r3
	xr	%r1,%r3
	srl	%r4,1
	lhi	%r3,2
	sr	%r3,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L1050:
.L1051:
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
	je	.L1053
	srl	%r2,4064(%r4)
	lr	%r3,%r2
	lhi	%r1,0
.L1054:
	lr	%r2,%r1
	br	%r14
.L1053:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1054
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
	larl	%r13,.L1060
	lr	%r5,%r3
	l	%r1,.L1061-.L1060(%r13)
	nr	%r1,%r2
	l	%r4,.L1061-.L1060(%r13)
	nr	%r4,%r3
	lr	%r3,%r1
	msr	%r3,%r4
	lr	%r0,%r3
	srl	%r0,16
	srl	%r2,16
	msr	%r4,%r2
	ar	%r4,%r0
	lr	%r0,%r4
	srl	%r0,16
	n	%r4,.L1061-.L1060(%r13)
	n	%r3,.L1061-.L1060(%r13)
	srl	%r5,16
	msr	%r1,%r5
	ar	%r1,%r4
	lr	%r12,%r1
	sll	%r12,16
	srl	%r1,16
	msr	%r2,%r5
	lr	%r4,%r2
	lr	%r2,%r0
	ar	%r2,%r4
	ar	%r2,%r1
	ar	%r3,%r12
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L1060:
.L1061:
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
	lr	%r12,%r2
	lr	%r10,%r3
	lr	%r11,%r4
	lr	%r9,%r5
	lr	%r3,%r5
	lr	%r2,%r10
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
	je	.L1066
	ahi	%r2,-1
.L1066:
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
	larl	%r13,.L1074
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r12,.L1075-.L1074(%r13)
	nr	%r12,%r0
	lr	%r2,%r12
	l	%r12,.L1075-.L1074(%r13)
	nr	%r12,%r1
	slr	%r5,%r12
	slbr	%r4,%r2
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,2
	l	%r12,.L1076-.L1074(%r13)
	nr	%r12,%r0
	lr	%r2,%r12
	l	%r12,.L1076-.L1074(%r13)
	nr	%r12,%r1
	lr	%r3,%r12
	l	%r12,.L1076-.L1074(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L1076-.L1074(%r13)
	nr	%r12,%r5
	alr	%r3,%r12
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r1,.L1077-.L1074(%r13)
	nr	%r1,%r2
	l	%r4,.L1077-.L1074(%r13)
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
.L1074:
.L1077:
	.long	252645135
.L1076:
	.long	858993459
.L1075:
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
	larl	%r5,.L1080
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1081-.L1080(%r5)
	sr	%r2,%r1
	lr	%r1,%r2
	srl	%r1,2
	n	%r1,.L1082-.L1080(%r5)
	n	%r2,.L1082-.L1080(%r5)
	ar	%r2,%r1
	lr	%r1,%r2
	srl	%r1,4
	ar	%r1,%r2
	n	%r1,.L1083-.L1080(%r5)
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
.L1080:
.L1083:
	.long	252645135
.L1082:
	.long	858993459
.L1081:
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
	larl	%r5,.L1090
	ldr	%f2,%f0
	lr	%r3,%r2
	ld	%f0,.L1091-.L1090(%r5)
	j	.L1087
.L1085:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1086
	mdbr	%f2,%f2
.L1087:
	tml	%r3,1
	je	.L1085
	mdbr	%f0,%f2
	j	.L1085
.L1086:
	ltr	%r2,%r2
	bher	%r14
	ld	%f2,.L1091-.L1090(%r5)
	ddbr	%f2,%f0
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1090:
.L1091:
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
	larl	%r5,.L1098
	ler	%f2,%f0
	lr	%r3,%r2
	le	%f0,.L1099-.L1098(%r5)
	j	.L1095
.L1093:
	lr	%r1,%r3
	srl	%r1,31
	ar	%r1,%r3
	sra	%r1,1
	lr	%r3,%r1
	ltr	%r1,%r1
	je	.L1094
	meebr	%f2,%f2
.L1095:
	tml	%r3,1
	je	.L1093
	meebr	%f0,%f2
	j	.L1093
.L1094:
	ltr	%r2,%r2
	bher	%r14
	le	%f2,.L1099-.L1098(%r5)
	debr	%f2,%f0
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1098:
.L1099:
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
	jh	.L1102
	jl	.L1103
	clr	%r3,%r5
	jl	.L1104
	jh	.L1105
	lhi	%r2,1
	br	%r14
.L1102:
	lhi	%r2,0
	br	%r14
.L1103:
	lhi	%r2,2
	br	%r14
.L1104:
	lhi	%r2,0
	br	%r14
.L1105:
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
