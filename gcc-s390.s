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
	j	.L8
.L7:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	j	.L6
.L8:
	lhi	%r1,0
	ahi	%r4,1
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r1,255
	nr	%r4,%r1
	lr	%r0,%r5
	ahi	%r0,1
	j	.L12
.L14:
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
.L12:
	brct	%r0,.L17
	j	.L13
.L17:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r4,%r1
	jne	.L14
.L13:
	ltr	%r5,%r5
	je	.L16
	ahi	%r2,1
	j	.L15
.L16:
	lhi	%r2,0
.L15:
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
	lr	%r1,%r4
	ahi	%r1,1
	j	.L20
.L22:
	ahi	%r2,1
	ahi	%r4,-1
.L20:
	brct	%r1,.L25
	j	.L21
.L25:
	lhi	%r5,0
	ic	%r5,0(%r2)
	cr	%r3,%r5
	jne	.L22
.L21:
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
	j	.L28
.L30:
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
.L28:
	brct	%r1,.L33
	j	.L29
.L33:
	lhi	%r0,0
	ic	%r0,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r0,%r5
	je	.L30
.L29:
	ltr	%r4,%r4
	je	.L32
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L32:
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
	j	.L36
.L37:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L36:
	brct	%r4,.L37
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
	j	.L40
.L42:
	lhi	%r5,0
	ic	%r5,0(%r1,%r2)
	lr	%r0,%r1
	ahi	%r0,-1
	cr	%r3,%r5
	jne	.L43
	ar	%r2,%r1
	br	%r14
.L43:
	lr	%r1,%r0
.L40:
	brct	%r4,.L42
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
	j	.L46
.L47:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L46:
	brct	%r4,.L47
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
	j	.L50
.L51:
	ahi	%r3,1
	ahi	%r2,1
.L50:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	ber	%r14
	j	.L51
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
	j	.L55
.L57:
	ahi	%r2,1
.L55:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	ber	%r14
	cr	%r3,%r1
	ber	%r14
	j	.L57
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
.L61:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,1
	lhi	%r1,0
	ic	%r1,4095(%r2,%r4)
	ltr	%r1,%r1
	jne	.L61
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
	j	.L66
.L68:
	ahi	%r2,1
	ahi	%r3,1
.L66:
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	jne	.L67
	lr	%r1,%r4
	ltr	%r1,%r1
	jne	.L68
.L67:
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
	j	.L71
.L72:
	ahi	%r1,1
.L71:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ltr	%r3,%r3
	jne	.L72
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
	je	.L79
	j	.L76
.L78:
	ahi	%r2,1
	ahi	%r3,1
.L76:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L77
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L77
	brct	%r4,.L80
	j	.L77
.L80:
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	je	.L78
.L77:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L79:
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
	jhe	.L83
	lhi	%r1,1
	j	.L83
.L84:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L83:
	brct	%r1,.L84
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
	je	.L93
	chi	%r2,9
	jne	.L94
	lhi	%r2,1
	br	%r14
.L93:
	lhi	%r2,1
	br	%r14
.L94:
	lhi	%r2,0
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
	jle	.L98
	chi	%r2,127
	jne	.L99
	lhi	%r2,1
	br	%r14
.L98:
	lhi	%r2,1
	br	%r14
.L99:
	lhi	%r2,0
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
	je	.L111
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L111:
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
	larl	%r5,.L122
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L118
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L119
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L120
	a	%r2,.L123-.L122(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L118:
	lhi	%r2,1
	br	%r14
.L119:
	lhi	%r2,1
	br	%r14
.L120:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L122:
.L123:
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
	larl	%r5,.L134
	lhi	%r1,254
	clr	%r2,%r1
	jh	.L127
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L127:
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L129
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L135-.L134(%r5)
	jle	.L130
	l	%r1,.L136-.L134(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L131
	l	%r1,.L137-.L134(%r5)
	ar	%r1,%r2
	cl	%r1,.L138-.L134(%r5)
	jh	.L132
	n	%r2,.L139-.L134(%r5)
	c	%r2,.L139-.L134(%r5)
	je	.L133
	lhi	%r2,1
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
.L132:
	lhi	%r2,0
	br	%r14
.L133:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L134:
.L139:
	.long	65534
.L138:
	.long	1048579
.L137:
	.long	-65532
.L136:
	.long	-57344
.L135:
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
	jle	.L142
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L142:
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
	larl	%r5,.L155
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L151
	kdbr	%f0,%f2
	jnh	.L154
	sdbr	%f0,%f2
	br	%r14
.L151:
	ldr	%f0,%f2
	br	%r14
.L154:
	ld	%f0,.L156-.L155(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L155:
.L156:
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
	larl	%r5,.L165
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L161
	kebr	%f0,%f2
	jnh	.L164
	sebr	%f0,%f2
	br	%r14
.L161:
	ler	%f0,%f2
	br	%r14
.L164:
	le	%f0,.L166-.L165(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L165:
.L166:
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
	jo	.L171
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L169
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L169:
	kdbr	%f0,%f2
	jnl	.L168
	ldr	%f0,%f2
	br	%r14
.L171:
	ldr	%f0,%f2
.L168:
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
	jo	.L182
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L180
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L180:
	kebr	%f0,%f2
	jnl	.L179
	ler	%f0,%f2
	br	%r14
.L182:
	ler	%f0,%f2
.L179:
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
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	cxbr	%f0,%f0
	jno	.L190
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L190:
	cxbr	%f1,%f1
	jno	.L192
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L192:
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f1,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L193
	tcxb	%f0,1365
	je	.L194
	lxr	%f0,%f1
.L194:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L193:
	kxbr	%f0,%f1
	jnl	.L195
	lxr	%f0,%f1
.L195:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
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
	jo	.L206
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L204
	tcdb	%f0,1365
	bner	%r14
	j	.L208
.L204:
	kdbr	%f0,%f2
	blr	%r14
	j	.L211
.L206:
	ldr	%f0,%f2
	br	%r14
.L208:
	ldr	%f0,%f2
	br	%r14
.L211:
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
	jo	.L219
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L217
	tceb	%f0,1365
	bner	%r14
	j	.L221
.L217:
	kebr	%f0,%f2
	blr	%r14
	j	.L224
.L219:
	ler	%f0,%f2
	br	%r14
.L221:
	ler	%f0,%f2
	br	%r14
.L224:
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
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	ld	%f0,0(%r4)
	ld	%f2,8(%r4)
	cxbr	%f1,%f1
	jno	.L229
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L229:
	cxbr	%f0,%f0
	jno	.L231
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L231:
	tcxb	%f1,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L232
	tcxb	%f1,1365
	je	.L233
	lxr	%f0,%f1
.L233:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L232:
	kxbr	%f1,%f0
	jnl	.L234
	lxr	%f0,%f1
.L234:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
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
	j	.L242
.L243:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L242:
	ltr	%r2,%r2
	jne	.L243
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
	ahi	%r2,-1
	lr	%r5,%r2
	lhi	%r4,0
	larl	%r1,seed
	stm	%r4,%r5,0(%r1)
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
	jne	.L250
	lhi	%r1,0
	st	%r1,4(%r2)
	st	%r1,0(%r2)
	br	%r14
.L250:
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	l	%r1,0(%r2)
	st	%r2,4(%r1)
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
	je	.L254
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L254:
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
	j	.L258
.L261:
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L259
	msr	%r10,%r9
	l	%r2,100(%r15)
	ar	%r2,%r10
	j	.L260
.L259:
	ahi	%r10,1
.L258:
	brct	%r12,.L261
	lr	%r1,%r13
	ahi	%r1,1
	st	%r1,0(%r7)
	lr	%r2,%r13
	msr	%r2,%r9
	lr	%r4,%r9
	lr	%r3,%r8
	a	%r2,100(%r15)
	brasl	%r14,memcpy
.L260:
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
	j	.L264
.L267:
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L265
	msr	%r10,%r9
	lr	%r2,%r8
	ar	%r2,%r10
	j	.L266
.L265:
	ahi	%r10,1
.L264:
	brct	%r12,.L267
	lhi	%r2,0
.L266:
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
	j	.L272
.L273:
	ahi	%r12,1
.L272:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L273
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L279
	chi	%r1,45
	jne	.L280
	lhi	%r5,1
	j	.L274
.L279:
	lhi	%r5,0
.L274:
	ahi	%r12,1
	j	.L275
.L280:
	lhi	%r5,0
.L275:
	lhi	%r4,0
	j	.L276
.L277:
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
.L276:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L277
	ltr	%r5,%r5
	jne	.L281
	lcr	%r2,%r4
	j	.L278
.L281:
	lr	%r2,%r4
.L278:
	lm	%r12,%r15,144(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
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
	j	.L284
.L285:
	ahi	%r12,1
.L284:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L285
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L291
	chi	%r1,45
	jne	.L292
	lhi	%r5,1
	j	.L286
.L291:
	lhi	%r5,0
.L286:
	ahi	%r12,1
	j	.L287
.L292:
	lhi	%r5,0
.L287:
	lhi	%r4,0
	j	.L288
.L289:
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
.L288:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L289
	ltr	%r5,%r5
	jne	.L293
	lcr	%r2,%r4
	j	.L290
.L293:
	lr	%r2,%r4
.L290:
	lm	%r12,%r15,144(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
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
	j	.L296
.L297:
	ahi	%r12,1
.L296:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L297
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L303
	chi	%r1,45
	jne	.L304
	lhi	%r0,1
	j	.L298
.L303:
	lhi	%r0,0
.L298:
	ahi	%r12,1
	j	.L299
.L304:
	lhi	%r0,0
.L299:
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
	j	.L300
.L301:
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
.L300:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ahi	%r3,-48
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L301
	ltr	%r0,%r0
	jne	.L305
	lcr	%r2,%r12
	lcr	%r3,%r13
	je	.L302
	ahi	%r2,-1
	j	.L302
.L305:
	lr	%r2,%r12
	lr	%r3,%r13
.L302:
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
	j	.L309
.L313:
	lr	%r12,%r11
	srl	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jhe	.L310
	srl	%r11,1
	j	.L309
.L310:
	ltr	%r2,%r2
	jle	.L314
	ar	%r12,%r10
	lr	%r9,%r12
	lr	%r1,%r11
	srl	%r1,1
	ahi	%r11,-1
	sr	%r11,%r1
.L309:
	ltr	%r11,%r11
	jne	.L313
	lhi	%r2,0
	j	.L312
.L314:
	lr	%r2,%r12
.L312:
	lm	%r8,%r15,128(%r15)
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
	j	.L317
.L320:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r9
	ar	%r12,%r10
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L321
	ltr	%r2,%r2
	jle	.L319
	ar	%r12,%r9
	lr	%r10,%r12
	ahi	%r11,-1
.L319:
	sra	%r11,1
.L317:
	ltr	%r11,%r11
	jne	.L320
	lhi	%r2,0
	j	.L318
.L321:
	lr	%r2,%r12
.L318:
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
	ltr	%r2,%r2
	bher	%r14
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L326
	ahi	%r2,-1
.L326:
	br	%r14
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
	lr	%r7,%r2
	lr	%r12,%r3
	lr	%r13,%r4
	lr	%r10,%r5
	lr	%r4,%r5
	lr	%r5,%r6
	lr	%r2,%r3
	lr	%r3,%r13
	brasl	%r14,__divdi3
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r4,%r10
	lr	%r5,%r6
	lr	%r2,%r12
	lr	%r3,%r13
	brasl	%r14,__moddi3
	stm	%r8,%r9,0(%r7)
	stm	%r2,%r3,8(%r7)
	lr	%r2,%r7
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
	ltr	%r2,%r2
	bher	%r14
	lcr	%r2,%r2
	lcr	%r3,%r3
	je	.L337
	ahi	%r2,-1
.L337:
	br	%r14
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
	lr	%r7,%r2
	lr	%r12,%r3
	lr	%r13,%r4
	lr	%r10,%r5
	lr	%r4,%r5
	lr	%r5,%r6
	lr	%r2,%r3
	lr	%r3,%r13
	brasl	%r14,__divdi3
	lr	%r8,%r2
	lr	%r9,%r3
	lr	%r4,%r10
	lr	%r5,%r6
	lr	%r2,%r12
	lr	%r3,%r13
	brasl	%r14,__moddi3
	stm	%r8,%r9,0(%r7)
	stm	%r2,%r3,8(%r7)
	lr	%r2,%r7
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
	j	.L344
.L346:
	ahi	%r2,4
.L344:
	icm	%r1,15,0(%r2)
	je	.L345
	c	%r3,0(%r2)
	jne	.L346
.L345:
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
	j	.L351
.L353:
	ahi	%r2,4
	ahi	%r3,4
.L351:
	clc	0(4,%r3),0(%r2)
	jne	.L352
	icm	%r1,15,0(%r2)
	je	.L352
	icm	%r1,15,0(%r3)
	jne	.L353
.L352:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L356
	lhi	%r1,1
	jl	.L355
	lhi	%r1,0
.L355:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L356:
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
.L359:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	la	%r5,0(%r1,%r4)
	icm	%r5,15,0(%r5)
	ber	%r14
	j	.L359
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
	j	.L364
.L365:
	ahi	%r2,4
.L364:
	icm	%r1,15,0(%r2)
	jne	.L365
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
	j	.L368
.L370:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L368:
	brct	%r1,.L375
	j	.L369
.L375:
	clc	0(4,%r3),0(%r2)
	jne	.L369
	icm	%r5,15,0(%r2)
	je	.L369
	icm	%r5,15,0(%r3)
	jne	.L370
.L369:
	ltr	%r4,%r4
	je	.L373
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L374
	lhi	%r1,1
	jl	.L372
	lhi	%r1,0
.L372:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L373:
	lhi	%r2,0
	br	%r14
.L374:
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
	j	.L378
.L380:
	ahi	%r4,-1
	ahi	%r2,4
.L378:
	brct	%r1,.L383
	j	.L379
.L383:
	c	%r3,0(%r2)
	jne	.L380
.L379:
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
	j	.L386
.L388:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L386:
	brct	%r1,.L393
	j	.L387
.L393:
	clc	0(4,%r3),0(%r2)
	je	.L388
.L387:
	ltr	%r4,%r4
	je	.L391
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L392
	lhi	%r1,1
	jl	.L390
	lhi	%r1,0
.L390:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L391:
	lhi	%r2,0
	br	%r14
.L392:
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
	j	.L396
.L397:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L396:
	ahi	%r4,-1
	brct	%r5,.L397
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
	jhe	.L405
	ahi	%r4,-1
	sll	%r4,2
	lr	%r1,%r4
	ahi	%r1,4
	srl	%r1,2
	ahi	%r1,1
	j	.L402
.L403:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	ahi	%r4,-4
.L402:
	brct	%r1,.L403
	br	%r14
.L404:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
	j	.L401
.L405:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
.L401:
	ahi	%r4,-1
	brct	%r5,.L404
	br	%r14
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
	j	.L408
.L409:
	st	%r3,0(%r5)
	ahi	%r5,4
.L408:
	ahi	%r4,-1
	brct	%r1,.L409
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
	jhe	.L412
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L413
.L414:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L413:
	brct	%r1,.L414
	br	%r14
.L412:
	cr	%r2,%r3
	ber	%r14
	j	.L418
.L417:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	j	.L416
.L418:
	lhi	%r1,0
	ahi	%r4,1
.L416:
	brct	%r4,.L417
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r0,%r2
	lr	%r1,%r3
	sldl	%r0,0(%r4)
	lcr	%r4,%r4
	srdl	%r2,0(%r4)
	lr	%r4,%r2
	lr	%r12,%r4
	or	%r12,%r0
	lr	%r2,%r12
	lr	%r4,%r3
	or	%r4,%r1
	lr	%r3,%r4
	l	%r12,48(%r15)
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,0(%r4)
	lcr	%r4,%r4
	sldl	%r2,0(%r4)
	lr	%r4,%r2
	lr	%r12,%r4
	or	%r12,%r0
	lr	%r2,%r12
	lr	%r4,%r3
	or	%r4,%r1
	lr	%r3,%r4
	l	%r12,48(%r15)
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
	larl	%r5,.L434
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L435-.L434(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L434:
.L435:
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
	larl	%r5,.L437
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L438-.L437(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L437:
.L438:
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
	larl	%r5,.L444
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L445-.L444(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L444:
.L445:
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
	larl	%r5,.L447
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L448-.L447(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L449-.L447(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L447:
.L449:
	.long	65280
.L448:
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
	stm	%r10,%r13,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L451
	l	%r1,.L452-.L451(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,56
	l	%r12,.L453-.L451(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	lhi	%r1,0
	srdl	%r0,40
	lr	%r12,%r0
	or	%r12,%r4
	or	%r1,%r5
	lr	%r11,%r1
	l	%r1,.L454-.L451(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,24
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r11
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r12,255
	nr	%r12,%r2
	lr	%r4,%r12
	lhi	%r5,0
	srdl	%r4,8
	lr	%r12,%r0
	or	%r12,%r4
	or	%r1,%r5
	lr	%r11,%r1
	lhi	%r4,0
	l	%r1,.L452-.L451(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	sldl	%r4,8
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r11
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	l	%r12,.L453-.L451(%r13)
	nr	%r12,%r3
	lr	%r5,%r12
	sldl	%r4,24
	lr	%r12,%r0
	or	%r12,%r4
	lr	%r10,%r12
	or	%r1,%r5
	lr	%r11,%r1
	lhi	%r0,0
	l	%r4,.L454-.L451(%r13)
	nr	%r4,%r3
	lr	%r1,%r4
	sldl	%r0,40
	lr	%r12,%r0
	or	%r12,%r10
	lr	%r4,%r12
	lhi	%r0,0
	lhi	%r12,255
	nr	%r12,%r3
	lr	%r1,%r12
	sldl	%r0,56
	lr	%r1,%r0
	or	%r1,%r4
	lr	%r2,%r1
	lr	%r3,%r11
	lm	%r10,%r13,40(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
	.section	.rodata
	.align	8
.L451:
.L454:
	.long	65280
.L453:
	.long	16711680
.L452:
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
	j	.L456
.L459:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	je	.L457
	ahi	%r1,1
	lr	%r2,%r1
	br	%r14
.L457:
	ahi	%r1,1
.L456:
	brct	%r3,.L459
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
	je	.L465
	lhi	%r2,1
	j	.L463
.L464:
	sra	%r1,1
	ahi	%r2,1
.L463:
	tml	%r1,1
	bner	%r14
	j	.L464
.L465:
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
	larl	%r5,.L475
	keb	%f0,.L476-.L475(%r5)
	jl	.L471
	keb	%f0,.L477-.L475(%r5)
	jnh	.L474
	lhi	%r2,1
	br	%r14
.L471:
	lhi	%r2,1
	br	%r14
.L474:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L475:
.L477:
	.long	2139095039
.L476:
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
	larl	%r5,.L485
	kdb	%f0,.L486-.L485(%r5)
	jl	.L481
	kdb	%f0,.L487-.L485(%r5)
	jnh	.L484
	lhi	%r2,1
	br	%r14
.L481:
	lhi	%r2,1
	br	%r14
.L484:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L485:
.L487:
	.long	2146435071
	.long	-1
.L486:
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
	larl	%r5,.L495
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L496-.L495(%r5)
	ld	%f3,.L496-.L495+8(%r5)
	kxbr	%f0,%f1
	jl	.L491
	ld	%f1,.L497-.L495(%r5)
	ld	%f3,.L497-.L495+8(%r5)
	kxbr	%f0,%f1
	jnh	.L494
	lhi	%r2,1
	br	%r14
.L491:
	lhi	%r2,1
	br	%r14
.L494:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L495:
.L497:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L496:
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
	larl	%r5,.L506
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jhe	.L505
	le	%f2,.L507-.L506(%r5)
	j	.L504
.L505:
	le	%f2,.L508-.L506(%r5)
.L504:
	tml	%r2,1
	je	.L503
	meebr	%f0,%f2
.L503:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
	j	.L504
	.section	.rodata
	.align	8
.L506:
.L508:
	.long	1073741824
.L507:
	.long	1056964608
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
	larl	%r5,.L515
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jhe	.L514
	ld	%f2,.L516-.L515(%r5)
	j	.L513
.L514:
	ld	%f2,.L517-.L515(%r5)
.L513:
	tml	%r2,1
	je	.L512
	mdbr	%f0,%f2
.L512:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
	j	.L513
	.section	.rodata
	.align	8
.L515:
.L517:
	.long	1073741824
	.long	0
.L516:
	.long	1071644672
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
	larl	%r5,.L524
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L519
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L519
	ltr	%r4,%r4
	jhe	.L523
	ld	%f0,.L525-.L524(%r5)
	ld	%f2,.L525-.L524+8(%r5)
	j	.L522
.L523:
	ld	%f0,.L526-.L524(%r5)
	ld	%f2,.L526-.L524+8(%r5)
.L522:
	tml	%r4,1
	je	.L521
	mxbr	%f1,%f0
.L521:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L519
	mxbr	%f0,%f0
	j	.L522
.L519:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L524:
.L526:
	.long	1073741824
	.long	0
	.long	0
	.long	0
.L525:
	.long	1073610752
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
	j	.L528
.L529:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L528:
	brct	%r4,.L529
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
	j	.L532
.L534:
	ahi	%r3,1
	ahi	%r5,1
	ahi	%r4,-1
.L532:
	brct	%r1,.L536
	j	.L533
.L536:
	ic	%r0,0(%r3)
	stc	%r0,0(%r5)
	tml	%r0,255
	jne	.L534
.L533:
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
	j	.L539
.L541:
	ahi	%r2,1
.L539:
	brct	%r3,.L542
	br	%r14
.L542:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	j	.L541
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
	j	.L545
.L547:
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	ber	%r14
.L548:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	jne	.L547
	ahi	%r2,1
.L545:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L550
	lr	%r1,%r3
	j	.L548
.L550:
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
.L554:
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	jne	.L553
	lr	%r2,%r1
.L553:
	ahi	%r1,1
	lhi	%r4,0
	ic	%r4,4095(%r1,%r5)
	ltr	%r4,%r4
	ber	%r14
	j	.L554
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
	lr	%r11,%r3
	lhi	%r0,0
	lhi	%r10,0
	lr	%r1,%r3
	srst	%r10,%r1
	jo	.-4
	slr	%r10,%r3
	jhe	.L560
	lhi	%r9,0
	ic	%r9,0(%r3)
	lr	%r12,%r2
	j	.L561
.L562:
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L564
	ahi	%r12,1
.L561:
	lr	%r3,%r9
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	jne	.L562
	j	.L560
.L564:
	lr	%r2,%r12
.L560:
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
	larl	%r5,.L579
	kdb	%f0,.L580-.L579(%r5)
	jnl	.L567
	kdb	%f2,.L580-.L579(%r5)
	jh	.L569
.L567:
	kdb	%f0,.L580-.L579(%r5)
	jnh	.L570
	kdb	%f2,.L580-.L579(%r5)
	jnl	.L570
.L569:
	lcdbr	%f0,%f0
.L570:
	br	%r14
	.section	.rodata
	.align	8
.L579:
.L580:
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
	lr	%r11,%r4
	lr	%r10,%r3
	sr	%r10,%r5
	ar	%r10,%r2
	ltr	%r5,%r5
	je	.L582
	clr	%r5,%r3
	jh	.L587
	lr	%r12,%r2
	lr	%r8,%r4
	ahi	%r8,1
	ahi	%r5,-1
	lr	%r9,%r5
	j	.L583
.L585:
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r11)
	cr	%r2,%r1
	jne	.L584
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	je	.L588
.L584:
	ahi	%r12,1
.L583:
	clr	%r12,%r10
	jle	.L585
	lhi	%r2,0
	j	.L582
.L587:
	lhi	%r2,0
	j	.L582
.L588:
	lr	%r2,%r12
.L582:
	lm	%r8,%r15,128(%r15)
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
	larl	%r5,.L612
	kdb	%f0,.L613-.L612(%r5)
	jnl	.L609
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L593
.L609:
	lhi	%r3,0
.L593:
	kdb	%f0,.L614-.L612(%r5)
	jhe	.L604
	j	.L610
.L597:
	ahi	%r1,1
	mdb	%f0,.L615-.L612(%r5)
	j	.L595
.L604:
	lhi	%r1,0
.L595:
	kdb	%f0,.L614-.L612(%r5)
	jhe	.L597
	j	.L598
.L610:
	kdb	%f0,.L615-.L612(%r5)
	jnl	.L611
	cdb	%f0,.L613-.L612(%r5)
	jne	.L606
	lhi	%r1,0
	j	.L598
.L601:
	ahi	%r1,-1
	adbr	%f0,%f0
	j	.L600
.L606:
	lhi	%r1,0
.L600:
	kdb	%f0,.L615-.L612(%r5)
	jl	.L601
	j	.L598
.L611:
	lhi	%r1,0
.L598:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L612:
.L615:
	.long	1071644672
	.long	0
.L614:
	.long	1072693248
	.long	0
.L613:
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
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r0,%r2
	lr	%r1,%r3
	lhi	%r2,0
	lhi	%r3,0
	j	.L617
.L620:
	lhi	%r12,0
	lhi	%r11,1
	nr	%r11,%r1
	lr	%r13,%r11
	lr	%r11,%r12
	or	%r11,%r13
	je	.L618
	alr	%r3,%r5
	alcr	%r2,%r4
.L618:
	sldl	%r4,1
	srdl	%r0,1
.L617:
	lr	%r11,%r0
	or	%r11,%r1
	jne	.L620
	lm	%r11,%r13,44(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
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
	j	.L623
.L627:
	sll	%r3,1
	sll	%r1,1
.L623:
	clr	%r3,%r2
	jl	.L624
	lhi	%r5,0
	j	.L625
.L634:
	lhi	%r5,0
	j	.L625
.L624:
	brct	%r5,.L633
	j	.L634
.L633:
	ltr	%r3,%r3
	jhe	.L627
	lhi	%r5,0
	j	.L625
.L629:
	clr	%r2,%r3
	jl	.L628
	sr	%r2,%r3
	or	%r5,%r1
.L628:
	srl	%r1,1
	srl	%r3,1
.L625:
	ltr	%r1,%r1
	jne	.L629
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
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r2,%r2
	je	.L638
	sll	%r2,8
	brasl	%r14,__clzsi2
	ahi	%r2,-1
	j	.L637
.L638:
	lhi	%r2,7
.L637:
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
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
	stm	%r14,%r15,56(%r15)
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	ltr	%r2,%r2
	jhe	.L641
	lhi	%r1,-1
	xr	%r1,%r2
	lr	%r4,%r1
	lhi	%r1,-1
	xr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
.L641:
	lr	%r1,%r2
	or	%r1,%r3
	je	.L645
	brasl	%r14,__clzdi2
	ahi	%r2,-1
	j	.L643
.L645:
	lhi	%r2,63
.L643:
	lm	%r14,%r15,152(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
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
	lr	%r1,%r2
	lhi	%r2,0
	j	.L648
.L650:
	tml	%r1,1
	je	.L649
	ar	%r2,%r3
.L649:
	srl	%r1,1
	sll	%r3,1
.L648:
	ltr	%r1,%r1
	ber	%r14
	j	.L650
	.cfi_endproc
.LFE104:
	.size	__mulsi3, .-__mulsi3
	.align	8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
.LFB105:
	.cfi_startproc
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r0,%r4
	srl	%r0,3
	lhi	%r5,-8
	nr	%r5,%r4
	clr	%r2,%r3
	jl	.L654
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L654
	lr	%r1,%r4
	ahi	%r1,1
	j	.L655
.L654:
	lhi	%r1,0
	ahi	%r0,1
	j	.L656
.L657:
	l	%r12,0(%r1,%r3)
	l	%r13,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	st	%r13,4(%r1,%r2)
	ahi	%r1,8
.L656:
	brct	%r0,.L657
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L663
	ltr	%r4,%r4
	jne	.L658
.L663:
	lhi	%r1,1
	j	.L658
.L659:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L658:
	brct	%r1,.L659
	j	.L653
.L661:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L655:
	ahi	%r4,-1
	brct	%r1,.L661
.L653:
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	jl	.L666
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L666
	lr	%r1,%r4
	ahi	%r1,1
	j	.L667
.L666:
	lhi	%r1,0
	ahi	%r5,1
	j	.L668
.L669:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	ahi	%r1,2
.L668:
	brct	%r5,.L669
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L671:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L667:
	ahi	%r4,-1
	brct	%r1,.L671
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r0,%r4
	srl	%r0,2
	lhi	%r5,-4
	nr	%r5,%r4
	clr	%r2,%r3
	jl	.L675
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L675
	lr	%r1,%r4
	ahi	%r1,1
	j	.L676
.L675:
	lhi	%r1,0
	ahi	%r0,1
	j	.L677
.L678:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L677:
	brct	%r0,.L678
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L684
	ltr	%r4,%r4
	jne	.L679
.L684:
	lhi	%r1,1
	j	.L679
.L680:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L679:
	brct	%r1,.L680
	j	.L674
.L682:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L676:
	ahi	%r4,-1
	brct	%r1,.L682
.L674:
	l	%r12,48(%r15)
	.cfi_restore 12
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
	larl	%r5,.L690
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L691-.L690(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L690:
.L691:
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
	larl	%r5,.L694
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jhe	.L693
	adb	%f0,.L695-.L694(%r5)
.L693:
	ledbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L694:
.L695:
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
	j	.L703
.L705:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
.L703:
	brct	%r1,.L705
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
	lhi	%r1,17
	j	.L708
.L710:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
.L708:
	brct	%r1,.L710
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
	larl	%r5,.L718
	keb	%f0,.L719-.L718(%r5)
	jnhe	.L717
	seb	%f0,.L719-.L718(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L720-.L718(%r5)
	br	%r14
.L717:
	cfebr	%r2,5,%f0
	br	%r14
	.section	.rodata
	.align	8
.L718:
.L719:
	.long	1191182336
.L720:
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
	lhi	%r3,0
	lhi	%r1,17
	j	.L722
.L724:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L723
	ahi	%r2,1
.L723:
	ahi	%r3,1
.L722:
	brct	%r1,.L724
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
	lhi	%r3,0
	lhi	%r1,17
	j	.L727
.L729:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L728
	ahi	%r2,1
.L728:
	ahi	%r3,1
.L727:
	brct	%r1,.L729
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
	lr	%r1,%r2
	lhi	%r2,0
	j	.L732
.L734:
	tml	%r1,1
	je	.L733
	ar	%r2,%r3
.L733:
	srl	%r1,1
	sll	%r3,1
.L732:
	ltr	%r1,%r1
	ber	%r14
	j	.L734
	.cfi_endproc
.LFE119:
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
.LFB120:
	.cfi_startproc
	ltr	%r1,%r2
	je	.L742
	lhi	%r2,0
	j	.L739
.L741:
	tml	%r3,1
	je	.L740
	ar	%r2,%r1
.L740:
	sll	%r1,1
	srl	%r3,1
.L739:
	ltr	%r3,%r3
	ber	%r14
	j	.L741
.L742:
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
	j	.L746
.L750:
	sll	%r3,1
	sll	%r1,1
.L746:
	clr	%r3,%r2
	jl	.L747
	lhi	%r5,0
	j	.L748
.L757:
	lhi	%r5,0
	j	.L748
.L747:
	brct	%r5,.L756
	j	.L757
.L756:
	ltr	%r3,%r3
	jhe	.L750
	lhi	%r5,0
	j	.L748
.L752:
	clr	%r2,%r3
	jl	.L751
	sr	%r2,%r3
	or	%r5,%r1
.L751:
	srl	%r1,1
	srl	%r3,1
.L748:
	ltr	%r1,%r1
	jne	.L752
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
	jl	.L761
	jh	.L762
	lhi	%r2,0
	br	%r14
.L761:
	lhi	%r2,-1
	br	%r14
.L762:
	lhi	%r2,1
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
	jl	.L766
	jh	.L767
	lhi	%r2,0
	br	%r14
.L766:
	lhi	%r2,-1
	br	%r14
.L767:
	lhi	%r2,1
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
	lr	%r1,%r3
	lr	%r5,%r2
	lr	%r3,%r1
	mlr	%r2,%r5
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
	jhe	.L780
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L774
.L780:
	lhi	%r0,0
.L774:
	lhi	%r4,33
	lhi	%r5,0
	j	.L775
.L778:
	tml	%r3,1
	je	.L776
	ar	%r5,%r2
.L776:
	sll	%r2,1
	sra	%r3,1
.L775:
	ltr	%r3,%r3
	je	.L777
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r4,%r1
	tml	%r1,255
	jne	.L778
.L777:
	ltr	%r0,%r0
	je	.L781
	lcr	%r2,%r5
	br	%r14
.L781:
	lr	%r2,%r5
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
	jhe	.L787
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L784
.L787:
	lhi	%r12,0
.L784:
	ltr	%r3,%r3
	jhe	.L785
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
.L785:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L786
	lcr	%r2,%r2
.L786:
	lm	%r12,%r15,144(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
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
	jhe	.L793
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L790
.L793:
	lhi	%r12,0
.L790:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L792
	lcr	%r2,%r2
.L792:
	lm	%r12,%r15,144(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
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
	larl	%r13,.L808
	lhi	%r1,1
	lhi	%r5,17
	j	.L796
.L800:
	sll	%r3,1
	n	%r3,.L809-.L808(%r13)
	sll	%r1,1
.L796:
	clr	%r3,%r2
	jl	.L797
	lhi	%r5,0
	j	.L798
.L807:
	lhi	%r5,0
	j	.L798
.L797:
	brct	%r5,.L806
	j	.L807
.L806:
	tml	%r3,32768
	je	.L800
	lhi	%r5,0
	j	.L798
.L802:
	clr	%r2,%r3
	jl	.L801
	sr	%r2,%r3
	n	%r2,.L809-.L808(%r13)
	or	%r5,%r1
.L801:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
.L798:
	tml	%r1,65535
	jne	.L802
	ltr	%r4,%r4
	jne	.L803
	lr	%r2,%r5
.L803:
	n	%r2,.L809-.L808(%r13)
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L808:
.L809:
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
	j	.L811
.L815:
	sll	%r3,1
	sll	%r1,1
.L811:
	clr	%r3,%r2
	jl	.L812
	lhi	%r5,0
	j	.L813
.L822:
	lhi	%r5,0
	j	.L813
.L812:
	brct	%r5,.L821
	j	.L822
.L821:
	ltr	%r3,%r3
	jhe	.L815
	lhi	%r5,0
	j	.L813
.L817:
	clr	%r2,%r3
	jl	.L816
	sr	%r2,%r3
	or	%r5,%r1
.L816:
	srl	%r1,1
	srl	%r3,1
.L813:
	ltr	%r1,%r1
	jne	.L817
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
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r12,%r2
	tml	%r4,32
	je	.L825
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lr	%r0,%r2
	j	.L826
.L825:
	ltr	%r4,%r4
	je	.L828
	lr	%r2,%r3
	sll	%r2,0(%r4)
	lr	%r1,%r2
	lr	%r5,%r12
	sll	%r5,0(%r4)
	lhi	%r2,32
	sr	%r2,%r4
	srl	%r3,0(%r2)
	or	%r3,%r5
	lr	%r0,%r3
.L826:
	lr	%r2,%r0
	lr	%r3,%r1
	j	.L827
.L828:
.L827:
	l	%r12,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE131:
	.size	__ashldi3, .-__ashldi3
	.align	8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
.LFB132:
	.cfi_startproc
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r12,%r2
	tml	%r4,32
	je	.L831
	lr	%r1,%r2
	sra	%r1,31
	lr	%r2,%r1
	lr	%r1,%r12
	sra	%r1,4064(%r4)
	lr	%r3,%r1
	j	.L833
.L831:
	ltr	%r4,%r4
	je	.L834
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lr	%r2,%r1
	lhi	%r5,32
	sr	%r5,%r4
	lr	%r0,%r12
	sll	%r0,0(%r5)
	lr	%r1,%r3
	srl	%r1,0(%r4)
	or	%r0,%r1
	lr	%r3,%r0
	j	.L833
.L834:
.L833:
	l	%r12,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE132:
	.size	__ashrdi3, .-__ashrdi3
	.align	8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
.LFB133:
	.cfi_startproc
	stm	%r6,%r15,24(%r15)
	.cfi_offset 6, -72
	.cfi_offset 7, -68
	.cfi_offset 8, -64
	.cfi_offset 9, -60
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	larl	%r13,.L837
	ahi	%r15,-120
	.cfi_def_cfa_offset 216
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,56
	stm	%r4,%r5,112(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,40
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,96(%r15)
	l	%r1,.L838-.L837(%r13)
	nr	%r1,%r5
	st	%r1,100(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,24
	lhi	%r6,0
	l	%r1,.L839-.L837(%r13)
	nr	%r1,%r5
	lr	%r7,%r1
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,8
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,104(%r15)
	lr	%r1,%r5
	n	%r1,.L840-.L837(%r13)
	st	%r1,108(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,8
	lhi	%r1,255
	nr	%r1,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,24
	l	%r12,.L838-.L837(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	lr	%r8,%r2
	lr	%r9,%r3
	sldl	%r8,40
	l	%r12,.L839-.L837(%r13)
	nr	%r12,%r8
	lr	%r4,%r12
	sldl	%r2,56
	lr	%r12,%r2
	lm	%r2,%r3,112(%r15)
	or	%r12,%r2
	o	%r12,96(%r15)
	lr	%r2,%r12
	lr	%r12,%r3
	o	%r12,100(%r15)
	lr	%r3,%r12
	lr	%r12,%r2
	or	%r12,%r6
	lr	%r8,%r12
	lr	%r2,%r3
	or	%r2,%r7
	lr	%r9,%r2
	lm	%r6,%r7,104(%r15)
	lr	%r12,%r6
	or	%r12,%r8
	lr	%r2,%r12
	lr	%r12,%r7
	or	%r12,%r9
	lr	%r3,%r12
	lr	%r12,%r1
	or	%r12,%r2
	lr	%r1,%r0
	or	%r1,%r12
	lr	%r10,%r1
	lr	%r1,%r4
	or	%r1,%r10
	lr	%r2,%r1
	lm	%r6,%r15,144(%r15)
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa_offset 96
	br	%r14
	.section	.rodata
	.align	8
.L837:
.L840:
	.long	-16777216
.L839:
	.long	16711680
.L838:
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
	larl	%r5,.L842
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L843-.L842(%r5)
	sll	%r2,8
	n	%r2,.L844-.L842(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L842:
.L844:
	.long	16711680
.L843:
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
	larl	%r13,.L854
	lr	%r1,%r2
	cl	%r2,.L855-.L854(%r13)
	jh	.L850
	lhi	%r3,16
	j	.L846
.L850:
	lhi	%r3,0
.L846:
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	tml	%r1,65280
	jne	.L851
	lhi	%r4,8
	j	.L847
.L851:
	lhi	%r4,0
.L847:
	lhi	%r2,8
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,240
	jne	.L852
	lhi	%r4,4
	j	.L848
.L852:
	lhi	%r4,0
.L848:
	lhi	%r2,4
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,12
	jne	.L853
	lhi	%r2,2
	j	.L849
.L853:
	lhi	%r2,0
.L849:
	lhi	%r4,2
	lr	%r5,%r4
	sr	%r5,%r2
	srl	%r1,0(%r5)
	ar	%r3,%r2
	lhi	%r2,2
	nr	%r2,%r1
	ahi	%r2,-1
	srl	%r2,31
	sr	%r4,%r1
	msr	%r2,%r4
	ar	%r2,%r3
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L854:
.L855:
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
	jl	.L858
	jh	.L859
	clr	%r3,%r5
	jl	.L860
	jh	.L861
	lhi	%r2,1
	br	%r14
.L858:
	lhi	%r2,0
	br	%r14
.L859:
	lhi	%r2,2
	br	%r14
.L860:
	lhi	%r2,0
	br	%r14
.L861:
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
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	tml	%r2,65535
	jne	.L870
	lhi	%r3,16
	j	.L866
.L870:
	lhi	%r3,0
.L866:
	srl	%r1,0(%r3)
	tml	%r1,255
	jne	.L871
	lhi	%r2,8
	j	.L867
.L871:
	lhi	%r2,0
.L867:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,15
	jne	.L872
	lhi	%r2,4
	j	.L868
.L872:
	lhi	%r2,0
.L868:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,3
	jne	.L873
	lhi	%r2,2
	j	.L869
.L873:
	lhi	%r2,0
.L869:
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
	.cfi_endproc
.LFE138:
	.size	__ctzsi2, .-__ctzsi2
	.align	8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
.LFB139:
	.cfi_startproc
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r12,%r2
	tml	%r4,32
	je	.L876
	lhi	%r2,0
	lr	%r1,%r12
	srl	%r1,4064(%r4)
	lr	%r3,%r1
	j	.L878
.L876:
	ltr	%r4,%r4
	je	.L879
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lr	%r2,%r1
	lhi	%r5,32
	sr	%r5,%r4
	lr	%r0,%r12
	sll	%r0,0(%r5)
	lr	%r1,%r3
	srl	%r1,0(%r4)
	or	%r0,%r1
	lr	%r3,%r0
	j	.L878
.L879:
.L878:
	l	%r12,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
	.cfi_endproc
.LFE139:
	.size	__lshrdi3, .-__lshrdi3
	.align	8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
.LFB140:
	.cfi_startproc
	stm	%r11,%r13,44(%r15)
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	larl	%r13,.L882
	lr	%r11,%r2
	lr	%r4,%r3
	l	%r0,.L883-.L882(%r13)
	nr	%r0,%r2
	l	%r12,.L883-.L882(%r13)
	nr	%r12,%r3
	lr	%r5,%r0
	msr	%r5,%r12
	lr	%r1,%r5
	srl	%r1,16
	n	%r5,.L883-.L882(%r13)
	srl	%r11,16
	msr	%r12,%r11
	ar	%r1,%r12
	lr	%r12,%r1
	sll	%r12,16
	ar	%r12,%r5
	srl	%r1,16
	lr	%r2,%r1
	lr	%r1,%r12
	srl	%r1,16
	l	%r5,.L883-.L882(%r13)
	nr	%r5,%r12
	srl	%r4,16
	msr	%r0,%r4
	ar	%r1,%r0
	lr	%r0,%r1
	sll	%r0,16
	ar	%r0,%r5
	lr	%r3,%r0
	srl	%r1,16
	ar	%r1,%r2
	msr	%r4,%r11
	ar	%r4,%r1
	lr	%r2,%r4
	lm	%r11,%r13,44(%r15)
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	br	%r14
	.section	.rodata
	.align	8
.L882:
.L883:
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
	stm	%r10,%r15,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	.cfi_offset 14, -40
	.cfi_offset 15, -36
	ahi	%r15,-96
	.cfi_def_cfa_offset 192
	lr	%r10,%r2
	lr	%r11,%r3
	lr	%r12,%r4
	lr	%r13,%r5
	lr	%r3,%r5
	lr	%r2,%r11
	brasl	%r14,__muldsi3
	lr	%r4,%r2
	lr	%r1,%r10
	msr	%r1,%r13
	msr	%r12,%r11
	ar	%r1,%r12
	ar	%r1,%r4
	lr	%r2,%r1
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
	je	.L887
	ahi	%r2,-1
.L887:
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
	nr	%r2,%r1
	lhi	%r1,27030
	sra	%r1,0(%r2)
	lhi	%r2,1
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
	larl	%r13,.L894
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r12,.L895-.L894(%r13)
	nr	%r12,%r0
	lr	%r4,%r12
	l	%r12,.L895-.L894(%r13)
	nr	%r12,%r1
	slr	%r3,%r12
	slbr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,2
	l	%r12,.L896-.L894(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L896-.L894(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	l	%r12,.L896-.L894(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L896-.L894(%r13)
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
	l	%r1,.L897-.L894(%r13)
	nr	%r1,%r4
	lr	%r2,%r1
	l	%r1,.L897-.L894(%r13)
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
.L894:
.L897:
	.long	252645135
.L896:
	.long	858993459
.L895:
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
	larl	%r5,.L899
	lr	%r1,%r2
	srl	%r2,1
	n	%r2,.L900-.L899(%r5)
	sr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L901-.L899(%r5)
	n	%r1,.L901-.L899(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L902-.L899(%r5)
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
.L899:
.L902:
	.long	252645135
.L901:
	.long	858993459
.L900:
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
	larl	%r5,.L909
	lr	%r3,%r2
	srl	%r3,31
	ld	%f2,.L910-.L909(%r5)
.L906:
	tml	%r2,1
	je	.L904
	mdbr	%f2,%f0
.L904:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L905
	mdbr	%f0,%f0
	j	.L906
.L905:
	ltr	%r3,%r3
	je	.L908
	ld	%f0,.L910-.L909(%r5)
	ddbr	%f0,%f2
	br	%r14
.L908:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L909:
.L910:
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
	larl	%r5,.L917
	lr	%r3,%r2
	srl	%r3,31
	le	%f2,.L918-.L917(%r5)
.L914:
	tml	%r2,1
	je	.L912
	meebr	%f2,%f0
.L912:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L913
	meebr	%f0,%f0
	j	.L914
.L913:
	ltr	%r3,%r3
	je	.L916
	le	%f0,.L918-.L917(%r5)
	debr	%f0,%f2
	br	%r14
.L916:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L917:
.L918:
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
	jl	.L921
	jh	.L922
	clr	%r3,%r5
	jl	.L923
	jh	.L924
	lhi	%r2,1
	br	%r14
.L921:
	lhi	%r2,0
	br	%r14
.L922:
	lhi	%r2,2
	br	%r14
.L923:
	lhi	%r2,0
	br	%r14
.L924:
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
