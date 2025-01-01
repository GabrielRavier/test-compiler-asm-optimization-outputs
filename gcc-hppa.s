	.LEVEL 1.1
	.text
	.align 4
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comb,>>= %r25,%r26,.L11
	copy %r26,%r28
	ldo -1(%r25),%r25
	b .L2
	ldo -1(%r26),%r21
.L4:
	addl %r21,%r24,%r19
	stb %r20,0(%r19)
	ldo -1(%r24),%r24
.L2:
	comib,<>,n 0,%r24,.L4
	ldbx %r25(%r24),%r20
.L5:
	bv,n %r0(%r2)
.L11:
	comb,<> %r25,%r26,.L6
	ldi 0,%r19
	b,n .L5
.L7:
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	ldo 1(%r19),%r19
.L6:
	comb,<>,n %r24,%r19,.L7
	ldbx %r25(%r19),%r21
	b,n .L5
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
	b .L13
	extru %r24,31,8,%r24
.L15:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	ldo 1(%r26),%r26
.L13:
	comib,=,n 0,%r23,.L14
	ldb 0(%r25),%r28
	comb,<> %r28,%r24,.L15
	stb %r28,0(%r26)
.L14:
	ldo 1(%r26),%r28
	comiclr,<> 0,%r23,%r0
	ldi 0,%r28
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
	extru %r25,31,8,%r25
	b .L19
	copy %r26,%r28
.L21:
	ldo -1(%r24),%r24
.L19:
	comib,=,n 0,%r24,.L20
	ldb 0(%r28),%r19
	comb,<>,n %r19,%r25,.L21
	ldo 1(%r28),%r28
.L20:
	comiclr,<> 0,%r24,%r0
	ldi 0,%r28
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
	b,n .L25
.L27:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L25:
	comib,=,n 0,%r24,.L26
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	comb,=,n %r28,%r19,.L27
	ldo -1(%r24),%r24
.L26:
	ldi 0,%r28
	comb,=,n %r28,%r24,.L28
	ldb 0(%r26),%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L28:
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
	copy %r26,%r28
	b .L31
	ldi 0,%r19
.L32:
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	ldo 1(%r19),%r19
.L31:
	comb,<>,n %r24,%r19,.L32
	ldbx %r25(%r19),%r21
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
.L34:
	comib,=,n -1,%r24,.L38
	ldbx %r26(%r24),%r19
	comb,= %r19,%r25,.L39
	ldo -1(%r24),%r20
	b .L34
	copy %r20,%r24
.L39:
	b .L35
	addl %r26,%r24,%r28
.L38:
	ldi 0,%r28
.L35:
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
	copy %r26,%r28
	addl %r26,%r24,%r24
	copy %r26,%r19
	b .L41
	extru %r25,31,8,%r25
.L42:
	ldo 1(%r19),%r19
.L41:
	comb,<>,n %r24,%r19,.L42
	stb %r25,0(%r19)
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
	b .L44
	copy %r26,%r28
.L45:
	ldo 1(%r28),%r28
.L44:
	ldb 0(%r25),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L45
	ldo 1(%r25),%r25
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
	copy %r26,%r28
	extru %r25,31,8,%r25
.L49:
	ldb 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L48
	comb,<>,n %r19,%r25,.L49
	ldo 1(%r28),%r28
.L48:
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
	ldb 0(%r26),%r28
.L55:
	extrs %r28,31,8,%r28
	comb,=,n %r28,%r25,.L53
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	comib,<>,n 0,%r28,.L55
	ldb 0(%r26),%r28
	b,n .L51
.L53:
	copy %r26,%r28
.L51:
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
	b .L60
	ldb 0(%r26),%r19
.L59:
	ldo 1(%r25),%r25
	ldb 0(%r26),%r19
.L60:
	extrs %r19,31,8,%r19
	ldb 0(%r25),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L58
	ldb 0(%r26),%r28
	comib,<>,n 0,%r28,.L59
	ldo 1(%r26),%r26
.L58:
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
	copy %r26,%r28
.L63:
	ldb 0(%r28),%r20
	comib,<>,n 0,%r20,.L63
	ldo 1(%r28),%r28
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
	movb,= %r24,%r24,.L69
	copy %r26,%r19
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
.L66:
	ldb 0(%r19),%r28
	comib,=,n 0,%r28,.L70
	ldb 0(%r25),%r20
	comclr,= %r26,%r19,%r28
	ldi 1,%r28
	comiclr,= 0,%r20,%r20
	ldi 1,%r20
	and %r28,%r20,%r28
	comib,=,n 0,%r28,.L67
	ldb 0(%r19),%r20
	ldb 0(%r25),%r28
	comb,<>,n %r28,%r20,.L67
	ldo 1(%r19),%r19
	b .L66
	ldo 1(%r25),%r25
.L67:
	ldb 0(%r19),%r28
.L70:
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L65:
	bv,n %r0(%r2)
.L69:
	b .L65
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
	copy %r26,%r28
	b .L72
	addl %r26,%r24,%r24
.L73:
	stb %r19,0(%r25)
	ldb 0(%r28),%r19
	stb %r19,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L72:
	sub %r24,%r28,%r19
	comib,<,n 1,%r19,.L73
	ldb 1(%r28),%r19
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
	comib,<> 0,%r19,.L85
	ldi 1,%r28
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L85
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L85:
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
	comb,>>= %r28,%r26,.L95
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L92
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L93
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L94
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
	b,n .L91
.L95:
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
.L91:
	bv,n %r0(%r2)
.L92:
	b .L91
	ldi 1,%r28
.L93:
	b .L91
	ldi 1,%r28
.L94:
	b .L91
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
	comib,>>= 9,%r19,.L97
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L97:
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
	b .L103
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L108
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L106
	fcpy,dbl %fr0,%fr4
	b,n .L101
.L106:
	fsub,dbl %fr5,%fr7,%fr4
.L101:
.L108:
	bv,n %r0(%r2)
.L103:
	b .L101
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
	b .L110
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L113
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L115
	b .L110
	fcpy,sgl %fr0,%fr4L
.L115:
	fsub,sgl %fr4L,%fr5L,%fr4L
.L110:
	bv,n %r0(%r2)
.L113:
	b .L110
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
	b .L123
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L124
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L119
	comib,<= 0,%r28,.L118
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L118:
	bv,n %r0(%r2)
.L119:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L120
	ldi 1,%r21
	ldi 0,%r21
.L120:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L118
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L118
.L123:
	b .L118
	fcpy,dbl %fr7,%fr4
.L124:
	b .L118
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
	b .L132
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L127
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L128
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L127
	fcpy,sgl %fr5L,%fr4L
.L127:
	bv,n %r0(%r2)
.L128:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L129
	ldi 1,%r28
	ldi 0,%r28
.L129:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L127
	nop
	b .L127
	fcpy,sgl %fr5L,%fr4L
.L132:
	b .L127
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
	b .L141
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L142
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L137
	comib,<= 0,%r28,.L136
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L136:
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
	comib,= 0,%r21,.L136
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L136
.L141:
	b .L136
	fcpy,dbl %fr7,%fr4
.L142:
	b .L136
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
	b .L150
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L151
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L146
	comib,<= 0,%r19,.L145
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L145:
	bv,n %r0(%r2)
.L146:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L147
	ldi 1,%r21
	ldi 0,%r21
.L147:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L145
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L145
.L150:
	b .L145
	fcpy,dbl %fr7,%fr4
.L151:
	b .L145
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
	b .L159
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L154
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L155
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comib,<= 0,%r28,.L154
	fcpy,sgl %fr5L,%fr4L
	b .L154
	fcpy,sgl %fr22L,%fr4L
.L155:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L156
	ldi 1,%r28
	ldi 0,%r28
.L156:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L162
	fcpy,sgl %fr5L,%fr4L
	fcpy,sgl %fr22L,%fr5L
	fcpy,sgl %fr5L,%fr4L
.L154:
.L162:
	bv,n %r0(%r2)
.L159:
	b .L154
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
	b .L169
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L170
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L165
	comib,<= 0,%r19,.L164
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L164:
	bv,n %r0(%r2)
.L165:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L166
	ldi 1,%r21
	ldi 0,%r21
.L166:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L164
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L164
.L169:
	b .L164
	fcpy,dbl %fr7,%fr4
.L170:
	b .L164
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
	addil LR's.0-$global$,%r27
	ldo RR's.0-$global$(%r1),%r1
	ldil LR'digits,%r19
	b .L173
	ldo RR'digits(%r19),%r19
.L174:
	ldbx %r19(%r28),%r28
	stb %r28,0(%r1)
	ldo 1(%r1),%r1
	extru %r26,25,26,%r26
.L173:
	comib,<>,n 0,%r26,.L174
	extru %r26,31,6,%r28
	stb %r0,0(%r1)
	addil LR's.0-$global$,%r27
	bv %r0(%r2)
	ldo RR's.0-$global$(%r1),%r28
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
	copy %r28,%r19
	stw %r28,0(%r1)
	stw %r29,4(%r1)
	bv %r0(%r2)
	extru %r19,30,31,%r28
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
	movb,=,n %r25,%r25,.L180
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L177:
	bv,n %r0(%r2)
.L180:
	stw %r0,4(%r26)
	b .L177
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
	comib,=,n 0,%r28,.L182
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L182:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L181
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L181:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 4
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=10
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r10,128(%r30)
	stw %r9,-124(%r30)
	stw %r8,-120(%r30)
	stw %r7,-116(%r30)
	stw %r6,-112(%r30)
	stw %r5,-108(%r30)
	stw %r4,-104(%r30)
	stw %r3,-100(%r30)
	copy %r26,%r7
	copy %r25,%r9
	copy %r24,%r10
	copy %r23,%r5
	ldw -180(%r30),%r8
	ldw 0(%r24),%r6
	copy %r25,%r4
	b .L185
	ldi 0,%r3
.L186:
	ldo 1(%r3),%r3
.L185:
	comb,= %r6,%r3,.L189
	copy %r4,%r25
	copy %r7,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L186
	addl %r4,%r5,%r4
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L187
	addl %r9,%r29,%r28
.L189:
	ldo 1(%r6),%r28
	stw %r28,0(%r10)
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r5,%r24
	copy %r7,%r25
	bl memcpy,%r2
	addl %r9,%r29,%r26
.L187:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r9
	ldw -120(%r30),%r8
	ldw -116(%r30),%r7
	ldw -112(%r30),%r6
	ldw -108(%r30),%r5
	ldw -104(%r30),%r4
	ldw -100(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r10
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
	copy %r26,%r6
	copy %r25,%r9
	copy %r23,%r5
	ldw -180(%r30),%r8
	ldw 0(%r24),%r7
	copy %r25,%r4
	b .L191
	ldi 0,%r3
.L192:
	ldo 1(%r3),%r3
.L191:
	comb,= %r7,%r3,.L195
	copy %r4,%r25
	copy %r6,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L192
	addl %r4,%r5,%r4
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L193
	addl %r9,%r29,%r28
.L195:
	ldi 0,%r28
.L193:
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
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	copy %r26,%r3
.L199:
	ldb 0(%r3),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L199
	ldo 1(%r3),%r3
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L205
	ldi 45,%r19
	comb,<> %r19,%r28,.L201
	ldi 0,%r20
	ldi 1,%r20
.L200:
	ldo 1(%r3),%r3
.L201:
	b .L202
	ldi 0,%r28
.L205:
	b .L200
	ldi 0,%r20
.L203:
	zdep %r28,30,31,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L202:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L203
	sh2addl %r28,%r28,%r28 
	sub %r0,%r28,%r19
	comiclr,<> 0,%r20,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 4
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	copy %r26,%r3
.L210:
	ldb 0(%r3),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L210
	ldo 1(%r3),%r3
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L216
	ldi 45,%r19
	comb,<> %r19,%r28,.L212
	ldi 0,%r20
	ldi 1,%r20
.L211:
	ldo 1(%r3),%r3
.L212:
	b .L213
	ldi 0,%r28
.L216:
	b .L211
	ldi 0,%r20
.L214:
	zdep %r28,30,31,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L213:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L214
	sh2addl %r28,%r28,%r28 
	sub %r0,%r28,%r19
	comiclr,<> 0,%r20,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 4
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r6,64(%r30)
	stw %r5,-60(%r30)
	stw %r3,-56(%r30)
	copy %r26,%r3
.L221:
	ldb 0(%r3),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L221
	ldo 1(%r3),%r3
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L227
	ldi 45,%r19
	comb,<> %r19,%r28,.L223
	ldi 0,%r22
	ldi 1,%r22
.L222:
	ldo 1(%r3),%r3
.L223:
	ldi 0,%r28
	ldi 0,%r29
	b .L230
	ldb 0(%r3),%r19
.L227:
	b .L222
	ldi 0,%r22
.L225:
	zdep %r29,29,30,%r20
	add %r29,%r20,%r29
	addc %r28,%r19,%r28
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
.L230:
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L225
	shd %r28,%r29,30,%r19
	copy %r28,%r19
	copy %r29,%r20
	comiclr,= 0,%r22,%r0
	b,n .L226
	sub %r0,%r29,%r20
	subb %r0,%r28,%r19
.L226:
	copy %r19,%r28
	copy %r20,%r29
	ldw -84(%r30),%r2
	ldw -60(%r30),%r5
	ldw -56(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r6
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 4
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=7,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r7,128(%r30)
	stw %r6,-124(%r30)
	stw %r5,-120(%r30)
	stw %r4,-116(%r30)
	stw %r3,-112(%r30)
	ldo -104(%r30),%r1
	fstds,ma %fr12,8(%r1)
	copy %r26,%r6
	copy %r25,%r5
	copy %r24,%r3
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	ldw -180(%r30),%r7
.L239:
.L232:
	comib,= 0,%r3,.L238
	extru %r3,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r5,%r29,%r4
	copy %r4,%r25
	copy %r6,%r26
	copy %r7,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,<,n %r28,%r28,.L239
	extru %r3,30,31,%r3
	comib,>= 0,%r28,.L240
	copy %r4,%r28
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
	extru %r3,30,31,%r28
	b .L232
	uaddcm %r3,%r28,%r3
.L238:
	ldi 0,%r28
.L235:
.L240:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	ldo -104(%r30),%r1
	fldds,ma 8(%r1),%fr12
	bv %r0(%r2)
	ldwm -128(%r30),%r7
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
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	ldw -180(%r30),%r8
	ldw -184(%r30),%r7
	copy %r24,%r3
	b .L242
	copy %r25,%r5
.L244:
	extrs %r3,30,31,%r3
.L242:
	comib,= 0,%r3,.L247
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
	b,n .L246
	comib,>=,n 0,%r28,.L242
	extrs %r3,30,31,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
	b .L244
	ldo -1(%r3),%r3
.L247:
	ldi 0,%r28
.L243:
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
.L246:
	b .L243
	copy %r4,%r28
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
	copy %r26,%r28
.L258:
	ldw 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L261
	comb,<>,n %r19,%r25,.L258
	ldo 4(%r28),%r28
	ldw 0(%r28),%r19
.L261:
	comiclr,<> 0,%r19,%r0
	ldi 0,%r28
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
	b .L268
	ldw 0(%r26),%r19
.L265:
	ldo 4(%r25),%r25
	ldw 0(%r26),%r19
.L268:
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L264
	comiclr,<> 0,%r19,%r0
	b,n .L264
	comib,<>,n 0,%r28,.L265
	ldo 4(%r26),%r26
.L264:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L266
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L266:
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
	ldo -4(%r26),%r22
	ldwx %r25(%r19),%r21
.L272:
	addl %r28,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
	ldwx %r22(%r19),%r20
	comib,<>,n 0,%r20,.L272
	ldwx %r25(%r19),%r21
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
	copy %r26,%r28
.L275:
	ldw 0(%r28),%r19
	comib,<>,n 0,%r19,.L275
	ldo 4(%r28),%r28
	sub %r28,%r26,%r28
	bv %r0(%r2)
	extrs %r28,29,30,%r28
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
.L277:
	comib,=,n 0,%r24,.L278
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<> %r28,%r19,.L283
	ldi 0,%r28
	comib,=,n 0,%r19,.L278
	ldw 0(%r25),%r28
	comib,=,n 0,%r28,.L278
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	b .L277
	ldo 4(%r25),%r25
.L278:
	ldi 0,%r28
.L283:
	comb,=,n %r28,%r24,.L280
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L280
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L280:
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
	b .L285
	copy %r26,%r28
.L287:
	ldo 4(%r28),%r28
.L285:
	comib,=,n 0,%r24,.L286
	ldw 0(%r28),%r19
	comb,<>,n %r19,%r25,.L287
	ldo -1(%r24),%r24
.L286:
	comiclr,<> 0,%r24,%r0
	ldi 0,%r28
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
	b,n .L291
.L293:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L291:
	comib,=,n 0,%r24,.L292
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,=,n %r28,%r19,.L293
	ldo -1(%r24),%r24
.L292:
	ldi 0,%r28
	comb,=,n %r28,%r24,.L294
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L294
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L294:
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
	copy %r26,%r28
	b .L298
	ldi 0,%r19
.L299:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L298:
	comb,<>,n %r24,%r19,.L299
	ldwx,s %r19(%r25),%r21
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
	comb,= %r25,%r26,.L301
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L302
	ldi 0,%r19
	b,n .L303
.L304:
	sh2addl %r24,%r28,%r19 
	stw %r20,0(%r19)
.L302:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L304
	ldwx,s %r24(%r25),%r20
.L301:
	bv,n %r0(%r2)
.L305:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L303:
	comb,<>,n %r24,%r19,.L305
	ldwx,s %r19(%r25),%r21
	b,n .L301
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
	copy %r26,%r28
	b .L308
	ldi 0,%r19
.L309:
	stw %r25,0(%r20)
	ldo 1(%r19),%r19
.L308:
	comb,<> %r24,%r19,.L309
	sh2addl %r19,%r28,%r20 
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
	comb,<<=,n %r25,%r26,.L320
	ldo -1(%r26),%r26
	b .L311
	ldo -1(%r25),%r25
.L313:
	addl %r25,%r24,%r28
	stb %r19,0(%r28)
	ldo -1(%r24),%r24
.L311:
	comib,<>,n 0,%r24,.L313
	ldbx %r26(%r24),%r19
.L310:
	bv,n %r0(%r2)
.L320:
	comb,<> %r25,%r26,.L315
	ldi 0,%r28
	b,n .L310
.L316:
	addl %r25,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L315:
	comb,<>,n %r24,%r28,.L316
	ldbx %r26(%r28),%r20
	b,n .L310
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
	bb,>= %r24,26,.L322
	extru %r26,30,31,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
.L323:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L324
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
.L325:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L322:
	uaddcm %r0,%r24,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	b .L323
	zvdep %r26,32,%r29
.L324:
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
	b .L325
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
	bb,>= %r24,26,.L327
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L328:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L329
	sub %r0,%r24,%r24
	extru %r19,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r25
	ldi 0,%r26
.L330:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L327:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	b .L328
	vshd %r0,%r25,%r28
.L329:
	extru %r26,30,31,%r19
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r20
	mtsar %r20
	vshd %r0,%r19,%r19
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r25,32,%r25
	or %r19,%r25,%r25
	b .L330
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
	subi 31,%r25,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	subi 16,%r25,%r25
	mtsar %r25
	vshd %r0,%r26,%r26
	or %r26,%r28,%r28
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
	mtsar %r25
	vshd %r0,%r26,%r28
	ldo 15(%r25),%r25
	mtsar %r25
	zvdep %r26,32,%r26
	or %r26,%r28,%r28
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
	subi 31,%r25,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	subi 8,%r25,%r25
	mtsar %r25
	vshd %r0,%r26,%r26
	or %r26,%r28,%r28
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
	mtsar %r25
	vshd %r0,%r26,%r28
	ldo 23(%r25),%r25
	mtsar %r25
	zvdep %r26,32,%r26
	or %r26,%r28,%r28
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
	extru %r26,31,8,%r26
	zdep %r26,23,24,%r26
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
	extru %r26,7,8,%r28
	ldil L'16711680,%r19
	and %r26,%r19,%r19
	extru %r19,23,24,%r19
	or %r19,%r28,%r19
	zdepi -1,23,8,%r28
	and %r26,%r28,%r28
	zdep %r28,23,24,%r28
	or %r19,%r28,%r28
	zdep %r26,7,8,%r26
	bv %r0(%r2)
	or %r28,%r26,%r28
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
	extru %r25,7,8,%r28
	ldil L'16711680,%r20
	and %r25,%r20,%r29
	extru %r29,23,24,%r29
	or %r29,%r28,%r29
	zdepi -1,23,8,%r19
	and %r25,%r19,%r28
	zdep %r28,23,24,%r28
	or %r29,%r28,%r29
	zdep %r25,7,8,%r25
	extru %r26,7,8,%r28
	and %r26,%r20,%r20
	extru %r20,23,24,%r20
	or %r28,%r20,%r28
	and %r26,%r19,%r19
	zdep %r19,23,24,%r19
	or %r28,%r19,%r28
	zdep %r26,7,8,%r26
	or %r28,%r26,%r28
	bv %r0(%r2)
	or %r29,%r25,%r29
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
.L343:
	comb,= %r20,%r28,.L347
	subi 31,%r28,%r19
	mtsar %r19
	bvb,>= %r26,.L343
	ldo 1(%r28),%r28
.L345:
	bv,n %r0(%r2)
.L347:
	b .L345
	ldi 0,%r28
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
	movb,=,n %r26,%r26,.L353
	ldi 1,%r28
	b .L354
	extru %r26,31,1,%r19
.L352:
	ldo 1(%r28),%r28
	extru %r26,31,1,%r19
.L354:
	comib,=,n 0,%r19,.L352
	extrs %r26,30,31,%r26
.L350:
	bv,n %r0(%r2)
.L353:
	b .L350
	ldi 0,%r28
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
	b .L356
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L357
	ldi 0,%r28
.L357:
	extru %r28,31,8,%r28
.L356:
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
	b .L360
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L361
	ldi 0,%r28
.L361:
	extru %r28,31,8,%r28
.L360:
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
	b .L364
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L365
	ldi 0,%r28
.L365:
	extru %r28,31,8,%r28
.L364:
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
	b,n .L369
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr4L,%fr22L
	ftest
	b,n .L369
	comib,> 0,%r25,.L374
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L372
	fldws 0(%r28),%fr22L
.L374:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L372
	fldws 0(%r28),%fr22L
.L375:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L369
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L372:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L375
	extru %r25,0,1,%r28
	b .L375
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L369:
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
	b .L377
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L377
	comib,> 0,%r24,.L382
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L380
	fldds 0(%r28),%fr22
.L382:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L380
	fldds 0(%r28),%fr22
.L383:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L377
	fmpy,dbl %fr22,%fr22,%fr22
.L380:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L383
	extru %r24,0,1,%r28
	b .L383
	fmpy,dbl %fr4,%fr22,%fr4
.L377:
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
	b .L385
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L385
	comib,> 0,%r24,.L390
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L388
	fldds 0(%r28),%fr22
.L390:
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L388
	fldds 0(%r28),%fr22
.L391:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L385
	fmpy,dbl %fr22,%fr22,%fr22
.L388:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L391
	extru %r24,0,1,%r28
	b .L391
	fmpy,dbl %fr4,%fr22,%fr4
.L385:
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
	copy %r26,%r28
	b .L393
	ldi 0,%r19
.L394:
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	stb %r20,0(%r21)
	ldo 1(%r19),%r19
.L393:
	comb,<>,n %r24,%r19,.L394
	ldbx %r25(%r19),%r21
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
	b .L396
	addl %r5,%r28,%r28
.L398:
	ldo 1(%r28),%r28
	ldo -1(%r3),%r3
.L396:
	comib,=,n 0,%r3,.L397
	ldb 0(%r4),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L398
	ldo 1(%r4),%r4
.L397:
	comiclr,<> 0,%r3,%r0
	stb %r0,0(%r28)
.L399:
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
	ldi 0,%r28
.L401:
	comb,=,n %r25,%r28,.L402
	ldbx %r26(%r28),%r19
	comib,<>,n 0,%r19,.L401
	ldo 1(%r28),%r28
.L402:
	bv,n %r0(%r2)
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
.L405:
	ldb 0(%r26),%r28
	comib,=,n 0,%r28,.L406
	copy %r25,%r19
	ldb 0(%r19),%r20
.L412:
	comib,= 0,%r20,.L411
	ldo 1(%r19),%r19
	ldb -1(%r19),%r21
	extrs %r21,31,8,%r21
	ldb 0(%r26),%r20
	extrs %r20,31,8,%r20
	comb,<>,n %r20,%r21,.L412
	ldb 0(%r19),%r20
	copy %r26,%r28
.L406:
	bv,n %r0(%r2)
.L411:
	b .L405
	ldo 1(%r26),%r26
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
	ldb 0(%r26),%r19
.L418:
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
	ldo 1(%r26),%r26
	ldb -1(%r26),%r19
	comib,<>,n 0,%r19,.L418
	ldb 0(%r26),%r19
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
	movb,=,n %r28,%r5,.L423
	ldb 0(%r4),%r6
	extrs %r6,31,8,%r6
	copy %r6,%r25
.L425:
	bl strchr,%r2
	copy %r3,%r26
	movb,= %r28,%r3,.L420
	copy %r5,%r24
	copy %r4,%r25
	bl strncmp,%r2
	copy %r3,%r26
	comib,=,n 0,%r28,.L424
	ldo 1(%r3),%r3
	b .L425
	copy %r6,%r25
.L423:
	copy %r3,%r28
.L420:
	ldw -84(%r30),%r2
	ldw -60(%r30),%r5
	ldw -56(%r30),%r4
	ldw -52(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r6
.L424:
	b .L420
	copy %r3,%r28
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
	b,n .L435
	fcmp,dbl,!> %fr5,%fr0
.L440:
	ftest
	b .L436
	fcpy,dbl %fr5,%fr4
	b,n .L430
.L436:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L429
	fcpy,dbl %fr5,%fr4
.L430:
	bv,n %r0(%r2)
.L435:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L429
	b .L440
	fcmp,dbl,!> %fr5,%fr0
.L429:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L430
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
	copy %r24,%r4
	sub %r25,%r23,%r5
	comib,= 0,%r23,.L446
	addl %r26,%r5,%r5
	comb,>>,n %r23,%r25,.L447
	ldo 1(%r24),%r7
	ldo -1(%r23),%r6
.L444:
.L443:
	comb,<<,n %r5,%r3,.L449
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L443
	ldo 1(%r3),%r3
	copy %r6,%r24
	copy %r7,%r25
	bl memcmp,%r2
	ldo 1(%r3),%r26
	comib,<>,n 0,%r28,.L444
	ldo 1(%r3),%r3
	b .L442
	copy %r3,%r28
.L449:
	ldi 0,%r28
.L442:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r7
.L446:
	b .L442
	copy %r26,%r28
.L447:
	b .L442
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
	b .L466
	fcpy,dbl %fr5,%fr4
	ldi 0,%r20
.L452:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L467
	ldi 0,%r28
	b .L470
	ldi 1,%r28
.L467:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr23
	ldil LR'.LC25,%r19
	b .L454
	ldo RR'.LC25(%r19),%r19
.L466:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L452
	ldi 1,%r20
.L456:
	ldo 1(%r28),%r28
	fldds 0(%r19),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
.L454:
	fcmp,dbl,!>= %fr4,%fr23
	ftest
	b,n .L456
.L457:
	comib,= 0,%r20,.L462
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
.L462:
	bv,n %r0(%r2)
.L470:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L458
	ldi 0,%r28
.L458:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L459
	ldi 1,%r21
	ldi 0,%r21
.L459:
	and %r28,%r21,%r28
	comib,= 0,%r28,.L457
	nop
	ldi 0,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	b .L460
	fldds 0(%r19),%fr22
.L461:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
.L460:
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L461
	b,n .L457
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 4
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldi 0,%r1
	ldi 0,%r2
	b .L472
	ldi 0,%r31
.L473:
	extru %r26,31,1,%r29
	sub %r0,%r29,%r22
	subb %r0,%r28,%r21
	and %r23,%r21,%r19
	and %r24,%r22,%r20
	shd %r23,%r24,31,%r23
	zdep %r24,30,31,%r24
	shd %r25,%r26,1,%r26
	extru %r25,30,31,%r25
	add %r20,%r2,%r2
	addc %r19,%r1,%r1
.L472:
	or %r25,%r26,%r21
	comib,<> 0,%r21,.L473
	copy %r31,%r28
	copy %r1,%r28
	copy %r2,%r29
	ldw -20(%r30),%r2
	bv,n %r0(%r2)
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
	b .L475
	ldi 1,%r19
.L478:
	zdep %r19,30,31,%r19
.L475:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L477
	comib,<=,n 0,%r25,.L478
	zdep %r25,30,31,%r25
	b .L477
	ldi 0,%r20
.L480:
	extru %r19,30,31,%r19
.L485:
	extru %r25,30,31,%r25
.L477:
	comiclr,<> 0,%r19,%r0
	b,n .L484
	comb,>>,n %r25,%r28,.L485
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L480
	or %r20,%r19,%r20
.L484:
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
	comb,= %r19,%r28,.L488
	xor %r28,%r19,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
.L487:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L488:
	b .L487
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
	extrs %r25,0,1,%r28
	xor %r28,%r25,%r25
	xor %r28,%r26,%r26
	or %r25,%r26,%r28
	comib,= 0,%r28,.L493
	ldi 63,%r28
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
.L490:
.L493:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
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
	b .L495
	ldi 0,%r28
.L496:
	and %r19,%r25,%r19
	extru %r26,30,31,%r26
	addl %r19,%r28,%r28
	zdep %r25,30,31,%r25
.L495:
	comib,<> 0,%r26,.L496
	extrs %r26,31+1-1,1,%r19
	bv,n %r0(%r2)
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
	comb,<<= %r25,%r26,.L498
	depi 0,31,3,%r28
	copy %r25,%r19
.L509:
	copy %r26,%r20
	b .L499
	sh3addl %r21,%r25,%r21 
.L498:
	addl %r25,%r24,%r19
	comb,>> %r26,%r19,.L509
	copy %r25,%r19
	b .L507
	ldo -1(%r24),%r24
.L502:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	ldo 8(%r20),%r20
.L499:
	comb,<> %r21,%r19,.L502
	nop
	b,n .L503
.L504:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L503:
	comb,<<,n %r28,%r24,.L504
	ldbx %r25(%r28),%r20
	ldw -60(%r30),%r3
.L508:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L506:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
	ldo -1(%r24),%r24
.L507:
	comib,<>,n -1,%r24,.L506
	ldbx %r25(%r24),%r19
	b .L508
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
	comb,<<= %r25,%r26,.L511
	extru %r24,30,31,%r21
	zdep %r21,30,31,%r21
.L519:
	b .L512
	ldi 0,%r28
.L511:
	addl %r25,%r24,%r28
	comb,>>,n %r26,%r28,.L519
	zdep %r21,30,31,%r21
	b .L518
	ldo -1(%r24),%r24
.L515:
	addl %r26,%r28,%r19
	sth %r20,0(%r19)
	ldo 2(%r28),%r28
.L512:
	comb,<>,n %r21,%r28,.L515
	ldhx %r25(%r28),%r20
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L510
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	stb %r28,0(%r26)
.L510:
	bv,n %r0(%r2)
.L517:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
	ldo -1(%r24),%r24
.L518:
	comib,<>,n -1,%r24,.L517
	ldbx %r25(%r24),%r19
	b,n .L510
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
	comb,<<= %r25,%r26,.L521
	depi 0,31,2,%r28
	zdep %r22,29,30,%r22
.L531:
	b .L522
	ldi 0,%r19
.L521:
	addl %r25,%r24,%r19
	comb,>>,n %r26,%r19,.L531
	zdep %r22,29,30,%r22
	b .L530
	ldo -1(%r24),%r24
.L525:
	addl %r26,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
.L522:
	comb,<>,n %r22,%r19,.L525
	ldwx %r25(%r19),%r21
	b,n .L526
.L527:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L526:
	comb,<<,n %r28,%r24,.L527
	ldbx %r25(%r28),%r20
.L520:
	bv,n %r0(%r2)
.L529:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
	ldo -1(%r24),%r24
.L530:
	comib,<>,n -1,%r24,.L529
	ldbx %r25(%r24),%r19
	b,n .L520
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
	comib,>= 0,%r28,.L537
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
.L536:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L537:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b .L536
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
	comib,>= 0,%r28,.L540
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
.L539:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L540:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b .L539
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
.L543:
	comb,= %r20,%r28,.L544
	ldo 16(%r28),%r19
	mtsar %r19
	bvb,<,n %r26,.L544
	ldo 1(%r28),%r28
	b,n .L543
.L544:
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
.L547:
	comb,= %r20,%r28,.L548
	subi 31,%r28,%r19
	mtsar %r19
	bvb,<,n %r26,.L548
	ldo 1(%r28),%r28
	b,n .L547
.L548:
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
	b .L554
	ldil LR'.LC28,%r28
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L553:
	bv,n %r0(%r2)
.L554:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L553
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
	b .L557
	ldi 16,%r21
.L558:
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	addl %r20,%r28,%r28
.L557:
	comb,<> %r21,%r19,.L558
	subi 31,%r19,%r20
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
	b .L560
	ldi 16,%r21
.L561:
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	addl %r20,%r28,%r28
.L560:
	comb,<> %r21,%r19,.L561
	subi 31,%r19,%r20
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
	b .L563
	ldi 0,%r28
.L564:
	and %r19,%r25,%r19
	extru %r26,30,31,%r26
	addl %r19,%r28,%r28
	zdep %r25,30,31,%r25
.L563:
	comib,<> 0,%r26,.L564
	extrs %r26,31+1-1,1,%r19
	bv,n %r0(%r2)
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
	movb,= %r26,%r26,.L566
	ldi 0,%r28
	b,n .L567
.L568:
	and %r19,%r26,%r19
	extru %r25,30,31,%r25
	addl %r19,%r28,%r28
	zdep %r26,30,31,%r26
.L567:
	comib,<> 0,%r25,.L568
	extrs %r25,31+1-1,1,%r19
.L566:
	bv,n %r0(%r2)
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
	b .L571
	ldi 1,%r19
.L574:
	zdep %r19,30,31,%r19
.L571:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L573
	comib,<=,n 0,%r25,.L574
	zdep %r25,30,31,%r25
	b .L573
	ldi 0,%r20
.L576:
	extru %r19,30,31,%r19
.L581:
	extru %r25,30,31,%r25
.L573:
	comiclr,<> 0,%r19,%r0
	b,n .L580
	comb,>>,n %r25,%r28,.L581
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L576
	or %r20,%r19,%r20
.L580:
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
	b,n .L585
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L584
	ldi 1,%r28
	ldi 0,%r28
.L584:
	extru %r28,31,8,%r28
.L583:
	bv,n %r0(%r2)
.L585:
	b .L583
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
	b,n .L589
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L588
	ldi 1,%r28
	ldi 0,%r28
.L588:
	extru %r28,31,8,%r28
.L587:
	bv,n %r0(%r2)
.L589:
	b .L587
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
	movb,< %r25,%r25,.L599
	ldi 0,%r31
.L593:
	ldi 0,%r28
	copy %r28,%r20
	b .L594
	ldi 31,%r22
.L599:
	sub %r0,%r25,%r25
	b .L593
	ldi 1,%r31
.L595:
	and %r19,%r26,%r19
	extrs %r25,30,31,%r25
	ldo 1(%r20),%r20
	extrs %r20,31,8,%r20
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
.L594:
	comiclr,= 0,%r25,%r21
	ldi 1,%r21
	extru %r20,31,8,%r19
	comclr,<< %r22,%r19,%r19
	ldi 1,%r19
	and %r19,%r21,%r19
	comib,<> 0,%r19,.L595
	extrs %r25,31+1-1,1,%r19
	sub %r0,%r28,%r19
	comiclr,= 0,%r31,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 4
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	movb,< %r26,%r26,.L605
	ldi 0,%r3
.L601:
	comib,> 0,%r25,.L606
	ldi 1,%r28
.L602:
	bl __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r19
	comiclr,= 0,%r3,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
.L605:
	sub %r0,%r26,%r26
	b .L601
	ldi 1,%r3
.L606:
	sub %r0,%r25,%r25
	b .L602
	xor %r3,%r28,%r3
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 4
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	movb,< %r26,%r26,.L611
	ldi 0,%r3
.L608:
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	bl __udivmodsi4,%r2
	ldi 1,%r24
	sub %r0,%r28,%r19
	comiclr,= 0,%r3,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
.L611:
	sub %r0,%r26,%r26
	b .L608
	ldi 1,%r3
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
	b .L613
	ldi 1,%r19
.L616:
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
.L613:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,=,n 0,%r20,.L615
	extrs %r25,31,16,%r20
	comib,<=,n 0,%r20,.L616
	zdep %r25,30,31,%r25
	b .L615
	ldi 0,%r20
.L618:
	extru %r19,30,31,%r19
.L623:
	extru %r25,30,31,%r25
.L615:
	comiclr,<> 0,%r19,%r0
	b,n .L622
	comb,>>,n %r25,%r28,.L623
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	b .L618
	or %r20,%r19,%r20
.L622:
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
	b .L625
	ldi 1,%r19
.L628:
	zdep %r19,30,31,%r19
.L625:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L627
	comib,<=,n 0,%r25,.L628
	zdep %r25,30,31,%r25
	b .L627
	ldi 0,%r20
.L630:
	extru %r19,30,31,%r19
.L635:
	extru %r25,30,31,%r25
.L627:
	comiclr,<> 0,%r19,%r0
	b,n .L634
	comb,>>,n %r25,%r28,.L635
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L630
	or %r20,%r19,%r20
.L634:
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
	bb,>= %r24,26,.L637
	ldi 0,%r29
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
.L639:
	bv,n %r0(%r2)
.L637:
	comib,=,n 0,%r24,.L640
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	zvdep %r25,32,%r28
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	b .L639
	or %r26,%r28,%r28
.L640:
	copy %r25,%r28
	b .L639
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
	bb,>= %r24,26,.L642
	copy %r25,%r28
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r25,32,%r29
.L644:
	bv,n %r0(%r2)
.L642:
	comib,=,n 0,%r24,.L645
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L644
	or %r25,%r29,%r29
.L645:
	b .L644
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
	extru %r25,7,8,%r19
	extru %r25,23,24,%r21
	zdepi -1,23,8,%r31
	and %r21,%r31,%r21
	shd %r25,%r26,24,%r20
	ldil L'16711680,%r22
	and %r20,%r22,%r20
	zdep %r25,7,8,%r29
	zdep %r26,23,24,%r28
	extru %r26,7,8,%r23
	shd %r25,%r26,8,%r25
	zdep %r26,7,8,%r26
	and %r25,%r31,%r25
	and %r28,%r22,%r28
	or %r19,%r21,%r19
	or %r19,%r20,%r19
	or %r26,%r23,%r26
	or %r26,%r25,%r26
	or %r26,%r28,%r28
	bv %r0(%r2)
	or %r19,%r29,%r29
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
	extru %r26,7,8,%r20
	extru %r26,23,24,%r19
	zdepi -1,23,8,%r28
	and %r19,%r28,%r19
	zdep %r26,23,24,%r28
	ldil L'16711680,%r21
	and %r28,%r21,%r28
	zdep %r26,7,8,%r26
	or %r26,%r20,%r26
	or %r26,%r19,%r26
	bv %r0(%r2)
	or %r26,%r28,%r28
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
	zdepi -1,31,16,%r19
	comclr,<< %r19,%r26,%r19
	ldi 1,%r19
	zdep %r19,27,28,%r19
	subi 16,%r19,%r28
	mtsar %r28
	vshd %r0,%r26,%r26
	zdepi -1,23,8,%r28
	and %r26,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,28,29,%r28
	subi 8,%r28,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r19,%r28,%r19
	ldi 240,%r28
	and %r26,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,29,30,%r28
	subi 4,%r28,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r19,%r28,%r19
	ldi 12,%r28
	and %r26,%r28,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,30,31,%r28
	subi 2,%r28,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r19,%r28,%r19
	extru %r26,30+1-1,1,%r28
	subi 2,%r26,%r26
	ldo -1(%r28),%r28
	and %r28,%r26,%r28
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
	comb,> %r23,%r25,.L655
	ldi 0,%r28
	comb,< %r23,%r25,.L655
	ldi 2,%r28
	comb,>> %r24,%r26,.L655
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L650:
.L655:
	bv,n %r0(%r2)
	b .L650
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
	extru %r26,31,16,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,27,28,%r28
	mtsar %r28
	vshd %r0,%r26,%r26
	extru %r26,31,8,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,28,29,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,4,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,29,30,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,2,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,30,31,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	extru %r26,31,2,%r26
	addl %r28,%r19,%r28
	uaddcm %r0,%r26,%r19
	extru %r26,30,31,%r26
	subi 2,%r26,%r26
	extrs %r19,31+1-1,1,%r19
	and %r26,%r19,%r26
	bv %r0(%r2)
	addl %r28,%r26,%r28
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
	bb,>= %r24,26,.L659
	ldi 0,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
.L661:
	bv,n %r0(%r2)
.L659:
	comib,= 0,%r24,.L662
	mtsar %r24
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L661
	or %r25,%r29,%r29
.L662:
	copy %r25,%r28
	b .L661
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
	xmpyu %fr22L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r28,%r20,%r28
	extru %r28,15,16,%r22
	extru %r28,31,16,%r28
	extru %r29,31,16,%r21
	extru %r25,15,16,%r25
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r28,%r20,%r28
	zdep %r28,15,16,%r29
	extru %r28,15,16,%r28
	addl %r28,%r22,%r28
	xmpyu %fr22L,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	addl %r28,%r26,%r28
	bv %r0(%r2)
	addl %r29,%r21,%r29
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
	copy %r25,%r3
	copy %r26,%r5
	copy %r23,%r4
	copy %r24,%r6
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
	extru %r26,15,16,%r28
	xor %r26,%r28,%r26
	extru %r26,23,24,%r28
	xor %r26,%r28,%r26
	extru %r26,27,28,%r28
	xor %r26,%r28,%r26
	extru %r26,31,4,%r26
	subi 31,%r26,%r26
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r26
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
	xor %r28,%r26,%r26
	extru %r26,23,24,%r28
	xor %r26,%r28,%r26
	extru %r26,27,28,%r28
	xor %r26,%r28,%r26
	extru %r26,31,4,%r26
	subi 31,%r26,%r26
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r26
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
	copy %r28,%r20
	shd %r20,%r29,2,%r20
	extru %r28,29,30,%r21
	ldil L'858996736,%r19
	ldo -3277(%r19),%r19
	and %r21,%r19,%r23
	and %r20,%r19,%r24
	and %r28,%r19,%r21
	and %r29,%r19,%r22
	add %r22,%r24,%r29
	addc %r21,%r23,%r28
	copy %r28,%r21
	zdep %r21,3,4,%r21
	extru %r29,27,28,%r20
	or %r21,%r20,%r20
	extru %r28,27,28,%r19
	add %r29,%r20,%r20
	addc %r28,%r19,%r19
	ldil L'252641280,%r21
	ldo 3855(%r21),%r21
	and %r19,%r21,%r28
	and %r20,%r21,%r29
	addl %r28,%r29,%r28
	extru %r28,15,16,%r19
	addl %r28,%r19,%r28
	extru %r28,23,24,%r19
	addl %r19,%r28,%r28
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
	addl %r19,%r26,%r26
	extru %r26,27,28,%r28
	addl %r28,%r26,%r26
	ldil L'252641280,%r28
	ldo 3855(%r28),%r28
	and %r26,%r28,%r26
	extru %r26,15,16,%r28
	addl %r26,%r28,%r26
	extru %r26,23,24,%r28
	addl %r28,%r26,%r28
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
	extru %r24,0,1,%r19
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	b .L673
	fldds 0(%r28),%fr22
.L676:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L672
	fmpy,dbl %fr5,%fr5,%fr5
.L673:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L676
	extru %r24,0,1,%r28
	b .L676
	fmpy,dbl %fr22,%fr5,%fr22
.L672:
	comib,= 0,%r19,.L674
	fcpy,dbl %fr22,%fr4
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr4
	fdiv,dbl %fr4,%fr22,%fr4
.L674:
	bv,n %r0(%r2)
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
	extru %r25,0,1,%r19
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	b .L680
	fldws 0(%r28),%fr22L
.L683:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L679
	fmpy,sgl %fr4L,%fr4L,%fr4L
.L680:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L683
	extru %r25,0,1,%r28
	b .L683
	fmpy,sgl %fr22L,%fr4L,%fr22L
.L679:
	comib,= 0,%r19,.L681
	fcpy,sgl %fr22L,%fr4L
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr4L
	fdiv,sgl %fr4L,%fr22L,%fr4L
.L681:
	bv,n %r0(%r2)
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
	comb,>> %r23,%r25,.L690
	ldi 0,%r28
	comb,<< %r23,%r25,.L690
	ldi 2,%r28
	comb,>> %r24,%r26,.L690
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L685:
.L690:
	bv,n %r0(%r2)
	b .L685
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
