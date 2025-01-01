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
	comib,>>= 4,%r19,.L329
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L331
	ldi 43,%r19
.L329:
	ldbs,mb 1(%r26),%r28
.L332:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L332
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L332
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L331:
	comb,= %r19,%r28,.L322
	ldi 45,%r19
	comb,<> %r19,%r28,.L318
	ldi 0,%r31
	ldi 1,%r31
.L317:
	ldo 1(%r26),%r26
.L318:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	ldi 0,%r28
	ldi 0,%r29
	comib,<< 9,%r20,.L320
	shd %r28,%r29,30,%r23
.L333:
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
	comib,>>= 9,%r20,.L333
	shd %r28,%r29,30,%r23
.L320:
	comiclr,= 0,%r31,%r0
	b,n .L313
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L313:
	bv,n %r0(%r2)
.L322:
	b .L317
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
	movb,<> %r24,%r3,.L338
	ldw -180(%r30),%r8
	ldi 0,%r5
.L334:
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
.L339:
.L336:
	comib,= 0,%r3,.L334
	ldi 0,%r5
.L338:
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
	movb,<,n %r28,%r28,.L339
	copy %r4,%r3
	comib,>= 0,%r28,.L334
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	b .L336
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
	movb,<> %r24,%r3,.L348
	ldw -184(%r30),%r8
.L345:
	ldi 0,%r5
	copy %r5,%r28
.L356:
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
.L347:
	comib,= 0,%r4,.L345
	copy %r4,%r3
.L348:
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
	movb,=,n %r28,%r28,.L356
	copy %r5,%r28
	comib,>= 0,%r28,.L347
	nop
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
	ldo -1(%r3),%r3
	b .L347
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
	comb,= %r19,%r25,.L365
	copy %r26,%r28
.L379:
	comib,=,n 0,%r19,.L365
	ldws,mb 4(%r28),%r19
	comb,<> %r25,%r19,.L379
	nop
.L365:
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
	b,n .L381
	comib,= 0,%r21,.L381
	ldi 4,%r28
	ldwx %r26(%r28),%r20
.L396:
	ldwx %r25(%r28),%r21
	comiclr,= 0,%r20,%r19
	ldi 1,%r19
	comclr,<> %r21,%r20,%r22
	ldi 1,%r22
	and %r19,%r22,%r19
	comib,= 0,%r19,.L381
	ldo 4(%r28),%r28
	comib,<>,n 0,%r21,.L396
	ldwx %r26(%r28),%r20
.L381:
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
.L398:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L398
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
	comib,= 0,%r28,.L403
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L405:
	comib,<>,n 0,%r19,.L405
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
.L406:
	bv %r0(%r2)
	extrs %r28,29,30,%r28
.L403:
	b .L406
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
	movb,= %r24,%r24,.L424
	ldi 0,%r28
.L408:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r20
	comiclr,= 0,%r28,%r19
	ldi 1,%r19
	comclr,<> %r20,%r28,%r28
	ldi 1,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L409
	comib,=,n 0,%r20,.L409
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L408
	ldo 4(%r25),%r25
	b .L407
	ldi 0,%r28
.L409:
	comib,= 0,%r24,.L424
	ldi 0,%r28
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L407:
.L424:
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
	movb,= %r24,%r24,.L435
	ldi 0,%r28
.L426:
	ldw 0(%r26),%r28
	comb,=,n %r25,%r28,.L434
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L426
	ldo 4(%r26),%r26
.L431:
	b .L425
	ldi 0,%r28
.L434:
	comib,= 0,%r24,.L431
	copy %r26,%r28
.L425:
.L435:
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
	movb,= %r24,%r24,.L450
	ldi 0,%r28
.L437:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<>,n %r28,%r19,.L449
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L437
	ldo 4(%r25),%r25
.L441:
	b .L436
	ldi 0,%r28
.L449:
	comib,= 0,%r24,.L441
	copy %r19,%r20
	copy %r28,%r19
	comclr,>= %r28,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L436:
.L450:
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
	movb,= %r24,%r24,.L452
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L452:
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
	comb,= %r25,%r26,.L457
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L458
	ldi 0,%r19
	comclr,<> %r19,%r24,%r0
	b,n .L457
.L459:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L459
	stw %r21,0(%r20)
	b,n .L457
.L458:
	comib,=,n 0,%r24,.L457
	ldo -1(%r24),%r24
.L460:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L460
	stw %r20,0(%r19)
.L457:
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
	movb,= %r24,%r24,.L469
	copy %r26,%r28
	ldi 0,%r19
.L470:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L470
	stw %r25,0(%r20)
.L469:
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
	b,n .L476
	comib,=,n 0,%r24,.L475
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L478:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L478
	stb %r19,0(%r28)
.L475:
	bv,n %r0(%r2)
.L476:
	comb,= %r25,%r26,.L475
	nop
	comib,= 0,%r24,.L475
	nop
	ldi 0,%r28
.L479:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L479
	stb %r20,0(%r19)
	b,n .L475
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
	bb,>= %r24,26,.L489
	uaddcm %r0,%r24,%r28
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
.L490:
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L491
	extru %r24,31,6,%r19
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
.L492:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L489:
	extru %r26,30,31,%r19
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	b .L490
	zvdep %r26,32,%r29
.L491:
	zdep %r25,30,31,%r20
	uaddcm %r0,%r19,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r20,32,%r20
	mtsar %r19
	vshd %r0,%r26,%r26
	or %r20,%r26,%r26
	b .L492
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
	bb,>= %r24,26,.L494
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L495:
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L496
	extru %r24,31,6,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r26,32,%r25
	ldi 0,%r26
.L497:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L494:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	b .L495
	vshd %r0,%r25,%r28
.L496:
	extru %r26,30,31,%r20
	uaddcm %r0,%r19,%r21
	mtsar %r21
	vshd %r0,%r20,%r20
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r25,32,%r25
	or %r20,%r25,%r25
	b .L497
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
.L514:
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r19
	comib,<> 0,%r19,.L509
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L514
	mtsar %r28
	ldi 0,%r28
.L509:
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
	movb,=,n %r26,%r26,.L518
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L515
	ldi 1,%r28
.L517:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L517
	ldo 1(%r28),%r28
.L515:
	bv,n %r0(%r2)
.L518:
	b .L515
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
	b .L521
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L521
	ldi 0,%r28
.L521:
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
	b .L525
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L525
	ldi 0,%r28
.L525:
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
	b .L529
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L529
	ldi 0,%r28
.L529:
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
	b,n .L535
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L535
	comib,> 0,%r25,.L546
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L538
	fldws 0(%r28),%fr22L
.L546:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L538
	fldws 0(%r28),%fr22L
.L547:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L535
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L538:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L547
	extru %r25,0,1,%r28
	b .L547
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L535:
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
	b .L549
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L549
	comib,> 0,%r24,.L560
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L552
	fldds 0(%r28),%fr22
.L560:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L552
	fldds 0(%r28),%fr22
.L561:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L549
	fmpy,dbl %fr22,%fr22,%fr22
.L552:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L561
	extru %r24,0,1,%r28
	b .L561
	fmpy,dbl %fr4,%fr22,%fr4
.L549:
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
	b .L563
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L563
	comib,> 0,%r24,.L574
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L566
	fldds 0(%r28),%fr22
.L574:
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L566
	fldds 0(%r28),%fr22
.L575:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L563
	fmpy,dbl %fr22,%fr22,%fr22
.L566:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L575
	extru %r24,0,1,%r28
	b .L575
	fmpy,dbl %fr4,%fr22,%fr4
.L563:
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
	movb,= %r24,%r24,.L577
	copy %r26,%r28
	ldi 0,%r19
.L578:
	ldbx %r28(%r19),%r20
	ldbx %r25(%r19),%r21
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L578
	stb %r20,0(%r21)
.L577:
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
	comib,= 0,%r19,.L590
	copy %r26,%r28
	copy %r26,%r19
	ldbs,mb 1(%r19),%r20
.L598:
	extrs %r20,31,8,%r20
	comib,<>,n 0,%r20,.L598
	ldbs,mb 1(%r19),%r20
	b,n .L597
.L590:
	b .L597
	copy %r26,%r19
.L588:
	ldo 1(%r25),%r25
	ldo 1(%r19),%r19
	ldo -1(%r24),%r24
.L597:
	comib,=,n 0,%r24,.L592
	ldb 0(%r25),%r20
	extrs %r20,31,8,%r21
	comib,<> 0,%r21,.L588
	stb %r20,0(%r19)
	comiclr,= 0,%r24,%r0
	b,n .L589
.L592:
	stb %r24,0(%r19)
.L589:
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
	movb,= %r25,%r25,.L599
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L606:
	comiclr,= 0,%r19,%r0
	b,n .L602
.L599:
	bv,n %r0(%r2)
.L602:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L606
	ldbx %r26(%r28),%r19
	b,n .L599
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
	comib,= 0,%r21,.L612
	copy %r26,%r28
	copy %r25,%r20
.L611:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L614
	comb,<> %r21,%r19,.L611
	ldo 1(%r20),%r20
.L609:
	bv,n %r0(%r2)
.L614:
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L611
	copy %r25,%r20
.L612:
	b .L609
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
.L617:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L617
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
	comib,= 0,%r29,.L621
	copy %r25,%r20
	ldbs,mb 1(%r20),%r19
.L646:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L646
	ldbs,mb 1(%r20),%r19
.L621:
	comb,= %r25,%r20,.L623
	sub %r20,%r25,%r19
	ldo -1(%r25),%r23
	b .L630
	addl %r23,%r19,%r23
.L629:
	comib,=,n 0,%r28,.L623
	ldb 0(%r28),%r19
	copy %r25,%r21
	comib,= 0,%r19,.L626
	copy %r28,%r31
.L625:
	ldb 0(%r21),%r20
	comiclr,= 0,%r20,%r22
	ldi 1,%r22
	comclr,<> %r19,%r20,%r20
	ldi 1,%r20
	and %r22,%r20,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L626
	comb,=,n %r23,%r21,.L626
	ldbs,mb 1(%r31),%r19
	extru %r19,31,8,%r19
	comib,<> 0,%r19,.L625
	ldo 1(%r21),%r21
.L626:
	ldb 0(%r21),%r20
	comb,=,n %r19,%r20,.L623
	ldo 1(%r28),%r28
.L630:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comb,= %r29,%r19,.L629
	nop
	comib,<> 0,%r19,.L630
	ldo 1(%r28),%r28
	ldi 0,%r28
.L623:
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
	b .L654
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr4,%fr0
.L656:
	ftest
	b,n .L655
	b,n .L651
.L655:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L650
.L651:
	bv,n %r0(%r2)
.L654:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L650
	b .L656
	fcmp,dbl,!> %fr4,%fr0
.L650:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L651
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
	movb,= %r23,%r23,.L680
	copy %r26,%r28
	comb,>>,n %r23,%r25,.L667
	sub %r25,%r23,%r29
	addl %r26,%r29,%r29
	comb,<<,n %r29,%r26,.L667
	ldb 0(%r24),%r25
	b .L664
	extrs %r25,31,8,%r25
.L679:
	comiclr,<> 0,%r19,%r0
	b,n .L657
	comclr,<> %r22,%r31,%r0
	b,n .L657
.L659:
	comb,<< %r29,%r26,.L680
	ldi 0,%r28
.L664:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	copy %r26,%r28
	comb,<> %r25,%r19,.L659
	ldo 1(%r26),%r26
	ldo -1(%r23),%r19
	comib,= 0,%r19,.L657
	ldo 1(%r24),%r20
	copy %r26,%r21
.L660:
	ldb 0(%r21),%r31
	ldb 0(%r20),%r22
	comb,<> %r22,%r31,.L679
	ldo 1(%r21),%r21
	ldo -1(%r19),%r19
	comib,<> 0,%r19,.L660
	ldo 1(%r20),%r20
.L657:
.L680:
	bv,n %r0(%r2)
.L667:
	b .L657
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
	movb,= %r24,%r3,.L682
	copy %r26,%r4
	bl memmove,%r2
	nop
.L682:
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
	b .L699
	fcpy,dbl %fr5,%fr4
	ldi 0,%r21
.L687:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L700
	ldi 0,%r28
	b .L714
	fcmp,dbl,= %fr4,%fr0
.L700:
	ldil LR'.LC25,%r20
	ldo RR'.LC25(%r20),%r20
	fldds 0(%r20),%fr23
	fldds 0(%r19),%fr22
.L691:
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L691
	ldo 1(%r28),%r28
.L692:
.L715:
	comib,= 0,%r21,.L696
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
.L696:
	bv,n %r0(%r2)
.L699:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L687
	ldi 1,%r21
.L714:
	ftest
	b .L704
	ldil LR'.LC25,%r20
	b .L692
	ldi 0,%r28
.L704:
	ldo RR'.LC25(%r20),%r20
	fldds 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L705
	ldi 0,%r28
	b,n .L715
.L705:
	ldi 0,%r28
.L695:
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L695
	ldo -1(%r28),%r28
	b,n .L692
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
	comib,= 0,%r26,.L716
	copy %r25,%r20
	ldi 0,%r28
.L722:
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
	comb,<> %r28,%r31,.L722
	zdep %r24,30,31,%r24
.L716:
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
	comb,<<= %r26,%r25,.L733
	ldi 1,%r19
.L724:
	comib,>,n 0,%r25,.L725
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L725
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L724
	nop
.L725:
	comib,= 0,%r19,.L728
	ldi 0,%r20
.L733:
	b .L727
	ldi 0,%r20
.L730:
	extru %r19,30,31,%r19
.L741:
	comib,= 0,%r19,.L728
	extru %r25,30,31,%r25
.L727:
	comb,>>,n %r25,%r28,.L741
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L730
	or %r20,%r19,%r20
.L728:
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
	comb,= %r28,%r19,.L744
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
.L742:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L744:
	b .L742
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
	comb,= %r20,%r28,.L751
	xor %r26,%r20,%r26
.L749:
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -148(%r30),%r2
.L752:
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L751:
	comb,<> %r28,%r19,.L749
	ldi 63,%r28
	b .L752
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
	movb,= %r26,%r26,.L753
	ldi 0,%r28
.L755:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L755
	zdep %r25,30,31,%r25
.L753:
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
	comb,>> %r25,%r26,.L759
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>>= %r19,%r26,%r0
	b,n .L759
	comib,= 0,%r24,.L758
	ldo -1(%r24),%r28
.L760:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L760
	stb %r20,0(%r19)
	b .L772
	ldw -60(%r30),%r3
.L759:
	comib,=,n 0,%r21,.L762
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L763:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L763
	ldo 8(%r20),%r20
.L762:
	comb,>>= %r28,%r24,.L772
	ldw -60(%r30),%r3
.L764:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L764
	stb %r20,0(%r19)
.L758:
	ldw -60(%r30),%r3
.L772:
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
	comb,>> %r25,%r26,.L774
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,>>= %r28,%r26,%r0
	b,n .L774
	comib,= 0,%r24,.L773
	ldo -1(%r24),%r28
.L775:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L775
	stb %r20,0(%r19)
	b,n .L773
.L774:
	comib,= 0,%r21,.L777
	ldi 0,%r28
.L778:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L778
	sth %r20,0(%r19)
.L777:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L773
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r28
	addl %r26,%r24,%r26
	stb %r28,0(%r26)
.L773:
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
	comb,>> %r25,%r26,.L789
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,>>= %r19,%r26,%r0
	b,n .L789
	comib,= 0,%r24,.L788
	ldo -1(%r24),%r28
.L790:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L790
	stb %r20,0(%r19)
	b,n .L788
.L789:
	comib,=,n 0,%r22,.L792
	ldi 0,%r19
.L793:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r26,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r22,.L793
	stw %r21,0(%r20)
.L792:
	comclr,<< %r28,%r24,%r0
	b,n .L788
.L794:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L794
	stb %r20,0(%r19)
.L788:
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
	comib,>= 0,%r28,.L807
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
.L806:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L807:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b .L806
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
	comib,>= 0,%r28,.L810
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
.L809:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L810:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b .L809
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
.L816:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L812
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L816
	ldo 16(%r28),%r19
.L812:
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
.L821:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L817
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L821
	subi 31,%r28,%r19
.L817:
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
	b .L826
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L822:
	bv,n %r0(%r2)
.L826:
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	b .L822
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
.L829:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L829
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
.L832:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L832
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
	movb,= %r26,%r26,.L834
	ldi 0,%r28
.L836:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L836
	zdep %r25,30,31,%r25
.L834:
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
	movb,<> %r26,%r26,.L845
	ldi 0,%r28
	b,n .L839
.L841:
	and %r19,%r26,%r19
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L845:
	comib,<> 0,%r25,.L841
	extrs %r25,31+1-1,1,%r19
.L839:
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
	comb,>>= %r25,%r26,.L856
	ldi 1,%r19
.L847:
	comib,>,n 0,%r25,.L848
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L848
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L847
	nop
.L848:
	comib,= 0,%r19,.L851
	ldi 0,%r20
.L856:
	b .L850
	ldi 0,%r20
.L853:
	extru %r19,30,31,%r19
.L864:
	comib,= 0,%r19,.L851
	extru %r25,30,31,%r25
.L850:
	comb,>>,n %r25,%r28,.L864
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L853
	or %r20,%r19,%r20
.L851:
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
	b,n .L868
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L865
	ldi 1,%r28
	b .L865
	ldi 0,%r28
.L868:
	ldi -1,%r28
.L865:
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
	b,n .L872
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L869
	ldi 1,%r28
	b .L869
	ldi 0,%r28
.L872:
	ldi -1,%r28
.L869:
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
	movb,< %r25,%r25,.L885
	ldi 0,%r31
.L876:
	comib,= 0,%r25,.L881
	ldi 1,%r19
	ldi 0,%r28
	ldi 31,%r22
.L878:
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
	comib,<> 0,%r20,.L878
	extru %r19,31,8,%r19
.L877:
	sub %r0,%r28,%r19
	comiclr,= 0,%r31,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L885:
	sub %r0,%r25,%r25
	b .L876
	ldi 1,%r31
.L881:
	b .L877
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
	movb,< %r26,%r26,.L907
	ldi 0,%r21
.L887:
	comib,> 0,%r25,.L908
	ldi 1,%r28
.L888:
	copy %r26,%r20
	comb,>>= %r25,%r26,.L906
	ldi 1,%r19
	zdep %r25,30,31,%r25
.L910:
	comb,>>= %r25,%r26,.L889
	zdep %r19,30,31,%r19
	comib,<>,n 0,%r19,.L910
	zdep %r25,30,31,%r25
.L889:
	comiclr,<> 0,%r19,%r0
	b,n .L898
.L906:
	b .L894
	ldi 0,%r28
.L907:
	sub %r0,%r26,%r26
	b .L887
	ldi 1,%r21
.L908:
	sub %r0,%r25,%r25
	b .L888
	xor %r21,%r28,%r21
.L909:
	or %r28,%r19,%r28
	extru %r19,30,31,%r19
.L911:
	comib,= 0,%r19,.L892
	extru %r25,30,31,%r25
.L894:
	comb,>>,n %r25,%r20,.L911
	extru %r19,30,31,%r19
	b .L909
	sub %r20,%r25,%r20
.L898:
	ldi 0,%r28
.L892:
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
	movb,< %r26,%r26,.L935
	ldi 0,%r21
.L913:
	copy %r26,%r28
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	comb,>>= %r25,%r26,.L929
	ldi 1,%r19
	zdep %r25,30,31,%r25
.L936:
	comb,>>= %r25,%r26,.L934
	zdep %r19,30,31,%r19
	comib,<>,n 0,%r19,.L936
	zdep %r25,30,31,%r25
	b,n .L934
.L935:
	sub %r0,%r26,%r26
	b .L913
	ldi 1,%r21
.L929:
	sub %r28,%r25,%r20
.L937:
	comclr,>> %r25,%r28,%r0
	copy %r20,%r28
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
.L934:
	comib,<> 0,%r19,.L937
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
	comb,<<= %r28,%r25,.L948
	ldi 1,%r19
	extrs %r25,31,16,%r20
.L956:
	comib,>,n 0,%r20,.L940
	zdep %r25,30,31,%r25
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	comb,>>= %r25,%r28,.L940
	extru %r19,31,16,%r19
	comib,<>,n 0,%r19,.L956
	extrs %r25,31,16,%r20
.L940:
	comib,= 0,%r19,.L943
	ldi 0,%r20
.L948:
	b .L942
	ldi 0,%r20
.L945:
	extru %r19,30,31,%r19
.L957:
	comib,= 0,%r19,.L943
	extru %r25,30,31,%r25
.L942:
	comb,>>,n %r25,%r28,.L957
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r19,%r20,%r20
	b .L945
	extru %r20,31,16,%r20
.L943:
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
	comb,>>= %r25,%r26,.L968
	ldi 1,%r19
.L959:
	comib,>,n 0,%r25,.L960
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L960
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L959
	nop
.L960:
	comib,= 0,%r19,.L963
	ldi 0,%r20
.L968:
	b .L962
	ldi 0,%r20
.L965:
	extru %r19,30,31,%r19
.L976:
	comib,= 0,%r19,.L963
	extru %r25,30,31,%r25
.L962:
	comb,>>,n %r25,%r28,.L976
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L965
	or %r20,%r19,%r20
.L963:
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
	bb,>=,n %r24,26,.L978
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
	ldi 0,%r29
.L980:
	bv,n %r0(%r2)
.L978:
	comib,=,n 0,%r24,.L981
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	mtsar %r28
	zvdep %r25,32,%r28
	b .L980
	or %r26,%r28,%r28
.L981:
	copy %r25,%r28
	b .L980
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
	bb,>= %r24,26,.L983
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r25,32,%r29
.L985:
	bv,n %r0(%r2)
.L983:
	comib,=,n 0,%r24,.L986
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L985
	or %r25,%r29,%r29
.L986:
	copy %r25,%r28
	b .L985
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
	bb,< %r19,30,.L991
	ldi 0,%r21
	subi 2,%r19,%r21
.L991:
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
	comb,> %r23,%r25,.L999
	ldi 0,%r28
	comb,< %r23,%r25,.L999
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L997
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L993
	ldo 1(%r28),%r28
.L997:
	ldi 0,%r28
.L993:
.L999:
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
	comb,> %r23,%r25,.L1006
	ldi 0,%r28
	comb,< %r23,%r25,.L1006
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1004
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L1001
	ldo 1(%r28),%r28
.L1004:
	ldi 0,%r28
.L1001:
.L1006:
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
	bb,>= %r24,26,.L1009
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L1011:
	bv,n %r0(%r2)
.L1009:
	comib,=,n 0,%r24,.L1012
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L1011
	or %r25,%r29,%r29
.L1012:
	copy %r25,%r28
	b .L1011
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
	b .L1023
	fldds 0(%r20),%fr4
.L1029:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L1022
	fmpy,dbl %fr5,%fr5,%fr5
.L1023:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L1029
	extru %r28,0,1,%r19
	b .L1029
	fmpy,dbl %fr4,%fr5,%fr4
.L1022:
	comiclr,<= 0,%r24,%r0
	b,n .L1028
.L1020:
	bv,n %r0(%r2)
.L1028:
	fldds 0(%r20),%fr22
	b .L1020
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
	b .L1033
	fldws 0(%r20),%fr4L
.L1039:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L1032
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L1033:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L1039
	extru %r28,0,1,%r19
	b .L1039
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1032:
	comiclr,<= 0,%r25,%r0
	b,n .L1038
.L1030:
	bv,n %r0(%r2)
.L1038:
	fldws 0(%r20),%fr22L
	b .L1030
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
	comb,>> %r23,%r25,.L1046
	ldi 0,%r28
	comb,<< %r23,%r25,.L1046
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1044
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L1040
	ldo 1(%r28),%r28
.L1044:
	ldi 0,%r28
.L1040:
.L1046:
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
	comb,>> %r23,%r25,.L1053
	ldi 0,%r28
	comb,<< %r23,%r25,.L1053
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L1051
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L1048
	ldo 1(%r28),%r28
.L1051:
	ldi 0,%r28
.L1048:
.L1053:
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
