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
	movb,<> %r23,%r23,.L16
	extru %r24,31,8,%r24
	b .L25
	ldi 0,%r28
.L19:
	comib,= 0,%r23,.L18
	ldo 1(%r26),%r26
.L16:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	comb,<> %r24,%r28,.L19
	ldo 1(%r25),%r25
	bv %r0(%r2)
	ldo 1(%r26),%r28
.L18:
	ldi 0,%r28
.L25:
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
	movb,<> %r24,%r24,.L27
	extru %r25,31,8,%r25
	b .L32
	copy %r24,%r28
.L29:
	comib,= 0,%r24,.L30
	ldo 1(%r26),%r26
.L27:
	ldb 0(%r26),%r28
	comb,<>,n %r25,%r28,.L29
	ldo -1(%r24),%r24
	bv %r0(%r2)
	copy %r26,%r28
.L30:
	copy %r24,%r28
.L32:
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
	or,= %r24,%r0,%r28
	b,n .L34
	b,n .L33
.L36:
	ldo 1(%r26),%r26
	comib,= 0,%r28,.L33
	ldo 1(%r25),%r25
.L34:
	ldb 0(%r26),%r20
	ldb 0(%r25),%r19
	comb,= %r19,%r20,.L36
	ldo -1(%r28),%r28
	sub %r20,%r19,%r28
.L33:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 4
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	comib,= 0,%r24,.L42
	copy %r26,%r3
	bl memcpy,%r2
	nop
.L42:
	copy %r3,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
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
	ldo -1(%r24),%r24
	ldo -1(%r26),%r20
	extru %r25,31,8,%r25
	b .L47
	addl %r26,%r24,%r26
.L49:
	ldb 0(%r28),%r19
	comb,= %r25,%r19,.L46
	ldo -1(%r26),%r26
.L47:
	comb,<> %r20,%r26,.L49
	copy %r26,%r28
	ldi 0,%r28
.L46:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 4
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	comib,= 0,%r24,.L53
	copy %r26,%r3
	bl memset,%r2
	extru %r25,31,8,%r25
.L53:
	copy %r3,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
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
	ldb 0(%r25),%r19
	stb %r19,0(%r26)
	extrs %r19,31,8,%r19
	comib,= 0,%r19,.L55
	copy %r26,%r28
	ldbs,mb 1(%r25),%r19
.L61:
	stbs,mb %r19,1(%r28)
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L61
	ldbs,mb 1(%r25),%r19
.L55:
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
	ldb 0(%r26),%r19
	copy %r26,%r28
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L63
	extru %r25,31,8,%r25
	b,n .L62
.L65:
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L62
.L63:
	extru %r19,31,8,%r19
	comb,<>,n %r25,%r19,.L65
	ldbs,mb 1(%r28),%r19
.L62:
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
	b .L71
	copy %r26,%r28
.L74:
	comib,= 0,%r19,.L73
	ldo 1(%r28),%r28
.L71:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comb,<> %r25,%r19,.L74
	nop
	bv,n %r0(%r2)
.L73:
	bv %r0(%r2)
	copy %r19,%r28
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
	ldb 0(%r25),%r19
	ldb 0(%r26),%r21
	extrs %r19,31,8,%r19
	extrs %r21,31,8,%r28
	ldi 1,%r20
	comb,= %r19,%r28,.L76
	ldo -1(%r25),%r25
	b .L83
	extru %r21,31,8,%r28
.L78:
	ldo 1(%r20),%r20
	extrs %r21,31,8,%r28
	ldbx %r25(%r20),%r19
	extrs %r19,31,8,%r19
	comclr,= %r19,%r28,%r0
	b,n .L82
.L76:
	comib,<>,n 0,%r28,.L78
	ldbx %r26(%r20),%r21
	extru %r19,31,8,%r19
	bv %r0(%r2)
	sub %r28,%r19,%r28
.L82:
	extru %r21,31,8,%r28
.L83:
	extru %r19,31,8,%r19
	bv %r0(%r2)
	sub %r28,%r19,%r28
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
	extrs %r28,31,8,%r28
	comib,=,n 0,%r28,.L84
	copy %r26,%r28
	ldbs,mb 1(%r28),%r19
.L89:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L89
	ldbs,mb 1(%r28),%r19
	sub %r28,%r26,%r28
.L84:
	bv,n %r0(%r2)
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
	movb,=,n %r24,%r28,.L90
	ldo -1(%r28),%r31
	copy %r25,%r19
	ldb 0(%r26),%r28
	comib,<> 0,%r28,.L94
	addl %r25,%r31,%r31
	b .L104
	ldb 0(%r25),%r21
.L106:
	comb,=,n %r31,%r19,.L93
	ldbs,mb 1(%r26),%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L105
	copy %r22,%r19
.L94:
	ldb 0(%r19),%r21
	comclr,<> %r28,%r21,%r22
	ldi 1,%r22
	comiclr,= 0,%r21,%r20
	ldi 1,%r20
	and %r20,%r22,%r20
	comib,<> 0,%r20,.L106
	ldo 1(%r19),%r22
.L93:
	sub %r28,%r21,%r28
.L90:
	bv,n %r0(%r2)
.L105:
	ldb 1(%r19),%r21
	b .L90
	sub %r28,%r21,%r28
.L104:
	b .L90
	sub %r28,%r21,%r28
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
	comib,>= 1,%r24,.L107
	depi 0,31,1,%r24
	addl %r26,%r24,%r20
.L109:
	ldb 1(%r26),%r19
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r19,-2(%r25)
	comb,<> %r20,%r26,.L109
	stb %r28,-1(%r25)
.L107:
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
	comiclr,= 32,%r26,%r0
	comiclr,<< 4,%r28,%r28
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
	ldo -127(%r26),%r28
	comiclr,<< 32,%r28,%r28
	ldi 1,%r28
	comiclr,= 0,%r28,%r0
	b,n .L123
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	comib,<> 0,%r28,.L123
	ldo -40(%r26),%r19
	ldi 1,%r28
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L121
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L121:
	bv,n %r0(%r2)
.L123:
	bv %r0(%r2)
	ldi 1,%r28
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
	comb,>>= %r28,%r26,.L132
	ldo -42(%r26),%r19
	ldil L'49152,%r28
	ldo -8192(%r19),%r19
	ldo -2091(%r28),%r28
	comb,>>= %r28,%r19,.L130
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comb,>>= %r19,%r26,.L130
	ldil L'-57344,%r19
	ldi 8184,%r20
	addl %r26,%r19,%r19
	comb,>>= %r20,%r19,.L130
	zdepi -1,29,14,%r20
	ldil L'1048576,%r19
	sub %r26,%r20,%r20
	ldo 3(%r19),%r19
	comb,<<,n %r19,%r20,.L126
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
.L126:
	bv,n %r0(%r2)
.L130:
	bv %r0(%r2)
	ldi 1,%r28
.L132:
	ldo 1(%r26),%r26
	extru %r26,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
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
	comib,>>= 9,%r19,.L133
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L133:
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
	b .L140
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L141
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L143
	bv %r0(%r2)
	fcpy,dbl %fr0,%fr4
.L143:
	bv %r0(%r2)
	fsub,dbl %fr5,%fr7,%fr4
.L140:
	bv %r0(%r2)
	fcpy,dbl %fr5,%fr4
.L141:
	bv %r0(%r2)
	fcpy,dbl %fr7,%fr4
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
	b .L145
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L149
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L151
	fcpy,sgl %fr0,%fr4L
.L145:
	bv,n %r0(%r2)
.L151:
	bv %r0(%r2)
	fsub,sgl %fr4L,%fr5L,%fr4L
.L149:
	bv %r0(%r2)
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
	fcmp,dbl,!? %fr5,%fr5
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	ftest
	b .L159
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L160
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L165
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L153
.L160:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L153:
	bv,n %r0(%r2)
.L165:
	comib,= 0,%r21,.L160
	nop
	bv,n %r0(%r2)
.L159:
	bv %r0(%r2)
	fcpy,dbl %fr7,%fr4
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
	b .L172
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L173
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,= %r19,%r28,%r0
	b,n .L177
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L172
	fcpy,sgl %fr4L,%fr5L
.L172:
	fcpy,sgl %fr5L,%fr4L
.L166:
	bv,n %r0(%r2)
.L177:
	comib,<> 0,%r28,.L166
	fcpy,sgl %fr5L,%fr4L
.L173:
	bv %r0(%r2)
	fcpy,sgl %fr22L,%fr4L
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
	fcmp,dbl,!? %fr5,%fr5
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	ftest
	b .L184
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L185
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L190
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L178
.L185:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L178:
	bv,n %r0(%r2)
.L190:
	comib,= 0,%r21,.L185
	nop
	bv,n %r0(%r2)
.L184:
	bv %r0(%r2)
	fcpy,dbl %fr7,%fr4
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
	fcmp,dbl,!? %fr5,%fr5
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	ftest
	b .L197
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L198
	copy %r28,%r21
	copy %r19,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L193
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L197
.L191:
	bv,n %r0(%r2)
.L193:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L191
.L197:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L198:
	bv %r0(%r2)
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
	b .L209
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L203
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L205
	comiclr,<> 0,%r28,%r0
	b,n .L209
.L203:
	bv,n %r0(%r2)
.L205:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L203
.L209:
	bv %r0(%r2)
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
	fcmp,dbl,!? %fr5,%fr5
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	ftest
	b .L220
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L221
	copy %r28,%r21
	copy %r19,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L216
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L220
.L214:
	bv,n %r0(%r2)
.L216:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L214
.L220:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L221:
	bv %r0(%r2)
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.align 4
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LR's.0-$global$,%r27
	movb,= %r26,%r26,.L229
	ldo RR's.0-$global$(%r1),%r28
	ldil LR'digits,%r21
	copy %r28,%r19
	ldo RR'digits(%r21),%r21
.L228:
	extru %r26,31,6,%r20
	ldbx %r21(%r20),%r20
	stb %r20,0(%r19)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L228
	ldo 1(%r19),%r19
	bv %r0(%r2)
	stb %r0,0(%r19)
.L229:
	copy %r28,%r19
	bv %r0(%r2)
	stb %r0,0(%r19)
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
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
	stw %r26,4(%r1)
	bv %r0(%r2)
	stw %r0,0(%r1)
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
	ldil L'1284865837,%r29
	ldil L'1481765933,%r28
	ldo R'1481765933(%r28),%r28
	ldo RR'seed-$global$(%r1),%r1
	ldo R'1284865837(%r29),%r29
	fldws 4(%r1),%fr22L
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	ldw 0(%r1),%r19
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23R
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr23R,%fr23L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r20,%r29,%r19
	copy %r22,%r29
	addl %r21,%r19,%r28
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
	movb,=,n %r25,%r25,.L239
	ldw 0(%r25),%r28
	stw %r25,4(%r26)
	stw %r28,0(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L233:
	bv,n %r0(%r2)
.L239:
	stw %r25,4(%r26)
	bv %r0(%r2)
	stw %r25,0(%r26)
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
	comib,=,n 0,%r28,.L241
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L241:
	ldw 4(%r26),%r19
	comiclr,= 0,%r19,%r0
	stw %r28,0(%r19)
.L240:
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
	copy %r25,%r11
	stw %r10,-124(%r30)
	copy %r24,%r10
	stw %r9,-120(%r30)
	ldw -180(%r30),%r9
	stw %r7,-112(%r30)
	copy %r26,%r7
	stw %r5,-104(%r30)
	stw %r8,-116(%r30)
	stw %r6,-108(%r30)
	stw %r4,-100(%r30)
	stw %r3,-96(%r30)
	ldw 0(%r24),%r6
	comib,= 0,%r6,.L250
	copy %r23,%r5
	copy %r25,%r3
	b .L252
	ldi 0,%r4
.L264:
	comb,= %r4,%r6,.L250
	addl %r3,%r5,%r3
.L252:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	copy %r3,%r8
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L264
	ldo 1(%r4),%r4
.L249:
	copy %r8,%r28
.L265:
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
.L250:
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	ldo 1(%r6),%r6
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr22L,%fr22
	stw %r6,0(%r10)
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	comib,= 0,%r5,.L249
	addl %r11,%r29,%r8
	copy %r5,%r24
	copy %r7,%r25
	bl memmove,%r2
	copy %r8,%r26
	b .L265
	copy %r8,%r28
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
	ldw -180(%r30),%r9
	stw %r8,-124(%r30)
	ldw 0(%r24),%r8
	stw %r6,-116(%r30)
	copy %r23,%r6
	stw %r5,-112(%r30)
	stw %r7,-120(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	comib,= 0,%r8,.L267
	copy %r26,%r5
	copy %r25,%r3
	b .L269
	ldi 0,%r4
.L277:
	comb,= %r4,%r8,.L267
	addl %r3,%r6,%r3
.L269:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	copy %r3,%r7
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L277
	ldo 1(%r4),%r4
.L266:
	copy %r7,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r8
	ldw -120(%r30),%r7
	ldw -116(%r30),%r6
	ldw -112(%r30),%r5
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r9
.L267:
	b .L266
	ldi 0,%r7
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>= 4,%r19,.L297
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L303
	ldi 43,%r19
.L297:
	ldbs,mb 1(%r26),%r28
.L304:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L304
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L304
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L303:
	comb,= %r19,%r28,.L283
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L301
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L292
	ldo 1(%r26),%r26
	ldi 1,%r31
.L286:
	ldi 0,%r28
.L289:
	sh2addl %r28,%r28,%r28 
	ldo -48(%r19),%r19
	ldbs,mb 1(%r26),%r22
	extrs %r19,31,8,%r20
	zdep %r28,30,31,%r21
	extrs %r22,31,8,%r19
	ldo -48(%r19),%r22
	comib,>>= 9,%r22,.L289
	sub %r21,%r20,%r28
	sub %r20,%r21,%r20
	comiclr,<> 0,%r31,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L301:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L286
	ldi 0,%r31
.L292:
	ldi 0,%r28
.L302:
	bv,n %r0(%r2)
.L283:
	ldb 1(%r26),%r19
	ldi 0,%r31
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L286
	ldo 1(%r26),%r26
	b .L302
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 4
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>= 4,%r19,.L322
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L326
	ldi 43,%r19
.L322:
	ldbs,mb 1(%r26),%r28
.L327:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L327
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L327
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L326:
	comb,= %r19,%r28,.L309
	ldi 45,%r19
	comb,=,n %r19,%r28,.L325
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L317
	ldi 0,%r31
.L311:
	ldi 0,%r28
.L314:
	sh2addl %r28,%r28,%r28 
	ldo -48(%r19),%r19
	ldbs,mb 1(%r26),%r22
	extrs %r19,31,8,%r20
	zdep %r28,30,31,%r21
	extrs %r22,31,8,%r19
	ldo -48(%r19),%r22
	comib,>>= 9,%r22,.L314
	sub %r21,%r20,%r28
	sub %r20,%r21,%r20
	comiclr,<> 0,%r31,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L325:
	ldb 1(%r26),%r19
	ldi 1,%r31
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L311
	ldo 1(%r26),%r26
.L317:
	bv %r0(%r2)
	ldi 0,%r28
.L309:
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L317
	ldo 1(%r26),%r26
	b .L311
	ldi 0,%r31
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 4
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>= 4,%r19,.L346
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L351
	ldi 43,%r19
.L346:
	ldbs,mb 1(%r26),%r28
.L352:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L352
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L352
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L351:
	comb,= %r19,%r28,.L332
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L350
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L341
	ldo 1(%r26),%r26
	ldi 1,%r25
.L335:
	ldi 0,%r23
	ldi 0,%r24
	ldo -48(%r19),%r19
.L353:
	extrs %r19,31,8,%r19
	ldbs,mb 1(%r26),%r31
	shd %r23,%r24,30,%r28
	zdep %r24,29,30,%r29
	copy %r19,%r22
	add %r24,%r29,%r29
	addc %r23,%r28,%r28
	extrs %r19,0,1,%r21
	shd %r28,%r29,31,%r28
	extrs %r31,31,8,%r19
	zdep %r29,30,31,%r29
	ldo -48(%r19),%r20
	sub %r29,%r22,%r24
	subb %r28,%r21,%r23
	comib,>>=,n 9,%r20,.L353
	ldo -48(%r19),%r19
	comiclr,= 0,%r25,%r0
	b,n .L328
	sub %r22,%r29,%r24
	subb %r21,%r28,%r23
.L328:
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L350:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L335
	ldi 0,%r25
.L341:
	ldi 0,%r23
	ldi 0,%r24
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L332:
	ldb 1(%r26),%r19
	ldi 0,%r25
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L335
	ldo 1(%r26),%r26
	b,n .L341
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
	ldo -104(%r30),%r1
	stw %r7,-124(%r30)
	copy %r26,%r7
	stw %r6,-120(%r30)
	copy %r25,%r6
	stw %r5,-116(%r30)
	stw %r4,-112(%r30)
	stw %r3,-108(%r30)
	fstds,ma %fr12,8(%r1)
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	movb,<> %r24,%r3,.L358
	ldw -180(%r30),%r8
	b .L354
	ldi 0,%r5
.L367:
	comib,= 0,%r28,.L368
	copy %r5,%r28
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	comib,= 0,%r3,.L355
	addl %r5,%r28,%r6
.L358:
	extru %r3,30,31,%r4
.L369:
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r7,%r26
	addl %r6,%r29,%r5
	copy %r8,%r22
	copy %r5,%r25
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,>= %r28,%r28,.L367
	uaddcm %r3,%r4,%r3
	copy %r4,%r3
	comib,<> 0,%r3,.L369
	extru %r3,30,31,%r4
.L355:
	ldi 0,%r5
.L354:
	copy %r5,%r28
.L368:
	ldo -104(%r30),%r1
	ldw -148(%r30),%r2
	ldw -124(%r30),%r7
	ldw -120(%r30),%r6
	ldw -116(%r30),%r5
	ldw -112(%r30),%r4
	ldw -108(%r30),%r3
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=9,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r9,128(%r30)
	ldo -96(%r30),%r1
	stw %r8,-124(%r30)
	stw %r7,-120(%r30)
	copy %r26,%r7
	stw %r6,-116(%r30)
	copy %r25,%r6
	stw %r5,-112(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	fstds,ma %fr12,8(%r1)
	ldw -180(%r30),%r9
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	movb,<> %r24,%r3,.L371
	ldw -184(%r30),%r8
	b .L370
	ldi 0,%r4
.L381:
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	comib,= 0,%r3,.L374
	addl %r4,%r28,%r6
.L371:
	extrs %r3,30,31,%r5
.L382:
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r8,%r24
	addl %r6,%r29,%r4
	copy %r7,%r26
	copy %r4,%r25
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,= %r28,%r28,.L370
	ldo -1(%r3),%r3
	comib,< 0,%r28,.L381
	extrs %r3,30,31,%r3
	copy %r5,%r3
	comib,<> 0,%r3,.L382
	extrs %r3,30,31,%r5
.L374:
	ldi 0,%r4
.L370:
	copy %r4,%r28
	ldo -96(%r30),%r1
	ldw -148(%r30),%r2
	ldw -124(%r30),%r8
	ldw -120(%r30),%r7
	ldw -116(%r30),%r6
	ldw -112(%r30),%r5
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	fldds,ma 8(%r1),%fr12
	bv %r0(%r2)
	ldwm -128(%r30),%r9
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
	copy %r25,%r19
	copy %r26,%r28
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	copy %r28,%r26
	ldo 64(%r30),%r30
	copy %r29,%r28
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
	xor %r29,%r25,%r19
	xor %r26,%r29,%r20
	copy %r29,%r28
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r7,128(%r30)
	copy %r23,%r7
	stw %r6,-124(%r30)
	copy %r24,%r6
	stw %r5,-120(%r30)
	copy %r25,%r5
	stw %r4,-116(%r30)
	copy %r26,%r4
	stw %r3,-112(%r30)
	bl __divdi3,%r2
	copy %r28,%r3
	stw %r28,0(%r3)
	stw %r29,4(%r3)
	copy %r6,%r24
	copy %r5,%r25
	copy %r4,%r26
	bl __moddi3,%r2
	copy %r7,%r23
	copy %r28,%r19
	copy %r29,%r20
	copy %r3,%r28
	stw %r19,8(%r3)
	stw %r20,12(%r3)
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r7
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
	copy %r25,%r19
	copy %r26,%r28
	bl $$divI,%r31
	nop
	copy %r28,%r26
	ldo 64(%r30),%r30
	copy %r29,%r28
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
	xor %r29,%r25,%r19
	xor %r26,%r29,%r20
	copy %r29,%r28
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r7,128(%r30)
	copy %r23,%r7
	stw %r6,-124(%r30)
	copy %r24,%r6
	stw %r5,-120(%r30)
	copy %r25,%r5
	stw %r4,-116(%r30)
	copy %r26,%r4
	stw %r3,-112(%r30)
	bl __divdi3,%r2
	copy %r28,%r3
	stw %r28,0(%r3)
	stw %r29,4(%r3)
	copy %r6,%r24
	copy %r5,%r25
	copy %r4,%r26
	bl __moddi3,%r2
	copy %r7,%r23
	copy %r28,%r19
	copy %r29,%r20
	copy %r3,%r28
	stw %r19,8(%r3)
	stw %r20,12(%r3)
	ldw -148(%r30),%r2
	ldw -124(%r30),%r6
	ldw -120(%r30),%r5
	ldw -116(%r30),%r4
	ldw -112(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r7
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
	comiclr,= 0,%r28,%r0
	b,n .L391
	b,n .L390
.L393:
	comiclr,<> 0,%r28,%r0
	b,n .L390
.L391:
	comb,<>,n %r28,%r25,.L393
	ldws,mb 4(%r26),%r28
	copy %r26,%r28
.L390:
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
	ldw 0(%r25),%r20
	ldw 0(%r26),%r19
	ldi 4,%r28
	comb,= %r20,%r19,.L397
	ldo -4(%r25),%r25
	b,n .L398
.L399:
	ldo 4(%r28),%r28
	ldwx %r25(%r28),%r20
	comclr,= %r20,%r19,%r0
	b,n .L398
.L397:
	comib,<>,n 0,%r19,.L399
	ldwx %r26(%r28),%r19
.L398:
	comclr,>= %r20,%r19,%r28
	ldi 1,%r28
	comclr,<= %r20,%r19,%r0
	ldi -1,%r28
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
.L405:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L405
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
	comib,=,n 0,%r28,.L407
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L412:
	comib,<>,n 0,%r19,.L412
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
	extrs %r28,29,30,%r28
.L407:
	bv,n %r0(%r2)
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
	or,= %r24,%r0,%r28
	b,n .L414
	b,n .L413
.L425:
	comib,= 0,%r19,.L418
	ldo -1(%r28),%r28
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L413
	ldo 4(%r25),%r25
.L414:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r20
	comb,= %r19,%r20,.L425
	nop
.L418:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L413:
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
	movb,<> %r24,%r24,.L427
	copy %r24,%r28
	b,n .L432
.L429:
	comib,= 0,%r24,.L430
	ldo 4(%r26),%r26
.L427:
	ldw 0(%r26),%r28
	comb,<>,n %r25,%r28,.L429
	ldo -1(%r24),%r24
	bv %r0(%r2)
	copy %r26,%r28
.L430:
	copy %r24,%r28
.L432:
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
	or,= %r24,%r0,%r28
	b,n .L434
	b,n .L433
.L436:
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L433
	ldo 4(%r25),%r25
.L434:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,= %r19,%r20,.L436
	ldo -1(%r28),%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L433:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 4
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r3,64(%r30)
	movb,= %r24,%r24,.L443
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L443:
	copy %r3,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
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
	comb,= %r25,%r26,.L455
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,<<= %r19,%r20,.L461
	ldi 0,%r19
	comib,=,n 0,%r24,.L455
	ldo -1(%r24),%r24
.L452:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L452
	stw %r20,0(%r19)
.L455:
	bv,n %r0(%r2)
.L461:
	comb,= %r19,%r24,.L455
	nop
.L450:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L450
	stw %r21,0(%r20)
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
	movb,= %r24,%r24,.L463
	copy %r26,%r28
	ldi 0,%r19
.L464:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L464
	stw %r25,0(%r20)
.L463:
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
	b,n .L470
	comib,=,n 0,%r24,.L469
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L472:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L472
	stb %r19,0(%r28)
.L469:
	bv,n %r0(%r2)
.L470:
	comb,= %r25,%r26,.L469
	nop
	comib,= 0,%r24,.L469
	nop
	ldi 0,%r28
.L473:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L473
	stb %r20,0(%r19)
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
	bb,>= %r24,26,.L483
	subi 31,%r24,%r20
	subi 31,%r24,%r28
	ldi 0,%r29
	mtsar %r28
	sub %r0,%r24,%r24
	zvdep %r26,32,%r28
	bb,>= %r24,26,.L485
	extru %r24,31,6,%r19
.L487:
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
	or %r26,%r29,%r29
	bv %r0(%r2)
	or %r25,%r28,%r28
.L483:
	mtsar %r20
	uaddcm %r0,%r24,%r21
	zvdep %r25,32,%r28
	extru %r26,30,31,%r19
	mtsar %r21
	vshd %r0,%r19,%r19
	sub %r0,%r24,%r24
	mtsar %r20
	or %r19,%r28,%r28
	zvdep %r26,32,%r29
	bb,< %r24,26,.L487
	extru %r24,31,6,%r19
.L485:
	mtsar %r19
	zdep %r25,30,31,%r20
	uaddcm %r0,%r19,%r21
	vshd %r0,%r25,%r25
	vshd %r0,%r26,%r26
	subi 31,%r21,%r21
	or %r25,%r28,%r28
	mtsar %r21
	zvdep %r20,32,%r19
	or %r19,%r26,%r26
	bv %r0(%r2)
	or %r26,%r29,%r29
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
	bb,>= %r24,26,.L489
	mtsar %r24
	ldi 0,%r28
	sub %r0,%r24,%r24
	vshd %r0,%r25,%r20
	bb,>= %r24,26,.L491
	extru %r24,31,6,%r19
.L493:
	subi 31,%r19,%r19
	ldi 0,%r29
	mtsar %r19
	or %r29,%r20,%r29
	zvdep %r26,32,%r25
	bv %r0(%r2)
	or %r25,%r28,%r28
.L489:
	uaddcm %r0,%r24,%r21
	vshd %r0,%r26,%r20
	zdep %r25,30,31,%r19
	subi 31,%r21,%r21
	vshd %r0,%r25,%r28
	mtsar %r21
	zvdep %r19,32,%r19
	sub %r0,%r24,%r24
	or %r19,%r20,%r20
	bb,< %r24,26,.L493
	extru %r24,31,6,%r19
.L491:
	subi 31,%r19,%r22
	mtsar %r22
	uaddcm %r0,%r19,%r19
	zvdep %r25,32,%r25
	mtsar %r19
	extru %r26,30,31,%r21
	vshd %r0,%r21,%r19
	mtsar %r22
	or %r19,%r25,%r25
	zvdep %r26,32,%r29
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r29,%r20,%r29
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
	extru %r25,31,4,%r25
	subi 31,%r25,%r28
	mtsar %r28
	extru %r26,31,16,%r26
	sub %r0,%r25,%r25
	zvdep %r26,32,%r28
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
	extru %r25,31,4,%r25
	mtsar %r25
	extru %r26,31,16,%r26
	sub %r0,%r25,%r25
	vshd %r0,%r26,%r28
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
	extru %r25,31,3,%r25
	subi 31,%r25,%r28
	mtsar %r28
	extru %r26,31,8,%r26
	sub %r0,%r25,%r25
	zvdep %r26,32,%r28
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
	extru %r25,31,3,%r25
	mtsar %r25
	extru %r26,31,8,%r26
	sub %r0,%r25,%r25
	vshd %r0,%r26,%r28
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
	extru %r26,23,8,%r28
	dep %r26,23,8,%r28
	bv %r0(%r2)
	extru %r28,31,16,%r28
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
	shd %r26,%r26,16,%r28
	dep %r28,15,8,%r28
	shd %r26,%r28,8,%r28
	bv,n %r0(%r2)
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
	shd %r25,%r25,16,%r29
	dep %r29,15,8,%r29
	shd %r25,%r29,8,%r29
	shd %r26,%r26,16,%r28
	dep %r28,15,8,%r28
	shd %r26,%r28,8,%r28
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
	b .L508
	ldi 32,%r20
.L511:
	comclr,<> %r20,%r28,%r0
	b,n .L510
.L508:
	mtsar %r28
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r19
	comib,= 0,%r19,.L511
	ldo 1(%r28),%r28
	bv,n %r0(%r2)
.L510:
	bv %r0(%r2)
	copy %r19,%r28
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
	movb,=,n %r26,%r26,.L515
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L512
	ldi 1,%r28
.L514:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L514
	ldo 1(%r28),%r28
.L512:
	bv,n %r0(%r2)
.L515:
	bv %r0(%r2)
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
	ldil LR'.LC0,%r28
	ldo RR'.LC0(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!< %fr4L,%fr22L
	ftest
	b .L518
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L518
	ldi 0,%r28
.L518:
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
	ldil LR'.LC4,%r28
	ldo RR'.LC4(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L522
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L522
	ldi 0,%r28
.L522:
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
	ldil LR'.LC8,%r28
	ldo RR'.LC8(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L526
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L526
	ldi 0,%r28
.L526:
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
	b,n .L532
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L532
	comib,> 0,%r25,.L544
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldws 0(%r28),%fr22L
.L533:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L547
	extru %r25,0,1,%r28
.L535:
	fmpy,sgl %fr4L,%fr22L,%fr4L
	extru %r25,0,1,%r28
.L547:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comib,= 0,%r25,.L532
	extru %r25,31,1,%r28
	fmpy,sgl %fr22L,%fr22L,%fr22L
	comib,<> 0,%r28,.L535
	extru %r25,0,1,%r19
	addl %r19,%r25,%r25
.L546:
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extrs %r25,30,31,%r25
	extru %r25,31,1,%r28
	comib,<> 0,%r28,.L535
	extru %r25,0,1,%r19
	b .L546
	addl %r19,%r25,%r25
.L532:
	bv,n %r0(%r2)
.L544:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L533
	fldws 0(%r28),%fr22L
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
	b .L549
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L549
	comib,> 0,%r24,.L561
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr22
.L550:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L564
	extru %r24,0,1,%r28
.L552:
	fmpy,dbl %fr4,%fr22,%fr4
	extru %r24,0,1,%r28
.L564:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L549
	extru %r24,31,1,%r28
	fmpy,dbl %fr22,%fr22,%fr22
	comib,<> 0,%r28,.L552
	extru %r24,0,1,%r19
	addl %r19,%r24,%r24
.L563:
	fmpy,dbl %fr22,%fr22,%fr22
	extrs %r24,30,31,%r24
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L552
	extru %r24,0,1,%r19
	b .L563
	addl %r19,%r24,%r24
.L549:
	bv,n %r0(%r2)
.L561:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L550
	fldds 0(%r28),%fr22
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
	b .L566
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L566
	comib,> 0,%r24,.L578
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L567:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L581
	extru %r24,0,1,%r28
.L569:
	fmpy,dbl %fr4,%fr22,%fr4
	extru %r24,0,1,%r28
.L581:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L566
	extru %r24,31,1,%r28
	fmpy,dbl %fr22,%fr22,%fr22
	comib,<> 0,%r28,.L569
	extru %r24,0,1,%r19
	addl %r19,%r24,%r24
.L580:
	fmpy,dbl %fr22,%fr22,%fr22
	extrs %r24,30,31,%r24
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L569
	extru %r24,0,1,%r19
	b .L580
	addl %r19,%r24,%r24
.L566:
	bv,n %r0(%r2)
.L578:
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L567
	fldds 0(%r28),%fr22
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
	movb,= %r24,%r24,.L583
	copy %r26,%r28
	ldi 0,%r19
.L584:
	ldbx %r28(%r19),%r20
	ldbx %r25(%r19),%r22
	addl %r28,%r19,%r21
	xor %r20,%r22,%r20
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L584
	stb %r20,0(%r21)
.L583:
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 4
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r19
	comib,= 0,%r19,.L596
	copy %r26,%r28
	copy %r26,%r19
	ldbs,mb 1(%r19),%r20
.L604:
	extrs %r20,31,8,%r20
	comib,<>,n 0,%r20,.L604
	ldbs,mb 1(%r19),%r20
.L602:
	comiclr,<> 0,%r24,%r0
	b,n .L593
.L603:
	ldb 0(%r25),%r20
	stb %r20,0(%r19)
	extrs %r20,31,8,%r20
	comib,= 0,%r20,.L595
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L603
	ldo 1(%r19),%r19
.L593:
	stb %r0,0(%r19)
.L595:
	bv,n %r0(%r2)
.L596:
	b .L602
	copy %r26,%r19
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
	movb,= %r25,%r25,.L605
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L613:
	comiclr,= 0,%r19,%r0
	b,n .L608
.L605:
	bv,n %r0(%r2)
.L608:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L613
	ldbx %r26(%r28),%r19
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
	ldb 0(%r26),%r21
	extrs %r21,31,8,%r21
	comib,= 0,%r21,.L619
	copy %r26,%r28
	b .L618
	copy %r25,%r20
.L617:
	comclr,<> %r21,%r19,%r0
	b,n .L616
.L618:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L617
	ldo 1(%r20),%r20
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L618
	copy %r25,%r20
.L619:
	copy %r21,%r28
.L616:
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
.L623:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L623
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r25),%r31
	extrs %r31,31,8,%r31
	comib,= 0,%r31,.L637
	copy %r25,%r19
	ldbs,mb 1(%r19),%r28
.L648:
	extrs %r28,31,8,%r28
	comib,<>,n 0,%r28,.L648
	ldbs,mb 1(%r19),%r28
	comb,= %r25,%r19,.L637
	sub %r19,%r25,%r28
	ldo -1(%r25),%r29
	extru %r31,31,8,%r23
	b .L634
	addl %r29,%r28,%r29
.L646:
	comib,= 0,%r28,.L625
	ldo 1(%r26),%r26
.L634:
	ldb 0(%r26),%r28
.L649:
	extrs %r28,31,8,%r28
	comb,<> %r31,%r28,.L646
	copy %r25,%r20
	copy %r23,%r28
	b .L629
	copy %r26,%r21
.L647:
	comclr,<> %r28,%r19,%r22
	ldi 1,%r22
	comiclr,= 0,%r19,%r19
	ldi 1,%r19
	and %r19,%r22,%r19
	comib,=,n 0,%r19,.L630
	ldbs,mb 1(%r21),%r28
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L630
	ldo 1(%r20),%r20
.L629:
	comb,<> %r29,%r20,.L647
	ldb 0(%r20),%r19
.L630:
	ldb 0(%r20),%r19
	comb,=,n %r28,%r19,.L637
	ldo 1(%r26),%r26
	b .L649
	ldb 0(%r26),%r28
.L637:
	copy %r26,%r28
.L625:
	bv,n %r0(%r2)
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
	b .L657
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L658
	bv,n %r0(%r2)
.L658:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L653
	bv,n %r0(%r2)
.L653:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L657:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L653
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 4
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,<> %r23,%r0,%r23
	b,n .L666
	comb,>> %r23,%r25,.L668
	sub %r25,%r23,%r25
	addl %r26,%r25,%r22
	comb,<<,n %r22,%r26,.L668
	ldb 0(%r24),%r31
	b .L665
	extrs %r31,31,8,%r31
.L662:
	comclr,<<= %r26,%r22,%r0
	b,n .L668
.L665:
	ldb 0(%r26),%r19
	copy %r26,%r28
	extrs %r19,31,8,%r19
	comb,<> %r31,%r19,.L662
	ldo 1(%r26),%r26
	comib,=,n 1,%r23,.L660
	ldi 1,%r19
	ldbx %r28(%r19),%r21
.L671:
	ldbx %r24(%r19),%r20
	comb,<> %r20,%r21,.L662
	ldo 1(%r19),%r19
	comb,<>,n %r19,%r23,.L671
	ldbx %r28(%r19),%r21
.L660:
	bv,n %r0(%r2)
.L666:
	bv %r0(%r2)
	copy %r26,%r28
.L668:
	bv %r0(%r2)
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 4
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,64(%r30)
	stw %r3,-60(%r30)
	movb,= %r24,%r3,.L673
	copy %r26,%r4
	bl memmove,%r2
	nop
.L673:
	addl %r4,%r3,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC24:
	.word	-1074790400
	.word	0
	.align 8
.LC25:
	.word	-1075838976
	.word	0
	.align 8
.LC26:
	.word	1072693248
	.word	0
	.align 8
.LC27:
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
	b .L694
	ldil LR'.LC26,%r19
	ldo RR'.LC26(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr5,%fr22
	ftest
	b .L680
	ldi 0,%r20
	ldil LR'.LC27,%r19
	ldo RR'.LC27(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L695
	fcmp,dbl,= %fr5,%fr0
	fcpy,dbl %fr5,%fr4
	stw %r0,0(%r24)
.L677:
.L702:
	bv,n %r0(%r2)
.L689:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	ldi 1,%r20
	ldo RR'.LC26(%r19),%r19
.L680:
	fldds 0(%r19),%fr23
	ldi 0,%r28
	ldil LR'.LC27,%r19
	ldo RR'.LC27(%r19),%r19
	fldds 0(%r19),%fr22
.L686:
	fmpy,dbl %fr5,%fr22,%fr5
	fcmp,dbl,!>= %fr5,%fr23
	ftest
	b .L686
	ldo 1(%r28),%r28
	stw %r28,0(%r24)
	comib,= 0,%r20,.L677
	fcpy,dbl %fr5,%fr4
.L700:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L694:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!<= %fr5,%fr22
	and,< %r19,%r19,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	copy %r20,%r29
	ftest
	b .L689
	ldil LR'.LC26,%r19
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b .L690
	fcpy,dbl %fr5,%fr4
	b .L702
	stw %r0,0(%r24)
.L695:
	ftest
	b .L692
	fcpy,dbl %fr5,%fr4
	b .L677
	stw %r0,0(%r24)
.L690:
	ldil LR'.LC27,%r19
	ldi 1,%r20
	ldo RR'.LC27(%r19),%r19
.L681:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	fldds 0(%r19),%fr22
	ldi 0,%r28
.L688:
	fadd,dbl %fr5,%fr5,%fr5
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L688
	ldo -1(%r28),%r28
	stw %r28,0(%r24)
	comib,<> 0,%r20,.L700
	fcpy,dbl %fr5,%fr4
	b,n .L677
.L692:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b,n .L681
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
	or %r26,%r25,%r21
	ldi 0,%r1
	ldi 0,%r2
	comiclr,<> 0,%r21,%r0
	b,n .L703
.L706:
	shd %r25,%r26,1,%r21
	extru %r26,31,1,%r29
	ldi 0,%r28
	extru %r25,30,31,%r25
	copy %r21,%r26
	or %r25,%r21,%r31
	sub %r0,%r29,%r22
	subb %r0,%r28,%r21
	and %r21,%r23,%r19
	and %r22,%r24,%r20
	shd %r23,%r24,31,%r23
	add %r20,%r2,%r2
	addc %r19,%r1,%r1
	comb,<> %r28,%r31,.L706
	zdep %r24,30,31,%r24
.L703:
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
	comb,>> %r26,%r25,.L710
	ldi 1,%r19
	b .L716
	ldi 0,%r20
.L713:
	comb,>>= %r25,%r28,.L712
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L729
	copy %r19,%r20
.L710:
	comib,<=,n 0,%r25,.L713
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L716:
	comb,>>,n %r25,%r28,.L715
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L715:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L716
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L712:
	comib,<> 0,%r19,.L716
	ldi 0,%r20
	copy %r19,%r20
.L729:
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
	extrs %r26,31,8,%r19
	extrs %r26,24+1-1,1,%r28
	ldo 128(%r30),%r30
	comb,= %r28,%r19,.L732
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L732:
	ldi 7,%r28
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
	extrs %r25,0,1,%r20
	copy %r25,%r28
	copy %r26,%r19
	ldo 128(%r30),%r30
	xor %r25,%r20,%r25
	comb,= %r20,%r28,.L739
	xor %r26,%r20,%r26
.L737:
	bl __clzdi2,%r2
	nop
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L739:
	comb,<> %r28,%r19,.L737
	ldi 63,%r28
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
	movb,=,n %r26,%r26,.L743
	ldi 0,%r28
.L742:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r19
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L742
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L743:
	bv %r0(%r2)
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
	copy %r24,%r28
	extru %r24,28,29,%r21
	stw %r3,-60(%r30)
	comb,>> %r25,%r26,.L749
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,<< %r19,%r26,%r0
	b,n .L758
.L749:
	comib,=,n 0,%r21,.L748
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L752:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L752
	ldo 8(%r20),%r20
.L748:
	comb,>>= %r28,%r24,.L759
	ldw -60(%r30),%r3
.L753:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L753
	stb %r20,0(%r19)
.L745:
	ldw -60(%r30),%r3
.L759:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L758:
	comib,= 0,%r24,.L745
	ldo -1(%r24),%r28
.L750:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L750
	stb %r20,0(%r19)
	ldw -60(%r30),%r3
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
	comb,>> %r25,%r26,.L764
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L776
.L764:
	ldi 0,%r28
	comclr,<> %r28,%r21,%r0
	b,n .L763
.L762:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L762
	sth %r20,0(%r19)
.L763:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L760
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r28
	addl %r26,%r24,%r26
	stb %r28,0(%r26)
.L760:
	bv,n %r0(%r2)
.L776:
	comib,= 0,%r24,.L760
	ldo -1(%r24),%r28
.L765:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L765
	stb %r20,0(%r19)
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
	copy %r24,%r28
	extru %r24,29,30,%r22
	comb,>> %r25,%r26,.L781
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,<< %r19,%r26,%r0
	b,n .L791
.L781:
	ldi 0,%r19
	comclr,<> %r19,%r22,%r0
	b,n .L780
.L779:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r26,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r22,.L779
	stw %r21,0(%r20)
.L780:
	comclr,<< %r28,%r24,%r0
	b,n .L777
.L784:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L784
	stb %r20,0(%r19)
.L777:
	bv,n %r0(%r2)
.L791:
	comib,= 0,%r24,.L777
	ldo -1(%r24),%r28
.L782:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L782
	stb %r20,0(%r19)
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
	ldi 0,%r23
	ldi 0,%r24
	stwm %r4,128(%r30)
	copy %r26,%r4
	stw %r3,-124(%r30)
	bl __cmpdi2,%r2
	copy %r25,%r3
	comib,>= 0,%r28,.L797
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L797:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	ldw -124(%r30),%r3
	extru %r4,31,1,%r20
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	fadd,dbl %fr4,%fr4,%fr4
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
	ldi 0,%r23
	ldi 0,%r24
	stwm %r4,128(%r30)
	copy %r26,%r4
	stw %r3,-124(%r30)
	bl __cmpdi2,%r2
	copy %r25,%r3
	comib,>= 0,%r28,.L800
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L800:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	ldw -124(%r30),%r3
	extru %r4,31,1,%r20
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	fadd,sgl %fr4L,%fr4L,%fr4L
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
	extrs %r26,16,17,%r28
	comib,<>,n 0,%r28,.L805
	extrs %r26,17,18,%r28
	comib,<>,n 0,%r28,.L802
	extrs %r26,18,19,%r28
	comib,<>,n 0,%r28,.L806
	extrs %r26,19,20,%r28
	comib,<>,n 0,%r28,.L807
	extrs %r26,20,21,%r28
	comib,<>,n 0,%r28,.L808
	extrs %r26,21,22,%r28
	comib,<>,n 0,%r28,.L809
	extrs %r26,22,23,%r28
	comib,<>,n 0,%r28,.L810
	extrs %r26,23,24,%r28
	comib,<>,n 0,%r28,.L811
	extrs %r26,24,25,%r28
	comib,<>,n 0,%r28,.L812
	extrs %r26,25,26,%r28
	comib,<>,n 0,%r28,.L813
	extrs %r26,26,27,%r28
	comib,<>,n 0,%r28,.L814
	extrs %r26,27,28,%r28
	comib,<>,n 0,%r28,.L815
	extrs %r26,28,29,%r28
	comib,<>,n 0,%r28,.L816
	extrs %r26,29,30,%r28
	comib,<>,n 0,%r28,.L817
	extrs %r26,30,31,%r28
	comiclr,= 0,%r28,%r0
	b,n .L818
	comiclr,<> 0,%r26,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L802:
	bv,n %r0(%r2)
.L805:
	bv %r0(%r2)
	ldi 0,%r28
.L816:
	bv %r0(%r2)
	ldi 12,%r28
.L806:
	bv %r0(%r2)
	ldi 2,%r28
.L807:
	bv %r0(%r2)
	ldi 3,%r28
.L808:
	bv %r0(%r2)
	ldi 4,%r28
.L809:
	bv %r0(%r2)
	ldi 5,%r28
.L810:
	bv %r0(%r2)
	ldi 6,%r28
.L811:
	bv %r0(%r2)
	ldi 7,%r28
.L812:
	bv %r0(%r2)
	ldi 8,%r28
.L813:
	bv %r0(%r2)
	ldi 9,%r28
.L814:
	bv %r0(%r2)
	ldi 10,%r28
.L815:
	bv %r0(%r2)
	ldi 11,%r28
.L817:
	bv %r0(%r2)
	ldi 13,%r28
.L818:
	bv %r0(%r2)
	ldi 14,%r28
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
	extru %r26,31,16,%r19
	extru %r26,31,1,%r26
	comib,<>,n 0,%r26,.L823
	ldi 2,%r28
	and %r19,%r28,%r20
	comib,<> 0,%r20,.L824
	ldi 4,%r20
	and %r19,%r20,%r21
	comib,<>,n 0,%r21,.L820
	ldi 8,%r28
	and %r19,%r28,%r21
	comiclr,= 0,%r21,%r0
	b,n .L826
	extrs,>= %r19,27,1,%r0
	b,n .L827
	extrs,>= %r19,26,1,%r0
	b,n .L828
	extrs,>= %r19,25,1,%r0
	b,n .L829
	extrs,>= %r19,24,1,%r0
	b,n .L830
	extrs,>= %r19,23,1,%r0
	b,n .L820
	extrs,>= %r19,22,1,%r0
	b,n .L832
	extrs,>= %r19,21,1,%r0
	b,n .L833
	extrs,>= %r19,20,1,%r0
	b,n .L834
	extrs,>= %r19,19,1,%r0
	b,n .L835
	extrs,>= %r19,18,1,%r0
	b,n .L836
	bb,< %r19,17,.L837
	extrs %r19,16,17,%r19
	comiclr,<> 0,%r19,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L820:
	bv,n %r0(%r2)
.L823:
	bv %r0(%r2)
	ldi 0,%r28
.L824:
	bv %r0(%r2)
	ldi 1,%r28
.L835:
	bv %r0(%r2)
	ldi 12,%r28
.L826:
	bv %r0(%r2)
	ldi 3,%r28
.L827:
	bv %r0(%r2)
	copy %r20,%r28
.L828:
	bv %r0(%r2)
	ldi 5,%r28
.L829:
	bv %r0(%r2)
	ldi 6,%r28
.L830:
	bv %r0(%r2)
	ldi 7,%r28
.L832:
	bv %r0(%r2)
	ldi 9,%r28
.L833:
	bv %r0(%r2)
	ldi 10,%r28
.L834:
	bv %r0(%r2)
	ldi 11,%r28
.L836:
	bv %r0(%r2)
	ldi 13,%r28
.L837:
	bv %r0(%r2)
	ldi 14,%r28
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC32:
	.word	1191182336
	.text
	.align 4
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!>= %fr4L,%fr22L
	ftest
	b .L843
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	bv,n %r0(%r2)
.L843:
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	bv %r0(%r2)
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
	extru %r26,31,1,%r20
	extru %r26,29+1-1,1,%r28
	extru %r26,30+1-1,1,%r19
	addl %r19,%r20,%r19
	extru %r26,28+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,27+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,26+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,25+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,24+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,23+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,22+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,21+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,20+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,19+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,18+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,17+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,16+1-1,1,%r26
	addl %r19,%r28,%r28
	addl %r28,%r26,%r28
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
	extru %r26,31,1,%r28
	extru %r26,29+1-1,1,%r20
	extru %r26,30+1-1,1,%r19
	addl %r19,%r28,%r19
	extru %r26,28+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,27+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,26+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,25+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,24+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,23+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,22+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,21+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,20+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,19+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,18+1-1,1,%r28
	addl %r19,%r20,%r19
	extru %r26,17+1-1,1,%r20
	addl %r19,%r28,%r19
	extru %r26,16+1-1,1,%r28
	addl %r19,%r20,%r19
	bv %r0(%r2)
	addl %r19,%r28,%r28
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
	movb,=,n %r26,%r26,.L850
	ldi 0,%r28
.L849:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r19
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L849
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L850:
	bv %r0(%r2)
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
	or,<> %r26,%r0,%r26
	b,n .L855
	comib,=,n 0,%r25,.L856
	ldi 0,%r28
.L854:
	extrs %r25,31+1-1,1,%r19
	extru %r25,30,31,%r25
	and %r19,%r26,%r19
	zdep %r26,30,31,%r26
	comib,<> 0,%r25,.L854
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L855:
	bv %r0(%r2)
	copy %r26,%r28
.L856:
	bv %r0(%r2)
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
	comb,<< %r25,%r26,.L859
	ldi 1,%r19
	b .L865
	ldi 0,%r20
.L862:
	comb,>>= %r25,%r28,.L861
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L878
	copy %r19,%r20
.L859:
	comib,<=,n 0,%r25,.L862
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L865:
	comb,>>,n %r25,%r28,.L864
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L864:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L865
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L861:
	comib,<> 0,%r19,.L865
	ldi 0,%r20
	copy %r19,%r20
.L878:
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
	b,n .L882
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L879
	ldi 1,%r28
	ldi 0,%r28
.L879:
	bv,n %r0(%r2)
.L882:
	bv %r0(%r2)
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
	b,n .L886
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L883
	ldi 1,%r28
	ldi 0,%r28
.L883:
	bv,n %r0(%r2)
.L886:
	bv %r0(%r2)
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
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22R
	extrs %r26,0,1,%r20
	extrs %r25,0,1,%r19
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	and %r20,%r25,%r20
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and %r19,%r26,%r19
	sub %r28,%r20,%r28
	bv %r0(%r2)
	sub %r28,%r19,%r28
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
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	bv,n %r0(%r2)
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
	b,n .L898
	comib,= 0,%r25,.L894
	ldi 0,%r29
.L891:
	ldi 1,%r19
	ldi 0,%r28
	ldi 32,%r31
.L893:
	extrs %r25,31+1-1,1,%r21
	comclr,= %r31,%r19,%r22
	ldi 1,%r22
	and %r21,%r26,%r21
	extrs %r25,30,31,%r25
	ldo 1(%r19),%r19
	comiclr,= 0,%r25,%r20
	ldi 1,%r20
	addl %r28,%r21,%r28
	zdep %r26,30,31,%r26
	and %r20,%r22,%r20
	comib,<> 0,%r20,.L893
	extru %r19,31,8,%r19
	sub %r0,%r28,%r19
	comiclr,= 0,%r29,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L898:
	sub %r0,%r25,%r25
	b .L891
	ldi 1,%r29
.L894:
	bv %r0(%r2)
	copy %r25,%r28
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 4
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,< %r26,%r26,.L921
	ldi 0,%r21
.L900:
	comib,<= 0,%r25,.L923
	copy %r26,%r20
	ldi 1,%r28
	sub %r0,%r25,%r25
	xor %r21,%r28,%r21
.L923:
	comb,<< %r25,%r26,.L902
	ldi 1,%r19
	b .L908
	ldi 0,%r28
.L922:
	comib,= 0,%r19,.L924
	copy %r19,%r28
.L902:
	zdep %r25,30,31,%r25
	comb,<< %r25,%r26,.L922
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L920
	ldi 0,%r28
.L908:
	comb,<<,n %r20,%r25,.L907
	sub %r20,%r25,%r20
	or %r28,%r19,%r28
.L907:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L908
	extru %r25,30,31,%r25
	sub %r0,%r28,%r19
	comiclr,= 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L921:
	sub %r0,%r26,%r26
	b .L900
	ldi 1,%r21
.L920:
	copy %r19,%r28
.L924:
	sub %r0,%r28,%r19
	comiclr,= 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 4
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,>= %r26,%r26,.L926
	ldi 0,%r22
	sub %r0,%r26,%r26
	ldi 1,%r22
.L926:
	copy %r26,%r28
	or,>= %r0,%r25,%r19
	subi 0,%r19,%r19
	comb,<< %r19,%r26,.L927
	ldi 1,%r20
	b .L947
	sub %r28,%r19,%r21
.L946:
	comiclr,<> 0,%r20,%r0
	b,n .L945
.L927:
	zdep %r19,30,31,%r19
	comb,<< %r19,%r26,.L946
	zdep %r20,30,31,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L945
.L933:
	sub %r28,%r19,%r21
.L947:
	extru %r20,30,31,%r20
	comclr,<< %r28,%r19,%r0
	copy %r21,%r28
	comib,<> 0,%r20,.L933
	extru %r19,30,31,%r19
	sub %r0,%r28,%r19
	comiclr,= 0,%r22,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L945:
	copy %r26,%r28
	sub %r0,%r26,%r19
	comiclr,= 0,%r22,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
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
	extru %r26,31,16,%r26
	extru %r25,31,16,%r25
	comb,>> %r26,%r25,.L949
	ldi 1,%r22
	b .L1004
	ldi 0,%r19
.L952:
	zdep %r22,30,31,%r19
	extru %r28,31,16,%r28
	comb,>>= %r28,%r26,.L951
	extru %r19,31,16,%r19
	comib,= 0,%r19,.L978
	copy %r19,%r22
	copy %r28,%r25
.L949:
	extrs %r25,31,16,%r19
	comib,<= 0,%r19,.L952
	zdep %r25,30,31,%r28
	comb,>> %r25,%r26,.L975
	ldi 0,%r19
	sub %r26,%r25,%r26
	copy %r22,%r19
	extru %r26,31,16,%r26
.L975:
	extru %r22,15+16-1,16,%r21
	comib,= 0,%r21,.L978
	extru %r25,30,31,%r20
.L956:
	comb,>> %r20,%r26,.L1010
	extru %r22,14+16-1,16,%r28
	sub %r26,%r20,%r20
	or %r19,%r21,%r21
	extru %r20,31,16,%r26
	extru %r21,31,16,%r19
.L1010:
	comib,= 0,%r28,.L978
	extru %r25,29,30,%r20
	comb,>>,n %r20,%r26,.L958
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L958:
	extru %r22,13+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,28,29,%r20
	comb,>>,n %r20,%r26,.L959
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L959:
	extru %r22,12+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,27,28,%r20
	comb,>>,n %r20,%r26,.L960
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L960:
	extru %r22,11+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,26,27,%r20
	comb,>>,n %r20,%r26,.L961
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L961:
	extru %r22,10+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,25,26,%r20
	comb,>>,n %r20,%r26,.L962
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L962:
	extru %r22,9+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,24,25,%r20
	comb,<<= %r20,%r26,.L1005
	or %r19,%r28,%r28
.L963:
	extru %r22,8+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,23,24,%r20
	comb,<<= %r20,%r26,.L1006
	or %r19,%r28,%r28
.L964:
	extru %r22,7+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,22,23,%r20
	comb,<<= %r20,%r26,.L1007
	or %r19,%r28,%r28
.L965:
	extru %r22,6+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,21,22,%r20
	comb,<<= %r20,%r26,.L1008
	or %r19,%r28,%r28
.L966:
	extru %r22,5+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,20,21,%r20
	comb,<<= %r20,%r26,.L1009
	or %r19,%r28,%r28
.L967:
	extru %r22,4+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,19,20,%r20
	comb,>>,n %r20,%r26,.L968
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L968:
	extru %r22,3+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,18,19,%r20
	comb,>>,n %r20,%r26,.L969
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L969:
	extru %r22,2+16-1,16,%r28
	comib,= 0,%r28,.L978
	extru %r25,17,18,%r20
	comb,>> %r20,%r26,.L970
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L970:
	extru %r22,1+16-1,16,%r22
	comib,= 0,%r22,.L978
	extru %r25,16,17,%r25
	comb,>> %r25,%r26,.L954
	ldi 0,%r28
	sub %r26,%r25,%r25
	depi -1,31,1,%r19
	extru %r25,31,16,%r28
	b .L954
	extru %r19,31,16,%r19
.L978:
	copy %r26,%r28
.L954:
	comiclr,<> 0,%r24,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L951:
	comib,=,n 0,%r19,.L954
	copy %r26,%r28
	comb,>>,n %r28,%r26,.L955
	sub %r26,%r28,%r26
	extru %r22,31,15,%r21
	extru %r25,31,15,%r20
	extru %r26,31,16,%r26
	copy %r28,%r25
	b .L956
	copy %r19,%r22
.L1005:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L963
	extru %r28,31,16,%r19
.L955:
	extru %r22,31,15,%r21
	extru %r25,31,15,%r20
	copy %r19,%r22
	copy %r28,%r25
	b .L956
	ldi 0,%r19
.L1006:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L964
	extru %r28,31,16,%r19
.L1007:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L965
	extru %r28,31,16,%r19
.L1008:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L966
	extru %r28,31,16,%r19
.L1009:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L967
	extru %r28,31,16,%r19
.L1004:
	copy %r26,%r28
	comclr,<> %r26,%r25,%r0
	copy %r22,%r19
	comclr,<> %r26,%r25,%r0
	ldi 0,%r28
	b,n .L954
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
	comb,<< %r25,%r26,.L1012
	ldi 1,%r19
	b .L1018
	ldi 0,%r20
.L1015:
	comb,>>= %r25,%r28,.L1014
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L1031
	copy %r19,%r20
.L1012:
	comib,<=,n 0,%r25,.L1015
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L1018:
	comb,>>,n %r25,%r28,.L1017
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L1017:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L1018
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L1014:
	comib,<> 0,%r19,.L1018
	ldi 0,%r20
	copy %r19,%r20
.L1031:
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
	bb,>=,n %r24,26,.L1033
	subi 63,%r24,%r24
	ldi 0,%r29
	mtsar %r24
	bv %r0(%r2)
	zvdep %r26,32,%r28
.L1033:
	comib,= 0,%r24,.L1036
	subi 31,%r24,%r19
	mtsar %r19
	subi 32,%r24,%r24
	zvdep %r25,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r20
	mtsar %r19
	or %r20,%r28,%r28
	bv %r0(%r2)
	zvdep %r26,32,%r29
.L1036:
	copy %r25,%r28
	bv %r0(%r2)
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
	bb,>=,n %r24,26,.L1038
	subi 63,%r24,%r24
	extrs %r25,0,1,%r28
	mtsar %r24
	bv %r0(%r2)
	vextrs %r25,32,%r29
.L1038:
	comib,= 0,%r24,.L1041
	mtsar %r24
	subi 31,%r24,%r28
	ldo -1(%r24),%r19
	vshd %r0,%r26,%r29
	mtsar %r19
	zvdep %r25,32,%r19
	mtsar %r28
	or %r19,%r29,%r29
	bv %r0(%r2)
	vextrs %r25,32,%r28
.L1041:
	copy %r25,%r28
	bv %r0(%r2)
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
	shd %r25,%r25,16,%r29
	dep %r29,15,8,%r29
	shd %r25,%r29,8,%r29
	shd %r26,%r26,16,%r28
	dep %r28,15,8,%r28
	shd %r26,%r28,8,%r28
	bv,n %r0(%r2)
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
	shd %r26,%r26,16,%r28
	dep %r28,15,8,%r28
	shd %r26,%r28,8,%r28
	bv,n %r0(%r2)
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
	zdepi -1,31,16,%r21
	comclr,<< %r21,%r26,%r21
	ldi 1,%r21
	zdep %r21,27,28,%r21
	subi 16,%r21,%r19
	mtsar %r19
	ldi 0,%r28
	vshd %r0,%r26,%r19
	zdepi -1,23,8,%r20
	and %r19,%r20,%r20
	comclr,<> %r28,%r20,%r20
	ldi 1,%r20
	zdep %r20,28,29,%r20
	subi 8,%r20,%r22
	mtsar %r22
	addl %r20,%r21,%r21
	vshd %r0,%r19,%r19
	ldi 240,%r20
	and %r19,%r20,%r20
	comclr,<> %r28,%r20,%r20
	ldi 1,%r20
	zdep %r20,29,30,%r20
	subi 4,%r20,%r22
	mtsar %r22
	addl %r20,%r21,%r21
	vshd %r0,%r19,%r19
	ldi 12,%r20
	and %r19,%r20,%r20
	comclr,<> %r28,%r20,%r20
	ldi 1,%r20
	zdep %r20,30,31,%r20
	subi 2,%r20,%r22
	mtsar %r22
	vshd %r0,%r19,%r19
	extrs,< %r19,30,1,%r0
	subi 2,%r19,%r28
.L1046:
	addl %r20,%r21,%r20
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
	comclr,<= %r23,%r25,%r0
	b,n .L1052
	comclr,>= %r23,%r25,%r0
	b,n .L1051
	comclr,<<= %r24,%r26,%r0
	b,n .L1052
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv %r0(%r2)
	ldo 1(%r28),%r28
.L1052:
	bv %r0(%r2)
	ldi 0,%r28
.L1051:
	bv %r0(%r2)
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 4
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comclr,<= %r23,%r25,%r0
	b,n .L1058
	comclr,>= %r23,%r25,%r0
	b,n .L1057
	comclr,<<= %r24,%r26,%r0
	b,n .L1058
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L1058:
	bv %r0(%r2)
	ldi -1,%r28
.L1057:
	bv %r0(%r2)
	ldi 1,%r28
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
	addl %r28,%r20,%r20
	vshd %r0,%r19,%r19
	extru %r19,31,4,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,29,30,%r28
	mtsar %r28
	addl %r28,%r20,%r20
	vshd %r0,%r19,%r19
	extru %r19,31,2,%r28
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,30,31,%r28
	mtsar %r28
	addl %r28,%r20,%r28
	vshd %r0,%r19,%r19
	extru %r19,31,2,%r19
	uaddcm %r0,%r19,%r20
	extru %r19,30,31,%r19
	extrs %r20,31+1-1,1,%r20
	subi 2,%r19,%r19
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
	bb,>= %r24,26,.L1061
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r25
	copy %r25,%r28
.L1063:
	bv,n %r0(%r2)
.L1061:
	comib,= 0,%r24,.L1064
	ldo -1(%r24),%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	mtsar %r28
	zvdep %r25,32,%r28
	mtsar %r24
	or %r28,%r29,%r29
	vshd %r0,%r25,%r25
	b .L1063
	copy %r25,%r28
.L1064:
	copy %r25,%r28
	bv %r0(%r2)
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
	extru %r26,15,16,%r26
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	extru %r25,31,16,%r28
	extru %r25,15,16,%r25
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr25L
	xmpyu %fr24L,%fr25L,%fr23
	xmpyu %fr25L,%fr22L,%fr26
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr25
	xmpyu %fr22L,%fr23L,%fr26
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	extru %r24,31,16,%r21
	extru %r24,15,16,%r28
	addl %r28,%r22,%r28
	extru %r28,31,16,%r19
	extru %r28,15,16,%r28
	addl %r19,%r20,%r19
	addl %r28,%r29,%r28
	zdep %r19,15,16,%r29
	extru %r19,15,16,%r19
	addl %r21,%r29,%r29
	bv %r0(%r2)
	addl %r28,%r19,%r28
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 4
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	extru %r26,31,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	extru %r26,15,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22L
	extru %r24,31,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr25L
	xmpyu %fr24L,%fr25L,%fr26
	stw %r2,-20(%r30)
	extru %r24,15,16,%r28
	stwm %r4,64(%r30)
	stw %r3,-60(%r30)
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r3
	ldws -12(%sp),%r4
	xmpyu %fr25L,%fr22L,%fr26
	extru %r4,31,16,%r31
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr25
	ldw -60(%r30),%r3
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r1
	ldws -12(%sp),%r2
	xmpyu %fr22L,%fr23L,%fr26
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	extru %r4,15,16,%r28
	addl %r28,%r2,%r28
	stws %r24,-16(%sp)
	fldws -16(%sp),%fr24R
	extru %r28,31,16,%r19
	extru %r28,15,16,%r28
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr24R,%fr24L,%fr24
	addl %r28,%r29,%r28
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r19,%r22,%r19
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	zdep %r19,15,16,%r29
	extru %r19,15,16,%r19
	addl %r31,%r29,%r29
	addl %r28,%r19,%r28
	ldw -84(%r30),%r2
	addl %r28,%r20,%r28
	addl %r28,%r26,%r28
	bv %r0(%r2)
	ldwm -64(%r30),%r4
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
	ldil L'32768,%r28
	extru %r19,31,4,%r19
	ldo -5738(%r28),%r28
	subi 31,%r19,%r19
	mtsar %r19
	vextrs %r28,32,%r28
	bv %r0(%r2)
	extru %r28,31,1,%r28
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
	ldil L'32768,%r28
	extru %r26,27,28,%r19
	ldo -5738(%r28),%r28
	xor %r19,%r26,%r19
	extru %r19,31,4,%r19
	subi 31,%r19,%r19
	mtsar %r19
	vextrs %r28,32,%r28
	bv %r0(%r2)
	extru %r28,31,1,%r28
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
	extru %r25,30,31,%r21
	shd %r25,%r26,1,%r20
	copy %r25,%r28
	copy %r26,%r29
	ldil L'1431650304,%r19
	ldo 5461(%r19),%r19
	and %r21,%r19,%r23
	and %r20,%r19,%r24
	ldil L'858996736,%r21
	sub %r29,%r24,%r29
	subb %r28,%r23,%r28
	ldo -3277(%r21),%r21
	copy %r28,%r22
	shd %r22,%r29,2,%r22
	and %r28,%r21,%r23
	and %r29,%r21,%r24
	extru %r28,29,30,%r31
	and %r22,%r21,%r20
	and %r31,%r21,%r19
	ldil L'252641280,%r21
	add %r24,%r20,%r20
	addc %r23,%r19,%r19
	ldo 3855(%r21),%r21
	copy %r19,%r22
	extru %r20,27,28,%r29
	zdep %r22,3,4,%r22
	extru %r19,27,28,%r28
	or %r22,%r29,%r29
	add %r20,%r29,%r29
	addc %r19,%r28,%r28
	and %r28,%r21,%r28
	and %r29,%r21,%r21
	addl %r28,%r21,%r28
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
	extru %r26,30,31,%r19
	ldil L'1431650304,%r28
	ldo 5461(%r28),%r28
	and %r19,%r28,%r19
	ldil L'858996736,%r28
	sub %r26,%r19,%r26
	ldo -3277(%r28),%r28
	extru %r26,29,30,%r19
	and %r26,%r28,%r26
	and %r19,%r28,%r19
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
.LC34:
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
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L1078
	ldil LR'.LC34,%r21
	ldo RR'.LC34(%r21),%r21
	copy %r24,%r28
	fldds 0(%r21),%fr4
.L1075:
	fmpy,dbl %fr4,%fr5,%fr4
.L1073:
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,= 0,%r28,.L1074
	extru %r28,31,1,%r19
	fmpy,dbl %fr5,%fr5,%fr5
	comib,<> 0,%r19,.L1075
	extru %r28,0,1,%r20
	addl %r20,%r28,%r28
.L1081:
	fmpy,dbl %fr5,%fr5,%fr5
	extrs %r28,30,31,%r28
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1075
	extru %r28,0,1,%r20
	b .L1081
	addl %r20,%r28,%r28
.L1074:
	comiclr,<= 0,%r24,%r0
	b,n .L1080
	bv,n %r0(%r2)
.L1078:
	ldo RR'.LC34(%r21),%r21
	copy %r24,%r28
	b .L1073
	fldds 0(%r21),%fr4
.L1080:
	fldds 0(%r21),%fr22
	bv %r0(%r2)
	fdiv,dbl %fr22,%fr4,%fr4
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC36:
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
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L1088
	ldil LR'.LC36,%r21
	ldo RR'.LC36(%r21),%r21
	copy %r25,%r28
	fldws 0(%r21),%fr4L
.L1085:
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1083:
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,= 0,%r28,.L1084
	extru %r28,31,1,%r19
	fmpy,sgl %fr22L,%fr22L,%fr22L
	comib,<> 0,%r19,.L1085
	extru %r28,0,1,%r20
	addl %r20,%r28,%r28
.L1091:
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extrs %r28,30,31,%r28
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1085
	extru %r28,0,1,%r20
	b .L1091
	addl %r20,%r28,%r28
.L1084:
	comiclr,<= 0,%r25,%r0
	b,n .L1090
	bv,n %r0(%r2)
.L1088:
	ldo RR'.LC36(%r21),%r21
	copy %r25,%r28
	b .L1083
	fldws 0(%r21),%fr4L
.L1090:
	fldws 0(%r21),%fr22L
	bv %r0(%r2)
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
	comclr,<<= %r23,%r25,%r0
	b,n .L1096
	comclr,>>= %r23,%r25,%r0
	b,n .L1095
	comclr,<<= %r24,%r26,%r0
	b,n .L1096
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv %r0(%r2)
	ldo 1(%r28),%r28
.L1096:
	bv %r0(%r2)
	ldi 0,%r28
.L1095:
	bv %r0(%r2)
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	comclr,<<= %r23,%r25,%r0
	b,n .L1102
	comclr,>>= %r23,%r25,%r0
	b,n .L1101
	comclr,<<= %r24,%r26,%r0
	b,n .L1102
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L1102:
	bv %r0(%r2)
	ldi -1,%r28
.L1101:
	bv %r0(%r2)
	ldi 1,%r28
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.align 4
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.globl __cmpdi2
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
