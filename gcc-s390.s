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
	ahi	%r3,-1
	lr	%r5,%r2
	ahi	%r5,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L3
.L4:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
.L3:
	brct	%r1,.L4
	br	%r14
.L2:
	cr	%r2,%r3
	ber	%r14
	lhi	%r1,0
	ahi	%r4,1
	j	.L6
.L7:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L6:
	brct	%r4,.L7
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
	lr	%r0,%r5
	ahi	%r0,1
	brct	%r0,.L24
	j	.L25
.L24:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L17:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r4,%r1
	je	.L13
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
	brct	%r0,.L17
.L13:
	ltr	%r5,%r5
	je	.L16
	ahi	%r2,1
.L15:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L16:
	.cfi_restore_state
	lhi	%r2,0
	j	.L15
.L25:
	.cfi_restore 12
	ltr	%r5,%r5
	je	.L22
	ahi	%r2,1
	br	%r14
.L22:
	lhi	%r2,0
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
	lr	%r1,%r4
	ahi	%r1,1
	j	.L28
.L30:
	ahi	%r2,1
	ahi	%r4,-1
.L28:
	brct	%r1,.L33
	j	.L29
.L33:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r3,%r5
	jne	.L30
.L29:
	ltr	%r4,%r4
	bner	%r14
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
	lr	%r1,%r4
	ahi	%r1,1
	j	.L36
.L38:
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L36:
	brct	%r1,.L41
	j	.L37
.L41:
	lhi	%r0,0
	ic	%r0,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r0,%r5
	je	.L38
.L37:
	ltr	%r4,%r4
	je	.L40
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L40:
	lhi	%r2,0
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
	lhi	%r1,0
	ahi	%r4,1
	j	.L44
.L45:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L44:
	brct	%r4,.L45
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
	lr	%r1,%r4
	ahi	%r1,-1
	ahi	%r4,1
.L48:
	brct	%r4,.L50
	j	.L52
.L50:
	lhi	%r5,0
	ic	%r5,0(%r1,%r2)
	lr	%r0,%r1
	ahi	%r0,-1
	cr	%r3,%r5
	je	.L53
	lr	%r1,%r0
	j	.L48
.L53:
	ar	%r2,%r1
	br	%r14
.L52:
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
	lr	%r1,%r2
	ahi	%r4,1
	j	.L56
.L57:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L56:
	brct	%r4,.L57
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
	j	.L60
.L63:
	ahi	%r3,1
	ahi	%r2,1
.L60:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	jne	.L63
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
	j	.L66
.L69:
	ahi	%r2,1
.L66:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	ber	%r14
	cr	%r3,%r1
	jne	.L69
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
	lhi	%r4,-4096
.L73:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,1
	lhi	%r1,0
	ic	%r1,4095(%r2,%r4)
	ltr	%r1,%r1
	jne	.L73
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
	j	.L78
.L80:
	ahi	%r2,1
	ahi	%r3,1
.L78:
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	jne	.L79
	lr	%r1,%r4
	ltr	%r1,%r1
	jne	.L80
.L79:
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
	lr	%r1,%r2
	j	.L83
.L84:
	ahi	%r1,1
.L83:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ltr	%r3,%r3
	jne	.L84
	sr	%r1,%r2
	lr	%r2,%r1
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
	je	.L91
.L88:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L89
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L89
	brct	%r4,.L92
	j	.L89
.L92:
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	jne	.L89
	ahi	%r2,1
	ahi	%r3,1
	j	.L88
.L89:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L91:
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
	lr	%r1,%r4
	srl	%r1,1
	ahi	%r1,1
	ltr	%r4,%r4
	jhe	.L95
	lhi	%r1,1
	j	.L95
.L96:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L95:
	brct	%r1,.L96
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
	je	.L105
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L105:
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
	jle	.L109
	lhi	%r1,127
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L109:
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
	je	.L121
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L121:
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
	larl	%r5,.L131
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L127
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L128
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L129
	a	%r2,.L132-.L131(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L127:
	lhi	%r2,1
	br	%r14
.L128:
	lhi	%r2,1
	br	%r14
.L129:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L131:
.L132:
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
	larl	%r5,.L144
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L143
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L138
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L145-.L144(%r5)
	jle	.L139
	l	%r1,.L146-.L144(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L140
	l	%r1,.L147-.L144(%r5)
	ar	%r1,%r2
	cl	%r1,.L148-.L144(%r5)
	jh	.L141
	n	%r2,.L149-.L144(%r5)
	x	%r2,.L149-.L144(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L143:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L138:
	lhi	%r2,1
	br	%r14
.L139:
	lhi	%r2,1
	br	%r14
.L140:
	lhi	%r2,1
	br	%r14
.L141:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L144:
.L149:
	.long	65534
.L148:
	.long	1048579
.L147:
	.long	-65532
.L146:
	.long	-57344
.L145:
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
	jle	.L152
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L152:
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
	larl	%r5,.L165
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L160
	kdbr	%f0,%f2
	jnh	.L163
	sdbr	%f0,%f2
	br	%r14
.L160:
	ldr	%f0,%f2
	br	%r14
.L163:
	ld	%f0,.L166-.L165(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L165:
.L166:
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
	larl	%r5,.L176
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L171
	kebr	%f0,%f2
	jnh	.L174
	sebr	%f0,%f2
	br	%r14
.L171:
	ler	%f0,%f2
	br	%r14
.L174:
	le	%f0,.L177-.L176(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L176:
.L177:
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
	jo	.L184
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L180
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L180:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L181
	lhi	%r1,0
.L181:
	tml	%r1,255
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L184:
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
	jo	.L194
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L190
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L190:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L191
	lhi	%r1,0
.L191:
	tml	%r1,255
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L194:
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
	ahi	%r15,-160
	.cfi_def_cfa_offset 256
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
	jo	.L209
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L210
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L202
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	je	.L207
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L203:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L198
.L209:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L198
.L210:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L198
.L207:
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L203
.L202:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L204
	lhi	%r1,0
.L204:
	tml	%r1,255
	je	.L205
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L206:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L198:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L205:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L206
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
	jo	.L218
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L214
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L214:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L215
	lhi	%r1,0
.L215:
	tml	%r1,255
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L218:
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
	jo	.L229
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L225
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L225:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L226
	lhi	%r1,0
.L226:
	tml	%r1,255
	je	.L228
	ler	%f2,%f0
.L228:
	ler	%f0,%f2
	br	%r14
.L229:
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
	ahi	%r15,-160
	.cfi_def_cfa_offset 256
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
	jo	.L245
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L246
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L238
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	je	.L243
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
.L239:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L234
.L245:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L234
.L246:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L234
.L243:
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L239
.L238:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L240
	lhi	%r1,0
.L240:
	tml	%r1,255
	je	.L241
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
.L242:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L234:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L241:
	.cfi_restore_state
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L242
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
	larl	%r1,s.0
	larl	%r4,digits
	j	.L249
.L250:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L249:
	ltr	%r2,%r2
	jne	.L250
	mvi	0(%r1),0
	larl	%r2,s.0
	br	%r14
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
	je	.L260
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	l	%r1,0(%r2)
	st	%r2,4(%r1)
	br	%r14
.L260:
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
	je	.L263
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L263:
	icm	%r1,15,4(%r2)
	ber	%r14
	l	%r1,4(%r2)
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
	st	%r3,100(%r15)
	lr	%r7,%r4
	lr	%r9,%r5
	l	%r13,0(%r4)
	lr	%r11,%r3
	lhi	%r10,0
	lr	%r12,%r13
	ahi	%r12,1
	j	.L267
.L268:
	ahi	%r10,1
.L267:
	brct	%r12,.L270
	j	.L272
.L270:
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L268
	msr	%r10,%r9
	l	%r2,100(%r15)
	ar	%r2,%r10
	j	.L269
.L272:
	lr	%r1,%r13
	ahi	%r1,1
	st	%r1,0(%r7)
	lr	%r2,%r13
	msr	%r2,%r9
	lr	%r4,%r9
	lr	%r3,%r8
	a	%r2,100(%r15)
	brasl	%r14,memcpy
.L269:
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
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	lr	%r11,%r3
	lhi	%r10,0
	l	%r12,0(%r4)
	ahi	%r12,1
	j	.L275
.L276:
	ahi	%r10,1
.L275:
	brct	%r12,.L278
	j	.L280
.L278:
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L276
	msr	%r10,%r9
	lr	%r2,%r8
	ar	%r2,%r10
	j	.L277
.L280:
	lhi	%r2,0
.L277:
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L285
.L286:
	ahi	%r12,1
.L285:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L286
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L292
	chi	%r1,45
	jne	.L293
	lhi	%r5,1
.L287:
	ahi	%r12,1
.L288:
	lhi	%r4,0
	j	.L289
.L292:
	lhi	%r5,0
	j	.L287
.L293:
	lhi	%r5,0
	j	.L288
.L290:
	lr	%r2,%r4
	sll	%r2,2
	ar	%r2,%r4
	sll	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	sr	%r2,%r3
	lr	%r4,%r2
	ahi	%r12,1
.L289:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L290
	ltr	%r5,%r5
	jne	.L294
	lcr	%r2,%r4
.L291:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L294:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L291
	.cfi_endproc
.LFE45:
	.size	atoi, .-atoi
	.align	8
.globl atol
	.type	atol, @function
atol:
.LFB46:
	.cfi_startproc
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L298
.L299:
	ahi	%r12,1
.L298:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L299
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L305
	chi	%r1,45
	jne	.L306
	lhi	%r5,1
.L300:
	ahi	%r12,1
.L301:
	lhi	%r4,0
	j	.L302
.L305:
	lhi	%r5,0
	j	.L300
.L306:
	lhi	%r5,0
	j	.L301
.L303:
	lr	%r2,%r4
	sll	%r2,2
	ar	%r2,%r4
	sll	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	sr	%r2,%r3
	lr	%r4,%r2
	ahi	%r12,1
.L302:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L303
	ltr	%r5,%r5
	jne	.L307
	lcr	%r2,%r4
.L304:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L307:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L304
	.cfi_endproc
.LFE46:
	.size	atol, .-atol
	.align	8
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
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r12,%r2
	j	.L311
.L312:
	ahi	%r12,1
.L311:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L312
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L318
	chi	%r1,45
	jne	.L319
	lhi	%r0,1
.L313:
	ahi	%r12,1
.L314:
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
	j	.L315
.L318:
	lhi	%r0,0
	j	.L313
.L319:
	lhi	%r0,0
	j	.L314
.L316:
	lr	%r2,%r12
	lr	%r3,%r13
	sldl	%r2,2
	alr	%r3,%r13
	alcr	%r2,%r12
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
	ahi	%r1,1
.L315:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ahi	%r3,-48
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L316
	ltr	%r0,%r0
	jne	.L320
	lcr	%r2,%r12
	lcr	%r3,%r13
	je	.L317
	ahi	%r2,-1
	j	.L317
.L320:
	lr	%r2,%r12
	lr	%r3,%r13
.L317:
	lm	%r12,%r15,144(%r15)
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
.globl bsearch
	.type	bsearch, @function
bsearch:
.LFB48:
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
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r11,%r4
	lr	%r10,%r5
	j	.L325
.L333:
	srl	%r11,1
.L325:
	ltr	%r11,%r11
	je	.L332
	lr	%r12,%r11
	srl	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L333
	ltr	%r2,%r2
	jle	.L330
	ar	%r12,%r10
	lr	%r9,%r12
	lr	%r1,%r11
	srl	%r1,1
	ahi	%r11,-1
	sr	%r11,%r1
	j	.L325
.L332:
	lhi	%r2,0
.L328:
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
.L330:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L328
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
	lr	%r9,%r5
	l	%r7,192(%r15)
	lr	%r11,%r4
	lr	%r10,%r3
	j	.L336
.L338:
	sra	%r11,1
.L336:
	ltr	%r11,%r11
	je	.L342
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r9
	ar	%r12,%r10
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L340
	ltr	%r2,%r2
	jle	.L338
	ar	%r12,%r9
	lr	%r10,%r12
	ahi	%r11,-1
	j	.L338
.L342:
	lhi	%r2,0
.L337:
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
.L340:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L337
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
	jl	.L351
.L348:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L351:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L348
	ahi	%r4,-1
	j	.L348
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
	j	.L371
.L373:
	ahi	%r2,4
.L371:
	icm	%r1,15,0(%r2)
	je	.L372
	c	%r3,0(%r2)
	jne	.L373
.L372:
	icm	%r1,15,0(%r2)
	bner	%r14
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
	j	.L378
.L380:
	ahi	%r2,4
	ahi	%r3,4
.L378:
	clc	0(4,%r3),0(%r2)
	jne	.L379
	icm	%r1,15,0(%r2)
	je	.L379
	icm	%r1,15,0(%r3)
	jne	.L380
.L379:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L383
	lhi	%r1,1
	jl	.L382
	lhi	%r1,0
.L382:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L383:
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
	lr	%r4,%r2
	ahi	%r4,-4
.L386:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	la	%r5,0(%r1,%r4)
	icm	%r5,15,0(%r5)
	jne	.L386
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
	j	.L391
.L392:
	ahi	%r2,4
.L391:
	icm	%r1,15,0(%r2)
	jne	.L392
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
	lr	%r1,%r4
	ahi	%r1,1
.L395:
	brct	%r1,.L402
	j	.L396
.L402:
	clc	0(4,%r3),0(%r2)
	jne	.L396
	icm	%r5,15,0(%r2)
	je	.L396
	icm	%r5,15,0(%r3)
	je	.L396
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	j	.L395
.L396:
	ltr	%r4,%r4
	je	.L400
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L401
	lhi	%r1,1
	jl	.L399
	lhi	%r1,0
.L399:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L400:
	lhi	%r2,0
	br	%r14
.L401:
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
	lr	%r1,%r4
	ahi	%r1,1
	j	.L405
.L407:
	ahi	%r4,-1
	ahi	%r2,4
.L405:
	brct	%r1,.L410
	j	.L406
.L410:
	c	%r3,0(%r2)
	jne	.L407
.L406:
	ltr	%r4,%r4
	bner	%r14
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
	lr	%r1,%r4
	ahi	%r1,1
	j	.L413
.L415:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L413:
	brct	%r1,.L420
	j	.L414
.L420:
	clc	0(4,%r3),0(%r2)
	je	.L415
.L414:
	ltr	%r4,%r4
	je	.L418
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L419
	lhi	%r1,1
	jl	.L417
	lhi	%r1,0
.L417:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L418:
	lhi	%r2,0
	br	%r14
.L419:
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
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L423
.L424:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L423:
	ahi	%r4,-1
	brct	%r5,.L424
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
	cr	%r2,%r3
	ber	%r14
	lr	%r5,%r2
	sr	%r5,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r5,%r1
	jhe	.L432
	ahi	%r4,-1
	sll	%r4,2
	lr	%r1,%r4
	ahi	%r1,4
	srl	%r1,2
	ahi	%r1,1
	j	.L429
.L430:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	ahi	%r4,-4
.L429:
	brct	%r1,.L430
	br	%r14
.L431:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L428:
	ahi	%r4,-1
	brct	%r5,.L431
	br	%r14
.L432:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L428
	.cfi_endproc
.LFE65:
	.size	wmemmove, .-wmemmove
	.align	8
.globl wmemset
	.type	wmemset, @function
wmemset:
.LFB66:
	.cfi_startproc
	lr	%r5,%r2
	lr	%r1,%r4
	ahi	%r1,1
	j	.L435
.L436:
	st	%r3,0(%r5)
	ahi	%r5,4
.L435:
	ahi	%r4,-1
	brct	%r1,.L436
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
	jhe	.L439
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L440
.L441:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L440:
	brct	%r1,.L441
	br	%r14
.L439:
	cr	%r2,%r3
	ber	%r14
	lhi	%r1,0
	ahi	%r4,1
	j	.L443
.L444:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L443:
	brct	%r4,.L444
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
	larl	%r5,.L464
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L465-.L464(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L464:
.L465:
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
	larl	%r5,.L468
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L469-.L468(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L468:
.L469:
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
	larl	%r5,.L476
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L477-.L476(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L476:
.L477:
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
	larl	%r5,.L480
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L481-.L480(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L482-.L480(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L480:
.L482:
	.long	65280
.L481:
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
	larl	%r13,.L485
	lr	%r4,%r3
	l	%r1,.L486-.L485(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,56
	lr	%r8,%r10
	lr	%r9,%r11
	l	%r1,.L487-.L485(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,40
	lr	%r1,%r10
	or	%r1,%r8
	lr	%r3,%r11
	or	%r3,%r9
	l	%r5,.L488-.L485(%r13)
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
	l	%r0,.L486-.L485(%r13)
	nr	%r0,%r4
	lr	%r3,%r0
	sldl	%r2,8
	or	%r1,%r2
	or	%r3,%r5
	lhi	%r10,0
	l	%r2,.L487-.L485(%r13)
	nr	%r2,%r4
	lr	%r11,%r2
	sldl	%r10,24
	lr	%r8,%r10
	lr	%r9,%r11
	or	%r1,%r8
	lhi	%r10,0
	l	%r2,.L488-.L485(%r13)
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
.L485:
.L488:
	.long	65280
.L487:
	.long	16711680
.L486:
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
	lhi	%r3,33
.L490:
	brct	%r3,.L493
	j	.L494
.L493:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L495
	ahi	%r1,1
	j	.L490
.L495:
	ahi	%r1,1
	lr	%r2,%r1
	br	%r14
.L494:
	lhi	%r2,0
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
	je	.L501
	lhi	%r2,1
	j	.L499
.L503:
	sra	%r1,1
	ahi	%r2,1
.L499:
	tml	%r1,1
	je	.L503
	br	%r14
.L501:
	lhi	%r2,0
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
	larl	%r5,.L510
	keb	%f0,.L511-.L510(%r5)
	jl	.L508
	lhi	%r2,1
	keb	%f0,.L512-.L510(%r5)
	jh	.L507
	lhi	%r2,0
.L507:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L508:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L510:
.L512:
	.long	2139095039
.L511:
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
	larl	%r5,.L518
	kdb	%f0,.L519-.L518(%r5)
	jl	.L516
	lhi	%r2,1
	kdb	%f0,.L520-.L518(%r5)
	jh	.L515
	lhi	%r2,0
.L515:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L516:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L518:
.L520:
	.long	2146435071
	.long	-1
.L519:
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
	larl	%r5,.L526
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L527-.L526(%r5)
	ld	%f3,.L527-.L526+8(%r5)
	kxbr	%f0,%f1
	jl	.L524
	lhi	%r2,1
	ld	%f1,.L528-.L526(%r5)
	ld	%f3,.L528-.L526+8(%r5)
	kxbr	%f0,%f1
	jh	.L523
	lhi	%r2,0
.L523:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L524:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L526:
.L528:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L527:
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
	larl	%r5,.L539
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L538
	le	%f2,.L540-.L539(%r5)
	j	.L535
.L538:
	le	%f2,.L541-.L539(%r5)
	j	.L535
.L534:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L535:
	tml	%r2,1
	je	.L534
	meebr	%f0,%f2
	j	.L534
	.section	.rodata
	.align	8
.L539:
.L541:
	.long	1056964608
.L540:
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
	larl	%r5,.L550
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L549
	ld	%f2,.L551-.L550(%r5)
	j	.L546
.L549:
	ld	%f2,.L552-.L550(%r5)
	j	.L546
.L545:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L546:
	tml	%r2,1
	je	.L545
	mdbr	%f0,%f2
	j	.L545
	.section	.rodata
	.align	8
.L550:
.L552:
	.long	1071644672
	.long	0
.L551:
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
	larl	%r5,.L561
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L554
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L554
	ltr	%r4,%r4
	jl	.L560
	ld	%f0,.L562-.L561(%r5)
	ld	%f2,.L562-.L561+8(%r5)
	j	.L557
.L560:
	ld	%f0,.L563-.L561(%r5)
	ld	%f2,.L563-.L561+8(%r5)
	j	.L557
.L556:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L554
	mxbr	%f0,%f0
.L557:
	tml	%r4,1
	je	.L556
	mxbr	%f1,%f0
	j	.L556
.L554:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L561:
.L563:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L562:
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
	lhi	%r1,0
	ahi	%r4,1
	j	.L565
.L566:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L565:
	brct	%r4,.L566
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
	lhi	%r5,0
	lr	%r1,%r2
	srst	%r5,%r1
	jo	.-4
	lr	%r1,%r4
	ahi	%r1,1
	j	.L569
.L571:
	ahi	%r3,1
	ahi	%r5,1
	ahi	%r4,-1
.L569:
	brct	%r1,.L573
	j	.L570
.L573:
	ic	%r0,0(%r3)
	stc	%r0,0(%r5)
	tml	%r0,255
	jne	.L571
.L570:
	ltr	%r4,%r4
	bner	%r14
	mvi	0(%r5),0
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
	ahi	%r3,1
.L576:
	brct	%r3,.L579
	br	%r14
.L579:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	j	.L576
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
.L583:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L588
	lr	%r1,%r3
.L586:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	je	.L589
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	jne	.L586
	br	%r14
.L589:
	ahi	%r2,1
	j	.L583
.L588:
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
	lhi	%r5,-4096
	j	.L593
.L592:
	ahi	%r1,1
	lhi	%r4,0
	ic	%r4,4095(%r1,%r5)
	ltr	%r4,%r4
	ber	%r14
.L593:
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	jne	.L592
	lr	%r2,%r1
	j	.L592
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
	jhe	.L599
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
	lr	%r12,%r2
.L600:
	lr	%r3,%r9
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L599
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L603
	ahi	%r12,1
	j	.L600
.L603:
	lr	%r2,%r12
.L599:
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
	larl	%r5,.L621
	kdb	%f0,.L622-.L621(%r5)
	jl	.L620
.L607:
	kdb	%f0,.L622-.L621(%r5)
	jnh	.L610
	kdb	%f2,.L622-.L621(%r5)
	jl	.L609
.L610:
	br	%r14
.L620:
	kdb	%f2,.L622-.L621(%r5)
	jnh	.L607
.L609:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L621:
.L622:
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
	lr	%r10,%r3
	sr	%r10,%r5
	ar	%r10,%r2
	ltr	%r5,%r5
	je	.L624
	lr	%r11,%r4
	clr	%r5,%r3
	jh	.L629
	lr	%r12,%r2
	lr	%r8,%r4
	ahi	%r8,1
	ahi	%r5,-1
	lr	%r9,%r5
	j	.L625
.L626:
	ahi	%r12,1
.L625:
	clr	%r12,%r10
	jh	.L632
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r11)
	cr	%r2,%r1
	jne	.L626
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L626
	lr	%r2,%r12
	j	.L624
.L632:
	lhi	%r2,0
.L624:
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
.L629:
	.cfi_restore_state
	lhi	%r2,0
	j	.L624
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
	larl	%r5,.L660
	kdb	%f0,.L661-.L660(%r5)
	jl	.L658
	lhi	%r3,0
.L638:
	kdb	%f0,.L662-.L660(%r5)
	jnhe	.L659
	lhi	%r1,0
	j	.L640
.L658:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L638
.L642:
	ahi	%r1,1
	mdb	%f0,.L663-.L660(%r5)
.L640:
	kdb	%f0,.L662-.L660(%r5)
	jhe	.L642
.L643:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L659:
	kdb	%f0,.L663-.L660(%r5)
	jnl	.L656
	cdb	%f0,.L661-.L660(%r5)
	jne	.L651
	lhi	%r1,0
	j	.L643
.L646:
	ahi	%r1,-1
	adbr	%f0,%f0
.L645:
	kdb	%f0,.L663-.L660(%r5)
	jl	.L646
	j	.L643
.L651:
	lhi	%r1,0
	j	.L645
.L656:
	lhi	%r1,0
	j	.L643
	.section	.rodata
	.align	8
.L660:
.L663:
	.long	1071644672
	.long	0
.L662:
	.long	1072693248
	.long	0
.L661:
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
	stm	%r8,%r13,32(%r15)
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r12,%r4
	lr	%r13,%r5
	lr	%r0,%r2
	lr	%r1,%r3
	lhi	%r2,0
	lhi	%r3,0
	j	.L665
.L666:
	lhi	%r4,1
	nr	%r4,%r1
	lr	%r11,%r12
	msr	%r11,%r4
	lr	%r9,%r4
	mlr	%r8,%r13
	lr	%r4,%r8
	ar	%r4,%r11
	sldl	%r12,1
	srdl	%r0,1
	alr	%r3,%r9
	alcr	%r2,%r4
.L665:
	lr	%r4,%r0
	or	%r4,%r1
	jne	.L666
	lm	%r8,%r13,32(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L670
.L674:
	sll	%r3,1
	sll	%r1,1
.L670:
	clr	%r3,%r2
	jhe	.L682
	brct	%r5,.L680
	j	.L683
.L680:
	ltr	%r3,%r3
	jhe	.L674
	lhi	%r5,0
	j	.L672
.L682:
	lhi	%r5,0
	j	.L672
.L683:
	lhi	%r5,0
	j	.L672
.L675:
	srl	%r1,1
	srl	%r3,1
.L672:
	ltr	%r1,%r1
	je	.L684
	clr	%r2,%r3
	jl	.L675
	sr	%r2,%r3
	or	%r5,%r1
	j	.L675
.L684:
	ltr	%r4,%r4
	bner	%r14
	lr	%r2,%r5
	br	%r14
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
	je	.L688
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
.L688:
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
	je	.L697
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
.L697:
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
	lr	%r4,%r2
	lhi	%r2,0
	j	.L704
.L707:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	srl	%r4,1
	sll	%r3,1
	ar	%r2,%r1
.L704:
	ltr	%r4,%r4
	jne	.L707
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
	lr	%r0,%r4
	srl	%r0,3
	lhi	%r5,-8
	nr	%r5,%r4
	clr	%r2,%r3
	jl	.L710
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L710
	lr	%r1,%r4
	ahi	%r1,1
	j	.L711
.L715:
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L714:
	brct	%r1,.L715
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L717:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L711:
	ahi	%r4,-1
	brct	%r1,.L717
	br	%r14
.L710:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L729
	j	.L730
.L729:
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
.L713:
	l	%r12,0(%r1,%r3)
	l	%r13,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	st	%r13,4(%r1,%r2)
	ahi	%r1,8
	brct	%r0,.L713
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L719
	ltr	%r4,%r4
	jne	.L714
.L719:
	lhi	%r1,1
	j	.L714
.L730:
	.cfi_restore 12
	.cfi_restore 13
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L724
	ltr	%r4,%r4
	jne	.L725
.L724:
	lhi	%r1,1
	j	.L725
.L726:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L725:
	brct	%r1,.L726
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
	lr	%r5,%r4
	srl	%r5,1
	clr	%r2,%r3
	jl	.L733
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L733
	lr	%r1,%r4
	ahi	%r1,1
	j	.L734
.L733:
	lhi	%r1,0
	ahi	%r5,1
	j	.L735
.L736:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	ahi	%r1,2
.L735:
	brct	%r5,.L736
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L738:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L734:
	ahi	%r4,-1
	brct	%r1,.L738
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
	lr	%r0,%r4
	srl	%r0,2
	lhi	%r5,-4
	nr	%r5,%r4
	clr	%r2,%r3
	jl	.L742
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L742
	lr	%r1,%r4
	ahi	%r1,1
	j	.L743
.L747:
	.cfi_offset 12, -48
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L746:
	brct	%r1,.L747
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L749:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L743:
	ahi	%r4,-1
	brct	%r1,.L749
	br	%r14
.L742:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L761
	j	.L762
.L761:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L745:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	brct	%r0,.L745
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L751
	ltr	%r4,%r4
	jne	.L746
.L751:
	lhi	%r1,1
	j	.L746
.L762:
	.cfi_restore 12
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L756
	ltr	%r4,%r4
	jne	.L757
.L756:
	lhi	%r1,1
	j	.L757
.L758:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L757:
	brct	%r1,.L758
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
	larl	%r5,.L769
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L770-.L769(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L769:
.L770:
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
	larl	%r5,.L775
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L774
.L772:
	ledbr	%f0,%f0
	br	%r14
.L774:
	adb	%f0,.L776-.L775(%r5)
	j	.L772
	.section	.rodata
	.align	8
.L775:
.L776:
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
	lhi	%r1,17
.L786:
	brct	%r1,.L788
	br	%r14
.L788:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L786
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
	lhi	%r1,17
.L792:
	brct	%r1,.L794
	br	%r14
.L794:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L792
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	larl	%r5,.L805
	keb	%f0,.L806-.L805(%r5)
	jhe	.L804
	cfebr	%r2,5,%f0
	br	%r14
.L804:
	seb	%f0,.L806-.L805(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L807-.L805(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L805:
.L806:
	.long	1191182336
.L807:
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
	lhi	%r3,17
	j	.L809
.L810:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ahi	%r4,1
	ar	%r2,%r1
.L809:
	brct	%r3,.L810
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
	lhi	%r3,17
	j	.L813
.L814:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ahi	%r4,1
	ar	%r2,%r1
.L813:
	brct	%r3,.L814
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
	lr	%r4,%r2
	lhi	%r2,0
	j	.L817
.L820:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	srl	%r4,1
	sll	%r3,1
	ar	%r2,%r1
.L817:
	ltr	%r4,%r4
	jne	.L820
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
	je	.L826
	lhi	%r2,0
	j	.L824
.L828:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	sll	%r4,1
	srl	%r3,1
	ar	%r2,%r1
.L824:
	ltr	%r3,%r3
	jne	.L828
	br	%r14
.L826:
	lhi	%r2,0
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L831
.L835:
	sll	%r3,1
	sll	%r1,1
.L831:
	clr	%r3,%r2
	jhe	.L843
	brct	%r5,.L841
	j	.L844
.L841:
	ltr	%r3,%r3
	jhe	.L835
	lhi	%r5,0
	j	.L833
.L843:
	lhi	%r5,0
	j	.L833
.L844:
	lhi	%r5,0
	j	.L833
.L836:
	srl	%r1,1
	srl	%r3,1
.L833:
	ltr	%r1,%r1
	je	.L845
	clr	%r2,%r3
	jl	.L836
	sr	%r2,%r3
	or	%r5,%r1
	j	.L836
.L845:
	ltr	%r4,%r4
	bner	%r14
	lr	%r2,%r5
	br	%r14
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
	jl	.L850
	lhi	%r2,1
	jh	.L849
	lhi	%r2,0
.L849:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L850:
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
	jl	.L855
	lhi	%r2,1
	jh	.L854
	lhi	%r2,0
.L854:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L855:
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
	ltr	%r3,%r3
	jl	.L870
	lhi	%r0,0
.L863:
	lhi	%r5,33
	lhi	%r4,0
	j	.L864
.L870:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L863
.L866:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r2
	sll	%r2,1
	sra	%r3,1
	ar	%r4,%r1
.L864:
	ltr	%r3,%r3
	je	.L865
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L866
.L865:
	ltr	%r0,%r0
	je	.L869
	lcr	%r2,%r4
	br	%r14
.L869:
	lr	%r2,%r4
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
	stm	%r12,%r15,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r2,%r2
	jl	.L878
	lhi	%r12,0
.L873:
	ltr	%r3,%r3
	jl	.L879
.L874:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L875
	lcr	%r2,%r2
.L875:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L878:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L873
.L879:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L874
	.cfi_endproc
.LFE127:
	.size	__divsi3, .-__divsi3
	.align	8
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
	jl	.L886
	lhi	%r12,0
.L882:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L883
	lcr	%r2,%r2
.L883:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L886:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L882
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
	larl	%r13,.L906
	lhi	%r1,1
	lhi	%r5,17
.L889:
	clr	%r3,%r2
	jhe	.L902
	brct	%r5,.L899
	j	.L903
.L899:
	tml	%r3,32768
	jne	.L904
	sll	%r3,1
	n	%r3,.L907-.L906(%r13)
	sll	%r1,1
	j	.L889
.L902:
	lhi	%r5,0
	j	.L891
.L903:
	lhi	%r5,0
	j	.L891
.L904:
	lhi	%r5,0
	j	.L891
.L894:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
.L891:
	tml	%r1,65535
	je	.L905
	clr	%r2,%r3
	jl	.L894
	sr	%r2,%r3
	n	%r2,.L907-.L906(%r13)
	or	%r5,%r1
	j	.L894
.L905:
	ltr	%r4,%r4
	jne	.L896
	lr	%r2,%r5
.L896:
	n	%r2,.L907-.L906(%r13)
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L906:
.L907:
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L909
.L913:
	sll	%r3,1
	sll	%r1,1
.L909:
	clr	%r3,%r2
	jhe	.L921
	brct	%r5,.L919
	j	.L922
.L919:
	ltr	%r3,%r3
	jhe	.L913
	lhi	%r5,0
	j	.L911
.L921:
	lhi	%r5,0
	j	.L911
.L922:
	lhi	%r5,0
	j	.L911
.L914:
	srl	%r1,1
	srl	%r3,1
.L911:
	ltr	%r1,%r1
	je	.L923
	clr	%r2,%r3
	jl	.L914
	sr	%r2,%r3
	or	%r5,%r1
	j	.L914
.L923:
	ltr	%r4,%r4
	bner	%r14
	lr	%r2,%r5
	br	%r14
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
	je	.L926
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
.L927:
	lr	%r3,%r1
	br	%r14
.L926:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	sll	%r2,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	or	%r2,%r3
	j	.L927
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
	je	.L932
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L933:
	lr	%r2,%r1
	br	%r14
.L932:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L933
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
	larl	%r13,.L939
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r6,%r2
	lr	%r7,%r3
	srdl	%r6,56
	srdl	%r2,40
	l	%r1,.L940-.L939(%r13)
	nr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,24
	l	%r10,.L941-.L939(%r13)
	nr	%r10,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,8
	l	%r0,.L942-.L939(%r13)
	nr	%r0,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,8
	lhi	%r11,255
	nr	%r11,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,24
	l	%r9,.L940-.L939(%r13)
	nr	%r9,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,40
	n	%r2,.L941-.L939(%r13)
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
.L939:
.L942:
	.long	-16777216
.L941:
	.long	16711680
.L940:
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
	larl	%r5,.L945
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L946-.L945(%r5)
	sll	%r2,8
	n	%r2,.L947-.L945(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L945:
.L947:
	.long	16711680
.L946:
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
	larl	%r13,.L950
	lr	%r1,%r2
	cl	%r2,.L951-.L950(%r13)
	lhi	%r3,0
	slbr	%r3,%r3
	lcr	%r3,%r3
	sll	%r3,4
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	l	%r2,.L952-.L950(%r13)
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
	lhi	%r4,12
	nr	%r4,%r1
	ahi	%r4,-1
	srl	%r4,31
	sll	%r4,1
	lhi	%r5,2
	lr	%r2,%r5
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	lhi	%r2,2
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sr	%r5,%r1
	msr	%r2,%r5
	ar	%r2,%r3
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L950:
.L952:
	.long	65280
.L951:
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
	jl	.L955
	jh	.L956
	clr	%r3,%r5
	jl	.L957
	jh	.L958
	lhi	%r2,1
	br	%r14
.L955:
	lhi	%r2,0
	br	%r14
.L956:
	lhi	%r2,2
	br	%r14
.L957:
	lhi	%r2,0
	br	%r14
.L958:
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
	st	%r15,60(%r15)
	larl	%r5,.L965
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	l	%r3,.L966-.L965(%r5)
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
	nr	%r1,%r4
	ar	%r3,%r2
	lhi	%r2,1
	nr	%r2,%r1
	st	%r2,100(%r15)
	xi	103(%r15),1
	srl	%r1,1
	lhi	%r2,2
	sr	%r2,%r1
	l	%r1,100(%r15)
	lcr	%r1,%r1
	nr	%r2,%r1
	ar	%r2,%r3
	l	%r15,164(%r15)
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L965:
.L966:
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
	je	.L968
	lhi	%r1,0
	srl	%r2,4064(%r4)
	lr	%r3,%r2
.L969:
	lr	%r2,%r1
	br	%r14
.L968:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L969
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
	larl	%r13,.L975
	lr	%r4,%r3
	l	%r5,.L976-.L975(%r13)
	nr	%r5,%r2
	l	%r0,.L976-.L975(%r13)
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
	n	%r1,.L976-.L975(%r13)
	n	%r3,.L976-.L975(%r13)
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
.L975:
.L976:
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
	je	.L981
	ahi	%r2,-1
.L981:
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
	lr	%r1,%r3
	srl	%r1,16
	xr	%r3,%r1
	lr	%r1,%r3
	srl	%r1,8
	xr	%r3,%r1
	lr	%r1,%r3
	srl	%r1,4
	xr	%r3,%r1
	lhi	%r1,15
	nr	%r3,%r1
	lhi	%r2,27030
	sra	%r2,0(%r3)
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
	xr	%r2,%r1
	lr	%r1,%r2
	srl	%r1,8
	xr	%r2,%r1
	lr	%r1,%r2
	srl	%r1,4
	xr	%r2,%r1
	lhi	%r1,15
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
	larl	%r13,.L989
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r2,1
	l	%r12,.L990-.L989(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L990-.L989(%r13)
	nr	%r12,%r3
	lr	%r2,%r0
	lr	%r3,%r1
	slr	%r3,%r12
	slbr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,2
	l	%r12,.L991-.L989(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L991-.L989(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	l	%r12,.L991-.L989(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L991-.L989(%r13)
	nr	%r12,%r3
	lr	%r2,%r0
	lr	%r3,%r1
	alr	%r3,%r12
	alcr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,4
	alr	%r5,%r3
	alcr	%r4,%r2
	l	%r1,.L992-.L989(%r13)
	nr	%r1,%r4
	lr	%r2,%r1
	l	%r1,.L992-.L989(%r13)
	nr	%r1,%r5
	ar	%r2,%r1
	lr	%r1,%r2
	srl	%r1,16
	ar	%r2,%r1
	lr	%r1,%r2
	srl	%r1,8
	ar	%r2,%r1
	lhi	%r1,127
	nr	%r2,%r1
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.section	.rodata
	.align	8
.L989:
.L992:
	.long	252645135
.L991:
	.long	858993459
.L990:
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
	larl	%r5,.L995
	lr	%r1,%r2
	srl	%r2,1
	n	%r2,.L996-.L995(%r5)
	sr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L997-.L995(%r5)
	n	%r1,.L997-.L995(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L998-.L995(%r5)
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
.L995:
.L998:
	.long	252645135
.L997:
	.long	858993459
.L996:
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
	larl	%r5,.L1006
	lr	%r3,%r2
	srl	%r3,31
	ld	%f2,.L1007-.L1006(%r5)
	j	.L1002
.L1000:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1001
	mdbr	%f0,%f0
.L1002:
	tml	%r2,1
	je	.L1000
	mdbr	%f2,%f0
	j	.L1000
.L1001:
	ltr	%r3,%r3
	je	.L1004
	ld	%f0,.L1007-.L1006(%r5)
	ddbr	%f0,%f2
	br	%r14
.L1004:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1006:
.L1007:
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
	larl	%r5,.L1015
	lr	%r3,%r2
	srl	%r3,31
	le	%f2,.L1016-.L1015(%r5)
	j	.L1011
.L1009:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1010
	meebr	%f0,%f0
.L1011:
	tml	%r2,1
	je	.L1009
	meebr	%f2,%f0
	j	.L1009
.L1010:
	ltr	%r3,%r3
	je	.L1013
	le	%f0,.L1016-.L1015(%r5)
	debr	%f0,%f2
	br	%r14
.L1013:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1015:
.L1016:
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
	jl	.L1019
	jh	.L1020
	clr	%r3,%r5
	jl	.L1021
	jh	.L1022
	lhi	%r2,1
	br	%r14
.L1019:
	lhi	%r2,0
	br	%r14
.L1020:
	lhi	%r2,2
	br	%r14
.L1021:
	lhi	%r2,0
	br	%r14
.L1022:
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
