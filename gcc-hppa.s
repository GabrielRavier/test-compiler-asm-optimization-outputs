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
	copy %r23,%r6
	ldw 0(%r24),%r5
	comib,= 0,%r5,.L265
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
	comb,<> %r4,%r5,.L267
	addl %r3,%r6,%r3
.L265:
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
	comib,= 0,%r7,.L276
	ldw -180(%r30),%r9
	copy %r25,%r3
	ldi 0,%r4
.L278:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,= 0,%r28,.L275
	copy %r3,%r8
	ldo 1(%r4),%r4
	comb,<> %r4,%r7,.L278
	addl %r3,%r6,%r3
.L276:
	ldi 0,%r8
.L275:
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
	.CALLINFO FRAME=64,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r4,64(%r30)
	stw %r3,-60(%r30)
	copy %r26,%r3
.L289:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r28,.L289
	ldo 1(%r3),%r3
	ldi 43,%r19
	comb,= %r19,%r4,.L295
	ldi 45,%r19
	comb,<> %r19,%r4,.L291
	ldi 0,%r21
	ldi 1,%r21
.L290:
	ldo 1(%r3),%r3
.L291:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,<<,n 9,%r20,.L293
	sh2addl %r28,%r28,%r28 
.L299:
	zdep %r28,30,31,%r28
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	sub %r28,%r19,%r28
	ldbs,mb 1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L299
	sh2addl %r28,%r28,%r28 
.L293:
	sub %r0,%r28,%r19
	comiclr,<> 0,%r21,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L295:
	b .L290
	ldi 0,%r21
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
.L302:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r28,.L302
	ldo 1(%r3),%r3
	ldi 43,%r19
	comb,= %r19,%r4,.L308
	ldi 45,%r19
	comb,<> %r19,%r4,.L304
	ldi 0,%r21
	ldi 1,%r21
.L303:
	ldo 1(%r3),%r3
.L304:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,<<,n 9,%r20,.L306
	sh2addl %r28,%r28,%r28 
.L312:
	zdep %r28,30,31,%r28
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	sub %r28,%r19,%r28
	ldbs,mb 1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L312
	sh2addl %r28,%r28,%r28 
.L306:
	sub %r0,%r28,%r19
	comiclr,<> 0,%r21,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L308:
	b .L303
	ldi 0,%r21
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
.L315:
	ldb 0(%r3),%r4
	extrs %r4,31,8,%r4
	bl isspace,%r2
	copy %r4,%r26
	movb,<>,n %r28,%r20,.L315
	ldo 1(%r3),%r3
	ldi 43,%r28
	comb,= %r28,%r4,.L316
	ldi 45,%r28
	comb,<>,n %r28,%r4,.L317
	ldi 1,%r20
.L316:
	ldo 1(%r3),%r3
.L317:
	ldb 0(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r21
	ldi 0,%r28
	ldi 0,%r29
	comib,<< 9,%r21,.L319
	shd %r28,%r29,30,%r21
.L324:
	zdep %r29,29,30,%r22
	add %r29,%r22,%r29
	addc %r28,%r21,%r28
	shd %r28,%r29,31,%r28
	zdep %r29,30,31,%r29
	ldo -48(%r19),%r19
	extrs %r19,31,8,%r19
	copy %r19,%r6
	extrs %r19,0,1,%r5
	sub %r29,%r6,%r29
	subb %r28,%r5,%r28
	ldbs,mb 1(%r3),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r21
	comib,>>= 9,%r21,.L324
	shd %r28,%r29,30,%r21
.L319:
	comib,<> 0,%r20,.L325
	ldw -84(%r30),%r2
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L325:
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
	movb,<> %r24,%r3,.L330
	ldw -180(%r30),%r8
	ldi 0,%r5
.L326:
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
.L331:
.L328:
	comib,= 0,%r3,.L326
	ldi 0,%r5
.L330:
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
	movb,<,n %r28,%r28,.L331
	copy %r4,%r3
	comib,>= 0,%r28,.L326
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	b .L328
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
	movb,<> %r24,%r3,.L340
	ldw -184(%r30),%r8
.L337:
	ldi 0,%r5
	copy %r5,%r28
.L348:
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
.L339:
	comib,= 0,%r4,.L337
	copy %r4,%r3
.L340:
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
	movb,=,n %r28,%r28,.L348
	copy %r5,%r28
	comib,>= 0,%r28,.L339
	nop
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
	ldo -1(%r3),%r3
	b .L339
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
	comb,= %r19,%r25,.L357
	copy %r26,%r28
.L371:
	comib,=,n 0,%r19,.L357
	ldws,mb 4(%r28),%r19
	comb,<> %r25,%r19,.L371
	nop
.L357:
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
	b,n .L373
	comib,= 0,%r21,.L373
	ldi 4,%r28
	ldwx %r26(%r28),%r20
.L388:
	ldwx %r25(%r28),%r21
	comiclr,= 0,%r20,%r19
	ldi 1,%r19
	comclr,<> %r21,%r20,%r22
	ldi 1,%r22
	and %r19,%r22,%r19
	comib,= 0,%r19,.L373
	ldo 4(%r28),%r28
	comib,<>,n 0,%r21,.L388
	ldwx %r26(%r28),%r20
.L373:
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
.L390:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L390
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
	comib,= 0,%r28,.L395
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L397:
	comib,<>,n 0,%r19,.L397
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
.L398:
	bv %r0(%r2)
	extrs %r28,29,30,%r28
.L395:
	b .L398
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
	movb,= %r24,%r24,.L416
	ldi 0,%r28
.L400:
	ldw 0(%r26),%r28
	ldw 0(%r25),%r20
	comiclr,= 0,%r28,%r19
	ldi 1,%r19
	comclr,<> %r20,%r28,%r28
	ldi 1,%r28
	and %r19,%r28,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L401
	comib,=,n 0,%r20,.L401
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L400
	ldo 4(%r25),%r25
	b .L399
	ldi 0,%r28
.L401:
	comib,= 0,%r24,.L416
	ldi 0,%r28
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L399:
.L416:
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
	movb,= %r24,%r24,.L427
	ldi 0,%r28
.L418:
	ldw 0(%r26),%r28
	comb,=,n %r25,%r28,.L426
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L418
	ldo 4(%r26),%r26
.L423:
	b .L417
	ldi 0,%r28
.L426:
	comib,= 0,%r24,.L423
	copy %r26,%r28
.L417:
.L427:
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
	movb,= %r24,%r24,.L442
	ldi 0,%r28
.L429:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<>,n %r28,%r19,.L441
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	comib,<> 0,%r24,.L429
	ldo 4(%r25),%r25
.L433:
	b .L428
	ldi 0,%r28
.L441:
	comib,= 0,%r24,.L433
	copy %r19,%r20
	copy %r28,%r19
	comclr,>= %r28,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L428:
.L442:
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
	movb,= %r24,%r24,.L444
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L444:
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
	comb,= %r25,%r26,.L449
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L450
	ldi 0,%r19
	comclr,<> %r19,%r24,%r0
	b,n .L449
.L451:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L451
	stw %r21,0(%r20)
	b,n .L449
.L450:
	comib,=,n 0,%r24,.L449
	ldo -1(%r24),%r24
.L452:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L452
	stw %r20,0(%r19)
.L449:
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
	movb,= %r24,%r24,.L461
	copy %r26,%r28
	ldi 0,%r19
.L462:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L462
	stw %r25,0(%r20)
.L461:
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
	b,n .L468
	comib,=,n 0,%r24,.L467
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L470:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L470
	stb %r19,0(%r28)
.L467:
	bv,n %r0(%r2)
.L468:
	comb,= %r25,%r26,.L467
	nop
	comib,= 0,%r24,.L467
	nop
	ldi 0,%r28
.L471:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L471
	stb %r20,0(%r19)
	b,n .L467
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
	bb,>= %r24,26,.L481
	uaddcm %r0,%r24,%r28
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	ldi 0,%r29
.L482:
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L483
	extru %r24,31,6,%r19
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
.L484:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L481:
	extru %r26,30,31,%r19
	mtsar %r28
	vshd %r0,%r19,%r19
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r25,32,%r28
	or %r19,%r28,%r28
	b .L482
	zvdep %r26,32,%r29
.L483:
	zdep %r25,30,31,%r20
	uaddcm %r0,%r19,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r20,32,%r20
	mtsar %r19
	vshd %r0,%r26,%r26
	or %r20,%r26,%r26
	b .L484
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
	bb,>= %r24,26,.L486
	zdep %r25,30,31,%r28
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L487:
	sub %r0,%r24,%r24
	bb,>= %r24,26,.L488
	extru %r24,31,6,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r26,32,%r25
	ldi 0,%r26
.L489:
	or %r25,%r28,%r28
	bv %r0(%r2)
	or %r26,%r29,%r29
.L486:
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r28,32,%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	or %r28,%r29,%r29
	b .L487
	vshd %r0,%r25,%r28
.L488:
	extru %r26,30,31,%r20
	uaddcm %r0,%r19,%r21
	mtsar %r21
	vshd %r0,%r20,%r20
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r25,32,%r25
	or %r20,%r25,%r25
	b .L489
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
.L506:
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r19
	comib,<> 0,%r19,.L501
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L506
	mtsar %r28
	ldi 0,%r28
.L501:
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
	movb,=,n %r26,%r26,.L510
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L507
	ldi 1,%r28
.L509:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L509
	ldo 1(%r28),%r28
.L507:
	bv,n %r0(%r2)
.L510:
	b .L507
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
	b .L513
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L513
	ldi 0,%r28
.L513:
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
	b .L517
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L517
	ldi 0,%r28
.L517:
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
	b .L521
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L521
	ldi 0,%r28
.L521:
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
	b,n .L527
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L527
	comib,> 0,%r25,.L538
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L530
	fldws 0(%r28),%fr22L
.L538:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L530
	fldws 0(%r28),%fr22L
.L539:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L527
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L530:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L539
	extru %r25,0,1,%r28
	b .L539
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L527:
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
	b .L541
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L541
	comib,> 0,%r24,.L552
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L544
	fldds 0(%r28),%fr22
.L552:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L544
	fldds 0(%r28),%fr22
.L553:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L541
	fmpy,dbl %fr22,%fr22,%fr22
.L544:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L553
	extru %r24,0,1,%r28
	b .L553
	fmpy,dbl %fr4,%fr22,%fr4
.L541:
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
	b .L555
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L555
	comib,> 0,%r24,.L566
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L558
	fldds 0(%r28),%fr22
.L566:
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	b .L558
	fldds 0(%r28),%fr22
.L567:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L555
	fmpy,dbl %fr22,%fr22,%fr22
.L558:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L567
	extru %r24,0,1,%r28
	b .L567
	fmpy,dbl %fr4,%fr22,%fr4
.L555:
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
	movb,= %r24,%r24,.L569
	copy %r26,%r28
	ldi 0,%r19
.L570:
	ldbx %r28(%r19),%r20
	ldbx %r25(%r19),%r21
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L570
	stb %r20,0(%r21)
.L569:
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
	comib,= 0,%r3,.L581
	addl %r5,%r28,%r28
.L576:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r20
	comib,= 0,%r20,.L585
	stb %r19,0(%r28)
	ldo 1(%r4),%r4
	ldo -1(%r3),%r3
	comib,<> 0,%r3,.L576
	ldo 1(%r28),%r28
	b .L579
	stb %r3,0(%r28)
.L585:
	comiclr,= 0,%r3,%r0
	b,n .L579
.L581:
	stb %r3,0(%r28)
.L579:
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
	movb,= %r25,%r25,.L586
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L593:
	comiclr,= 0,%r19,%r0
	b,n .L589
.L586:
	bv,n %r0(%r2)
.L589:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L593
	ldbx %r26(%r28),%r19
	b,n .L586
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
	comib,= 0,%r21,.L599
	copy %r26,%r28
	copy %r25,%r20
.L598:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L601
	comb,<> %r21,%r19,.L598
	ldo 1(%r20),%r20
.L596:
	bv,n %r0(%r2)
.L601:
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L598
	copy %r25,%r20
.L599:
	b .L596
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
.L604:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r25,%r19,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L604
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
	movb,=,n %r28,%r5,.L607
	ldb 0(%r4),%r6
	extrs %r6,31,8,%r6
	copy %r6,%r25
.L615:
	bl strchr,%r2
	copy %r3,%r26
	movb,= %r28,%r3,.L607
	copy %r5,%r24
	copy %r4,%r25
	bl strncmp,%r2
	copy %r3,%r26
	comib,=,n 0,%r28,.L607
	ldo 1(%r3),%r3
	b .L615
	copy %r6,%r25
.L607:
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
	b .L623
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr4,%fr0
.L625:
	ftest
	b,n .L624
	b,n .L620
.L624:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L619
.L620:
	bv,n %r0(%r2)
.L623:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L619
	b .L625
	fcmp,dbl,!> %fr4,%fr0
.L619:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b,n .L620
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 4
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=8
	.ENTRY
	stw %r2,-20(%r30)
	stwm %r8,128(%r30)
	stw %r7,-124(%r30)
	stw %r6,-120(%r30)
	stw %r5,-116(%r30)
	stw %r4,-112(%r30)
	stw %r3,-108(%r30)
	movb,= %r23,%r23,.L630
	copy %r26,%r3
	comb,>> %r23,%r25,.L632
	sub %r25,%r23,%r4
	addl %r26,%r4,%r4
	comb,<<,n %r4,%r26,.L632
	ldb 0(%r24),%r6
	extrs %r6,31,8,%r6
	ldo -1(%r23),%r7
	b .L629
	ldo 1(%r24),%r8
.L628:
	comb,<< %r4,%r3,.L626
	ldi 0,%r5
.L629:
	ldb 0(%r3),%r28
	extrs %r28,31,8,%r28
	copy %r3,%r5
	comb,<> %r6,%r28,.L628
	ldo 1(%r3),%r3
	copy %r7,%r24
	copy %r8,%r25
	bl memcmp,%r2
	copy %r3,%r26
	comib,<> 0,%r28,.L628
	copy %r5,%r28
	b .L638
	ldw -148(%r30),%r2
.L630:
	b .L626
	copy %r26,%r5
.L632:
	ldi 0,%r5
.L626:
	copy %r5,%r28
	ldw -148(%r30),%r2
.L638:
	ldw -124(%r30),%r7
	ldw -120(%r30),%r6
	ldw -116(%r30),%r5
	ldw -112(%r30),%r4
	ldw -108(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r8
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
	b .L653
	fcpy,dbl %fr5,%fr4
	ldi 0,%r21
.L641:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L654
	ldi 0,%r28
	b .L668
	fcmp,dbl,= %fr4,%fr0
.L654:
	ldil LR'.LC25,%r20
	ldo RR'.LC25(%r20),%r20
	fldds 0(%r20),%fr23
	fldds 0(%r19),%fr22
.L645:
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L645
	ldo 1(%r28),%r28
.L646:
.L669:
	comib,= 0,%r21,.L650
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
.L650:
	bv,n %r0(%r2)
.L653:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	b .L641
	ldi 1,%r21
.L668:
	ftest
	b .L658
	ldil LR'.LC25,%r20
	b .L646
	ldi 0,%r28
.L658:
	ldo RR'.LC25(%r20),%r20
	fldds 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L659
	ldi 0,%r28
	b,n .L669
.L659:
	ldi 0,%r28
.L649:
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L649
	ldo -1(%r28),%r28
	b,n .L646
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
	comib,= 0,%r26,.L670
	copy %r25,%r20
	ldi 0,%r28
.L676:
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
	comb,<> %r28,%r31,.L676
	zdep %r24,30,31,%r24
.L670:
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
	comb,<<= %r26,%r25,.L687
	ldi 1,%r19
.L678:
	comib,>,n 0,%r25,.L679
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L679
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L678
	nop
.L679:
	comib,= 0,%r19,.L682
	ldi 0,%r20
.L687:
	b .L681
	ldi 0,%r20
.L684:
	extru %r19,30,31,%r19
.L695:
	comib,= 0,%r19,.L682
	extru %r25,30,31,%r25
.L681:
	comb,>>,n %r25,%r28,.L695
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L684
	or %r20,%r19,%r20
.L682:
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
	comb,= %r28,%r19,.L698
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldo -1(%r28),%r28
.L696:
	ldw -148(%r30),%r2
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L698:
	b .L696
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
	comb,= %r20,%r28,.L705
	xor %r26,%r20,%r26
.L703:
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -148(%r30),%r2
.L706:
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L705:
	comb,<> %r28,%r19,.L703
	ldi 63,%r28
	b .L706
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
	movb,= %r26,%r26,.L707
	ldi 0,%r28
.L709:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L709
	zdep %r25,30,31,%r25
.L707:
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
	comb,>> %r25,%r26,.L713
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>>= %r19,%r26,%r0
	b,n .L713
	comib,= 0,%r24,.L712
	ldo -1(%r24),%r28
.L714:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L714
	stb %r20,0(%r19)
	b .L726
	ldw -60(%r30),%r3
.L713:
	comib,=,n 0,%r21,.L716
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L717:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L717
	ldo 8(%r20),%r20
.L716:
	comb,>>= %r28,%r24,.L726
	ldw -60(%r30),%r3
.L718:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L718
	stb %r20,0(%r19)
.L712:
	ldw -60(%r30),%r3
.L726:
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
	comb,>> %r25,%r26,.L728
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,>>= %r28,%r26,%r0
	b,n .L728
	comib,= 0,%r24,.L727
	ldo -1(%r24),%r28
.L729:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L729
	stb %r20,0(%r19)
	b,n .L727
.L728:
	comib,= 0,%r21,.L731
	ldi 0,%r28
.L732:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L732
	sth %r20,0(%r19)
.L731:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L727
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r28
	addl %r26,%r24,%r26
	stb %r28,0(%r26)
.L727:
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
	comb,>> %r25,%r26,.L743
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,>>= %r19,%r26,%r0
	b,n .L743
	comib,= 0,%r24,.L742
	ldo -1(%r24),%r28
.L744:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L744
	stb %r20,0(%r19)
	b,n .L742
.L743:
	comib,=,n 0,%r22,.L746
	ldi 0,%r19
.L747:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r26,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r22,.L747
	stw %r21,0(%r20)
.L746:
	comclr,<< %r28,%r24,%r0
	b,n .L742
.L748:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L748
	stb %r20,0(%r19)
.L742:
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
	comib,>= 0,%r28,.L761
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
.L760:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L761:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b .L760
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
	comib,>= 0,%r28,.L764
	extru %r4,31,1,%r20
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
.L763:
	ldw -148(%r30),%r2
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L764:
	shd %r3,%r4,1,%r19
	extru %r3,30,31,%r28
	or %r20,%r19,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b .L763
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
.L770:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L766
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L770
	ldo 16(%r28),%r19
.L766:
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
.L775:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L771
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L775
	subi 31,%r28,%r19
.L771:
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
	b .L780
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L776:
	bv,n %r0(%r2)
.L780:
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	b .L776
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
.L783:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L783
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
.L786:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	ldo 1(%r19),%r19
	comb,<> %r21,%r19,.L786
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
	movb,= %r26,%r26,.L788
	ldi 0,%r28
.L790:
	extrs %r26,31+1-1,1,%r19
	and %r19,%r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	comib,<> 0,%r26,.L790
	zdep %r25,30,31,%r25
.L788:
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
	movb,<> %r26,%r26,.L799
	ldi 0,%r28
	b,n .L793
.L795:
	and %r19,%r26,%r19
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L799:
	comib,<> 0,%r25,.L795
	extrs %r25,31+1-1,1,%r19
.L793:
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
	comb,<<= %r26,%r25,.L810
	ldi 1,%r19
.L801:
	comib,>,n 0,%r25,.L802
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L802
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L801
	nop
.L802:
	comib,= 0,%r19,.L805
	ldi 0,%r20
.L810:
	b .L804
	ldi 0,%r20
.L807:
	extru %r19,30,31,%r19
.L818:
	comib,= 0,%r19,.L805
	extru %r25,30,31,%r25
.L804:
	comb,>>,n %r25,%r28,.L818
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L807
	or %r20,%r19,%r20
.L805:
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
	b,n .L822
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L819
	ldi 1,%r28
	b .L819
	ldi 0,%r28
.L822:
	ldi -1,%r28
.L819:
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
	b,n .L826
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L823
	ldi 1,%r28
	b .L823
	ldi 0,%r28
.L826:
	ldi -1,%r28
.L823:
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
	movb,< %r25,%r25,.L839
	ldi 0,%r31
.L830:
	comib,= 0,%r25,.L835
	ldi 1,%r19
	ldi 0,%r28
	ldi 31,%r22
.L832:
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
	comib,<> 0,%r20,.L832
	extru %r19,31,8,%r19
.L831:
	sub %r0,%r28,%r19
	comiclr,= 0,%r31,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L839:
	sub %r0,%r25,%r25
	b .L830
	ldi 1,%r31
.L835:
	b .L831
	ldi 0,%r28
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
	movb,< %r26,%r26,.L847
	ldi 0,%r3
.L841:
	comib,> 0,%r25,.L848
	ldi 1,%r28
.L842:
	bl __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r19
	comiclr,= 0,%r3,%r0
	copy %r19,%r28
	ldw -84(%r30),%r2
	bv %r0(%r2)
	ldwm -64(%r30),%r3
.L847:
	sub %r0,%r26,%r26
	b .L841
	ldi 1,%r3
.L848:
	sub %r0,%r25,%r25
	b .L842
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
	movb,< %r26,%r26,.L855
	ldi 0,%r3
.L850:
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
.L855:
	sub %r0,%r26,%r26
	b .L850
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
	comb,<<= %r28,%r25,.L866
	ldi 1,%r19
	extrs %r25,31,16,%r20
.L874:
	comib,>,n 0,%r20,.L858
	zdep %r25,30,31,%r25
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	comb,>>= %r25,%r28,.L858
	extru %r19,31,16,%r19
	comib,<>,n 0,%r19,.L874
	extrs %r25,31,16,%r20
.L858:
	comib,= 0,%r19,.L861
	ldi 0,%r20
.L866:
	b .L860
	ldi 0,%r20
.L863:
	extru %r19,30,31,%r19
.L875:
	comib,= 0,%r19,.L861
	extru %r25,30,31,%r25
.L860:
	comb,>>,n %r25,%r28,.L875
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r19,%r20,%r20
	b .L863
	extru %r20,31,16,%r20
.L861:
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
	comb,<<= %r26,%r25,.L886
	ldi 1,%r19
.L877:
	comib,>,n 0,%r25,.L878
	zdep %r25,30,31,%r25
	comb,>>= %r25,%r28,.L878
	zdep %r19,30,31,%r19
	comib,<> 0,%r19,.L877
	nop
.L878:
	comib,= 0,%r19,.L881
	ldi 0,%r20
.L886:
	b .L880
	ldi 0,%r20
.L883:
	extru %r19,30,31,%r19
.L894:
	comib,= 0,%r19,.L881
	extru %r25,30,31,%r25
.L880:
	comb,>>,n %r25,%r28,.L894
	extru %r19,30,31,%r19
	sub %r28,%r25,%r28
	b .L883
	or %r20,%r19,%r20
.L881:
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
	bb,>=,n %r24,26,.L896
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r26,32,%r28
	ldi 0,%r29
.L898:
	bv,n %r0(%r2)
.L896:
	comib,=,n 0,%r24,.L899
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r26
	mtsar %r28
	zvdep %r25,32,%r28
	b .L898
	or %r26,%r28,%r28
.L899:
	copy %r25,%r28
	b .L898
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
	bb,>= %r24,26,.L901
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r25,32,%r29
.L903:
	bv,n %r0(%r2)
.L901:
	comib,=,n 0,%r24,.L904
	subi 31,%r24,%r28
	mtsar %r28
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L903
	or %r25,%r29,%r29
.L904:
	copy %r25,%r28
	b .L903
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
	bb,< %r19,30,.L909
	ldi 0,%r21
	subi 2,%r19,%r21
.L909:
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
	comb,> %r23,%r25,.L917
	ldi 0,%r28
	comb,< %r23,%r25,.L917
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L915
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L911
	ldo 1(%r28),%r28
.L915:
	ldi 0,%r28
.L911:
.L917:
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
	bb,>= %r24,26,.L921
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r28
.L923:
	bv,n %r0(%r2)
.L921:
	comib,=,n 0,%r24,.L924
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r25
	mtsar %r24
	vshd %r0,%r26,%r29
	b .L923
	or %r25,%r29,%r29
.L924:
	copy %r25,%r28
	b .L923
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
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r5
	ldws -12(%sp),%r6
	addl %r6,%r26,%r19
	addl %r19,%r28,%r28
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
	b .L935
	fldds 0(%r20),%fr4
.L941:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L934
	fmpy,dbl %fr5,%fr5,%fr5
.L935:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L941
	extru %r28,0,1,%r19
	b .L941
	fmpy,dbl %fr4,%fr5,%fr4
.L934:
	comiclr,<= 0,%r24,%r0
	b,n .L940
.L932:
	bv,n %r0(%r2)
.L940:
	fldds 0(%r20),%fr22
	b .L932
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
	b .L945
	fldws 0(%r20),%fr4L
.L951:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L944
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L945:
	extru %r28,31,1,%r19
	comib,= 0,%r19,.L951
	extru %r28,0,1,%r19
	b .L951
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L944:
	comiclr,<= 0,%r25,%r0
	b,n .L950
.L942:
	bv,n %r0(%r2)
.L950:
	fldws 0(%r20),%fr22L
	b .L942
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
	comb,>> %r23,%r25,.L958
	ldi 0,%r28
	comb,<< %r23,%r25,.L958
	ldi 2,%r28
	comclr,<<= %r24,%r26,%r0
	b,n .L956
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	b .L952
	ldo 1(%r28),%r28
.L956:
	ldi 0,%r28
.L952:
.L958:
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
