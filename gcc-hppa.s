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
	comb,<> %r19,%r24,.L5
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
	extru %r25,31,8,%r25
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comib,= 0,%r19,.L55
	copy %r26,%r28
	extru %r19,31,8,%r19
.L62:
	comb,=,n %r25,%r19,.L61
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L62
	extru %r19,31,8,%r19
	b .L55
	copy %r26,%r28
.L61:
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
.L65:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	b,n .L64
	comib,<> 0,%r19,.L65
	ldo 1(%r28),%r28
	ldi 0,%r28
.L64:
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
	comiclr,= 0,%r19,%r20
	ldi 1,%r20
	comclr,<> %r28,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,=,n 0,%r20,.L68
	ldi 1,%r20
.L69:
	ldbx %r26(%r20),%r19
	extrs %r19,31,8,%r19
	ldbx %r25(%r20),%r28
	extrs %r28,31,8,%r28
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	comclr,<> %r28,%r19,%r22
	ldi 1,%r22
	and %r21,%r22,%r21
	comib,<> 0,%r21,.L69
	ldo 1(%r20),%r20
.L68:
	extru %r19,31,8,%r19
	extru %r28,31,8,%r28
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
	comib,= 0,%r28,.L72
	copy %r26,%r28
	ldbs,mb 1(%r28),%r19
.L76:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L76
	ldbs,mb 1(%r28),%r19
.L72:
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
	movb,=,n %r24,%r24,.L82
	ldb 0(%r26),%r28
	comib,= 0,%r28,.L83
	ldo -1(%r24),%r24
	copy %r25,%r21
	addl %r25,%r24,%r25
.L80:
	ldb 0(%r21),%r20
	comclr,= %r25,%r21,%r22
	ldi 1,%r22
	comiclr,= 0,%r20,%r19
	ldi 1,%r19
	comclr,<> %r28,%r20,%r20
	ldi 1,%r20
	and %r19,%r20,%r19
	and %r19,%r22,%r19
	comib,=,n 0,%r19,.L79
	ldbs,mb 1(%r26),%r28
	extru %r28,31,8,%r28
	comib,<> 0,%r28,.L80
	ldo 1(%r21),%r21
.L79:
	ldb 0(%r21),%r19
	sub %r28,%r19,%r28
.L77:
	bv,n %r0(%r2)
.L83:
	b .L79
	copy %r25,%r21
.L82:
	b .L77
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
	comib,>= 1,%r24,.L84
	depi 0,31,1,%r24
	addl %r26,%r24,%r19
.L86:
	ldb 1(%r26),%r28
	stb %r28,0(%r25)
	ldb 0(%r26),%r28
	stb %r28,1(%r25)
	ldo 2(%r26),%r26
	comb,<> %r19,%r26,.L86
	ldo 2(%r25),%r25
.L84:
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
	comib,<> 0,%r19,.L98
	ldi 1,%r28
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L98
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L98:
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
	comb,>>= %r28,%r26,.L109
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L106
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L107
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L108
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
	b,n .L103
.L109:
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
.L103:
	bv,n %r0(%r2)
.L106:
	b .L103
	ldi 1,%r28
.L107:
	b .L103
	ldi 1,%r28
.L108:
	b .L103
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
	comib,>>= 9,%r19,.L110
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L110:
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
	b .L117
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L122
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L120
	fcpy,dbl %fr0,%fr4
	b,n .L114
.L120:
	fsub,dbl %fr5,%fr7,%fr4
.L114:
.L122:
	bv,n %r0(%r2)
.L117:
	b .L114
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
	b .L123
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L127
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L129
	b .L123
	fcpy,sgl %fr0,%fr4L
.L129:
	fsub,sgl %fr4L,%fr5L,%fr4L
.L123:
	bv,n %r0(%r2)
.L127:
	b .L123
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
	b .L137
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L138
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L133
	comib,= 0,%r21,.L131
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L131:
	bv,n %r0(%r2)
.L133:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L134
	ldi 1,%r21
	ldi 0,%r21
.L134:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L131
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L131
.L137:
	b .L131
	fcpy,dbl %fr7,%fr4
.L138:
	b .L131
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
	b .L146
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L140
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L142
	comiclr,<> 0,%r28,%r0
	b,n .L140
	fcpy,sgl %fr5L,%fr4L
.L140:
	bv,n %r0(%r2)
.L142:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L143
	ldi 1,%r28
	ldi 0,%r28
.L143:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L140
	nop
	b .L140
	fcpy,sgl %fr5L,%fr4L
.L146:
	b .L140
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
	b .L155
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L156
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L151
	comib,= 0,%r21,.L149
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L149:
	bv,n %r0(%r2)
.L151:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L152
	ldi 1,%r21
	ldi 0,%r21
.L152:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L149
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L149
.L155:
	b .L149
	fcpy,dbl %fr7,%fr4
.L156:
	b .L149
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
	b .L164
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L165
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L160
	comib,= 0,%r21,.L158
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L158:
	bv,n %r0(%r2)
.L160:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L161
	ldi 1,%r21
	ldi 0,%r21
.L161:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L158
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L158
.L164:
	b .L158
	fcpy,dbl %fr7,%fr4
.L165:
	b .L158
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
	b .L173
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L167
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L169
	comib,= 0,%r28,.L167
	fcpy,sgl %fr5L,%fr4L
	b .L167
	fcpy,sgl %fr22L,%fr4L
.L169:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L170
	ldi 1,%r28
	ldi 0,%r28
.L170:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L176
	fcpy,sgl %fr5L,%fr4L
	fcpy,sgl %fr22L,%fr5L
	fcpy,sgl %fr5L,%fr4L
.L167:
.L176:
	bv,n %r0(%r2)
.L173:
	b .L167
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
	b .L183
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L184
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comclr,<> %r22,%r21,%r0
	b,n .L179
	comib,= 0,%r21,.L177
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L177:
	bv,n %r0(%r2)
.L179:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L180
	ldi 1,%r21
	ldi 0,%r21
.L180:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L177
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L177
.L183:
	b .L177
	fcpy,dbl %fr7,%fr4
.L184:
	b .L177
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
	movb,= %r26,%r26,.L189
	addil LR's.0-$global$,%r27
	ldo RR's.0-$global$(%r1),%r1
	ldil LR'digits,%r19
	ldo RR'digits(%r19),%r19
.L188:
	extru %r26,31,6,%r28
	ldbx %r19(%r28),%r28
	stb %r28,0(%r1)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L188
	ldo 1(%r1),%r1
.L187:
	stb %r0,0(%r1)
	addil LR's.0-$global$,%r27
	bv %r0(%r2)
	ldo RR's.0-$global$(%r1),%r28
.L189:
	b .L187
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
	movb,=,n %r25,%r25,.L196
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L193:
	bv,n %r0(%r2)
.L196:
	stw %r0,4(%r26)
	b .L193
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
	comib,=,n 0,%r28,.L198
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L198:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L197
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L197:
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
	comib,= 0,%r5,.L201
	ldw -180(%r30),%r9
	copy %r25,%r3
	ldi 0,%r4
.L203:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,= 0,%r28,.L200
	copy %r3,%r8
	ldo 1(%r4),%r4
	comb,<> %r4,%r5,.L203
	addl %r3,%r6,%r3
.L201:
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
.L200:
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
	comib,= 0,%r7,.L208
	ldw -180(%r30),%r9
	copy %r25,%r3
	ldi 0,%r4
.L207:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,= 0,%r28,.L205
	copy %r3,%r8
	ldo 1(%r4),%r4
	comb,<> %r4,%r7,.L207
	addl %r3,%r6,%r3
	ldi 0,%r8
.L205:
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
.L208:
	b .L205
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
.L213:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r28,.L213
	ldo 1(%r3),%r3
	ldi 43,%r19
	comb,= %r19,%r4,.L219
	ldi 45,%r19
	comb,<> %r19,%r4,.L215
	copy %r28,%r21
	ldi 1,%r21
.L214:
	ldo 1(%r3),%r3
.L215:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,<<,n 9,%r20,.L217
	sh2addl %r28,%r28,%r28 
.L223:
	zdep %r28,30,31,%r28
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	sub %r28,%r19,%r28
	ldbs,mb 1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L223
	sh2addl %r28,%r28,%r28 
.L217:
	sub %r0,%r28,%r19
	comiclr,<> 0,%r21,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L219:
	b .L214
	copy %r28,%r21
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
.L226:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r28,.L226
	ldo 1(%r3),%r3
	ldi 43,%r19
	comb,= %r19,%r4,.L232
	ldi 45,%r19
	comb,<> %r19,%r4,.L228
	copy %r28,%r21
	ldi 1,%r21
.L227:
	ldo 1(%r3),%r3
.L228:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,<<,n 9,%r20,.L230
	sh2addl %r28,%r28,%r28 
.L236:
	zdep %r28,30,31,%r28
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	sub %r28,%r19,%r28
	ldbs,mb 1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L236
	sh2addl %r28,%r28,%r28 
.L230:
	sub %r0,%r28,%r19
	comiclr,<> 0,%r21,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L232:
	b .L227
	copy %r28,%r21
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
	copy %r26,%r5
.L239:
	ldb 0(%r5),%r6
	extrs %r6,31,8,%r6
	bl isspace,%r2
	copy %r6,%r26
	movb,<>,n %r28,%r20,.L239
	ldo 1(%r5),%r5
	ldi 43,%r28
	comb,= %r28,%r6,.L240
	ldi 45,%r28
	comb,<>,n %r28,%r6,.L241
	ldi 1,%r20
.L240:
	ldo 1(%r5),%r5
.L241:
	ldb 0(%r5),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r21
	ldi 0,%r28
	ldi 0,%r29
	comib,<< 9,%r21,.L243
	shd %r28,%r29,30,%r21
.L248:
	zdep %r29,29,30,%r22
	add %r29,%r22,%r29
	addc %r28,%r21,%r28
	shd %r28,%r29,31,%r28
	zdep %r29,30,31,%r29
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	copy %r19,%r4
	extrs %r19,0,1,%r19
	copy %r19,%r3
	sub %r29,%r4,%r29
	subb %r28,%r3,%r28
	ldbs,mb 1(%r5),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r21
	comib,>>= 9,%r21,.L248
	shd %r28,%r29,30,%r21
.L243:
	comib,<> 0,%r20,.L249
	ldw -84(%r30),%r2
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L249:
	ldw -60(%r30),%r5
	ldw -56(%r30),%r4
	ldw -52(%r30),%r3
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
	movb,<> %r24,%r3,.L253
	ldw -180(%r30),%r8
	b .L250
	ldi 0,%r5
.L255:
.L252:
	comib,= 0,%r3,.L257
	ldi 0,%r5
.L253:
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
	movb,<,n %r28,%r28,.L255
	copy %r4,%r3
	comib,>= 0,%r28,.L250
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	b .L252
	addl %r5,%r28,%r6
.L257:
.L250:
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
	movb,<> %r24,%r3,.L261
	ldw -184(%r30),%r7
	b .L258
	ldi 0,%r4
.L260:
	extrs %r3,30,31,%r3
.L265:
	comib,= 0,%r3,.L264
	ldi 0,%r4
.L261:
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
	b,n .L258
	comib,>=,n 0,%r28,.L265
	extrs %r3,30,31,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
	b .L260
	ldo -1(%r3),%r3
.L264:
.L258:
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
	ldw 0(%r26),%r20
	comclr,= %r20,%r25,%r19
	ldi 1,%r19
	comiclr,= 0,%r20,%r21
	ldi 1,%r21
	and %r19,%r21,%r19
	comib,= 0,%r19,.L274
	copy %r26,%r28
	ldws,mb 4(%r28),%r20
.L278:
	comclr,= %r25,%r20,%r19
	ldi 1,%r19
	comiclr,= 0,%r20,%r21
	ldi 1,%r21
	and %r19,%r21,%r19
	comib,<>,n 0,%r19,.L278
	ldws,mb 4(%r28),%r20
.L274:
	comiclr,<> 0,%r20,%r0
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
	ldw 0(%r26),%r21
	ldw 0(%r25),%r20
	comiclr,= 0,%r21,%r28
	ldi 1,%r28
	comclr,<> %r20,%r21,%r19
	ldi 1,%r19
	and %r28,%r19,%r28
	comiclr,= 0,%r20,%r19
	ldi 1,%r19
	and %r28,%r19,%r28
	comib,= 0,%r28,.L280
	ldi 4,%r19
.L281:
	ldwx %r26(%r19),%r21
	ldwx %r25(%r19),%r20
	comiclr,= 0,%r21,%r28
	ldi 1,%r28
	comclr,<> %r20,%r21,%r22
	ldi 1,%r22
	and %r28,%r22,%r28
	comiclr,= 0,%r20,%r22
	ldi 1,%r22
	and %r28,%r22,%r28
	comib,<> 0,%r28,.L281
	ldo 4(%r19),%r19
.L280:
	ldi -1,%r28
	comclr,>= %r20,%r21,%r19
	ldi 1,%r19
	comclr,> %r20,%r21,%r0
	copy %r19,%r28
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
.L286:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L286
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
	comib,= 0,%r28,.L291
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L293:
	comib,<>,n 0,%r19,.L293
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
.L294:
	bv %r0(%r2)
	extrs %r28,29,30,%r28
.L291:
	b .L294
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
	movb,= %r24,%r24,.L306
	ldi 0,%r28
.L296:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comiclr,= 0,%r20,%r28
	ldi 1,%r28
	comclr,<> %r19,%r20,%r20
	ldi 1,%r20
	and %r28,%r20,%r28
	comiclr,= 0,%r19,%r19
	ldi 1,%r19
	and %r28,%r19,%r28
	comib,=,n 0,%r28,.L305
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L296
	ldo 4(%r25),%r25
	b .L295
	ldi 0,%r28
.L305:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L295:
.L306:
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
	movb,= %r24,%r24,.L315
	ldi 0,%r28
.L308:
	ldw 0(%r26),%r28
	comb,=,n %r25,%r28,.L314
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L308
	ldo 4(%r26),%r26
	b .L307
	ldi 0,%r28
.L314:
	copy %r26,%r28
.L307:
.L315:
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
	movb,= %r24,%r24,.L327
	ldi 0,%r28
.L317:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<>,n %r28,%r19,.L326
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L317
	ldo 4(%r25),%r25
	b .L316
	ldi 0,%r28
.L326:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L316:
.L327:
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
	movb,= %r24,%r24,.L329
	copy %r26,%r28
	ldi 0,%r19
.L330:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L330
	stw %r21,0(%r20)
.L329:
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
	comb,= %r25,%r26,.L333
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>>,n %r19,%r20,.L334
	ldi 0,%r19
	comclr,<> %r19,%r24,%r0
	b,n .L333
.L335:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L335
	stw %r21,0(%r20)
	b,n .L333
.L334:
	comib,= 0,%r24,.L333
	ldo -1(%r24),%r19
.L336:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo -1(%r19),%r19
	comib,<> -1,%r19,.L336
	stw %r21,0(%r20)
.L333:
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
	movb,= %r24,%r24,.L342
	copy %r26,%r28
	ldi 0,%r19
.L343:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L343
	stw %r25,0(%r20)
.L342:
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
	b,n .L346
	comib,=,n 0,%r24,.L345
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L348:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L348
	stb %r19,0(%r28)
.L345:
	bv,n %r0(%r2)
.L346:
	comb,= %r25,%r26,.L345
	nop
	comib,= 0,%r24,.L345
	nop
	ldi 0,%r28
.L349:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L349
	stb %r20,0(%r19)
	b,n .L345
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
	bb,>= %r24,26,.L353
	extru %r26,30,31,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
.L354:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L355
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
.L356:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L353:
	uaddcm %r0,%r24,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	b .L354
	zvdep %r26,32,%r29
.L355:
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
	b .L356
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
	bb,>= %r24,26,.L358
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L359:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L360
	sub %r0,%r24,%r24
	extru %r19,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r25
	ldi 0,%r26
.L361:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L358:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	b .L359
	vshd %r0,%r25,%r28
.L360:
	extru %r26,30,31,%r19
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r20
	mtsar %r20
	vshd %r0,%r19,%r19
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r25,32,%r25
	or %r19,%r25,%r25
	b .L361
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
.L379:
	mtsar %r19
	bvb,< %r26,.L378
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L379
	subi 31,%r28,%r19
	ldi 0,%r28
.L378:
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
	movb,=,n %r26,%r26,.L383
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L380
	ldi 1,%r28
.L382:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L382
	ldo 1(%r28),%r28
.L380:
	bv,n %r0(%r2)
.L383:
	b .L380
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
	b .L385
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L387
	ldi 0,%r28
.L387:
	extru %r28,31,8,%r28
.L385:
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
	b .L389
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L391
	ldi 0,%r28
.L391:
	extru %r28,31,8,%r28
.L389:
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
	b .L393
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L395
	ldi 0,%r28
.L395:
	extru %r28,31,8,%r28
.L393:
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
	b,n .L399
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L399
	comib,> 0,%r25,.L404
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L402
	fldws 0(%r28),%fr22L
.L404:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L402
	fldws 0(%r28),%fr22L
.L405:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L399
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L402:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L405
	extru %r25,0,1,%r28
	b .L405
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L399:
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
	b .L407
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L407
	comib,> 0,%r24,.L412
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L410
	fldds 0(%r28),%fr22
.L412:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L410
	fldds 0(%r28),%fr22
.L413:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L407
	fmpy,dbl %fr22,%fr22,%fr22
.L410:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L413
	extru %r24,0,1,%r28
	b .L413
	fmpy,dbl %fr4,%fr22,%fr4
.L407:
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
	b .L415
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L415
	comib,> 0,%r24,.L420
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L418
	fldds 0(%r28),%fr22
.L420:
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L418
	fldds 0(%r28),%fr22
.L421:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L415
	fmpy,dbl %fr22,%fr22,%fr22
.L418:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L421
	extru %r24,0,1,%r28
	b .L421
	fmpy,dbl %fr4,%fr22,%fr4
.L415:
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
	movb,= %r24,%r24,.L423
	copy %r26,%r28
	ldi 0,%r19
.L424:
	ldbx %r25(%r19),%r21
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L424
	stb %r20,0(%r21)
.L423:
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
	comib,= 0,%r3,.L428
	addl %r5,%r28,%r28
.L427:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r20
	comib,= 0,%r20,.L430
	stb %r19,0(%r28)
	ldo 1(%r4),%r4
	ldo -1(%r3),%r3
	comib,<> 0,%r3,.L427
	ldo 1(%r28),%r28
.L428:
	stb %r0,0(%r28)
.L430:
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
	movb,= %r25,%r25,.L439
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L441:
	comiclr,= 0,%r19,%r0
	b,n .L440
.L432:
	bv,n %r0(%r2)
.L439:
	b .L432
	copy %r25,%r28
.L440:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L441
	ldbx %r26(%r28),%r19
	b .L432
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
	ldb 0(%r26),%r21
	extrs %r21,31,8,%r21
	comib,= 0,%r21,.L449
	copy %r26,%r28
	copy %r25,%r20
.L446:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L450
	comb,<> %r21,%r19,.L446
	ldo 1(%r20),%r20
.L444:
	bv,n %r0(%r2)
.L449:
	b .L444
	ldi 0,%r28
.L450:
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L446
	copy %r25,%r20
	b .L444
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
.L453:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L453
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
	movb,=,n %r28,%r5,.L456
	ldb 0(%r4),%r6
	extrs %r6,31,8,%r6
	copy %r6,%r25
.L461:
	bl strchr,%r2
	copy %r3,%r26
	movb,= %r28,%r3,.L456
	copy %r5,%r24
	copy %r4,%r25
	bl strncmp,%r2
	copy %r3,%r26
	comib,=,n 0,%r28,.L456
	ldo 1(%r3),%r3
	b .L461
	copy %r6,%r25
.L456:
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
	b .L469
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L470
	b,n .L466
.L470:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L465
.L466:
	bv,n %r0(%r2)
.L469:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L465
	b,n .L466
.L465:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L466
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
	movb,= %r23,%r23,.L476
	copy %r26,%r3
	comb,>> %r23,%r25,.L477
	sub %r25,%r23,%r4
	addl %r26,%r4,%r4
	comb,<<,n %r4,%r26,.L478
	ldb 0(%r24),%r5
	extrs %r5,31,8,%r5
	ldo 1(%r24),%r7
	b .L475
	ldo -1(%r23),%r6
.L474:
.L482:
	comb,>> %r3,%r4,.L481
	ldi 0,%r28
.L475:
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r5,%r28,.L482
	ldo 1(%r3),%r3
	copy %r6,%r24
	copy %r7,%r25
	bl memcmp,%r2
	ldo 1(%r3),%r26
	comib,<>,n 0,%r28,.L474
	ldo 1(%r3),%r3
	copy %r3,%r28
.L481:
.L472:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r7
.L476:
	b .L472
	copy %r26,%r28
.L477:
	b .L472
	ldi 0,%r28
.L478:
	b .L472
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
	b .L497
	fcpy,dbl %fr5,%fr4
	ldi 0,%r20
.L485:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L499
	ldi 0,%r28
	b .L504
	ldi 1,%r28
.L499:
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr23
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
.L489:
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L489
	ldo 1(%r28),%r28
.L490:
	comib,= 0,%r20,.L494
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
.L494:
	bv,n %r0(%r2)
.L497:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L485
	ldi 1,%r20
.L504:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L491
	ldi 0,%r28
.L491:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L492
	ldi 1,%r21
	ldi 0,%r21
.L492:
	and %r28,%r21,%r19
	ldi 0,%r28
	comb,= %r28,%r19,.L490
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
.L493:
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L493
	ldo -1(%r28),%r28
	b,n .L490
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
	comib,= 0,%r26,.L509
	copy %r25,%r20
	ldi 0,%r3
	ldi 0,%r4
	ldi 0,%r22
	copy %r22,%r28
.L511:
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
	comib,<> 0,%r19,.L511
	zdep %r24,30,31,%r24
.L505:
	copy %r3,%r28
	copy %r4,%r29
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L509:
	ldi 0,%r3
	ldi 0,%r4
	b,n .L505
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
	comb,<<= %r26,%r25,.L520
	ldi 1,%r19
.L513:
	comib,>,n 0,%r25,.L520
	zdep %r25,30,31,%r25
	zdep %r19,30,31,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L513
	nop
	comiclr,<> 0,%r19,%r0
	b,n .L526
.L520:
	b .L518
	ldi 0,%r20
.L517:
	extru %r19,30,31,%r19
.L527:
	comib,= 0,%r19,.L519
	extru %r25,30,31,%r25
.L518:
	comb,>>,n %r25,%r28,.L527
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L517
	or %r20,%r19,%r20
.L526:
	copy %r19,%r20
.L519:
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
	comb,= %r28,%r19,.L530
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
.L528:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L530:
	b .L528
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
	comb,= %r19,%r28,.L537
	xor %r26,%r19,%r26
.L535:
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -148(%r30),%r2
.L538:
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L537:
	comb,<> %r19,%r20,.L535
	ldi 63,%r28
	b .L538
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
	movb,=,n %r26,%r26,.L542
	ldi 0,%r28
.L541:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L541
	zdep %r25,30,31,%r25
.L539:
	bv,n %r0(%r2)
.L542:
	b .L539
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
	comb,<<= %r25,%r26,.L545
	depi 0,31,3,%r28
.L548:
	comib,=,n 0,%r21,.L547
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L551:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L551
	ldo 8(%r20),%r20
.L547:
	comb,>>= %r28,%r24,.L557
	ldw -60(%r30),%r3
.L552:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L552
	stb %r20,0(%r19)
.L544:
	ldw -60(%r30),%r3
.L557:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L545:
	addl %r25,%r24,%r19
	comb,>> %r26,%r19,.L548
	nop
	comib,= 0,%r24,.L544
	ldo -1(%r24),%r28
.L549:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L549
	stb %r20,0(%r19)
	b .L557
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
	comb,<<= %r25,%r26,.L559
	extru %r24,30,31,%r21
	ldi 0,%r28
.L570:
	comclr,<> %r28,%r21,%r0
	b,n .L561
.L560:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L560
	sth %r20,0(%r19)
.L561:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L558
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	stb %r28,0(%r26)
.L558:
	bv,n %r0(%r2)
.L559:
	addl %r25,%r24,%r28
	comb,>>,n %r26,%r28,.L570
	ldi 0,%r28
	comib,= 0,%r24,.L558
	ldo -1(%r24),%r28
.L563:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L563
	stb %r20,0(%r19)
	b,n .L558
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
	comb,<<= %r25,%r26,.L572
	depi 0,31,2,%r28
	ldi 0,%r19
.L585:
	comclr,<> %r19,%r22,%r0
	b,n .L574
.L573:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r26,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r22,.L573
	stw %r21,0(%r20)
.L574:
	comclr,<< %r28,%r24,%r0
	b,n .L571
.L578:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L578
	stb %r20,0(%r19)
.L571:
	bv,n %r0(%r2)
.L572:
	addl %r25,%r24,%r19
	comb,>> %r26,%r19,.L585
	ldi 0,%r19
	comib,= 0,%r24,.L571
	ldo -1(%r24),%r28
.L576:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L576
	stb %r20,0(%r19)
	b,n .L571
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
	comib,>= 0,%r28,.L591
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
.L589:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L591:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b .L589
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
	comib,>= 0,%r28,.L594
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
.L592:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L594:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b .L592
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
.L600:
	mtsar %r19
	bvb,<,n %r26,.L596
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L600
	ldo 16(%r28),%r19
.L596:
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
.L605:
	mtsar %r19
	bvb,<,n %r26,.L601
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L605
	subi 31,%r28,%r19
.L601:
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
	b .L610
	ldil LR'.LC28,%r28
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L606:
	bv,n %r0(%r2)
.L610:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L606
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
.L613:
	subi 31,%r19,%r20
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L613
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
.L616:
	subi 31,%r19,%r20
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L616
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
	movb,=,n %r26,%r26,.L621
	ldi 0,%r28
.L620:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L620
	zdep %r25,30,31,%r25
.L618:
	bv,n %r0(%r2)
.L621:
	b .L618
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
	movb,= %r26,%r26,.L629
	copy %r26,%r28
	comib,=,n 0,%r25,.L627
	ldi 0,%r28
.L625:
	extrs %r25,31+1-1,1,%r19
	and %r19,%r26,%r19
	addl %r28,%r19,%r28
	extru %r25,30,31,%r25
	comib,<> 0,%r25,.L625
	zdep %r26,30,31,%r26
.L623:
.L629:
	bv,n %r0(%r2)
.L627:
	b .L623
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
	comb,<<= %r26,%r25,.L638
	ldi 1,%r19
.L631:
	comib,>,n 0,%r25,.L638
	zdep %r25,30,31,%r25
	zdep %r19,30,31,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L631
	nop
	comiclr,<> 0,%r19,%r0
	b,n .L644
.L638:
	b .L636
	ldi 0,%r20
.L635:
	extru %r19,30,31,%r19
.L645:
	comib,= 0,%r19,.L637
	extru %r25,30,31,%r25
.L636:
	comb,>>,n %r25,%r28,.L645
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L635
	or %r20,%r19,%r20
.L644:
	copy %r19,%r20
.L637:
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
	b,n .L649
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L648
	ldi 1,%r28
	ldi 0,%r28
.L648:
	extru %r28,31,8,%r28
.L646:
	bv,n %r0(%r2)
.L649:
	b .L646
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
	b,n .L653
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L652
	ldi 1,%r28
	ldi 0,%r28
.L652:
	extru %r28,31,8,%r28
.L650:
	bv,n %r0(%r2)
.L653:
	b .L650
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
	b,n .L664
	comib,=,n 0,%r25,.L662
	ldi 0,%r31
.L658:
	ldi 1,%r19
	ldi 0,%r28
	ldi 31,%r22
.L660:
	extrs %r25,31+1-1,1,%r20
	and %r20,%r26,%r20
	addl %r28,%r20,%r28
	zdep %r26,30,31,%r26
	extrs %r25,30,31,%r25
	comiclr,= 0,%r25,%r20
	ldi 1,%r20
	comclr,<< %r22,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	ldo 1(%r19),%r19
	comib,<> 0,%r20,.L660
	extru %r19,31,8,%r19
.L659:
	sub %r0,%r28,%r19
	comiclr,= 0,%r31,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L664:
	sub %r0,%r25,%r25
	b .L658
	ldi 1,%r31
.L662:
	copy %r25,%r31
	b .L659
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
	b,n .L673
	comiclr,<= 0,%r25,%r0
	b,n .L674
	bl __udivmodsi4,%r2
	ldi 0,%r24
	b .L676
	ldw -84(%r30),%r2
.L673:
	comib,> 0,%r25,.L675
	sub %r0,%r26,%r26
	bl __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r28
.L677:
	ldw -84(%r30),%r2
.L676:
	bv %r0(%r2)
	ldo -64(%r30),%r30
.L674:
	ldi 0,%r24
	bl __udivmodsi4,%r2
	sub %r0,%r25,%r25
	b .L677
	sub %r0,%r28,%r28
.L675:
	ldi 0,%r24
	bl __udivmodsi4,%r2
	sub %r0,%r25,%r25
	b .L676
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
	movb,< %r26,%r26,.L681
	ldi 1,%r24
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	bl __udivmodsi4,%r2
	ldi 1,%r24
	b .L682
	ldw -84(%r30),%r2
.L681:
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	bl __udivmodsi4,%r2
	sub %r0,%r26,%r26
	sub %r0,%r28,%r28
	ldw -84(%r30),%r2
.L682:
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
	comb,<<= %r28,%r25,.L691
	ldi 1,%r19
	extrs %r25,31,16,%r20
.L698:
	comib,>,n 0,%r20,.L691
	zdep %r25,30,31,%r25
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<>,n 0,%r20,.L698
	extrs %r25,31,16,%r20
	comiclr,<> 0,%r19,%r0
	b,n .L697
.L691:
	b .L689
	ldi 0,%r20
.L688:
	extru %r19,30,31,%r19
.L699:
	comib,= 0,%r19,.L690
	extru %r25,30,31,%r25
.L689:
	comb,>>,n %r25,%r28,.L699
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r19,%r20,%r20
	b .L688
	extru %r20,31,16,%r20
.L697:
	copy %r19,%r20
.L690:
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
	comb,<<= %r26,%r25,.L708
	ldi 1,%r19
.L701:
	comib,>,n 0,%r25,.L708
	zdep %r25,30,31,%r25
	zdep %r19,30,31,%r19
	comclr,>>= %r25,%r28,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L701
	nop
	comiclr,<> 0,%r19,%r0
	b,n .L714
.L708:
	b .L706
	ldi 0,%r20
.L705:
	extru %r19,30,31,%r19
.L715:
	comib,= 0,%r19,.L707
	extru %r25,30,31,%r25
.L706:
	comb,>>,n %r25,%r28,.L715
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L705
	or %r20,%r19,%r20
.L714:
	copy %r19,%r20
.L707:
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
	bb,>=,n %r24,26,.L717
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
	ldi 0,%r29
.L719:
	bv,n %r0(%r2)
.L717:
	comib,=,n 0,%r24,.L720
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	zvdep %r25,32,%r28
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	b .L719
	or %r28,%r26,%r28
.L720:
	copy %r25,%r28
	b .L719
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
	bb,>= %r24,26,.L722
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r25,32,%r29
.L724:
	bv,n %r0(%r2)
.L722:
	comib,=,n 0,%r24,.L725
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L724
	or %r25,%r29,%r29
.L725:
	copy %r25,%r28
	b .L724
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
	comb,< %r25,%r23,.L737
	ldi 0,%r28
	comb,> %r25,%r23,.L737
	ldi 2,%r28
	comb,>> %r24,%r26,.L737
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L731:
.L737:
	bv,n %r0(%r2)
	b .L731
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
	bb,>= %r24,26,.L741
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L743:
	bv,n %r0(%r2)
.L741:
	comib,=,n 0,%r24,.L744
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L743
	or %r25,%r29,%r29
.L744:
	copy %r25,%r28
	b .L743
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
	copy %r25,%r3
	copy %r26,%r6
	copy %r23,%r4
	copy %r24,%r5
	bl __muldsi3,%r2
	copy %r24,%r25
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	addl %r24,%r26,%r19
	addl %r28,%r19,%r28
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
	xor %r25,%r26,%r25
	extru %r25,15,16,%r19
	xor %r19,%r25,%r19
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
	b .L755
	fldds 0(%r19),%fr4
.L758:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L754
	fmpy,dbl %fr5,%fr5,%fr5
.L755:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L758
	extru %r28,0,1,%r19
	b .L758
	fmpy,dbl %fr4,%fr5,%fr4
.L754:
	comib,> 0,%r24,.L757
	ldil LR'.LC30,%r28
.L752:
	bv,n %r0(%r2)
.L757:
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr22
	b .L752
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
	b .L762
	fldws 0(%r19),%fr4L
.L765:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L761
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L762:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L765
	extru %r28,0,1,%r19
	b .L765
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L761:
	comib,> 0,%r25,.L764
	ldil LR'.LC32,%r28
.L759:
	bv,n %r0(%r2)
.L764:
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr22L
	b .L759
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
	comb,<< %r25,%r23,.L772
	ldi 0,%r28
	comb,>> %r25,%r23,.L772
	ldi 2,%r28
	comb,>> %r24,%r26,.L772
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L766:
.L772:
	bv,n %r0(%r2)
	b .L766
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
