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
	ld	%f0,0(%r3)
	ld	%f2,8(%r3)
	ld	%f1,0(%r4)
	ld	%f3,8(%r4)
	cxbr	%f0,%f0
	jo	.L220
	cxbr	%f1,%f1
	jo	.L221
	tcxb	%f0,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f1,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L212
	tcxb	%f0,1365
	je	.L213
	lxr	%f0,%f1
.L213:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L220:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L221:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L212:
	kxbr	%f0,%f1
	jnl	.L214
	lxr	%f0,%f1
.L214:
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
	jo	.L227
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L225
	tcdb	%f0,1365
	bner	%r14
	ldr	%f0,%f2
	br	%r14
.L225:
	kdbr	%f0,%f2
	blr	%r14
	ldr	%f0,%f2
	br	%r14
.L227:
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
	jo	.L240
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L238
	tceb	%f0,1365
	bner	%r14
	ler	%f0,%f2
	br	%r14
.L238:
	kebr	%f0,%f2
	blr	%r14
	ler	%f0,%f2
	br	%r14
.L240:
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
	jo	.L261
	cxbr	%f0,%f0
	jo	.L262
	tcxb	%f1,1365
	ipm	%r3
	srl	%r3,28
	tcxb	%f0,1365
	ipm	%r1
	srl	%r1,28
	cr	%r3,%r1
	je	.L253
	tcxb	%f1,1365
	je	.L254
	lxr	%f0,%f1
.L254:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L261:
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	br	%r14
.L262:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
.L253:
	kxbr	%f1,%f0
	jnl	.L255
	lxr	%f0,%f1
.L255:
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
	j	.L265
.L266:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
.L265:
	ltr	%r2,%r2
	jne	.L266
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
	je	.L276
	l	%r1,0(%r3)
	st	%r1,0(%r2)
	st	%r3,4(%r2)
	st	%r2,0(%r3)
	icm	%r1,15,0(%r2)
	ber	%r14
	l	%r1,0(%r2)
	st	%r2,4(%r1)
	br	%r14
.L276:
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
	je	.L279
	l	%r1,0(%r2)
	l	%r3,4(%r2)
	st	%r3,4(%r1)
.L279:
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
	j	.L283
.L284:
	ahi	%r10,1
.L283:
	brct	%r12,.L286
	j	.L288
.L286:
	lr	%r3,%r11
	lr	%r2,%r8
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L284
	msr	%r10,%r9
	l	%r2,100(%r15)
	ar	%r2,%r10
	j	.L285
.L288:
	lr	%r1,%r13
	ahi	%r1,1
	st	%r1,0(%r7)
	lr	%r2,%r13
	msr	%r2,%r9
	lr	%r4,%r9
	lr	%r3,%r8
	a	%r2,100(%r15)
	brasl	%r14,memcpy
.L285:
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
	j	.L291
.L292:
	ahi	%r10,1
.L291:
	brct	%r12,.L294
	j	.L296
.L294:
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ar	%r11,%r9
	ltr	%r2,%r2
	jne	.L292
	msr	%r10,%r9
	lr	%r2,%r8
	ar	%r2,%r10
	j	.L293
.L296:
	lhi	%r2,0
.L293:
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
	j	.L301
.L302:
	ahi	%r12,1
.L301:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L302
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L308
	chi	%r1,45
	jne	.L309
	lhi	%r5,1
.L303:
	ahi	%r12,1
.L304:
	lhi	%r4,0
	j	.L305
.L308:
	lhi	%r5,0
	j	.L303
.L309:
	lhi	%r5,0
	j	.L304
.L306:
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
.L305:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L306
	ltr	%r5,%r5
	jne	.L310
	lcr	%r2,%r4
.L307:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L310:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L307
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
	j	.L314
.L315:
	ahi	%r12,1
.L314:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L315
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L321
	chi	%r1,45
	jne	.L322
	lhi	%r5,1
.L316:
	ahi	%r12,1
.L317:
	lhi	%r4,0
	j	.L318
.L321:
	lhi	%r5,0
	j	.L316
.L322:
	lhi	%r5,0
	j	.L317
.L319:
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
.L318:
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L319
	ltr	%r5,%r5
	jne	.L323
	lcr	%r2,%r4
.L320:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L323:
	.cfi_restore_state
	lr	%r2,%r4
	j	.L320
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
	j	.L327
.L328:
	ahi	%r12,1
.L327:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L328
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L334
	chi	%r1,45
	jne	.L335
	lhi	%r0,1
.L329:
	ahi	%r12,1
.L330:
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
	j	.L331
.L334:
	lhi	%r0,0
	j	.L329
.L335:
	lhi	%r0,0
	j	.L330
.L332:
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
.L331:
	lhi	%r3,0
	ic	%r3,0(%r1)
	ahi	%r3,-48
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L332
	ltr	%r0,%r0
	jne	.L336
	lcr	%r2,%r12
	lcr	%r3,%r13
	je	.L333
	ahi	%r2,-1
	j	.L333
.L336:
	lr	%r2,%r12
	lr	%r3,%r13
.L333:
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
	j	.L341
.L349:
	srl	%r11,1
.L341:
	ltr	%r11,%r11
	je	.L348
	lr	%r12,%r11
	srl	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L349
	ltr	%r2,%r2
	jle	.L346
	ar	%r12,%r10
	lr	%r9,%r12
	lr	%r1,%r11
	srl	%r1,1
	ahi	%r11,-1
	sr	%r11,%r1
	j	.L341
.L348:
	lhi	%r2,0
.L344:
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
.L346:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L344
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
	j	.L352
.L354:
	sra	%r11,1
.L352:
	ltr	%r11,%r11
	je	.L358
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r9
	ar	%r12,%r10
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L356
	ltr	%r2,%r2
	jle	.L354
	ar	%r12,%r9
	lr	%r10,%r12
	ahi	%r11,-1
	j	.L354
.L358:
	lhi	%r2,0
.L353:
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
.L356:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L353
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
	je	.L364
	ahi	%r2,-1
.L364:
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
	je	.L377
	ahi	%r2,-1
.L377:
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
	j	.L385
.L387:
	ahi	%r2,4
.L385:
	icm	%r1,15,0(%r2)
	je	.L386
	c	%r3,0(%r2)
	jne	.L387
.L386:
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
	j	.L392
.L394:
	ahi	%r2,4
	ahi	%r3,4
.L392:
	clc	0(4,%r3),0(%r2)
	jne	.L393
	icm	%r1,15,0(%r2)
	je	.L393
	icm	%r1,15,0(%r3)
	jne	.L394
.L393:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L397
	lhi	%r1,1
	jl	.L396
	lhi	%r1,0
.L396:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L397:
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
.L400:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	la	%r5,0(%r1,%r4)
	icm	%r5,15,0(%r5)
	jne	.L400
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
	j	.L405
.L406:
	ahi	%r2,4
.L405:
	icm	%r1,15,0(%r2)
	jne	.L406
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
.L409:
	brct	%r1,.L416
	j	.L410
.L416:
	clc	0(4,%r3),0(%r2)
	jne	.L410
	icm	%r5,15,0(%r2)
	je	.L410
	icm	%r5,15,0(%r3)
	je	.L410
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	j	.L409
.L410:
	ltr	%r4,%r4
	je	.L414
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L415
	lhi	%r1,1
	jl	.L413
	lhi	%r1,0
.L413:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L414:
	lhi	%r2,0
	br	%r14
.L415:
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
	j	.L419
.L421:
	ahi	%r4,-1
	ahi	%r2,4
.L419:
	brct	%r1,.L424
	j	.L420
.L424:
	c	%r3,0(%r2)
	jne	.L421
.L420:
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
	j	.L427
.L429:
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
.L427:
	brct	%r1,.L434
	j	.L428
.L434:
	clc	0(4,%r3),0(%r2)
	je	.L429
.L428:
	ltr	%r4,%r4
	je	.L432
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L433
	lhi	%r1,1
	jl	.L431
	lhi	%r1,0
.L431:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L432:
	lhi	%r2,0
	br	%r14
.L433:
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
	j	.L437
.L438:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L437:
	ahi	%r4,-1
	brct	%r5,.L438
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
	jhe	.L446
	ahi	%r4,-1
	sll	%r4,2
	lr	%r1,%r4
	ahi	%r1,4
	srl	%r1,2
	ahi	%r1,1
	j	.L443
.L444:
	l	%r5,0(%r4,%r3)
	st	%r5,0(%r4,%r2)
	ahi	%r4,-4
.L443:
	brct	%r1,.L444
	br	%r14
.L445:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r1,4
.L442:
	ahi	%r4,-1
	brct	%r5,.L445
	br	%r14
.L446:
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
	j	.L442
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
	j	.L449
.L450:
	st	%r3,0(%r5)
	ahi	%r5,4
.L449:
	ahi	%r4,-1
	brct	%r1,.L450
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
	jhe	.L453
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
	ahi	%r1,1
	j	.L454
.L455:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
.L454:
	brct	%r1,.L455
	br	%r14
.L453:
	cr	%r2,%r3
	ber	%r14
	lhi	%r1,0
	ahi	%r4,1
	j	.L457
.L458:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
.L457:
	brct	%r4,.L458
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
	larl	%r5,.L478
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L479-.L478(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L478:
.L479:
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
	larl	%r5,.L482
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
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
	larl	%r5,.L490
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L491-.L490(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L490:
.L491:
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
	larl	%r5,.L494
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L495-.L494(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L496-.L494(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L494:
.L496:
	.long	65280
.L495:
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
	larl	%r13,.L499
	l	%r1,.L500-.L499(%r13)
	nr	%r1,%r2
	lr	%r4,%r1
	lhi	%r5,0
	srdl	%r4,56
	l	%r12,.L501-.L499(%r13)
	nr	%r12,%r2
	lr	%r0,%r12
	lhi	%r1,0
	srdl	%r0,40
	lr	%r12,%r0
	or	%r12,%r4
	or	%r1,%r5
	lr	%r11,%r1
	l	%r1,.L502-.L499(%r13)
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
	l	%r1,.L500-.L499(%r13)
	nr	%r1,%r3
	lr	%r5,%r1
	sldl	%r4,8
	or	%r12,%r4
	lr	%r0,%r12
	lr	%r12,%r11
	or	%r12,%r5
	lr	%r1,%r12
	lhi	%r4,0
	l	%r12,.L501-.L499(%r13)
	nr	%r12,%r3
	lr	%r5,%r12
	sldl	%r4,24
	lr	%r12,%r0
	or	%r12,%r4
	lr	%r10,%r12
	or	%r1,%r5
	lr	%r11,%r1
	lhi	%r0,0
	l	%r4,.L502-.L499(%r13)
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
.L499:
.L502:
	.long	65280
.L501:
	.long	16711680
.L500:
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
.L504:
	brct	%r3,.L507
	j	.L508
.L507:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L509
	ahi	%r1,1
	j	.L504
.L509:
	ahi	%r1,1
	lr	%r2,%r1
	br	%r14
.L508:
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
	je	.L515
	lhi	%r2,1
	j	.L513
.L517:
	sra	%r1,1
	ahi	%r2,1
.L513:
	tml	%r1,1
	je	.L517
	br	%r14
.L515:
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
	larl	%r5,.L527
	keb	%f0,.L528-.L527(%r5)
	jl	.L522
	keb	%f0,.L529-.L527(%r5)
	jnh	.L525
	lhi	%r2,1
	br	%r14
.L522:
	lhi	%r2,1
	br	%r14
.L525:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L527:
.L529:
	.long	2139095039
.L528:
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
	larl	%r5,.L538
	kdb	%f0,.L539-.L538(%r5)
	jl	.L533
	kdb	%f0,.L540-.L538(%r5)
	jnh	.L536
	lhi	%r2,1
	br	%r14
.L533:
	lhi	%r2,1
	br	%r14
.L536:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L538:
.L540:
	.long	2146435071
	.long	-1
.L539:
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
	larl	%r5,.L549
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L550-.L549(%r5)
	ld	%f3,.L550-.L549+8(%r5)
	kxbr	%f0,%f1
	jl	.L544
	ld	%f1,.L551-.L549(%r5)
	ld	%f3,.L551-.L549+8(%r5)
	kxbr	%f0,%f1
	jnh	.L547
	lhi	%r2,1
	br	%r14
.L544:
	lhi	%r2,1
	br	%r14
.L547:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L549:
.L551:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L550:
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
	larl	%r5,.L562
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L561
	le	%f2,.L563-.L562(%r5)
	j	.L558
.L561:
	le	%f2,.L564-.L562(%r5)
	j	.L558
.L557:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L558:
	tml	%r2,1
	je	.L557
	meebr	%f0,%f2
	j	.L557
	.section	.rodata
	.align	8
.L562:
.L564:
	.long	1056964608
.L563:
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
	larl	%r5,.L573
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L572
	ld	%f2,.L574-.L573(%r5)
	j	.L569
.L572:
	ld	%f2,.L575-.L573(%r5)
	j	.L569
.L568:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L569:
	tml	%r2,1
	je	.L568
	mdbr	%f0,%f2
	j	.L568
	.section	.rodata
	.align	8
.L573:
.L575:
	.long	1071644672
	.long	0
.L574:
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
	larl	%r5,.L584
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L577
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L577
	ltr	%r4,%r4
	jl	.L583
	ld	%f0,.L585-.L584(%r5)
	ld	%f2,.L585-.L584+8(%r5)
	j	.L580
.L583:
	ld	%f0,.L586-.L584(%r5)
	ld	%f2,.L586-.L584+8(%r5)
	j	.L580
.L579:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L577
	mxbr	%f0,%f0
.L580:
	tml	%r4,1
	je	.L579
	mxbr	%f1,%f0
	j	.L579
.L577:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L584:
.L586:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L585:
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
	j	.L588
.L589:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
.L588:
	brct	%r4,.L589
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
	j	.L592
.L594:
	ahi	%r3,1
	ahi	%r5,1
	ahi	%r4,-1
.L592:
	brct	%r1,.L596
	j	.L593
.L596:
	ic	%r0,0(%r3)
	stc	%r0,0(%r5)
	tml	%r0,255
	jne	.L594
.L593:
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
.L599:
	brct	%r3,.L602
	br	%r14
.L602:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	j	.L599
	.cfi_endproc
.LFE92:
	.size	strnlen, .-strnlen
	.align	8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
.LFB93:
	.cfi_startproc
.L606:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L611
	lr	%r1,%r3
.L609:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	je	.L612
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r2)
	jne	.L609
	br	%r14
.L612:
	ahi	%r2,1
	j	.L606
.L611:
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
	j	.L616
.L615:
	ahi	%r1,1
	lhi	%r4,0
	ic	%r4,4095(%r1,%r5)
	ltr	%r4,%r4
	ber	%r14
.L616:
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	jne	.L615
	lr	%r2,%r1
	j	.L615
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
	jhe	.L622
	lr	%r11,%r3
	lhi	%r9,0
	ic	%r9,0(%r3)
	lr	%r12,%r2
.L623:
	lr	%r3,%r9
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L622
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L626
	ahi	%r12,1
	j	.L623
.L626:
	lr	%r2,%r12
.L622:
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
	larl	%r5,.L644
	kdb	%f0,.L645-.L644(%r5)
	jl	.L643
.L630:
	kdb	%f0,.L645-.L644(%r5)
	jnh	.L633
	kdb	%f2,.L645-.L644(%r5)
	jl	.L632
.L633:
	br	%r14
.L643:
	kdb	%f2,.L645-.L644(%r5)
	jnh	.L630
.L632:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L644:
.L645:
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
	je	.L647
	lr	%r11,%r4
	clr	%r5,%r3
	jh	.L652
	lr	%r12,%r2
	lr	%r8,%r4
	ahi	%r8,1
	ahi	%r5,-1
	lr	%r9,%r5
	j	.L648
.L649:
	ahi	%r12,1
.L648:
	clr	%r12,%r10
	jh	.L655
	lhi	%r2,0
	ic	%r2,0(%r12)
	lhi	%r1,0
	ic	%r1,0(%r11)
	cr	%r2,%r1
	jne	.L649
	lr	%r4,%r9
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L649
	lr	%r2,%r12
	j	.L647
.L655:
	lhi	%r2,0
.L647:
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
.L652:
	.cfi_restore_state
	lhi	%r2,0
	j	.L647
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
	larl	%r5,.L683
	kdb	%f0,.L684-.L683(%r5)
	jl	.L681
	lhi	%r3,0
.L661:
	kdb	%f0,.L685-.L683(%r5)
	jnhe	.L682
	lhi	%r1,0
	j	.L663
.L681:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L661
.L665:
	ahi	%r1,1
	mdb	%f0,.L686-.L683(%r5)
.L663:
	kdb	%f0,.L685-.L683(%r5)
	jhe	.L665
.L666:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L682:
	kdb	%f0,.L686-.L683(%r5)
	jnl	.L679
	cdb	%f0,.L684-.L683(%r5)
	jne	.L674
	lhi	%r1,0
	j	.L666
.L669:
	ahi	%r1,-1
	adbr	%f0,%f0
.L668:
	kdb	%f0,.L686-.L683(%r5)
	jl	.L669
	j	.L666
.L674:
	lhi	%r1,0
	j	.L668
.L679:
	lhi	%r1,0
	j	.L666
	.section	.rodata
	.align	8
.L683:
.L686:
	.long	1071644672
	.long	0
.L685:
	.long	1072693248
	.long	0
.L684:
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
	j	.L688
.L689:
	sldl	%r4,1
	srdl	%r0,1
.L688:
	lr	%r11,%r0
	or	%r11,%r1
	je	.L693
	lhi	%r12,0
	lhi	%r11,1
	nr	%r11,%r1
	lr	%r13,%r11
	lr	%r11,%r12
	or	%r11,%r13
	je	.L689
	alr	%r3,%r5
	alcr	%r2,%r4
	j	.L689
.L693:
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
	j	.L696
.L700:
	sll	%r3,1
	sll	%r1,1
.L696:
	clr	%r3,%r2
	jhe	.L708
	brct	%r5,.L706
	j	.L709
.L706:
	ltr	%r3,%r3
	jhe	.L700
	lhi	%r5,0
	j	.L698
.L708:
	lhi	%r5,0
	j	.L698
.L709:
	lhi	%r5,0
	j	.L698
.L701:
	srl	%r1,1
	srl	%r3,1
.L698:
	ltr	%r1,%r1
	je	.L710
	clr	%r2,%r3
	jl	.L701
	sr	%r2,%r3
	or	%r5,%r1
	j	.L701
.L710:
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
	je	.L714
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
.L714:
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
	jl	.L730
.L721:
	lr	%r1,%r2
	or	%r1,%r3
	je	.L725
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
.L730:
	lhi	%r1,-1
	xr	%r1,%r2
	lr	%r4,%r1
	lhi	%r1,-1
	xr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r1
	j	.L721
.L725:
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
	j	.L733
.L734:
	srl	%r1,1
	sll	%r3,1
.L733:
	ltr	%r1,%r1
	ber	%r14
	tml	%r1,1
	je	.L734
	ar	%r2,%r3
	j	.L734
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
	jl	.L739
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L739
	lr	%r1,%r4
	ahi	%r1,1
	j	.L740
.L744:
	.cfi_offset 12, -48
	.cfi_offset 13, -44
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L743:
	brct	%r1,.L744
	lm	%r12,%r13,48(%r15)
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L746:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L740:
	ahi	%r4,-1
	brct	%r1,.L746
	br	%r14
.L739:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L758
	j	.L759
.L758:
	stm	%r12,%r13,48(%r15)
	.cfi_offset 12, -48
	.cfi_offset 13, -44
.L742:
	l	%r12,0(%r1,%r3)
	l	%r13,4(%r1,%r3)
	st	%r12,0(%r1,%r2)
	st	%r13,4(%r1,%r2)
	ahi	%r1,8
	brct	%r0,.L742
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L748
	ltr	%r4,%r4
	jne	.L743
.L748:
	lhi	%r1,1
	j	.L743
.L759:
	.cfi_restore 12
	.cfi_restore 13
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L753
	ltr	%r4,%r4
	jne	.L754
.L753:
	lhi	%r1,1
	j	.L754
.L755:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L754:
	brct	%r1,.L755
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
	jl	.L762
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L762
	lr	%r1,%r4
	ahi	%r1,1
	j	.L763
.L762:
	lhi	%r1,0
	ahi	%r5,1
	j	.L764
.L765:
	lh	%r0,0(%r1,%r3)
	sth	%r0,0(%r1,%r2)
	ahi	%r1,2
.L764:
	brct	%r5,.L765
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L767:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L763:
	ahi	%r4,-1
	brct	%r1,.L767
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
	jl	.L771
	lr	%r1,%r3
	ar	%r1,%r4
	clr	%r1,%r2
	jl	.L771
	lr	%r1,%r4
	ahi	%r1,1
	j	.L772
.L776:
	.cfi_offset 12, -48
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L775:
	brct	%r1,.L776
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L778:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
.L772:
	ahi	%r4,-1
	brct	%r1,.L778
	br	%r14
.L771:
	lhi	%r1,0
	ahi	%r0,1
	brct	%r0,.L790
	j	.L791
.L790:
	st	%r12,48(%r15)
	.cfi_offset 12, -48
.L774:
	l	%r12,0(%r1,%r3)
	st	%r12,0(%r1,%r2)
	ahi	%r1,4
	brct	%r0,.L774
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L780
	ltr	%r4,%r4
	jne	.L775
.L780:
	lhi	%r1,1
	j	.L775
.L791:
	.cfi_restore 12
	lr	%r1,%r4
	sr	%r1,%r5
	ahi	%r1,1
	clr	%r5,%r4
	jh	.L785
	ltr	%r4,%r4
	jne	.L786
.L785:
	lhi	%r1,1
	j	.L786
.L787:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
.L786:
	brct	%r1,.L787
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
	larl	%r5,.L798
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L799-.L798(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L798:
.L799:
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
	larl	%r5,.L804
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L803
.L801:
	ledbr	%f0,%f0
	br	%r14
.L803:
	adb	%f0,.L805-.L804(%r5)
	j	.L801
	.section	.rodata
	.align	8
.L804:
.L805:
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
.L815:
	brct	%r1,.L817
	br	%r14
.L817:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L815
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
.L821:
	brct	%r1,.L823
	br	%r14
.L823:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	j	.L821
	.cfi_endproc
.LFE115:
	.size	__ctzhi2, .-__ctzhi2
	.align	8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
.LFB116:
	.cfi_startproc
	larl	%r5,.L834
	keb	%f0,.L835-.L834(%r5)
	jhe	.L833
	cfebr	%r2,5,%f0
	br	%r14
.L833:
	seb	%f0,.L835-.L834(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L836-.L834(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L834:
.L835:
	.long	1191182336
.L836:
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
	j	.L838
.L839:
	ahi	%r3,1
.L838:
	brct	%r1,.L840
	j	.L841
.L840:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L839
	ahi	%r2,1
	j	.L839
.L841:
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
	j	.L844
.L845:
	ahi	%r3,1
.L844:
	brct	%r1,.L846
	br	%r14
.L846:
	lr	%r4,%r5
	sra	%r4,0(%r3)
	tml	%r4,1
	je	.L845
	ahi	%r2,1
	j	.L845
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
	j	.L850
.L851:
	srl	%r1,1
	sll	%r3,1
.L850:
	ltr	%r1,%r1
	ber	%r14
	tml	%r1,1
	je	.L851
	ar	%r2,%r3
	j	.L851
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
	je	.L860
	lhi	%r2,0
	j	.L857
.L858:
	sll	%r1,1
	srl	%r3,1
.L857:
	ltr	%r3,%r3
	ber	%r14
	tml	%r3,1
	je	.L858
	ar	%r2,%r1
	j	.L858
.L860:
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
	j	.L864
.L868:
	sll	%r3,1
	sll	%r1,1
.L864:
	clr	%r3,%r2
	jhe	.L876
	brct	%r5,.L874
	j	.L877
.L874:
	ltr	%r3,%r3
	jhe	.L868
	lhi	%r5,0
	j	.L866
.L876:
	lhi	%r5,0
	j	.L866
.L877:
	lhi	%r5,0
	j	.L866
.L869:
	srl	%r1,1
	srl	%r3,1
.L866:
	ltr	%r1,%r1
	je	.L878
	clr	%r2,%r3
	jl	.L869
	sr	%r2,%r3
	or	%r5,%r1
	j	.L869
.L878:
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
	jl	.L882
	jh	.L883
	lhi	%r2,0
	br	%r14
.L882:
	lhi	%r2,-1
	br	%r14
.L883:
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
	jl	.L887
	jh	.L888
	lhi	%r2,0
	br	%r14
.L887:
	lhi	%r2,-1
	br	%r14
.L888:
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
	jl	.L904
	lhi	%r0,0
.L896:
	lhi	%r4,33
	lhi	%r5,0
	j	.L897
.L904:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L896
.L898:
	sll	%r2,1
	sra	%r3,1
.L897:
	ltr	%r3,%r3
	je	.L899
	lr	%r1,%r4
	ahi	%r1,-1
	lr	%r4,%r1
	tml	%r1,255
	je	.L899
	tml	%r3,1
	je	.L898
	ar	%r5,%r2
	j	.L898
.L899:
	ltr	%r0,%r0
	je	.L903
	lcr	%r2,%r5
	br	%r14
.L903:
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
	jl	.L912
	lhi	%r12,0
.L907:
	ltr	%r3,%r3
	jl	.L913
.L908:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L909
	lcr	%r2,%r2
.L909:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L912:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L907
.L913:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L908
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
	jl	.L921
	lhi	%r12,0
.L916:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L918
	lcr	%r2,%r2
.L918:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L921:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L916
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
	larl	%r13,.L941
	lhi	%r1,1
	lhi	%r5,17
.L924:
	clr	%r3,%r2
	jhe	.L937
	brct	%r5,.L934
	j	.L938
.L934:
	tml	%r3,32768
	jne	.L939
	sll	%r3,1
	n	%r3,.L942-.L941(%r13)
	sll	%r1,1
	j	.L924
.L937:
	lhi	%r5,0
	j	.L926
.L938:
	lhi	%r5,0
	j	.L926
.L939:
	lhi	%r5,0
	j	.L926
.L929:
	sll	%r1,16
	srl	%r1,17
	srl	%r3,1
.L926:
	tml	%r1,65535
	je	.L940
	clr	%r2,%r3
	jl	.L929
	sr	%r2,%r3
	n	%r2,.L942-.L941(%r13)
	or	%r5,%r1
	j	.L929
.L940:
	ltr	%r4,%r4
	jne	.L931
	lr	%r2,%r5
.L931:
	n	%r2,.L942-.L941(%r13)
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L941:
.L942:
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
	j	.L944
.L948:
	sll	%r3,1
	sll	%r1,1
.L944:
	clr	%r3,%r2
	jhe	.L956
	brct	%r5,.L954
	j	.L957
.L954:
	ltr	%r3,%r3
	jhe	.L948
	lhi	%r5,0
	j	.L946
.L956:
	lhi	%r5,0
	j	.L946
.L957:
	lhi	%r5,0
	j	.L946
.L949:
	srl	%r1,1
	srl	%r3,1
.L946:
	ltr	%r1,%r1
	je	.L958
	clr	%r2,%r3
	jl	.L949
	sr	%r2,%r3
	or	%r5,%r1
	j	.L949
.L958:
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
	tml	%r4,32
	je	.L961
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
	lr	%r0,%r2
.L962:
	lr	%r2,%r0
	lr	%r3,%r1
.L963:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L961:
	.cfi_restore_state
	lr	%r12,%r2
	ltr	%r4,%r4
	je	.L963
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
	j	.L962
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
	je	.L968
	lr	%r1,%r2
	sra	%r1,31
	lr	%r2,%r1
	lr	%r1,%r12
	sra	%r1,4064(%r4)
	lr	%r3,%r1
.L970:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L968:
	.cfi_restore_state
	ltr	%r4,%r4
	je	.L970
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
	j	.L970
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
	larl	%r13,.L976
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
	l	%r1,.L977-.L976(%r13)
	nr	%r1,%r5
	st	%r1,100(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,24
	lhi	%r6,0
	l	%r1,.L978-.L976(%r13)
	nr	%r1,%r5
	lr	%r7,%r1
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,8
	lhi	%r0,0
	lhi	%r1,0
	stm	%r0,%r1,104(%r15)
	lr	%r1,%r5
	n	%r1,.L979-.L976(%r13)
	st	%r1,108(%r15)
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,8
	lhi	%r1,255
	nr	%r1,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	sldl	%r4,24
	l	%r12,.L977-.L976(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	lr	%r8,%r2
	lr	%r9,%r3
	sldl	%r8,40
	l	%r12,.L978-.L976(%r13)
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
.L976:
.L979:
	.long	-16777216
.L978:
	.long	16711680
.L977:
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
	larl	%r5,.L982
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L983-.L982(%r5)
	sll	%r2,8
	n	%r2,.L984-.L982(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L982:
.L984:
	.long	16711680
.L983:
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
	larl	%r13,.L995
	lr	%r1,%r2
	cl	%r2,.L996-.L995(%r13)
	jh	.L990
	lhi	%r3,16
.L986:
	lhi	%r2,16
	sr	%r2,%r3
	srl	%r1,0(%r2)
	tml	%r1,65280
	jne	.L991
	lhi	%r4,8
.L987:
	lhi	%r2,8
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,240
	jne	.L992
	lhi	%r4,4
.L988:
	lhi	%r2,4
	sr	%r2,%r4
	srl	%r1,0(%r2)
	ar	%r3,%r4
	tml	%r1,12
	jne	.L993
	lhi	%r2,2
.L989:
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
.L990:
	.cfi_restore_state
	lhi	%r3,0
	j	.L986
.L991:
	lhi	%r4,0
	j	.L987
.L992:
	lhi	%r4,0
	j	.L988
.L993:
	lhi	%r2,0
	j	.L989
	.section	.rodata
	.align	8
.L995:
.L996:
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
	jl	.L999
	jh	.L1000
	clr	%r3,%r5
	jl	.L1001
	jh	.L1002
	lhi	%r2,1
	br	%r14
.L999:
	lhi	%r2,0
	br	%r14
.L1000:
	lhi	%r2,2
	br	%r14
.L1001:
	lhi	%r2,0
	br	%r14
.L1002:
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
	jne	.L1012
	lhi	%r3,16
.L1008:
	srl	%r1,0(%r3)
	tml	%r1,255
	jne	.L1013
	lhi	%r2,8
.L1009:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,15
	jne	.L1014
	lhi	%r2,4
.L1010:
	srl	%r1,0(%r2)
	ar	%r3,%r2
	tml	%r1,3
	jne	.L1015
	lhi	%r2,2
.L1011:
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
.L1012:
	.cfi_restore_state
	lhi	%r3,0
	j	.L1008
.L1013:
	lhi	%r2,0
	j	.L1009
.L1014:
	lhi	%r2,0
	j	.L1010
.L1015:
	lhi	%r2,0
	j	.L1011
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
	je	.L1019
	lhi	%r2,0
	lr	%r1,%r12
	srl	%r1,4064(%r4)
	lr	%r3,%r1
.L1021:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 13
	.cfi_restore 12
	br	%r14
.L1019:
	.cfi_restore_state
	ltr	%r4,%r4
	je	.L1021
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
	j	.L1021
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
	larl	%r13,.L1027
	lr	%r11,%r2
	lr	%r4,%r3
	l	%r0,.L1028-.L1027(%r13)
	nr	%r0,%r2
	l	%r12,.L1028-.L1027(%r13)
	nr	%r12,%r3
	lr	%r5,%r0
	msr	%r5,%r12
	lr	%r1,%r5
	srl	%r1,16
	n	%r5,.L1028-.L1027(%r13)
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
	l	%r5,.L1028-.L1027(%r13)
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
.L1027:
.L1028:
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
	je	.L1033
	ahi	%r2,-1
.L1033:
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
	larl	%r13,.L1041
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r0,1
	l	%r12,.L1042-.L1041(%r13)
	nr	%r12,%r0
	lr	%r4,%r12
	l	%r12,.L1042-.L1041(%r13)
	nr	%r12,%r1
	slr	%r3,%r12
	slbr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,2
	l	%r12,.L1043-.L1041(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L1043-.L1041(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	l	%r12,.L1043-.L1041(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L1043-.L1041(%r13)
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
	l	%r1,.L1044-.L1041(%r13)
	nr	%r1,%r4
	lr	%r2,%r1
	l	%r1,.L1044-.L1041(%r13)
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
.L1041:
.L1044:
	.long	252645135
.L1043:
	.long	858993459
.L1042:
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
	larl	%r5,.L1047
	lr	%r1,%r2
	srl	%r2,1
	n	%r2,.L1048-.L1047(%r5)
	sr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L1049-.L1047(%r5)
	n	%r1,.L1049-.L1047(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L1050-.L1047(%r5)
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
.L1047:
.L1050:
	.long	252645135
.L1049:
	.long	858993459
.L1048:
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
	larl	%r5,.L1058
	lr	%r3,%r2
	srl	%r3,31
	ld	%f2,.L1059-.L1058(%r5)
	j	.L1054
.L1052:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1053
	mdbr	%f0,%f0
.L1054:
	tml	%r2,1
	je	.L1052
	mdbr	%f2,%f0
	j	.L1052
.L1053:
	ltr	%r3,%r3
	je	.L1056
	ld	%f0,.L1059-.L1058(%r5)
	ddbr	%f0,%f2
	br	%r14
.L1056:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1058:
.L1059:
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
	larl	%r5,.L1067
	lr	%r3,%r2
	srl	%r3,31
	le	%f2,.L1068-.L1067(%r5)
	j	.L1063
.L1061:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1062
	meebr	%f0,%f0
.L1063:
	tml	%r2,1
	je	.L1061
	meebr	%f2,%f0
	j	.L1061
.L1062:
	ltr	%r3,%r3
	je	.L1065
	le	%f0,.L1068-.L1067(%r5)
	debr	%f0,%f2
	br	%r14
.L1065:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1067:
.L1068:
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
	jl	.L1071
	jh	.L1072
	clr	%r3,%r5
	jl	.L1073
	jh	.L1074
	lhi	%r2,1
	br	%r14
.L1071:
	lhi	%r2,0
	br	%r14
.L1072:
	lhi	%r2,2
	br	%r14
.L1073:
	lhi	%r2,0
	br	%r14
.L1074:
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
