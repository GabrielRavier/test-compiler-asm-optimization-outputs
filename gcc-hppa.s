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
	b,n .L5
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
.L5:
	bv,n %r0(%r2)
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
	b .L32
	ldo -1(%r24),%r24
.L34:
	comb,<> %r19,%r25,.L35
	ldo -1(%r24),%r20
	b .L33
	addl %r26,%r24,%r28
.L35:
	copy %r20,%r24
.L32:
	comib,<>,n -1,%r24,.L34
	ldbx %r26(%r24),%r19
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
	b .L37
	extru %r25,31,8,%r25
.L38:
	ldo 1(%r19),%r19
.L37:
	comb,<>,n %r24,%r19,.L38
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
	b .L40
	copy %r26,%r28
.L41:
	ldo 1(%r28),%r28
.L40:
	ldb 0(%r25),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L41
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
.L45:
	ldb 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L44
	comb,<>,n %r19,%r25,.L45
	ldo 1(%r28),%r28
.L44:
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
.L51:
	extrs %r28,31,8,%r28
	comb,=,n %r28,%r25,.L49
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	comib,<>,n 0,%r28,.L51
	ldb 0(%r26),%r28
	b,n .L47
.L49:
	copy %r26,%r28
.L47:
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
	b .L56
	ldb 0(%r26),%r19
.L55:
	ldo 1(%r25),%r25
	ldb 0(%r26),%r19
.L56:
	extrs %r19,31,8,%r19
	ldb 0(%r25),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L54
	ldb 0(%r26),%r28
	comib,<>,n 0,%r28,.L55
	ldo 1(%r26),%r26
.L54:
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
.L59:
	ldb 0(%r28),%r20
	comib,<>,n 0,%r20,.L59
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
	movb,= %r24,%r24,.L65
	copy %r26,%r19
	ldo -1(%r24),%r24
	b .L62
	addl %r26,%r24,%r26
.L64:
	ldo 1(%r25),%r25
.L62:
	ldb 0(%r19),%r28
	comib,=,n 0,%r28,.L66
	ldb 0(%r25),%r20
	comclr,= %r26,%r19,%r28
	ldi 1,%r28
	comiclr,= 0,%r20,%r20
	ldi 1,%r20
	and %r28,%r20,%r28
	comib,=,n 0,%r28,.L63
	ldb 0(%r19),%r20
	ldb 0(%r25),%r28
	comb,=,n %r28,%r20,.L64
	ldo 1(%r19),%r19
.L63:
	ldb 0(%r19),%r28
.L66:
	ldb 0(%r25),%r19
	b .L61
	sub %r28,%r19,%r28
.L65:
	ldi 0,%r28
.L61:
	bv,n %r0(%r2)
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
	b .L68
	addl %r26,%r24,%r24
.L69:
	stb %r19,0(%r25)
	ldb 0(%r28),%r19
	stb %r19,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L68:
	sub %r24,%r28,%r19
	comib,<,n 1,%r19,.L69
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
	comib,<> 0,%r19,.L81
	ldi 1,%r28
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L81
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L81:
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
	comb,<< %r28,%r26,.L87
	ldil L'16384,%r19
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
	b,n .L88
.L87:
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L89
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L90
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<< %r28,%r19,.L91
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
	b,n .L88
.L89:
	b .L88
	ldi 1,%r28
.L90:
	b .L88
	ldi 1,%r28
.L91:
	ldi 0,%r28
.L88:
	bv,n %r0(%r2)
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
	comib,>>= 9,%r19,.L94
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L94:
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
	b,n .L104
	b .L105
	fcpy,dbl %fr0,%fr4
.L104:
	b .L99
	fsub,dbl %fr5,%fr7,%fr4
.L101:
	fcpy,dbl %fr5,%fr4
.L105:
.L99:
.L106:
	bv,n %r0(%r2)
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
	b .L114
	fcpy,sgl %fr0,%fr4L
.L113:
	b .L108
	fsub,sgl %fr4L,%fr5L,%fr4L
.L111:
	fcpy,sgl %fr5L,%fr4L
.L114:
.L108:
	bv,n %r0(%r2)
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
	b .L119
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L120
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L117
	comib,<= 0,%r28,.L116
	fcpy,dbl %fr5,%fr4
	b .L116
	fcpy,dbl %fr7,%fr4
.L117:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L116
	fcpy,dbl %fr7,%fr4
	b .L124
	fcpy,dbl %fr5,%fr4
.L119:
	b .L116
	fcpy,dbl %fr7,%fr4
.L120:
	fcpy,dbl %fr5,%fr4
.L124:
.L116:
	bv,n %r0(%r2)
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
	b .L129
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L126
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L127
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L126
	b .L126
	fcpy,sgl %fr5L,%fr4L
.L127:
	fcmp,sgl,!< %fr22L,%fr5L
	ftest
	b .L126
	fcpy,sgl %fr5L,%fr4L
	b .L134
	fcpy,sgl %fr22L,%fr4L
.L129:
	fcpy,sgl %fr5L,%fr4L
.L134:
.L126:
	bv,n %r0(%r2)
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
	b,n .L137
	comib,<= 0,%r28,.L136
	fcpy,dbl %fr5,%fr4
	b .L136
	fcpy,dbl %fr7,%fr4
.L137:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L136
	fcpy,dbl %fr7,%fr4
	b .L144
	fcpy,dbl %fr5,%fr4
.L139:
	b .L136
	fcpy,dbl %fr7,%fr4
.L140:
	fcpy,dbl %fr5,%fr4
.L144:
.L136:
	bv,n %r0(%r2)
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
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L149
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L150
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L147
	comib,<= 0,%r28,.L146
	fcpy,dbl %fr7,%fr4
	b .L146
	fcpy,dbl %fr5,%fr4
.L147:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L146
	fcpy,dbl %fr5,%fr4
	b .L154
	fcpy,dbl %fr7,%fr4
.L149:
	b .L146
	fcpy,dbl %fr7,%fr4
.L150:
	fcpy,dbl %fr5,%fr4
.L154:
.L146:
	bv,n %r0(%r2)
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
	b,n .L156
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L157
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comib,<= 0,%r28,.L156
	fcpy,sgl %fr5L,%fr4L
	b .L156
	fcpy,sgl %fr22L,%fr4L
.L157:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L156
	b .L164
	fcpy,sgl %fr5L,%fr4L
.L159:
	fcpy,sgl %fr5L,%fr4L
.L164:
.L156:
	bv,n %r0(%r2)
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
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L169
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L170
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L167
	comib,<= 0,%r28,.L166
	fcpy,dbl %fr7,%fr4
	b .L166
	fcpy,dbl %fr5,%fr4
.L167:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L166
	fcpy,dbl %fr5,%fr4
	b .L174
	fcpy,dbl %fr7,%fr4
.L169:
	b .L166
	fcpy,dbl %fr7,%fr4
.L170:
	fcpy,dbl %fr5,%fr4
.L174:
.L166:
	bv,n %r0(%r2)
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
	b .L176
	ldo RR'digits(%r19),%r19
.L177:
	ldbx %r19(%r28),%r28
	stb %r28,0(%r1)
	ldo 1(%r1),%r1
	extru %r26,25,26,%r26
.L176:
	comib,<>,n 0,%r26,.L177
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
	ldo -1(%r26),%r29
	ldi 0,%r28
	addil LR'seed-$global$,%r27
	ldo RR'seed-$global$(%r1),%r1
	stw %r28,0(%r1)
	stw %r29,4(%r1)
	bv,n %r0(%r2)
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
	ldw 0(%r1),%r19
	ldw 4(%r1),%r20
	ldil L'1284865837,%r29
	ldil L'1481765933,%r28
	ldo R'1481765933(%r28),%r28
	ldo R'1284865837(%r29),%r29
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r24,%r22,%r21
	copy %r20,%r29
	addl %r19,%r21,%r28
	addi 1,%r29,%r29
	addc %r28,%r0,%r28
	stw %r28,0(%r1)
	stw %r29,4(%r1)
	extru %r28,30,31,%r20
	bv %r0(%r2)
	copy %r20,%r28
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
	movb,<>,n %r25,%r25,.L181
	stw %r0,4(%r26)
	b .L180
	stw %r0,0(%r26)
.L181:
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L180:
	bv,n %r0(%r2)
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
	comib,=,n 0,%r28,.L184
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L184:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L183
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L183:
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
	b .L187
	ldi 0,%r3
.L190:
	copy %r7,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L188
	addl %r4,%r5,%r4
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L189
	addl %r9,%r29,%r28
.L188:
	ldo 1(%r3),%r3
.L187:
	comb,<> %r6,%r3,.L190
	copy %r4,%r25
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
.L189:
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
	b .L192
	ldi 0,%r3
.L195:
	copy %r6,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L193
	addl %r4,%r5,%r4
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L194
	addl %r9,%r29,%r28
.L193:
	ldo 1(%r3),%r3
.L192:
	comb,<> %r7,%r3,.L195
	copy %r4,%r25
	ldi 0,%r28
.L194:
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
	b .L200
	ldi 1,%r20
.L205:
	ldi 0,%r20
.L200:
	ldo 1(%r3),%r3
.L201:
	b .L202
	ldi 0,%r28
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
	b .L211
	ldi 1,%r20
.L216:
	ldi 0,%r20
.L211:
	ldo 1(%r3),%r3
.L212:
	b .L213
	ldi 0,%r28
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r10,128(%r30)
	stw %r9,-124(%r30)
	stw %r8,-120(%r30)
	stw %r7,-116(%r30)
	stw %r6,-112(%r30)
	stw %r5,-108(%r30)
	stw %r3,-104(%r30)
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
	ldi 0,%r21
	b .L222
	ldi 1,%r21
.L227:
	ldi 0,%r21
.L222:
	ldo 1(%r3),%r3
.L223:
	ldi 0,%r28
	ldi 0,%r29
	b .L230
	ldb 0(%r3),%r19
.L225:
	zdep %r29,29,30,%r8
	add %r29,%r8,%r29
	addc %r28,%r7,%r28
	shd %r28,%r29,31,%r9
	zdep %r29,30,31,%r10
	ldo 1(%r3),%r3
	ldb -1(%r3),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	copy %r28,%r6
	extrs %r28,0,1,%r5
	sub %r10,%r6,%r29
	subb %r9,%r5,%r28
	ldb 0(%r3),%r19
.L230:
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L225
	shd %r28,%r29,30,%r7
	copy %r28,%r19
	copy %r29,%r20
	comiclr,= 0,%r21,%r0
	b,n .L226
	sub %r0,%r29,%r20
	subb %r0,%r28,%r19
.L226:
	copy %r19,%r28
	copy %r20,%r29
	ldw -148(%r30),%r2
	ldw -124(%r30),%r9
	ldw -120(%r30),%r8
	ldw -116(%r30),%r7
	ldw -112(%r30),%r6
	ldw -108(%r30),%r5
	ldw -104(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r10
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
	b .L232
	ldw -180(%r30),%r7
.L236:
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
	movb,>=,n %r28,%r28,.L233
	extru %r3,30,31,%r3
	b,n .L232
.L233:
	comib,>= 0,%r28,.L237
	copy %r4,%r28
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
	extru %r3,30,31,%r28
	uaddcm %r3,%r28,%r3
.L232:
	comib,<>,n 0,%r3,.L236
	extru %r3,30,31,%r28
	ldi 0,%r28
.L237:
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
	b .L239
	copy %r25,%r5
.L242:
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
	b,n .L243
	comib,>=,n 0,%r28,.L241
	ldo -1(%r3),%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r4,%r28,%r5
.L241:
	extrs %r3,30,31,%r3
.L239:
	comib,<>,n 0,%r3,.L242
	extrs %r3,30,31,%r28
	b .L240
	ldi 0,%r28
.L243:
	copy %r4,%r28
.L240:
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
	copy %r26,%r19
	copy %r25,%r28
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	copy %r29,%r20
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$remI,MILLICODE
	bl $$remI,%r31
	nop
	copy %r20,%r28
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
	xor %r29,%r26,%r20
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
	stwm %r10,128(%r30)
	stw %r9,-124(%r30)
	stw %r8,-120(%r30)
	stw %r7,-116(%r30)
	stw %r6,-112(%r30)
	stw %r5,-108(%r30)
	stw %r3,-104(%r30)
	copy %r25,%r7
	copy %r26,%r8
	copy %r23,%r9
	copy %r24,%r10
	bl __divdi3,%r2
	copy %r28,%r3
	copy %r28,%r5
	copy %r29,%r6
	copy %r9,%r23
	copy %r10,%r24
	copy %r7,%r25
	copy %r8,%r26
	bl __moddi3,%r2
	nop
	stw %r5,0(%r3)
	stw %r6,4(%r3)
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	copy %r3,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r9
	ldw -120(%r30),%r8
	ldw -116(%r30),%r7
	ldw -112(%r30),%r6
	ldw -108(%r30),%r5
	ldw -104(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r10
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
	copy %r26,%r19
	copy %r25,%r28
	bl $$divI,%r31
	nop
	copy %r29,%r20
	copy %r19,%r26
	copy %r28,%r25
	bl $$remI,%r31
	nop
	copy %r20,%r28
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
	xor %r29,%r26,%r20
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
	stwm %r10,128(%r30)
	stw %r9,-124(%r30)
	stw %r8,-120(%r30)
	stw %r7,-116(%r30)
	stw %r6,-112(%r30)
	stw %r5,-108(%r30)
	stw %r3,-104(%r30)
	copy %r25,%r7
	copy %r26,%r8
	copy %r23,%r9
	copy %r24,%r10
	bl __divdi3,%r2
	copy %r28,%r3
	copy %r28,%r5
	copy %r29,%r6
	copy %r9,%r23
	copy %r10,%r24
	copy %r7,%r25
	copy %r8,%r26
	bl __moddi3,%r2
	nop
	stw %r5,0(%r3)
	stw %r6,4(%r3)
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	copy %r3,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r9
	ldw -120(%r30),%r8
	ldw -116(%r30),%r7
	ldw -112(%r30),%r6
	ldw -108(%r30),%r5
	ldw -104(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r10
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
.L254:
	ldw 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L257
	comb,<>,n %r19,%r25,.L254
	ldo 4(%r28),%r28
	ldw 0(%r28),%r19
.L257:
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
	b .L264
	ldw 0(%r26),%r19
.L261:
	ldo 4(%r25),%r25
	ldw 0(%r26),%r19
.L264:
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L260
	comiclr,<> 0,%r19,%r0
	b,n .L260
	comib,<>,n 0,%r28,.L261
	ldo 4(%r26),%r26
.L260:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L262
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L262:
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
.L268:
	addl %r28,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
	ldwx %r22(%r19),%r20
	comib,<>,n 0,%r20,.L268
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
.L271:
	ldw 0(%r28),%r19
	comib,<>,n 0,%r19,.L271
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
	b,n .L273
.L275:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L273:
	comib,=,n 0,%r24,.L274
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<> %r28,%r19,.L279
	ldi 0,%r28
	comib,=,n 0,%r19,.L274
	ldw 0(%r25),%r28
	comib,<>,n 0,%r28,.L275
	ldo -1(%r24),%r24
.L274:
	ldi 0,%r28
.L279:
	comb,=,n %r28,%r24,.L276
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L276
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L276:
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
	b .L281
	copy %r26,%r28
.L283:
	ldo 4(%r28),%r28
.L281:
	comib,=,n 0,%r24,.L282
	ldw 0(%r28),%r19
	comb,<>,n %r19,%r25,.L283
	ldo -1(%r24),%r24
.L282:
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
	b,n .L287
.L289:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L287:
	comib,=,n 0,%r24,.L288
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,=,n %r28,%r19,.L289
	ldo -1(%r24),%r24
.L288:
	ldi 0,%r28
	comb,=,n %r28,%r24,.L290
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L290
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L290:
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
	b .L294
	ldi 0,%r19
.L295:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L294:
	comb,<>,n %r24,%r19,.L295
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
	comb,= %r25,%r26,.L297
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L298
	ldi 0,%r19
	b,n .L299
.L300:
	sh2addl %r24,%r28,%r19 
	stw %r20,0(%r19)
.L298:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L300
	ldwx,s %r24(%r25),%r20
	b,n .L297
.L301:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L299:
	comb,<>,n %r24,%r19,.L301
	ldwx,s %r19(%r25),%r21
.L297:
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
	copy %r26,%r28
	b .L304
	ldi 0,%r19
.L305:
	stw %r25,0(%r20)
	ldo 1(%r19),%r19
.L304:
	comb,<> %r24,%r19,.L305
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
	comb,<<=,n %r25,%r26,.L307
	ldo -1(%r26),%r26
	b .L308
	ldo -1(%r25),%r25
.L309:
	addl %r25,%r24,%r28
	stb %r19,0(%r28)
	ldo -1(%r24),%r24
.L308:
	comib,<>,n 0,%r24,.L309
	ldbx %r26(%r24),%r19
	b,n .L306
.L307:
	comb,<> %r25,%r26,.L311
	ldi 0,%r28
	b,n .L306
.L312:
	addl %r25,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L311:
	comb,<>,n %r24,%r28,.L312
	ldbx %r26(%r28),%r20
.L306:
	bv,n %r0(%r2)
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
	copy %r25,%r28
	copy %r26,%r29
	bb,>= %r24,26,.L316
	extru %r29,30,31,%r21
	subi 31,%r24,%r21
	mtsar %r21
	zvdep %r29,32,%r19
	b .L317
	ldi 0,%r20
.L316:
	uaddcm %r0,%r24,%r19
	mtsar %r19
	vshd %r0,%r21,%r21
	subi 31,%r24,%r22
	mtsar %r22
	zvdep %r28,32,%r19
	or %r21,%r19,%r19
	zvdep %r29,32,%r20
.L317:
	sub %r0,%r24,%r21
	bb,>= %r21,26,.L318
	zdep %r28,30,31,%r31
	mtsar %r21
	vshd %r0,%r28,%r22
	b .L319
	ldi 0,%r21
.L318:
	sub %r0,%r24,%r24
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r31,32,%r31
	mtsar %r24
	vshd %r0,%r29,%r22
	or %r31,%r22,%r22
	vshd %r0,%r28,%r21
.L319:
	or %r21,%r19,%r28
	bv %r0(%r2)
	or %r22,%r20,%r29
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
	copy %r25,%r28
	copy %r26,%r29
	bb,>= %r24,26,.L321
	copy %r28,%r21
	mtsar %r24
	vshd %r0,%r28,%r20
	b .L322
	ldi 0,%r19
.L321:
	zdep %r21,30,31,%r21
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r21,32,%r21
	mtsar %r24
	vshd %r0,%r29,%r20
	or %r21,%r20,%r20
	vshd %r0,%r28,%r19
.L322:
	sub %r0,%r24,%r21
	bb,>= %r21,26,.L323
	extru %r29,30,31,%r31
	extru %r21,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r29,32,%r21
	b .L324
	ldi 0,%r22
.L323:
	sub %r0,%r24,%r24
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r21
	mtsar %r21
	vshd %r0,%r31,%r31
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r28,32,%r21
	or %r31,%r21,%r21
	zvdep %r29,32,%r22
.L324:
	or %r21,%r19,%r28
	bv %r0(%r2)
	or %r22,%r20,%r29
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
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	copy %r25,%r28
	depi 0,31,24,%r28
	ldi 0,%r29
	extru %r28,7,8,%r20
	ldil L'16711680,%r31
	and %r25,%r31,%r23
	extru %r23,23,24,%r22
	or %r22,%r20,%r24
	zdepi -1,23,8,%r28
	and %r25,%r28,%r21
	zdep %r21,23,24,%r20
	extru %r21,7,8,%r19
	or %r29,%r19,%r21
	or %r24,%r20,%r22
	extru %r25,31,8,%r23
	zdep %r23,7,8,%r20
	extru %r23,23,24,%r19
	or %r21,%r19,%r23
	or %r22,%r20,%r24
	copy %r26,%r20
	depi 0,31,24,%r20
	shd %r29,%r20,24,%r21
	zdep %r20,23,24,%r22
	or %r23,%r21,%r1
	or %r24,%r22,%r2
	and %r26,%r31,%r20
	shd %r29,%r20,8,%r23
	zdep %r20,7,8,%r24
	or %r1,%r23,%r21
	or %r2,%r24,%r22
	and %r26,%r28,%r20
	zdep %r20,23,24,%r23
	or %r21,%r23,%r19
	copy %r22,%r20
	extru %r26,31,8,%r22
	zdep %r22,7,8,%r21
	or %r19,%r21,%r28
	copy %r20,%r29
	ldw -20(%r30),%r2
	bv,n %r0(%r2)
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
	b .L337
	ldi 32,%r20
.L340:
	mtsar %r19
	bvb,>= %r26,.L337
	ldo 1(%r28),%r28
	ldo -1(%r28),%r28
	b .L339
	ldo 1(%r28),%r28
.L337:
	comb,<> %r20,%r28,.L340
	subi 31,%r28,%r19
	ldi 0,%r28
.L339:
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
	movb,= %r26,%r26,.L345
	ldi 1,%r28
	b .L346
	extru %r26,31,1,%r19
.L344:
	ldo 1(%r28),%r28
	extru %r26,31,1,%r19
.L346:
	comib,=,n 0,%r19,.L344
	extrs %r26,30,31,%r26
	b,n .L342
.L345:
	ldi 0,%r28
.L342:
	bv,n %r0(%r2)
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
	b .L348
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L348
	ldi 0,%r28
.L348:
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
	b .L354
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L354
	ldi 0,%r28
.L354:
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
	b,n .L360
	ldi 0,%r28
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
	b,n .L367
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr4L,%fr22L
	ftest
	b,n .L367
	comib,<= 0,%r25,.L371
	ldil LR'.LC13,%r28
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L370
	fldws 0(%r28),%fr22L
.L371:
	ldo RR'.LC13(%r28),%r28
	fldws 0(%r28),%fr22L
.L370:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L372
	extru %r25,0,1,%r28
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L372:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L367
	b .L370
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L367:
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
	b .L374
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L374
	comib,<= 0,%r24,.L378
	ldil LR'.LC17,%r28
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L377
	fldds 0(%r28),%fr22
.L378:
	ldo RR'.LC17(%r28),%r28
	fldds 0(%r28),%fr22
.L377:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L379
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L379:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L374
	b .L377
	fmpy,dbl %fr22,%fr22,%fr22
.L374:
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
	comib,<= 0,%r24,.L385
	ldil LR'.LC21,%r28
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L384
	fldds 0(%r28),%fr22
.L385:
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L384:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L386
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L386:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L381
	b .L384
	fmpy,dbl %fr22,%fr22,%fr22
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
	b .L388
	ldi 0,%r19
.L389:
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	stb %r20,0(%r21)
	ldo 1(%r19),%r19
.L388:
	comb,<>,n %r24,%r19,.L389
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
	b .L391
	addl %r5,%r28,%r28
.L393:
	ldo 1(%r28),%r28
	ldo -1(%r3),%r3
.L391:
	comib,=,n 0,%r3,.L392
	ldb 0(%r4),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L393
	ldo 1(%r4),%r4
.L392:
	comiclr,<> 0,%r3,%r0
	stb %r0,0(%r28)
.L394:
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
.L398:
	comb,=,n %r25,%r28,.L397
	ldbx %r26(%r28),%r19
	comib,<>,n 0,%r19,.L398
	ldo 1(%r28),%r28
.L397:
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
	b .L406
	ldb 0(%r26),%r28
.L402:
	ldb -1(%r19),%r21
	extrs %r21,31,8,%r21
	ldb 0(%r26),%r20
	extrs %r20,31,8,%r20
	comb,= %r20,%r21,.L404
	copy %r26,%r28
.L405:
	ldb 0(%r19),%r20
	comib,<>,n 0,%r20,.L402
	ldo 1(%r19),%r19
	ldo 1(%r26),%r26
	ldb 0(%r26),%r28
.L406:
	comib,<>,n 0,%r28,.L405
	copy %r25,%r19
.L404:
	bv,n %r0(%r2)
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
.L412:
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
	ldo 1(%r26),%r26
	ldb -1(%r26),%r19
	comib,<>,n 0,%r19,.L412
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
	movb,=,n %r28,%r5,.L417
	ldb 0(%r4),%r6
	b .L415
	extrs %r6,31,8,%r6
.L416:
	copy %r4,%r25
	bl strncmp,%r2
	copy %r3,%r26
	comib,=,n 0,%r28,.L418
	ldo 1(%r3),%r3
.L415:
	copy %r6,%r25
	bl strchr,%r2
	copy %r3,%r26
	movb,<> %r28,%r3,.L416
	copy %r5,%r24
	b .L419
	ldw -84(%r30),%r2
.L417:
	b .L414
	copy %r3,%r28
.L418:
	copy %r3,%r28
.L414:
	ldw -84(%r30),%r2
.L419:
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
	b,n .L429
	b .L433
	fcmp,dbl,!> %fr5,%fr0
.L429:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L423
	fcmp,dbl,!> %fr5,%fr0
.L433:
	ftest
	b .L430
	fcpy,dbl %fr5,%fr4
	b,n .L424
.L430:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L423
	b .L432
	fcpy,dbl %fr5,%fr4
.L423:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L432:
.L424:
	bv,n %r0(%r2)
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
	comib,= 0,%r23,.L439
	addl %r26,%r5,%r5
	comb,>>,n %r23,%r25,.L440
	ldo 1(%r24),%r7
	b .L436
	ldo -1(%r23),%r6
.L438:
	extrs %r19,31,8,%r19
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	comb,<> %r28,%r19,.L437
	copy %r6,%r24
	copy %r7,%r25
	bl memcmp,%r2
	ldo 1(%r3),%r26
	comib,= 0,%r28,.L441
	copy %r3,%r28
.L437:
	ldo 1(%r3),%r3
.L436:
	comb,>>=,n %r5,%r3,.L438
	ldb 0(%r3),%r19
	b .L435
	ldi 0,%r28
.L439:
	b .L435
	copy %r26,%r28
.L440:
	ldi 0,%r28
.L441:
.L435:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r7
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
	b .L458
	fcpy,dbl %fr5,%fr4
	b .L460
	ldi 0,%r20
.L458:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	ldi 1,%r20
.L460:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L459
	ldi 0,%r28
	b .L461
	ldi 1,%r28
.L459:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr23
	ldil LR'.LC25,%r19
	b .L446
	ldo RR'.LC25(%r19),%r19
.L448:
	ldo 1(%r28),%r28
	fldds 0(%r19),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
.L446:
	fcmp,dbl,!>= %fr4,%fr23
	ftest
	b,n .L448
	stw %r28,0(%r24)
	b,n .L462
.L461:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L450
	ldi 0,%r28
.L450:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L451
	ldi 1,%r21
	ldi 0,%r21
.L451:
	and %r28,%r21,%r28
	comib,<>,n 0,%r28,.L457
	stw %r28,0(%r24)
	b,n .L462
.L453:
	ldo -1(%r28),%r28
	b .L452
	fadd,dbl %fr4,%fr4,%fr4
.L457:
	ldi 0,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
.L452:
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L453
	stw %r28,0(%r24)
.L462:
	comiclr,<> 0,%r20,%r0
	b,n .L454
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L454:
	bv,n %r0(%r2)
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
	copy %r25,%r28
	copy %r26,%r29
	ldi 0,%r25
	ldi 0,%r26
	b .L468
	or %r28,%r29,%r31
.L467:
	extru %r29,31,1,%r22
	or %r21,%r22,%r31
	comb,= %r21,%r31,.L469
	shd %r23,%r24,31,%r1
	add %r24,%r26,%r26
	addc %r23,%r25,%r25
.L469:
	zdep %r24,30,31,%r2
	copy %r1,%r23
	copy %r2,%r24
	zdep %r28,0,1,%r31
	extru %r29,30,31,%r20
	or %r31,%r20,%r20
	extru %r28,30,31,%r19
	copy %r19,%r28
	copy %r20,%r29
	or %r28,%r29,%r31
.L468:
	comib,<> 0,%r31,.L467
	ldi 0,%r21
	copy %r25,%r28
	copy %r26,%r29
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
	b .L471
	ldi 1,%r19
.L474:
	zdep %r19,30,31,%r19
.L471:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L473
	comib,<=,n 0,%r25,.L474
	zdep %r25,30,31,%r25
	b .L473
	ldi 0,%r20
.L477:
	comb,>>,n %r25,%r28,.L476
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L476:
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
.L473:
	comib,<> 0,%r19,.L477
	nop
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
	extrs %r26,31,8,%r26
	uaddcm %r0,%r26,%r28
	comclr,< %r28,%r26,%r0
	copy %r28,%r26
	comiclr,<> 0,%r26,%r0
	b,n .L483
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	b .L482
	ldo -1(%r28),%r28
.L483:
	ldi 7,%r28
.L482:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
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
	copy %r26,%r29
	comib,<= 0,%r28,.L490
	or %r28,%r29,%r19
	uaddcm %r0,%r25,%r28
	uaddcm %r0,%r26,%r29
	or %r28,%r29,%r19
.L490:
	comiclr,<> 0,%r19,%r0
	b,n .L489
	copy %r28,%r25
	copy %r29,%r26
	bl __clzdi2,%r2
	nop
	b .L487
	ldo -1(%r28),%r28
.L489:
	ldi 63,%r28
.L487:
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
.L494:
	ldi 0,%r19
	comclr,= %r19,%r20,%r0
	copy %r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L492:
	comib,<> 0,%r26,.L494
	extru %r26,31,1,%r20
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
	comb,>> %r25,%r26,.L496
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L497
.L496:
	copy %r25,%r19
	copy %r26,%r20
	b .L498
	sh3addl %r21,%r25,%r21 
.L499:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	ldo 8(%r20),%r20
.L498:
	comb,<> %r21,%r19,.L499
	nop
	b,n .L500
.L501:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L500:
	comb,<<,n %r28,%r24,.L501
	ldbx %r25(%r28),%r20
	b .L505
	ldw -60(%r30),%r3
.L503:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L497:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L503
	ldbx %r25(%r24),%r19
	ldw -60(%r30),%r3
.L505:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
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
	comb,>> %r25,%r26,.L507
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,>> %r26,%r28,%r0
	b,n .L508
.L507:
	zdep %r21,30,31,%r21
	b .L509
	ldi 0,%r28
.L510:
	addl %r26,%r28,%r19
	sth %r20,0(%r19)
	ldo 2(%r28),%r28
.L509:
	comb,<>,n %r21,%r28,.L510
	ldhx %r25(%r28),%r20
	extru %r24,31,1,%r28
	comib,=,n 0,%r28,.L506
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	b .L506
	stb %r28,0(%r26)
.L512:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L508:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L512
	ldbx %r25(%r24),%r19
.L506:
	bv,n %r0(%r2)
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
	comb,>> %r25,%r26,.L515
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L516
.L515:
	zdep %r22,29,30,%r22
	b .L517
	ldi 0,%r19
.L518:
	addl %r26,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
.L517:
	comb,<>,n %r22,%r19,.L518
	ldwx %r25(%r19),%r21
	b,n .L519
.L520:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L519:
	comb,<<,n %r28,%r24,.L520
	ldbx %r25(%r28),%r20
	b,n .L514
.L522:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L516:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L522
	ldbx %r25(%r24),%r19
.L514:
	bv,n %r0(%r2)
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
	copy %r26,%r4
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	nop
	comib,>= 0,%r28,.L529
	copy %r3,%r28
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	b .L528
	fcnvxf,dbl,dbl %fr22,%fr4
.L529:
	ldi 0,%r21
	ldi 0,%r22
	extru %r4,31,1,%r22
	zdep %r28,0,1,%r28
	extru %r4,30,31,%r20
	or %r28,%r20,%r20
	copy %r3,%r28
	extru %r28,30,31,%r19
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	fadd,dbl %fr4,%fr4,%fr4
.L528:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
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
	copy %r26,%r4
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	nop
	comib,>= 0,%r28,.L532
	copy %r3,%r28
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	b .L531
	fcnvxf,dbl,sgl %fr22,%fr4L
.L532:
	ldi 0,%r21
	ldi 0,%r22
	extru %r4,31,1,%r22
	zdep %r28,0,1,%r28
	extru %r4,30,31,%r20
	or %r28,%r20,%r20
	copy %r3,%r28
	extru %r28,30,31,%r19
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	fadd,sgl %fr4L,%fr4L,%fr4L
.L531:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
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
	b .L535
	ldi 16,%r20
.L537:
	mtsar %r19
	bvb,<,n %r26,.L536
	ldo 1(%r28),%r28
.L535:
	comb,<> %r20,%r28,.L537
	ldo 16(%r28),%r19
.L536:
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
	b .L539
	ldi 16,%r20
.L541:
	mtsar %r19
	bvb,<,n %r26,.L540
	ldo 1(%r28),%r28
.L539:
	comb,<> %r20,%r28,.L541
	subi 31,%r28,%r19
.L540:
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
	b .L546
	ldil LR'.LC28,%r28
	b .L547
	fcnvfxt,sgl,sgl %fr4L,%fr4L
.L546:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L545
	addl %r28,%r19,%r28
.L547:
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L545:
	bv,n %r0(%r2)
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
	b .L549
	ldi 16,%r21
.L551:
	mtsar %r20
	vextru %r26,1,%r20
	addl %r28,%r20,%r28
	ldo 1(%r19),%r19
.L549:
	comb,<> %r21,%r19,.L551
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
	b .L553
	ldi 16,%r21
.L555:
	mtsar %r20
	vextru %r26,1,%r20
	addl %r28,%r20,%r28
	ldo 1(%r19),%r19
.L553:
	comb,<> %r21,%r19,.L555
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
	b .L557
	ldi 0,%r28
.L559:
	ldi 0,%r19
	comclr,= %r19,%r20,%r0
	copy %r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L557:
	comib,<> 0,%r26,.L559
	extru %r26,31,1,%r20
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
	movb,= %r26,%r26,.L565
	ldi 0,%r28
	b,n .L562
.L564:
	ldi 0,%r19
	comclr,= %r19,%r20,%r0
	copy %r26,%r19
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L562:
	comib,<> 0,%r25,.L564
	extru %r25,31,1,%r20
.L565:
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
	b .L567
	ldi 1,%r19
.L570:
	zdep %r19,30,31,%r19
.L567:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L569
	comib,<=,n 0,%r25,.L570
	zdep %r25,30,31,%r25
	b .L569
	ldi 0,%r20
.L573:
	comb,>>,n %r25,%r28,.L572
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L572:
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
.L569:
	comib,<> 0,%r19,.L573
	nop
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
	b .L580
	ldi -1,%r28
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L579
	ldi 0,%r28
	b,n .L577
.L579:
	ldi 1,%r28
.L577:
.L580:
	bv,n %r0(%r2)
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
	b .L585
	ldi -1,%r28
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L584
	ldi 0,%r28
	b,n .L582
.L584:
	ldi 1,%r28
.L582:
.L585:
	bv,n %r0(%r2)
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
	copy %r26,%r22
	extrs %r26,0,1,%r26
	extrs %r25,0,1,%r28
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r22,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r22,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r20,%r29,%r19
	copy %r22,%r29
	bv %r0(%r2)
	addl %r21,%r19,%r28
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
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	copy %r20,%r29
	bv %r0(%r2)
	copy %r19,%r28
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
	movb,>= %r25,%r25,.L589
	ldi 0,%r31
	sub %r0,%r25,%r25
	ldi 1,%r31
.L589:
	ldi 0,%r28
	copy %r28,%r20
	b .L590
	ldi 31,%r22
.L592:
	ldi 0,%r19
	comclr,= %r19,%r21,%r0
	copy %r26,%r19
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
	extrs %r25,30,31,%r25
	ldo 1(%r20),%r20
	extrs %r20,31,8,%r20
.L590:
	comiclr,= 0,%r25,%r21
	ldi 1,%r21
	extru %r20,31,8,%r19
	comclr,<< %r22,%r19,%r19
	ldi 1,%r19
	and %r19,%r21,%r19
	comib,<>,n 0,%r19,.L592
	extru %r25,31,1,%r21
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
	movb,>= %r26,%r26,.L597
	ldi 0,%r3
	sub %r0,%r26,%r26
	ldi 1,%r3
.L597:
	comib,<=,n 0,%r25,.L598
	sub %r0,%r25,%r25
	comiclr,<> 0,%r3,%r3
	ldi 1,%r3
	extru %r3,31,8,%r3
.L598:
	bl __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r19
	comiclr,= 0,%r3,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
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
	movb,>= %r26,%r26,.L602
	ldi 0,%r3
	sub %r0,%r26,%r26
	ldi 1,%r3
.L602:
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
	b .L607
	ldi 1,%r19
.L610:
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
.L607:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,=,n 0,%r20,.L609
	extrs %r25,31,16,%r20
	comib,<=,n 0,%r20,.L610
	zdep %r25,30,31,%r25
	b .L609
	ldi 0,%r20
.L613:
	comb,>>,n %r25,%r28,.L612
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r20,%r19,%r20
.L612:
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
.L609:
	comib,<> 0,%r19,.L613
	nop
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
	b .L617
	ldi 1,%r19
.L620:
	zdep %r19,30,31,%r19
.L617:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L619
	comib,<=,n 0,%r25,.L620
	zdep %r25,30,31,%r25
	b .L619
	ldi 0,%r20
.L623:
	comb,>>,n %r25,%r28,.L622
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L622:
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
.L619:
	comib,<> 0,%r19,.L623
	nop
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
	bb,>=,n %r24,26,.L627
	subi 63,%r24,%r24
	ldi 0,%r28
	ldi 0,%r29
	mtsar %r24
	b .L629
	zvdep %r26,32,%r28
.L627:
	comib,= 0,%r24,.L630
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	zvdep %r25,32,%r19
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r20
	b .L629
	or %r20,%r19,%r28
.L630:
	copy %r25,%r28
	copy %r26,%r29
.L629:
	bv,n %r0(%r2)
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
	bb,>= %r24,26,.L632
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	b .L634
	vextrs %r25,32,%r29
.L632:
	comib,= 0,%r24,.L635
	subi 31,%r24,%r19
	mtsar %r19
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r20
	mtsar %r24
	vshd %r0,%r26,%r19
	b .L634
	or %r20,%r19,%r29
.L635:
	copy %r25,%r28
	copy %r26,%r29
.L634:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 4
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,ENTRY_GR=10
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r10,64(%r30)
	stw %r9,-60(%r30)
	stw %r8,-56(%r30)
	stw %r7,-52(%r30)
	stw %r6,-48(%r30)
	stw %r5,-44(%r30)
	stw %r4,-40(%r30)
	stw %r3,-36(%r30)
	copy %r25,%r28
	copy %r26,%r29
	extru %r28,7,8,%r20
	ldi 0,%r19
	extru %r28,23,24,%r22
	copy %r19,%r1
	zdepi -1,23,8,%r10
	and %r22,%r10,%r2
	copy %r28,%r31
	zdep %r31,23,24,%r23
	extru %r29,7,8,%r22
	or %r23,%r22,%r22
	ldil L'16711680,%r9
	and %r22,%r9,%r26
	zdep %r31,7,8,%r31
	extru %r29,23,24,%r22
	or %r31,%r22,%r22
	copy %r22,%r24
	depi 0,31,24,%r24
	shd %r28,%r29,24,%r21
	zdep %r29,23,24,%r22
	extru %r21,31,8,%r3
	shd %r28,%r29,8,%r7
	zdep %r29,7,8,%r8
	and %r7,%r10,%r5
	and %r22,%r9,%r21
	or %r8,%r19,%r28
	or %r20,%r2,%r29
	or %r28,%r19,%r19
	or %r29,%r26,%r20
	or %r19,%r1,%r28
	or %r20,%r24,%r29
	or %r28,%r3,%r19
	copy %r29,%r20
	or %r19,%r5,%r28
	or %r28,%r21,%r19
	copy %r19,%r28
	copy %r20,%r29
	ldw -84(%r30),%r2
	ldw -60(%r30),%r9
	ldw -56(%r30),%r8
	ldw -52(%r30),%r7
	ldw -48(%r30),%r6
	ldw -44(%r30),%r5
	ldw -40(%r30),%r4
	ldw -36(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r10
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
	copy %r25,%r28
	copy %r26,%r29
	comclr,>= %r28,%r23,%r0
	b,n .L649
	comclr,<= %r28,%r23,%r0
	b,n .L650
	comclr,>>= %r29,%r24,%r0
	b,n .L651
	comclr,<<= %r29,%r24,%r28
	ldi 1,%r28
	b .L648
	ldo 1(%r28),%r28
.L649:
	b .L648
	ldi 0,%r28
.L650:
	b .L648
	ldi 2,%r28
.L651:
	ldi 0,%r28
.L648:
	bv,n %r0(%r2)
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
	bb,>= %r24,26,.L664
	mtsar %r24
	ldi 0,%r28
	ldi 0,%r29
	b .L666
	vshd %r0,%r25,%r29
.L664:
	comib,= 0,%r24,.L667
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r20
	mtsar %r24
	vshd %r0,%r26,%r19
	b .L666
	or %r20,%r19,%r29
.L667:
	copy %r25,%r28
	copy %r26,%r29
.L666:
	bv,n %r0(%r2)
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
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	extru %r20,15,16,%r19
	extru %r20,31,16,%r20
	extru %r26,15,16,%r26
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r19,%r22,%r19
	zdep %r19,15,16,%r21
	addl %r21,%r20,%r29
	extru %r19,15,16,%r28
	extru %r29,15,16,%r19
	extru %r29,31,16,%r20
	extru %r25,15,16,%r25
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r19,%r22,%r19
	zdep %r19,15,16,%r21
	addl %r21,%r20,%r29
	extru %r19,15,16,%r19
	addl %r19,%r28,%r19
	xmpyu %fr22L,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	bv %r0(%r2)
	addl %r19,%r26,%r28
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
	copy %r25,%r5
	copy %r26,%r6
	copy %r23,%r3
	copy %r24,%r4
	copy %r4,%r25
	bl __muldsi3,%r2
	copy %r6,%r26
	copy %r28,%r19
	copy %r29,%r20
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r3
	ldws -12(%sp),%r4
	addl %r4,%r22,%r21
	addl %r21,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
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
	xor %r26,%r25,%r25
	extru %r25,15,16,%r28
	xor %r25,%r28,%r25
	extru %r25,23,24,%r28
	xor %r25,%r28,%r25
	extru %r25,27,28,%r28
	xor %r25,%r28,%r25
	extru %r25,31,4,%r25
	subi 31,%r25,%r25
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r25
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
	copy %r28,%r21
	zdep %r21,0,1,%r21
	extru %r29,30,31,%r20
	or %r21,%r20,%r20
	extru %r28,30,31,%r19
	ldil L'1431650304,%r21
	ldo 5461(%r21),%r21
	and %r19,%r21,%r23
	and %r20,%r21,%r24
	sub %r26,%r24,%r29
	subb %r25,%r23,%r28
	copy %r28,%r19
	zdep %r19,1,2,%r19
	extru %r29,29,30,%r22
	or %r19,%r22,%r22
	extru %r28,29,30,%r21
	ldil L'858996736,%r19
	ldo -3277(%r19),%r19
	and %r21,%r19,%r23
	and %r22,%r19,%r24
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
	addl %r28,%r29,%r19
	extru %r19,15,16,%r28
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
	fldds 0(%r28),%fr22
.L678:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L681
	extru %r24,0,1,%r28
	fmpy,dbl %fr22,%fr5,%fr22
.L681:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L677
	b .L678
	fmpy,dbl %fr5,%fr5,%fr5
.L677:
	comib,= 0,%r19,.L679
	fcpy,dbl %fr22,%fr4
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr4
	fdiv,dbl %fr4,%fr22,%fr4
.L679:
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
	fldws 0(%r28),%fr22L
.L685:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L688
	extru %r25,0,1,%r28
	fmpy,sgl %fr22L,%fr4L,%fr22L
.L688:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L684
	b .L685
	fmpy,sgl %fr4L,%fr4L,%fr4L
.L684:
	comib,= 0,%r19,.L686
	fcpy,sgl %fr22L,%fr4L
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr4L
	fdiv,sgl %fr4L,%fr22L,%fr4L
.L686:
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
	copy %r25,%r28
	copy %r26,%r29
	comclr,>>= %r28,%r23,%r0
	b,n .L691
	comclr,<<= %r28,%r23,%r0
	b,n .L692
	comclr,>>= %r29,%r24,%r0
	b,n .L693
	comclr,<<= %r29,%r24,%r28
	ldi 1,%r28
	b .L690
	ldo 1(%r28),%r28
.L691:
	b .L690
	ldi 0,%r28
.L692:
	b .L690
	ldi 2,%r28
.L693:
	ldi 0,%r28
.L690:
	bv,n %r0(%r2)
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
