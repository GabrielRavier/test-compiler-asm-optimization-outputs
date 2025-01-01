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
.L15:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L16:
	.cfi_restore_state
	lhi	%r2,0
	j	.L15
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
.L40:
	brct	%r4,.L42
	j	.L44
.L42:
	lhi	%r5,0
	ic	%r5,0(%r1,%r2)
	lr	%r0,%r1
	ahi	%r0,-1
	cr	%r3,%r5
	je	.L45
	lr	%r1,%r0
	j	.L40
.L45:
	ar	%r2,%r1
	br	%r14
.L44:
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
	j	.L48
.L49:
	stc	%r3,0(%r1)
	ahi	%r1,1
.L48:
	brct	%r4,.L49
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
	j	.L52
.L55:
	ahi	%r3,1
	ahi	%r2,1
.L52:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	jne	.L55
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
	j	.L58
.L61:
	ahi	%r2,1
.L58:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	ber	%r14
	cr	%r3,%r1
	jne	.L61
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
.L65:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,1
	lhi	%r1,0
	ic	%r1,4095(%r2,%r4)
	ltr	%r1,%r1
	jne	.L65
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
	j	.L70
.L72:
	ahi	%r2,1
	ahi	%r3,1
.L70:
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	jne	.L71
	lr	%r1,%r4
	ltr	%r1,%r1
	jne	.L72
.L71:
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
	j	.L75
.L76:
	ahi	%r1,1
.L75:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ltr	%r3,%r3
	jne	.L76
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
	je	.L83
.L80:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L81
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L81
	brct	%r4,.L84
	j	.L81
.L84:
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	jne	.L81
	ahi	%r2,1
	ahi	%r3,1
	j	.L80
.L81:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L83:
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
	jhe	.L87
	lhi	%r1,1
	j	.L87
.L88:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
.L87:
	brct	%r1,.L88
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
	je	.L97
	chi	%r2,9
	je	.L99
	lhi	%r2,0
	br	%r14
.L99:
	lhi	%r2,1
	br	%r14
.L97:
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
	jle	.L103
	chi	%r2,127
	je	.L105
	lhi	%r2,0
	br	%r14
.L105:
	lhi	%r2,1
	br	%r14
.L103:
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
	je	.L117
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L117:
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
	larl	%r5,.L128
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L124
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L125
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L126
	a	%r2,.L129-.L128(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L124:
	lhi	%r2,1
	br	%r14
.L125:
	lhi	%r2,1
	br	%r14
.L126:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L128:
.L129:
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
	larl	%r5,.L141
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L140
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L135
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L142-.L141(%r5)
	jle	.L136
	l	%r1,.L143-.L141(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L137
	l	%r1,.L144-.L141(%r5)
	ar	%r1,%r2
	cl	%r1,.L145-.L141(%r5)
	jh	.L138
	n	%r2,.L146-.L141(%r5)
	c	%r2,.L146-.L141(%r5)
	je	.L139
	lhi	%r2,1
	br	%r14
.L140:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L135:
	lhi	%r2,1
	br	%r14
.L136:
	lhi	%r2,1
	br	%r14
.L137:
	lhi	%r2,1
	br	%r14
.L138:
	lhi	%r2,0
	br	%r14
.L139:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L141:
.L146:
	.long	65534
.L145:
	.long	1048579
.L144:
	.long	-65532
.L143:
	.long	-57344
.L142:
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
	jle	.L149
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L149:
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
	larl	%r5,.L162
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L158
	kdbr	%f0,%f2
	jnh	.L161
	sdbr	%f0,%f2
	br	%r14
.L158:
	ldr	%f0,%f2
	br	%r14
.L161:
	ld	%f0,.L163-.L162(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L162:
.L163:
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
	larl	%r5,.L172
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L168
	kebr	%f0,%f2
	jnh	.L171
	sebr	%f0,%f2
	br	%r14
.L168:
	ler	%f0,%f2
	br	%r14
.L171:
	le	%f0,.L173-.L172(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L172:
.L173:
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
	jo	.L178
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L176
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L176:
	kdbr	%f0,%f2
	jnl	.L175
	ldr	%f0,%f2
	br	%r14
.L178:
	ldr	%f0,%f2
.L175:
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
	jo	.L189
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L187
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L187:
	kebr	%f0,%f2
	jnl	.L186
	ler	%f0,%f2
	br	%r14
.L189:
	ler	%f0,%f2
.L186:
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
	jo	.L208
	cxbr	%f1,%f1
	jo	.L209
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f1,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L200
	tcxb	%f0,1365
	je	.L201
	lxr	%f0,%f1
.L201:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L208:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L209:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L200:
	kxbr	%f0,%f1
	jnl	.L202
	lxr	%f0,%f1
.L202:
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
	jo	.L215
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L213
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L213:
	kdbr	%f0,%f2
	blr	%r14
	ldr	%f0,%f2
	br	%r14
.L215:
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
	jo	.L228
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L226
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L226:
	kebr	%f0,%f2
	blr	%r14
	ler	%f0,%f2
	br	%r14
.L228:
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
	jo	.L249
	cxbr	%f0,%f0
	jo	.L250
	tcxb	%f1,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L241
	tcxb	%f1,1365
	je	.L242
	lxr	%f0,%f1
.L242:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L249:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L250:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L241:
	kxbr	%f1,%f0
	jnl	.L243
	lxr	%f0,%f1
.L243:
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
	j	.L253
.L254:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L253:
	ltr	%r2,%r2
	jne	.L254
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
	je	.L263
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	l	%r1,0(%r2)
	st	%r2,4(%r1)
	br	%r14
.L263:
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
	je	.L266
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L266:
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
	j	.L270
.L271:
	ahi	%r10,1
.L270:
	brct	%r12,.L273
	j	.L274
.L273:
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L271
	msr	%r10,%r9
	l	%r2,100(%r15)
	ar	%r2,%r10
	j	.L272
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
.L272:
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
	j	.L281
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
.L281:
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
	j	.L286
.L287:
	ahi	%r12,1
.L286:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L287
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L293
	chi	%r1,45
	jne	.L294
	lhi	%r5,1
.L288:
	ahi	%r12,1
.L289:
	lhi	%r4,0
	j	.L290
.L293:
	lhi	%r5,0
	j	.L288
.L294:
	lhi	%r5,0
	j	.L289
.L291:
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
.L290:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L291
	ltr	%r5,%r5
	jne	.L295
	lcr	%r2,%r4
.L292:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L295:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L292
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
	j	.L310
.L311:
	ahi	%r12,1
.L310:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L311
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L317
	chi	%r1,45
	jne	.L318
	lhi	%r0,1
.L312:
	ahi	%r12,1
.L313:
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
	j	.L314
.L317:
	lhi	%r0,0
	j	.L312
.L318:
	lhi	%r0,0
	j	.L313
.L315:
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
.L314:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ahi	%r3,-48
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L315
	ltr	%r0,%r0
	jne	.L319
	lcr	%r2,%r12
	lcr	%r3,%r13
	je	.L316
	ahi	%r2,-1
	j	.L316
.L319:
	lr	%r2,%r12
	lr	%r3,%r13
.L316:
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
	j	.L323
.L330:
	srl	%r11,1
.L323:
	ltr	%r11,%r11
	je	.L329
	lr	%r12,%r11
	srl	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L330
	ltr	%r2,%r2
	jle	.L328
	ar	%r12,%r10
	lr	%r9,%r12
	lr	%r1,%r11
	srl	%r1,1
	ahi	%r11,-1
	sr	%r11,%r1
	j	.L323
.L329:
	lhi	%r2,0
.L326:
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
.L328:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L326
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
	j	.L333
.L335:
	sra	%r11,1
.L333:
	ltr	%r11,%r11
	je	.L338
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r9
	ar	%r12,%r10
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L337
	ltr	%r2,%r2
	jle	.L335
	ar	%r12,%r9
	lr	%r10,%r12
	ahi	%r11,-1
	j	.L335
.L338:
	lhi	%r2,0
.L334:
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
.L337:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L334
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
	je	.L343
	ahi	%r2,-1
.L343:
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
	je	.L354
	ahi	%r2,-1
.L354:
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
	j	.L361
.L363:
	ahi	%r2,4
.L361:
	icm	%r1,15,0(%r2)
	je	.L362
	c	%r3,0(%r2)
	jne	.L363
.L362:
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
	j	.L368
.L370:
	ahi	%r2,4
	ahi	%r3,4
.L368:
	clc	0(4,%r3),0(%r2)
	jne	.L369
	icm	%r1,15,0(%r2)
	je	.L369
	icm	%r1,15,0(%r3)
	jne	.L370
.L369:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L373
	lhi	%r1,1
	jl	.L372
	lhi	%r1,0
.L372:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L373:
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
.L376:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	la	%r5,0(%r1,%r4)
	icm	%r5,15,0(%r5)
	jne	.L376
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
	j	.L381
.L382:
	ahi	%r2,4
.L381:
	icm	%r1,15,0(%r2)
	jne	.L382
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
.L385:
	brct	%r1,.L392
	j	.L386
.L392:
	clc	0(4,%r3),0(%r2)
	jne	.L386
	icm	%r5,15,0(%r2)
	je	.L386
	icm	%r5,15,0(%r3)
	je	.L386
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	j	.L385
.L386:
	ltr	%r4,%r4
	je	.L390
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L391
	lhi	%r1,1
	jl	.L389
	lhi	%r1,0
.L389:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L390:
	lhi	%r2,0
	br	%r14
.L391:
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
	j	.L395
.L397:
	ahi	%r4,-1
	ahi	%r2,4
.L395:
	brct	%r1,.L400
	j	.L396
.L400:
	c	%r3,0(%r2)
	jne	.L397
.L396:
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
	j	.L403
.L405:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L403:
	brct	%r1,.L410
	j	.L404
.L410:
	clc	0(4,%r3),0(%r2)
	je	.L405
.L404:
	ltr	%r4,%r4
	je	.L408
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L409
	lhi	%r1,1
	jl	.L407
	lhi	%r1,0
.L407:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L408:
	lhi	%r2,0
	br	%r14
.L409:
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
	j	.L413
.L414:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L413:
	ahi	%r4,-1
	brct	%r5,.L414
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
	jhe	.L422
	ahi	%r4,-1
	sll	%r4,2
	lr	%r1,%r4
	ahi	%r1,4
	srl	%r1,2
	ahi	%r1,1
	j	.L419
.L420:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	ahi	%r4,-4
.L419:
	brct	%r1,.L420
	br	%r14
.L421:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L418:
	ahi	%r4,-1
	brct	%r5,.L421
	br	%r14
.L422:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L418
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
	j	.L425
.L426:
	st	%r3,0(%r5)
	ahi	%r5,4
.L425:
	ahi	%r4,-1
	brct	%r1,.L426
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
	jhe	.L429
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L430
.L431:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L430:
	brct	%r1,.L431
	br	%r14
.L429:
	cr	%r2,%r3
	ber	%r14
	lhi	%r1,0
	ahi	%r4,1
	j	.L433
.L434:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L433:
	brct	%r4,.L434
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
	larl	%r5,.L451
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L452-.L451(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L451:
.L452:
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
	larl	%r5,.L454
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L455-.L454(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L454:
.L455:
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
	larl	%r5,.L461
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L462-.L461(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L461:
.L462:
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
	larl	%r5,.L464
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L465-.L464(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L466-.L464(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L464:
.L466:
	.long	65280
.L465:
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
	larl	%r13,.L468
	l	%r1,.L469-.L468(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,56
	l	%r12,.L470-.L468(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	lhi	%r1,0
	srdl	%r0,40
	lr	%r12,%r0
	or	%r12,%r4
	or	%r1,%r5
	lr	%r11,%r1
	l	%r1,.L471-.L468(%r13)
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
	l	%r1,.L469-.L468(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	sldl	%r4,8
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r11
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	l	%r12,.L470-.L468(%r13)
	nr	%r12,%r3
	lr	%r5,%r12
	sldl	%r4,24
	lr	%r12,%r0
	or	%r12,%r4
	lr	%r10,%r12
	or	%r1,%r5
	lr	%r11,%r1
	lhi	%r0,0
	l	%r4,.L471-.L468(%r13)
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
.L468:
.L471:
	.long	65280
.L470:
	.long	16711680
.L469:
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
.L473:
	brct	%r3,.L476
	j	.L477
.L476:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L478
	ahi	%r1,1
	j	.L473
.L478:
	ahi	%r1,1
	lr	%r2,%r1
	br	%r14
.L477:
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
	je	.L484
	lhi	%r2,1
	j	.L482
.L486:
	sra	%r1,1
	ahi	%r2,1
.L482:
	tml	%r1,1
	je	.L486
	br	%r14
.L484:
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
	larl	%r5,.L495
	keb	%f0,.L496-.L495(%r5)
	jl	.L491
	keb	%f0,.L497-.L495(%r5)
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
	.long	2139095039
.L496:
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
	larl	%r5,.L505
	kdb	%f0,.L506-.L505(%r5)
	jl	.L501
	kdb	%f0,.L507-.L505(%r5)
	jnh	.L504
	lhi	%r2,1
	br	%r14
.L501:
	lhi	%r2,1
	br	%r14
.L504:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L505:
.L507:
	.long	2146435071
	.long	-1
.L506:
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
	larl	%r5,.L515
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L516-.L515(%r5)
	ld	%f3,.L516-.L515+8(%r5)
	kxbr	%f0,%f1
	jl	.L511
	ld	%f1,.L517-.L515(%r5)
	ld	%f3,.L517-.L515+8(%r5)
	kxbr	%f0,%f1
	jnh	.L514
	lhi	%r2,1
	br	%r14
.L511:
	lhi	%r2,1
	br	%r14
.L514:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L515:
.L517:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L516:
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
	larl	%r5,.L527
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L526
	le	%f2,.L528-.L527(%r5)
	j	.L524
.L526:
	le	%f2,.L529-.L527(%r5)
	j	.L524
.L523:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L524:
	tml	%r2,1
	je	.L523
	meebr	%f0,%f2
	j	.L523
	.section	.rodata
	.align	8
.L527:
.L529:
	.long	1056964608
.L528:
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
	larl	%r5,.L537
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L536
	ld	%f2,.L538-.L537(%r5)
	j	.L534
.L536:
	ld	%f2,.L539-.L537(%r5)
	j	.L534
.L533:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L534:
	tml	%r2,1
	je	.L533
	mdbr	%f0,%f2
	j	.L533
	.section	.rodata
	.align	8
.L537:
.L539:
	.long	1071644672
	.long	0
.L538:
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
	larl	%r5,.L547
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L541
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L541
	ltr	%r4,%r4
	jl	.L546
	ld	%f0,.L548-.L547(%r5)
	ld	%f2,.L548-.L547+8(%r5)
	j	.L544
.L546:
	ld	%f0,.L549-.L547(%r5)
	ld	%f2,.L549-.L547+8(%r5)
	j	.L544
.L543:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L541
	mxbr	%f0,%f0
.L544:
	tml	%r4,1
	je	.L543
	mxbr	%f1,%f0
	j	.L543
.L541:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L547:
.L549:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L548:
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
	j	.L551
.L552:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L551:
	brct	%r4,.L552
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
	j	.L555
.L557:
	ahi	%r3,1
	ahi	%r5,1
	ahi	%r4,-1
.L555:
	brct	%r1,.L559
	j	.L556
.L559:
	ic	%r0,0(%r3)
	stc	%r0,0(%r5)
	tml	%r0,255
	jne	.L557
.L556:
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
.L562:
	brct	%r3,.L565
	br	%r14
.L565:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	j	.L562
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
.L569:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L574
	lr	%r1,%r3
.L572:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	je	.L575
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	jne	.L572
	br	%r14
.L575:
	ahi	%r2,1
	j	.L569
.L574:
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
	j	.L579
.L578:
	ahi	%r1,1
	lhi	%r4,0
	ic	%r4,4095(%r1,%r5)
	ltr	%r4,%r4
	ber	%r14
.L579:
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	jne	.L578
	lr	%r2,%r1
	j	.L578
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
	jhe	.L585
	lhi	%r9,0
	ic	%r9,0(%r3)
	lr	%r12,%r2
.L586:
	lr	%r3,%r9
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L585
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L589
	ahi	%r12,1
	j	.L586
.L589:
	lr	%r2,%r12
.L585:
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
	larl	%r5,.L605
	kdb	%f0,.L606-.L605(%r5)
	jl	.L604
.L592:
	kdb	%f0,.L606-.L605(%r5)
	jnh	.L595
	kdb	%f2,.L606-.L605(%r5)
	jl	.L594
.L595:
	br	%r14
.L604:
	kdb	%f2,.L606-.L605(%r5)
	jnh	.L592
.L594:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L605:
.L606:
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
	je	.L608
	clr	%r5,%r3
	jh	.L613
	lr	%r12,%r2
	lr	%r8,%r4
	ahi	%r8,1
	ahi	%r5,-1
	lr	%r9,%r5
	j	.L609
.L610:
	ahi	%r12,1
.L609:
	clr	%r12,%r10
	jh	.L615
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r11)
	cr	%r2,%r1
	jne	.L610
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L610
	lr	%r2,%r12
	j	.L608
.L615:
	lhi	%r2,0
.L608:
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
.L613:
	.cfi_restore_state
	lhi	%r2,0
	j	.L608
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
	larl	%r5,.L641
	kdb	%f0,.L642-.L641(%r5)
	jl	.L639
	lhi	%r3,0
.L620:
	kdb	%f0,.L643-.L641(%r5)
	jnhe	.L640
	lhi	%r1,0
	j	.L622
.L639:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L620
.L624:
	ahi	%r1,1
	mdb	%f0,.L644-.L641(%r5)
.L622:
	kdb	%f0,.L643-.L641(%r5)
	jhe	.L624
.L625:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L640:
	kdb	%f0,.L644-.L641(%r5)
	jnl	.L638
	cdb	%f0,.L642-.L641(%r5)
	jne	.L633
	lhi	%r1,0
	j	.L625
.L628:
	ahi	%r1,-1
	adbr	%f0,%f0
.L627:
	kdb	%f0,.L644-.L641(%r5)
	jl	.L628
	j	.L625
.L633:
	lhi	%r1,0
	j	.L627
.L638:
	lhi	%r1,0
	j	.L625
	.section	.rodata
	.align	8
.L641:
.L644:
	.long	1071644672
	.long	0
.L643:
	.long	1072693248
	.long	0
.L642:
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
	j	.L646
.L647:
	sldl	%r4,1
	srdl	%r0,1
.L646:
	lr	%r11,%r0
	or	%r11,%r1
	je	.L650
	lhi	%r12,0
	lhi	%r11,1
	nr	%r11,%r1
	lr	%r13,%r11
	lr	%r11,%r12
	or	%r11,%r13
	je	.L647
	alr	%r3,%r5
	alcr	%r2,%r4
	j	.L647
.L650:
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
	j	.L653
.L657:
	sll	%r3,1
	sll	%r1,1
.L653:
	clr	%r3,%r2
	jhe	.L665
	brct	%r5,.L663
	j	.L666
.L663:
	ltr	%r3,%r3
	jhe	.L657
	lhi	%r5,0
	j	.L655
.L665:
	lhi	%r5,0
	j	.L655
.L666:
	lhi	%r5,0
	j	.L655
.L658:
	srl	%r1,1
	srl	%r3,1
.L655:
	ltr	%r1,%r1
	je	.L667
	clr	%r2,%r3
	jl	.L658
	sr	%r2,%r3
	or	%r5,%r1
	j	.L658
.L667:
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
	je	.L671
	sll	%r2,8
	brasl	%r14,__clzsi2
	ahi	%r2,-1
.L670:
	lm	%r14,%r15,152(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
.L671:
	.cfi_restore_state
	lhi	%r2,7
	j	.L670
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
	jl	.L679
.L674:
	lr	%r1,%r2
	or	%r1,%r3
	je	.L678
	brasl	%r14,__clzdi2
	ahi	%r2,-1
.L676:
	lm	%r14,%r15,152(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_def_cfa_offset 96
	br	%r14
.L679:
	.cfi_restore_state
	lhi	%r1,-1
	xr	%r1,%r2
	lr	%r4,%r1
	lhi	%r1,-1
	xr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	j	.L674
.L678:
	lhi	%r2,63
	j	.L676
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
	j	.L682
.L683:
	srl	%r1,1
	sll	%r3,1
.L682:
	ltr	%r1,%r1
	ber	%r14
	tml	%r1,1
	je	.L683
	ar	%r2,%r3
	j	.L683
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
	jl	.L688
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L688
	lr	%r1,%r4
	ahi	%r1,1
	j	.L689
.L688:
	lhi	%r1,0
	ahi	%r0,1
	j	.L690
.L691:
	l	%r12,0(%r1,%r3)
	l	%r13,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	st	%r13,4(%r1,%r2)
	ahi	%r1,8
.L690:
	brct	%r0,.L691
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L697
	ltr	%r4,%r4
	jne	.L692
.L697:
	lhi	%r1,1
	j	.L692
.L693:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L692:
	brct	%r1,.L693
.L687:
	lm	%r12,%r13,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L695:
	.cfi_restore_state
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L689:
	ahi	%r4,-1
	brct	%r1,.L695
	j	.L687
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
	jl	.L700
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L700
	lr	%r1,%r4
	ahi	%r1,1
	j	.L701
.L700:
	lhi	%r1,0
	ahi	%r5,1
	j	.L702
.L703:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	ahi	%r1,2
.L702:
	brct	%r5,.L703
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L705:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L701:
	ahi	%r4,-1
	brct	%r1,.L705
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
	jl	.L709
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L709
	lr	%r1,%r4
	ahi	%r1,1
	j	.L710
.L709:
	lhi	%r1,0
	ahi	%r0,1
	j	.L711
.L712:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
.L711:
	brct	%r0,.L712
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L718
	ltr	%r4,%r4
	jne	.L713
.L718:
	lhi	%r1,1
	j	.L713
.L714:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L713:
	brct	%r1,.L714
.L708:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L716:
	.cfi_restore_state
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L710:
	ahi	%r4,-1
	brct	%r1,.L716
	j	.L708
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
	larl	%r5,.L724
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L725-.L724(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L724:
.L725:
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
	larl	%r5,.L729
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L728
.L727:
	ledbr	%f0,%f0
	br	%r14
.L728:
	adb	%f0,.L730-.L729(%r5)
	j	.L727
	.section	.rodata
	.align	8
.L729:
.L730:
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
.L738:
	brct	%r1,.L740
	br	%r14
.L740:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L738
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
.L744:
	brct	%r1,.L746
	br	%r14
.L746:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L744
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	larl	%r5,.L756
	keb	%f0,.L757-.L756(%r5)
	jhe	.L755
	cfebr	%r2,5,%f0
	br	%r14
.L755:
	seb	%f0,.L757-.L756(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L758-.L756(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L756:
.L757:
	.long	1191182336
.L758:
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
	j	.L760
.L761:
	ahi	%r3,1
.L760:
	brct	%r1,.L762
	j	.L763
.L762:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L761
	ahi	%r2,1
	j	.L761
.L763:
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
	j	.L766
.L767:
	ahi	%r3,1
.L766:
	brct	%r1,.L768
	br	%r14
.L768:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L767
	ahi	%r2,1
	j	.L767
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
	j	.L772
.L773:
	srl	%r1,1
	sll	%r3,1
.L772:
	ltr	%r1,%r1
	ber	%r14
	tml	%r1,1
	je	.L773
	ar	%r2,%r3
	j	.L773
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
	je	.L782
	lhi	%r2,0
	j	.L779
.L780:
	sll	%r1,1
	srl	%r3,1
.L779:
	ltr	%r3,%r3
	ber	%r14
	tml	%r3,1
	je	.L780
	ar	%r2,%r1
	j	.L780
.L782:
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
	j	.L786
.L790:
	sll	%r3,1
	sll	%r1,1
.L786:
	clr	%r3,%r2
	jhe	.L798
	brct	%r5,.L796
	j	.L799
.L796:
	ltr	%r3,%r3
	jhe	.L790
	lhi	%r5,0
	j	.L788
.L798:
	lhi	%r5,0
	j	.L788
.L799:
	lhi	%r5,0
	j	.L788
.L791:
	srl	%r1,1
	srl	%r3,1
.L788:
	ltr	%r1,%r1
	je	.L800
	clr	%r2,%r3
	jl	.L791
	sr	%r2,%r3
	or	%r5,%r1
	j	.L791
.L800:
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
	jl	.L804
	jh	.L805
	lhi	%r2,0
	br	%r14
.L804:
	lhi	%r2,-1
	br	%r14
.L805:
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
	jl	.L809
	jh	.L810
	lhi	%r2,0
	br	%r14
.L809:
	lhi	%r2,-1
	br	%r14
.L810:
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
	jl	.L825
	lhi	%r0,0
.L817:
	lhi	%r4,33
	lhi	%r5,0
	j	.L818
.L825:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L817
.L819:
	sll	%r2,1
	sra	%r3,1
.L818:
	ltr	%r3,%r3
	je	.L820
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r4,%r1
	tml	%r1,255
	je	.L820
	tml	%r3,1
	je	.L819
	ar	%r5,%r2
	j	.L819
.L820:
	ltr	%r0,%r0
	je	.L824
	lcr	%r2,%r5
	br	%r14
.L824:
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
	jl	.L832
	lhi	%r12,0
.L828:
	ltr	%r3,%r3
	jl	.L833
.L829:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L830
	lcr	%r2,%r2
.L830:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L832:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L828
.L833:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L829
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
	jl	.L840
	lhi	%r12,0
.L836:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L838
	lcr	%r2,%r2
.L838:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L840:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L836
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
	larl	%r13,.L859
	lhi	%r1,1
	lhi	%r5,17
.L843:
	clr	%r3,%r2
	jhe	.L855
	brct	%r5,.L853
	j	.L856
.L853:
	tml	%r3,32768
	jne	.L857
	sll	%r3,1
	n	%r3,.L860-.L859(%r13)
	sll	%r1,1
	j	.L843
.L855:
	lhi	%r5,0
	j	.L845
.L856:
	lhi	%r5,0
	j	.L845
.L857:
	lhi	%r5,0
	j	.L845
.L848:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
.L845:
	tml	%r1,65535
	je	.L858
	clr	%r2,%r3
	jl	.L848
	sr	%r2,%r3
	n	%r2,.L860-.L859(%r13)
	or	%r5,%r1
	j	.L848
.L858:
	ltr	%r4,%r4
	jne	.L850
	lr	%r2,%r5
.L850:
	n	%r2,.L860-.L859(%r13)
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L859:
.L860:
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
	j	.L862
.L866:
	sll	%r3,1
	sll	%r1,1
.L862:
	clr	%r3,%r2
	jhe	.L874
	brct	%r5,.L872
	j	.L875
.L872:
	ltr	%r3,%r3
	jhe	.L866
	lhi	%r5,0
	j	.L864
.L874:
	lhi	%r5,0
	j	.L864
.L875:
	lhi	%r5,0
	j	.L864
.L867:
	srl	%r1,1
	srl	%r3,1
.L864:
	ltr	%r1,%r1
	je	.L876
	clr	%r2,%r3
	jl	.L867
	sr	%r2,%r3
	or	%r5,%r1
	j	.L867
.L876:
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
	je	.L879
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lr	%r0,%r2
.L880:
	lr	%r2,%r0
	lr	%r3,%r1
.L881:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L879:
	.cfi_restore_state
	ltr	%r4,%r4
	je	.L881
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
	j	.L880
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
	je	.L885
	lr	%r1,%r2
	sra	%r1,31
	lr	%r2,%r1
	lr	%r1,%r12
	sra	%r1,4064(%r4)
	lr	%r3,%r1
.L887:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L885:
	.cfi_restore_state
	ltr	%r4,%r4
	je	.L887
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
	j	.L887
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
	larl	%r13,.L891
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
	l	%r1,.L892-.L891(%r13)
	nr	%r1,%r5
	st	%r1,100(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,24
	lhi	%r6,0
	l	%r1,.L893-.L891(%r13)
	nr	%r1,%r5
	lr	%r7,%r1
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,8
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,104(%r15)
	lr	%r1,%r5
	n	%r1,.L894-.L891(%r13)
	st	%r1,108(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,8
	lhi	%r1,255
	nr	%r1,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,24
	l	%r12,.L892-.L891(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	lr	%r8,%r2
	lr	%r9,%r3
	sldl	%r8,40
	l	%r12,.L893-.L891(%r13)
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
.L891:
.L894:
	.long	-16777216
.L893:
	.long	16711680
.L892:
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
	larl	%r5,.L896
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L897-.L896(%r5)
	sll	%r2,8
	n	%r2,.L898-.L896(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L896:
.L898:
	.long	16711680
.L897:
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
	larl	%r13,.L908
	lr	%r1,%r2
	cl	%r2,.L909-.L908(%r13)
	jh	.L904
	lhi	%r3,16
.L900:
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	tml	%r1,65280
	jne	.L905
	lhi	%r4,8
.L901:
	lhi	%r2,8
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,240
	jne	.L906
	lhi	%r4,4
.L902:
	lhi	%r2,4
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,12
	jne	.L907
	lhi	%r2,2
.L903:
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
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L904:
	.cfi_restore_state
	lhi	%r3,0
	j	.L900
.L905:
	lhi	%r4,0
	j	.L901
.L906:
	lhi	%r4,0
	j	.L902
.L907:
	lhi	%r2,0
	j	.L903
	.section	.rodata
	.align	8
.L908:
.L909:
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
	jl	.L912
	jh	.L913
	clr	%r3,%r5
	jl	.L914
	jh	.L915
	lhi	%r2,1
	br	%r14
.L912:
	lhi	%r2,0
	br	%r14
.L913:
	lhi	%r2,2
	br	%r14
.L914:
	lhi	%r2,0
	br	%r14
.L915:
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
	jne	.L924
	lhi	%r3,16
.L920:
	srl	%r1,0(%r3)
	tml	%r1,255
	jne	.L925
	lhi	%r2,8
.L921:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,15
	jne	.L926
	lhi	%r2,4
.L922:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,3
	jne	.L927
	lhi	%r2,2
.L923:
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
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L924:
	.cfi_restore_state
	lhi	%r3,0
	j	.L920
.L925:
	lhi	%r2,0
	j	.L921
.L926:
	lhi	%r2,0
	j	.L922
.L927:
	lhi	%r2,0
	j	.L923
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
	je	.L930
	lhi	%r2,0
	lr	%r1,%r12
	srl	%r1,4064(%r4)
	lr	%r3,%r1
.L932:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L930:
	.cfi_restore_state
	ltr	%r4,%r4
	je	.L932
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
	j	.L932
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
	larl	%r13,.L936
	lr	%r11,%r2
	lr	%r4,%r3
	l	%r0,.L937-.L936(%r13)
	nr	%r0,%r2
	l	%r12,.L937-.L936(%r13)
	nr	%r12,%r3
	lr	%r5,%r0
	msr	%r5,%r12
	lr	%r1,%r5
	srl	%r1,16
	n	%r5,.L937-.L936(%r13)
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
	l	%r5,.L937-.L936(%r13)
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
.L936:
.L937:
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
	je	.L941
	ahi	%r2,-1
.L941:
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
	larl	%r13,.L948
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r12,.L949-.L948(%r13)
	nr	%r12,%r0
	lr	%r4,%r12
	l	%r12,.L949-.L948(%r13)
	nr	%r12,%r1
	slr	%r3,%r12
	slbr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,2
	l	%r12,.L950-.L948(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L950-.L948(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	l	%r12,.L950-.L948(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L950-.L948(%r13)
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
	l	%r1,.L951-.L948(%r13)
	nr	%r1,%r4
	lr	%r2,%r1
	l	%r1,.L951-.L948(%r13)
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
.L948:
.L951:
	.long	252645135
.L950:
	.long	858993459
.L949:
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
	larl	%r5,.L953
	lr	%r1,%r2
	srl	%r2,1
	n	%r2,.L954-.L953(%r5)
	sr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L955-.L953(%r5)
	n	%r1,.L955-.L953(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L956-.L953(%r5)
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
.L953:
.L956:
	.long	252645135
.L955:
	.long	858993459
.L954:
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
	larl	%r5,.L963
	lr	%r3,%r2
	srl	%r3,31
	ld	%f2,.L964-.L963(%r5)
	j	.L960
.L958:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L959
	mdbr	%f0,%f0
.L960:
	tml	%r2,1
	je	.L958
	mdbr	%f2,%f0
	j	.L958
.L959:
	ltr	%r3,%r3
	je	.L962
	ld	%f0,.L964-.L963(%r5)
	ddbr	%f0,%f2
	br	%r14
.L962:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L963:
.L964:
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
	larl	%r5,.L971
	lr	%r3,%r2
	srl	%r3,31
	le	%f2,.L972-.L971(%r5)
	j	.L968
.L966:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L967
	meebr	%f0,%f0
.L968:
	tml	%r2,1
	je	.L966
	meebr	%f2,%f0
	j	.L966
.L967:
	ltr	%r3,%r3
	je	.L970
	le	%f0,.L972-.L971(%r5)
	debr	%f0,%f2
	br	%r14
.L970:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L971:
.L972:
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
	jl	.L975
	jh	.L976
	clr	%r3,%r5
	jl	.L977
	jh	.L978
	lhi	%r2,1
	br	%r14
.L975:
	lhi	%r2,0
	br	%r14
.L976:
	lhi	%r2,2
	br	%r14
.L977:
	lhi	%r2,0
	br	%r14
.L978:
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
