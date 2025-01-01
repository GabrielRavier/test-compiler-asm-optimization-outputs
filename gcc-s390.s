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
	jle	.L10
	ahi	%r3,-1
	lr	%r5,%r2
	ahi	%r5,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L2
.L4:
	ic	%r0,0(%r4,%r3)
	stc	%r0,0(%r4,%r5)
	ahi	%r4,-1
.L2:
	brct	%r1,.L4
	br	%r14
.L10:
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
	brct	%r0,.L26
	j	.L27
.L26:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L19:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r4,%r1
	je	.L15
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
	brct	%r0,.L19
.L15:
	ltr	%r5,%r5
	je	.L18
	ahi	%r2,1
.L17:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L18:
	.cfi_restore_state
	lhi	%r2,0
	j	.L17
.L27:
	.cfi_restore 12
	ltr	%r5,%r5
	je	.L24
	ahi	%r2,1
	br	%r14
.L24:
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
	j	.L30
.L32:
	ahi	%r2,1
	ahi	%r4,-1
.L30:
	brct	%r1,.L35
	j	.L31
.L35:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r3,%r5
	jne	.L32
.L31:
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
	j	.L38
.L40:
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L38:
	brct	%r1,.L43
	j	.L39
.L43:
	lhi	%r0,0
	ic	%r0,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r0,%r5
	je	.L40
.L39:
	ltr	%r4,%r4
	je	.L42
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L42:
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
	j	.L46
.L47:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L46:
	brct	%r4,.L47
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
.L50:
	brct	%r4,.L52
	j	.L54
.L52:
	lhi	%r5,0
	ic	%r5,0(%r1,%r2)
	lr	%r0,%r1
	ahi	%r0,-1
	cr	%r3,%r5
	je	.L55
	lr	%r1,%r0
	j	.L50
.L55:
	ar	%r2,%r1
	br	%r14
.L54:
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
	j	.L58
.L59:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L58:
	brct	%r4,.L59
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
	j	.L62
.L65:
	ahi	%r3,1
	ahi	%r2,1
.L62:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	jne	.L65
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
	j	.L68
.L71:
	ahi	%r2,1
.L68:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	ber	%r14
	cr	%r3,%r1
	jne	.L71
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
.L75:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,1
	lhi	%r1,0
	ic	%r1,4095(%r2,%r4)
	ltr	%r1,%r1
	jne	.L75
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
	j	.L80
.L82:
	ahi	%r2,1
	ahi	%r3,1
.L80:
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	jne	.L81
	lr	%r1,%r4
	ltr	%r1,%r1
	jne	.L82
.L81:
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
	j	.L85
.L86:
	ahi	%r1,1
.L85:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ltr	%r3,%r3
	jne	.L86
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
	je	.L93
.L90:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L91
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L91
	brct	%r4,.L94
	j	.L91
.L94:
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	jne	.L91
	ahi	%r2,1
	ahi	%r3,1
	j	.L90
.L91:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L93:
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
	jhe	.L97
	lhi	%r1,1
	j	.L97
.L98:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L97:
	brct	%r1,.L98
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
	je	.L107
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L107:
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
	jle	.L111
	lhi	%r1,127
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L111:
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
	je	.L123
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L123:
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
	larl	%r5,.L133
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L129
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L130
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L131
	a	%r2,.L134-.L133(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L129:
	lhi	%r2,1
	br	%r14
.L130:
	lhi	%r2,1
	br	%r14
.L131:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L133:
.L134:
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
	larl	%r5,.L146
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L145
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L140
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L147-.L146(%r5)
	jle	.L141
	l	%r1,.L148-.L146(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L142
	l	%r1,.L149-.L146(%r5)
	ar	%r1,%r2
	cl	%r1,.L150-.L146(%r5)
	jh	.L143
	n	%r2,.L151-.L146(%r5)
	x	%r2,.L151-.L146(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L145:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L140:
	lhi	%r2,1
	br	%r14
.L141:
	lhi	%r2,1
	br	%r14
.L142:
	lhi	%r2,1
	br	%r14
.L143:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L146:
.L151:
	.long	65534
.L150:
	.long	1048579
.L149:
	.long	-65532
.L148:
	.long	-57344
.L147:
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
	jle	.L154
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L154:
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
	larl	%r5,.L167
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L162
	kdbr	%f0,%f2
	jnh	.L165
	sdbr	%f0,%f2
	br	%r14
.L162:
	ldr	%f0,%f2
	br	%r14
.L165:
	ld	%f0,.L168-.L167(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L167:
.L168:
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
	larl	%r5,.L178
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L173
	kebr	%f0,%f2
	jnh	.L176
	sebr	%f0,%f2
	br	%r14
.L173:
	ler	%f0,%f2
	br	%r14
.L176:
	le	%f0,.L179-.L178(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L178:
.L179:
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
	jo	.L186
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L182
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L182:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L183
	lhi	%r1,0
.L183:
	tml	%r1,255
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L186:
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
	jo	.L196
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L192
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L192:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L193
	lhi	%r1,0
.L193:
	tml	%r1,255
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L196:
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
	jo	.L211
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L212
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
	je	.L204
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	je	.L209
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L205:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L200
.L211:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L200
.L212:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L200
.L209:
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L205
.L204:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L206
	lhi	%r1,0
.L206:
	tml	%r1,255
	je	.L207
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L208:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L200:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L207:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L208
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
	jo	.L220
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L216
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L216:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L217
	lhi	%r1,0
.L217:
	tml	%r1,255
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L220:
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
	jo	.L231
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L227
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L227:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L228
	lhi	%r1,0
.L228:
	tml	%r1,255
	je	.L230
	ler	%f2,%f0
.L230:
	ler	%f0,%f2
	br	%r14
.L231:
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
	jo	.L247
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L248
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
	je	.L240
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	je	.L245
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
.L241:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L236
.L247:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L236
.L248:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L236
.L245:
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L241
.L240:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L242
	lhi	%r1,0
.L242:
	tml	%r1,255
	je	.L243
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
.L244:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L236:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L243:
	.cfi_restore_state
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L244
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
	j	.L251
.L252:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L251:
	ltr	%r2,%r2
	jne	.L252
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
	je	.L262
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	l	%r1,0(%r2)
	st	%r2,4(%r1)
	br	%r14
.L262:
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
	je	.L265
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L265:
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
	j	.L269
.L270:
	ahi	%r10,1
.L269:
	brct	%r12,.L272
	j	.L274
.L272:
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L270
	msr	%r10,%r9
	l	%r2,100(%r15)
	ar	%r2,%r10
	j	.L271
.L274:
	lr	%r1,%r13
	ahi	%r1,1
	st	%r1,0(%r7)
	lr	%r2,%r13
	msr	%r2,%r9
	lr	%r4,%r9
	lr	%r3,%r8
	a	%r2,100(%r15)
	brasl	%r14,memcpy
.L271:
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
	j	.L277
.L278:
	ahi	%r10,1
.L277:
	brct	%r12,.L280
	j	.L282
.L280:
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L278
	msr	%r10,%r9
	lr	%r2,%r8
	ar	%r2,%r10
	j	.L279
.L282:
	lhi	%r2,0
.L279:
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
	j	.L287
.L288:
	ahi	%r12,1
.L287:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L288
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L294
	chi	%r1,45
	jne	.L295
	lhi	%r5,1
.L289:
	ahi	%r12,1
.L290:
	lhi	%r4,0
	j	.L291
.L294:
	lhi	%r5,0
	j	.L289
.L295:
	lhi	%r5,0
	j	.L290
.L292:
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
.L291:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L292
	ltr	%r5,%r5
	jne	.L296
	lcr	%r2,%r4
.L293:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L296:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L293
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
	j	.L300
.L301:
	ahi	%r12,1
.L300:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L301
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L307
	chi	%r1,45
	jne	.L308
	lhi	%r5,1
.L302:
	ahi	%r12,1
.L303:
	lhi	%r4,0
	j	.L304
.L307:
	lhi	%r5,0
	j	.L302
.L308:
	lhi	%r5,0
	j	.L303
.L305:
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
.L304:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L305
	ltr	%r5,%r5
	jne	.L309
	lcr	%r2,%r4
.L306:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L309:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L306
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
	j	.L313
.L314:
	ahi	%r12,1
.L313:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L314
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L320
	chi	%r1,45
	jne	.L321
	lhi	%r0,1
.L315:
	ahi	%r12,1
.L316:
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
	j	.L317
.L320:
	lhi	%r0,0
	j	.L315
.L321:
	lhi	%r0,0
	j	.L316
.L318:
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
.L317:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ahi	%r3,-48
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L318
	ltr	%r0,%r0
	jne	.L322
	lcr	%r2,%r12
	lcr	%r3,%r13
	je	.L319
	ahi	%r2,-1
	j	.L319
.L322:
	lr	%r2,%r12
	lr	%r3,%r13
.L319:
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
	j	.L327
.L335:
	srl	%r11,1
.L327:
	ltr	%r11,%r11
	je	.L334
	lr	%r12,%r11
	srl	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L335
	ltr	%r2,%r2
	jle	.L332
	ar	%r12,%r10
	lr	%r9,%r12
	lr	%r1,%r11
	srl	%r1,1
	ahi	%r11,-1
	sr	%r11,%r1
	j	.L327
.L334:
	lhi	%r2,0
.L330:
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
.L332:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L330
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
	j	.L338
.L340:
	sra	%r11,1
.L338:
	ltr	%r11,%r11
	je	.L344
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r9
	ar	%r12,%r10
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L342
	ltr	%r2,%r2
	jle	.L340
	ar	%r12,%r9
	lr	%r10,%r12
	ahi	%r11,-1
	j	.L340
.L344:
	lhi	%r2,0
.L339:
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
.L342:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L339
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
	jl	.L353
.L350:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L353:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L350
	ahi	%r4,-1
	j	.L350
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
	jl	.L367
.L364:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L367:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L364
	ahi	%r4,-1
	j	.L364
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
	j	.L373
.L375:
	ahi	%r2,4
.L373:
	icm	%r1,15,0(%r2)
	je	.L374
	c	%r3,0(%r2)
	jne	.L375
.L374:
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
	j	.L380
.L382:
	ahi	%r2,4
	ahi	%r3,4
.L380:
	clc	0(4,%r3),0(%r2)
	jne	.L381
	icm	%r1,15,0(%r2)
	je	.L381
	icm	%r1,15,0(%r3)
	jne	.L382
.L381:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L385
	lhi	%r1,1
	jl	.L384
	lhi	%r1,0
.L384:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L385:
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
.L388:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	la	%r5,0(%r1,%r4)
	icm	%r5,15,0(%r5)
	jne	.L388
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
	j	.L393
.L394:
	ahi	%r2,4
.L393:
	icm	%r1,15,0(%r2)
	jne	.L394
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
.L397:
	brct	%r1,.L404
	j	.L398
.L404:
	clc	0(4,%r3),0(%r2)
	jne	.L398
	icm	%r5,15,0(%r2)
	je	.L398
	icm	%r5,15,0(%r3)
	je	.L398
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	j	.L397
.L398:
	ltr	%r4,%r4
	je	.L402
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L403
	lhi	%r1,1
	jl	.L401
	lhi	%r1,0
.L401:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L402:
	lhi	%r2,0
	br	%r14
.L403:
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
	j	.L407
.L409:
	ahi	%r4,-1
	ahi	%r2,4
.L407:
	brct	%r1,.L412
	j	.L408
.L412:
	c	%r3,0(%r2)
	jne	.L409
.L408:
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
	j	.L415
.L417:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L415:
	brct	%r1,.L422
	j	.L416
.L422:
	clc	0(4,%r3),0(%r2)
	je	.L417
.L416:
	ltr	%r4,%r4
	je	.L420
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L421
	lhi	%r1,1
	jl	.L419
	lhi	%r1,0
.L419:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L420:
	lhi	%r2,0
	br	%r14
.L421:
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
	j	.L425
.L426:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L425:
	ahi	%r4,-1
	brct	%r5,.L426
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
	jhe	.L434
	ahi	%r4,-1
	sll	%r4,2
	lr	%r1,%r4
	ahi	%r1,4
	srl	%r1,2
	ahi	%r1,1
	j	.L431
.L432:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	ahi	%r4,-4
.L431:
	brct	%r1,.L432
	br	%r14
.L433:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L430:
	ahi	%r4,-1
	brct	%r5,.L433
	br	%r14
.L434:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L430
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
	j	.L437
.L438:
	st	%r3,0(%r5)
	ahi	%r5,4
.L437:
	ahi	%r4,-1
	brct	%r1,.L438
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
	jhe	.L449
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L441
.L443:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L441:
	brct	%r1,.L443
	br	%r14
.L449:
	cr	%r2,%r3
	ber	%r14
	lhi	%r1,0
	ahi	%r4,1
	j	.L445
.L446:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L445:
	brct	%r4,.L446
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
	larl	%r5,.L468
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
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
.LFE74:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	larl	%r5,.L472
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L473-.L472(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L472:
.L473:
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
	larl	%r5,.L480
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L481-.L480(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L480:
.L481:
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
	larl	%r5,.L484
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L485-.L484(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L486-.L484(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L484:
.L486:
	.long	65280
.L485:
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
	larl	%r13,.L489
	lr	%r4,%r3
	l	%r1,.L490-.L489(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,56
	lr	%r8,%r10
	lr	%r9,%r11
	l	%r1,.L491-.L489(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,40
	lr	%r1,%r10
	or	%r1,%r8
	lr	%r3,%r11
	or	%r3,%r9
	l	%r5,.L492-.L489(%r13)
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
	l	%r0,.L490-.L489(%r13)
	nr	%r0,%r4
	lr	%r3,%r0
	sldl	%r2,8
	or	%r1,%r2
	or	%r3,%r5
	lhi	%r10,0
	l	%r2,.L491-.L489(%r13)
	nr	%r2,%r4
	lr	%r11,%r2
	sldl	%r10,24
	lr	%r8,%r10
	lr	%r9,%r11
	or	%r1,%r8
	lhi	%r10,0
	l	%r2,.L492-.L489(%r13)
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
.L489:
.L492:
	.long	65280
.L491:
	.long	16711680
.L490:
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
.L494:
	brct	%r3,.L497
	j	.L498
.L497:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L499
	ahi	%r1,1
	j	.L494
.L499:
	ahi	%r1,1
	lr	%r2,%r1
	br	%r14
.L498:
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
	je	.L505
	lhi	%r2,1
	j	.L503
.L507:
	sra	%r1,1
	ahi	%r2,1
.L503:
	tml	%r1,1
	je	.L507
	br	%r14
.L505:
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
	larl	%r5,.L514
	keb	%f0,.L515-.L514(%r5)
	jl	.L512
	lhi	%r2,1
	keb	%f0,.L516-.L514(%r5)
	jh	.L511
	lhi	%r2,0
.L511:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L512:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L514:
.L516:
	.long	2139095039
.L515:
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
	larl	%r5,.L522
	kdb	%f0,.L523-.L522(%r5)
	jl	.L520
	lhi	%r2,1
	kdb	%f0,.L524-.L522(%r5)
	jh	.L519
	lhi	%r2,0
.L519:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L520:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L522:
.L524:
	.long	2146435071
	.long	-1
.L523:
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
	larl	%r5,.L530
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L531-.L530(%r5)
	ld	%f3,.L531-.L530+8(%r5)
	kxbr	%f0,%f1
	jl	.L528
	lhi	%r2,1
	ld	%f1,.L532-.L530(%r5)
	ld	%f3,.L532-.L530+8(%r5)
	kxbr	%f0,%f1
	jh	.L527
	lhi	%r2,0
.L527:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L528:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L530:
.L532:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L531:
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
	larl	%r5,.L543
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L542
	le	%f2,.L544-.L543(%r5)
	j	.L539
.L542:
	le	%f2,.L545-.L543(%r5)
	j	.L539
.L538:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L539:
	tml	%r2,1
	je	.L538
	meebr	%f0,%f2
	j	.L538
	.section	.rodata
	.align	8
.L543:
.L545:
	.long	1056964608
.L544:
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
	larl	%r5,.L554
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L553
	ld	%f2,.L555-.L554(%r5)
	j	.L550
.L553:
	ld	%f2,.L556-.L554(%r5)
	j	.L550
.L549:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L550:
	tml	%r2,1
	je	.L549
	mdbr	%f0,%f2
	j	.L549
	.section	.rodata
	.align	8
.L554:
.L556:
	.long	1071644672
	.long	0
.L555:
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
	larl	%r5,.L565
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L558
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L558
	ltr	%r4,%r4
	jl	.L564
	ld	%f0,.L566-.L565(%r5)
	ld	%f2,.L566-.L565+8(%r5)
	j	.L561
.L564:
	ld	%f0,.L567-.L565(%r5)
	ld	%f2,.L567-.L565+8(%r5)
	j	.L561
.L560:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L558
	mxbr	%f0,%f0
.L561:
	tml	%r4,1
	je	.L560
	mxbr	%f1,%f0
	j	.L560
.L558:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L565:
.L567:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L566:
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
	j	.L569
.L570:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L569:
	brct	%r4,.L570
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
	j	.L573
.L575:
	ahi	%r3,1
	ahi	%r5,1
	ahi	%r4,-1
.L573:
	brct	%r1,.L577
	j	.L574
.L577:
	ic	%r0,0(%r3)
	stc	%r0,0(%r5)
	tml	%r0,255
	jne	.L575
.L574:
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
.L580:
	brct	%r3,.L583
	br	%r14
.L583:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	j	.L580
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
.L587:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L592
	lr	%r1,%r3
.L590:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	je	.L593
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	jne	.L590
	br	%r14
.L593:
	ahi	%r2,1
	j	.L587
.L592:
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
	j	.L597
.L596:
	ahi	%r1,1
	lhi	%r4,0
	ic	%r4,4095(%r1,%r5)
	ltr	%r4,%r4
	ber	%r14
.L597:
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	jne	.L596
	lr	%r2,%r1
	j	.L596
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
	jhe	.L603
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
	lr	%r12,%r2
.L604:
	lr	%r3,%r9
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L603
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L607
	ahi	%r12,1
	j	.L604
.L607:
	lr	%r2,%r12
.L603:
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
	larl	%r5,.L625
	kdb	%f0,.L626-.L625(%r5)
	jl	.L624
.L611:
	kdb	%f0,.L626-.L625(%r5)
	jnh	.L614
	kdb	%f2,.L626-.L625(%r5)
	jl	.L613
.L614:
	br	%r14
.L624:
	kdb	%f2,.L626-.L625(%r5)
	jnh	.L611
.L613:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L625:
.L626:
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
	je	.L628
	lr	%r11,%r4
	clr	%r5,%r3
	jh	.L633
	lr	%r12,%r2
	lr	%r8,%r4
	ahi	%r8,1
	ahi	%r5,-1
	lr	%r9,%r5
	j	.L629
.L630:
	ahi	%r12,1
.L629:
	clr	%r12,%r10
	jh	.L636
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r11)
	cr	%r2,%r1
	jne	.L630
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L630
	lr	%r2,%r12
	j	.L628
.L636:
	lhi	%r2,0
.L628:
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
.L633:
	.cfi_restore_state
	lhi	%r2,0
	j	.L628
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
	larl	%r5,.L664
	kdb	%f0,.L665-.L664(%r5)
	jl	.L662
	lhi	%r3,0
.L642:
	kdb	%f0,.L666-.L664(%r5)
	jnhe	.L663
	lhi	%r1,0
	j	.L644
.L662:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L642
.L646:
	ahi	%r1,1
	mdb	%f0,.L667-.L664(%r5)
.L644:
	kdb	%f0,.L666-.L664(%r5)
	jhe	.L646
.L647:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L663:
	kdb	%f0,.L667-.L664(%r5)
	jnl	.L660
	cdb	%f0,.L665-.L664(%r5)
	jne	.L655
	lhi	%r1,0
	j	.L647
.L650:
	ahi	%r1,-1
	adbr	%f0,%f0
.L649:
	kdb	%f0,.L667-.L664(%r5)
	jl	.L650
	j	.L647
.L655:
	lhi	%r1,0
	j	.L649
.L660:
	lhi	%r1,0
	j	.L647
	.section	.rodata
	.align	8
.L664:
.L667:
	.long	1071644672
	.long	0
.L666:
	.long	1072693248
	.long	0
.L665:
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
	lr	%r1,%r3
	lhi	%r2,0
	lhi	%r3,0
	j	.L669
.L671:
	lr	%r7,%r12
	nr	%r7,%r4
	lr	%r4,%r5
	nr	%r4,%r13
	sldl	%r12,1
	srdl	%r0,1
	alr	%r3,%r4
	alcr	%r2,%r7
.L669:
	lr	%r4,%r0
	or	%r4,%r1
	je	.L673
	lhi	%r8,0
	lhi	%r4,1
	nr	%r4,%r1
	lr	%r9,%r4
	lcr	%r4,%r8
	lcr	%r5,%r9
	je	.L671
	ahi	%r4,-1
	j	.L671
.L673:
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
	lhi	%r1,1
	lhi	%r5,33
	j	.L676
.L680:
	sll	%r3,1
	sll	%r1,1
.L676:
	clr	%r3,%r2
	jhe	.L688
	brct	%r5,.L686
	j	.L689
.L686:
	ltr	%r3,%r3
	jhe	.L680
	lhi	%r5,0
	j	.L678
.L688:
	lhi	%r5,0
	j	.L678
.L689:
	lhi	%r5,0
	j	.L678
.L681:
	srl	%r1,1
	srl	%r3,1
.L678:
	ltr	%r1,%r1
	je	.L690
	clr	%r2,%r3
	jl	.L681
	sr	%r2,%r3
	or	%r5,%r1
	j	.L681
.L690:
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
	je	.L694
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
.L694:
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
	je	.L703
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
.L703:
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
	j	.L710
.L713:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	srl	%r4,1
	sll	%r3,1
	ar	%r2,%r1
.L710:
	ltr	%r4,%r4
	jne	.L713
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
	jl	.L718
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L718
	lr	%r1,%r4
	ahi	%r1,1
	j	.L719
.L722:
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L721:
	brct	%r1,.L722
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L724:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L719:
	ahi	%r4,-1
	brct	%r1,.L724
	br	%r14
.L718:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L735
	j	.L736
.L735:
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
.L720:
	l	%r12,0(%r1,%r3)
	l	%r13,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	st	%r13,4(%r1,%r2)
	ahi	%r1,8
	brct	%r0,.L720
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L725
	ltr	%r4,%r4
	jne	.L721
.L725:
	lhi	%r1,1
	j	.L721
.L736:
	.cfi_restore 12
	.cfi_restore 13
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L730
	ltr	%r4,%r4
	jne	.L731
.L730:
	lhi	%r1,1
	j	.L731
.L732:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L731:
	brct	%r1,.L732
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
	jhe	.L739
.L741:
	lhi	%r1,0
	ahi	%r5,1
	j	.L740
.L739:
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L741
	lr	%r1,%r4
	ahi	%r1,1
	j	.L742
.L743:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	ahi	%r1,2
.L740:
	brct	%r5,.L743
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L745:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L742:
	ahi	%r4,-1
	brct	%r1,.L745
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
	jl	.L750
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L750
	lr	%r1,%r4
	ahi	%r1,1
	j	.L751
.L754:
	.cfi_offset 12, -48
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L753:
	brct	%r1,.L754
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L756:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L751:
	ahi	%r4,-1
	brct	%r1,.L756
	br	%r14
.L750:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L767
	j	.L768
.L767:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L752:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	brct	%r0,.L752
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L757
	ltr	%r4,%r4
	jne	.L753
.L757:
	lhi	%r1,1
	j	.L753
.L768:
	.cfi_restore 12
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L762
	ltr	%r4,%r4
	jne	.L763
.L762:
	lhi	%r1,1
	j	.L763
.L764:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L763:
	brct	%r1,.L764
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
	larl	%r5,.L775
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L776-.L775(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L775:
.L776:
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
	larl	%r5,.L781
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L780
.L778:
	ledbr	%f0,%f0
	br	%r14
.L780:
	adb	%f0,.L782-.L781(%r5)
	j	.L778
	.section	.rodata
	.align	8
.L781:
.L782:
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
.L792:
	brct	%r1,.L794
	br	%r14
.L794:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L792
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
.L798:
	brct	%r1,.L800
	br	%r14
.L800:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L798
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	larl	%r5,.L811
	keb	%f0,.L812-.L811(%r5)
	jhe	.L810
	cfebr	%r2,5,%f0
	br	%r14
.L810:
	seb	%f0,.L812-.L811(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L813-.L811(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L811:
.L812:
	.long	1191182336
.L813:
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
	j	.L815
.L816:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ahi	%r4,1
	ar	%r2,%r1
.L815:
	brct	%r3,.L816
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
	j	.L819
.L820:
	lr	%r1,%r5
	sra	%r1,0(%r4)
	lhi	%r0,1
	nr	%r1,%r0
	ahi	%r4,1
	ar	%r2,%r1
.L819:
	brct	%r3,.L820
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
	j	.L823
.L826:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	srl	%r4,1
	sll	%r3,1
	ar	%r2,%r1
.L823:
	ltr	%r4,%r4
	jne	.L826
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
	je	.L832
	lhi	%r2,0
	j	.L830
.L834:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	sll	%r4,1
	srl	%r3,1
	ar	%r2,%r1
.L830:
	ltr	%r3,%r3
	jne	.L834
	br	%r14
.L832:
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
	j	.L837
.L841:
	sll	%r3,1
	sll	%r1,1
.L837:
	clr	%r3,%r2
	jhe	.L849
	brct	%r5,.L847
	j	.L850
.L847:
	ltr	%r3,%r3
	jhe	.L841
	lhi	%r5,0
	j	.L839
.L849:
	lhi	%r5,0
	j	.L839
.L850:
	lhi	%r5,0
	j	.L839
.L842:
	srl	%r1,1
	srl	%r3,1
.L839:
	ltr	%r1,%r1
	je	.L851
	clr	%r2,%r3
	jl	.L842
	sr	%r2,%r3
	or	%r5,%r1
	j	.L842
.L851:
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
	jl	.L856
	lhi	%r2,1
	jh	.L855
	lhi	%r2,0
.L855:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L856:
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
	jl	.L861
	lhi	%r2,1
	jh	.L860
	lhi	%r2,0
.L860:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L861:
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
	jl	.L876
	lhi	%r0,0
.L869:
	lhi	%r5,33
	lhi	%r4,0
	j	.L870
.L876:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L869
.L872:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r2
	sll	%r2,1
	sra	%r3,1
	ar	%r4,%r1
.L870:
	ltr	%r3,%r3
	je	.L871
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L872
.L871:
	ltr	%r0,%r0
	je	.L875
	lcr	%r2,%r4
	br	%r14
.L875:
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
	jl	.L884
	lhi	%r12,0
.L879:
	ltr	%r3,%r3
	jl	.L885
.L880:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L881
	lcr	%r2,%r2
.L881:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L884:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L879
.L885:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L880
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
	jl	.L892
	lhi	%r12,0
.L888:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L889
	lcr	%r2,%r2
.L889:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L892:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L888
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
	larl	%r13,.L912
	lhi	%r1,1
	lhi	%r5,17
.L895:
	clr	%r3,%r2
	jhe	.L908
	brct	%r5,.L905
	j	.L909
.L905:
	tml	%r3,32768
	jne	.L910
	sll	%r3,1
	n	%r3,.L913-.L912(%r13)
	sll	%r1,1
	j	.L895
.L908:
	lhi	%r5,0
	j	.L897
.L909:
	lhi	%r5,0
	j	.L897
.L910:
	lhi	%r5,0
	j	.L897
.L900:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
.L897:
	tml	%r1,65535
	je	.L911
	clr	%r2,%r3
	jl	.L900
	sr	%r2,%r3
	n	%r2,.L913-.L912(%r13)
	or	%r5,%r1
	j	.L900
.L911:
	ltr	%r4,%r4
	jne	.L902
	lr	%r2,%r5
.L902:
	n	%r2,.L913-.L912(%r13)
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L912:
.L913:
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
	j	.L915
.L919:
	sll	%r3,1
	sll	%r1,1
.L915:
	clr	%r3,%r2
	jhe	.L927
	brct	%r5,.L925
	j	.L928
.L925:
	ltr	%r3,%r3
	jhe	.L919
	lhi	%r5,0
	j	.L917
.L927:
	lhi	%r5,0
	j	.L917
.L928:
	lhi	%r5,0
	j	.L917
.L920:
	srl	%r1,1
	srl	%r3,1
.L917:
	ltr	%r1,%r1
	je	.L929
	clr	%r2,%r3
	jl	.L920
	sr	%r2,%r3
	or	%r5,%r1
	j	.L920
.L929:
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
	je	.L932
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
.L933:
	lr	%r3,%r1
	br	%r14
.L932:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	sll	%r2,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	or	%r2,%r3
	j	.L933
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
	je	.L938
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L939:
	lr	%r2,%r1
	br	%r14
.L938:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L939
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
	larl	%r13,.L945
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r6,%r2
	lr	%r7,%r3
	srdl	%r6,56
	srdl	%r2,40
	l	%r1,.L946-.L945(%r13)
	nr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,24
	l	%r10,.L947-.L945(%r13)
	nr	%r10,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,8
	l	%r0,.L948-.L945(%r13)
	nr	%r0,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,8
	lhi	%r11,255
	nr	%r11,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,24
	l	%r9,.L946-.L945(%r13)
	nr	%r9,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,40
	n	%r2,.L947-.L945(%r13)
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
.L945:
.L948:
	.long	-16777216
.L947:
	.long	16711680
.L946:
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
	larl	%r5,.L951
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L952-.L951(%r5)
	sll	%r2,8
	n	%r2,.L953-.L951(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L951:
.L953:
	.long	16711680
.L952:
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
	larl	%r13,.L956
	lr	%r1,%r2
	cl	%r2,.L957-.L956(%r13)
	lhi	%r4,0
	slbr	%r4,%r4
	lcr	%r4,%r4
	sll	%r4,4
	lhi	%r2,16
	sr	%r2,%r4
	srl	%r1,0(%r2)
	l	%r2,.L958-.L956(%r13)
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,3
	lhi	%r3,8
	sr	%r3,%r2
	srl	%r1,0(%r3)
	ar	%r4,%r2
	lhi	%r2,240
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,2
	lhi	%r3,4
	sr	%r3,%r2
	srl	%r1,0(%r3)
	ar	%r4,%r2
	lhi	%r2,12
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sll	%r2,1
	lhi	%r5,2
	lr	%r3,%r5
	sr	%r3,%r2
	srl	%r1,0(%r3)
	ar	%r4,%r2
	lhi	%r3,2
	nr	%r3,%r1
	srl	%r3,1
	lhi	%r2,1
	xr	%r3,%r2
	lhi	%r2,255
	nr	%r3,%r2
	sr	%r5,%r1
	lcr	%r2,%r3
	nr	%r2,%r5
	ar	%r2,%r4
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L956:
.L958:
	.long	65280
.L957:
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
	jl	.L961
	jh	.L962
	clr	%r3,%r5
	jl	.L963
	jh	.L964
	lhi	%r2,1
	br	%r14
.L961:
	lhi	%r2,0
	br	%r14
.L962:
	lhi	%r2,2
	br	%r14
.L963:
	lhi	%r2,0
	br	%r14
.L964:
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
	larl	%r5,.L971
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	l	%r3,.L972-.L971(%r5)
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
.L971:
.L972:
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
	je	.L974
	lhi	%r1,0
	srl	%r2,4064(%r4)
	lr	%r3,%r2
.L975:
	lr	%r2,%r1
	br	%r14
.L974:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L975
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
	larl	%r13,.L981
	lr	%r4,%r3
	l	%r5,.L982-.L981(%r13)
	nr	%r5,%r2
	l	%r0,.L982-.L981(%r13)
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
	n	%r1,.L982-.L981(%r13)
	n	%r3,.L982-.L981(%r13)
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
.L981:
.L982:
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
	je	.L987
	ahi	%r2,-1
.L987:
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
	larl	%r13,.L995
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r2,1
	l	%r12,.L996-.L995(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L996-.L995(%r13)
	nr	%r12,%r3
	lr	%r2,%r0
	lr	%r3,%r1
	slr	%r3,%r12
	slbr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,2
	l	%r12,.L997-.L995(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L997-.L995(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	l	%r12,.L997-.L995(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L997-.L995(%r13)
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
	l	%r1,.L998-.L995(%r13)
	nr	%r1,%r4
	lr	%r2,%r1
	l	%r1,.L998-.L995(%r13)
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
.LFE145:
	.size	__popcountdi2, .-__popcountdi2
	.align	8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
.LFB146:
	.cfi_startproc
	larl	%r5,.L1001
	lr	%r1,%r2
	srl	%r2,1
	n	%r2,.L1002-.L1001(%r5)
	sr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L1003-.L1001(%r5)
	n	%r1,.L1003-.L1001(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L1004-.L1001(%r5)
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
.L1001:
.L1004:
	.long	252645135
.L1003:
	.long	858993459
.L1002:
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
	larl	%r5,.L1012
	lr	%r3,%r2
	srl	%r3,31
	ld	%f2,.L1013-.L1012(%r5)
	j	.L1008
.L1006:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1007
	mdbr	%f0,%f0
.L1008:
	tml	%r2,1
	je	.L1006
	mdbr	%f2,%f0
	j	.L1006
.L1007:
	ltr	%r3,%r3
	je	.L1010
	ld	%f0,.L1013-.L1012(%r5)
	ddbr	%f0,%f2
	br	%r14
.L1010:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1012:
.L1013:
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
	larl	%r5,.L1021
	lr	%r3,%r2
	srl	%r3,31
	le	%f2,.L1022-.L1021(%r5)
	j	.L1017
.L1015:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1016
	meebr	%f0,%f0
.L1017:
	tml	%r2,1
	je	.L1015
	meebr	%f2,%f0
	j	.L1015
.L1016:
	ltr	%r3,%r3
	je	.L1019
	le	%f0,.L1022-.L1021(%r5)
	debr	%f0,%f2
	br	%r14
.L1019:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1021:
.L1022:
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
	jl	.L1025
	jh	.L1026
	clr	%r3,%r5
	jl	.L1027
	jh	.L1028
	lhi	%r2,1
	br	%r14
.L1025:
	lhi	%r2,0
	br	%r14
.L1026:
	lhi	%r2,2
	br	%r14
.L1027:
	lhi	%r2,0
	br	%r14
.L1028:
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
