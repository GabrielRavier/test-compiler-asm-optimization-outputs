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
	chi	%r2,9
	je	.L107
	lhi	%r2,0
	br	%r14
.L107:
	lhi	%r2,1
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
	jle	.L111
	chi	%r2,127
	je	.L113
	lhi	%r2,0
	br	%r14
.L113:
	lhi	%r2,1
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
	je	.L125
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L125:
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
	larl	%r5,.L137
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L132
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L133
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L134
	a	%r2,.L138-.L137(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L132:
	lhi	%r2,1
	br	%r14
.L133:
	lhi	%r2,1
	br	%r14
.L134:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L137:
.L138:
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
	larl	%r5,.L151
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L150
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L144
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L152-.L151(%r5)
	jle	.L145
	l	%r1,.L153-.L151(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L146
	l	%r1,.L154-.L151(%r5)
	ar	%r1,%r2
	cl	%r1,.L155-.L151(%r5)
	jh	.L147
	n	%r2,.L156-.L151(%r5)
	c	%r2,.L156-.L151(%r5)
	je	.L148
	lhi	%r2,1
	br	%r14
.L150:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L144:
	lhi	%r2,1
	br	%r14
.L145:
	lhi	%r2,1
	br	%r14
.L146:
	lhi	%r2,1
	br	%r14
.L147:
	lhi	%r2,0
	br	%r14
.L148:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L151:
.L156:
	.long	65534
.L155:
	.long	1048579
.L154:
	.long	-65532
.L153:
	.long	-57344
.L152:
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
	jle	.L159
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L159:
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
	larl	%r5,.L173
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L168
	kdbr	%f0,%f2
	jnh	.L171
	sdbr	%f0,%f2
	br	%r14
.L168:
	ldr	%f0,%f2
	br	%r14
.L171:
	ld	%f0,.L174-.L173(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L173:
.L174:
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
	larl	%r5,.L184
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L179
	kebr	%f0,%f2
	jnh	.L182
	sebr	%f0,%f2
	br	%r14
.L179:
	ler	%f0,%f2
	br	%r14
.L182:
	le	%f0,.L185-.L184(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L184:
.L185:
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
	jo	.L190
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L188
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L188:
	kdbr	%f0,%f2
	jnl	.L187
	ldr	%f0,%f2
	br	%r14
.L190:
	ldr	%f0,%f2
.L187:
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
	jo	.L201
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L199
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L199:
	kebr	%f0,%f2
	jnl	.L198
	ler	%f0,%f2
	br	%r14
.L201:
	ler	%f0,%f2
.L198:
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
	jo	.L221
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L222
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
	je	.L212
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	je	.L216
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L213:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L208:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L221:
	.cfi_restore_state
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L208
.L222:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L208
.L216:
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L213
.L212:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jnl	.L219
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L214:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L208
.L219:
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L214
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
	jo	.L228
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L226
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L226:
	kdbr	%f0,%f2
	blr	%r14
	ldr	%f0,%f2
	br	%r14
.L228:
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
	jo	.L241
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L239
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L239:
	kebr	%f0,%f2
	blr	%r14
	ler	%f0,%f2
	br	%r14
.L241:
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
	jo	.L263
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L264
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
	je	.L254
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	je	.L258
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
.L255:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L250:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L263:
	.cfi_restore_state
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L250
.L264:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L250
.L258:
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L255
.L254:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jnl	.L261
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
.L256:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L250
.L261:
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L256
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
	j	.L267
.L268:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L267:
	ltr	%r2,%r2
	jne	.L268
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
	je	.L278
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	l	%r1,0(%r2)
	st	%r2,4(%r1)
	br	%r14
.L278:
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
	je	.L281
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L281:
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
	j	.L285
.L286:
	ahi	%r10,1
.L285:
	brct	%r12,.L288
	j	.L290
.L288:
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L286
	msr	%r10,%r9
	l	%r2,100(%r15)
	ar	%r2,%r10
	j	.L287
.L290:
	lr	%r1,%r13
	ahi	%r1,1
	st	%r1,0(%r7)
	lr	%r2,%r13
	msr	%r2,%r9
	lr	%r4,%r9
	lr	%r3,%r8
	a	%r2,100(%r15)
	brasl	%r14,memcpy
.L287:
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
	j	.L293
.L294:
	ahi	%r10,1
.L293:
	brct	%r12,.L296
	j	.L298
.L296:
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L294
	msr	%r10,%r9
	lr	%r2,%r8
	ar	%r2,%r10
	j	.L295
.L298:
	lhi	%r2,0
.L295:
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
	j	.L303
.L304:
	ahi	%r12,1
.L303:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L304
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L310
	chi	%r1,45
	jne	.L311
	lhi	%r5,1
.L305:
	ahi	%r12,1
.L306:
	lhi	%r4,0
	j	.L307
.L310:
	lhi	%r5,0
	j	.L305
.L311:
	lhi	%r5,0
	j	.L306
.L308:
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
.L307:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L308
	ltr	%r5,%r5
	jne	.L312
	lcr	%r2,%r4
.L309:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L312:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L309
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
	j	.L316
.L317:
	ahi	%r12,1
.L316:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L317
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L323
	chi	%r1,45
	jne	.L324
	lhi	%r5,1
.L318:
	ahi	%r12,1
.L319:
	lhi	%r4,0
	j	.L320
.L323:
	lhi	%r5,0
	j	.L318
.L324:
	lhi	%r5,0
	j	.L319
.L321:
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
.L320:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L321
	ltr	%r5,%r5
	jne	.L325
	lcr	%r2,%r4
.L322:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L325:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L322
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
	j	.L329
.L330:
	ahi	%r12,1
.L329:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L330
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L336
	chi	%r1,45
	jne	.L337
	lhi	%r0,1
.L331:
	ahi	%r12,1
.L332:
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
	j	.L333
.L336:
	lhi	%r0,0
	j	.L331
.L337:
	lhi	%r0,0
	j	.L332
.L334:
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
.L333:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ahi	%r3,-48
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L334
	ltr	%r0,%r0
	jne	.L338
	lcr	%r2,%r12
	lcr	%r3,%r13
	je	.L335
	ahi	%r2,-1
	j	.L335
.L338:
	lr	%r2,%r12
	lr	%r3,%r13
.L335:
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
	j	.L343
.L351:
	srl	%r11,1
.L343:
	ltr	%r11,%r11
	je	.L350
	lr	%r12,%r11
	srl	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L351
	ltr	%r2,%r2
	jle	.L348
	ar	%r12,%r10
	lr	%r9,%r12
	lr	%r1,%r11
	srl	%r1,1
	ahi	%r11,-1
	sr	%r11,%r1
	j	.L343
.L350:
	lhi	%r2,0
.L346:
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
.L348:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L346
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
	j	.L354
.L356:
	sra	%r11,1
.L354:
	ltr	%r11,%r11
	je	.L360
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r9
	ar	%r12,%r10
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L358
	ltr	%r2,%r2
	jle	.L356
	ar	%r12,%r9
	lr	%r10,%r12
	ahi	%r11,-1
	j	.L356
.L360:
	lhi	%r2,0
.L355:
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
.L358:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L355
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
	jl	.L369
.L366:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L369:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L366
	ahi	%r4,-1
	j	.L366
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
	jl	.L383
.L380:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L383:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L380
	ahi	%r4,-1
	j	.L380
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
	j	.L389
.L391:
	ahi	%r2,4
.L389:
	icm	%r1,15,0(%r2)
	je	.L390
	c	%r3,0(%r2)
	jne	.L391
.L390:
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
	j	.L396
.L398:
	ahi	%r2,4
	ahi	%r3,4
.L396:
	clc	0(4,%r3),0(%r2)
	jne	.L397
	icm	%r1,15,0(%r2)
	je	.L397
	icm	%r1,15,0(%r3)
	jne	.L398
.L397:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L401
	lhi	%r1,1
	jl	.L400
	lhi	%r1,0
.L400:
	lhi	%r2,255
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
	lr	%r4,%r2
	ahi	%r4,-4
.L404:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	la	%r5,0(%r1,%r4)
	icm	%r5,15,0(%r5)
	jne	.L404
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
	j	.L409
.L410:
	ahi	%r2,4
.L409:
	icm	%r1,15,0(%r2)
	jne	.L410
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
.L413:
	brct	%r1,.L420
	j	.L414
.L420:
	clc	0(4,%r3),0(%r2)
	jne	.L414
	icm	%r5,15,0(%r2)
	je	.L414
	icm	%r5,15,0(%r3)
	je	.L414
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	j	.L413
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
	j	.L423
.L425:
	ahi	%r4,-1
	ahi	%r2,4
.L423:
	brct	%r1,.L428
	j	.L424
.L428:
	c	%r3,0(%r2)
	jne	.L425
.L424:
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
	j	.L431
.L433:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L431:
	brct	%r1,.L438
	j	.L432
.L438:
	clc	0(4,%r3),0(%r2)
	je	.L433
.L432:
	ltr	%r4,%r4
	je	.L436
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L437
	lhi	%r1,1
	jl	.L435
	lhi	%r1,0
.L435:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L436:
	lhi	%r2,0
	br	%r14
.L437:
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
	j	.L441
.L442:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L441:
	ahi	%r4,-1
	brct	%r5,.L442
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
	jhe	.L450
	ahi	%r4,-1
	sll	%r4,2
	lr	%r1,%r4
	ahi	%r1,4
	srl	%r1,2
	ahi	%r1,1
	j	.L447
.L448:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	ahi	%r4,-4
.L447:
	brct	%r1,.L448
	br	%r14
.L449:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L446:
	ahi	%r4,-1
	brct	%r5,.L449
	br	%r14
.L450:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L446
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
	j	.L453
.L454:
	st	%r3,0(%r5)
	ahi	%r5,4
.L453:
	ahi	%r4,-1
	brct	%r1,.L454
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
	jhe	.L457
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L458
.L459:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L458:
	brct	%r1,.L459
	br	%r14
.L457:
	cr	%r2,%r3
	ber	%r14
	lhi	%r1,0
	ahi	%r4,1
	j	.L461
.L462:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L461:
	brct	%r4,.L462
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
	larl	%r5,.L482
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L483-.L482(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L482:
.L483:
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
	larl	%r5,.L486
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L487-.L486(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L486:
.L487:
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
	larl	%r5,.L494
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L495-.L494(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L494:
.L495:
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
	larl	%r5,.L498
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L499-.L498(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L500-.L498(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L498:
.L500:
	.long	65280
.L499:
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
	larl	%r13,.L503
	lr	%r4,%r3
	l	%r1,.L504-.L503(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,56
	lr	%r8,%r10
	lr	%r9,%r11
	l	%r1,.L505-.L503(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,40
	lr	%r1,%r10
	or	%r1,%r8
	lr	%r3,%r11
	or	%r3,%r9
	l	%r5,.L506-.L503(%r13)
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
	l	%r0,.L504-.L503(%r13)
	nr	%r0,%r4
	lr	%r3,%r0
	sldl	%r2,8
	or	%r1,%r2
	or	%r3,%r5
	lhi	%r10,0
	l	%r2,.L505-.L503(%r13)
	nr	%r2,%r4
	lr	%r11,%r2
	sldl	%r10,24
	lr	%r8,%r10
	lr	%r9,%r11
	or	%r1,%r8
	lhi	%r10,0
	l	%r2,.L506-.L503(%r13)
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
.L503:
.L506:
	.long	65280
.L505:
	.long	16711680
.L504:
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
.L508:
	brct	%r3,.L511
	j	.L512
.L511:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L513
	ahi	%r1,1
	j	.L508
.L513:
	ahi	%r1,1
	lr	%r2,%r1
	br	%r14
.L512:
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
	je	.L519
	lhi	%r2,1
	j	.L517
.L521:
	sra	%r1,1
	ahi	%r2,1
.L517:
	tml	%r1,1
	je	.L521
	br	%r14
.L519:
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
	larl	%r5,.L531
	keb	%f0,.L532-.L531(%r5)
	jl	.L526
	keb	%f0,.L533-.L531(%r5)
	jnh	.L529
	lhi	%r2,1
	br	%r14
.L526:
	lhi	%r2,1
	br	%r14
.L529:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L531:
.L533:
	.long	2139095039
.L532:
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
	larl	%r5,.L542
	kdb	%f0,.L543-.L542(%r5)
	jl	.L537
	kdb	%f0,.L544-.L542(%r5)
	jnh	.L540
	lhi	%r2,1
	br	%r14
.L537:
	lhi	%r2,1
	br	%r14
.L540:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L542:
.L544:
	.long	2146435071
	.long	-1
.L543:
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
	larl	%r5,.L553
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L554-.L553(%r5)
	ld	%f3,.L554-.L553+8(%r5)
	kxbr	%f0,%f1
	jl	.L548
	ld	%f1,.L555-.L553(%r5)
	ld	%f3,.L555-.L553+8(%r5)
	kxbr	%f0,%f1
	jnh	.L551
	lhi	%r2,1
	br	%r14
.L548:
	lhi	%r2,1
	br	%r14
.L551:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L553:
.L555:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L554:
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
	larl	%r5,.L566
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L565
	le	%f2,.L567-.L566(%r5)
	j	.L562
.L565:
	le	%f2,.L568-.L566(%r5)
	j	.L562
.L561:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L562:
	tml	%r2,1
	je	.L561
	meebr	%f0,%f2
	j	.L561
	.section	.rodata
	.align	8
.L566:
.L568:
	.long	1056964608
.L567:
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
	larl	%r5,.L577
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L576
	ld	%f2,.L578-.L577(%r5)
	j	.L573
.L576:
	ld	%f2,.L579-.L577(%r5)
	j	.L573
.L572:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L573:
	tml	%r2,1
	je	.L572
	mdbr	%f0,%f2
	j	.L572
	.section	.rodata
	.align	8
.L577:
.L579:
	.long	1071644672
	.long	0
.L578:
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
	larl	%r5,.L588
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L581
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L581
	ltr	%r4,%r4
	jl	.L587
	ld	%f0,.L589-.L588(%r5)
	ld	%f2,.L589-.L588+8(%r5)
	j	.L584
.L587:
	ld	%f0,.L590-.L588(%r5)
	ld	%f2,.L590-.L588+8(%r5)
	j	.L584
.L583:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L581
	mxbr	%f0,%f0
.L584:
	tml	%r4,1
	je	.L583
	mxbr	%f1,%f0
	j	.L583
.L581:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L588:
.L590:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L589:
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
	j	.L592
.L593:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L592:
	brct	%r4,.L593
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
	j	.L596
.L598:
	ahi	%r3,1
	ahi	%r5,1
	ahi	%r4,-1
.L596:
	brct	%r1,.L600
	j	.L597
.L600:
	ic	%r0,0(%r3)
	stc	%r0,0(%r5)
	tml	%r0,255
	jne	.L598
.L597:
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
.L603:
	brct	%r3,.L606
	br	%r14
.L606:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	j	.L603
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
.L610:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L615
	lr	%r1,%r3
.L613:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	je	.L616
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	jne	.L613
	br	%r14
.L616:
	ahi	%r2,1
	j	.L610
.L615:
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
	j	.L620
.L619:
	ahi	%r1,1
	lhi	%r4,0
	ic	%r4,4095(%r1,%r5)
	ltr	%r4,%r4
	ber	%r14
.L620:
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	jne	.L619
	lr	%r2,%r1
	j	.L619
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
	jhe	.L626
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
	lr	%r12,%r2
.L627:
	lr	%r3,%r9
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L626
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L630
	ahi	%r12,1
	j	.L627
.L630:
	lr	%r2,%r12
.L626:
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
	larl	%r5,.L648
	kdb	%f0,.L649-.L648(%r5)
	jl	.L647
.L634:
	kdb	%f0,.L649-.L648(%r5)
	jnh	.L637
	kdb	%f2,.L649-.L648(%r5)
	jl	.L636
.L637:
	br	%r14
.L647:
	kdb	%f2,.L649-.L648(%r5)
	jnh	.L634
.L636:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L648:
.L649:
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
	je	.L651
	lr	%r11,%r4
	clr	%r5,%r3
	jh	.L656
	lr	%r12,%r2
	lr	%r8,%r4
	ahi	%r8,1
	ahi	%r5,-1
	lr	%r9,%r5
	j	.L652
.L653:
	ahi	%r12,1
.L652:
	clr	%r12,%r10
	jh	.L659
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r11)
	cr	%r2,%r1
	jne	.L653
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L653
	lr	%r2,%r12
	j	.L651
.L659:
	lhi	%r2,0
.L651:
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
.L656:
	.cfi_restore_state
	lhi	%r2,0
	j	.L651
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
	larl	%r5,.L687
	kdb	%f0,.L688-.L687(%r5)
	jl	.L685
	lhi	%r3,0
.L665:
	kdb	%f0,.L689-.L687(%r5)
	jnhe	.L686
	lhi	%r1,0
	j	.L667
.L685:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L665
.L669:
	ahi	%r1,1
	mdb	%f0,.L690-.L687(%r5)
.L667:
	kdb	%f0,.L689-.L687(%r5)
	jhe	.L669
.L670:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L686:
	kdb	%f0,.L690-.L687(%r5)
	jnl	.L683
	cdb	%f0,.L688-.L687(%r5)
	jne	.L678
	lhi	%r1,0
	j	.L670
.L673:
	ahi	%r1,-1
	adbr	%f0,%f0
.L672:
	kdb	%f0,.L690-.L687(%r5)
	jl	.L673
	j	.L670
.L678:
	lhi	%r1,0
	j	.L672
.L683:
	lhi	%r1,0
	j	.L670
	.section	.rodata
	.align	8
.L687:
.L690:
	.long	1071644672
	.long	0
.L689:
	.long	1072693248
	.long	0
.L688:
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
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	lr	%r12,%r4
	lr	%r13,%r5
	lr	%r0,%r2
	lr	%r1,%r3
	lhi	%r2,0
	lhi	%r3,0
	j	.L692
.L693:
	sldl	%r12,1
	srdl	%r0,1
.L692:
	lr	%r4,%r0
	or	%r4,%r1
	je	.L697
	tml	%r1,1
	je	.L693
	alr	%r3,%r13
	alcr	%r2,%r12
	j	.L693
.L697:
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
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
	j	.L700
.L704:
	sll	%r3,1
	sll	%r1,1
.L700:
	clr	%r3,%r2
	jhe	.L712
	brct	%r5,.L710
	j	.L713
.L710:
	ltr	%r3,%r3
	jhe	.L704
	lhi	%r5,0
	j	.L702
.L712:
	lhi	%r5,0
	j	.L702
.L713:
	lhi	%r5,0
	j	.L702
.L705:
	srl	%r1,1
	srl	%r3,1
.L702:
	ltr	%r1,%r1
	je	.L714
	clr	%r2,%r3
	jl	.L705
	sr	%r2,%r3
	or	%r5,%r1
	j	.L705
.L714:
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
	je	.L718
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
.L718:
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
	ltr	%r2,%r2
	jl	.L734
.L725:
	lr	%r1,%r2
	or	%r1,%r3
	je	.L729
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
.L734:
	lhi	%r1,-1
	xr	%r2,%r1
	xr	%r3,%r1
	j	.L725
.L729:
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
	lr	%r1,%r2
	lhi	%r2,0
	j	.L737
.L738:
	srl	%r1,1
	sll	%r3,1
.L737:
	ltr	%r1,%r1
	ber	%r14
	tml	%r1,1
	je	.L738
	ar	%r2,%r3
	j	.L738
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
	jl	.L743
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L743
	lr	%r1,%r4
	ahi	%r1,1
	j	.L744
.L748:
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L747:
	brct	%r1,.L748
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L750:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L744:
	ahi	%r4,-1
	brct	%r1,.L750
	br	%r14
.L743:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L762
	j	.L763
.L762:
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
.L746:
	l	%r12,0(%r1,%r3)
	l	%r13,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	st	%r13,4(%r1,%r2)
	ahi	%r1,8
	brct	%r0,.L746
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L752
	ltr	%r4,%r4
	jne	.L747
.L752:
	lhi	%r1,1
	j	.L747
.L763:
	.cfi_restore 12
	.cfi_restore 13
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L757
	ltr	%r4,%r4
	jne	.L758
.L757:
	lhi	%r1,1
	j	.L758
.L759:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L758:
	brct	%r1,.L759
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
	jl	.L766
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L766
	lr	%r1,%r4
	ahi	%r1,1
	j	.L767
.L766:
	lhi	%r1,0
	ahi	%r5,1
	j	.L768
.L769:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	ahi	%r1,2
.L768:
	brct	%r5,.L769
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L771:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L767:
	ahi	%r4,-1
	brct	%r1,.L771
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
	jl	.L775
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L775
	lr	%r1,%r4
	ahi	%r1,1
	j	.L776
.L780:
	.cfi_offset 12, -48
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L779:
	brct	%r1,.L780
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L782:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L776:
	ahi	%r4,-1
	brct	%r1,.L782
	br	%r14
.L775:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L794
	j	.L795
.L794:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L778:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	brct	%r0,.L778
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L784
	ltr	%r4,%r4
	jne	.L779
.L784:
	lhi	%r1,1
	j	.L779
.L795:
	.cfi_restore 12
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L789
	ltr	%r4,%r4
	jne	.L790
.L789:
	lhi	%r1,1
	j	.L790
.L791:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L790:
	brct	%r1,.L791
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
	larl	%r5,.L802
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L803-.L802(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L802:
.L803:
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
	larl	%r5,.L808
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L807
.L805:
	ledbr	%f0,%f0
	br	%r14
.L807:
	adb	%f0,.L809-.L808(%r5)
	j	.L805
	.section	.rodata
	.align	8
.L808:
.L809:
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
.L819:
	brct	%r1,.L821
	br	%r14
.L821:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L819
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
.L825:
	brct	%r1,.L827
	br	%r14
.L827:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L825
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	larl	%r5,.L838
	keb	%f0,.L839-.L838(%r5)
	jhe	.L837
	cfebr	%r2,5,%f0
	br	%r14
.L837:
	seb	%f0,.L839-.L838(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L840-.L838(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L838:
.L839:
	.long	1191182336
.L840:
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
	j	.L842
.L843:
	ahi	%r3,1
.L842:
	brct	%r1,.L844
	j	.L845
.L844:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L843
	ahi	%r2,1
	j	.L843
.L845:
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
	j	.L848
.L849:
	ahi	%r3,1
.L848:
	brct	%r1,.L850
	br	%r14
.L850:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L849
	ahi	%r2,1
	j	.L849
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
	j	.L854
.L855:
	srl	%r1,1
	sll	%r3,1
.L854:
	ltr	%r1,%r1
	ber	%r14
	tml	%r1,1
	je	.L855
	ar	%r2,%r3
	j	.L855
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
	je	.L864
	lhi	%r2,0
	j	.L861
.L862:
	sll	%r1,1
	srl	%r3,1
.L861:
	ltr	%r3,%r3
	ber	%r14
	tml	%r3,1
	je	.L862
	ar	%r2,%r1
	j	.L862
.L864:
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
	j	.L868
.L872:
	sll	%r3,1
	sll	%r1,1
.L868:
	clr	%r3,%r2
	jhe	.L880
	brct	%r5,.L878
	j	.L881
.L878:
	ltr	%r3,%r3
	jhe	.L872
	lhi	%r5,0
	j	.L870
.L880:
	lhi	%r5,0
	j	.L870
.L881:
	lhi	%r5,0
	j	.L870
.L873:
	srl	%r1,1
	srl	%r3,1
.L870:
	ltr	%r1,%r1
	je	.L882
	clr	%r2,%r3
	jl	.L873
	sr	%r2,%r3
	or	%r5,%r1
	j	.L873
.L882:
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
	jl	.L886
	jh	.L887
	lhi	%r2,0
	br	%r14
.L886:
	lhi	%r2,-1
	br	%r14
.L887:
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
	jl	.L891
	jh	.L892
	lhi	%r2,0
	br	%r14
.L891:
	lhi	%r2,-1
	br	%r14
.L892:
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
	jl	.L908
	lhi	%r0,0
.L900:
	lhi	%r4,33
	lhi	%r5,0
	j	.L901
.L908:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L900
.L902:
	sll	%r2,1
	sra	%r3,1
.L901:
	ltr	%r3,%r3
	je	.L903
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r4,%r1
	tml	%r1,255
	je	.L903
	tml	%r3,1
	je	.L902
	ar	%r5,%r2
	j	.L902
.L903:
	ltr	%r0,%r0
	je	.L907
	lcr	%r2,%r5
	br	%r14
.L907:
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
	jl	.L916
	lhi	%r12,0
.L911:
	ltr	%r3,%r3
	jl	.L917
.L912:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L913
	lcr	%r2,%r2
.L913:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L916:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L911
.L917:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L912
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
	jl	.L925
	lhi	%r12,0
.L920:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L922
	lcr	%r2,%r2
.L922:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L925:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L920
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
	larl	%r13,.L945
	lhi	%r1,1
	lhi	%r5,17
.L928:
	clr	%r3,%r2
	jhe	.L941
	brct	%r5,.L938
	j	.L942
.L938:
	tml	%r3,32768
	jne	.L943
	sll	%r3,1
	n	%r3,.L946-.L945(%r13)
	sll	%r1,1
	j	.L928
.L941:
	lhi	%r5,0
	j	.L930
.L942:
	lhi	%r5,0
	j	.L930
.L943:
	lhi	%r5,0
	j	.L930
.L933:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
.L930:
	tml	%r1,65535
	je	.L944
	clr	%r2,%r3
	jl	.L933
	sr	%r2,%r3
	n	%r2,.L946-.L945(%r13)
	or	%r5,%r1
	j	.L933
.L944:
	ltr	%r4,%r4
	jne	.L935
	lr	%r2,%r5
.L935:
	n	%r2,.L946-.L945(%r13)
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L945:
.L946:
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
	j	.L948
.L952:
	sll	%r3,1
	sll	%r1,1
.L948:
	clr	%r3,%r2
	jhe	.L960
	brct	%r5,.L958
	j	.L961
.L958:
	ltr	%r3,%r3
	jhe	.L952
	lhi	%r5,0
	j	.L950
.L960:
	lhi	%r5,0
	j	.L950
.L961:
	lhi	%r5,0
	j	.L950
.L953:
	srl	%r1,1
	srl	%r3,1
.L950:
	ltr	%r1,%r1
	je	.L962
	clr	%r2,%r3
	jl	.L953
	sr	%r2,%r3
	or	%r5,%r1
	j	.L953
.L962:
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
	je	.L965
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
.L966:
	lr	%r3,%r1
	br	%r14
.L965:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	sll	%r2,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	or	%r2,%r3
	j	.L966
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
	je	.L971
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L972:
	lr	%r2,%r1
	br	%r14
.L971:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L972
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
	larl	%r13,.L978
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r6,%r2
	lr	%r7,%r3
	srdl	%r6,56
	srdl	%r2,40
	l	%r1,.L979-.L978(%r13)
	nr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,24
	l	%r10,.L980-.L978(%r13)
	nr	%r10,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,8
	l	%r0,.L981-.L978(%r13)
	nr	%r0,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,8
	lhi	%r11,255
	nr	%r11,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,24
	l	%r9,.L979-.L978(%r13)
	nr	%r9,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,40
	n	%r2,.L980-.L978(%r13)
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
.L978:
.L981:
	.long	-16777216
.L980:
	.long	16711680
.L979:
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
	larl	%r5,.L984
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L985-.L984(%r5)
	sll	%r2,8
	n	%r2,.L986-.L984(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L984:
.L986:
	.long	16711680
.L985:
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
	larl	%r13,.L997
	lr	%r1,%r2
	cl	%r2,.L998-.L997(%r13)
	jh	.L992
	lhi	%r3,16
.L988:
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	tml	%r1,65280
	jne	.L993
	lhi	%r4,8
.L989:
	lhi	%r2,8
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,240
	jne	.L994
	lhi	%r4,4
.L990:
	lhi	%r2,4
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,12
	jne	.L995
	lhi	%r2,2
.L991:
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
.L992:
	.cfi_restore_state
	lhi	%r3,0
	j	.L988
.L993:
	lhi	%r4,0
	j	.L989
.L994:
	lhi	%r4,0
	j	.L990
.L995:
	lhi	%r2,0
	j	.L991
	.section	.rodata
	.align	8
.L997:
.L998:
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
	jl	.L1001
	jh	.L1002
	clr	%r3,%r5
	jl	.L1003
	jh	.L1004
	lhi	%r2,1
	br	%r14
.L1001:
	lhi	%r2,0
	br	%r14
.L1002:
	lhi	%r2,2
	br	%r14
.L1003:
	lhi	%r2,0
	br	%r14
.L1004:
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
	jne	.L1014
	lhi	%r3,16
.L1010:
	srl	%r1,0(%r3)
	tml	%r1,255
	jne	.L1015
	lhi	%r2,8
.L1011:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,15
	jne	.L1016
	lhi	%r2,4
.L1012:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,3
	jne	.L1017
	lhi	%r2,2
.L1013:
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
.L1014:
	.cfi_restore_state
	lhi	%r3,0
	j	.L1010
.L1015:
	lhi	%r2,0
	j	.L1011
.L1016:
	lhi	%r2,0
	j	.L1012
.L1017:
	lhi	%r2,0
	j	.L1013
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
	je	.L1021
	lhi	%r1,0
	srl	%r2,4064(%r4)
	lr	%r3,%r2
.L1022:
	lr	%r2,%r1
	br	%r14
.L1021:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1022
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
	larl	%r13,.L1028
	lr	%r4,%r3
	l	%r5,.L1029-.L1028(%r13)
	nr	%r5,%r2
	l	%r0,.L1029-.L1028(%r13)
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
	n	%r1,.L1029-.L1028(%r13)
	n	%r3,.L1029-.L1028(%r13)
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
.L1028:
.L1029:
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
	je	.L1034
	ahi	%r2,-1
.L1034:
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
	larl	%r13,.L1042
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r2,1
	l	%r12,.L1043-.L1042(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L1043-.L1042(%r13)
	nr	%r12,%r3
	lr	%r2,%r0
	lr	%r3,%r1
	slr	%r3,%r12
	slbr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,2
	l	%r12,.L1044-.L1042(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L1044-.L1042(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	l	%r12,.L1044-.L1042(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L1044-.L1042(%r13)
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
	l	%r1,.L1045-.L1042(%r13)
	nr	%r1,%r4
	lr	%r2,%r1
	l	%r1,.L1045-.L1042(%r13)
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
.L1042:
.L1045:
	.long	252645135
.L1044:
	.long	858993459
.L1043:
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
	larl	%r5,.L1048
	lr	%r1,%r2
	srl	%r2,1
	n	%r2,.L1049-.L1048(%r5)
	sr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L1050-.L1048(%r5)
	n	%r1,.L1050-.L1048(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L1051-.L1048(%r5)
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
.L1048:
.L1051:
	.long	252645135
.L1050:
	.long	858993459
.L1049:
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
	larl	%r5,.L1059
	lr	%r3,%r2
	srl	%r3,31
	ld	%f2,.L1060-.L1059(%r5)
	j	.L1055
.L1053:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1054
	mdbr	%f0,%f0
.L1055:
	tml	%r2,1
	je	.L1053
	mdbr	%f2,%f0
	j	.L1053
.L1054:
	ltr	%r3,%r3
	je	.L1057
	ld	%f0,.L1060-.L1059(%r5)
	ddbr	%f0,%f2
	br	%r14
.L1057:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1059:
.L1060:
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
	larl	%r5,.L1068
	lr	%r3,%r2
	srl	%r3,31
	le	%f2,.L1069-.L1068(%r5)
	j	.L1064
.L1062:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1063
	meebr	%f0,%f0
.L1064:
	tml	%r2,1
	je	.L1062
	meebr	%f2,%f0
	j	.L1062
.L1063:
	ltr	%r3,%r3
	je	.L1066
	le	%f0,.L1069-.L1068(%r5)
	debr	%f0,%f2
	br	%r14
.L1066:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1068:
.L1069:
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
	jl	.L1072
	jh	.L1073
	clr	%r3,%r5
	jl	.L1074
	jh	.L1075
	lhi	%r2,1
	br	%r14
.L1072:
	lhi	%r2,0
	br	%r14
.L1073:
	lhi	%r2,2
	br	%r14
.L1074:
	lhi	%r2,0
	br	%r14
.L1075:
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
