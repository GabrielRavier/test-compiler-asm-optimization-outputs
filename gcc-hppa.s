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
	b .L27
	ldi 0,%r28
.L18:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	comib,= 0,%r23,.L20
	ldo 1(%r26),%r26
.L16:
	ldb 0(%r25),%r28
	comb,<> %r24,%r28,.L18
	stb %r28,0(%r26)
	comib,= 0,%r23,.L20
	ldo 1(%r26),%r28
	bv,n %r0(%r2)
.L20:
	ldi 0,%r28
.L27:
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
	movb,<> %r24,%r24,.L29
	extru %r25,31,8,%r25
	b .L37
	ldi 0,%r28
.L31:
	comib,= 0,%r24,.L34
	ldo 1(%r26),%r26
.L29:
	ldb 0(%r26),%r28
	comb,<>,n %r25,%r28,.L31
	ldo -1(%r24),%r24
	comib,= 0,%r24,.L34
	copy %r26,%r28
	bv,n %r0(%r2)
.L34:
	ldi 0,%r28
.L37:
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
	movb,<> %r24,%r24,.L39
	ldi 0,%r28
	b,n .L50
.L41:
	ldo 1(%r26),%r26
	comib,= 0,%r24,.L43
	ldo 1(%r25),%r25
.L39:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r19
	comb,=,n %r19,%r28,.L41
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L38
	sub %r28,%r19,%r28
.L43:
	ldi 0,%r28
.L38:
.L50:
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
	comib,= 0,%r24,.L52
	copy %r26,%r3
	bl memcpy,%r2
	nop
.L52:
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
	extru %r25,31,8,%r25
	ldo -1(%r24),%r24
	addl %r26,%r24,%r24
	b .L57
	ldo -1(%r26),%r26
.L59:
	ldb 0(%r28),%r19
	comb,= %r25,%r19,.L56
	ldo -1(%r24),%r24
.L57:
	comb,<> %r26,%r24,.L59
	copy %r24,%r28
	ldi 0,%r28
.L56:
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
	movb,= %r24,%r24,.L61
	copy %r26,%r28
	addl %r26,%r24,%r24
	copy %r26,%r19
	stb %r25,0(%r19)
.L67:
	ldo 1(%r19),%r19
	comb,<>,n %r19,%r24,.L67
	stb %r25,0(%r19)
.L61:
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
	comib,= 0,%r20,.L69
	stb %r19,0(%r26)
.L70:
	ldbs,mb 1(%r25),%r19
	extrs %r19,31,8,%r20
	comib,<> 0,%r20,.L70
	stbs,mb %r19,1(%r28)
.L69:
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
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L76
	extru %r25,31,8,%r25
	b,n .L75
.L78:
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L75
.L76:
	extru %r19,31,8,%r19
	comb,<>,n %r25,%r19,.L78
	ldbs,mb 1(%r28),%r19
.L75:
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
	b .L84
	copy %r26,%r28
.L87:
	comib,= 0,%r19,.L86
	ldo 1(%r28),%r28
.L84:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comb,<> %r25,%r19,.L87
	nop
	bv,n %r0(%r2)
.L86:
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
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldb 0(%r25),%r28
	comib,= 0,%r19,.L89
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L89
	ldi 1,%r20
	b .L104
	ldbx %r26(%r20),%r19
.L102:
	comb,<> %r28,%r19,.L103
	extru %r19,31,8,%r19
	ldbx %r26(%r20),%r19
.L104:
	extrs %r19,31,8,%r19
	ldbx %r25(%r20),%r28
	extrs %r28,31,8,%r28
	comib,<> 0,%r19,.L102
	ldo 1(%r20),%r20
.L89:
	extru %r19,31,8,%r19
.L103:
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
	comib,= 0,%r28,.L108
	copy %r26,%r28
	ldbs,mb 1(%r28),%r19
.L110:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L110
	ldbs,mb 1(%r28),%r19
	bv %r0(%r2)
	sub %r28,%r26,%r28
.L108:
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
	movb,=,n %r24,%r28,.L111
	ldb 0(%r26),%r19
	comib,= 0,%r19,.L113
	ldo -1(%r28),%r28
	b .L114
	addl %r25,%r28,%r21
.L125:
	comb,=,n %r21,%r25,.L113
	ldbs,mb 1(%r26),%r19
	extru %r19,31,8,%r19
	comib,= 0,%r19,.L113
	ldo 1(%r25),%r25
.L114:
	ldb 0(%r25),%r28
	comiclr,= 0,%r28,%r20
	ldi 1,%r20
	comclr,<> %r19,%r28,%r28
	ldi 1,%r28
	and %r20,%r28,%r28
	comib,<> 0,%r28,.L125
	nop
.L113:
	ldb 0(%r25),%r28
	sub %r19,%r28,%r28
.L111:
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
	comib,>= 1,%r24,.L126
	depi 0,31,1,%r24
	addl %r26,%r24,%r19
.L128:
	ldb 1(%r26),%r28
	stb %r28,0(%r25)
	ldb 0(%r26),%r28
	stb %r28,1(%r25)
	ldo 2(%r26),%r26
	comb,<> %r19,%r26,.L128
	ldo 2(%r25),%r25
.L126:
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
	b,n .L142
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	comib,<> 0,%r28,.L142
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	ldi 1,%r28
	comb,>>=,n %r28,%r19,.L140
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L140:
	bv,n %r0(%r2)
.L142:
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
	comb,>>= %r28,%r26,.L151
	ldo -42(%r26),%r19
	ldo -8192(%r19),%r19
	ldil L'49152,%r28
	ldo -2091(%r28),%r28
	comb,>>= %r28,%r19,.L149
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comb,>>= %r19,%r26,.L149
	ldil L'-57344,%r19
	addl %r26,%r19,%r19
	ldi 8184,%r20
	comb,>>= %r20,%r19,.L149
	zdepi -1,29,14,%r20
	sub %r26,%r20,%r20
	ldil L'1048576,%r19
	ldo 3(%r19),%r19
	comb,<<,n %r19,%r20,.L145
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
.L145:
	bv,n %r0(%r2)
.L149:
	bv %r0(%r2)
	ldi 1,%r28
.L151:
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
	comib,>>= 9,%r19,.L152
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L152:
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
	b .L159
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L160
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L162
	bv %r0(%r2)
	fcpy,dbl %fr0,%fr4
.L162:
	bv %r0(%r2)
	fsub,dbl %fr5,%fr7,%fr4
.L159:
	bv %r0(%r2)
	fcpy,dbl %fr5,%fr4
.L160:
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
	b .L164
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L168
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L170
	fcpy,sgl %fr0,%fr4L
.L164:
	bv,n %r0(%r2)
.L170:
	bv %r0(%r2)
	fsub,sgl %fr4L,%fr5L,%fr4L
.L168:
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
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L178
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L179
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L184
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L172
.L179:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L172:
	bv,n %r0(%r2)
.L184:
	comib,= 0,%r21,.L179
	nop
	bv,n %r0(%r2)
.L178:
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
	b .L191
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L192
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,= %r19,%r28,%r0
	b,n .L196
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L191
	fcpy,sgl %fr4L,%fr5L
.L191:
	fcpy,sgl %fr5L,%fr4L
.L185:
	bv,n %r0(%r2)
.L196:
	comib,<> 0,%r28,.L185
	fcpy,sgl %fr5L,%fr4L
.L192:
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
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L203
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L204
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L209
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L197
.L204:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L197:
	bv,n %r0(%r2)
.L209:
	comib,= 0,%r21,.L204
	nop
	bv,n %r0(%r2)
.L203:
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
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L216
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L217
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L212
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L216
.L210:
	bv,n %r0(%r2)
.L212:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L210
.L216:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L217:
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
	b .L228
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L222
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L224
	comiclr,<> 0,%r28,%r0
	b,n .L228
.L222:
	bv,n %r0(%r2)
.L224:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L222
.L228:
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
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L239
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L240
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L235
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L239
.L233:
	bv,n %r0(%r2)
.L235:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L233
.L239:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L240:
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
	ldo RR's.0-$global$(%r1),%r28
	movb,= %r26,%r26,.L246
	copy %r28,%r19
	ldil LR'digits,%r21
	ldo RR'digits(%r21),%r21
.L247:
	extru %r26,31,6,%r20
	ldbx %r21(%r20),%r20
	stb %r20,0(%r19)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L247
	ldo 1(%r19),%r19
.L246:
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
	addil LR'seed-$global$,%r27
	ldo RR'seed-$global$(%r1),%r1
	ldo -1(%r26),%r26
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
	movb,=,n %r25,%r25,.L258
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L252:
	bv,n %r0(%r2)
.L258:
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
	comib,=,n 0,%r28,.L260
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L260:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L259
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L259:
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
	copy %r23,%r5
	ldw 0(%r24),%r6
	comib,= 0,%r6,.L269
	ldw -180(%r30),%r9
	copy %r25,%r3
	b .L271
	ldi 0,%r4
.L283:
	ldo 1(%r4),%r4
	comb,= %r4,%r6,.L269
	addl %r3,%r5,%r3
.L271:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L283
	copy %r3,%r8
.L268:
	copy %r8,%r28
.L284:
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
.L269:
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
	comib,= 0,%r5,.L268
	addl %r11,%r29,%r8
	copy %r5,%r24
	copy %r7,%r25
	bl memmove,%r2
	copy %r8,%r26
	b .L284
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
	stw %r8,-124(%r30)
	stw %r7,-120(%r30)
	stw %r6,-116(%r30)
	stw %r5,-112(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	copy %r26,%r5
	copy %r23,%r6
	ldw 0(%r24),%r7
	comib,= 0,%r7,.L286
	ldw -180(%r30),%r9
	copy %r25,%r3
	b .L288
	ldi 0,%r4
.L296:
	ldo 1(%r4),%r4
	comb,= %r4,%r7,.L286
	addl %r3,%r6,%r3
.L288:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L296
	copy %r3,%r8
.L285:
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
.L286:
	b .L285
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>= 4,%r19,.L314
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L317
	ldi 43,%r19
.L314:
	ldbs,mb 1(%r26),%r28
.L318:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L318
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L318
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L317:
	comb,= %r19,%r28,.L307
	ldi 45,%r19
	comb,= %r19,%r28,.L316
	ldi 0,%r21
.L303:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,<< 9,%r20,.L305
	ldi 0,%r28
	sh2addl %r28,%r28,%r28 
.L319:
	zdep %r28,30,31,%r28
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	sub %r28,%r19,%r28
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L319
	sh2addl %r28,%r28,%r28 
.L305:
	sub %r0,%r28,%r19
	comiclr,<> 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L316:
	ldi 1,%r21
	b .L303
	ldo 1(%r26),%r26
.L307:
	ldi 0,%r21
	b .L303
	ldo 1(%r26),%r26
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 4
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	stw %r2,-20(%r30)
	ldw -20(%r30),%r2
	bl atoi,%r0
	nop
	nop
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
	comib,>>= 4,%r19,.L337
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L340
	ldi 43,%r19
.L337:
	ldbs,mb 1(%r26),%r28
.L341:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L341
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L341
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L340:
	comb,= %r19,%r28,.L330
	ldi 45,%r19
	comb,= %r19,%r28,.L339
	ldi 0,%r31
.L326:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	ldi 0,%r28
	ldi 0,%r29
	comib,<< 9,%r20,.L328
	shd %r28,%r29,30,%r23
.L342:
	zdep %r29,29,30,%r24
	add %r29,%r24,%r29
	addc %r28,%r23,%r28
	shd %r28,%r29,31,%r28
	zdep %r29,30,31,%r29
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	copy %r19,%r22
	extrs %r19,0,1,%r21
	sub %r29,%r22,%r29
	subb %r28,%r21,%r28
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>= 9,%r20,.L342
	shd %r28,%r29,30,%r23
.L328:
	comiclr,= 0,%r31,%r0
	b,n .L321
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L321:
	bv,n %r0(%r2)
.L339:
	ldi 1,%r31
	b .L326
	ldo 1(%r26),%r26
.L330:
	ldi 0,%r31
	b .L326
	ldo 1(%r26),%r26
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
	movb,<> %r24,%r3,.L347
	ldw -180(%r30),%r8
	b .L343
	ldi 0,%r5
.L353:
	comib,>= 0,%r28,.L343
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	comib,= 0,%r3,.L344
	addl %r5,%r28,%r6
.L347:
	extru %r3,30,31,%r4
.L354:
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
	movb,>= %r28,%r28,.L353
	nop
	copy %r4,%r3
	comib,<> 0,%r3,.L354
	extru %r3,30,31,%r4
.L344:
	ldi 0,%r5
.L343:
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=9,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r9,128(%r30)
	stw %r8,-124(%r30)
	stw %r7,-120(%r30)
	stw %r6,-116(%r30)
	stw %r5,-112(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	ldo -96(%r30),%r1
	fstds,ma %fr12,8(%r1)
	copy %r26,%r7
	copy %r25,%r6
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	ldw -180(%r30),%r9
	movb,<> %r24,%r4,.L359
	ldw -184(%r30),%r8
	b .L355
	ldi 0,%r5
.L367:
	comib,>= 0,%r28,.L358
	ldo -1(%r4),%r4
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
	extrs %r4,30,31,%r3
.L358:
	movb,= %r3,%r4,.L355
	ldi 0,%r5
.L359:
	extrs %r4,30,31,%r3
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r6,%r29,%r5
	copy %r8,%r24
	copy %r5,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,<> %r28,%r28,.L367
	nop
.L355:
	copy %r5,%r28
	ldw -148(%r30),%r2
	ldw -124(%r30),%r8
	ldw -120(%r30),%r7
	ldw -116(%r30),%r6
	ldw -112(%r30),%r5
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	ldo -96(%r30),%r1
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r7,128(%r30)
	stw %r6,-124(%r30)
	stw %r5,-120(%r30)
	stw %r4,-116(%r30)
	stw %r3,-112(%r30)
	copy %r28,%r3
	copy %r25,%r5
	copy %r26,%r4
	copy %r23,%r7
	bl __divdi3,%r2
	copy %r24,%r6
	stw %r28,0(%r3)
	stw %r29,4(%r3)
	copy %r7,%r23
	copy %r6,%r24
	copy %r5,%r25
	bl __moddi3,%r2
	copy %r4,%r26
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	copy %r3,%r28
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r7,128(%r30)
	stw %r6,-124(%r30)
	stw %r5,-120(%r30)
	stw %r4,-116(%r30)
	stw %r3,-112(%r30)
	copy %r28,%r3
	copy %r25,%r5
	copy %r26,%r4
	copy %r23,%r7
	bl __divdi3,%r2
	copy %r24,%r6
	stw %r28,0(%r3)
	stw %r29,4(%r3)
	copy %r7,%r23
	copy %r6,%r24
	copy %r5,%r25
	bl __moddi3,%r2
	copy %r4,%r26
	stw %r28,8(%r3)
	stw %r29,12(%r3)
	copy %r3,%r28
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
	ldw 0(%r26),%r19
	comb,= %r19,%r25,.L376
	copy %r26,%r28
.L390:
	comib,=,n 0,%r19,.L376
	ldws,mb 4(%r28),%r19
	comb,<> %r25,%r19,.L390
	nop
.L376:
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
	ldw 0(%r26),%r20
	ldw 0(%r25),%r21
	comiclr,= 0,%r20,%r28
	ldi 1,%r28
	comclr,<> %r21,%r20,%r19
	ldi 1,%r19
	and %r28,%r19,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L392
	comib,= 0,%r21,.L392
	ldi 4,%r28
	b .L408
	ldwx %r26(%r28),%r20
.L407:
	comib,=,n 0,%r21,.L392
	ldwx %r26(%r28),%r20
.L408:
	ldwx %r25(%r28),%r21
	comiclr,= 0,%r20,%r19
	ldi 1,%r19
	comclr,<> %r21,%r20,%r22
	ldi 1,%r22
	and %r19,%r22,%r19
	comib,<> 0,%r19,.L407
	ldo 4(%r28),%r28
.L392:
	comclr,>= %r21,%r20,%r28
	ldi 1,%r28
	comclr,<= %r21,%r20,%r0
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
.L410:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L410
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
	comib,= 0,%r28,.L415
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L417:
	comib,<>,n 0,%r19,.L417
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
	bv %r0(%r2)
	extrs %r28,29,30,%r28
.L415:
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
	movb,<> %r24,%r24,.L419
	ldi 0,%r28
	b,n .L436
.L435:
	comib,=,n 0,%r20,.L420
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,= 0,%r24,.L424
	ldo 4(%r25),%r25
.L419:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r20
	comiclr,= 0,%r28,%r19
	ldi 1,%r19
	comclr,<> %r20,%r28,%r28
	ldi 1,%r28
	and %r19,%r28,%r28
	comib,<> 0,%r28,.L435
	nop
.L420:
	comib,= 0,%r24,.L436
	ldi 0,%r28
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
	bv,n %r0(%r2)
.L424:
	ldi 0,%r28
.L436:
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
	movb,<> %r24,%r24,.L438
	ldi 0,%r28
	b,n .L446
.L440:
	comib,= 0,%r24,.L443
	ldo 4(%r26),%r26
.L438:
	ldw 0(%r26),%r28
	comb,<>,n %r25,%r28,.L440
	ldo -1(%r24),%r24
	comib,= 0,%r24,.L443
	copy %r26,%r28
	bv,n %r0(%r2)
.L443:
	ldi 0,%r28
.L446:
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
	movb,<> %r24,%r24,.L448
	ldi 0,%r28
	b,n .L460
.L450:
	ldo 4(%r26),%r26
	comib,= 0,%r24,.L452
	ldo 4(%r25),%r25
.L448:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,=,n %r19,%r20,.L450
	ldo -1(%r24),%r24
	comib,= 0,%r24,.L460
	ldi 0,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
	bv,n %r0(%r2)
.L452:
	ldi 0,%r28
.L460:
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
	movb,= %r24,%r24,.L462
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L462:
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
	comb,= %r25,%r26,.L467
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,<<= %r19,%r20,.L478
	ldi 0,%r19
	comib,=,n 0,%r24,.L467
	ldo -1(%r24),%r24
.L470:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L470
	stw %r20,0(%r19)
.L467:
	bv,n %r0(%r2)
.L478:
	comb,= %r19,%r24,.L467
	nop
.L469:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L469
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
	movb,= %r24,%r24,.L480
	copy %r26,%r28
	ldi 0,%r19
.L481:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L481
	stw %r25,0(%r20)
.L480:
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
	b,n .L487
	comib,=,n 0,%r24,.L486
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L489:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L489
	stb %r19,0(%r28)
.L486:
	bv,n %r0(%r2)
.L487:
	comb,= %r25,%r26,.L486
	nop
	comib,= 0,%r24,.L486
	nop
	ldi 0,%r28
.L490:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L490
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
	bb,>= %r24,26,.L500
	uaddcm %r0,%r24,%r28
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L502
	extru %r24,31,6,%r19
.L504:
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L500:
	extru %r26,30,31,%r19
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	zvdep %r26,32,%r29
	sub %r0,%r24,%r24
	bb,< %r24,26,.L504
	extru %r24,31,6,%r19
.L502:
	zdep %r25,30,31,%r20
	uaddcm %r0,%r19,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r20,32,%r20
	mtsar %r19
	vshd %r0,%r26,%r26
	or %r20,%r26,%r26
	vshd %r0,%r25,%r25
	or %r25,%r28,%r28
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
	bb,>= %r24,26,.L506
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L508
	extru %r24,31,6,%r19
.L510:
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r26,32,%r25
	ldi 0,%r26
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L506:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	vshd %r0,%r25,%r28
	sub %r0,%r24,%r24
	bb,< %r24,26,.L510
	extru %r24,31,6,%r19
.L508:
	extru %r26,30,31,%r20
	uaddcm %r0,%r19,%r21
	mtsar %r21
	vshd %r0,%r20,%r20
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r25,32,%r25
	or %r20,%r25,%r25
	zvdep %r26,32,%r26
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
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
	shd %r26,%r26,16,%r28
	dep %r28,15,8,%r28
	shd %r26,%r28,8,%r28
	shd %r25,%r25,16,%r29
	dep %r29,15,8,%r29
	shd %r25,%r29,8,%r29
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
	b .L525
	ldi 32,%r20
.L528:
	comclr,<> %r20,%r28,%r0
	b,n .L527
.L525:
	mtsar %r28
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r19
	comib,= 0,%r19,.L528
	ldo 1(%r28),%r28
	bv,n %r0(%r2)
.L527:
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
	movb,=,n %r26,%r26,.L532
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L529
	ldi 1,%r28
.L531:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L531
	ldo 1(%r28),%r28
.L529:
	bv,n %r0(%r2)
.L532:
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
	ldil LR'.LC0,%r19
	ldo RR'.LC0(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!< %fr4L,%fr22L
	ftest
	b .L535
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L535
	ldi 0,%r28
.L535:
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
	b .L539
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L539
	ldi 0,%r28
.L539:
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
	b .L543
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L543
	ldi 0,%r28
.L543:
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
	b,n .L549
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L549
	comib,> 0,%r25,.L560
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L552
	fldws 0(%r28),%fr22L
.L561:
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L552:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L562
	extru %r25,0,1,%r28
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L562:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comib,<> 0,%r25,.L561
	nop
.L549:
	bv,n %r0(%r2)
.L560:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L552
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
	b .L564
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L564
	comib,> 0,%r24,.L575
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L567
	fldds 0(%r28),%fr22
.L576:
	fmpy,dbl %fr22,%fr22,%fr22
.L567:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L577
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L577:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,<> 0,%r24,.L576
	nop
.L564:
	bv,n %r0(%r2)
.L575:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L567
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
	b .L579
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L579
	comib,> 0,%r24,.L590
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L582
	fldds 0(%r28),%fr22
.L591:
	fmpy,dbl %fr22,%fr22,%fr22
.L582:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L592
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L592:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,<> 0,%r24,.L591
	nop
.L579:
	bv,n %r0(%r2)
.L590:
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L582
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
	movb,= %r24,%r24,.L594
	copy %r26,%r28
	ldi 0,%r19
.L595:
	ldbx %r28(%r19),%r20
	ldbx %r25(%r19),%r21
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L595
	stb %r20,0(%r21)
.L594:
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
	comib,= 0,%r19,.L607
	copy %r26,%r28
	copy %r26,%r19
	ldbs,mb 1(%r19),%r20
.L617:
	extrs %r20,31,8,%r20
	comib,<>,n 0,%r20,.L617
	ldbs,mb 1(%r19),%r20
.L614:
	comiclr,<> 0,%r24,%r0
	b,n .L609
.L616:
	ldb 0(%r25),%r20
	extrs %r20,31,8,%r21
	comib,= 0,%r21,.L615
	stb %r20,0(%r19)
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L616
	ldo 1(%r19),%r19
.L609:
	stb %r24,0(%r19)
.L606:
	bv,n %r0(%r2)
.L615:
	comib,=,n 0,%r24,.L606
	stb %r24,0(%r19)
	b,n .L606
.L607:
	b .L614
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
	movb,= %r25,%r25,.L618
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L626:
	comiclr,= 0,%r19,%r0
	b,n .L621
.L618:
	bv,n %r0(%r2)
.L621:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L626
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
	comib,= 0,%r21,.L632
	copy %r26,%r28
	b .L631
	copy %r25,%r20
.L630:
	comb,= %r21,%r19,.L629
	ldo 1(%r20),%r20
.L631:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L630
	nop
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L631
	copy %r25,%r20
.L632:
	copy %r21,%r28
.L629:
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
.L636:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L636
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
	copy %r26,%r28
	ldb 0(%r25),%r29
	extrs %r29,31,8,%r29
	comib,= 0,%r29,.L640
	copy %r25,%r20
	ldbs,mb 1(%r20),%r19
.L669:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L669
	ldbs,mb 1(%r20),%r19
.L640:
	comb,= %r25,%r20,.L642
	sub %r20,%r25,%r19
	ldo -1(%r25),%r23
	b .L649
	addl %r23,%r19,%r23
.L666:
	comib,= 0,%r20,.L665
	ldo 1(%r28),%r28
.L649:
	ldb 0(%r28),%r19
.L670:
	extrs %r19,31,8,%r20
	comb,<> %r29,%r20,.L666
	nop
	comib,= 0,%r28,.L642
	extru %r19,31,8,%r19
	copy %r25,%r21
	comib,<> 0,%r19,.L644
	copy %r28,%r31
	b .L668
	ldb 0(%r21),%r20
.L667:
	comb,=,n %r23,%r21,.L645
	ldbs,mb 1(%r31),%r19
	extru %r19,31,8,%r19
	comib,= 0,%r19,.L645
	ldo 1(%r21),%r21
.L644:
	ldb 0(%r21),%r20
	comiclr,= 0,%r20,%r22
	ldi 1,%r22
	comclr,<> %r19,%r20,%r20
	ldi 1,%r20
	and %r22,%r20,%r20
	comib,<> 0,%r20,.L667
	nop
.L645:
	ldb 0(%r21),%r20
.L668:
	comb,=,n %r19,%r20,.L642
	ldo 1(%r28),%r28
	b .L670
	ldb 0(%r28),%r19
.L665:
	copy %r20,%r28
.L642:
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
	b .L678
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr4,%fr0
.L680:
	ftest
	b,n .L679
	bv,n %r0(%r2)
.L679:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L674
	bv,n %r0(%r2)
.L674:
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
.L678:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L674
	b .L680
	fcmp,dbl,!> %fr4,%fr0
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
	b,n .L689
	comb,>> %r23,%r25,.L691
	sub %r25,%r23,%r29
	addl %r26,%r29,%r29
	comb,<<,n %r29,%r26,.L691
	ldb 0(%r24),%r25
	b .L688
	extrs %r25,31,8,%r25
.L683:
	comclr,>>= %r29,%r26,%r0
	b,n .L691
.L688:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	copy %r26,%r28
	comb,<> %r25,%r19,.L683
	ldo 1(%r26),%r26
	ldo -1(%r23),%r19
	comib,= 0,%r19,.L681
	ldo 1(%r24),%r20
	b .L684
	copy %r26,%r21
.L686:
	ldo 1(%r21),%r21
	comib,= 0,%r19,.L681
	ldo 1(%r20),%r20
.L684:
	ldb 0(%r21),%r31
	ldb 0(%r20),%r22
	comb,=,n %r22,%r31,.L686
	ldo -1(%r19),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L681
	comb,<> %r22,%r31,.L683
	nop
.L681:
	bv,n %r0(%r2)
.L691:
	bv %r0(%r2)
	ldi 0,%r28
.L689:
	bv %r0(%r2)
	copy %r26,%r28
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
	movb,= %r24,%r3,.L704
	copy %r26,%r4
	bl memmove,%r2
	nop
.L704:
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
	b .L721
	fcpy,dbl %fr5,%fr4
	ldi 0,%r20
.L709:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L722
	ldi 0,%r28
	fcmp,dbl,= %fr4,%fr0
	ftest
	b .L726
	ldil LR'.LC25,%r19
	ldi 0,%r28
.L714:
	comib,= 0,%r20,.L718
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
.L718:
	bv,n %r0(%r2)
.L722:
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr23
.L713:
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L713
	ldo 1(%r28),%r28
	b,n .L714
.L726:
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L727
	ldi 0,%r28
	b,n .L714
.L721:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L709
	ldi 1,%r20
.L727:
.L717:
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L717
	ldo -1(%r28),%r28
	b,n .L714
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
	copy %r26,%r19
	or %r26,%r25,%r26
	ldi 0,%r1
	ldi 0,%r2
	comib,= 0,%r26,.L736
	copy %r25,%r20
	ldi 0,%r28
.L742:
	extru %r19,31,1,%r29
	sub %r0,%r29,%r26
	subb %r0,%r28,%r25
	and %r25,%r23,%r21
	and %r26,%r24,%r22
	add %r22,%r2,%r2
	addc %r21,%r1,%r1
	shd %r23,%r24,31,%r23
	shd %r20,%r19,1,%r19
	extru %r20,30,31,%r20
	or %r20,%r19,%r31
	comb,<> %r28,%r31,.L742
	zdep %r24,30,31,%r24
.L736:
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
	comb,>> %r26,%r25,.L744
	ldi 1,%r19
	b .L747
	ldi 0,%r20
.L749:
	comb,>>= %r25,%r28,.L745
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L748
	copy %r19,%r20
.L744:
	comib,<=,n 0,%r25,.L749
	zdep %r25,30,31,%r25
.L745:
	comib,= 0,%r19,.L748
	copy %r19,%r20
	ldi 0,%r20
.L747:
	comb,>>,n %r25,%r28,.L750
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L750:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L747
	extru %r25,30,31,%r25
.L748:
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
	comb,= %r28,%r19,.L763
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L763:
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
	ldo 128(%r30),%r30
	copy %r25,%r28
	copy %r26,%r19
	extrs %r25,0,1,%r20
	xor %r25,%r20,%r25
	comb,= %r20,%r28,.L770
	xor %r26,%r20,%r26
.L768:
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L770:
	comb,<> %r28,%r19,.L768
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
	movb,=,n %r26,%r26,.L774
	ldi 0,%r28
.L773:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L773
	zdep %r25,30,31,%r25
	bv,n %r0(%r2)
.L774:
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
	stw %r3,-60(%r30)
	extru %r24,28,29,%r21
	copy %r24,%r28
	comb,>> %r25,%r26,.L777
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,<< %r19,%r26,%r0
	b,n .L790
.L777:
	comib,=,n 0,%r21,.L780
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L781:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L781
	ldo 8(%r20),%r20
.L780:
	comb,>>= %r28,%r24,.L791
	ldw -60(%r30),%r3
.L782:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L782
	stb %r20,0(%r19)
.L776:
	ldw -60(%r30),%r3
.L791:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L790:
	comib,= 0,%r24,.L776
	ldo -1(%r24),%r28
.L778:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L778
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
	comb,>> %r25,%r26,.L793
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L807
.L793:
	comib,= 0,%r21,.L796
	ldi 0,%r28
.L797:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L797
	sth %r20,0(%r19)
.L796:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L792
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r28
	addl %r26,%r24,%r26
	stb %r28,0(%r26)
.L792:
	bv,n %r0(%r2)
.L807:
	comib,= 0,%r24,.L792
	ldo -1(%r24),%r28
.L794:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L794
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
	extru %r24,29,30,%r22
	copy %r24,%r28
	comb,>> %r25,%r26,.L809
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,<< %r19,%r26,%r0
	b,n .L822
.L809:
	comib,=,n 0,%r22,.L812
	ldi 0,%r19
.L813:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r26,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r22,.L813
	stw %r21,0(%r20)
.L812:
	comclr,<< %r28,%r24,%r0
	b,n .L808
.L814:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L814
	stb %r20,0(%r19)
.L808:
	bv,n %r0(%r2)
.L822:
	comib,= 0,%r24,.L808
	ldo -1(%r24),%r28
.L810:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L810
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
	stwm %r4,128(%r30)
	stw %r3,-124(%r30)
	copy %r25,%r3
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	copy %r26,%r4
	comib,>= 0,%r28,.L828
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L828:
	extru %r4,31,1,%r20
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	fadd,dbl %fr4,%fr4,%fr4
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
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	copy %r26,%r4
	comib,>= 0,%r28,.L831
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L831:
	extru %r4,31,1,%r20
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	fadd,sgl %fr4L,%fr4L,%fr4L
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
	ldi 16,%r20
	ldo 16(%r28),%r19
.L837:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L833
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L837
	ldo 16(%r28),%r19
.L833:
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
.L842:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L838
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L842
	subi 31,%r28,%r19
.L838:
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
	b .L847
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	bv,n %r0(%r2)
.L847:
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
	extru %r26,31,16,%r26
	ldi 0,%r28
	copy %r28,%r19
	ldi 16,%r21
.L850:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L850
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
.L853:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L853
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
	movb,=,n %r26,%r26,.L858
	ldi 0,%r28
.L857:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L857
	zdep %r25,30,31,%r25
	bv,n %r0(%r2)
.L858:
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
	b,n .L863
	comib,=,n 0,%r25,.L864
	ldi 0,%r28
.L862:
	extrs %r25,31+1-1,1,%r19
	and %r19,%r26,%r19
	addl %r28,%r19,%r28
	extru %r25,30,31,%r25
	comib,<> 0,%r25,.L862
	zdep %r26,30,31,%r26
	bv,n %r0(%r2)
.L863:
	bv %r0(%r2)
	copy %r26,%r28
.L864:
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
	comb,<< %r25,%r26,.L867
	ldi 1,%r19
	b .L870
	ldi 0,%r20
.L872:
	comb,>>= %r25,%r28,.L868
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L871
	copy %r19,%r20
.L867:
	comib,<=,n 0,%r25,.L872
	zdep %r25,30,31,%r25
.L868:
	comib,= 0,%r19,.L871
	copy %r19,%r20
	ldi 0,%r20
.L870:
	comb,>>,n %r25,%r28,.L873
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L873:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L870
	extru %r25,30,31,%r25
.L871:
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
	b,n .L887
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L884
	ldi 1,%r28
	ldi 0,%r28
.L884:
	bv,n %r0(%r2)
.L887:
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
	b,n .L891
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L888
	ldi 1,%r28
	ldi 0,%r28
.L888:
	bv,n %r0(%r2)
.L891:
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
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	extrs %r26,0,1,%r19
	and %r19,%r25,%r19
	sub %r28,%r19,%r28
	extrs %r25,0,1,%r25
	and %r25,%r26,%r26
	bv %r0(%r2)
	sub %r28,%r26,%r28
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
	movb,< %r25,%r25,.L904
	ldi 0,%r31
	comib,= 0,%r25,.L906
	copy %r25,%r28
.L905:
	ldi 1,%r19
	ldi 0,%r28
	ldi 31,%r22
.L897:
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
	comib,<> 0,%r20,.L897
	extru %r19,31,8,%r19
	sub %r0,%r28,%r19
	comiclr,= 0,%r31,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L904:
	sub %r0,%r25,%r25
	comib,<> 0,%r25,.L905
	ldi 1,%r31
	copy %r25,%r28
.L906:
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	movb,< %r26,%r26,.L928
	ldi 0,%r21
.L908:
	comib,<= 0,%r25,.L930
	copy %r26,%r20
	sub %r0,%r25,%r25
	ldi 1,%r28
	xor %r21,%r28,%r21
.L930:
	comb,<< %r25,%r26,.L911
	ldi 1,%r19
	b .L915
	ldi 0,%r28
.L929:
	comib,= 0,%r19,.L919
	ldi 0,%r28
.L911:
	zdep %r25,30,31,%r25
	comb,<< %r25,%r26,.L929
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L919
	ldi 0,%r28
.L915:
	comb,>>,n %r25,%r20,.L914
	sub %r20,%r25,%r20
	or %r28,%r19,%r28
.L914:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L915
	extru %r25,30,31,%r25
	sub %r0,%r28,%r19
	comiclr,= 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L928:
	sub %r0,%r26,%r26
	b .L908
	ldi 1,%r21
.L919:
	copy %r19,%r28
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
	movb,>= %r26,%r26,.L932
	ldi 0,%r21
	sub %r0,%r26,%r26
	ldi 1,%r21
.L932:
	copy %r26,%r28
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	comb,<< %r25,%r26,.L934
	ldi 1,%r19
	b .L957
	sub %r28,%r25,%r20
.L955:
	comiclr,<> 0,%r19,%r0
	b,n .L953
.L934:
	zdep %r25,30,31,%r25
	comb,<< %r25,%r26,.L955
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L956
	sub %r28,%r25,%r20
.L957:
	comclr,>> %r25,%r28,%r0
	copy %r20,%r28
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
.L953:
	comib,<> 0,%r19,.L957
	sub %r28,%r25,%r20
.L956:
	sub %r0,%r28,%r19
	comiclr,= 0,%r21,%r0
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
	extru %r26,31,16,%r28
	extru %r25,31,16,%r25
	comb,>> %r28,%r25,.L959
	ldi 1,%r19
	b .L962
	ldi 0,%r20
.L964:
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	comb,>>= %r25,%r28,.L960
	extru %r19,31,16,%r19
	comib,= 0,%r19,.L963
	copy %r19,%r20
.L959:
	extrs %r25,31,16,%r20
	comib,<=,n 0,%r20,.L964
	zdep %r25,30,31,%r25
.L960:
	comib,= 0,%r19,.L963
	copy %r19,%r20
	ldi 0,%r20
.L962:
	comb,>>,n %r25,%r28,.L965
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r19,%r20,%r20
	extru %r20,31,16,%r20
.L965:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L962
	extru %r25,30,31,%r25
.L963:
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
	comb,<< %r25,%r26,.L977
	ldi 1,%r19
	b .L980
	ldi 0,%r20
.L982:
	comb,>>= %r25,%r28,.L978
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L981
	copy %r19,%r20
.L977:
	comib,<=,n 0,%r25,.L982
	zdep %r25,30,31,%r25
.L978:
	comib,= 0,%r19,.L981
	copy %r19,%r20
	ldi 0,%r20
.L980:
	comb,>>,n %r25,%r28,.L983
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L983:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L980
	extru %r25,30,31,%r25
.L981:
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
	bb,>=,n %r24,26,.L995
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
	bv %r0(%r2)
	ldi 0,%r29
.L995:
	comib,= 0,%r24,.L998
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	mtsar %r28
	zvdep %r25,32,%r28
	bv %r0(%r2)
	or %r26,%r28,%r28
.L998:
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
	bb,>= %r24,26,.L1000
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	bv %r0(%r2)
	vextrs %r25,32,%r29
.L1000:
	comib,= 0,%r24,.L1003
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	bv %r0(%r2)
	or %r25,%r29,%r29
.L1003:
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
	shd %r26,%r26,16,%r28
	dep %r28,15,8,%r28
	shd %r26,%r28,8,%r28
	shd %r25,%r25,16,%r29
	dep %r29,15,8,%r29
	shd %r25,%r29,8,%r29
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
	addl %r28,%r20,%r28
	ldi 12,%r20
	and %r19,%r20,%r20
	comiclr,<> 0,%r20,%r20
	ldi 1,%r20
	zdep %r20,30,31,%r20
	subi 2,%r20,%r21
	mtsar %r21
	vshd %r0,%r19,%r19
	bb,< %r19,30,.L1008
	ldi 0,%r21
	subi 2,%r19,%r21
.L1008:
	addl %r20,%r28,%r28
	bv %r0(%r2)
	addl %r21,%r28,%r28
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
	b,n .L1014
	comclr,>= %r23,%r25,%r0
	b,n .L1013
	comclr,<<= %r24,%r26,%r0
	b,n .L1014
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv %r0(%r2)
	ldo 1(%r28),%r28
.L1014:
	bv %r0(%r2)
	ldi 0,%r28
.L1013:
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
	comb,> %r23,%r25,.L1022
	ldi 0,%r28
	comb,< %r23,%r25,.L1019
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1020
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
	bv %r0(%r2)
	ldo -1(%r28),%r28
.L1020:
	ldi 0,%r28
.L1022:
	bv %r0(%r2)
	ldo -1(%r28),%r28
.L1019:
	bv %r0(%r2)
	ldo -1(%r28),%r28
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
	addl %r28,%r20,%r21
	extru %r19,31,2,%r20
	comiclr,<> 0,%r20,%r20
	ldi 1,%r20
	zdep %r20,30,31,%r20
	mtsar %r20
	vshd %r0,%r19,%r19
	extru %r19,31,2,%r19
	uaddcm %r0,%r19,%r28
	extru %r19,30,31,%r19
	subi 2,%r19,%r19
	extrs %r28,31+1-1,1,%r28
	and %r28,%r19,%r28
	addl %r20,%r21,%r20
	bv %r0(%r2)
	addl %r28,%r20,%r28
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
	bb,>= %r24,26,.L1025
	mtsar %r24
	vshd %r0,%r25,%r29
	bv %r0(%r2)
	ldi 0,%r28
.L1025:
	comib,= 0,%r24,.L1028
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	bv %r0(%r2)
	or %r25,%r29,%r29
.L1028:
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
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	extru %r25,31,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	extru %r22,15,16,%r19
	extru %r26,15,16,%r26
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr23L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r19,%r29,%r19
	extru %r19,31,16,%r20
	extru %r25,15,16,%r25
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r20,%r29,%r20
	extru %r22,31,16,%r22
	zdep %r20,15,16,%r21
	extru %r19,15,16,%r19
	xmpyu %fr22L,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r19,%r29,%r19
	extru %r20,15,16,%r28
	addl %r19,%r28,%r28
	bv %r0(%r2)
	addl %r22,%r21,%r29
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 4
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extru %r26,31,16,%r19
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr23L
	extru %r24,31,16,%r20
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr24L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	extru %r29,15,16,%r28
	extru %r26,15,16,%r19
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr24L,%fr22L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r28,%r20,%r28
	extru %r28,31,16,%r19
	extru %r24,15,16,%r20
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr24L
	xmpyu %fr23L,%fr24L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r19,%r22,%r19
	extru %r29,31,16,%r29
	zdep %r19,15,16,%r31
	extru %r28,15,16,%r28
	xmpyu %fr22L,%fr24L,%fr23
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r28,%r22,%r28
	extru %r19,15,16,%r19
	addl %r28,%r19,%r28
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr25R
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr25L
	xmpyu %fr25R,%fr25L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r28,%r20,%r28
	stws %r24,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	addl %r28,%r26,%r28
	bv %r0(%r2)
	addl %r29,%r31,%r29
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
	extru %r26,27,28,%r19
	xor %r19,%r26,%r19
	extru %r19,31,4,%r19
	subi 31,%r19,%r19
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
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
	add %r20,%r29,%r29
	addc %r19,%r28,%r28
	ldil L'252641280,%r19
	ldo 3855(%r19),%r19
	and %r28,%r19,%r28
	and %r29,%r19,%r19
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
	ldil LR'.LC30,%r20
	ldo RR'.LC30(%r20),%r20
	b .L1039
	fldds 0(%r20),%fr4
.L1044:
	fmpy,dbl %fr5,%fr5,%fr5
.L1039:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L1046
	extru %r28,0,1,%r19
	fmpy,dbl %fr4,%fr5,%fr4
.L1046:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,<> 0,%r28,.L1044
	nop
	comiclr,<= 0,%r24,%r0
	b,n .L1045
	bv,n %r0(%r2)
.L1045:
	fldds 0(%r20),%fr22
	bv %r0(%r2)
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
	ldil LR'.LC32,%r20
	ldo RR'.LC32(%r20),%r20
	b .L1050
	fldws 0(%r20),%fr4L
.L1055:
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L1050:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L1057
	extru %r28,0,1,%r19
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1057:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,<> 0,%r28,.L1055
	nop
	comiclr,<= 0,%r25,%r0
	b,n .L1056
	bv,n %r0(%r2)
.L1056:
	fldws 0(%r20),%fr22L
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
	b,n .L1062
	comclr,>>= %r23,%r25,%r0
	b,n .L1061
	comclr,<<= %r24,%r26,%r0
	b,n .L1062
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv %r0(%r2)
	ldo 1(%r28),%r28
.L1062:
	bv %r0(%r2)
	ldi 0,%r28
.L1061:
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
	comb,>> %r23,%r25,.L1070
	ldi 0,%r28
	comb,<< %r23,%r25,.L1067
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1068
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
	bv %r0(%r2)
	ldo -1(%r28),%r28
.L1068:
	ldi 0,%r28
.L1070:
	bv %r0(%r2)
	ldo -1(%r28),%r28
.L1067:
	bv %r0(%r2)
	ldo -1(%r28),%r28
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
