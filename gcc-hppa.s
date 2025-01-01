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
	ldo -1(%r25),%r25
	b .L3
	ldo -1(%r26),%r21
.L4:
	addl %r21,%r24,%r19
	stb %r20,0(%r19)
	ldo -1(%r24),%r24
.L3:
	comib,<>,n 0,%r24,.L4
	ldbx %r25(%r24),%r20
.L5:
	bv,n %r0(%r2)
.L2:
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
	b .L11
	extru %r24,31,8,%r24
.L13:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	ldo 1(%r26),%r26
.L11:
	comib,=,n 0,%r23,.L12
	ldb 0(%r25),%r28
	comb,<> %r28,%r24,.L13
	stb %r28,0(%r26)
.L12:
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
	b .L17
	copy %r26,%r28
.L19:
	ldo -1(%r24),%r24
.L17:
	comib,=,n 0,%r24,.L18
	ldb 0(%r28),%r19
	comb,<>,n %r19,%r25,.L19
	ldo 1(%r28),%r28
.L18:
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
	b,n .L23
.L25:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L23:
	comib,=,n 0,%r24,.L24
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	comb,=,n %r28,%r19,.L25
	ldo -1(%r24),%r24
.L24:
	ldi 0,%r28
	comb,=,n %r28,%r24,.L26
	ldb 0(%r26),%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L26:
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
	b .L29
	ldi 0,%r19
.L30:
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	ldo 1(%r19),%r19
.L29:
	comb,<>,n %r24,%r19,.L30
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
.L32:
	comib,=,n -1,%r24,.L36
	ldbx %r26(%r24),%r19
	comb,= %r19,%r25,.L37
	ldo -1(%r24),%r20
	b .L32
	copy %r20,%r24
.L37:
	b .L33
	addl %r26,%r24,%r28
.L36:
	ldi 0,%r28
.L33:
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
	b .L39
	extru %r25,31,8,%r25
.L40:
	ldo 1(%r19),%r19
.L39:
	comb,<>,n %r24,%r19,.L40
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
	b .L42
	copy %r26,%r28
.L43:
	ldo 1(%r28),%r28
.L42:
	ldb 0(%r25),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L43
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
.L47:
	ldb 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L46
	comb,<>,n %r19,%r25,.L47
	ldo 1(%r28),%r28
.L46:
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
.L53:
	extrs %r28,31,8,%r28
	comb,=,n %r28,%r25,.L51
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	comib,<>,n 0,%r28,.L53
	ldb 0(%r26),%r28
	b,n .L49
.L51:
	copy %r26,%r28
.L49:
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
	b .L58
	ldb 0(%r26),%r19
.L57:
	ldo 1(%r25),%r25
	ldb 0(%r26),%r19
.L58:
	extrs %r19,31,8,%r19
	ldb 0(%r25),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L56
	ldb 0(%r26),%r28
	comib,<>,n 0,%r28,.L57
	ldo 1(%r26),%r26
.L56:
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
.L61:
	ldb 0(%r28),%r20
	comib,<>,n 0,%r20,.L61
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
	movb,= %r24,%r24,.L67
	copy %r26,%r19
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
.L64:
	ldb 0(%r19),%r28
	comib,=,n 0,%r28,.L68
	ldb 0(%r25),%r20
	comclr,= %r26,%r19,%r28
	ldi 1,%r28
	comiclr,= 0,%r20,%r20
	ldi 1,%r20
	and %r28,%r20,%r28
	comib,=,n 0,%r28,.L65
	ldb 0(%r19),%r20
	ldb 0(%r25),%r28
	comb,<>,n %r28,%r20,.L65
	ldo 1(%r19),%r19
	b .L64
	ldo 1(%r25),%r25
.L65:
	ldb 0(%r19),%r28
.L68:
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L63:
	bv,n %r0(%r2)
.L67:
	b .L63
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
	b .L70
	addl %r26,%r24,%r24
.L71:
	stb %r19,0(%r25)
	ldb 0(%r28),%r19
	stb %r19,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L70:
	sub %r24,%r28,%r19
	comib,<,n 1,%r19,.L71
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
	comib,<> 0,%r19,.L83
	ldi 1,%r28
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L83
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L83:
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
	comb,>>= %r28,%r26,.L93
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L90
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L91
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L92
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
	b,n .L89
.L93:
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
.L89:
	bv,n %r0(%r2)
.L90:
	b .L89
	ldi 1,%r28
.L91:
	b .L89
	ldi 1,%r28
.L92:
	b .L89
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
	comib,>>= 9,%r19,.L95
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L95:
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
	b .L101
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L106
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L104
	fcpy,dbl %fr0,%fr4
	b,n .L99
.L104:
	fsub,dbl %fr5,%fr7,%fr4
.L99:
.L106:
	bv,n %r0(%r2)
.L101:
	b .L99
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
	b .L108
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L111
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L113
	b .L108
	fcpy,sgl %fr0,%fr4L
.L113:
	fsub,sgl %fr4L,%fr5L,%fr4L
.L108:
	bv,n %r0(%r2)
.L111:
	b .L108
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
	b .L121
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L122
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L117
	comib,<= 0,%r28,.L116
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L116:
	bv,n %r0(%r2)
.L117:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L118
	ldi 1,%r21
	ldi 0,%r21
.L118:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L116
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L116
.L121:
	b .L116
	fcpy,dbl %fr7,%fr4
.L122:
	b .L116
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
	b .L130
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L125
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L126
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L125
	fcpy,sgl %fr5L,%fr4L
.L125:
	bv,n %r0(%r2)
.L126:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L127
	ldi 1,%r28
	ldi 0,%r28
.L127:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L125
	nop
	b .L125
	fcpy,sgl %fr5L,%fr4L
.L130:
	b .L125
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
	b .L139
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L140
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L135
	comib,<= 0,%r28,.L134
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr7,%fr4
.L134:
	bv,n %r0(%r2)
.L135:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L136
	ldi 1,%r21
	ldi 0,%r21
.L136:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L134
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L134
.L139:
	b .L134
	fcpy,dbl %fr7,%fr4
.L140:
	b .L134
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
	b .L148
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L149
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L144
	comib,<= 0,%r19,.L143
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L143:
	bv,n %r0(%r2)
.L144:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L145
	ldi 1,%r21
	ldi 0,%r21
.L145:
	extru %r21,31,8,%r21
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	comib,= 0,%r21,.L143
	nop
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L143
.L148:
	b .L143
	fcpy,dbl %fr7,%fr4
.L149:
	b .L143
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
	b .L157
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L152
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L153
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comib,<= 0,%r28,.L152
	fcpy,sgl %fr5L,%fr4L
	b .L152
	fcpy,sgl %fr22L,%fr4L
.L153:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L154
	ldi 1,%r28
	ldi 0,%r28
.L154:
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L160
	fcpy,sgl %fr5L,%fr4L
	fcpy,sgl %fr22L,%fr5L
	fcpy,sgl %fr5L,%fr4L
.L152:
.L160:
	bv,n %r0(%r2)
.L157:
	b .L152
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
	b .L167
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L168
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L163
	comib,<= 0,%r19,.L162
	fcpy,dbl %fr7,%fr4
	fcpy,dbl %fr5,%fr4
.L162:
	bv,n %r0(%r2)
.L163:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L164
	ldi 1,%r21
	ldi 0,%r21
.L164:
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
.L167:
	b .L162
	fcpy,dbl %fr7,%fr4
.L168:
	b .L162
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
	b .L171
	ldo RR'digits(%r19),%r19
.L172:
	ldbx %r19(%r28),%r28
	stb %r28,0(%r1)
	ldo 1(%r1),%r1
	extru %r26,25,26,%r26
.L171:
	comib,<>,n 0,%r26,.L172
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
	movb,=,n %r25,%r25,.L178
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L175:
	bv,n %r0(%r2)
.L178:
	stw %r0,4(%r26)
	b .L175
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
	comib,=,n 0,%r28,.L180
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L180:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L179
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L179:
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
	b .L183
	ldi 0,%r3
.L184:
	ldo 1(%r3),%r3
.L183:
	comb,= %r6,%r3,.L187
	copy %r4,%r25
	copy %r7,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L184
	addl %r4,%r5,%r4
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L185
	addl %r9,%r29,%r28
.L187:
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
.L185:
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
	b .L189
	ldi 0,%r3
.L190:
	ldo 1(%r3),%r3
.L189:
	comb,= %r7,%r3,.L193
	copy %r4,%r25
	copy %r6,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L190
	addl %r4,%r5,%r4
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L191
	addl %r9,%r29,%r28
.L193:
	ldi 0,%r28
.L191:
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
.L197:
	ldb 0(%r3),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L197
	ldo 1(%r3),%r3
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L203
	ldi 45,%r19
	comb,<> %r19,%r28,.L199
	ldi 0,%r20
	ldi 1,%r20
.L198:
	ldo 1(%r3),%r3
.L199:
	b .L200
	ldi 0,%r28
.L203:
	b .L198
	ldi 0,%r20
.L201:
	zdep %r28,30,31,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L200:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L201
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
.L208:
	ldb 0(%r3),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L208
	ldo 1(%r3),%r3
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L214
	ldi 45,%r19
	comb,<> %r19,%r28,.L210
	ldi 0,%r20
	ldi 1,%r20
.L209:
	ldo 1(%r3),%r3
.L210:
	b .L211
	ldi 0,%r28
.L214:
	b .L209
	ldi 0,%r20
.L212:
	zdep %r28,30,31,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L211:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L212
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
.L219:
	ldb 0(%r3),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L219
	ldo 1(%r3),%r3
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L225
	ldi 45,%r19
	comb,<> %r19,%r28,.L221
	ldi 0,%r22
	ldi 1,%r22
.L220:
	ldo 1(%r3),%r3
.L221:
	ldi 0,%r28
	ldi 0,%r29
	b .L228
	ldb 0(%r3),%r19
.L225:
	b .L220
	ldi 0,%r22
.L223:
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
.L228:
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L223
	shd %r28,%r29,30,%r19
	copy %r28,%r19
	copy %r29,%r20
	comiclr,= 0,%r22,%r0
	b,n .L224
	sub %r0,%r29,%r20
	subb %r0,%r28,%r19
.L224:
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
.L237:
.L230:
	comib,= 0,%r3,.L236
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
	movb,<,n %r28,%r28,.L237
	extru %r3,30,31,%r3
	comib,>= 0,%r28,.L238
	copy %r4,%r28
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
	extru %r3,30,31,%r28
	b .L230
	uaddcm %r3,%r28,%r3
.L236:
	ldi 0,%r28
.L233:
.L238:
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
	b .L240
	copy %r25,%r5
.L242:
	extrs %r3,30,31,%r3
.L240:
	comib,= 0,%r3,.L245
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
	b,n .L244
	comib,>=,n 0,%r28,.L240
	extrs %r3,30,31,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
	b .L242
	ldo -1(%r3),%r3
.L245:
	ldi 0,%r28
.L241:
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
.L244:
	b .L241
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
.L256:
	ldw 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L259
	comb,<>,n %r19,%r25,.L256
	ldo 4(%r28),%r28
	ldw 0(%r28),%r19
.L259:
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
	b .L266
	ldw 0(%r26),%r19
.L263:
	ldo 4(%r25),%r25
	ldw 0(%r26),%r19
.L266:
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L262
	comiclr,<> 0,%r19,%r0
	b,n .L262
	comib,<>,n 0,%r28,.L263
	ldo 4(%r26),%r26
.L262:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L264
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L264:
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
.L270:
	addl %r28,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
	ldwx %r22(%r19),%r20
	comib,<>,n 0,%r20,.L270
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
.L273:
	ldw 0(%r28),%r19
	comib,<>,n 0,%r19,.L273
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
.L275:
	comib,=,n 0,%r24,.L276
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<> %r28,%r19,.L281
	ldi 0,%r28
	comib,=,n 0,%r19,.L276
	ldw 0(%r25),%r28
	comib,=,n 0,%r28,.L276
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	b .L275
	ldo 4(%r25),%r25
.L276:
	ldi 0,%r28
.L281:
	comb,=,n %r28,%r24,.L278
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L278
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L278:
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
	b .L283
	copy %r26,%r28
.L285:
	ldo 4(%r28),%r28
.L283:
	comib,=,n 0,%r24,.L284
	ldw 0(%r28),%r19
	comb,<>,n %r19,%r25,.L285
	ldo -1(%r24),%r24
.L284:
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
	b,n .L289
.L291:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L289:
	comib,=,n 0,%r24,.L290
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,=,n %r28,%r19,.L291
	ldo -1(%r24),%r24
.L290:
	ldi 0,%r28
	comb,=,n %r28,%r24,.L292
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L292
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L292:
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
	b .L296
	ldi 0,%r19
.L297:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L296:
	comb,<>,n %r24,%r19,.L297
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
	comb,= %r25,%r26,.L299
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L300
	ldi 0,%r19
	b,n .L301
.L302:
	sh2addl %r24,%r28,%r19 
	stw %r20,0(%r19)
.L300:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L302
	ldwx,s %r24(%r25),%r20
.L299:
	bv,n %r0(%r2)
.L303:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L301:
	comb,<>,n %r24,%r19,.L303
	ldwx,s %r19(%r25),%r21
	b,n .L299
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
	b .L306
	ldi 0,%r19
.L307:
	stw %r25,0(%r20)
	ldo 1(%r19),%r19
.L306:
	comb,<> %r24,%r19,.L307
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
	comb,<<=,n %r25,%r26,.L309
	ldo -1(%r26),%r26
	b .L310
	ldo -1(%r25),%r25
.L311:
	addl %r25,%r24,%r28
	stb %r19,0(%r28)
	ldo -1(%r24),%r24
.L310:
	comib,<>,n 0,%r24,.L311
	ldbx %r26(%r24),%r19
.L308:
	bv,n %r0(%r2)
.L309:
	comb,<> %r25,%r26,.L313
	ldi 0,%r28
	b,n .L308
.L314:
	addl %r25,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L313:
	comb,<>,n %r24,%r28,.L314
	ldbx %r26(%r28),%r20
	b,n .L308
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
	bb,>= %r24,26,.L318
	extru %r26,30,31,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
.L319:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L320
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
.L321:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L318:
	uaddcm %r0,%r24,%r28
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	b .L319
	zvdep %r26,32,%r29
.L320:
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
	b .L321
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
	bb,>= %r24,26,.L323
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L324:
	sub %r0,%r24,%r19
	bb,>= %r19,26,.L325
	sub %r0,%r24,%r24
	extru %r19,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r25
	ldi 0,%r26
.L326:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L323:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	b .L324
	vshd %r0,%r25,%r28
.L325:
	extru %r26,30,31,%r19
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r20
	mtsar %r20
	vshd %r0,%r19,%r19
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r25,32,%r25
	or %r19,%r25,%r25
	b .L326
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
	extru %r26,16+8-1,8,%r28
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
.L339:
	comb,= %r20,%r28,.L343
	subi 31,%r28,%r19
	mtsar %r19
	bvb,>= %r26,.L339
	ldo 1(%r28),%r28
.L341:
	bv,n %r0(%r2)
.L343:
	b .L341
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
	movb,=,n %r26,%r26,.L349
	ldi 1,%r28
	b .L350
	extru %r26,31,1,%r19
.L348:
	ldo 1(%r28),%r28
	extru %r26,31,1,%r19
.L350:
	comib,=,n 0,%r19,.L348
	extrs %r26,30,31,%r26
.L346:
	bv,n %r0(%r2)
.L349:
	b .L346
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
	b .L352
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L353
	ldi 0,%r28
.L353:
	extru %r28,31,8,%r28
.L352:
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
	b .L356
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L357
	ldi 0,%r28
.L357:
	extru %r28,31,8,%r28
.L356:
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
	b .L360
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
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
	.word	1056964608
	.align 4
.LC13:
	.word	1073741824
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
	b,n .L365
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr4L,%fr22L
	ftest
	b,n .L365
	comib,> 0,%r25,.L370
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L368
	fldws 0(%r28),%fr22L
.L370:
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L368
	fldws 0(%r28),%fr22L
.L371:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L365
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L368:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L371
	extru %r25,0,1,%r28
	b .L371
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L365:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata.cst8
	.align 8
.LC16:
	.word	1071644672
	.word	0
	.align 8
.LC17:
	.word	1073741824
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
	b .L373
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L373
	comib,> 0,%r24,.L378
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L376
	fldds 0(%r28),%fr22
.L378:
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L376
	fldds 0(%r28),%fr22
.L379:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L373
	fmpy,dbl %fr22,%fr22,%fr22
.L376:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L379
	extru %r24,0,1,%r28
	b .L379
	fmpy,dbl %fr4,%fr22,%fr4
.L373:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst8
	.align 8
.LC20:
	.word	1071644672
	.word	0
	.align 8
.LC21:
	.word	1073741824
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
	b .L381
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L381
	comib,> 0,%r24,.L386
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L384
	fldds 0(%r28),%fr22
.L386:
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L384
	fldds 0(%r28),%fr22
.L387:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L381
	fmpy,dbl %fr22,%fr22,%fr22
.L384:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L387
	extru %r24,0,1,%r28
	b .L387
	fmpy,dbl %fr4,%fr22,%fr4
.L381:
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
	b .L389
	ldi 0,%r19
.L390:
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	stb %r20,0(%r21)
	ldo 1(%r19),%r19
.L389:
	comb,<>,n %r24,%r19,.L390
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
	b .L392
	addl %r5,%r28,%r28
.L394:
	ldo 1(%r28),%r28
	ldo -1(%r3),%r3
.L392:
	comib,=,n 0,%r3,.L393
	ldb 0(%r4),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L394
	ldo 1(%r4),%r4
.L393:
	comiclr,<> 0,%r3,%r0
	stb %r0,0(%r28)
.L395:
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
.L397:
	comb,=,n %r25,%r28,.L398
	ldbx %r26(%r28),%r19
	comib,<>,n 0,%r19,.L397
	ldo 1(%r28),%r28
.L398:
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
.L401:
	ldb 0(%r26),%r28
	comib,=,n 0,%r28,.L402
	copy %r25,%r19
	ldb 0(%r19),%r20
.L408:
	comib,= 0,%r20,.L407
	ldo 1(%r19),%r19
	ldb -1(%r19),%r21
	extrs %r21,31,8,%r21
	ldb 0(%r26),%r20
	extrs %r20,31,8,%r20
	comb,<>,n %r20,%r21,.L408
	ldb 0(%r19),%r20
	copy %r26,%r28
.L402:
	bv,n %r0(%r2)
.L407:
	b .L401
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
.L414:
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
	ldo 1(%r26),%r26
	ldb -1(%r26),%r19
	comib,<>,n 0,%r19,.L414
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
	movb,=,n %r28,%r5,.L419
	ldb 0(%r4),%r6
	extrs %r6,31,8,%r6
	copy %r6,%r25
.L421:
	bl strchr,%r2
	copy %r3,%r26
	movb,= %r28,%r3,.L416
	copy %r5,%r24
	copy %r4,%r25
	bl strncmp,%r2
	copy %r3,%r26
	comib,=,n 0,%r28,.L420
	ldo 1(%r3),%r3
	b .L421
	copy %r6,%r25
.L419:
	copy %r3,%r28
.L416:
	ldw -84(%r30),%r2
	ldw -60(%r30),%r5
	ldw -56(%r30),%r4
	ldw -52(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r6
.L420:
	b .L416
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
	b,n .L431
	fcmp,dbl,!> %fr5,%fr0
.L436:
	ftest
	b .L432
	fcpy,dbl %fr5,%fr4
	b,n .L426
.L432:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L425
	fcpy,dbl %fr5,%fr4
.L426:
	bv,n %r0(%r2)
.L431:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L425
	b .L436
	fcmp,dbl,!> %fr5,%fr0
.L425:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L426
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
	comib,= 0,%r23,.L442
	addl %r26,%r5,%r5
	comb,>>,n %r23,%r25,.L443
	ldo 1(%r24),%r7
	ldo -1(%r23),%r6
.L440:
.L439:
	comb,<<,n %r5,%r3,.L445
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L439
	ldo 1(%r3),%r3
	copy %r6,%r24
	copy %r7,%r25
	bl memcmp,%r2
	ldo 1(%r3),%r26
	comib,<>,n 0,%r28,.L440
	ldo 1(%r3),%r3
	b .L438
	copy %r3,%r28
.L445:
	ldi 0,%r28
.L438:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r7
.L442:
	b .L438
	copy %r26,%r28
.L443:
	b .L438
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
	b .L462
	fcpy,dbl %fr5,%fr4
	ldi 0,%r20
.L448:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L463
	ldi 0,%r28
	b .L466
	ldi 1,%r28
.L463:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr23
	ldil LR'.LC25,%r19
	b .L450
	ldo RR'.LC25(%r19),%r19
.L462:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L448
	ldi 1,%r20
.L452:
	ldo 1(%r28),%r28
	fldds 0(%r19),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
.L450:
	fcmp,dbl,!>= %fr4,%fr23
	ftest
	b,n .L452
.L453:
	comib,= 0,%r20,.L458
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
.L458:
	bv,n %r0(%r2)
.L466:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L454
	ldi 0,%r28
.L454:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L455
	ldi 1,%r21
	ldi 0,%r21
.L455:
	and %r28,%r21,%r28
	comib,= 0,%r28,.L453
	nop
	ldi 0,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	b .L456
	fldds 0(%r19),%fr22
.L457:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
.L456:
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L457
	b,n .L453
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
	ldi 0,%r21
	ldi 0,%r22
	b .L470
	or %r25,%r26,%r28
.L469:
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr22L,%fr23R,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r1
	ldws -12(%sp),%r2
	stws %r24,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr22L,%fr23R,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r29,%r20
	addl %r28,%r2,%r19
	shd %r23,%r24,31,%r23
	zdep %r24,30,31,%r24
	shd %r25,%r26,1,%r26
	extru %r25,30,31,%r25
	add %r20,%r22,%r22
	addc %r19,%r21,%r21
	or %r25,%r26,%r28
.L470:
	comib,<> 0,%r28,.L469
	extru %r26,31,1,%r28
	copy %r21,%r28
	copy %r22,%r29
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
	b .L472
	ldi 1,%r19
.L475:
	zdep %r19,30,31,%r19
.L472:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L474
	comib,<=,n 0,%r25,.L475
	zdep %r25,30,31,%r25
	b .L474
	ldi 0,%r20
.L477:
	extru %r19,30,31,%r19
.L482:
	extru %r25,30,31,%r25
.L474:
	comiclr,<> 0,%r19,%r0
	b,n .L481
	comb,>>,n %r25,%r28,.L482
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L477
	or %r20,%r19,%r20
.L481:
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
	comb,= %r19,%r28,.L485
	xor %r28,%r19,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
.L484:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L485:
	b .L484
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
	comib,= 0,%r28,.L490
	ldi 63,%r28
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
.L487:
.L490:
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
	b .L492
	ldi 0,%r28
.L493:
	and %r19,%r25,%r19
	extru %r26,30,31,%r26
	addl %r19,%r28,%r28
	zdep %r25,30,31,%r25
.L492:
	comib,<> 0,%r26,.L493
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
	comb,>> %r25,%r26,.L495
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L496
.L495:
	copy %r25,%r19
	copy %r26,%r20
	b .L497
	sh3addl %r21,%r25,%r21 
.L498:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	ldo 8(%r20),%r20
.L497:
	comb,<> %r21,%r19,.L498
	nop
	b,n .L499
.L500:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L499:
	comb,<<,n %r28,%r24,.L500
	ldbx %r25(%r28),%r20
	ldw -60(%r30),%r3
.L504:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L502:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L496:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L502
	ldbx %r25(%r24),%r19
	b .L504
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
	comb,>> %r25,%r26,.L506
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,>> %r26,%r28,%r0
	b,n .L507
.L506:
	zdep %r21,30,31,%r21
	b .L508
	ldi 0,%r28
.L509:
	addl %r26,%r28,%r19
	sth %r20,0(%r19)
	ldo 2(%r28),%r28
.L508:
	comb,<>,n %r21,%r28,.L509
	ldhx %r25(%r28),%r20
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L505
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	stb %r28,0(%r26)
.L505:
	bv,n %r0(%r2)
.L511:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L507:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L511
	ldbx %r25(%r24),%r19
	b,n .L505
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
	comb,>> %r25,%r26,.L514
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L515
.L514:
	zdep %r22,29,30,%r22
	b .L516
	ldi 0,%r19
.L517:
	addl %r26,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
.L516:
	comb,<>,n %r22,%r19,.L517
	ldwx %r25(%r19),%r21
	b,n .L518
.L519:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L518:
	comb,<<,n %r28,%r24,.L519
	ldbx %r25(%r28),%r20
.L513:
	bv,n %r0(%r2)
.L521:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L515:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L521
	ldbx %r25(%r24),%r19
	b,n .L513
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
	comib,>= 0,%r28,.L528
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
.L527:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L528:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b .L527
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
	comib,>= 0,%r28,.L531
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
.L530:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L531:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b .L530
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
.L534:
	comb,= %r20,%r28,.L535
	ldo 16(%r28),%r19
	mtsar %r19
	bvb,<,n %r26,.L535
	ldo 1(%r28),%r28
	b,n .L534
.L535:
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
.L538:
	comb,= %r20,%r28,.L539
	subi 31,%r28,%r19
	mtsar %r19
	bvb,<,n %r26,.L539
	ldo 1(%r28),%r28
	b,n .L538
.L539:
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
	b .L545
	ldil LR'.LC28,%r28
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L544:
	bv,n %r0(%r2)
.L545:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L544
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
	b .L548
	ldi 16,%r21
.L549:
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	addl %r20,%r28,%r28
.L548:
	comb,<> %r21,%r19,.L549
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
	b .L551
	ldi 16,%r21
.L552:
	mtsar %r20
	vextru %r26,1,%r20
	ldo 1(%r19),%r19
	addl %r20,%r28,%r28
.L551:
	comb,<> %r21,%r19,.L552
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
	b .L554
	ldi 0,%r28
.L555:
	and %r19,%r25,%r19
	extru %r26,30,31,%r26
	addl %r19,%r28,%r28
	zdep %r25,30,31,%r25
.L554:
	comib,<> 0,%r26,.L555
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
	movb,= %r26,%r26,.L557
	ldi 0,%r28
	b,n .L558
.L559:
	and %r19,%r26,%r19
	extru %r25,30,31,%r25
	addl %r19,%r28,%r28
	zdep %r26,30,31,%r26
.L558:
	comib,<> 0,%r25,.L559
	extrs %r25,31+1-1,1,%r19
.L557:
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
	b .L562
	ldi 1,%r19
.L565:
	zdep %r19,30,31,%r19
.L562:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L564
	comib,<=,n 0,%r25,.L565
	zdep %r25,30,31,%r25
	b .L564
	ldi 0,%r20
.L567:
	extru %r19,30,31,%r19
.L572:
	extru %r25,30,31,%r25
.L564:
	comiclr,<> 0,%r19,%r0
	b,n .L571
	comb,>>,n %r25,%r28,.L572
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L567
	or %r20,%r19,%r20
.L571:
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
	b,n .L576
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L575
	ldi 1,%r28
	ldi 0,%r28
.L575:
	extru %r28,31,8,%r28
.L574:
	bv,n %r0(%r2)
.L576:
	b .L574
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
	b,n .L580
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L579
	ldi 1,%r28
	ldi 0,%r28
.L579:
	extru %r28,31,8,%r28
.L578:
	bv,n %r0(%r2)
.L580:
	b .L578
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
	movb,< %r25,%r25,.L590
	ldi 0,%r31
.L584:
	ldi 0,%r28
	copy %r28,%r20
	b .L585
	ldi 31,%r22
.L590:
	sub %r0,%r25,%r25
	b .L584
	ldi 1,%r31
.L586:
	and %r19,%r26,%r19
	extrs %r25,30,31,%r25
	ldo 1(%r20),%r20
	extrs %r20,31,8,%r20
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
.L585:
	comiclr,= 0,%r25,%r21
	ldi 1,%r21
	extru %r20,31,8,%r19
	comclr,<< %r22,%r19,%r19
	ldi 1,%r19
	and %r19,%r21,%r19
	comib,<> 0,%r19,.L586
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
	movb,< %r26,%r26,.L596
	ldi 0,%r3
.L592:
	comiclr,<= 0,%r25,%r0
	b,n .L597
.L593:
	bl __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r19
	comiclr,= 0,%r3,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
.L596:
	sub %r0,%r26,%r26
	b .L592
	ldi 1,%r3
.L597:
	sub %r0,%r25,%r25
	comiclr,<> 0,%r3,%r3
	ldi 1,%r3
	b .L593
	extru %r3,31,8,%r3
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
	movb,< %r26,%r26,.L602
	ldi 0,%r3
.L599:
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
.L602:
	sub %r0,%r26,%r26
	b .L599
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
	b .L604
	ldi 1,%r19
.L607:
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
.L604:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,=,n 0,%r20,.L606
	extrs %r25,31,16,%r20
	comib,<=,n 0,%r20,.L607
	zdep %r25,30,31,%r25
	b .L606
	ldi 0,%r20
.L609:
	extru %r19,30,31,%r19
.L614:
	extru %r25,30,31,%r25
.L606:
	comiclr,<> 0,%r19,%r0
	b,n .L613
	comb,>>,n %r25,%r28,.L614
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	b .L609
	or %r20,%r19,%r20
.L613:
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
	b .L616
	ldi 1,%r19
.L619:
	zdep %r19,30,31,%r19
.L616:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L618
	comib,<=,n 0,%r25,.L619
	zdep %r25,30,31,%r25
	b .L618
	ldi 0,%r20
.L621:
	extru %r19,30,31,%r19
.L626:
	extru %r25,30,31,%r25
.L618:
	comiclr,<> 0,%r19,%r0
	b,n .L625
	comb,>>,n %r25,%r28,.L626
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L621
	or %r20,%r19,%r20
.L625:
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
	bb,>= %r24,26,.L628
	ldi 0,%r29
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
.L630:
	bv,n %r0(%r2)
.L628:
	comib,=,n 0,%r24,.L631
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	zvdep %r25,32,%r28
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	b .L630
	or %r26,%r28,%r28
.L631:
	copy %r25,%r28
	b .L630
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
	bb,>= %r24,26,.L633
	copy %r25,%r28
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r25,32,%r29
.L635:
	bv,n %r0(%r2)
.L633:
	comib,=,n 0,%r24,.L636
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L635
	or %r25,%r29,%r29
.L636:
	b .L635
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
	zdepi -1,31,16,%r28
	comclr,<< %r28,%r26,%r28
	ldi 1,%r28
	zdep %r28,27,28,%r28
	subi 16,%r28,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	zdepi -1,23,8,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,28,29,%r19
	subi 8,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 240,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,29,30,%r19
	subi 4,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 12,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,30,31,%r19
	subi 2,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 2,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	subi 2,%r26,%r26
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	bv %r0(%r2)
	addl %r28,%r20,%r28
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
	comb,> %r23,%r25,.L646
	ldi 0,%r28
	comb,< %r23,%r25,.L646
	ldi 2,%r28
	comb,>> %r24,%r26,.L646
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L641:
.L646:
	bv,n %r0(%r2)
	b .L641
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
	bb,>= %r24,26,.L650
	ldi 0,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
.L652:
	bv,n %r0(%r2)
.L650:
	comib,= 0,%r24,.L653
	mtsar %r24
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L652
	or %r25,%r29,%r29
.L653:
	copy %r25,%r28
	b .L652
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
	b .L664
	fldds 0(%r28),%fr22
.L667:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L663
	fmpy,dbl %fr5,%fr5,%fr5
.L664:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L667
	extru %r24,0,1,%r28
	b .L667
	fmpy,dbl %fr22,%fr5,%fr22
.L663:
	comib,= 0,%r19,.L665
	fcpy,dbl %fr22,%fr4
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr4
	fdiv,dbl %fr4,%fr22,%fr4
.L665:
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
	b .L671
	fldws 0(%r28),%fr22L
.L674:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L670
	fmpy,sgl %fr4L,%fr4L,%fr4L
.L671:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L674
	extru %r25,0,1,%r28
	b .L674
	fmpy,sgl %fr22L,%fr4L,%fr22L
.L670:
	comib,= 0,%r19,.L672
	fcpy,sgl %fr22L,%fr4L
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr4L
	fdiv,sgl %fr4L,%fr22L,%fr4L
.L672:
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
	comb,>> %r23,%r25,.L681
	ldi 0,%r28
	comb,<< %r23,%r25,.L681
	ldi 2,%r28
	comb,>> %r24,%r26,.L681
	ldi 0,%r28
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L676:
.L681:
	bv,n %r0(%r2)
	b .L676
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
