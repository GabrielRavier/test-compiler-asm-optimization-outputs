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
	movb,= %r23,%r23,.L20
	extru %r24,31,8,%r24
.L16:
	ldb 0(%r25),%r28
	comb,= %r24,%r28,.L27
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	comib,<> 0,%r23,.L16
	ldo 1(%r26),%r26
.L20:
	b .L15
	ldi 0,%r28
.L27:
	comib,= 0,%r23,.L20
	ldo 1(%r26),%r28
.L15:
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
	movb,= %r24,%r24,.L34
	extru %r25,31,8,%r25
.L29:
	ldb 0(%r26),%r28
	comb,=,n %r25,%r28,.L37
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L29
	ldo 1(%r26),%r26
.L34:
	b .L28
	ldi 0,%r28
.L37:
	comib,= 0,%r24,.L34
	copy %r26,%r28
.L28:
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
	movb,= %r24,%r24,.L51
	ldi 0,%r28
.L39:
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	comb,<>,n %r28,%r19,.L50
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	comib,<> 0,%r24,.L39
	ldo 1(%r25),%r25
	b .L38
	ldi 0,%r28
.L50:
	comib,= 0,%r24,.L51
	ldi 0,%r28
	copy %r19,%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L38:
.L51:
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
	comib,= 0,%r24,.L53
	copy %r26,%r3
	bl memcpy,%r2
	nop
.L53:
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
	ldo -1(%r26),%r26
.L58:
	comb,= %r26,%r24,.L61
	copy %r24,%r28
	ldb 0(%r28),%r19
	comb,<> %r25,%r19,.L58
	ldo -1(%r24),%r24
	b,n .L57
.L61:
	ldi 0,%r28
.L57:
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
	movb,= %r24,%r24,.L63
	copy %r26,%r28
	addl %r26,%r24,%r24
	copy %r26,%r19
	stb %r25,0(%r19)
.L69:
	ldo 1(%r19),%r19
	comb,<>,n %r19,%r24,.L69
	stb %r25,0(%r19)
.L63:
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
	comib,= 0,%r20,.L71
	stb %r19,0(%r26)
.L72:
	ldbs,mb 1(%r25),%r19
	extrs %r19,31,8,%r20
	comib,<> 0,%r20,.L72
	stbs,mb %r19,1(%r28)
.L71:
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
	comib,= 0,%r19,.L77
	extru %r25,31,8,%r25
	extru %r19,31,8,%r19
.L84:
	comb,=,n %r25,%r19,.L77
	ldbs,mb 1(%r28),%r19
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L84
	extru %r19,31,8,%r19
.L77:
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
.L87:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	b,n .L86
	comib,<> 0,%r19,.L87
	ldo 1(%r28),%r28
	ldi 0,%r28
.L86:
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
	comib,= 0,%r19,.L90
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L90
	ldi 1,%r20
	ldbx %r26(%r20),%r19
.L103:
	extrs %r19,31,8,%r19
	ldbx %r25(%r20),%r28
	extrs %r28,31,8,%r28
	comib,= 0,%r19,.L90
	ldo 1(%r20),%r20
	comb,=,n %r28,%r19,.L103
	ldbx %r26(%r20),%r19
.L90:
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
	comib,= 0,%r28,.L105
	copy %r26,%r28
	ldbs,mb 1(%r28),%r19
.L109:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L109
	ldbs,mb 1(%r28),%r19
.L105:
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
	movb,=,n %r24,%r24,.L116
	ldb 0(%r26),%r28
	comib,= 0,%r28,.L112
	ldo -1(%r24),%r24
	addl %r25,%r24,%r21
.L113:
	ldb 0(%r25),%r19
	comiclr,= 0,%r19,%r20
	ldi 1,%r20
	comclr,<> %r28,%r19,%r19
	ldi 1,%r19
	and %r20,%r19,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L112
	comb,=,n %r21,%r25,.L112
	ldbs,mb 1(%r26),%r28
	extru %r28,31,8,%r28
	comib,<> 0,%r28,.L113
	ldo 1(%r25),%r25
.L112:
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
.L110:
	bv,n %r0(%r2)
.L116:
	b .L110
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
	comib,>= 1,%r24,.L124
	depi 0,31,1,%r24
	addl %r26,%r24,%r19
.L126:
	ldb 1(%r26),%r28
	stb %r28,0(%r25)
	ldb 0(%r26),%r28
	stb %r28,1(%r25)
	ldo 2(%r26),%r26
	comb,<> %r19,%r26,.L126
	ldo 2(%r25),%r25
.L124:
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
	comib,<> 0,%r28,.L142
	ldi 1,%r28
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	comib,<> 0,%r28,.L140
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	ldi 1,%r28
	comb,>>=,n %r28,%r19,.L138
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
	b,n .L138
.L140:
	ldi 1,%r28
.L138:
.L142:
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
	comb,>>= %r28,%r26,.L150
	ldo -42(%r26),%r19
	ldo -8192(%r19),%r19
	ldil L'49152,%r28
	ldo -2091(%r28),%r28
	comb,>>= %r28,%r19,.L148
	ldil L'16384,%r28
	ldo -8153(%r28),%r28
	comb,>>= %r28,%r26,.L148
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L148
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L149
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
	b,n .L144
.L150:
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
	b,n .L144
.L148:
	ldi 1,%r28
.L144:
	bv,n %r0(%r2)
.L149:
	b .L144
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
	comib,>>= 9,%r19,.L151
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L151:
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
	b .L158
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L163
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L161
	fcpy,dbl %fr0,%fr4
	b,n .L155
.L161:
	fsub,dbl %fr5,%fr7,%fr4
.L155:
.L163:
	bv,n %r0(%r2)
.L158:
	b .L155
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
	b .L164
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L168
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L170
	b .L164
	fcpy,sgl %fr0,%fr4L
.L170:
	fsub,sgl %fr4L,%fr5L,%fr4L
.L164:
	bv,n %r0(%r2)
.L168:
	b .L164
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
	b .L179
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L174
	fcpy,dbl %fr7,%fr4
	comiclr,= 0,%r21,%r0
	b,n .L172
.L179:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L172:
	bv,n %r0(%r2)
.L174:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L172
	b,n .L179
.L178:
	b .L172
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
	b .L189
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L190
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L185
	comib,<> 0,%r28,.L183
	fcpy,sgl %fr5L,%fr4L
.L190:
	b .L183
	fcpy,sgl %fr22L,%fr4L
.L185:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L189
	fcpy,sgl %fr4L,%fr5L
.L189:
	fcpy,sgl %fr5L,%fr4L
.L183:
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
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L200
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L201
	copy %r19,%r21
	depi 0,31,31,%r21
	copy %r28,%r22
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L196
	fcpy,dbl %fr7,%fr4
	comiclr,= 0,%r21,%r0
	b,n .L194
.L201:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L194:
	bv,n %r0(%r2)
.L196:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L194
	b,n .L201
.L200:
	b .L194
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
	b .L211
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L212
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L207
	fcpy,dbl %fr5,%fr4
	comiclr,= 0,%r21,%r0
	b,n .L205
.L211:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L205:
	bv,n %r0(%r2)
.L207:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L205
	b,n .L211
.L212:
	b .L205
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
	b .L223
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L217
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L219
	comiclr,= 0,%r28,%r0
	b,n .L217
.L223:
	fcpy,sgl %fr5L,%fr4L
.L217:
.L228:
	bv,n %r0(%r2)
.L219:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L217
	b .L228
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
	b .L235
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L236
	copy %r28,%r21
	depi 0,31,31,%r21
	copy %r19,%r22
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L231
	fcpy,dbl %fr5,%fr4
	comiclr,= 0,%r21,%r0
	b,n .L229
.L235:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L229:
	bv,n %r0(%r2)
.L231:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L229
	b,n .L235
.L236:
	b .L229
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
	movb,= %r26,%r26,.L242
	copy %r28,%r19
	ldil LR'digits,%r21
	ldo RR'digits(%r21),%r21
.L243:
	extru %r26,31,6,%r20
	ldbx %r21(%r20),%r20
	stb %r20,0(%r19)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L243
	ldo 1(%r19),%r19
.L242:
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
	movb,=,n %r25,%r25,.L254
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L248:
	bv,n %r0(%r2)
.L254:
	stw %r25,4(%r26)
	b .L248
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
	comib,=,n 0,%r28,.L256
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L256:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L255
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L255:
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
	comib,= 0,%r6,.L265
	ldw -180(%r30),%r9
	copy %r25,%r3
	ldi 0,%r4
.L267:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,= 0,%r28,.L264
	copy %r3,%r8
	ldo 1(%r4),%r4
	comb,<> %r4,%r6,.L267
	addl %r3,%r5,%r3
.L265:
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
	comib,= 0,%r5,.L264
	addl %r11,%r29,%r8
	copy %r5,%r24
	copy %r7,%r25
	bl memmove,%r2
	copy %r8,%r26
.L264:
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
	comib,= 0,%r7,.L280
	ldw -180(%r30),%r9
	copy %r25,%r3
	ldi 0,%r4
.L282:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,= 0,%r28,.L279
	copy %r3,%r8
	ldo 1(%r4),%r4
	comb,<> %r4,%r7,.L282
	addl %r3,%r6,%r3
.L280:
	ldi 0,%r8
.L279:
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
	comib,>>= 4,%r19,.L307
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L309
	ldi 43,%r19
.L307:
	ldbs,mb 1(%r26),%r28
.L310:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L310
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L310
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L309:
	comb,= %r19,%r28,.L300
	ldi 45,%r19
	comb,<> %r19,%r28,.L296
	ldi 0,%r21
	ldi 1,%r21
.L295:
	ldo 1(%r26),%r26
.L296:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,<< 9,%r20,.L298
	ldi 0,%r28
	sh2addl %r28,%r28,%r28 
.L311:
	zdep %r28,30,31,%r28
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	sub %r28,%r19,%r28
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L311
	sh2addl %r28,%r28,%r28 
.L298:
	sub %r0,%r28,%r19
	comiclr,<> 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L300:
	b .L295
	ldi 0,%r21
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
	comib,>>= 4,%r19,.L328
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L330
	ldi 43,%r19
.L328:
	ldbs,mb 1(%r26),%r28
.L331:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L331
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L331
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L330:
	comb,= %r19,%r28,.L321
	ldi 45,%r19
	comb,<> %r19,%r28,.L317
	ldi 0,%r21
	ldi 1,%r21
.L316:
	ldo 1(%r26),%r26
.L317:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,<< 9,%r20,.L319
	ldi 0,%r28
	sh2addl %r28,%r28,%r28 
.L332:
	zdep %r28,30,31,%r28
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	sub %r28,%r19,%r28
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L332
	sh2addl %r28,%r28,%r28 
.L319:
	sub %r0,%r28,%r19
	comiclr,<> 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L321:
	b .L316
	ldi 0,%r21
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
	comib,>>= 4,%r19,.L349
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L351
	ldi 43,%r19
.L349:
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
	comb,= %r19,%r28,.L342
	ldi 45,%r19
	comb,<> %r19,%r28,.L338
	ldi 0,%r31
	ldi 1,%r31
.L337:
	ldo 1(%r26),%r26
.L338:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	ldi 0,%r28
	ldi 0,%r29
	comib,<< 9,%r20,.L340
	shd %r28,%r29,30,%r23
.L353:
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
	comib,>>= 9,%r20,.L353
	shd %r28,%r29,30,%r23
.L340:
	comiclr,= 0,%r31,%r0
	b,n .L333
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L333:
	bv,n %r0(%r2)
.L342:
	b .L337
	ldi 0,%r31
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
	movb,<> %r24,%r3,.L358
	ldw -180(%r30),%r8
	ldi 0,%r5
.L354:
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
.L359:
.L356:
	comib,= 0,%r3,.L354
	ldi 0,%r5
.L358:
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
	movb,<,n %r28,%r28,.L359
	copy %r4,%r3
	comib,>= 0,%r28,.L354
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	b .L356
	addl %r5,%r28,%r6
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
	movb,<> %r24,%r3,.L368
	ldw -184(%r30),%r8
.L365:
	ldi 0,%r5
	copy %r5,%r28
.L376:
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
.L367:
	comib,= 0,%r4,.L365
	copy %r4,%r3
.L368:
	extrs %r3,30,31,%r4
	stws %r4,-16(%sp)
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
	movb,=,n %r28,%r28,.L376
	copy %r5,%r28
	comib,>= 0,%r28,.L367
	nop
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
	ldo -1(%r3),%r3
	b .L367
	extrs %r3,30,31,%r4
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
	comb,= %r19,%r25,.L385
	copy %r26,%r28
.L399:
	comib,=,n 0,%r19,.L385
	ldws,mb 4(%r28),%r19
	comb,<> %r25,%r19,.L399
	nop
.L385:
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
	b,n .L401
	comib,= 0,%r21,.L401
	ldi 4,%r28
	ldwx %r26(%r28),%r20
.L416:
	ldwx %r25(%r28),%r21
	comiclr,= 0,%r20,%r19
	ldi 1,%r19
	comclr,<> %r21,%r20,%r22
	ldi 1,%r22
	and %r19,%r22,%r19
	comib,= 0,%r19,.L401
	ldo 4(%r28),%r28
	comib,<>,n 0,%r21,.L416
	ldwx %r26(%r28),%r20
.L401:
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
.L418:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L418
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
	comib,= 0,%r28,.L423
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L425:
	comib,<>,n 0,%r19,.L425
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
.L426:
	bv %r0(%r2)
	extrs %r28,29,30,%r28
.L423:
	b .L426
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
	movb,= %r24,%r24,.L444
	ldi 0,%r28
.L428:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r20
	comiclr,= 0,%r28,%r19
	ldi 1,%r19
	comclr,<> %r20,%r28,%r28
	ldi 1,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L429
	comib,=,n 0,%r20,.L429
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L428
	ldo 4(%r25),%r25
	b .L427
	ldi 0,%r28
.L429:
	comib,= 0,%r24,.L444
	ldi 0,%r28
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L427:
.L444:
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
	movb,= %r24,%r24,.L455
	ldi 0,%r28
.L446:
	ldw 0(%r26),%r28
	comb,=,n %r25,%r28,.L454
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L446
	ldo 4(%r26),%r26
.L451:
	b .L445
	ldi 0,%r28
.L454:
	comib,= 0,%r24,.L451
	copy %r26,%r28
.L445:
.L455:
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
	movb,= %r24,%r24,.L470
	ldi 0,%r28
.L457:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<>,n %r28,%r19,.L469
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L457
	ldo 4(%r25),%r25
.L461:
	b .L456
	ldi 0,%r28
.L469:
	comib,= 0,%r24,.L461
	copy %r19,%r20
	copy %r28,%r19
	comclr,>= %r28,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L456:
.L470:
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
	movb,= %r24,%r24,.L472
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L472:
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
	comb,= %r25,%r26,.L477
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L478
	ldi 0,%r19
	comclr,<> %r19,%r24,%r0
	b,n .L477
.L479:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L479
	stw %r21,0(%r20)
	b,n .L477
.L478:
	comib,=,n 0,%r24,.L477
	ldo -1(%r24),%r24
.L480:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L480
	stw %r20,0(%r19)
.L477:
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
	movb,= %r24,%r24,.L489
	copy %r26,%r28
	ldi 0,%r19
.L490:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L490
	stw %r25,0(%r20)
.L489:
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
	b,n .L496
	comib,=,n 0,%r24,.L495
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L498:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L498
	stb %r19,0(%r28)
.L495:
	bv,n %r0(%r2)
.L496:
	comb,= %r25,%r26,.L495
	nop
	comib,= 0,%r24,.L495
	nop
	ldi 0,%r28
.L499:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L499
	stb %r20,0(%r19)
	b,n .L495
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
	bb,>= %r24,26,.L509
	uaddcm %r0,%r24,%r28
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
.L510:
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L511
	extru %r24,31,6,%r19
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
.L512:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L509:
	extru %r26,30,31,%r19
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	b .L510
	zvdep %r26,32,%r29
.L511:
	zdep %r25,30,31,%r20
	uaddcm %r0,%r19,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r20,32,%r20
	mtsar %r19
	vshd %r0,%r26,%r26
	or %r20,%r26,%r26
	b .L512
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
	bb,>= %r24,26,.L514
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L515:
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L516
	extru %r24,31,6,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r26,32,%r25
	ldi 0,%r26
.L517:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L514:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	b .L515
	vshd %r0,%r25,%r28
.L516:
	extru %r26,30,31,%r20
	uaddcm %r0,%r19,%r21
	mtsar %r21
	vshd %r0,%r20,%r20
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r25,32,%r25
	or %r20,%r25,%r25
	b .L517
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
	ldi 32,%r20
	mtsar %r28
.L534:
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r19
	comib,<> 0,%r19,.L529
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L534
	mtsar %r28
	ldi 0,%r28
.L529:
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
	movb,=,n %r26,%r26,.L538
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L535
	ldi 1,%r28
.L537:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L537
	ldo 1(%r28),%r28
.L535:
	bv,n %r0(%r2)
.L538:
	b .L535
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
	b .L541
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L541
	ldi 0,%r28
.L541:
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
	b .L545
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L545
	ldi 0,%r28
.L545:
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
	b .L549
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L549
	ldi 0,%r28
.L549:
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
	b,n .L555
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L555
	comib,> 0,%r25,.L566
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L558
	fldws 0(%r28),%fr22L
.L566:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L558
	fldws 0(%r28),%fr22L
.L567:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L555
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L558:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L567
	extru %r25,0,1,%r28
	b .L567
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L555:
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
	b .L569
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L569
	comib,> 0,%r24,.L580
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L572
	fldds 0(%r28),%fr22
.L580:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L572
	fldds 0(%r28),%fr22
.L581:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L569
	fmpy,dbl %fr22,%fr22,%fr22
.L572:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L581
	extru %r24,0,1,%r28
	b .L581
	fmpy,dbl %fr4,%fr22,%fr4
.L569:
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
	b .L583
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L583
	comib,> 0,%r24,.L594
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L586
	fldds 0(%r28),%fr22
.L594:
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L586
	fldds 0(%r28),%fr22
.L595:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L583
	fmpy,dbl %fr22,%fr22,%fr22
.L586:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L595
	extru %r24,0,1,%r28
	b .L595
	fmpy,dbl %fr4,%fr22,%fr4
.L583:
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
	movb,= %r24,%r24,.L597
	copy %r26,%r28
	ldi 0,%r19
.L598:
	ldbx %r28(%r19),%r20
	ldbx %r25(%r19),%r21
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L598
	stb %r20,0(%r21)
.L597:
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
	comib,= 0,%r19,.L610
	copy %r26,%r28
	copy %r26,%r19
	ldbs,mb 1(%r19),%r20
.L618:
	extrs %r20,31,8,%r20
	comib,<>,n 0,%r20,.L618
	ldbs,mb 1(%r19),%r20
	b,n .L617
.L610:
	b .L617
	copy %r26,%r19
.L608:
	ldo 1(%r25),%r25
	ldo 1(%r19),%r19
	ldo -1(%r24),%r24
.L617:
	comib,=,n 0,%r24,.L612
	ldb 0(%r25),%r20
	extrs %r20,31,8,%r21
	comib,<> 0,%r21,.L608
	stb %r20,0(%r19)
	comiclr,= 0,%r24,%r0
	b,n .L609
.L612:
	stb %r24,0(%r19)
.L609:
	bv,n %r0(%r2)
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
	movb,= %r25,%r25,.L619
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L626:
	comiclr,= 0,%r19,%r0
	b,n .L622
.L619:
	bv,n %r0(%r2)
.L622:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L626
	ldbx %r26(%r28),%r19
	b,n .L619
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
	copy %r25,%r20
.L631:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L634
	comb,<> %r21,%r19,.L631
	ldo 1(%r20),%r20
.L629:
	bv,n %r0(%r2)
.L634:
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L631
	copy %r25,%r20
.L632:
	b .L629
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
.L637:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L637
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
	comib,= 0,%r29,.L641
	copy %r25,%r20
	ldbs,mb 1(%r20),%r19
.L666:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L666
	ldbs,mb 1(%r20),%r19
.L641:
	comb,= %r25,%r20,.L643
	sub %r20,%r25,%r19
	ldo -1(%r25),%r23
	b .L650
	addl %r23,%r19,%r23
.L649:
	comib,=,n 0,%r28,.L643
	ldb 0(%r28),%r19
	copy %r25,%r21
	comib,= 0,%r19,.L646
	copy %r28,%r31
.L645:
	ldb 0(%r21),%r20
	comiclr,= 0,%r20,%r22
	ldi 1,%r22
	comclr,<> %r19,%r20,%r20
	ldi 1,%r20
	and %r22,%r20,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L646
	comb,=,n %r23,%r21,.L646
	ldbs,mb 1(%r31),%r19
	extru %r19,31,8,%r19
	comib,<> 0,%r19,.L645
	ldo 1(%r21),%r21
.L646:
	ldb 0(%r21),%r20
	comb,=,n %r19,%r20,.L643
	ldo 1(%r28),%r28
.L650:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comb,= %r29,%r19,.L649
	nop
	comib,<> 0,%r19,.L650
	ldo 1(%r28),%r28
	ldi 0,%r28
.L643:
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
	b .L674
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr4,%fr0
.L676:
	ftest
	b,n .L675
	b,n .L671
.L675:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L670
.L671:
	bv,n %r0(%r2)
.L674:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L670
	b .L676
	fcmp,dbl,!> %fr4,%fr0
.L670:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L671
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
	movb,= %r23,%r23,.L700
	copy %r26,%r28
	comb,>>,n %r23,%r25,.L687
	sub %r25,%r23,%r29
	addl %r26,%r29,%r29
	comb,<<,n %r29,%r26,.L687
	ldb 0(%r24),%r25
	b .L684
	extrs %r25,31,8,%r25
.L699:
	comiclr,<> 0,%r19,%r0
	b,n .L677
	comclr,<> %r22,%r31,%r0
	b,n .L677
.L679:
	comb,<< %r29,%r26,.L700
	ldi 0,%r28
.L684:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	copy %r26,%r28
	comb,<> %r25,%r19,.L679
	ldo 1(%r26),%r26
	ldo -1(%r23),%r19
	comib,= 0,%r19,.L677
	ldo 1(%r24),%r20
	copy %r26,%r21
.L680:
	ldb 0(%r21),%r31
	ldb 0(%r20),%r22
	comb,<> %r22,%r31,.L699
	ldo 1(%r21),%r21
	ldo -1(%r19),%r19
	comib,<> 0,%r19,.L680
	ldo 1(%r20),%r20
.L677:
.L700:
	bv,n %r0(%r2)
.L687:
	b .L677
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
	movb,= %r24,%r3,.L702
	copy %r26,%r4
	bl memmove,%r2
	nop
.L702:
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
	b .L719
	fcpy,dbl %fr5,%fr4
	ldi 0,%r21
.L707:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L720
	ldi 0,%r28
	b .L734
	fcmp,dbl,= %fr4,%fr0
.L720:
	ldil LR'.LC25,%r20
	ldo RR'.LC25(%r20),%r20
	fldds 0(%r20),%fr23
	fldds 0(%r19),%fr22
.L711:
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L711
	ldo 1(%r28),%r28
.L712:
.L735:
	comib,= 0,%r21,.L716
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
.L716:
	bv,n %r0(%r2)
.L719:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L707
	ldi 1,%r21
.L734:
	ftest
	b .L724
	ldil LR'.LC25,%r20
	b .L712
	ldi 0,%r28
.L724:
	ldo RR'.LC25(%r20),%r20
	fldds 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L725
	ldi 0,%r28
	b,n .L735
.L725:
	ldi 0,%r28
.L715:
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L715
	ldo -1(%r28),%r28
	b,n .L712
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
	comb,<<= %r26,%r25,.L753
	ldi 1,%r19
.L744:
	comib,>,n 0,%r25,.L745
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L745
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L744
	nop
.L745:
	comib,= 0,%r19,.L748
	ldi 0,%r20
.L753:
	b .L747
	ldi 0,%r20
.L750:
	extru %r19,30,31,%r19
.L761:
	comib,= 0,%r19,.L748
	extru %r25,30,31,%r25
.L747:
	comb,>>,n %r25,%r28,.L761
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L750
	or %r20,%r19,%r20
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
	comb,= %r28,%r19,.L764
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
.L762:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L764:
	b .L762
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
	copy %r26,%r19
	extrs %r25,0,1,%r20
	xor %r25,%r20,%r25
	comb,= %r20,%r28,.L771
	xor %r26,%r20,%r26
.L769:
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -148(%r30),%r2
.L772:
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L771:
	comb,<> %r28,%r19,.L769
	ldi 63,%r28
	b .L772
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
	movb,= %r26,%r26,.L773
	ldi 0,%r28
.L775:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L775
	zdep %r25,30,31,%r25
.L773:
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
	comb,>> %r25,%r26,.L779
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>>= %r19,%r26,%r0
	b,n .L779
	comib,= 0,%r24,.L778
	ldo -1(%r24),%r28
.L780:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L780
	stb %r20,0(%r19)
	b .L792
	ldw -60(%r30),%r3
.L779:
	comib,=,n 0,%r21,.L782
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L783:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L783
	ldo 8(%r20),%r20
.L782:
	comb,>>= %r28,%r24,.L792
	ldw -60(%r30),%r3
.L784:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L784
	stb %r20,0(%r19)
.L778:
	ldw -60(%r30),%r3
.L792:
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
	comb,>> %r25,%r26,.L794
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,>>= %r28,%r26,%r0
	b,n .L794
	comib,= 0,%r24,.L793
	ldo -1(%r24),%r28
.L795:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L795
	stb %r20,0(%r19)
	b,n .L793
.L794:
	comib,= 0,%r21,.L797
	ldi 0,%r28
.L798:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L798
	sth %r20,0(%r19)
.L797:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L793
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r28
	addl %r26,%r24,%r26
	stb %r28,0(%r26)
.L793:
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
	comclr,>>= %r19,%r26,%r0
	b,n .L809
	comib,= 0,%r24,.L808
	ldo -1(%r24),%r28
.L810:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L810
	stb %r20,0(%r19)
	b,n .L808
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
	comib,>= 0,%r28,.L827
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
.L826:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L827:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b .L826
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
	comib,>= 0,%r28,.L830
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
.L829:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L830:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b .L829
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
.L836:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L832
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L836
	ldo 16(%r28),%r19
.L832:
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
.L841:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L837
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L841
	subi 31,%r28,%r19
.L837:
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
	b .L846
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L842:
	bv,n %r0(%r2)
.L846:
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	b .L842
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
.L849:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L849
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
.L852:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L852
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
	movb,= %r26,%r26,.L854
	ldi 0,%r28
.L856:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L856
	zdep %r25,30,31,%r25
.L854:
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
	movb,<> %r26,%r26,.L865
	ldi 0,%r28
	b,n .L859
.L861:
	and %r19,%r26,%r19
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L865:
	comib,<> 0,%r25,.L861
	extrs %r25,31+1-1,1,%r19
.L859:
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
	comb,<<= %r26,%r25,.L876
	ldi 1,%r19
.L867:
	comib,>,n 0,%r25,.L868
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L868
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L867
	nop
.L868:
	comib,= 0,%r19,.L871
	ldi 0,%r20
.L876:
	b .L870
	ldi 0,%r20
.L873:
	extru %r19,30,31,%r19
.L884:
	comib,= 0,%r19,.L871
	extru %r25,30,31,%r25
.L870:
	comb,>>,n %r25,%r28,.L884
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L873
	or %r20,%r19,%r20
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
	b,n .L888
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L885
	ldi 1,%r28
	b .L885
	ldi 0,%r28
.L888:
	ldi -1,%r28
.L885:
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
	b,n .L892
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L889
	ldi 1,%r28
	b .L889
	ldi 0,%r28
.L892:
	ldi -1,%r28
.L889:
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
	movb,< %r25,%r25,.L905
	ldi 0,%r31
.L896:
	comib,= 0,%r25,.L901
	ldi 1,%r19
	ldi 0,%r28
	ldi 31,%r22
.L898:
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
	comib,<> 0,%r20,.L898
	extru %r19,31,8,%r19
.L897:
	sub %r0,%r28,%r19
	comiclr,= 0,%r31,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L905:
	sub %r0,%r25,%r25
	b .L896
	ldi 1,%r31
.L901:
	b .L897
	ldi 0,%r28
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
	movb,< %r26,%r26,.L927
	ldi 0,%r21
.L907:
	comib,> 0,%r25,.L928
	ldi 1,%r28
.L908:
	copy %r26,%r20
	comb,>>= %r25,%r26,.L926
	ldi 1,%r19
	zdep %r25,30,31,%r25
.L930:
	comb,>>= %r25,%r26,.L909
	zdep %r19,30,31,%r19
	comib,<>,n 0,%r19,.L930
	zdep %r25,30,31,%r25
.L909:
	comiclr,<> 0,%r19,%r0
	b,n .L918
.L926:
	b .L914
	ldi 0,%r28
.L927:
	sub %r0,%r26,%r26
	b .L907
	ldi 1,%r21
.L928:
	sub %r0,%r25,%r25
	b .L908
	xor %r21,%r28,%r21
.L929:
	or %r28,%r19,%r28
	extru %r19,30,31,%r19
.L931:
	comib,= 0,%r19,.L912
	extru %r25,30,31,%r25
.L914:
	comb,>>,n %r25,%r20,.L931
	extru %r19,30,31,%r19
	b .L929
	sub %r20,%r25,%r20
.L918:
	ldi 0,%r28
.L912:
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
	movb,< %r26,%r26,.L955
	ldi 0,%r21
.L933:
	copy %r26,%r28
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	comb,>>= %r25,%r26,.L949
	ldi 1,%r19
	zdep %r25,30,31,%r25
.L956:
	comb,>>= %r25,%r26,.L954
	zdep %r19,30,31,%r19
	comib,<>,n 0,%r19,.L956
	zdep %r25,30,31,%r25
	b,n .L954
.L955:
	sub %r0,%r26,%r26
	b .L933
	ldi 1,%r21
.L949:
	sub %r28,%r25,%r20
.L957:
	comclr,>> %r25,%r28,%r0
	copy %r20,%r28
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
.L954:
	comib,<> 0,%r19,.L957
	sub %r28,%r25,%r20
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
	comb,<<= %r28,%r25,.L968
	ldi 1,%r19
	extrs %r25,31,16,%r20
.L976:
	comib,>,n 0,%r20,.L960
	zdep %r25,30,31,%r25
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	comb,>>= %r25,%r28,.L960
	extru %r19,31,16,%r19
	comib,<>,n 0,%r19,.L976
	extrs %r25,31,16,%r20
.L960:
	comib,= 0,%r19,.L963
	ldi 0,%r20
.L968:
	b .L962
	ldi 0,%r20
.L965:
	extru %r19,30,31,%r19
.L977:
	comib,= 0,%r19,.L963
	extru %r25,30,31,%r25
.L962:
	comb,>>,n %r25,%r28,.L977
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r19,%r20,%r20
	b .L965
	extru %r20,31,16,%r20
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
	comb,<<= %r26,%r25,.L988
	ldi 1,%r19
.L979:
	comib,>,n 0,%r25,.L980
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L980
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L979
	nop
.L980:
	comib,= 0,%r19,.L983
	ldi 0,%r20
.L988:
	b .L982
	ldi 0,%r20
.L985:
	extru %r19,30,31,%r19
.L996:
	comib,= 0,%r19,.L983
	extru %r25,30,31,%r25
.L982:
	comb,>>,n %r25,%r28,.L996
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L985
	or %r20,%r19,%r20
.L983:
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
	bb,>=,n %r24,26,.L998
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
	ldi 0,%r29
.L1000:
	bv,n %r0(%r2)
.L998:
	comib,=,n 0,%r24,.L1001
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	mtsar %r28
	zvdep %r25,32,%r28
	b .L1000
	or %r26,%r28,%r28
.L1001:
	copy %r25,%r28
	b .L1000
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
	bb,>= %r24,26,.L1003
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r25,32,%r29
.L1005:
	bv,n %r0(%r2)
.L1003:
	comib,=,n 0,%r24,.L1006
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L1005
	or %r25,%r29,%r29
.L1006:
	copy %r25,%r28
	b .L1005
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
	bb,< %r19,30,.L1011
	ldi 0,%r21
	subi 2,%r19,%r21
.L1011:
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
	comb,> %r23,%r25,.L1019
	ldi 0,%r28
	comb,< %r23,%r25,.L1019
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1017
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L1013
	ldo 1(%r28),%r28
.L1017:
	ldi 0,%r28
.L1013:
.L1019:
	bv,n %r0(%r2)
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
	comb,> %r23,%r25,.L1026
	ldi 0,%r28
	comb,< %r23,%r25,.L1026
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1024
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L1021
	ldo 1(%r28),%r28
.L1024:
	ldi 0,%r28
.L1021:
.L1026:
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
	bb,>= %r24,26,.L1029
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L1031:
	bv,n %r0(%r2)
.L1029:
	comib,=,n 0,%r24,.L1032
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L1031
	or %r25,%r29,%r29
.L1032:
	copy %r25,%r28
	b .L1031
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
	b .L1043
	fldds 0(%r20),%fr4
.L1049:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L1042
	fmpy,dbl %fr5,%fr5,%fr5
.L1043:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L1049
	extru %r28,0,1,%r19
	b .L1049
	fmpy,dbl %fr4,%fr5,%fr4
.L1042:
	comiclr,<= 0,%r24,%r0
	b,n .L1048
.L1040:
	bv,n %r0(%r2)
.L1048:
	fldds 0(%r20),%fr22
	b .L1040
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
	b .L1053
	fldws 0(%r20),%fr4L
.L1059:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L1052
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L1053:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L1059
	extru %r28,0,1,%r19
	b .L1059
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1052:
	comiclr,<= 0,%r25,%r0
	b,n .L1058
.L1050:
	bv,n %r0(%r2)
.L1058:
	fldws 0(%r20),%fr22L
	b .L1050
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
	comb,>> %r23,%r25,.L1066
	ldi 0,%r28
	comb,<< %r23,%r25,.L1066
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1064
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L1060
	ldo 1(%r28),%r28
.L1064:
	ldi 0,%r28
.L1060:
.L1066:
	bv,n %r0(%r2)
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
	comb,>> %r23,%r25,.L1073
	ldi 0,%r28
	comb,<< %r23,%r25,.L1073
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1071
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L1068
	ldo 1(%r28),%r28
.L1071:
	ldi 0,%r28
.L1068:
.L1073:
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
