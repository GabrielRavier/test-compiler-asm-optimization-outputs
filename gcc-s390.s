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
	je	.L26
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lr	%r0,%r5
.L12:
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	lhi	%r12,255
	nr	%r1,%r12
	cr	%r4,%r1
	je	.L13
	ahi	%r5,-1
	ahi	%r3,1
	ahi	%r2,1
	brct	%r0,.L12
.L13:
	ltr	%r5,%r5
	je	.L17
	ahi	%r2,1
.L15:
	l	%r12,48(%r15)
	.cfi_remember_state
	.cfi_restore 12
	br	%r14
.L17:
	.cfi_restore_state
	lhi	%r2,0
	j	.L15
.L26:
	.cfi_restore 12
	ltr	%r5,%r5
	je	.L23
	ahi	%r2,1
	br	%r14
.L23:
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
	lr	%r1,%r2
	ltr	%r4,%r4
	je	.L30
	lr	%r2,%r4
.L29:
	lhi	%r5,0
	ic	%r5,0(%r1)
	cr	%r3,%r5
	je	.L30
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r2,.L29
.L30:
	ltr	%r4,%r4
	je	.L39
	lr	%r2,%r1
	br	%r14
.L39:
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
	lr	%r1,%r4
	je	.L43
.L42:
	lhi	%r0,0
	ic	%r0,0(%r2)
	lhi	%r5,0
	ic	%r5,0(%r3)
	cr	%r0,%r5
	jne	.L43
	ahi	%r4,-1
	ahi	%r2,1
	ahi	%r3,1
	brct	%r1,.L42
.L43:
	ltr	%r4,%r4
	je	.L47
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L47:
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
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	sr	%r4,%r1
.L53:
	ic	%r5,0(%r1,%r3)
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	brct	%r4,.L53
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
.L58:
	brct	%r4,.L60
	j	.L62
.L60:
	lhi	%r5,0
	ic	%r5,0(%r1,%r2)
	lr	%r0,%r1
	ahi	%r0,-1
	cr	%r3,%r5
	je	.L63
	lr	%r1,%r0
	j	.L58
.L63:
	ar	%r2,%r1
	br	%r14
.L62:
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
.L67:
	stc	%r3,0(%r1)
	ahi	%r1,1
	brct	%r4,.L67
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
.L73:
	ahi	%r3,1
	ahi	%r2,1
	ic	%r1,0(%r3)
	stc	%r1,0(%r2)
	tml	%r1,255
	jne	.L73
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
	je	.L78
.L77:
	lhi	%r2,0
	ic	%r2,0(%r1)
	cr	%r3,%r2
	je	.L78
	ahi	%r1,1
	lhi	%r2,0
	ic	%r2,0(%r1)
	ltr	%r2,%r2
	jne	.L77
.L78:
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
	lhi	%r4,-4096
.L84:
	lhi	%r1,0
	ic	%r1,0(%r2)
	cr	%r3,%r1
	ber	%r14
	ahi	%r2,1
	lhi	%r1,0
	ic	%r1,4095(%r2,%r4)
	ltr	%r1,%r1
	jne	.L84
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
	jne	.L90
.L89:
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L90
	ahi	%r2,1
	ahi	%r3,1
	lhi	%r4,0
	ic	%r4,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r4,%r1
	je	.L89
.L90:
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
	je	.L95
.L96:
	ahi	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r2)
	ltr	%r3,%r3
	jne	.L96
.L95:
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
	je	.L105
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	je	.L102
.L103:
	lhi	%r1,0
	ic	%r1,0(%r3)
	ltr	%r1,%r1
	je	.L102
	brct	%r4,.L107
	j	.L102
.L107:
	lhi	%r5,0
	ic	%r5,0(%r2)
	lhi	%r1,0
	ic	%r1,0(%r3)
	cr	%r5,%r1
	jne	.L102
	ahi	%r2,1
	ahi	%r3,1
	lhi	%r1,0
	ic	%r1,0(%r2)
	ltr	%r1,%r1
	jne	.L103
.L102:
	lhi	%r1,0
	ic	%r1,0(%r2)
	lr	%r2,%r1
	lhi	%r1,0
	ic	%r1,0(%r3)
	sr	%r2,%r1
	br	%r14
.L105:
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
.L111:
	mvc	0(1,%r3),1(%r2)
	mvc	1(1,%r3),0(%r2)
	ahi	%r3,2
	ahi	%r2,2
	brct	%r1,.L111
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
	je	.L121
	lhi	%r1,9
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L121:
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
	jle	.L125
	lhi	%r1,127
	xr	%r2,%r1
	lpr	%r2,%r2
	ahi	%r2,-1
	srl	%r2,31
	br	%r14
.L125:
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
	je	.L137
	ahi	%r2,-9
	lhi	%r1,4
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L137:
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
	larl	%r5,.L147
	lhi	%r1,31
	clr	%r2,%r1
	jle	.L143
	lr	%r1,%r2
	ahi	%r1,-127
	lhi	%r3,32
	clr	%r1,%r3
	jle	.L144
	ahi	%r1,-8105
	lhi	%r3,1
	clr	%r1,%r3
	jle	.L145
	a	%r2,.L148-.L147(%r5)
	lhi	%r1,2
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L143:
	lhi	%r2,1
	br	%r14
.L144:
	lhi	%r2,1
	br	%r14
.L145:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L147:
.L148:
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
	larl	%r5,.L160
	lhi	%r1,254
	clr	%r2,%r1
	jle	.L159
	lhi	%r1,8231
	clr	%r2,%r1
	jle	.L154
	lr	%r1,%r2
	ahi	%r1,-8234
	cl	%r1,.L161-.L160(%r5)
	jle	.L155
	l	%r1,.L162-.L160(%r5)
	ar	%r1,%r2
	lhi	%r3,8184
	clr	%r1,%r3
	jle	.L156
	l	%r1,.L163-.L160(%r5)
	ar	%r1,%r2
	cl	%r1,.L164-.L160(%r5)
	jh	.L157
	n	%r2,.L165-.L160(%r5)
	x	%r2,.L165-.L160(%r5)
	lcr	%r2,%r2
	srl	%r2,31
	br	%r14
.L159:
	ahi	%r2,1
	lhi	%r1,127
	nr	%r2,%r1
	lhi	%r1,32
	clr	%r2,%r1
	lhi	%r2,0
	alcr	%r2,%r2
	br	%r14
.L154:
	lhi	%r2,1
	br	%r14
.L155:
	lhi	%r2,1
	br	%r14
.L156:
	lhi	%r2,1
	br	%r14
.L157:
	lhi	%r2,0
	br	%r14
	.section	.rodata
	.align	8
.L160:
.L165:
	.long	65534
.L164:
	.long	1048579
.L163:
	.long	-65532
.L162:
	.long	-57344
.L161:
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
	jle	.L168
	lhi	%r1,32
	or	%r2,%r1
	ahi	%r2,-97
	lhi	%r1,5
	clr	%r2,%r1
	lhi	%r2,0
	slbr	%r2,%r2
	lcr	%r2,%r2
	br	%r14
.L168:
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
	larl	%r5,.L181
	cdbr	%f0,%f0
	bor	%r14
	cdbr	%f2,%f2
	jo	.L176
	kdbr	%f0,%f2
	jnh	.L179
	sdbr	%f0,%f2
	br	%r14
.L176:
	ldr	%f0,%f2
	br	%r14
.L179:
	ld	%f0,.L182-.L181(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L181:
.L182:
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
	larl	%r5,.L192
	cebr	%f0,%f0
	bor	%r14
	cebr	%f2,%f2
	jo	.L187
	kebr	%f0,%f2
	jnh	.L190
	sebr	%f0,%f2
	br	%r14
.L187:
	ler	%f0,%f2
	br	%r14
.L190:
	le	%f0,.L193-.L192(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L192:
.L193:
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
	jo	.L200
	cdbr	%f2,%f2
	bor	%r14
	tcdb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L196
	tcdb	%f0,1365
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L196:
	lhi	%r1,1
	kdbr	%f0,%f2
	jl	.L197
	lhi	%r1,0
.L197:
	tml	%r1,255
	ber	%r14
	ldr	%f0,%f2
	br	%r14
.L200:
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
	jo	.L210
	cebr	%f2,%f2
	bor	%r14
	tceb	%f0,1365
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L206
	tceb	%f0,1365
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L206:
	lhi	%r1,1
	kebr	%f0,%f2
	jl	.L207
	lhi	%r1,0
.L207:
	tml	%r1,255
	ber	%r14
	ler	%f0,%f2
	br	%r14
.L210:
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
	jo	.L225
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L226
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
	je	.L218
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	tcxb	%f0,1365
	je	.L223
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L219:
	st	%r5,128(%r15)
	st	%r4,132(%r15)
	st	%r3,136(%r15)
	st	%r1,140(%r15)
	ld	%f0,128(%r15)
	ld	%f2,136(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L214
.L225:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L214
.L226:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L214
.L223:
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L219
.L218:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L220
	lhi	%r1,0
.L220:
	tml	%r1,255
	je	.L221
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
.L222:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L214:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L221:
	.cfi_restore_state
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
	j	.L222
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
	ipm	%r2
	srl	%r2,28
	tcdb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L230
	tcdb	%f0,1365
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
	ipm	%r2
	srl	%r2,28
	tceb	%f2,1365
	ipm	%r1
	srl	%r1,28
	cr	%r2,%r1
	je	.L241
	tceb	%f0,1365
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
	jo	.L261
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	cxbr	%f0,%f0
	jo	.L262
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
	je	.L259
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
	j	.L250
.L261:
	ld	%f0,112(%r15)
	ld	%f2,120(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L250
.L262:
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
	j	.L250
.L259:
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L255
.L254:
	lhi	%r1,1
	ld	%f0,96(%r15)
	ld	%f2,104(%r15)
	ld	%f1,112(%r15)
	ld	%f3,120(%r15)
	kxbr	%f0,%f1
	jl	.L256
	lhi	%r1,0
.L256:
	tml	%r1,255
	je	.L257
	l	%r5,96(%r15)
	l	%r4,100(%r15)
	l	%r3,104(%r15)
	l	%r1,108(%r15)
.L258:
	st	%r5,144(%r15)
	st	%r4,148(%r15)
	st	%r3,152(%r15)
	st	%r1,156(%r15)
	ld	%f0,144(%r15)
	ld	%f2,152(%r15)
	std	%f0,0(%r2)
	std	%f2,8(%r2)
.L250:
	l	%r15,220(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_def_cfa_offset 96
	br	%r14
.L257:
	.cfi_restore_state
	l	%r5,112(%r15)
	l	%r4,116(%r15)
	l	%r3,120(%r15)
	l	%r1,124(%r15)
	j	.L258
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
	je	.L267
	larl	%r1,s.0
	larl	%r4,digits
.L266:
	lhi	%r3,63
	nr	%r3,%r2
	la	%r3,0(%r3,%r4)
	mvc	0(1,%r1),0(%r3)
	ahi	%r1,1
	srl	%r2,6
	ltr	%r2,%r2
	jne	.L266
.L265:
	mvi	0(%r1),0
	larl	%r2,s.0
	br	%r14
.L267:
	larl	%r1,s.0
	j	.L265
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
	icm	%r13,15,0(%r4)
	je	.L285
	lr	%r12,%r3
	lhi	%r10,0
	lr	%r11,%r13
	sr	%r11,%r10
.L288:
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L292
	ahi	%r10,1
	ar	%r12,%r9
	brct	%r11,.L288
.L285:
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
.L292:
	.cfi_restore_state
	msr	%r10,%r9
	l	%r2,100(%r15)
	ar	%r2,%r10
	j	.L287
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
	icm	%r12,15,0(%r4)
	je	.L298
	lr	%r7,%r2
	lr	%r8,%r3
	lr	%r9,%r5
	lr	%r11,%r3
	lhi	%r10,0
	sr	%r12,%r10
.L297:
	lr	%r3,%r11
	lr	%r2,%r7
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L302
	ahi	%r10,1
	ar	%r11,%r9
	brct	%r12,.L297
	lhi	%r2,0
	j	.L295
.L302:
	msr	%r10,%r9
	lr	%r2,%r8
	ar	%r2,%r10
.L295:
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
.L298:
	.cfi_restore_state
	lhi	%r2,0
	j	.L295
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
	j	.L307
.L308:
	ahi	%r12,1
.L307:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L308
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L314
	chi	%r1,45
	jne	.L315
	lhi	%r5,1
.L309:
	ahi	%r12,1
.L310:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jh	.L316
	lhi	%r4,0
.L312:
	lr	%r2,%r4
	sll	%r2,2
	ar	%r2,%r4
	sll	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	sr	%r2,%r3
	lr	%r4,%r2
	lhi	%r3,0
	ic	%r3,1(%r12)
	ahi	%r3,-48
	ahi	%r12,1
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L312
.L311:
	ltr	%r5,%r5
	jne	.L317
	lcr	%r2,%r4
.L313:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L314:
	.cfi_restore_state
	lhi	%r5,0
	j	.L309
.L315:
	lhi	%r5,0
	j	.L310
.L316:
	lhi	%r4,0
	j	.L311
.L317:
	lr	%r2,%r4
	j	.L313
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
	j	.L322
.L323:
	ahi	%r12,1
.L322:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L323
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L329
	chi	%r1,45
	jne	.L330
	lhi	%r5,1
.L324:
	ahi	%r12,1
.L325:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jh	.L331
	lhi	%r4,0
.L327:
	lr	%r2,%r4
	sll	%r2,2
	ar	%r2,%r4
	sll	%r2,1
	lhi	%r3,0
	ic	%r3,0(%r12)
	ahi	%r3,-48
	sr	%r2,%r3
	lr	%r4,%r2
	lhi	%r3,0
	ic	%r3,1(%r12)
	ahi	%r3,-48
	ahi	%r12,1
	lhi	%r1,9
	clr	%r3,%r1
	jle	.L327
.L326:
	ltr	%r5,%r5
	jne	.L332
	lcr	%r2,%r4
.L328:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L329:
	.cfi_restore_state
	lhi	%r5,0
	j	.L324
.L330:
	lhi	%r5,0
	j	.L325
.L331:
	lhi	%r4,0
	j	.L326
.L332:
	lr	%r2,%r4
	j	.L328
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
	j	.L337
.L338:
	ahi	%r12,1
.L337:
	lhi	%r2,0
	ic	%r2,0(%r12)
	brasl	%r14,isspace
	ltr	%r2,%r2
	jne	.L338
	lhi	%r1,0
	ic	%r1,0(%r12)
	chi	%r1,43
	je	.L344
	chi	%r1,45
	jne	.L345
	lhi	%r0,1
.L339:
	ahi	%r12,1
.L340:
	lhi	%r1,0
	ic	%r1,0(%r12)
	ahi	%r1,-48
	lhi	%r2,9
	clr	%r1,%r2
	jh	.L346
	lr	%r1,%r12
	lhi	%r12,0
	lhi	%r13,0
.L342:
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
	lhi	%r3,0
	ic	%r3,1(%r1)
	ahi	%r3,-48
	ahi	%r1,1
	lhi	%r2,9
	clr	%r3,%r2
	jle	.L342
.L341:
	ltr	%r0,%r0
	jne	.L347
	lcr	%r2,%r12
	lcr	%r3,%r13
	je	.L343
	ahi	%r2,-1
	j	.L343
.L344:
	lhi	%r0,0
	j	.L339
.L345:
	lhi	%r0,0
	j	.L340
.L346:
	lhi	%r12,0
	lhi	%r13,0
	j	.L341
.L347:
	lr	%r2,%r12
	lr	%r3,%r13
.L343:
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
	lr	%r10,%r5
	ltr	%r11,%r4
	jne	.L356
	lhi	%r2,0
	j	.L353
.L362:
	srl	%r11,1
.L355:
	ltr	%r11,%r11
	je	.L361
.L356:
	lr	%r12,%r11
	srl	%r12,1
	msr	%r12,%r10
	ar	%r12,%r9
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	jl	.L362
	ltr	%r2,%r2
	jle	.L358
	ar	%r12,%r10
	lr	%r9,%r12
	lr	%r1,%r11
	srl	%r1,1
	ahi	%r11,-1
	sr	%r11,%r1
	j	.L355
.L361:
	lhi	%r2,0
.L353:
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
.L358:
	.cfi_restore_state
	lr	%r2,%r12
	j	.L353
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
	l	%r7,192(%r15)
	ltr	%r4,%r4
	je	.L368
	lr	%r8,%r2
	lr	%r9,%r5
	lr	%r11,%r4
	lr	%r10,%r3
	j	.L367
.L366:
	sra	%r11,1
	je	.L372
.L367:
	lr	%r12,%r11
	sra	%r12,1
	msr	%r12,%r9
	ar	%r12,%r10
	lr	%r4,%r7
	lr	%r3,%r12
	lr	%r2,%r8
	basr	%r14,%r6
	ltr	%r2,%r2
	je	.L369
	ltr	%r2,%r2
	jle	.L366
	ar	%r12,%r9
	lr	%r10,%r12
	ahi	%r11,-1
	j	.L366
.L372:
	lhi	%r2,0
	j	.L365
.L368:
	lhi	%r2,0
	j	.L365
.L369:
	lr	%r2,%r12
.L365:
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
	jl	.L381
.L378:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L381:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L378
	ahi	%r4,-1
	j	.L378
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
	jl	.L395
.L392:
	lr	%r2,%r4
	lr	%r3,%r5
	br	%r14
.L395:
	lcr	%r4,%r2
	lcr	%r5,%r3
	je	.L392
	ahi	%r4,-1
	j	.L392
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
	je	.L402
.L401:
	c	%r3,0(%r2)
	je	.L402
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L401
.L402:
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
	clc	0(4,%r3),0(%r2)
	jne	.L410
.L409:
	icm	%r1,15,0(%r2)
	je	.L410
	icm	%r1,15,0(%r3)
	je	.L410
	ahi	%r2,4
	ahi	%r3,4
	clc	0(4,%r3),0(%r2)
	je	.L409
.L410:
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L414
	lhi	%r1,1
	jl	.L413
	lhi	%r1,0
.L413:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L414:
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
.L418:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,4
	la	%r5,0(%r1,%r4)
	icm	%r5,15,0(%r5)
	jne	.L418
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
	je	.L423
.L424:
	ahi	%r2,4
	icm	%r1,15,0(%r2)
	jne	.L424
.L423:
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
	je	.L430
	lr	%r1,%r4
.L429:
	clc	0(4,%r3),0(%r2)
	jne	.L430
	icm	%r5,15,0(%r2)
	je	.L430
	icm	%r5,15,0(%r3)
	je	.L430
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r1,.L429
.L430:
	ltr	%r4,%r4
	je	.L434
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L435
	lhi	%r1,1
	jl	.L433
	lhi	%r1,0
.L433:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L434:
	lhi	%r2,0
	br	%r14
.L435:
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
	je	.L442
	lr	%r1,%r4
.L441:
	c	%r3,0(%r2)
	je	.L442
	ahi	%r4,-1
	ahi	%r2,4
	brct	%r1,.L441
.L442:
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
	ltr	%r4,%r4
	je	.L452
	lr	%r1,%r4
.L451:
	clc	0(4,%r3),0(%r2)
	jne	.L452
	ahi	%r4,-1
	ahi	%r2,4
	ahi	%r3,4
	brct	%r1,.L451
.L452:
	ltr	%r4,%r4
	je	.L456
	l	%r1,0(%r3)
	c	%r1,0(%r2)
	jh	.L457
	lhi	%r1,1
	jl	.L455
	lhi	%r1,0
.L455:
	lhi	%r2,255
	nr	%r2,%r1
	br	%r14
.L456:
	lhi	%r2,0
	br	%r14
.L457:
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
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lr	%r4,%r1
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
.L464:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r4,-1
	ahi	%r1,4
	brct	%r5,.L464
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
	larl	%r13,.L479
	cr	%r2,%r3
	je	.L469
	lr	%r5,%r2
	sr	%r5,%r3
	lr	%r1,%r4
	sll	%r1,2
	clr	%r5,%r1
	jl	.L470
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	je	.L469
	lr	%r4,%r1
	lhi	%r1,0
	lr	%r5,%r4
	ahi	%r5,1
.L471:
	l	%r0,0(%r1,%r3)
	st	%r0,0(%r1,%r2)
	ahi	%r4,-1
	ahi	%r1,4
	brct	%r5,.L471
	j	.L469
.L470:
	ltr	%r4,%r4
	je	.L469
	ahi	%r4,-1
	lr	%r1,%r4
	sll	%r1,2
	n	%r4,.L480-.L479(%r13)
	ahi	%r4,1
.L472:
	l	%r5,0(%r1,%r3)
	st	%r5,0(%r1,%r2)
	ahi	%r1,-4
	brct	%r4,.L472
.L469:
	l	%r13,52(%r15)
	.cfi_restore 13
	br	%r14
	.section	.rodata
	.align	8
.L479:
.L480:
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
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lr	%r5,%r2
	lr	%r4,%r1
	ahi	%r1,1
.L483:
	st	%r3,0(%r5)
	ahi	%r4,-1
	ahi	%r5,4
	brct	%r1,.L483
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
	jhe	.L488
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,-1
	ahi	%r3,-1
	lr	%r1,%r4
.L490:
	ic	%r5,0(%r4,%r2)
	stc	%r5,0(%r4,%r3)
	ahi	%r4,-1
	brct	%r1,.L490
	br	%r14
.L488:
	cr	%r2,%r3
	ber	%r14
	ltr	%r4,%r4
	ber	%r14
	lhi	%r1,0
	sr	%r4,%r1
.L491:
	ic	%r5,0(%r1,%r2)
	stc	%r5,0(%r1,%r3)
	ahi	%r1,1
	brct	%r4,.L491
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
	larl	%r5,.L513
	lr	%r1,%r2
	sll	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	srl	%r2,0(%r4)
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
.LFE74:
	.size	rotl16, .-rotl16
	.align	8
.globl rotr16
	.type	rotr16, @function
rotr16:
.LFB75:
	.cfi_startproc
	larl	%r5,.L517
	lr	%r1,%r2
	srl	%r1,0(%r3)
	lhi	%r4,16
	sr	%r4,%r3
	sll	%r2,0(%r4)
	or	%r2,%r1
	n	%r2,.L518-.L517(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L517:
.L518:
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
	larl	%r5,.L525
	lr	%r1,%r2
	srl	%r1,8
	lhi	%r3,255
	nr	%r2,%r3
	sll	%r2,8
	or	%r2,%r1
	n	%r2,.L526-.L525(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L525:
.L526:
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
	larl	%r5,.L529
	lr	%r1,%r2
	lr	%r3,%r2
	srl	%r3,24
	l	%r2,.L530-.L529(%r5)
	nr	%r2,%r1
	srl	%r2,8
	or	%r2,%r3
	l	%r3,.L531-.L529(%r5)
	nr	%r3,%r1
	sll	%r3,8
	or	%r2,%r3
	sll	%r1,24
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L529:
.L531:
	.long	65280
.L530:
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
	larl	%r13,.L534
	lr	%r4,%r3
	l	%r1,.L535-.L534(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,56
	lr	%r8,%r10
	lr	%r9,%r11
	l	%r1,.L536-.L534(%r13)
	nr	%r1,%r2
	lr	%r10,%r1
	lhi	%r11,0
	srdl	%r10,40
	lr	%r1,%r10
	or	%r1,%r8
	lr	%r3,%r11
	or	%r3,%r9
	l	%r5,.L537-.L534(%r13)
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
	l	%r0,.L535-.L534(%r13)
	nr	%r0,%r4
	lr	%r3,%r0
	sldl	%r2,8
	or	%r1,%r2
	or	%r3,%r5
	lhi	%r10,0
	l	%r2,.L536-.L534(%r13)
	nr	%r2,%r4
	lr	%r11,%r2
	sldl	%r10,24
	lr	%r8,%r10
	lr	%r9,%r11
	or	%r1,%r8
	lhi	%r10,0
	l	%r2,.L537-.L534(%r13)
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
.L534:
.L537:
	.long	65280
.L536:
	.long	16711680
.L535:
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
.L541:
	lr	%r4,%r2
	srl	%r4,0(%r1)
	tml	%r4,1
	jne	.L544
	ahi	%r1,1
	brct	%r3,.L541
	lhi	%r2,0
	br	%r14
.L544:
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
	je	.L549
	tml	%r1,1
	jne	.L550
	lhi	%r2,1
.L548:
	sra	%r1,1
	ahi	%r2,1
	tml	%r1,1
	je	.L548
	br	%r14
.L549:
	lhi	%r2,0
	br	%r14
.L550:
	lhi	%r2,1
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
	larl	%r5,.L559
	keb	%f0,.L560-.L559(%r5)
	jl	.L557
	lhi	%r2,1
	keb	%f0,.L561-.L559(%r5)
	jh	.L556
	lhi	%r2,0
.L556:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L557:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L559:
.L561:
	.long	2139095039
.L560:
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
	larl	%r5,.L567
	kdb	%f0,.L568-.L567(%r5)
	jl	.L565
	lhi	%r2,1
	kdb	%f0,.L569-.L567(%r5)
	jh	.L564
	lhi	%r2,0
.L564:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L565:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L567:
.L569:
	.long	2146435071
	.long	-1
.L568:
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
	larl	%r5,.L575
	ld	%f0,0(%r2)
	ld	%f2,8(%r2)
	ld	%f1,.L576-.L575(%r5)
	ld	%f3,.L576-.L575+8(%r5)
	kxbr	%f0,%f1
	jl	.L573
	lhi	%r2,1
	ld	%f1,.L577-.L575(%r5)
	ld	%f3,.L577-.L575+8(%r5)
	kxbr	%f0,%f1
	jh	.L572
	lhi	%r2,0
.L572:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L573:
	lhi	%r2,1
	br	%r14
	.section	.rodata
	.align	8
.L575:
.L577:
	.long	2147418111
	.long	-1
	.long	-1
	.long	-1
.L576:
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
	larl	%r5,.L588
	cebr	%f0,%f0
	bor	%r14
	ler	%f2,%f0
	aebr	%f2,%f0
	cebr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L587
	le	%f2,.L589-.L588(%r5)
	j	.L584
.L587:
	le	%f2,.L590-.L588(%r5)
	j	.L584
.L583:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	meebr	%f2,%f2
.L584:
	tml	%r2,1
	je	.L583
	meebr	%f0,%f2
	j	.L583
	.section	.rodata
	.align	8
.L588:
.L590:
	.long	1056964608
.L589:
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
	larl	%r5,.L599
	cdbr	%f0,%f0
	bor	%r14
	ldr	%f2,%f0
	adbr	%f2,%f0
	cdbr	%f0,%f2
	ber	%r14
	ltr	%r2,%r2
	jl	.L598
	ld	%f2,.L600-.L599(%r5)
	j	.L595
.L598:
	ld	%f2,.L601-.L599(%r5)
	j	.L595
.L594:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	ber	%r14
	mdbr	%f2,%f2
.L595:
	tml	%r2,1
	je	.L594
	mdbr	%f0,%f2
	j	.L594
	.section	.rodata
	.align	8
.L599:
.L601:
	.long	1071644672
	.long	0
.L600:
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
	larl	%r5,.L610
	ld	%f1,0(%r3)
	ld	%f3,8(%r3)
	cxbr	%f1,%f1
	jo	.L603
	lxr	%f0,%f1
	axbr	%f0,%f1
	cxbr	%f1,%f0
	je	.L603
	ltr	%r4,%r4
	jl	.L609
	ld	%f0,.L611-.L610(%r5)
	ld	%f2,.L611-.L610+8(%r5)
	j	.L606
.L609:
	ld	%f0,.L612-.L610(%r5)
	ld	%f2,.L612-.L610+8(%r5)
	j	.L606
.L605:
	lr	%r1,%r4
	srl	%r1,31
	ar	%r1,%r4
	sra	%r1,1
	lr	%r4,%r1
	ltr	%r1,%r1
	je	.L603
	mxbr	%f0,%f0
.L606:
	tml	%r4,1
	je	.L605
	mxbr	%f1,%f0
	j	.L605
.L603:
	std	%f1,0(%r2)
	std	%f3,8(%r2)
	br	%r14
	.section	.rodata
	.align	8
.L610:
.L612:
	.long	1073610752
	.long	0
	.long	0
	.long	0
.L611:
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
.L615:
	ic	%r5,0(%r1,%r2)
	ic	%r0,0(%r1,%r3)
	xr	%r5,%r0
	stc	%r5,0(%r1,%r2)
	ahi	%r1,1
	bcr	7,%r0
	brct	%r4,.L615
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
	je	.L621
	lr	%r0,%r4
.L620:
	ic	%r5,0(%r3)
	stc	%r5,0(%r1)
	tml	%r5,255
	je	.L621
	ahi	%r3,1
	ahi	%r1,1
	ahi	%r4,-1
	brct	%r0,.L620
.L621:
	ltr	%r4,%r4
	bner	%r14
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
	je	.L635
	sr	%r3,%r2
.L629:
	lhi	%r4,0
	ic	%r4,0(%r2,%r1)
	ltr	%r4,%r4
	ber	%r14
	ahi	%r2,1
	brct	%r3,.L629
	br	%r14
.L635:
	lhi	%r2,0
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
	lr	%r5,%r2
	cli	0(%r2),0
	je	.L646
.L639:
	lr	%r1,%r3
.L642:
	lhi	%r4,0
	ic	%r4,0(%r1)
	ltr	%r4,%r4
	je	.L647
	ic	%r4,0(%r1)
	ahi	%r1,1
	clm	%r4,1,0(%r5)
	jne	.L642
	lr	%r2,%r5
	br	%r14
.L646:
	lhi	%r2,0
	br	%r14
.L647:
	ahi	%r5,1
	lhi	%r1,0
	ic	%r1,0(%r5)
	ltr	%r1,%r1
	jne	.L639
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
	j	.L651
.L650:
	ahi	%r1,1
	lhi	%r4,0
	ic	%r4,4095(%r1,%r5)
	ltr	%r4,%r4
	ber	%r14
.L651:
	lhi	%r4,0
	ic	%r4,0(%r1)
	cr	%r3,%r4
	jne	.L650
	lr	%r2,%r1
	j	.L650
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
	lr	%r12,%r2
.L658:
	lr	%r3,%r9
	lr	%r2,%r12
	brasl	%r14,strchr
	ltr	%r12,%r2
	je	.L657
	lr	%r4,%r10
	lr	%r3,%r11
	lr	%r2,%r12
	brasl	%r14,strncmp
	ltr	%r2,%r2
	je	.L661
	ahi	%r12,1
	j	.L658
.L661:
	lr	%r2,%r12
.L657:
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
	larl	%r5,.L679
	kdb	%f0,.L680-.L679(%r5)
	jl	.L678
.L665:
	kdb	%f0,.L680-.L679(%r5)
	jnh	.L668
	kdb	%f2,.L680-.L679(%r5)
	jl	.L667
.L668:
	br	%r14
.L678:
	kdb	%f2,.L680-.L679(%r5)
	jnh	.L665
.L667:
	lcdbr	%f0,%f0
	br	%r14
	.section	.rodata
	.align	8
.L679:
.L680:
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
	lr	%r11,%r3
	sr	%r11,%r5
	ar	%r11,%r2
	ltr	%r5,%r5
	je	.L682
	clr	%r5,%r3
	jh	.L686
	clr	%r2,%r11
	jh	.L687
	lr	%r12,%r2
	lhi	%r9,0
	ic	%r9,0(%r4)
	ahi	%r4,1
	lr	%r8,%r4
	ahi	%r5,-1
	lr	%r10,%r5
	j	.L684
.L683:
	ahi	%r12,1
	clr	%r11,%r12
	jl	.L691
.L684:
	lhi	%r1,0
	ic	%r1,0(%r12)
	cr	%r1,%r9
	jne	.L683
	lr	%r4,%r10
	lr	%r3,%r8
	lr	%r2,%r12
	ahi	%r2,1
	brasl	%r14,memcmp
	ltr	%r2,%r2
	jne	.L683
	lr	%r2,%r12
	j	.L682
.L691:
	lhi	%r2,0
.L682:
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
.L686:
	.cfi_restore_state
	lhi	%r2,0
	j	.L682
.L687:
	lhi	%r2,0
	j	.L682
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
	larl	%r5,.L719
	kdb	%f0,.L720-.L719(%r5)
	jl	.L718
	lhi	%r3,0
.L697:
	kdb	%f0,.L721-.L719(%r5)
	jnhe	.L715
	lhi	%r1,0
.L701:
	ahi	%r1,1
	mdb	%f0,.L722-.L719(%r5)
	kdb	%f0,.L721-.L719(%r5)
	jhe	.L701
.L702:
	st	%r1,0(%r2)
	ltr	%r3,%r3
	ber	%r14
	lcdbr	%f0,%f0
	br	%r14
.L718:
	lcdbr	%f0,%f0
	lhi	%r3,1
	j	.L697
.L715:
	kdb	%f0,.L722-.L719(%r5)
	jnl	.L716
	cdb	%f0,.L720-.L719(%r5)
	je	.L708
	lhi	%r1,0
.L704:
	ahi	%r1,-1
	adbr	%f0,%f0
	kdb	%f0,.L722-.L719(%r5)
	jl	.L704
	j	.L702
.L716:
	lhi	%r1,0
	j	.L702
.L708:
	lhi	%r1,0
	j	.L702
	.section	.rodata
	.align	8
.L719:
.L722:
	.long	1071644672
	.long	0
.L721:
	.long	1072693248
	.long	0
.L720:
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
	je	.L727
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
	j	.L726
.L729:
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
	je	.L734
.L726:
	lhi	%r8,0
	lhi	%r4,1
	nr	%r4,%r1
	lr	%r9,%r4
	lcr	%r4,%r8
	lcr	%r5,%r9
	je	.L729
	ahi	%r4,-1
	j	.L729
.L727:
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
.L734:
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
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L738
	lhi	%r1,1
	lhi	%r5,32
.L737:
	ltr	%r3,%r3
	jl	.L738
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L738
	brct	%r5,.L737
.L738:
	lhi	%r5,0
	ltr	%r1,%r1
	jne	.L739
.L740:
	ltr	%r4,%r4
	bner	%r14
	lr	%r2,%r5
	br	%r14
.L742:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L740
.L739:
	clr	%r2,%r3
	jl	.L742
	sr	%r2,%r3
	or	%r5,%r1
	j	.L742
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
	je	.L754
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
.L754:
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
	je	.L763
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
	je	.L772
	lhi	%r2,0
.L771:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L771
	br	%r14
.L772:
	lhi	%r2,0
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
	lr	%r1,%r4
	srl	%r1,3
	lhi	%r5,-8
	nr	%r5,%r4
	clr	%r2,%r3
	jhe	.L777
.L780:
	ltr	%r1,%r1
	je	.L800
	stm	%r10,%r12,40(%r15)
	.cfi_offset 10, -56
	.cfi_offset 11, -52
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r1,3
	ahi	%r1,-8
	srl	%r1,3
	ahi	%r1,1
.L783:
	l	%r10,0(%r12,%r3)
	l	%r11,4(%r12,%r3)
	st	%r10,0(%r12,%r2)
	st	%r11,4(%r12,%r2)
	ahi	%r12,8
	brct	%r1,.L783
	clr	%r4,%r5
	jle	.L776
	lr	%r1,%r4
	sr	%r1,%r5
.L784:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
	brct	%r1,.L784
.L776:
	lm	%r10,%r12,40(%r15)
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	br	%r14
.L777:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L780
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lr	%r4,%r1
	ahi	%r1,1
.L781:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahi	%r4,-1
	brct	%r1,.L781
	br	%r14
.L800:
	clr	%r4,%r5
	bler	%r14
	lr	%r1,%r4
	sr	%r1,%r5
.L796:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
	brct	%r1,.L796
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
	jhe	.L803
.L806:
	ltr	%r1,%r1
	je	.L805
	lhi	%r5,0
	sll	%r1,1
	ahi	%r1,-2
	srl	%r1,1
	ahi	%r1,1
.L809:
	lh	%r0,0(%r5,%r3)
	sth	%r0,0(%r5,%r2)
	ahi	%r5,2
	brct	%r1,.L809
.L805:
	tml	%r4,1
	ber	%r14
	ahi	%r4,-1
	ic	%r1,0(%r4,%r3)
	stc	%r1,0(%r4,%r2)
	br	%r14
.L803:
	lr	%r5,%r3
	ar	%r5,%r4
	clr	%r5,%r2
	jl	.L806
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lr	%r4,%r1
	ahi	%r1,1
.L807:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahi	%r4,-1
	brct	%r1,.L807
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
	lr	%r1,%r4
	srl	%r1,2
	lhi	%r5,-4
	nr	%r5,%r4
	clr	%r2,%r3
	jhe	.L818
.L821:
	ltr	%r1,%r1
	je	.L841
	st	%r12,48(%r15)
	.cfi_offset 12, -48
	lhi	%r12,0
	sll	%r1,2
	ahi	%r1,-4
	srl	%r1,2
	ahi	%r1,1
.L824:
	l	%r0,0(%r12,%r3)
	st	%r0,0(%r12,%r2)
	ahi	%r12,4
	brct	%r1,.L824
	clr	%r4,%r5
	jle	.L817
	lr	%r1,%r4
	sr	%r1,%r5
.L825:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
	brct	%r1,.L825
.L817:
	l	%r12,48(%r15)
	.cfi_restore 12
	br	%r14
.L818:
	lr	%r0,%r3
	ar	%r0,%r4
	clr	%r0,%r2
	jl	.L821
	lr	%r1,%r4
	ahi	%r1,-1
	ltr	%r4,%r4
	ber	%r14
	lr	%r4,%r1
	ahi	%r1,1
.L822:
	ic	%r5,0(%r4,%r3)
	stc	%r5,0(%r4,%r2)
	ahi	%r4,-1
	brct	%r1,.L822
	br	%r14
.L841:
	clr	%r4,%r5
	bler	%r14
	lr	%r1,%r4
	sr	%r1,%r5
.L837:
	ic	%r4,0(%r5,%r3)
	stc	%r4,0(%r5,%r2)
	ahi	%r5,1
	brct	%r1,.L837
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
	larl	%r5,.L848
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	bher	%r14
	adb	%f0,.L849-.L848(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L848:
.L849:
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
	larl	%r5,.L854
	cdfbr	%f0,%r2
	ltr	%r2,%r2
	jl	.L853
.L851:
	ledbr	%f0,%f0
	br	%r14
.L853:
	adb	%f0,.L855-.L854(%r5)
	j	.L851
	.section	.rodata
	.align	8
.L854:
.L855:
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
.L866:
	lr	%r4,%r0
	sr	%r4,%r2
	lr	%r3,%r5
	sra	%r3,0(%r4)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L866
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
.L872:
	lr	%r3,%r4
	sra	%r3,0(%r2)
	tml	%r3,1
	bner	%r14
	ahi	%r2,1
	brct	%r1,.L872
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
	larl	%r5,.L884
	keb	%f0,.L885-.L884(%r5)
	jhe	.L883
	cfebr	%r2,5,%f0
	br	%r14
.L883:
	seb	%f0,.L885-.L884(%r5)
	cfebr	%r2,5,%f0
	a	%r2,.L886-.L884(%r5)
	br	%r14
	.section	.rodata
	.align	8
.L884:
.L885:
	.long	1191182336
.L886:
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
	lhi	%r4,0
	lhi	%r3,0
	lhi	%r1,16
.L888:
	lr	%r2,%r5
	sra	%r2,0(%r3)
	lhi	%r0,1
	nr	%r2,%r0
	ar	%r4,%r2
	ahi	%r3,1
	brct	%r1,.L888
	lhi	%r2,1
	nr	%r2,%r4
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
	lhi	%r4,0
	lhi	%r3,0
	lhi	%r1,16
.L892:
	lr	%r2,%r5
	sra	%r2,0(%r3)
	lhi	%r0,1
	nr	%r2,%r0
	ar	%r4,%r2
	ahi	%r3,1
	brct	%r1,.L892
	lr	%r2,%r4
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
	je	.L898
	lhi	%r2,0
.L897:
	lhi	%r1,1
	nr	%r1,%r4
	lcr	%r1,%r1
	nr	%r1,%r3
	ar	%r2,%r1
	srl	%r4,1
	sll	%r3,1
	ltr	%r4,%r4
	jne	.L897
	br	%r14
.L898:
	lhi	%r2,0
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
	je	.L905
	ltr	%r3,%r3
	je	.L906
	lhi	%r2,0
.L904:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	srl	%r3,1
	ltr	%r3,%r3
	jne	.L904
	br	%r14
.L905:
	lhi	%r2,0
	br	%r14
.L906:
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
	clr	%r3,%r2
	jhe	.L912
	lhi	%r1,1
	lhi	%r5,32
.L911:
	ltr	%r3,%r3
	jl	.L912
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L912
	brct	%r5,.L911
.L912:
	lhi	%r5,0
	ltr	%r1,%r1
	jne	.L913
.L914:
	ltr	%r4,%r4
	bner	%r14
	lr	%r2,%r5
	br	%r14
.L916:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L914
.L913:
	clr	%r2,%r3
	jl	.L916
	sr	%r2,%r3
	or	%r5,%r1
	j	.L916
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
	jl	.L929
	lhi	%r2,1
	jh	.L928
	lhi	%r2,0
.L928:
	lhi	%r1,255
	nr	%r2,%r1
	br	%r14
.L929:
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
	jl	.L951
	lhi	%r0,0
.L942:
	ltr	%r3,%r3
	je	.L947
	lhi	%r5,32
	lhi	%r2,0
.L944:
	lhi	%r1,1
	nr	%r1,%r3
	lcr	%r1,%r1
	nr	%r1,%r4
	ar	%r2,%r1
	sll	%r4,1
	sra	%r3,1
	je	.L943
	lr	%r1,%r5
	ahi	%r1,-1
	lr	%r5,%r1
	tml	%r1,255
	jne	.L944
.L943:
	ltr	%r0,%r0
	ber	%r14
	lcr	%r2,%r2
	br	%r14
.L951:
	lcr	%r3,%r3
	lhi	%r0,1
	j	.L942
.L947:
	lhi	%r2,0
	j	.L943
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
	jl	.L959
	lhi	%r12,0
.L954:
	ltr	%r3,%r3
	jl	.L960
.L955:
	lhi	%r4,0
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L956
	lcr	%r2,%r2
.L956:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L959:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L954
.L960:
	lcr	%r3,%r3
	lhi	%r1,1
	xr	%r12,%r1
	j	.L955
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
	jl	.L967
	lhi	%r12,0
.L963:
	lhi	%r4,1
	lpr	%r3,%r3
	brasl	%r14,__udivmodsi4
	ltr	%r12,%r12
	je	.L964
	lcr	%r2,%r2
.L964:
	lm	%r12,%r15,144(%r15)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_def_cfa_offset 96
	br	%r14
.L967:
	.cfi_restore_state
	lcr	%r2,%r2
	lhi	%r12,1
	j	.L963
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
	larl	%r13,.L985
	lhi	%r1,1
	clr	%r3,%r2
	jhe	.L971
	lhi	%r1,1
	lhi	%r5,16
.L970:
	tml	%r3,32768
	jne	.L971
	sll	%r3,1
	n	%r3,.L986-.L985(%r13)
	sll	%r1,1
	clr	%r2,%r3
	jle	.L971
	brct	%r5,.L970
.L971:
	lhi	%r0,0
	tml	%r1,65535
	jne	.L972
.L973:
	ltr	%r4,%r4
	jne	.L976
	lr	%r2,%r0
.L976:
	n	%r2,.L986-.L985(%r13)
	l	%r13,52(%r15)
	.cfi_remember_state
	.cfi_restore 13
	br	%r14
.L975:
	.cfi_restore_state
	n	%r1,.L986-.L985(%r13)
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L973
.L972:
	clr	%r2,%r3
	jl	.L975
	sr	%r2,%r3
	n	%r2,.L986-.L985(%r13)
	or	%r0,%r1
	j	.L975
	.section	.rodata
	.align	8
.L985:
.L986:
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
	clr	%r3,%r2
	jhe	.L989
	lhi	%r1,1
	lhi	%r5,32
.L988:
	ltr	%r3,%r3
	jl	.L989
	sll	%r3,1
	sll	%r1,1
	clr	%r2,%r3
	jle	.L989
	brct	%r5,.L988
.L989:
	lhi	%r5,0
	ltr	%r1,%r1
	jne	.L990
.L991:
	ltr	%r4,%r4
	bner	%r14
	lr	%r2,%r5
	br	%r14
.L993:
	srl	%r1,1
	srl	%r3,1
	ltr	%r1,%r1
	je	.L991
.L990:
	clr	%r2,%r3
	jl	.L993
	sr	%r2,%r3
	or	%r5,%r1
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
	je	.L1004
	lhi	%r1,0
	lr	%r2,%r3
	sll	%r2,4064(%r4)
.L1005:
	lr	%r3,%r1
	br	%r14
.L1004:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r3
	sll	%r1,0(%r4)
	sll	%r2,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	srl	%r3,0(%r5)
	or	%r2,%r3
	j	.L1005
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
	je	.L1010
	lr	%r1,%r2
	sra	%r1,31
	sra	%r2,4064(%r4)
	lr	%r3,%r2
.L1011:
	lr	%r2,%r1
	br	%r14
.L1010:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	sra	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1011
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
	larl	%r13,.L1017
	lr	%r4,%r2
	lr	%r5,%r3
	lr	%r6,%r2
	lr	%r7,%r3
	srdl	%r6,56
	srdl	%r2,40
	l	%r1,.L1018-.L1017(%r13)
	nr	%r1,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,24
	l	%r10,.L1019-.L1017(%r13)
	nr	%r10,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	srdl	%r2,8
	l	%r0,.L1020-.L1017(%r13)
	nr	%r0,%r3
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,8
	lhi	%r11,255
	nr	%r11,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,24
	l	%r9,.L1018-.L1017(%r13)
	nr	%r9,%r2
	lr	%r2,%r4
	lr	%r3,%r5
	sldl	%r2,40
	n	%r2,.L1019-.L1017(%r13)
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
.L1017:
.L1020:
	.long	-16777216
.L1019:
	.long	16711680
.L1018:
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
	larl	%r5,.L1023
	lr	%r1,%r2
	lr	%r4,%r2
	srl	%r4,24
	lr	%r3,%r2
	srl	%r3,8
	n	%r3,.L1024-.L1023(%r5)
	sll	%r2,8
	n	%r2,.L1025-.L1023(%r5)
	sll	%r1,24
	or	%r1,%r4
	or	%r1,%r3
	or	%r2,%r1
	br	%r14
	.section	.rodata
	.align	8
.L1023:
.L1025:
	.long	16711680
.L1024:
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
	larl	%r13,.L1028
	lr	%r1,%r2
	cl	%r2,.L1029-.L1028(%r13)
	lhi	%r4,0
	slbr	%r4,%r4
	lcr	%r4,%r4
	sll	%r4,4
	lhi	%r2,16
	sr	%r2,%r4
	srl	%r1,0(%r2)
	l	%r2,.L1030-.L1028(%r13)
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
.L1028:
.L1030:
	.long	65280
.L1029:
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
	jl	.L1033
	jh	.L1034
	clr	%r3,%r5
	jl	.L1035
	jh	.L1036
	lhi	%r2,1
	br	%r14
.L1033:
	lhi	%r2,0
	br	%r14
.L1034:
	lhi	%r2,2
	br	%r14
.L1035:
	lhi	%r2,0
	br	%r14
.L1036:
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
	larl	%r5,.L1043
	.cfi_offset 15, -36
	ahi	%r15,-104
	.cfi_def_cfa_offset 200
	lr	%r1,%r2
	l	%r3,.L1044-.L1043(%r5)
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
.L1043:
.L1044:
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
	je	.L1046
	lhi	%r1,0
	srl	%r2,4064(%r4)
	lr	%r3,%r2
.L1047:
	lr	%r2,%r1
	br	%r14
.L1046:
	ltr	%r4,%r4
	ber	%r14
	lr	%r1,%r2
	srl	%r1,0(%r4)
	lhi	%r5,32
	sr	%r5,%r4
	sll	%r2,0(%r5)
	srl	%r3,0(%r4)
	or	%r3,%r2
	j	.L1047
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
	larl	%r13,.L1053
	lr	%r4,%r3
	l	%r5,.L1054-.L1053(%r13)
	nr	%r5,%r2
	l	%r0,.L1054-.L1053(%r13)
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
	n	%r1,.L1054-.L1053(%r13)
	n	%r3,.L1054-.L1053(%r13)
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
.L1053:
.L1054:
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
	je	.L1059
	ahi	%r2,-1
.L1059:
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
	larl	%r13,.L1067
	lr	%r0,%r2
	lr	%r1,%r3
	srdl	%r2,1
	l	%r12,.L1068-.L1067(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L1068-.L1067(%r13)
	nr	%r12,%r3
	lr	%r2,%r0
	lr	%r3,%r1
	slr	%r3,%r12
	slbr	%r2,%r4
	lr	%r4,%r2
	lr	%r5,%r3
	srdl	%r4,2
	l	%r12,.L1069-.L1067(%r13)
	nr	%r12,%r4
	lr	%r0,%r12
	l	%r12,.L1069-.L1067(%r13)
	nr	%r12,%r5
	lr	%r1,%r12
	l	%r12,.L1069-.L1067(%r13)
	nr	%r12,%r2
	lr	%r4,%r12
	l	%r12,.L1069-.L1067(%r13)
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
	l	%r1,.L1070-.L1067(%r13)
	nr	%r1,%r4
	lr	%r2,%r1
	l	%r1,.L1070-.L1067(%r13)
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
.L1067:
.L1070:
	.long	252645135
.L1069:
	.long	858993459
.L1068:
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
	larl	%r5,.L1073
	lr	%r1,%r2
	srl	%r2,1
	n	%r2,.L1074-.L1073(%r5)
	sr	%r1,%r2
	lr	%r2,%r1
	srl	%r2,2
	n	%r2,.L1075-.L1073(%r5)
	n	%r1,.L1075-.L1073(%r5)
	ar	%r1,%r2
	lr	%r2,%r1
	srl	%r2,4
	ar	%r1,%r2
	n	%r1,.L1076-.L1073(%r5)
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
.L1073:
.L1076:
	.long	252645135
.L1075:
	.long	858993459
.L1074:
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
	larl	%r5,.L1084
	lr	%r3,%r2
	srl	%r3,31
	ld	%f2,.L1085-.L1084(%r5)
	j	.L1080
.L1078:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1079
	mdbr	%f0,%f0
.L1080:
	tml	%r2,1
	je	.L1078
	mdbr	%f2,%f0
	j	.L1078
.L1079:
	ltr	%r3,%r3
	je	.L1082
	ld	%f0,.L1085-.L1084(%r5)
	ddbr	%f0,%f2
	br	%r14
.L1082:
	ldr	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1084:
.L1085:
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
	larl	%r5,.L1093
	lr	%r3,%r2
	srl	%r3,31
	le	%f2,.L1094-.L1093(%r5)
	j	.L1089
.L1087:
	lr	%r1,%r2
	srl	%r1,31
	ar	%r1,%r2
	sra	%r1,1
	lr	%r2,%r1
	ltr	%r1,%r1
	je	.L1088
	meebr	%f0,%f0
.L1089:
	tml	%r2,1
	je	.L1087
	meebr	%f2,%f0
	j	.L1087
.L1088:
	ltr	%r3,%r3
	je	.L1091
	le	%f0,.L1094-.L1093(%r5)
	debr	%f0,%f2
	br	%r14
.L1091:
	ler	%f0,%f2
	br	%r14
	.section	.rodata
	.align	8
.L1093:
.L1094:
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
	jl	.L1097
	jh	.L1098
	clr	%r3,%r5
	jl	.L1099
	jh	.L1100
	lhi	%r2,1
	br	%r14
.L1097:
	lhi	%r2,0
	br	%r14
.L1098:
	lhi	%r2,2
	br	%r14
.L1099:
	lhi	%r2,0
	br	%r14
.L1100:
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
