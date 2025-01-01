	.LEVEL 1.1
	.text
	.align 4
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comb,>>= %r25,%r26,.L2
	copy %r26,%r28
	comib,=,n 0,%r24,.L3
	ldo -1(%r25),%r25
	ldo -1(%r26),%r21
.L4:
	ldbx %r25(%r24),%r20
	addl %r21,%r24,%r19
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L4
	stb %r20,0(%r19)
.L3:
	bv,n %r0(%r2)
.L2:
	comb,= %r25,%r26,.L3
	nop
	comib,= 0,%r24,.L3
	nop
	ldi 0,%r19
.L5:
	ldbx %r25(%r19),%r21
	addl %r28,%r19,%r20
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L5
	stb %r21,0(%r20)
	b,n .L3
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 4
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r23,%r23,.L16
	extru %r24,31,8,%r24
.L9:
	ldb 0(%r25),%r28
	comb,= %r24,%r28,.L17
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	comib,<> 0,%r23,.L9
	ldo 1(%r26),%r26
	b .L8
	ldi 0,%r28
.L16:
	b .L8
	ldi 0,%r28
.L17:
	ldo 1(%r26),%r28
.L8:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 4
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L24
	extru %r25,31,8,%r25
.L19:
	ldb 0(%r26),%r28
	comb,= %r25,%r28,.L25
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L19
	ldo 1(%r26),%r26
	b .L18
	ldi 0,%r28
.L24:
	b .L18
	ldi 0,%r28
.L25:
	copy %r26,%r28
.L18:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 4
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L36
	ldi 0,%r28
.L27:
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	comb,<>,n %r28,%r19,.L35
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	comib,<> 0,%r24,.L27
	ldo 1(%r25),%r25
	b .L26
	ldi 0,%r28
.L35:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L26:
.L36:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 4
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L38
	copy %r26,%r28
	ldi 0,%r19
.L39:
	ldbx %r25(%r19),%r21
	addl %r28,%r19,%r20
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L39
	stb %r21,0(%r20)
.L38:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 4
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r25,31,8,%r25
	ldo -1(%r24),%r24
	addl %r26,%r24,%r24
	ldo -1(%r26),%r26
.L42:
	comb,= %r26,%r24,.L45
	copy %r24,%r28
	ldb 0(%r24),%r19
	comb,<> %r25,%r19,.L42
	ldo -1(%r24),%r24
	b,n .L41
.L45:
	ldi 0,%r28
.L41:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 4
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L47
	copy %r26,%r28
	addl %r26,%r24,%r24
	copy %r26,%r19
	extru %r25,31,8,%r25
	stb %r25,0(%r19)
.L50:
	ldo 1(%r19),%r19
	comb,<>,n %r19,%r24,.L50
	stb %r25,0(%r19)
.L47:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 4
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	ldb 0(%r25),%r19
	extrs %r19,31,8,%r20
	comib,= 0,%r20,.L52
	stb %r19,0(%r26)
.L53:
	ldbs,mb 1(%r25),%r19
	extrs %r19,31,8,%r20
	comib,<> 0,%r20,.L53
	stbs,mb %r19,1(%r28)
.L52:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 4
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	comib,= 0,%r28,.L61
	extru %r25,31,8,%r25
	ldb 0(%r26),%r28
.L63:
	comb,=,n %r25,%r28,.L62
	ldbs,mb 1(%r26),%r28
	extrs %r28,31,8,%r28
	comib,<>,n 0,%r28,.L63
	ldb 0(%r26),%r28
	b .L55
	copy %r26,%r28
.L61:
	b .L55
	copy %r26,%r28
.L62:
	copy %r26,%r28
.L55:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 4
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
.L66:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	b,n .L65
	comib,<> 0,%r19,.L66
	ldo 1(%r28),%r28
	ldi 0,%r28
.L65:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 4
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldb 0(%r25),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L70
	ldb 0(%r26),%r28
.L73:
	comib,=,n 0,%r28,.L70
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldbs,mb 1(%r25),%r28
	extrs %r28,31,8,%r28
	comb,=,n %r28,%r19,.L73
	ldb 0(%r26),%r28
.L70:
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	bv %r0(%r2)
	sub %r19,%r28,%r28
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 4
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	comib,= 0,%r28,.L75
	copy %r26,%r28
	ldbs,mb 1(%r28),%r19
.L79:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L79
	ldbs,mb 1(%r28),%r19
.L75:
	bv %r0(%r2)
	sub %r28,%r26,%r28
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 4
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comib,= 0,%r24,.L85
	ldo -1(%r24),%r22
	ldb 0(%r26),%r28
	copy %r26,%r19
	comib,= 0,%r28,.L83
	addl %r26,%r22,%r22
.L82:
	ldb 0(%r25),%r20
	comclr,= %r22,%r19,%r28
	ldi 1,%r28
	comiclr,= 0,%r20,%r21
	ldi 1,%r21
	and %r28,%r21,%r28
	comib,=,n 0,%r28,.L83
	ldb 0(%r19),%r28
	comb,<>,n %r28,%r20,.L83
	ldbs,mb 1(%r19),%r28
	extru %r28,31,8,%r28
	comib,<> 0,%r28,.L82
	ldo 1(%r25),%r25
.L83:
	ldb 0(%r19),%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L80:
	bv,n %r0(%r2)
.L85:
	b .L80
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 4
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comib,>= 1,%r24,.L88
	depi 0,31,1,%r24
	addl %r26,%r24,%r19
.L90:
	ldb 1(%r26),%r28
	stb %r28,0(%r25)
	ldb 0(%r26),%r28
	stb %r28,1(%r25)
	ldo 2(%r26),%r26
	comb,<> %r19,%r26,.L90
	ldo 2(%r25),%r25
.L88:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 4
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	depi -1,26,1,%r26
	ldo -97(%r26),%r28
	comiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 4
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comiclr,<< 127,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 4
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comiclr,= 9,%r26,%r0
	comiclr,<> 32,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 4
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comiclr,= 127,%r26,%r0
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 4
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 4
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -33(%r26),%r28
	comiclr,<< 93,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 4
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -97(%r26),%r28
	comiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 4
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r26),%r28
	comiclr,<< 94,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 4
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -9(%r26),%r28
	comiclr,>>= 4,%r28,%r0
	comiclr,<> 32,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 4
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -65(%r26),%r28
	comiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 4
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -127(%r26),%r19
	comiclr,>>= 32,%r19,%r0
	comiclr,<< 31,%r26,%r19
	ldi 1,%r19
	comib,<> 0,%r19,.L102
	ldi 1,%r28
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L102
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L102:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 4
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 4
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 254,%r28
	comb,>>= %r28,%r26,.L113
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L110
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L111
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L112
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
	b,n .L107
.L113:
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
.L107:
	bv,n %r0(%r2)
.L110:
	b .L107
	ldi 1,%r28
.L111:
	b .L107
	ldi 1,%r28
.L112:
	b .L107
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 4
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r19
	comib,>>= 9,%r19,.L114
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L114:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 4
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bv %r0(%r2)
	extru %r26,31,7,%r28
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.align 4
.globl fdim
	.type	fdim, @function
fdim:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L121
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L126
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L124
	fcpy,dbl %fr0,%fr4
	b,n .L118
.L124:
	fsub,dbl %fr5,%fr7,%fr4
.L118:
.L126:
	bv,n %r0(%r2)
.L121:
	b .L118
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.align 4
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b .L127
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L131
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L133
	b .L127
	fcpy,sgl %fr0,%fr4L
.L133:
	fsub,sgl %fr4L,%fr5L,%fr4L
.L127:
	bv,n %r0(%r2)
.L131:
	b .L127
	fcpy,sgl %fr5L,%fr4L
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 4
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L141
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L142
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L137
	comib,= 0,%r21,.L135
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L135:
	bv,n %r0(%r2)
.L137:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L138
	ldi 1,%r21
	ldi 0,%r21
.L138:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L135
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L135
.L141:
	b .L135
	fcpy,dbl %fr7,%fr4
.L142:
	b .L135
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 4
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b .L150
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L144
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L146
	comiclr,<> 0,%r28,%r0
	b,n .L144
	fcpy,sgl %fr5L,%fr4L
.L144:
	bv,n %r0(%r2)
.L146:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L147
	ldi 1,%r28
	ldi 0,%r28
.L147:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L144
	nop
	b .L144
	fcpy,sgl %fr5L,%fr4L
.L150:
	b .L144
	fcpy,sgl %fr5L,%fr4L
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 4
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L159
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L160
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L155
	comib,= 0,%r21,.L153
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L153:
	bv,n %r0(%r2)
.L155:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L156
	ldi 1,%r21
	ldi 0,%r21
.L156:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L153
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L153
.L159:
	b .L153
	fcpy,dbl %fr7,%fr4
.L160:
	b .L153
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 4
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L168
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L169
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L164
	comib,= 0,%r21,.L162
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L162:
	bv,n %r0(%r2)
.L164:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L165
	ldi 1,%r21
	ldi 0,%r21
.L165:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L162
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L162
.L168:
	b .L162
	fcpy,dbl %fr7,%fr4
.L169:
	b .L162
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 4
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b .L177
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L171
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L173
	comib,= 0,%r28,.L171
	fcpy,sgl %fr5L,%fr4L
	b .L171
	fcpy,sgl %fr22L,%fr4L
.L173:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L174
	ldi 1,%r28
	ldi 0,%r28
.L174:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L180
	fcpy,sgl %fr5L,%fr4L
	fcpy,sgl %fr22L,%fr5L
	fcpy,sgl %fr5L,%fr4L
.L171:
.L180:
	bv,n %r0(%r2)
.L177:
	b .L171
	fcpy,sgl %fr5L,%fr4L
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 4
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L187
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L188
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L183
	comib,= 0,%r21,.L181
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L181:
	bv,n %r0(%r2)
.L183:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L184
	ldi 1,%r21
	ldi 0,%r21
.L184:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L181
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L181
.L187:
	b .L181
	fcpy,dbl %fr7,%fr4
.L188:
	b .L181
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.section	.rodata
	.align 4
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align 4
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r26,%r26,.L193
	addil LR's.0-$global$,%r27
	ldo RR's.0-$global$(%r1),%r1
	ldil LR'digits,%r19
	ldo RR'digits(%r19),%r19
.L192:
	extru %r26,31,6,%r28
	ldbx %r19(%r28),%r28
	stb %r28,0(%r1)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L192
	ldo 1(%r1),%r1
.L191:
	stb %r0,0(%r1)
	addil LR's.0-$global$,%r27
	bv %r0(%r2)
	ldo RR's.0-$global$(%r1),%r28
.L193:
	b .L191
	ldo RR's.0-$global$(%r1),%r1
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align 4
.globl srand
	.type	srand, @function
srand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -1(%r26),%r26
	addil LR'seed-$global$,%r27
	ldo RR'seed-$global$(%r1),%r1
	stw %r0,0(%r1)
	bv %r0(%r2)
	stw %r26,4(%r1)
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 4
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LR'seed-$global$,%r27
	ldo RR'seed-$global$(%r1),%r1
	ldw 0(%r1),%r21
	fldws 4(%r1),%fr22L
	ldil L'1284865837,%r29
	ldil L'1481765933,%r28
	ldo R'1481765933(%r28),%r28
	ldo R'1284865837(%r29),%r29
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23R
	stws %r21,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr23R,%fr23L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r22,%r24,%r21
	copy %r20,%r29
	addl %r19,%r21,%r28
	addi 1,%r29,%r29
	addc %r28,%r0,%r28
	stw %r28,0(%r1)
	stw %r29,4(%r1)
	bv %r0(%r2)
	extru %r28,30,31,%r28
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 4
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,=,n %r25,%r25,.L200
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L197:
	bv,n %r0(%r2)
.L200:
	stw %r0,4(%r26)
	b .L197
	stw %r0,0(%r26)
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 4
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r28
	comib,=,n 0,%r28,.L202
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L202:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L201
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L201:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 4
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=11
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r11,128(%r30)
	stw %r10,-124(%r30)
	stw %r9,-120(%r30)
	stw %r8,-116(%r30)
	stw %r7,-112(%r30)
	stw %r6,-108(%r30)
	stw %r5,-104(%r30)
	stw %r4,-100(%r30)
	stw %r3,-96(%r30)
	copy %r26,%r7
	copy %r25,%r11
	copy %r24,%r10
	copy %r23,%r6
	ldw 0(%r24),%r5
	comib,= 0,%r5,.L205
	ldw -180(%r30),%r9
	copy %r25,%r3
	ldi 0,%r4
.L207:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,= 0,%r28,.L204
	copy %r3,%r8
	ldo 1(%r4),%r4
	comb,<> %r4,%r5,.L207
	addl %r3,%r6,%r3
.L205:
	ldo 1(%r5),%r28
	stw %r28,0(%r10)
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r6,%r24
	copy %r7,%r25
	bl memcpy,%r2
	addl %r11,%r29,%r26
	copy %r28,%r8
.L204:
	copy %r8,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r10
	ldw -120(%r30),%r9
	ldw -116(%r30),%r8
	ldw -112(%r30),%r7
	ldw -108(%r30),%r6
	ldw -104(%r30),%r5
	ldw -100(%r30),%r4
	ldw -96(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r11
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 4
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r9,128(%r30)
	stw %r8,-124(%r30)
	stw %r7,-120(%r30)
	stw %r6,-116(%r30)
	stw %r5,-112(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	copy %r26,%r5
	copy %r23,%r6
	ldw 0(%r24),%r7
	comib,= 0,%r7,.L212
	ldw -180(%r30),%r9
	copy %r25,%r3
	ldi 0,%r4
.L211:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,= 0,%r28,.L209
	copy %r3,%r8
	ldo 1(%r4),%r4
	comb,<> %r4,%r7,.L211
	addl %r3,%r6,%r3
	ldi 0,%r8
.L209:
	copy %r8,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r8
	ldw -120(%r30),%r7
	ldw -116(%r30),%r6
	ldw -112(%r30),%r5
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r9
.L212:
	b .L209
	ldi 0,%r8
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 4
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 4
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,64(%r30)
	stw %r3,-60(%r30)
	copy %r26,%r3
.L217:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r28,.L217
	ldo 1(%r3),%r3
	ldi 43,%r19
	comb,= %r19,%r4,.L223
	ldi 45,%r19
	comb,<> %r19,%r4,.L219
	copy %r28,%r20
	ldi 1,%r20
.L218:
	ldo 1(%r3),%r3
.L219:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,<< 9,%r19,.L226
	sub %r0,%r28,%r19
	sh2addl %r28,%r28,%r28 
.L227:
	zdep %r28,30,31,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L227
	sh2addl %r28,%r28,%r28 
	sub %r0,%r28,%r19
.L226:
	comiclr,<> 0,%r20,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L223:
	b .L218
	copy %r28,%r20
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 4
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,64(%r30)
	stw %r3,-60(%r30)
	copy %r26,%r3
.L230:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r28,.L230
	ldo 1(%r3),%r3
	ldi 43,%r19
	comb,= %r19,%r4,.L236
	ldi 45,%r19
	comb,<> %r19,%r4,.L232
	copy %r28,%r20
	ldi 1,%r20
.L231:
	ldo 1(%r3),%r3
.L232:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,<< 9,%r19,.L239
	sub %r0,%r28,%r19
	sh2addl %r28,%r28,%r28 
.L240:
	zdep %r28,30,31,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L240
	sh2addl %r28,%r28,%r28 
	sub %r0,%r28,%r19
.L239:
	comiclr,<> 0,%r20,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L236:
	b .L231
	copy %r28,%r20
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 4
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r6,64(%r30)
	stw %r5,-60(%r30)
	stw %r4,-56(%r30)
	stw %r3,-52(%r30)
	copy %r26,%r3
.L243:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r20,.L243
	ldo 1(%r3),%r3
	ldi 43,%r28
	comb,= %r28,%r4,.L244
	ldi 45,%r28
	comb,<>,n %r28,%r4,.L245
	ldi 1,%r20
.L244:
	ldo 1(%r3),%r3
.L245:
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	comiclr,>>= 9,%r28,%r0
	b,n .L249
	ldi 0,%r28
	ldi 0,%r29
	shd %r28,%r29,30,%r21
.L251:
	zdep %r29,29,30,%r22
	add %r29,%r22,%r29
	addc %r28,%r21,%r28
	shd %r28,%r29,31,%r28
	zdep %r29,30,31,%r29
	ldo 1(%r3),%r3
	ldb -1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	copy %r19,%r6
	extrs %r19,0,1,%r5
	sub %r29,%r6,%r29
	subb %r28,%r5,%r28
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L251
	shd %r28,%r29,30,%r21
.L246:
	comib,<> 0,%r20,.L252
	ldw -84(%r30),%r2
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L252:
	ldw -60(%r30),%r5
	ldw -56(%r30),%r4
	ldw -52(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r6
.L249:
	ldi 0,%r28
	ldi 0,%r29
	b,n .L246
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 4
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=8,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r8,128(%r30)
	stw %r7,-124(%r30)
	stw %r6,-120(%r30)
	stw %r5,-116(%r30)
	stw %r4,-112(%r30)
	stw %r3,-108(%r30)
	ldo -104(%r30),%r1
	fstds,ma %fr12,8(%r1)
	copy %r26,%r7
	copy %r25,%r6
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	movb,<> %r24,%r3,.L256
	ldw -180(%r30),%r8
	b .L253
	ldi 0,%r5
.L258:
.L255:
	comib,= 0,%r3,.L260
	ldi 0,%r5
.L256:
	extru %r3,30,31,%r4
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r6,%r29,%r5
	copy %r5,%r25
	copy %r7,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,<,n %r28,%r28,.L258
	copy %r4,%r3
	comib,>= 0,%r28,.L253
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	b .L255
	addl %r5,%r28,%r6
.L260:
.L253:
	copy %r5,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r7
	ldw -120(%r30),%r6
	ldw -116(%r30),%r5
	ldw -112(%r30),%r4
	ldw -108(%r30),%r3
	ldo -104(%r30),%r1
	fldds,ma 8(%r1),%fr12
	bv %r0(%r2)
	ldwm -128(%r30),%r8
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 4
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=8,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r8,128(%r30)
	stw %r7,-124(%r30)
	stw %r6,-120(%r30)
	stw %r5,-116(%r30)
	stw %r4,-112(%r30)
	stw %r3,-108(%r30)
	ldo -104(%r30),%r1
	fstds,ma %fr12,8(%r1)
	copy %r26,%r6
	copy %r25,%r5
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	ldw -180(%r30),%r8
	movb,<> %r24,%r3,.L264
	ldw -184(%r30),%r7
	b .L261
	ldi 0,%r4
.L263:
	extrs %r3,30,31,%r3
.L268:
	comib,= 0,%r3,.L267
	ldi 0,%r4
.L264:
	extrs %r3,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r5,%r29,%r4
	copy %r7,%r24
	copy %r4,%r25
	copy %r6,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	or,<> %r28,%r0,%r28
	b,n .L261
	comib,>=,n 0,%r28,.L268
	extrs %r3,30,31,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
	b .L263
	ldo -1(%r3),%r3
.L267:
.L261:
	copy %r4,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r7
	ldw -120(%r30),%r6
	ldw -116(%r30),%r5
	ldw -112(%r30),%r4
	ldw -108(%r30),%r3
	ldo -104(%r30),%r1
	fldds,ma 8(%r1),%fr12
	bv %r0(%r2)
	ldwm -128(%r30),%r8
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 4
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r20
	copy %r25,%r19
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	copy %r29,%r28
	copy %r20,%r26
	copy %r19,%r25
	.IMPORT $$remI,MILLICODE
	bl $$remI,%r31
	nop
	bv %r0(%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 4
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrs %r25,0,1,%r29
	copy %r29,%r28
	xor %r29,%r25,%r19
	xor %r26,%r29,%r20
	sub %r20,%r29,%r29
	subb %r19,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 4
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r9,128(%r30)
	stw %r8,-124(%r30)
	stw %r7,-120(%r30)
	stw %r6,-116(%r30)
	stw %r5,-112(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	copy %r28,%r3
	copy %r25,%r7
	copy %r26,%r6
	copy %r23,%r9
	bl __divdi3,%r2
	copy %r24,%r8
	copy %r28,%r5
	copy %r29,%r4
	copy %r9,%r23
	copy %r8,%r24
	copy %r7,%r25
	bl __moddi3,%r2
	copy %r6,%r26
	stw %r5,0(%r3)
	stw %r4,4(%r3)
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	copy %r3,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r8
	ldw -120(%r30),%r7
	ldw -116(%r30),%r6
	ldw -112(%r30),%r5
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r9
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 4
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 4
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	copy %r26,%r20
	copy %r25,%r19
	bl $$divI,%r31
	nop
	copy %r29,%r28
	copy %r20,%r26
	copy %r19,%r25
	bl $$remI,%r31
	nop
	bv %r0(%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 4
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrs %r25,0,1,%r29
	copy %r29,%r28
	xor %r29,%r25,%r19
	xor %r26,%r29,%r20
	sub %r20,%r29,%r29
	subb %r19,%r28,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 4
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r9,128(%r30)
	stw %r8,-124(%r30)
	stw %r7,-120(%r30)
	stw %r6,-116(%r30)
	stw %r5,-112(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	copy %r28,%r3
	copy %r25,%r7
	copy %r26,%r6
	copy %r23,%r9
	bl __divdi3,%r2
	copy %r24,%r8
	copy %r28,%r5
	copy %r29,%r4
	copy %r9,%r23
	copy %r8,%r24
	copy %r7,%r25
	bl __moddi3,%r2
	copy %r6,%r26
	stw %r5,0(%r3)
	stw %r4,4(%r3)
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	copy %r3,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r8
	ldw -120(%r30),%r7
	ldw -116(%r30),%r6
	ldw -112(%r30),%r5
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r9
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 4
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r28
	comiclr,<> 0,%r28,%r0
	b,n .L276
.L284:
	comb,=,n %r25,%r28,.L283
	ldws,mb 4(%r26),%r28
	comib,<>,n 0,%r28,.L284
	ldw 0(%r26),%r28
	b .L279
	copy %r26,%r28
.L283:
	copy %r26,%r28
.L279:
	ldw 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	ldi 0,%r28
.L276:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 4
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<>,n %r28,%r19,.L287
	ldw 0(%r26),%r28
.L292:
	comib,=,n 0,%r28,.L287
	ldw 0(%r25),%r28
	comib,=,n 0,%r28,.L287
	ldws,mb 4(%r26),%r19
	ldws,mb 4(%r25),%r28
	comb,=,n %r28,%r19,.L292
	ldw 0(%r26),%r28
.L287:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	ldi -1,%r28
	comclr,>= %r19,%r20,%r21
	ldi 1,%r21
	comclr,> %r19,%r20,%r0
	copy %r21,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 4
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	ldi 0,%r19
.L294:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L294
	ldo 4(%r19),%r19
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 4
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r28
	comib,= 0,%r28,.L299
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L301:
	comib,<>,n 0,%r19,.L301
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
.L302:
	bv %r0(%r2)
	extrs %r28,29,30,%r28
.L299:
	b .L302
	sub %r28,%r26,%r28
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 4
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L312
	ldi 0,%r28
.L304:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r19
	comclr,= %r19,%r28,%r0
	b,n .L306
	comib,=,n 0,%r28,.L306
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L304
	ldo 4(%r25),%r25
	b .L303
	ldi 0,%r28
.L306:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L303:
.L312:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 4
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L321
	ldi 0,%r28
.L314:
	ldw 0(%r26),%r28
	comb,=,n %r25,%r28,.L320
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L314
	ldo 4(%r26),%r26
	b .L313
	ldi 0,%r28
.L320:
	copy %r26,%r28
.L313:
.L321:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 4
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L333
	ldi 0,%r28
.L323:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<>,n %r28,%r19,.L332
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L323
	ldo 4(%r25),%r25
	b .L322
	ldi 0,%r28
.L332:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L322:
.L333:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 4
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L335
	copy %r26,%r28
	ldi 0,%r19
.L336:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L336
	stw %r21,0(%r20)
.L335:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 4
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comb,= %r25,%r26,.L339
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>>,n %r19,%r20,.L340
	ldi 0,%r19
	comclr,<> %r19,%r24,%r0
	b,n .L339
.L341:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r24,.L341
	stw %r21,0(%r20)
	b,n .L339
.L340:
	comib,= 0,%r24,.L339
	ldo -1(%r24),%r19
.L342:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo -1(%r19),%r19
	comib,<> -1,%r19,.L342
	stw %r21,0(%r20)
.L339:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 4
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L348
	copy %r26,%r28
	ldi 0,%r19
.L349:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L349
	stw %r25,0(%r20)
.L348:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 4
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comclr,>> %r25,%r26,%r0
	b,n .L352
	comib,=,n 0,%r24,.L351
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L354:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L354
	stb %r19,0(%r28)
.L351:
	bv,n %r0(%r2)
.L352:
	comb,= %r25,%r26,.L351
	nop
	comib,= 0,%r24,.L351
	nop
	ldi 0,%r28
.L355:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r24,%r28,.L355
	stb %r20,0(%r19)
	b,n .L351
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 4
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,26,.L359
	extru %r26,30,31,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
.L360:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L361
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
.L362:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L359:
	uaddcm %r0,%r24,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	b .L360
	zvdep %r26,32,%r29
.L361:
	zdep %r25,30,31,%r19
	sub %r0,%r24,%r24
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r20
	subi 31,%r20,%r20
	mtsar %r20
	zvdep %r19,32,%r19
	mtsar %r24
	vshd %r0,%r26,%r26
	or %r19,%r26,%r26
	b .L362
	vshd %r0,%r25,%r25
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 4
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,26,.L364
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L365:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L366
	sub %r0,%r24,%r24
	extru %r19,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r25
	ldi 0,%r26
.L367:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L364:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	b .L365
	vshd %r0,%r25,%r28
.L366:
	extru %r26,30,31,%r19
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r20
	mtsar %r20
	vshd %r0,%r19,%r19
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r25,32,%r25
	or %r19,%r25,%r25
	b .L367
	zvdep %r26,32,%r26
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 4
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	subi 32,%r25,%r25
	mtsar %r25
	bv %r0(%r2)
	vshd %r26,%r26,%r28
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 4
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	bv %r0(%r2)
	vshd %r26,%r26,%r28
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 4
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	subi 32,%r25,%r25
	mtsar %r25
	bv %r0(%r2)
	vshd %r26,%r26,%r28
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 4
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	bv %r0(%r2)
	vshd %r26,%r26,%r28
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 4
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r26
	extru %r25,31,4,%r25
	subi 31,%r25,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	sub %r0,%r25,%r25
	extru %r25,31,4,%r25
	mtsar %r25
	vshd %r0,%r26,%r26
	or %r28,%r26,%r28
	bv %r0(%r2)
	extru %r28,31,16,%r28
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 4
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r26
	extru %r25,31,4,%r25
	mtsar %r25
	vshd %r0,%r26,%r28
	sub %r0,%r25,%r25
	extru %r25,31,4,%r25
	subi 31,%r25,%r25
	mtsar %r25
	zvdep %r26,32,%r26
	or %r28,%r26,%r28
	bv %r0(%r2)
	extru %r28,31,16,%r28
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 4
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,8,%r26
	extru %r25,31,3,%r25
	subi 31,%r25,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	sub %r0,%r25,%r25
	extru %r25,31,3,%r25
	mtsar %r25
	vshd %r0,%r26,%r26
	or %r28,%r26,%r28
	bv %r0(%r2)
	extru %r28,31,8,%r28
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 4
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,8,%r26
	extru %r25,31,3,%r25
	mtsar %r25
	vshd %r0,%r26,%r28
	sub %r0,%r25,%r25
	extru %r25,31,3,%r25
	subi 31,%r25,%r25
	mtsar %r25
	zvdep %r26,32,%r26
	or %r28,%r26,%r28
	bv %r0(%r2)
	extru %r28,31,8,%r28
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 4
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r26
	extru %r26,23,24,%r28
	zdep %r26,23,24,%r26
	extru %r26,31,16,%r26
	bv %r0(%r2)
	or %r28,%r26,%r28
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 4
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,7,8,%r21
	extru %r26,23,24,%r28
	zdepi -1,23,8,%r19
	and %r28,%r19,%r19
	zdep %r26,23,24,%r20
	ldil L'16711680,%r28
	and %r20,%r28,%r20
	zdep %r26,7,8,%r26
	or %r26,%r21,%r26
	or %r19,%r26,%r28
	bv %r0(%r2)
	or %r20,%r28,%r28
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 4
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r25,7,8,%r23
	extru %r25,23,24,%r20
	zdepi -1,23,8,%r31
	and %r20,%r31,%r20
	shd %r25,%r26,24,%r19
	ldil L'16711680,%r22
	and %r19,%r22,%r19
	zdep %r25,7,8,%r29
	zdep %r26,23,24,%r28
	extru %r26,7,8,%r21
	shd %r25,%r26,8,%r25
	zdep %r26,7,8,%r26
	and %r25,%r31,%r25
	and %r28,%r22,%r28
	or %r20,%r23,%r20
	or %r19,%r20,%r19
	or %r21,%r26,%r20
	or %r25,%r20,%r25
	or %r28,%r25,%r28
	bv %r0(%r2)
	or %r29,%r19,%r29
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 4
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 0,%r28
	ldi 32,%r20
	subi 31,%r28,%r19
.L385:
	mtsar %r19
	bvb,< %r26,.L384
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L385
	subi 31,%r28,%r19
	ldi 0,%r28
.L384:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 4
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,=,n %r26,%r26,.L389
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L386
	ldi 1,%r28
.L388:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L388
	ldo 1(%r28),%r28
.L386:
	bv,n %r0(%r2)
.L389:
	b .L386
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.word	-8388609
	.align 4
.LC1:
	.word	2139095039
	.text
	.align 4
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldil LR'.LC0,%r19
	ldo RR'.LC0(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!< %fr4L,%fr22L
	ftest
	b .L391
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L393
	ldi 0,%r28
.L393:
	extru %r28,31,8,%r28
.L391:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.word	-1048577
	.word	-1
	.align 8
.LC5:
	.word	2146435071
	.word	-1
	.text
	.align 4
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldil LR'.LC4,%r19
	ldo RR'.LC4(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L395
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L397
	ldi 0,%r28
.L397:
	extru %r28,31,8,%r28
.L395:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst8
	.align 8
.LC8:
	.word	-1048577
	.word	-1
	.align 8
.LC9:
	.word	2146435071
	.word	-1
	.text
	.align 4
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldil LR'.LC8,%r19
	ldo RR'.LC8(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L399
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L401
	ldi 0,%r28
.L401:
	extru %r28,31,8,%r28
.L399:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 4
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	fcnvxf,sgl,dbl %fr23L,%fr22
	bv %r0(%r2)
	fstds %fr22,0(%r26)
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC12:
	.word	1073741824
	.align 4
.LC13:
	.word	1056964608
	.text
	.align 4
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b,n .L405
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L405
	comib,> 0,%r25,.L410
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L408
	fldws 0(%r28),%fr22L
.L410:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L408
	fldws 0(%r28),%fr22L
.L411:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L405
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L408:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L411
	extru %r25,0,1,%r28
	b .L411
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L405:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC16:
	.word	1073741824
	.word	0
	.align 8
.LC17:
	.word	1071644672
	.word	0
	.text
	.align 4
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L413
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L413
	comib,> 0,%r24,.L418
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L416
	fldds 0(%r28),%fr22
.L418:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L416
	fldds 0(%r28),%fr22
.L419:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L413
	fmpy,dbl %fr22,%fr22,%fr22
.L416:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L419
	extru %r24,0,1,%r28
	b .L419
	fmpy,dbl %fr4,%fr22,%fr4
.L413:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
	.align 8
.LC20:
	.word	1073741824
	.word	0
	.align 8
.LC21:
	.word	1071644672
	.word	0
	.text
	.align 4
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L421
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L421
	comib,> 0,%r24,.L426
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L424
	fldds 0(%r28),%fr22
.L426:
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L424
	fldds 0(%r28),%fr22
.L427:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L421
	fmpy,dbl %fr22,%fr22,%fr22
.L424:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L427
	extru %r24,0,1,%r28
	b .L427
	fmpy,dbl %fr4,%fr22,%fr4
.L421:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 4
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r24,%r24,.L429
	copy %r26,%r28
	ldi 0,%r19
.L430:
	ldbx %r25(%r19),%r21
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L430
	stb %r20,0(%r21)
.L429:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 4
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r5,64(%r30)
	stw %r4,-60(%r30)
	stw %r3,-56(%r30)
	copy %r26,%r5
	copy %r25,%r4
	bl strlen,%r2
	copy %r24,%r3
	comib,= 0,%r3,.L434
	addl %r5,%r28,%r28
.L433:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r20
	comib,= 0,%r20,.L436
	stb %r19,0(%r28)
	ldo 1(%r4),%r4
	ldo -1(%r3),%r3
	comib,<> 0,%r3,.L433
	ldo 1(%r28),%r28
.L434:
	stb %r0,0(%r28)
.L436:
	copy %r5,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r4
	ldw -56(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r5
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 4
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r25,%r25,.L445
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L447:
	comiclr,= 0,%r19,%r0
	b,n .L446
.L438:
	bv,n %r0(%r2)
.L445:
	b .L438
	copy %r25,%r28
.L446:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L447
	ldbx %r26(%r28),%r19
	b .L438
	copy %r25,%r28
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 4
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r19
	comib,= 0,%r19,.L455
	copy %r26,%r28
	copy %r25,%r21
.L452:
	ldb 0(%r21),%r19
	extrs %r19,31,8,%r19
	comib,=,n 0,%r19,.L456
	ldb 0(%r28),%r20
	extrs %r20,31,8,%r20
	comb,<> %r19,%r20,.L452
	ldo 1(%r21),%r21
.L450:
	bv,n %r0(%r2)
.L455:
	b .L450
	ldi 0,%r28
.L456:
	ldbs,mb 1(%r28),%r19
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L452
	copy %r25,%r21
	b .L450
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 4
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 0,%r28
.L459:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L459
	ldo 1(%r26),%r26
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 4
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r6,64(%r30)
	stw %r5,-60(%r30)
	stw %r4,-56(%r30)
	stw %r3,-52(%r30)
	copy %r26,%r3
	copy %r25,%r4
	bl strlen,%r2
	copy %r25,%r26
	movb,=,n %r28,%r5,.L462
	ldb 0(%r4),%r6
	extrs %r6,31,8,%r6
	copy %r6,%r25
.L467:
	bl strchr,%r2
	copy %r3,%r26
	movb,= %r28,%r3,.L462
	copy %r5,%r24
	copy %r4,%r25
	bl strncmp,%r2
	copy %r3,%r26
	comib,=,n 0,%r28,.L462
	ldo 1(%r3),%r3
	b .L467
	copy %r6,%r25
.L462:
	copy %r3,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r5
	ldw -56(%r30),%r4
	ldw -52(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r6
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 4
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b .L475
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L476
	b,n .L472
.L476:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L471
.L472:
	bv,n %r0(%r2)
.L475:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L471
	b,n .L472
.L471:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L472
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 4
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r7,128(%r30)
	stw %r6,-124(%r30)
	stw %r5,-120(%r30)
	stw %r4,-116(%r30)
	stw %r3,-112(%r30)
	copy %r26,%r3
	sub %r25,%r23,%r4
	comib,= 0,%r23,.L482
	addl %r26,%r4,%r4
	comb,>> %r23,%r25,.L488
	ldi 0,%r28
	comb,<<,n %r4,%r26,.L484
	ldb 0(%r24),%r5
	extrs %r5,31,8,%r5
	ldo 1(%r24),%r7
	b .L481
	ldo -1(%r23),%r6
.L480:
.L489:
	comb,>> %r3,%r4,.L487
	ldi 0,%r28
.L481:
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r5,%r28,.L489
	ldo 1(%r3),%r3
	copy %r6,%r24
	copy %r7,%r25
	bl memcmp,%r2
	ldo 1(%r3),%r26
	comib,<>,n 0,%r28,.L480
	ldo 1(%r3),%r3
	copy %r3,%r28
.L487:
.L478:
.L488:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r7
.L482:
	b .L478
	copy %r26,%r28
.L484:
	b .L478
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 4
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	bl memcpy,%r2
	copy %r24,%r3
	addl %r28,%r3,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC24:
	.word	1072693248
	.word	0
	.align 8
.LC25:
	.word	1071644672
	.word	0
	.text
	.align 4
.globl frexp
	.type	frexp, @function
frexp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b .L504
	fcpy,dbl %fr5,%fr4
	ldi 0,%r20
.L492:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L506
	ldi 0,%r28
	b .L511
	ldi 1,%r28
.L506:
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr23
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
.L496:
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L496
	ldo 1(%r28),%r28
.L497:
	comib,= 0,%r20,.L501
	stw %r28,0(%r24)
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L501:
	bv,n %r0(%r2)
.L504:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L492
	ldi 1,%r20
.L511:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L498
	ldi 0,%r28
.L498:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L499
	ldi 1,%r21
	ldi 0,%r21
.L499:
	and %r28,%r21,%r19
	ldi 0,%r28
	comb,= %r28,%r19,.L497
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
.L500:
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L500
	ldo -1(%r28),%r28
	b,n .L497
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 4
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,64(%r30)
	stw %r3,-60(%r30)
	copy %r26,%r21
	or %r26,%r25,%r26
	comib,= 0,%r26,.L516
	copy %r25,%r20
	ldi 0,%r3
	ldi 0,%r4
	ldi 0,%r22
	copy %r22,%r28
.L518:
	extru %r21,31,1,%r29
	sub %r0,%r29,%r26
	subb %r0,%r28,%r25
	and %r25,%r23,%r1
	and %r26,%r24,%r2
	add %r2,%r4,%r4
	addc %r1,%r3,%r3
	shd %r23,%r24,31,%r23
	shd %r20,%r21,1,%r19
	extru %r20,30,31,%r20
	copy %r19,%r21
	or %r20,%r19,%r19
	comib,<> 0,%r19,.L518
	zdep %r24,30,31,%r24
.L512:
	copy %r3,%r28
	copy %r4,%r29
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L516:
	ldi 0,%r3
	ldi 0,%r4
	b,n .L512
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 4
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	comb,<<= %r26,%r25,.L527
	ldi 1,%r19
.L520:
	comib,>,n 0,%r25,.L527
	zdep %r25,30,31,%r25
	zdep %r19,30,31,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L520
	nop
	comiclr,<> 0,%r19,%r0
	b,n .L533
.L527:
	b .L525
	ldi 0,%r20
.L524:
	extru %r19,30,31,%r19
.L534:
	comib,= 0,%r19,.L526
	extru %r25,30,31,%r25
.L525:
	comb,>>,n %r25,%r28,.L534
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L524
	or %r20,%r19,%r20
.L533:
	copy %r19,%r20
.L526:
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 4
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	extrs %r26,31,8,%r19
	extrs %r26,24+1-1,1,%r28
	comb,= %r28,%r19,.L537
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
.L535:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L537:
	b .L535
	ldi 7,%r28
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 128(%r30),%r30
	copy %r25,%r28
	copy %r26,%r20
	extrs %r25,0,1,%r19
	xor %r25,%r19,%r25
	comb,= %r19,%r28,.L544
	xor %r26,%r19,%r26
.L542:
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -148(%r30),%r2
.L545:
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L544:
	comb,<> %r19,%r20,.L542
	ldi 63,%r28
	b .L545
	ldw -148(%r30),%r2
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,=,n %r26,%r26,.L549
	ldi 0,%r28
.L548:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L548
	zdep %r25,30,31,%r25
.L546:
	bv,n %r0(%r2)
.L549:
	b .L546
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 4
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,ENTRY_GR=4
	.ENTRY
	stwm %r4,64(%r30)
	stw %r3,-60(%r30)
	extru %r24,28,29,%r21
	copy %r24,%r28
	comb,<<= %r25,%r26,.L552
	depi 0,31,3,%r28
.L555:
	comib,=,n 0,%r21,.L554
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L558:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L558
	ldo 8(%r20),%r20
.L554:
	comb,>>= %r28,%r24,.L564
	ldw -60(%r30),%r3
.L559:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L559
	stb %r20,0(%r19)
.L551:
	ldw -60(%r30),%r3
.L564:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L552:
	addl %r25,%r24,%r19
	comb,>> %r26,%r19,.L555
	nop
	comib,= 0,%r24,.L551
	ldo -1(%r24),%r28
.L556:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L556
	stb %r20,0(%r19)
	b .L564
	ldw -60(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 4
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comb,<<= %r25,%r26,.L566
	extru %r24,30,31,%r21
	ldi 0,%r28
.L577:
	comclr,<> %r28,%r21,%r0
	b,n .L568
.L567:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L567
	sth %r20,0(%r19)
.L568:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L565
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	stb %r28,0(%r26)
.L565:
	bv,n %r0(%r2)
.L566:
	addl %r25,%r24,%r28
	comb,>>,n %r26,%r28,.L577
	ldi 0,%r28
	comib,= 0,%r24,.L565
	ldo -1(%r24),%r28
.L570:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L570
	stb %r20,0(%r19)
	b,n .L565
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 4
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r24,29,30,%r22
	copy %r24,%r28
	comb,<<= %r25,%r26,.L579
	depi 0,31,2,%r28
	ldi 0,%r19
.L592:
	comclr,<> %r19,%r22,%r0
	b,n .L581
.L580:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r26,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r22,.L580
	stw %r21,0(%r20)
.L581:
	comclr,<< %r28,%r24,%r0
	b,n .L578
.L585:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L585
	stb %r20,0(%r19)
.L578:
	bv,n %r0(%r2)
.L579:
	addl %r25,%r24,%r19
	comb,>> %r26,%r19,.L592
	ldi 0,%r19
	comib,= 0,%r24,.L578
	ldo -1(%r24),%r28
.L583:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L583
	stb %r20,0(%r19)
	b,n .L578
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 4
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bl $$remI,%r31
	nop
	bv %r0(%r2)
	copy %r29,%r28
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 4
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	bv %r0(%r2)
	fcnvxf,dbl,dbl %fr22,%fr4
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 4
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	bv %r0(%r2)
	fcnvxf,dbl,sgl %fr22,%fr4L
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 4
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,128(%r30)
	stw %r3,-124(%r30)
	copy %r25,%r3
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	copy %r26,%r4
	comib,>= 0,%r28,.L598
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
.L596:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L598:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b .L596
	fadd,dbl %fr4,%fr4,%fr4
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 4
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,128(%r30)
	stw %r3,-124(%r30)
	copy %r25,%r3
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	copy %r26,%r4
	comib,>= 0,%r28,.L601
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
.L599:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L601:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b .L599
	fadd,sgl %fr4L,%fr4L,%fr4L
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 4
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	.IMPORT $$remU,MILLICODE
	bl $$remU,%r31
	nop
	bv %r0(%r2)
	copy %r29,%r28
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 4
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r26
	ldi 0,%r28
	ldi 16,%r20
	ldo 16(%r28),%r19
.L607:
	mtsar %r19
	bvb,<,n %r26,.L603
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L607
	ldo 16(%r28),%r19
.L603:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 4
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r26
	ldi 0,%r28
	ldi 16,%r20
	subi 31,%r28,%r19
.L612:
	mtsar %r19
	bvb,<,n %r26,.L608
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L612
	subi 31,%r28,%r19
.L608:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC28:
	.word	1191182336
	.text
	.align 4
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldil LR'.LC28,%r28
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!>= %fr4L,%fr22L
	ftest
	b .L617
	ldil LR'.LC28,%r28
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L613:
	bv,n %r0(%r2)
.L617:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L613
	addl %r28,%r19,%r28
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r26
	ldi 0,%r28
	copy %r28,%r19
	ldi 16,%r21
.L620:
	subi 31,%r19,%r20
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L620
	addl %r28,%r20,%r28
	bv %r0(%r2)
	extru %r28,31,1,%r28
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 4
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r26
	ldi 0,%r28
	copy %r28,%r19
	ldi 16,%r21
.L623:
	subi 31,%r19,%r20
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L623
	addl %r28,%r20,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 4
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,=,n %r26,%r26,.L628
	ldi 0,%r28
.L627:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L627
	zdep %r25,30,31,%r25
.L625:
	bv,n %r0(%r2)
.L628:
	b .L625
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,= %r26,%r26,.L636
	copy %r26,%r28
	comib,=,n 0,%r25,.L634
	ldi 0,%r28
.L632:
	extrs %r25,31+1-1,1,%r19
	and %r19,%r26,%r19
	addl %r28,%r19,%r28
	extru %r25,30,31,%r25
	comib,<> 0,%r25,.L632
	zdep %r26,30,31,%r26
.L630:
.L636:
	bv,n %r0(%r2)
.L634:
	b .L630
	copy %r25,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	comb,<<= %r26,%r25,.L645
	ldi 1,%r19
.L638:
	comib,>,n 0,%r25,.L645
	zdep %r25,30,31,%r25
	zdep %r19,30,31,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L638
	nop
	comiclr,<> 0,%r19,%r0
	b,n .L651
.L645:
	b .L643
	ldi 0,%r20
.L642:
	extru %r19,30,31,%r19
.L652:
	comib,= 0,%r19,.L644
	extru %r25,30,31,%r25
.L643:
	comb,>>,n %r25,%r28,.L652
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L642
	or %r20,%r19,%r20
.L651:
	copy %r19,%r20
.L644:
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L656
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L655
	ldi 1,%r28
	ldi 0,%r28
.L655:
	extru %r28,31,8,%r28
.L653:
	bv,n %r0(%r2)
.L656:
	b .L653
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L660
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L659
	ldi 1,%r28
	ldi 0,%r28
.L659:
	extru %r28,31,8,%r28
.L657:
	bv,n %r0(%r2)
.L660:
	b .L657
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrs %r26,0,1,%r19
	extrs %r25,0,1,%r28
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	addl %r20,%r29,%r28
	addl %r28,%r25,%r28
	bv %r0(%r2)
	copy %r26,%r29
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	copy %r25,%r28
	bv %r0(%r2)
	copy %r26,%r29
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,>= %r25,%r0,%r25
	b,n .L671
	comib,=,n 0,%r25,.L669
	ldi 0,%r31
.L665:
	ldi 0,%r28
	copy %r28,%r19
	ldi 31,%r22
.L667:
	extrs %r25,31+1-1,1,%r20
	and %r20,%r26,%r20
	addl %r28,%r20,%r28
	zdep %r26,30,31,%r26
	extrs %r25,30,31,%r25
	ldo 1(%r19),%r19
	extru %r19,31,8,%r21
	comiclr,= 0,%r25,%r20
	ldi 1,%r20
	comclr,<< %r22,%r21,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L667
	extrs %r19,31,8,%r19
.L666:
	sub %r0,%r28,%r19
	comiclr,= 0,%r31,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L671:
	sub %r0,%r25,%r25
	b .L665
	ldi 1,%r31
.L669:
	copy %r25,%r31
	b .L666
	copy %r25,%r28
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 4
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	or,>= %r26,%r0,%r26
	b,n .L680
	comiclr,<= 0,%r25,%r0
	b,n .L681
	bl __udivmodsi4,%r2
	ldi 0,%r24
	b .L683
	ldw -84(%r30),%r2
.L680:
	comib,> 0,%r25,.L682
	sub %r0,%r26,%r26
	bl __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r28
.L684:
	ldw -84(%r30),%r2
.L683:
	bv %r0(%r2)
	ldo -64(%r30),%r30
.L681:
	ldi 0,%r24
	bl __udivmodsi4,%r2
	sub %r0,%r25,%r25
	b .L684
	sub %r0,%r28,%r28
.L682:
	ldi 0,%r24
	bl __udivmodsi4,%r2
	sub %r0,%r25,%r25
	b .L683
	ldw -84(%r30),%r2
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 4
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	movb,< %r26,%r26,.L688
	ldi 1,%r24
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	bl __udivmodsi4,%r2
	ldi 1,%r24
	b .L689
	ldw -84(%r30),%r2
.L688:
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	bl __udivmodsi4,%r2
	sub %r0,%r26,%r26
	sub %r0,%r28,%r28
	ldw -84(%r30),%r2
.L689:
	bv %r0(%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 4
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r28
	extru %r25,31,16,%r25
	comb,<<= %r28,%r25,.L698
	ldi 1,%r19
	extrs %r25,31,16,%r20
.L705:
	comib,>,n 0,%r20,.L698
	zdep %r25,30,31,%r25
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<>,n 0,%r20,.L705
	extrs %r25,31,16,%r20
	comiclr,<> 0,%r19,%r0
	b,n .L704
.L698:
	b .L696
	ldi 0,%r20
.L695:
	extru %r19,30,31,%r19
.L706:
	comib,= 0,%r19,.L697
	extru %r25,30,31,%r25
.L696:
	comb,>>,n %r25,%r28,.L706
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r19,%r20,%r20
	b .L695
	extru %r20,31,16,%r20
.L704:
	copy %r19,%r20
.L697:
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	comb,<<= %r26,%r25,.L715
	ldi 1,%r19
.L708:
	comib,>,n 0,%r25,.L715
	zdep %r25,30,31,%r25
	zdep %r19,30,31,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L708
	nop
	comiclr,<> 0,%r19,%r0
	b,n .L721
.L715:
	b .L713
	ldi 0,%r20
.L712:
	extru %r19,30,31,%r19
.L722:
	comib,= 0,%r19,.L714
	extru %r25,30,31,%r25
.L713:
	comb,>>,n %r25,%r28,.L722
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L712
	or %r20,%r19,%r20
.L721:
	copy %r19,%r20
.L714:
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,26,.L724
	ldi 0,%r29
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
.L726:
	bv,n %r0(%r2)
.L724:
	comib,=,n 0,%r24,.L727
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	zvdep %r25,32,%r28
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	b .L726
	or %r28,%r26,%r28
.L727:
	copy %r25,%r28
	b .L726
	copy %r26,%r29
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 4
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,26,.L729
	copy %r25,%r28
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r25,32,%r29
.L731:
	bv,n %r0(%r2)
.L729:
	comib,=,n 0,%r24,.L732
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L731
	or %r25,%r29,%r29
.L732:
	b .L731
	copy %r26,%r29
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 4
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r25,7,8,%r23
	extru %r25,23,24,%r20
	zdepi -1,23,8,%r31
	and %r20,%r31,%r20
	shd %r25,%r26,24,%r19
	ldil L'16711680,%r22
	and %r19,%r22,%r19
	zdep %r25,7,8,%r29
	zdep %r26,23,24,%r28
	extru %r26,7,8,%r21
	shd %r25,%r26,8,%r25
	zdep %r26,7,8,%r26
	and %r25,%r31,%r25
	and %r28,%r22,%r28
	or %r20,%r23,%r20
	or %r19,%r20,%r19
	or %r21,%r26,%r20
	or %r25,%r20,%r25
	or %r28,%r25,%r28
	bv %r0(%r2)
	or %r29,%r19,%r29
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 4
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,7,8,%r21
	extru %r26,23,24,%r28
	zdepi -1,23,8,%r19
	and %r28,%r19,%r19
	zdep %r26,23,24,%r20
	ldil L'16711680,%r28
	and %r20,%r28,%r20
	zdep %r26,7,8,%r26
	or %r21,%r26,%r28
	or %r19,%r28,%r28
	bv %r0(%r2)
	or %r20,%r28,%r28
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 4
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	zdepi -1,31,16,%r20
	comclr,<< %r20,%r26,%r20
	ldi 1,%r20
	zdep %r20,27,28,%r20
	subi 16,%r20,%r28
	mtsar %r28
	vshd %r0,%r26,%r19
	zdepi -1,23,8,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,28,29,%r28
	subi 8,%r28,%r21
	mtsar %r21
	vshd %r0,%r19,%r19
	addl %r28,%r20,%r20
	ldi 240,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,29,30,%r28
	subi 4,%r28,%r21
	mtsar %r21
	vshd %r0,%r19,%r19
	addl %r28,%r20,%r20
	ldi 12,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,30,31,%r28
	subi 2,%r28,%r21
	mtsar %r21
	vshd %r0,%r19,%r19
	addl %r28,%r20,%r28
	extru %r19,30+1-1,1,%r20
	subi 2,%r19,%r19
	comiclr,= 0,%r20,%r0
	ldi 0,%r19
	bv %r0(%r2)
	addl %r19,%r28,%r28
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 4
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comb,> %r23,%r25,.L744
	ldi 0,%r28
	comb,< %r23,%r25,.L744
	ldi 2,%r28
	comb,>> %r24,%r26,.L744
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L739:
.L744:
	bv,n %r0(%r2)
	b .L739
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 4
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	bl __cmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r20
	comiclr,<> 0,%r20,%r20
	ldi 1,%r20
	zdep %r20,27,28,%r20
	mtsar %r20
	vshd %r0,%r26,%r19
	extru %r19,31,8,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,28,29,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	addl %r28,%r20,%r20
	extru %r19,31,4,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,29,30,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	addl %r28,%r20,%r20
	extru %r19,31,2,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,30,31,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	extru %r19,31,2,%r19
	addl %r28,%r20,%r28
	uaddcm %r0,%r19,%r20
	extru %r19,30,31,%r19
	subi 2,%r19,%r19
	extrs %r20,31+1-1,1,%r20
	and %r20,%r19,%r19
	bv %r0(%r2)
	addl %r19,%r28,%r28
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 4
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,26,.L748
	ldi 0,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
.L750:
	bv,n %r0(%r2)
.L748:
	comib,= 0,%r24,.L751
	mtsar %r24
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L750
	or %r25,%r29,%r29
.L751:
	copy %r25,%r28
	b .L750
	copy %r26,%r29
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 4
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	extru %r25,31,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	extru %r29,15,16,%r28
	extru %r26,15,16,%r26
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r28,%r20,%r28
	extru %r28,15,16,%r21
	extru %r28,31,16,%r28
	extru %r29,31,16,%r29
	extru %r25,15,16,%r25
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r28,%r20,%r28
	zdep %r28,15,16,%r20
	extru %r28,15,16,%r28
	xmpyu %fr22L,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	addl %r21,%r26,%r21
	addl %r28,%r21,%r28
	bv %r0(%r2)
	addl %r29,%r20,%r29
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 4
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r6,64(%r30)
	stw %r5,-60(%r30)
	stw %r4,-56(%r30)
	stw %r3,-52(%r30)
	copy %r25,%r6
	copy %r26,%r4
	copy %r23,%r5
	copy %r24,%r3
	bl __muldsi3,%r2
	copy %r24,%r25
	copy %r28,%r20
	copy %r29,%r19
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r5
	ldws -12(%sp),%r6
	addl %r6,%r29,%r28
	addl %r28,%r20,%r28
	copy %r19,%r29
	ldw -84(%r30),%r2
	ldw -60(%r30),%r5
	ldw -56(%r30),%r4
	ldw -52(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r6
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	sub %r0,%r26,%r29
	subb %r0,%r25,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 4
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	xor %r26,%r25,%r26
	extru %r26,15,16,%r19
	xor %r19,%r26,%r19
	extru %r19,23,24,%r28
	xor %r28,%r19,%r28
	extru %r28,27,28,%r19
	xor %r19,%r28,%r19
	extru %r19,31,4,%r19
	subi 31,%r19,%r19
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r19
	bv %r0(%r2)
	vextru %r28,1,%r28
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 4
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,15,16,%r28
	xor %r28,%r26,%r28
	extru %r28,23,24,%r26
	xor %r26,%r28,%r26
	extru %r26,27,28,%r19
	xor %r19,%r26,%r19
	extru %r19,31,4,%r19
	subi 31,%r19,%r19
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r19
	bv %r0(%r2)
	vextru %r28,1,%r28
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.align 4
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r25,%r28
	copy %r26,%r29
	shd %r25,%r26,1,%r20
	extru %r25,30,31,%r31
	ldil L'1431650304,%r19
	ldo 5461(%r19),%r19
	and %r31,%r19,%r21
	and %r20,%r19,%r22
	sub %r29,%r22,%r29
	subb %r28,%r21,%r28
	copy %r28,%r22
	shd %r22,%r29,2,%r22
	extru %r28,29,30,%r31
	ldil L'858996736,%r21
	ldo -3277(%r21),%r21
	and %r31,%r21,%r19
	and %r22,%r21,%r20
	and %r28,%r21,%r23
	and %r29,%r21,%r24
	add %r24,%r20,%r20
	addc %r23,%r19,%r19
	copy %r19,%r21
	zdep %r21,3,4,%r21
	extru %r20,27,28,%r29
	or %r21,%r29,%r29
	extru %r19,27,28,%r28
	add %r20,%r29,%r20
	addc %r19,%r28,%r19
	ldil L'252641280,%r28
	ldo 3855(%r28),%r28
	and %r19,%r28,%r19
	and %r20,%r28,%r28
	addl %r28,%r19,%r28
	extru %r28,15,16,%r19
	addl %r19,%r28,%r19
	extru %r19,23,24,%r28
	addl %r28,%r19,%r28
	bv %r0(%r2)
	extru %r28,31,7,%r28
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 4
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,30,31,%r28
	ldil L'1431650304,%r19
	ldo 5461(%r19),%r19
	and %r28,%r19,%r28
	sub %r26,%r28,%r26
	extru %r26,29,30,%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r19
	and %r26,%r28,%r26
	addl %r19,%r26,%r19
	extru %r19,27,28,%r28
	addl %r28,%r19,%r28
	ldil L'252641280,%r19
	ldo 3855(%r19),%r19
	and %r28,%r19,%r28
	extru %r28,15,16,%r19
	addl %r19,%r28,%r19
	extru %r19,23,24,%r28
	addl %r28,%r19,%r28
	bv %r0(%r2)
	extru %r28,31,6,%r28
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
	.align 8
.LC30:
	.word	1072693248
	.word	0
	.text
	.align 4
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r24,%r28
	ldil LR'.LC30,%r19
	ldo RR'.LC30(%r19),%r19
	b .L762
	fldds 0(%r19),%fr4
.L765:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L761
	fmpy,dbl %fr5,%fr5,%fr5
.L762:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L765
	extru %r28,0,1,%r19
	b .L765
	fmpy,dbl %fr4,%fr5,%fr4
.L761:
	comib,> 0,%r24,.L764
	ldil LR'.LC30,%r28
.L759:
	bv,n %r0(%r2)
.L764:
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr22
	b .L759
	fdiv,dbl %fr22,%fr4,%fr4
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC32:
	.word	1065353216
	.text
	.align 4
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcpy,sgl %fr4L,%fr22L
	copy %r25,%r28
	ldil LR'.LC32,%r19
	ldo RR'.LC32(%r19),%r19
	b .L769
	fldws 0(%r19),%fr4L
.L772:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L768
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L769:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L772
	extru %r28,0,1,%r19
	b .L772
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L768:
	comib,> 0,%r25,.L771
	ldil LR'.LC32,%r28
.L766:
	bv,n %r0(%r2)
.L771:
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr22L
	b .L766
	fdiv,sgl %fr22L,%fr4L,%fr4L
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 4
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comb,>> %r23,%r25,.L779
	ldi 0,%r28
	comb,<< %r23,%r25,.L779
	ldi 2,%r28
	comb,>> %r24,%r26,.L779
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L774:
.L779:
	bv,n %r0(%r2)
	b .L774
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldo 64(%r30),%r30
	bl __ucmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
.globl __cmpdi2
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
