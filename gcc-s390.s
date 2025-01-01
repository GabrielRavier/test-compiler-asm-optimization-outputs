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
	cr	%r4,%r1
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
	cr	%r3,%r5
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
	cr	%r3,%r5
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
	lr	%r1,%r2
	cli	0(%r2),0
	ber	%r14
.L79:
	lhi	%r2,0
	ic	%r2,0(%r1)
	cr	%r3,%r2
	je	.L85
	ahi	%r1,1
	lhi	%r2,0
	ic	%r2,0(%r1)
	ltr	%r2,%r2
	jne	.L79
	lr	%r2,%r1
	br	%r14
.L85:
	lr	%r2,%r1
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
.L89:
	ic	%r1,0(%r2)
	lhi	%r4,255
	nr	%r4,%r1
	cr	%r3,%r4
	ber	%r14
	ahi	%r2,1
	tml	%r1,255
	jne	.L89
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
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	jne	.L94
.L93:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L94
	ahi	%r2,1
	ahi	%r3,1
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	je	.L93
.L94:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
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
	je	.L99
.L100:
	ahi	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r2)
	ltr	%r3,%r3
	jne	.L100
.L99:
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
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L109
	lhi	%r4,0
	ic	%r4,0(%r2)
	ltr	%r4,%r4
	je	.L106
	lr	%r5,%r2
	ar	%r5,%r1
	ahi	%r1,1
.L107:
	icm	%r4,1,0(%r3)
	je	.L106
	brct	%r1,.L111
	j	.L113
.L111:
	clm	%r4,1,0(%r2)
	jne	.L106
	ahi	%r2,1
	ahi	%r3,1
	lhi	%r4,0
	ic	%r4,0(%r2)
	ltr	%r4,%r4
	jne	.L107
	j	.L106
.L113:
	lr	%r2,%r5
.L106:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L109:
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
	lr	%r1,%r4
	ahi	%r1,-2
	srl	%r1,1
	ahi	%r1,1
.L117:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	brct	%r1,.L117
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
	je	.L127
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L127:
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
	jle	.L131
	lhi	%r1,127
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L131:
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
	je	.L143
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L143:
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
	larl	%r5,.L153
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L149
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L150
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L151
	a	%r2,.L154-.L153(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L149:
	lhi	%r2,1
	br	%r14
.L150:
	lhi	%r2,1
	br	%r14
.L151:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L153:
.L154:
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
	larl	%r5,.L166
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L165
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L160
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L167-.L166(%r5)
	jle	.L161
	l	%r1,.L168-.L166(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L162
	l	%r1,.L169-.L166(%r5)
	ar	%r1,%r2
	cl	%r1,.L170-.L166(%r5)
	jh	.L163
	n	%r2,.L171-.L166(%r5)
	x	%r2,.L171-.L166(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L165:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L160:
	lhi	%r2,1
	br	%r14
.L161:
	lhi	%r2,1
	br	%r14
.L162:
	lhi	%r2,1
	br	%r14
.L163:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L166:
.L171:
	.long	65534
.L170:
	.long	1048579
.L169:
	.long	-65532
.L168:
	.long	-57344
.L167:
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
	jle	.L174
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L174:
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
	larl	%r5,.L187
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L182
	kdbr	%f0,%f2
	jnh	.L185
	sdbr	%f0,%f2
	br	%r14
.L182:
	ldr	%f0,%f2
	br	%r14
.L185:
	ld	%f0,.L188-.L187(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L187:
.L188:
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
	larl	%r5,.L198
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L193
	kebr	%f0,%f2
	jnh	.L196
	sebr	%f0,%f2
	br	%r14
.L193:
	ler	%f0,%f2
	br	%r14
.L196:
	le	%f0,.L199-.L198(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L198:
.L199:
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
	jo	.L206
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L202
	ltr	%r1,%r1
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L202:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L203
	lhi	%r1,0
.L203:
	tml	%r1,255
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L206:
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
	jo	.L216
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L212
	ltr	%r1,%r1
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L212:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L213
	lhi	%r1,0
.L213:
	tml	%r1,255
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L216:
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
	jo	.L230
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L231
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
	je	.L224
	ltr	%r1,%r1
	je	.L225
	std	%f0,96(%r15)
	std	%f2,104(%r15)
.L225:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L220
.L230:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L220
.L231:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L220
.L224:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L226
	lhi	%r1,0
.L226:
	tml	%r1,255
	je	.L227
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L228:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L220:
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L227:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L228
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
	jo	.L239
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tcdb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L235
	ltr	%r1,%r1
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L235:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L236
	lhi	%r1,0
.L236:
	tml	%r1,255
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L239:
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
	jo	.L250
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r1
	srl	%r1,28
	tceb	%f2,1365
	ipm	%r2
	srl	%r2,28
	cr	%r1,%r2
	je	.L246
	ltr	%r1,%r1
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L246:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L247
	lhi	%r1,0
.L247:
	tml	%r1,255
	je	.L249
	ler	%f2,%f0
.L249:
	ler	%f0,%f2
	br	%r14
.L250:
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
	jo	.L265
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	cxbr	%f0,%f0
	jo	.L266
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
	je	.L259
	ltr	%r1,%r1
	je	.L260
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,96(%r15)
	std	%f2,104(%r15)
.L260:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L255
.L265:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L255
.L266:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L255
.L259:
	lhi	%r1,1
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	ld	%f1,96(%r15)
	ld	%f3,104(%r15)
	kxbr	%f0,%f1
	jl	.L261
	lhi	%r1,0
.L261:
	tml	%r1,255
	je	.L262
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L263:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L255:
	l	%r15,204(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L262:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L263
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
	je	.L271
	larl	%r1,s.0
	larl	%r4,digits
.L270:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L270
.L269:
	mvi	0(%r1),0
	larl	%r2,s.0
	br	%r14
.L271:
	larl	%r1,s.0
	j	.L269
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
	je	.L282
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	st	%r2,4(%r1)
	br	%r14
.L282:
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
	je	.L285
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L285:
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
	je	.L289
	lr	%r12,%r3
	lhi	%r10,0
	lr	%r11,%r13
	sr	%r11,%r10
.L291:
	lr	%r7,%r12
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L288
	ahi	%r10,1
	ar	%r12,%r9
	brct	%r11,.L291
.L289:
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
.L288:
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
	je	.L299
	lr	%r9,%r2
	lr	%r8,%r5
	lr	%r12,%r3
	lhi	%r10,0
	sr	%r11,%r10
.L298:
	lr	%r7,%r12
	lr	%r3,%r12
	lr	%r2,%r9
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L296
	ahi	%r10,1
	ar	%r12,%r8
	brct	%r11,.L298
	lhi	%r7,0
.L296:
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
.L299:
	.cfi_restore_state
	lhi	%r7,0
	j	.L296
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
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L307
.L308:
	ahi	%r12,1
.L307:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L308
	chi	%r11,43
	je	.L316
	chi	%r11,45
	jne	.L310
	lhi	%r5,1
.L309:
	lhi	%r1,0
	ic	%r1,1(%r12)
	ahi	%r12,1
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L311
.L312:
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lhi	%r4,0
	ic	%r4,0(%r12)
	ahi	%r4,-48
	sr	%r1,%r4
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,1(%r12)
	ahi	%r1,-48
	ahi	%r12,1
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L312
.L311:
	ltr	%r5,%r5
	je	.L315
.L306:
	lm	%r11,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L316:
	.cfi_restore_state
	lr	%r5,%r2
	j	.L309
.L310:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lr	%r5,%r2
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L312
.L315:
	lcr	%r2,%r2
	j	.L306
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
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L322
.L323:
	ahi	%r12,1
.L322:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L323
	chi	%r11,43
	je	.L331
	chi	%r11,45
	jne	.L325
	lhi	%r5,1
.L324:
	lhi	%r1,0
	ic	%r1,1(%r12)
	ahi	%r12,1
	ahi	%r1,-48
	lhi	%r3,9
	clr	%r1,%r3
	jh	.L326
.L327:
	lr	%r1,%r2
	sll	%r1,2
	ar	%r1,%r2
	sll	%r1,1
	lhi	%r4,0
	ic	%r4,0(%r12)
	ahi	%r4,-48
	sr	%r1,%r4
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,1(%r12)
	ahi	%r1,-48
	ahi	%r12,1
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L327
.L326:
	ltr	%r5,%r5
	je	.L330
.L321:
	lm	%r11,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L331:
	.cfi_restore_state
	lr	%r5,%r2
	j	.L324
.L325:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lr	%r5,%r2
	lhi	%r3,9
	clr	%r1,%r3
	jle	.L327
.L330:
	lcr	%r2,%r2
	j	.L321
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
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L337
.L338:
	ahi	%r12,1
.L337:
	lhi	%r11,0
	ic	%r11,0(%r12)
	lr	%r2,%r11
	brasl	%r14,isspace
	ltr	%r0,%r2
	jne	.L338
	chi	%r11,43
	je	.L339
	chi	%r11,45
	jne	.L340
	lhi	%r0,1
.L339:
	lhi	%r1,0
	ic	%r1,1(%r12)
	ahi	%r12,1
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jh	.L346
.L344:
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
.L342:
	lr	%r4,%r12
	lr	%r5,%r13
	sldl	%r4,2
	alr	%r5,%r13
	alcr	%r4,%r12
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,1
	lhi	%r12,0
	ic	%r12,0(%r1)
	ahi	%r12,-48
	lr	%r4,%r12
	lhi	%r5,0
	srda	%r4,32
	slr	%r3,%r5
	slbr	%r2,%r4
	lr	%r12,%r2
	lr	%r13,%r3
	lhi	%r3,0
	ic	%r3,1(%r1)
	ahi	%r3,-48
	ahi	%r1,1
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L342
.L341:
	ltr	%r0,%r0
	je	.L345
.L336:
	lr	%r2,%r12
	lr	%r3,%r13
	lm	%r11,%r15,140(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_def_cfa_offset 96
	br	%r14
.L346:
	.cfi_restore_state
	lhi	%r12,0
	lhi	%r13,0
	j	.L341
.L340:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jle	.L344
	lhi	%r12,0
	lhi	%r13,0
.L345:
	lcr	%r12,%r12
	lcr	%r13,%r13
	je	.L336
	ahi	%r12,-1
	j	.L336
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
	jne	.L354
	lhi	%r11,0
	j	.L351
.L356:
	lr	%r12,%r10
.L353:
	ltr	%r12,%r12
	je	.L359
.L354:
	lr	%r10,%r12
	srl	%r10,1
	lr	%r11,%r10
	msr	%r11,%r9
	ar	%r11,%r8
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L356
	jle	.L351
	ar	%r11,%r9
	lr	%r8,%r11
	ahi	%r12,-1
	sr	%r12,%r10
	j	.L353
.L359:
	lhi	%r11,0
.L351:
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
	jne	.L364
	lhi	%r12,0
	j	.L361
.L363:
	sra	%r11,1
	je	.L368
.L364:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L361
	ltr	%r2,%r2
	jle	.L363
	ar	%r12,%r10
	lr	%r9,%r12
	ahi	%r11,-1
	j	.L363
.L368:
	lhi	%r12,0
.L361:
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
	jl	.L377
.L374:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L377:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L374
	ahi	%r4,-1
	j	.L374
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
	jl	.L391
.L388:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L391:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L388
	ahi	%r4,-1
	j	.L388
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
	je	.L403
.L397:
	c	%r3,0(%r2)
	je	.L399
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L397
.L399:
	icm	%r1,15,0(%r2)
	bner	%r14
	lhi	%r2,0
	br	%r14
.L403:
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
	clc	0(4,%r3),0(%r2)
	jne	.L407
.L406:
	icm	%r1,15,0(%r2)
	je	.L407
	icm	%r1,15,0(%r3)
	je	.L407
	ahi	%r2,4
	ahi	%r3,4
	clc	0(4,%r3),0(%r2)
	je	.L406
.L407:
	l	%r4,0(%r2)
	l	%r1,0(%r3)
	cr	%r4,%r1
	jl	.L411
	lhi	%r2,1
	jh	.L410
	lhi	%r2,0
.L410:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L411:
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
.L415:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r1,4
	ltr	%r4,%r4
	jne	.L415
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
	je	.L420
.L421:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L421
.L420:
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
	je	.L435
	lr	%r5,%r4
.L426:
	l	%r1,0(%r2)
	c	%r1,0(%r3)
	jne	.L428
	ltr	%r1,%r1
	je	.L428
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r5,.L426
	lhi	%r2,0
	br	%r14
.L435:
	lhi	%r2,0
	br	%r14
.L431:
	lhi	%r2,1
	cr	%r4,%r1
	jh	.L430
	lhi	%r2,0
.L430:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L428:
	l	%r4,0(%r2)
	l	%r1,0(%r3)
	cr	%r4,%r1
	jhe	.L431
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
	je	.L446
	lr	%r1,%r4
.L440:
	c	%r3,0(%r2)
	ber	%r14
	ahi	%r4,-1
	ahi	%r2,4
	brct	%r1,.L440
	lhi	%r2,0
	br	%r14
.L446:
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
	je	.L461
	lr	%r1,%r4
.L452:
	clc	0(4,%r3),0(%r2)
	jne	.L465
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r1,.L452
	lhi	%r2,0
	br	%r14
.L461:
	lhi	%r2,0
	br	%r14
.L457:
	lhi	%r2,1
	cr	%r4,%r1
	jh	.L456
	lhi	%r2,0
.L456:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L465:
	l	%r4,0(%r2)
	l	%r1,0(%r3)
	cr	%r4,%r1
	jhe	.L457
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
.L469:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r5,-1
	ahi	%r1,4
	brct	%r4,.L469
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
	larl	%r13,.L485
	cr	%r2,%r3
	je	.L474
	lr	%r5,%r2
	sr	%r5,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r5,%r1
	jl	.L475
	lr	%r0,%r4
	ahi	%r0,-1
	lhi	%r1,0
	lr	%r5,%r0
	ahi	%r5,1
	ltr	%r4,%r4
	je	.L474
.L476:
	l	%r4,0(%r1,%r3)
	st	%r4,0(%r1,%r2)
	ahi	%r0,-1
	ahi	%r1,4
	brct	%r5,.L476
	j	.L474
.L475:
	lr	%r5,%r4
	ahi	%r5,-1
	ltr	%r4,%r4
	je	.L474
	lr	%r1,%r5
	sll	%r1,2
	l	%r4,.L486-.L485(%r13)
	nr	%r4,%r5
	ahi	%r4,1
.L477:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
	brct	%r4,.L477
.L474:
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L485:
.L486:
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
.L489:
	st	%r3,0(%r4)
	ahi	%r5,-1
	ahi	%r4,4
	brct	%r1,.L489
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
	jhe	.L494
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
.L496:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
	brct	%r1,.L496
	br	%r14
.L494:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	sr	%r4,%r1
.L497:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	brct	%r4,.L497
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
	larl	%r5,.L519
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
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
.LFE74:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	larl	%r5,.L523
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L524-.L523(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L523:
.L524:
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
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,8
	sr	%r4,%r3
	srl	%r2,0(%r4)
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
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,8
	sr	%r4,%r3
	sll	%r2,0(%r4)
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
	larl	%r5,.L531
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L532-.L531(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L531:
.L532:
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
	larl	%r5,.L535
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L536-.L535(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L537-.L535(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L535:
.L537:
	.long	65280
.L536:
	.long	16711680
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
	stm	%r8,%r13,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L540
	lr	%r4,%r3
	l	%r1,.L541-.L540(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,56
	lr	%r8,%r10
	lr	%r9,%r11
	l	%r1,.L542-.L540(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,40
	lr	%r1,%r10
	or	%r1,%r8
	lr	%r3,%r11
	or	%r3,%r9
	l	%r5,.L543-.L540(%r13)
	nr	%r5,%r2
	lr	%r10,%r5
	lhi	%r11,0
	srdl	%r10,24
	or	%r1,%r10
	or	%r3,%r11
	lhi	%r5,255
	nr	%r5,%r2
	lr	%r10,%r5
	lhi	%r11,0
	srdl	%r10,8
	or	%r1,%r10
	or	%r3,%r11
	lr	%r5,%r3
	lhi	%r2,0
	l	%r0,.L541-.L540(%r13)
	nr	%r0,%r4
	lr	%r3,%r0
	sldl	%r2,8
	or	%r1,%r2
	or	%r3,%r5
	lhi	%r10,0
	l	%r2,.L542-.L540(%r13)
	nr	%r2,%r4
	lr	%r11,%r2
	sldl	%r10,24
	lr	%r8,%r10
	lr	%r9,%r11
	or	%r1,%r8
	lhi	%r10,0
	l	%r2,.L543-.L540(%r13)
	nr	%r2,%r4
	lr	%r11,%r2
	sldl	%r10,40
	or	%r1,%r10
	lhi	%r10,0
	lhi	%r2,255
	nr	%r2,%r4
	lr	%r11,%r2
	sldl	%r10,56
	or	%r1,%r10
	lr	%r2,%r1
	or	%r3,%r9
	lm	%r8,%r13,32(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	br	%r14
	.section	.rodata
	.align	8
.L540:
.L543:
	.long	65280
.L542:
	.long	16711680
.L541:
	.long	-16777216
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
.L547:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L550
	ahi	%r1,1
	brct	%r3,.L547
	lhi	%r2,0
	br	%r14
.L550:
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
	je	.L555
	lhi	%r2,1
	nr	%r2,%r1
	bner	%r14
	lhi	%r2,1
.L554:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L554
	br	%r14
.L555:
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
	larl	%r5,.L564
	keb	%f0,.L565-.L564(%r5)
	jl	.L562
	lhi	%r2,1
	keb	%f0,.L566-.L564(%r5)
	jh	.L561
	lhi	%r2,0
.L561:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L562:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L564:
.L566:
	.long	2139095039
.L565:
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
	larl	%r5,.L572
	kdb	%f0,.L573-.L572(%r5)
	jl	.L570
	lhi	%r2,1
	kdb	%f0,.L574-.L572(%r5)
	jh	.L569
	lhi	%r2,0
.L569:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L570:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L572:
.L574:
	.long	2146435071
	.long	-1
.L573:
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
	larl	%r5,.L580
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L581-.L580(%r5)
	ld	%f3,.L581-.L580+8(%r5)
	kxbr	%f0,%f1
	jl	.L578
	lhi	%r2,1
	ld	%f1,.L582-.L580(%r5)
	ld	%f3,.L582-.L580+8(%r5)
	kxbr	%f0,%f1
	jh	.L577
	lhi	%r2,0
.L577:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L578:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L580:
.L582:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L581:
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
	larl	%r5,.L593
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L592
	le	%f2,.L594-.L593(%r5)
	j	.L589
.L592:
	le	%f2,.L595-.L593(%r5)
	j	.L589
.L588:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L589:
	tml	%r2,1
	je	.L588
	meebr	%f0,%f2
	j	.L588
	.section	.rodata
	.align	8
.L593:
.L595:
	.long	1056964608
.L594:
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
	larl	%r5,.L604
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L603
	ld	%f2,.L605-.L604(%r5)
	j	.L600
.L603:
	ld	%f2,.L606-.L604(%r5)
	j	.L600
.L599:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L600:
	tml	%r2,1
	je	.L599
	mdbr	%f0,%f2
	j	.L599
	.section	.rodata
	.align	8
.L604:
.L606:
	.long	1071644672
	.long	0
.L605:
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
	larl	%r5,.L615
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L608
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L608
	ltr	%r4,%r4
	jl	.L614
	ld	%f0,.L616-.L615(%r5)
	ld	%f2,.L616-.L615+8(%r5)
	j	.L611
.L614:
	ld	%f0,.L617-.L615(%r5)
	ld	%f2,.L617-.L615+8(%r5)
	j	.L611
.L610:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L608
	mxbr	%f0,%f0
.L611:
	tml	%r4,1
	je	.L610
	mxbr	%f1,%f0
	j	.L610
.L608:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L615:
.L617:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L616:
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
.L620:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	bcr	7,%r0
	brct	%r4,.L620
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
	je	.L626
	lr	%r0,%r4
.L625:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	ber	%r14
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L625
.L626:
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
	je	.L642
	lr	%r5,%r3
	sr	%r5,%r2
.L635:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	brct	%r5,.L635
	lr	%r2,%r3
	br	%r14
.L642:
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
	cli	0(%r2),0
	je	.L653
.L647:
	lr	%r1,%r3
.L650:
	icm	%r4,1,0(%r1)
	je	.L654
	ahi	%r1,1
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r0,255
	nr	%r4,%r0
	cr	%r5,%r4
	jne	.L650
	br	%r14
.L653:
	lhi	%r2,0
	br	%r14
.L654:
	ahi	%r2,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	jne	.L647
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
	j	.L658
.L657:
	ahi	%r1,1
	tml	%r4,255
	ber	%r14
.L658:
	ic	%r4,0(%r1)
	lhi	%r5,255
	nr	%r5,%r4
	cr	%r3,%r5
	jne	.L657
	lr	%r2,%r1
	j	.L657
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
	jhe	.L667
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
.L665:
	lr	%r3,%r9
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L663
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L663
	lr	%r2,%r12
	ahi	%r2,1
	j	.L665
.L667:
	lr	%r12,%r2
.L663:
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
	larl	%r5,.L682
	kdb	%f0,.L683-.L682(%r5)
	jl	.L681
	kdb	%f0,.L683-.L682(%r5)
	jnh	.L674
	kdb	%f2,.L683-.L682(%r5)
	jl	.L673
.L674:
	br	%r14
.L681:
	kdb	%f2,.L683-.L682(%r5)
	jnh	.L674
.L673:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L682:
.L683:
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
	lr	%r11,%r3
	sr	%r11,%r5
	ar	%r11,%r2
	ltr	%r5,%r5
	je	.L684
	clr	%r5,%r3
	jh	.L689
	clr	%r2,%r11
	jh	.L690
	lhi	%r9,0
	ic	%r9,0(%r4)
	ahi	%r4,1
	lr	%r8,%r4
	ahi	%r5,-1
	lr	%r10,%r5
	j	.L687
.L686:
	ahi	%r12,1
	clr	%r11,%r12
	jl	.L694
.L687:
	lhi	%r1,0
	ic	%r1,0(%r12)
	cr	%r1,%r9
	jne	.L686
	lr	%r4,%r10
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L686
	lr	%r2,%r12
	j	.L684
.L694:
	lhi	%r2,0
.L684:
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
.L689:
	.cfi_restore_state
	lhi	%r2,0
	j	.L684
.L690:
	lhi	%r2,0
	j	.L684
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
	larl	%r5,.L722
	kdb	%f0,.L723-.L722(%r5)
	jl	.L721
	lhi	%r3,0
.L700:
	kdb	%f0,.L724-.L722(%r5)
	jnhe	.L718
	lhi	%r1,0
.L704:
	ahi	%r1,1
	mdb	%f0,.L725-.L722(%r5)
	kdb	%f0,.L724-.L722(%r5)
	jhe	.L704
.L705:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L721:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L700
.L718:
	kdb	%f0,.L725-.L722(%r5)
	jnl	.L719
	cdb	%f0,.L723-.L722(%r5)
	je	.L711
	lhi	%r1,0
.L707:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L725-.L722(%r5)
	jl	.L707
	j	.L705
.L719:
	lhi	%r1,0
	j	.L705
.L711:
	lhi	%r1,0
	j	.L705
	.section	.rodata
	.align	8
.L722:
.L725:
	.long	1071644672
	.long	0
.L724:
	.long	1072693248
	.long	0
.L723:
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
	je	.L730
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
	j	.L729
.L732:
	lr	%r7,%r12
	nr	%r7,%r4
	lr	%r4,%r5
	nr	%r4,%r13
	alr	%r3,%r4
	alcr	%r2,%r7
	sldl	%r12,1
	srdl	%r0,1
	lr	%r4,%r0
	or	%r4,%r1
	je	.L737
.L729:
	lhi	%r8,0
	lhi	%r4,1
	nr	%r4,%r1
	lr	%r9,%r4
	lcr	%r4,%r8
	lcr	%r5,%r9
	je	.L732
	ahi	%r4,-1
	j	.L732
.L730:
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
.L737:
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
	jhe	.L744
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L740:
	ltr	%r3,%r3
	jl	.L744
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L742
	ahi	%r2,-1
	brct	%r0,.L740
.L743:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L742:
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L743
.L744:
	lhi	%r2,0
	j	.L747
.L746:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L743
.L747:
	clr	%r5,%r3
	jl	.L746
	sr	%r5,%r3
	or	%r2,%r1
	j	.L746
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
	je	.L757
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
.L757:
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
	lr	%r2,%r0
	xr	%r2,%r4
	lr	%r3,%r1
	xr	%r3,%r5
	lr	%r1,%r2
	or	%r1,%r3
	je	.L766
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
.L766:
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
	je	.L775
	lhi	%r2,0
.L774:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L774
	br	%r14
.L775:
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
	jhe	.L780
.L783:
	ltr	%r5,%r5
	je	.L803
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r5,3
	ahi	%r5,-8
	srl	%r5,3
	ahi	%r5,1
.L786:
	l	%r10,0(%r12,%r3)
	l	%r11,4(%r12,%r3)
	st	%r10,0(%r12,%r2)
	st	%r11,4(%r12,%r2)
	ahi	%r12,8
	brct	%r5,.L786
	clr	%r4,%r1
	jle	.L779
	sr	%r4,%r1
.L787:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L787
.L779:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L780:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L783
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L784:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L784
	br	%r14
.L803:
	clr	%r4,%r1
	bler	%r14
	sr	%r4,%r1
.L799:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L799
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
	jhe	.L806
.L809:
	ltr	%r1,%r1
	je	.L808
	lhi	%r5,0
	sll	%r1,1
	ahi	%r1,-2
	srl	%r1,1
	ahi	%r1,1
.L812:
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahi	%r5,2
	brct	%r1,.L812
.L808:
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L806:
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jl	.L809
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L810:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L810
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
	jhe	.L821
.L824:
	ltr	%r5,%r5
	je	.L844
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r5,2
	ahi	%r5,-4
	srl	%r5,2
	ahi	%r5,1
.L827:
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	ahi	%r12,4
	brct	%r5,.L827
	clr	%r4,%r1
	jle	.L820
	sr	%r4,%r1
.L828:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L828
.L820:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L821:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L824
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r5,%r1
	ahi	%r5,1
	ltr	%r4,%r4
	ber	%r14
.L825:
	ic	%r4,0(%r1,%r3)
	stc	%r4,0(%r1,%r2)
	ahi	%r1,-1
	brct	%r5,.L825
	br	%r14
.L844:
	clr	%r4,%r1
	bler	%r14
	sr	%r4,%r1
.L840:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L840
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
	larl	%r5,.L851
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L852-.L851(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L851:
.L852:
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
	larl	%r5,.L857
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L856
.L854:
	ledbr	%f0,%f0
	br	%r14
.L856:
	adb	%f0,.L858-.L857(%r5)
	j	.L854
	.section	.rodata
	.align	8
.L857:
.L858:
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
.L869:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L869
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
.L875:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L875
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
	larl	%r5,.L887
	keb	%f0,.L888-.L887(%r5)
	jhe	.L886
	cfebr	%r2,5,%f0
	br	%r14
.L886:
	seb	%f0,.L888-.L887(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L889-.L887(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L887:
.L888:
	.long	1191182336
.L889:
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
.L891:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L891
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
.L896:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ar	%r2,%r1
	ahi	%r4,1
	brct	%r3,.L896
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
	je	.L903
	lhi	%r2,0
.L902:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L902
	br	%r14
.L903:
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
	je	.L910
	ltr	%r3,%r3
	je	.L911
	lhi	%r2,0
.L909:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L909
	br	%r14
.L910:
	lr	%r2,%r4
	br	%r14
.L911:
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
	jhe	.L920
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L916:
	ltr	%r3,%r3
	jl	.L920
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L918
	ahi	%r2,-1
	brct	%r0,.L916
.L919:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L918:
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L919
.L920:
	lhi	%r2,0
	j	.L923
.L922:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L919
.L923:
	clr	%r5,%r3
	jl	.L922
	sr	%r5,%r3
	or	%r2,%r1
	j	.L922
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
	jl	.L934
	lhi	%r2,1
	jh	.L933
	lhi	%r2,0
.L933:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L934:
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
	jl	.L939
	lhi	%r2,1
	jh	.L938
	lhi	%r2,0
.L938:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L939:
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
	jl	.L954
	lhi	%r0,0
	ltr	%r3,%r3
	je	.L955
.L951:
	lhi	%r5,32
	lhi	%r2,0
.L949:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	je	.L948
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L949
.L948:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L954:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L951
.L955:
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
	jl	.L966
	ltr	%r3,%r3
	jl	.L967
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	j	.L957
.L966:
	lcr	%r2,%r2
	ltr	%r3,%r3
	jl	.L968
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
.L961:
	lcr	%r2,%r2
.L957:
	lm	%r14,%r15,152(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
.L967:
	.cfi_restore_state
	lhi	%r4,0
	lcr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L961
.L968:
	lhi	%r4,0
	lcr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L957
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
	jl	.L974
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	j	.L970
.L974:
	lhi	%r4,1
	lpr	%r3,%r3
	lcr	%r2,%r2
	brasl	%r14,__udivmodsi4
	lcr	%r2,%r2
.L970:
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
	larl	%r13,.L993
	lr	%r5,%r2
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L981
	lhi	%r1,1
	lhi	%r0,16
.L977:
	tml	%r3,32768
	jne	.L981
	sll	%r3,1
	n	%r3,.L994-.L993(%r13)
	lr	%r2,%r1
	sll	%r2,1
	lr	%r1,%r2
	clr	%r5,%r3
	jle	.L979
	brct	%r0,.L977
	lhi	%r2,0
.L980:
	ltr	%r4,%r4
	jne	.L992
.L985:
	n	%r2,.L994-.L993(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L979:
	.cfi_restore_state
	tml	%r2,65535
	je	.L980
.L981:
	lhi	%r2,0
	j	.L984
.L983:
	n	%r1,.L994-.L993(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L980
.L984:
	clr	%r5,%r3
	jl	.L983
	sr	%r5,%r3
	n	%r5,.L994-.L993(%r13)
	or	%r2,%r1
	j	.L983
.L992:
	lr	%r2,%r5
	j	.L985
	.section	.rodata
	.align	8
.L993:
.L994:
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
	jhe	.L1000
	lhi	%r2,32
	lhi	%r1,1
	lhi	%r0,32
.L996:
	ltr	%r3,%r3
	jl	.L1000
	sll	%r3,1
	sll	%r1,1
	clr	%r5,%r3
	jle	.L998
	ahi	%r2,-1
	brct	%r0,.L996
.L999:
	ltr	%r4,%r4
	ber	%r14
	lr	%r2,%r5
	br	%r14
.L998:
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L999
.L1000:
	lhi	%r2,0
	j	.L1003
.L1002:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L999
.L1003:
	clr	%r5,%r3
	jl	.L1002
	sr	%r5,%r3
	or	%r2,%r1
	j	.L1002
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
	je	.L1012
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
.L1013:
	lr	%r3,%r1
	br	%r14
.L1012:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	sll	%r2,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	or	%r2,%r3
	j	.L1013
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
	je	.L1018
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L1019:
	lr	%r2,%r1
	br	%r14
.L1018:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1019
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
	larl	%r13,.L1025
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r6,%r2
	lr	%r7,%r3
	srdl	%r6,56
	srdl	%r2,40
	l	%r1,.L1026-.L1025(%r13)
	nr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,24
	l	%r10,.L1027-.L1025(%r13)
	nr	%r10,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,8
	l	%r0,.L1028-.L1025(%r13)
	nr	%r0,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,8
	lhi	%r11,255
	nr	%r11,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,24
	l	%r9,.L1026-.L1025(%r13)
	nr	%r9,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,40
	n	%r2,.L1027-.L1025(%r13)
	sldl	%r4,56
	or	%r4,%r6
	or	%r1,%r7
	lr	%r3,%r1
	or	%r3,%r10
	or	%r4,%r11
	or	%r4,%r9
	or	%r2,%r4
	or	%r3,%r0
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
.L1025:
.L1028:
	.long	-16777216
.L1027:
	.long	16711680
.L1026:
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
	larl	%r5,.L1031
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L1032-.L1031(%r5)
	sll	%r2,8
	n	%r2,.L1033-.L1031(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L1031:
.L1033:
	.long	16711680
.L1032:
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
	larl	%r13,.L1036
	lr	%r1,%r2
	cl	%r2,.L1037-.L1036(%r13)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r3,%r3
	sll	%r3,4
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	l	%r2,.L1038-.L1036(%r13)
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
	ar	%r3,%r2
	lhi	%r2,2
	nr	%r2,%r1
	srl	%r2,1
	lhi	%r5,1
	xr	%r2,%r5
	lhi	%r5,255
	nr	%r2,%r5
	sr	%r4,%r1
	lcr	%r2,%r2
	nr	%r2,%r4
	ar	%r2,%r3
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L1036:
.L1038:
	.long	65280
.L1037:
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
	jl	.L1041
	jh	.L1042
	clr	%r3,%r5
	jl	.L1043
	jh	.L1044
	lhi	%r2,1
	br	%r14
.L1041:
	lhi	%r2,0
	br	%r14
.L1042:
	lhi	%r2,2
	br	%r14
.L1043:
	lhi	%r2,0
	br	%r14
.L1044:
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
	larl	%r5,.L1051
	lr	%r1,%r2
	l	%r3,.L1052-.L1051(%r5)
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
	ar	%r3,%r2
	lhi	%r2,15
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,2
	srl	%r1,0(%r2)
	ar	%r3,%r2
	lhi	%r2,3
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,1
	srl	%r1,0(%r2)
	lhi	%r4,3
	nr	%r4,%r1
	ar	%r3,%r2
	lhi	%r2,1
	nr	%r1,%r2
	xr	%r1,%r2
	srl	%r4,1
	lhi	%r2,2
	sr	%r2,%r4
	lcr	%r1,%r1
	nr	%r2,%r1
	ar	%r2,%r3
	br	%r14
	.section	.rodata
	.align	8
.L1051:
.L1052:
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
	je	.L1054
	lhi	%r1,0
	srl	%r2,4064(%r4)
	lr	%r3,%r2
.L1055:
	lr	%r2,%r1
	br	%r14
.L1054:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1055
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	st	%r13,52(%r15)
	.cfi_offset 13, -44
	larl	%r13,.L1061
	lr	%r4,%r3
	l	%r5,.L1062-.L1061(%r13)
	nr	%r5,%r2
	l	%r0,.L1062-.L1061(%r13)
	nr	%r0,%r3
	lr	%r3,%r5
	msr	%r3,%r0
	lr	%r1,%r3
	srl	%r1,16
	srl	%r2,16
	msr	%r0,%r2
	ar	%r1,%r0
	lr	%r0,%r1
	srl	%r0,16
	n	%r1,.L1062-.L1061(%r13)
	n	%r3,.L1062-.L1061(%r13)
	srl	%r4,16
	msr	%r5,%r4
	ar	%r1,%r5
	lr	%r5,%r1
	sll	%r5,16
	srl	%r1,16
	ar	%r1,%r0
	msr	%r2,%r4
	ar	%r2,%r1
	ar	%r3,%r5
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L1061:
.L1062:
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
	lr	%r10,%r3
	lr	%r11,%r4
	lr	%r12,%r5
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
	je	.L1067
	ahi	%r2,-1
.L1067:
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
	xr	%r3,%r2
	lr	%r2,%r3
	srl	%r2,16
	xr	%r2,%r3
	lr	%r3,%r2
	srl	%r3,8
	xr	%r3,%r2
	lr	%r1,%r3
	srl	%r1,4
	xr	%r1,%r3
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
	larl	%r13,.L1075
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r12,.L1076-.L1075(%r13)
	nr	%r12,%r0
	lr	%r2,%r12
	l	%r12,.L1076-.L1075(%r13)
	nr	%r12,%r1
	slr	%r5,%r12
	slbr	%r4,%r2
	lr	%r0,%r4
	lr	%r1,%r5
	srdl	%r0,2
	l	%r12,.L1077-.L1075(%r13)
	nr	%r12,%r0
	lr	%r2,%r12
	l	%r12,.L1077-.L1075(%r13)
	nr	%r12,%r1
	lr	%r3,%r12
	l	%r12,.L1077-.L1075(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L1077-.L1075(%r13)
	nr	%r12,%r5
	alr	%r3,%r12
	alcr	%r2,%r0
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r3,%r5
	alcr	%r2,%r4
	l	%r1,.L1078-.L1075(%r13)
	nr	%r1,%r2
	l	%r4,.L1078-.L1075(%r13)
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
.L1075:
.L1078:
	.long	252645135
.L1077:
	.long	858993459
.L1076:
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
	larl	%r5,.L1081
	lr	%r1,%r2
	srl	%r1,1
	n	%r1,.L1082-.L1081(%r5)
	sr	%r2,%r1
	lr	%r1,%r2
	srl	%r1,2
	n	%r1,.L1083-.L1081(%r5)
	n	%r2,.L1083-.L1081(%r5)
	ar	%r2,%r1
	lr	%r1,%r2
	srl	%r1,4
	ar	%r1,%r2
	n	%r1,.L1084-.L1081(%r5)
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
.L1081:
.L1084:
	.long	252645135
.L1083:
	.long	858993459
.L1082:
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
	larl	%r5,.L1091
	ldr	%f2,%f0
	lr	%r3,%r2
	srl	%r3,31
	ld	%f0,.L1092-.L1091(%r5)
	j	.L1088
.L1086:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1087
	mdbr	%f2,%f2
.L1088:
	tml	%r2,1
	je	.L1086
	mdbr	%f0,%f2
	j	.L1086
.L1087:
	ltr	%r3,%r3
	ber	%r14
	ld	%f2,.L1092-.L1091(%r5)
	ddbr	%f2,%f0
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1091:
.L1092:
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
	larl	%r5,.L1099
	ler	%f2,%f0
	lr	%r3,%r2
	srl	%r3,31
	le	%f0,.L1100-.L1099(%r5)
	j	.L1096
.L1094:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1095
	meebr	%f2,%f2
.L1096:
	tml	%r2,1
	je	.L1094
	meebr	%f0,%f2
	j	.L1094
.L1095:
	ltr	%r3,%r3
	ber	%r14
	le	%f2,.L1100-.L1099(%r5)
	debr	%f2,%f0
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1099:
.L1100:
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
	jl	.L1103
	jh	.L1104
	clr	%r3,%r5
	jl	.L1105
	jh	.L1106
	lhi	%r2,1
	br	%r14
.L1103:
	lhi	%r2,0
	br	%r14
.L1104:
	lhi	%r2,2
	br	%r14
.L1105:
	lhi	%r2,0
	br	%r14
.L1106:
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
