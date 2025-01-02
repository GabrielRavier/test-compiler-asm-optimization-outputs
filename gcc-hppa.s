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
	ldo -1(%r24),%r19
	comib,>>= 6,%r19,.L12
	or %r25,%r26,%r19
	extru %r19,31,2,%r19
	comib,<> 0,%r19,.L12
	uaddcm %r26,%r25,%r19
	comib,>>= 2,%r19,.L12
	copy %r24,%r22
	ldi 0,%r19
	depi 0,31,2,%r22
.L6:
	ldwx %r25(%r19),%r21
	addl %r28,%r19,%r20
	ldo 4(%r19),%r19
	comb,<> %r22,%r19,.L6
	stw %r21,0(%r20)
	addl %r25,%r19,%r22
	addl %r28,%r19,%r20
	comb,= %r19,%r24,.L3
	sub %r24,%r19,%r21
	ldbx %r25(%r19),%r19
	comib,= 1,%r21,.L3
	stb %r19,0(%r20)
	ldb 1(%r22),%r19
	comib,= 2,%r21,.L3
	stb %r19,1(%r20)
	ldb 2(%r22),%r19
	bv %r0(%r2)
	stb %r19,2(%r20)
.L12:
	ldi 0,%r19
.L34:
	ldbx %r25(%r19),%r21
	addl %r28,%r19,%r20
	ldo 1(%r19),%r19
	comb,<> %r19,%r24,.L34
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
	movb,<> %r23,%r23,.L37
	extru %r24,31,8,%r24
	b .L47
	ldi 0,%r28
.L40:
	comib,= 0,%r23,.L39
	ldo 1(%r26),%r26
.L37:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	comb,<> %r24,%r28,.L40
	ldo 1(%r25),%r25
	bv %r0(%r2)
	ldo 1(%r26),%r28
.L39:
	ldi 0,%r28
.L47:
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
	movb,<> %r24,%r24,.L49
	extru %r25,31,8,%r25
	b .L56
	copy %r24,%r28
.L51:
	comib,= 0,%r24,.L52
	ldo 1(%r26),%r26
.L49:
	ldb 0(%r26),%r28
	comb,<>,n %r25,%r28,.L51
	ldo -1(%r24),%r24
	bv %r0(%r2)
	copy %r26,%r28
.L52:
	copy %r24,%r28
.L56:
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
	b,n .L58
	b,n .L57
.L60:
	ldo 1(%r26),%r26
	comib,= 0,%r28,.L57
	ldo 1(%r25),%r25
.L58:
	ldb 0(%r26),%r20
	ldb 0(%r25),%r19
	comb,= %r19,%r20,.L60
	ldo -1(%r28),%r28
	sub %r20,%r19,%r28
.L57:
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
	comib,= 0,%r24,.L69
	copy %r26,%r3
	bl memcpy,%r2
	nop
.L69:
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
	b .L74
	addl %r26,%r24,%r26
.L76:
	ldb 0(%r28),%r19
	comb,= %r25,%r19,.L73
	ldo -1(%r26),%r26
.L74:
	comb,<> %r20,%r26,.L76
	copy %r26,%r28
	ldi 0,%r28
.L73:
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
	comib,= 0,%r24,.L80
	copy %r26,%r3
	bl memset,%r2
	extru %r25,31,8,%r25
.L80:
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
	comib,= 0,%r19,.L82
	copy %r26,%r28
	ldbs,mb 1(%r25),%r19
.L88:
	stbs,mb %r19,1(%r28)
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L88
	ldbs,mb 1(%r25),%r19
.L82:
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
	comib,<> 0,%r19,.L90
	extru %r25,31,8,%r25
	b,n .L89
.L92:
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L89
.L90:
	extru %r19,31,8,%r19
	comb,<>,n %r25,%r19,.L92
	ldbs,mb 1(%r28),%r19
.L89:
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
	b .L99
	copy %r26,%r28
.L102:
	comib,= 0,%r19,.L101
	ldo 1(%r28),%r28
.L99:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comb,<> %r25,%r19,.L102
	nop
	bv,n %r0(%r2)
.L101:
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
	comb,= %r19,%r28,.L104
	ldo -1(%r25),%r25
	b .L113
	extru %r21,31,8,%r28
.L106:
	ldo 1(%r20),%r20
	extrs %r21,31,8,%r28
	ldbx %r25(%r20),%r19
	extrs %r19,31,8,%r19
	comclr,= %r19,%r28,%r0
	b,n .L112
.L104:
	comib,<>,n 0,%r28,.L106
	ldbx %r26(%r20),%r21
	extru %r19,31,8,%r19
	bv %r0(%r2)
	sub %r28,%r19,%r28
.L112:
	extru %r21,31,8,%r28
.L113:
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
	comib,=,n 0,%r28,.L114
	copy %r26,%r28
	ldbs,mb 1(%r28),%r19
.L119:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L119
	ldbs,mb 1(%r28),%r19
	sub %r28,%r26,%r28
.L114:
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
	movb,=,n %r24,%r28,.L120
	ldo -1(%r28),%r31
	copy %r25,%r19
	ldb 0(%r26),%r28
	comib,<> 0,%r28,.L124
	addl %r25,%r31,%r31
	b .L136
	ldb 0(%r25),%r21
.L138:
	comb,=,n %r31,%r19,.L123
	ldbs,mb 1(%r26),%r28
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L137
	ldo 1(%r19),%r20
	copy %r20,%r19
.L124:
	ldb 0(%r19),%r21
	comclr,<> %r28,%r21,%r22
	ldi 1,%r22
	comiclr,= 0,%r21,%r20
	ldi 1,%r20
	and %r20,%r22,%r20
	comib,<> 0,%r20,.L138
	nop
.L123:
	sub %r28,%r21,%r28
.L120:
	bv,n %r0(%r2)
.L137:
	ldb 1(%r19),%r21
	b .L120
	sub %r28,%r21,%r28
.L136:
	b .L120
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
	comib,>= 1,%r24,.L139
	depi 0,31,1,%r24
	addl %r26,%r24,%r20
.L141:
	ldb 1(%r26),%r19
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r19,-2(%r25)
	comb,<> %r20,%r26,.L141
	stb %r28,-1(%r25)
.L139:
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
	b,n .L155
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	comib,<> 0,%r28,.L155
	ldo -40(%r26),%r19
	ldi 1,%r28
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L153
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L153:
	bv,n %r0(%r2)
.L155:
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
	comb,>>= %r28,%r26,.L164
	ldo -42(%r26),%r28
	ldil L'49152,%r19
	ldo -8192(%r28),%r28
	ldo -2091(%r19),%r19
	comb,>>= %r19,%r28,.L162
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comb,>>= %r19,%r26,.L162
	ldil L'-57344,%r19
	ldi 8184,%r20
	addl %r26,%r19,%r19
	comb,>>= %r20,%r19,.L162
	zdepi -1,29,14,%r20
	ldil L'1048576,%r19
	sub %r26,%r20,%r20
	ldo 3(%r19),%r19
	comb,<<,n %r19,%r20,.L158
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
.L158:
	bv,n %r0(%r2)
.L162:
	bv %r0(%r2)
	ldi 1,%r28
.L164:
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
	comib,>>= 9,%r19,.L165
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L165:
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
	b .L172
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L173
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L175
	bv %r0(%r2)
	fcpy,dbl %fr0,%fr4
.L175:
	bv %r0(%r2)
	fsub,dbl %fr5,%fr7,%fr4
.L172:
	bv %r0(%r2)
	fcpy,dbl %fr5,%fr4
.L173:
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
	b .L178
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L182
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L184
	fcpy,sgl %fr0,%fr4L
.L178:
	bv,n %r0(%r2)
.L184:
	bv %r0(%r2)
	fsub,sgl %fr4L,%fr5L,%fr4L
.L182:
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
	b .L193
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L194
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L199
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L187
.L194:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L187:
	bv,n %r0(%r2)
.L199:
	comib,= 0,%r21,.L194
	nop
	bv,n %r0(%r2)
.L193:
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
	b .L206
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L207
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,= %r19,%r28,%r0
	b,n .L211
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L206
	fcpy,sgl %fr4L,%fr5L
.L206:
	fcpy,sgl %fr5L,%fr4L
.L200:
	bv,n %r0(%r2)
.L211:
	comib,<> 0,%r28,.L200
	fcpy,sgl %fr5L,%fr4L
.L207:
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
	b .L218
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L219
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L224
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L212
.L219:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L212:
	bv,n %r0(%r2)
.L224:
	comib,= 0,%r21,.L219
	nop
	bv,n %r0(%r2)
.L218:
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
	b .L231
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L232
	copy %r28,%r21
	copy %r19,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L227
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L231
.L225:
	bv,n %r0(%r2)
.L227:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L225
.L231:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L232:
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
	b .L242
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L236
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L238
	comiclr,<> 0,%r28,%r0
	b,n .L242
.L236:
	bv,n %r0(%r2)
.L238:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L236
.L242:
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
	b .L253
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L254
	copy %r28,%r21
	copy %r19,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L249
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L253
.L247:
	bv,n %r0(%r2)
.L249:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L247
.L253:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L254:
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
	movb,= %r26,%r26,.L261
	addil LR's.0-$global$,%r27
	ldil LR'digits,%r21
	ldo RR's.0-$global$(%r1),%r28
	ldo RR'digits(%r21),%r21
	copy %r28,%r19
.L260:
	extru %r26,31,6,%r20
	ldbx %r21(%r20),%r20
	stb %r20,0(%r19)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L260
	ldo 1(%r19),%r19
	bv %r0(%r2)
	stb %r0,0(%r19)
.L261:
	ldo RR's.0-$global$(%r1),%r28
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
	addil LR'seed-$global$,%r27
	ldo -1(%r26),%r26
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
	ldw 0(%r1),%r21
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	copy %r24,%r20
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
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r22,%r29,%r28
	addl %r23,%r28,%r19
	addi 1,%r20,%r29
	addc %r19,%r0,%r28
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
	movb,=,n %r25,%r25,.L271
	ldw 0(%r25),%r28
	stw %r25,4(%r26)
	stw %r28,0(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L265:
	bv,n %r0(%r2)
.L271:
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
	comib,=,n 0,%r28,.L273
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L273:
	ldw 4(%r26),%r19
	comiclr,= 0,%r19,%r0
	stw %r28,0(%r19)
.L272:
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
	comib,= 0,%r6,.L282
	copy %r23,%r5
	copy %r25,%r3
	b .L284
	ldi 0,%r4
.L296:
	ldo 1(%r4),%r4
	comb,= %r4,%r6,.L282
	addl %r3,%r5,%r3
.L284:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L296
	copy %r3,%r8
.L281:
	copy %r8,%r28
.L297:
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
.L282:
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
	comib,= 0,%r5,.L281
	addl %r11,%r29,%r8
	copy %r5,%r24
	copy %r7,%r25
	bl memmove,%r2
	copy %r8,%r26
	b .L297
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
	comib,= 0,%r8,.L299
	copy %r26,%r5
	copy %r25,%r3
	b .L301
	ldi 0,%r4
.L309:
	ldo 1(%r4),%r4
	comb,= %r4,%r8,.L299
	addl %r3,%r6,%r3
.L301:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L309
	copy %r3,%r7
.L298:
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
.L299:
	b .L298
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
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -9(%r19),%r28
	comib,>>= 4,%r28,.L333
	ldi 32,%r20
	comiclr,<> 32,%r19,%r28
	ldi 1,%r28
	comib,= 0,%r28,.L338
	ldi 43,%r28
.L333:
	ldbs,mb 1(%r26),%r19
.L339:
	extrs %r19,31,8,%r19
	ldo -9(%r19),%r28
	comib,>>=,n 4,%r28,.L339
	ldbs,mb 1(%r26),%r19
	comb,=,n %r20,%r19,.L339
	ldbs,mb 1(%r26),%r19
	ldi 43,%r28
.L338:
	comb,= %r28,%r19,.L315
	ldi 45,%r28
	comb,<> %r28,%r19,.L336
	ldo -48(%r19),%r28
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L324
	ldo 1(%r26),%r26
	ldi 1,%r31
.L318:
	ldi 0,%r20
.L321:
	sh2addl %r20,%r20,%r20 
	ldo -48(%r19),%r19
	zdep %r20,30,31,%r21
	extrs %r19,31,8,%r28
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r22
	comib,>>= 9,%r22,.L321
	sub %r21,%r28,%r20
	sub %r28,%r21,%r28
	comiclr,= 0,%r31,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L336:
	comib,>>= 9,%r28,.L318
	ldi 0,%r31
.L324:
	ldi 0,%r28
.L337:
	bv,n %r0(%r2)
.L315:
	ldb 1(%r26),%r19
	ldi 0,%r31
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L318
	ldo 1(%r26),%r26
	b .L337
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
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -9(%r19),%r28
	comib,>>= 4,%r28,.L360
	ldi 32,%r20
	comiclr,<> 32,%r19,%r28
	ldi 1,%r28
	comib,= 0,%r28,.L363
	ldi 43,%r28
.L360:
	ldbs,mb 1(%r26),%r19
.L364:
	extrs %r19,31,8,%r19
	ldo -9(%r19),%r28
	comib,>>=,n 4,%r28,.L364
	ldbs,mb 1(%r26),%r19
	comb,=,n %r20,%r19,.L364
	ldbs,mb 1(%r26),%r19
	ldi 43,%r28
.L363:
	comb,= %r28,%r19,.L344
	ldi 45,%r28
	comb,= %r28,%r19,.L362
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L352
	ldi 0,%r31
.L346:
	ldi 0,%r20
.L349:
	sh2addl %r20,%r20,%r20 
	ldo -48(%r19),%r19
	zdep %r20,30,31,%r21
	extrs %r19,31,8,%r28
	ldbs,mb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r22
	comib,>>= 9,%r22,.L349
	sub %r21,%r28,%r20
	sub %r28,%r21,%r28
	comiclr,= 0,%r31,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L362:
	ldb 1(%r26),%r19
	ldi 1,%r31
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L346
	ldo 1(%r26),%r26
.L352:
	bv %r0(%r2)
	ldi 0,%r28
.L344:
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L352
	ldo 1(%r26),%r26
	b .L346
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
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -9(%r19),%r28
	comib,>>= 4,%r28,.L387
	ldi 32,%r20
	comiclr,<> 32,%r19,%r28
	ldi 1,%r28
	comib,= 0,%r28,.L391
	ldi 43,%r28
.L387:
	ldbs,mb 1(%r26),%r19
.L392:
	extrs %r19,31,8,%r19
	ldo -9(%r19),%r28
	comib,>>=,n 4,%r28,.L392
	ldbs,mb 1(%r26),%r19
	comb,=,n %r20,%r19,.L392
	ldbs,mb 1(%r26),%r19
	ldi 43,%r28
.L391:
	comb,= %r28,%r19,.L369
	ldi 45,%r28
	comb,<> %r28,%r19,.L390
	ldo -48(%r19),%r28
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L378
	ldo 1(%r26),%r26
	ldi 1,%r31
.L372:
	ldi 0,%r23
	ldi 0,%r24
	ldo -48(%r19),%r19
.L393:
	extrs %r19,31,8,%r19
	shd %r23,%r24,30,%r28
	zdep %r24,29,30,%r29
	copy %r19,%r22
	add %r24,%r29,%r29
	addc %r23,%r28,%r28
	extrs %r19,0,1,%r21
	shd %r28,%r29,31,%r28
	ldbs,mb 1(%r26),%r19
	zdep %r29,30,31,%r29
	extrs %r19,31,8,%r19
	sub %r29,%r22,%r24
	subb %r28,%r21,%r23
	ldo -48(%r19),%r20
	comib,>>=,n 9,%r20,.L393
	ldo -48(%r19),%r19
	comiclr,= 0,%r31,%r0
	b,n .L365
	sub %r22,%r29,%r24
	subb %r21,%r28,%r23
.L365:
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L390:
	comib,>>= 9,%r28,.L372
	ldi 0,%r31
.L378:
	ldi 0,%r23
	ldi 0,%r24
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L369:
	ldb 1(%r26),%r19
	ldi 0,%r31
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L372
	ldo 1(%r26),%r26
	b,n .L378
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
	movb,<> %r24,%r3,.L398
	ldw -180(%r30),%r8
	b .L394
	ldi 0,%r5
.L407:
	comib,= 0,%r28,.L394
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	comib,= 0,%r3,.L395
	addl %r5,%r28,%r6
.L398:
	extru %r3,30,31,%r4
.L408:
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
	movb,>= %r28,%r28,.L407
	nop
	copy %r4,%r3
	comib,<> 0,%r3,.L408
	extru %r3,30,31,%r4
.L395:
	ldi 0,%r5
.L394:
	copy %r5,%r28
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
	ldw -180(%r30),%r8
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	movb,= %r24,%r3,.L414
	ldw -184(%r30),%r9
.L422:
	extrs %r3,30,31,%r4
.L424:
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r9,%r24
	addl %r6,%r29,%r5
	copy %r7,%r26
	copy %r8,%r22
	copy %r5,%r25
	bl $$dyncall,%r31
	copy %r31,%r2
	or,<> %r28,%r0,%r28
	b,n .L409
	comib,>= 0,%r28,.L412
	ldo -1(%r3),%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	extrs %r3,30,31,%r3
	comib,<> 0,%r3,.L422
	addl %r5,%r28,%r6
.L414:
	ldi 0,%r5
.L409:
	copy %r5,%r28
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
.L412:
	comib,= 0,%r4,.L414
	copy %r4,%r3
	b .L424
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
	copy %r25,%r19
	copy %r26,%r20
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	ldo 64(%r30),%r30
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
	copy %r26,%r20
	bl $$divI,%r31
	nop
	ldo 64(%r30),%r30
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
	b,n .L433
	b,n .L432
.L435:
	comiclr,<> 0,%r28,%r0
	b,n .L432
.L433:
	comb,<>,n %r28,%r25,.L435
	ldws,mb 4(%r26),%r28
	copy %r26,%r28
.L432:
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
	comb,= %r20,%r19,.L441
	ldo -4(%r25),%r25
	b,n .L442
.L443:
	ldo 4(%r28),%r28
	ldwx %r25(%r28),%r20
	comclr,= %r20,%r19,%r0
	b,n .L442
.L441:
	comib,<>,n 0,%r19,.L443
	ldwx %r26(%r28),%r19
.L442:
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
.L450:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L450
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
	comib,=,n 0,%r28,.L452
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L457:
	comib,<>,n 0,%r19,.L457
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
	extrs %r28,29,30,%r28
.L452:
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
	b,n .L459
	b,n .L458
.L472:
	comib,= 0,%r19,.L463
	ldo -1(%r28),%r28
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L458
	ldo 4(%r25),%r25
.L459:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r20
	comb,= %r19,%r20,.L472
	nop
.L463:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L458:
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
	movb,<> %r24,%r24,.L474
	copy %r24,%r28
	b,n .L481
.L476:
	comib,= 0,%r24,.L477
	ldo 4(%r26),%r26
.L474:
	ldw 0(%r26),%r28
	comb,<>,n %r25,%r28,.L476
	ldo -1(%r24),%r24
	bv %r0(%r2)
	copy %r26,%r28
.L477:
	copy %r24,%r28
.L481:
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
	b,n .L483
	b,n .L482
.L485:
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L482
	ldo 4(%r25),%r25
.L483:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,= %r19,%r20,.L485
	ldo -1(%r28),%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L482:
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
	movb,= %r24,%r24,.L495
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L495:
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
	comb,= %r25,%r26,.L507
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,<<= %r19,%r20,.L514
	ldi 0,%r19
	comib,=,n 0,%r24,.L507
	ldo -1(%r24),%r24
.L504:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L504
	stw %r20,0(%r19)
.L507:
	bv,n %r0(%r2)
.L514:
	comb,= %r19,%r24,.L507
	nop
.L502:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r24,.L502
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
	movb,= %r24,%r24,.L516
	copy %r26,%r28
	ldi 0,%r19
.L517:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L517
	stw %r25,0(%r20)
.L516:
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
	b,n .L523
	comib,=,n 0,%r24,.L522
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L525:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L525
	stb %r19,0(%r28)
.L522:
	bv,n %r0(%r2)
.L523:
	comb,= %r25,%r26,.L522
	nop
	comib,= 0,%r24,.L522
	nop
	ldo -1(%r24),%r28
	comib,>>= 6,%r28,.L533
	or %r25,%r26,%r28
	extru %r28,31,2,%r28
	comib,<> 0,%r28,.L533
	uaddcm %r25,%r26,%r28
	comib,>>= 2,%r28,.L533
	copy %r24,%r21
	ldi 0,%r28
	depi 0,31,2,%r21
.L527:
	ldwx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 4(%r28),%r28
	comb,<> %r21,%r28,.L527
	stw %r20,0(%r19)
	addl %r25,%r28,%r25
	addl %r26,%r28,%r20
	comb,= %r28,%r24,.L522
	sub %r24,%r28,%r19
	ldbx %r26(%r28),%r28
	comib,= 1,%r19,.L522
	stb %r28,0(%r25)
	ldb 1(%r20),%r28
	comib,= 2,%r19,.L522
	stb %r28,1(%r25)
	ldb 2(%r20),%r28
	bv %r0(%r2)
	stb %r28,2(%r25)
.L533:
	ldi 0,%r28
.L555:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L555
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
	bb,>= %r24,26,.L557
	subi 31,%r24,%r19
	subi 31,%r24,%r28
	ldi 0,%r29
	mtsar %r28
	sub %r0,%r24,%r24
	zvdep %r26,32,%r28
	bb,>= %r24,26,.L559
	extru %r24,31,6,%r20
.L561:
	mtsar %r20
	vshd %r0,%r25,%r19
	ldi 0,%r25
	or %r19,%r29,%r29
	bv %r0(%r2)
	or %r25,%r28,%r28
.L557:
	mtsar %r19
	uaddcm %r0,%r24,%r20
	zvdep %r25,32,%r21
	mtsar %r20
	extru %r26,30,31,%r28
	sub %r0,%r24,%r24
	vshd %r0,%r28,%r28
	extru %r24,31,6,%r20
	mtsar %r19
	or %r28,%r21,%r28
	bb,< %r24,26,.L561
	zvdep %r26,32,%r29
.L559:
	mtsar %r20
	zdep %r25,30,31,%r19
	vshd %r0,%r26,%r26
	vshd %r0,%r25,%r25
	uaddcm %r0,%r20,%r21
	or %r25,%r28,%r28
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r19,32,%r19
	or %r19,%r26,%r19
	bv %r0(%r2)
	or %r19,%r29,%r29
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
	bb,>= %r24,26,.L563
	mtsar %r24
	ldi 0,%r22
	sub %r0,%r24,%r24
	vshd %r0,%r25,%r19
	bb,>= %r24,26,.L565
	extru %r24,31,6,%r20
.L567:
	subi 31,%r20,%r20
	ldi 0,%r29
	mtsar %r20
	or %r29,%r19,%r29
	zvdep %r26,32,%r28
	bv %r0(%r2)
	or %r28,%r22,%r28
.L563:
	vshd %r0,%r26,%r20
	uaddcm %r0,%r24,%r28
	zdep %r25,30,31,%r19
	subi 31,%r28,%r28
	vshd %r0,%r25,%r22
	sub %r0,%r24,%r24
	mtsar %r28
	zvdep %r19,32,%r19
	or %r19,%r20,%r19
	bb,< %r24,26,.L567
	extru %r24,31,6,%r20
.L565:
	subi 31,%r20,%r28
	mtsar %r28
	uaddcm %r0,%r20,%r20
	zvdep %r25,32,%r25
	mtsar %r20
	extru %r26,30,31,%r21
	vshd %r0,%r21,%r20
	mtsar %r28
	or %r20,%r25,%r28
	zvdep %r26,32,%r29
	or %r28,%r22,%r28
	bv %r0(%r2)
	or %r29,%r19,%r29
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
	b .L582
	ldi 32,%r20
.L585:
	comclr,<> %r20,%r28,%r0
	b,n .L584
.L582:
	mtsar %r28
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r19
	comib,= 0,%r19,.L585
	ldo 1(%r28),%r28
	bv,n %r0(%r2)
.L584:
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
	movb,=,n %r26,%r26,.L589
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L586
	ldi 1,%r28
.L588:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L588
	ldo 1(%r28),%r28
.L586:
	bv,n %r0(%r2)
.L589:
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
	b .L592
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L592
	ldi 0,%r28
.L592:
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
	b .L596
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L596
	ldi 0,%r28
.L596:
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
	b .L600
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L600
	ldi 0,%r28
.L600:
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
	b,n .L606
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L606
	comib,> 0,%r25,.L618
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldws 0(%r28),%fr22L
.L607:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L621
	extru %r25,0,1,%r28
.L609:
	fmpy,sgl %fr4L,%fr22L,%fr4L
	extru %r25,0,1,%r28
.L621:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comib,= 0,%r25,.L606
	extru %r25,31,1,%r28
	comib,<> 0,%r28,.L609
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extru %r25,0,1,%r28
.L620:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	extru %r25,31,1,%r28
	comib,<> 0,%r28,.L609
	fmpy,sgl %fr22L,%fr22L,%fr22L
	b .L620
	extru %r25,0,1,%r28
.L606:
	bv,n %r0(%r2)
.L618:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L607
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
	b .L623
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L623
	comib,> 0,%r24,.L635
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr22
.L624:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L638
	extru %r24,0,1,%r28
.L626:
	fmpy,dbl %fr4,%fr22,%fr4
	extru %r24,0,1,%r28
.L638:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L623
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L626
	fmpy,dbl %fr22,%fr22,%fr22
	extru %r24,0,1,%r28
.L637:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L626
	fmpy,dbl %fr22,%fr22,%fr22
	b .L637
	extru %r24,0,1,%r28
.L623:
	bv,n %r0(%r2)
.L635:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L624
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
	b .L640
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L640
	comib,> 0,%r24,.L652
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L641:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L655
	extru %r24,0,1,%r28
.L643:
	fmpy,dbl %fr4,%fr22,%fr4
	extru %r24,0,1,%r28
.L655:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L640
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L643
	fmpy,dbl %fr22,%fr22,%fr22
	extru %r24,0,1,%r28
.L654:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L643
	fmpy,dbl %fr22,%fr22,%fr22
	b .L654
	extru %r24,0,1,%r28
.L640:
	bv,n %r0(%r2)
.L652:
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L641
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
	movb,= %r24,%r24,.L657
	copy %r26,%r28
	ldo -1(%r24),%r19
	comib,>>= 3,%r19,.L664
	or %r26,%r25,%r19
	extru %r19,31,2,%r19
	comib,<> 0,%r19,.L664
	copy %r24,%r31
	depi 0,31,2,%r31
.L659:
	ldwx %r28(%r19),%r22
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	xor %r20,%r22,%r20
	ldo 4(%r19),%r19
	comb,<> %r31,%r19,.L659
	stw %r20,0(%r21)
	addl %r28,%r19,%r20
	addl %r25,%r19,%r31
	comb,= %r19,%r24,.L657
	sub %r24,%r19,%r22
	ldbx %r28(%r19),%r21
	ldbx %r25(%r19),%r19
	xor %r21,%r19,%r21
	comib,= 1,%r22,.L657
	stb %r21,0(%r20)
	ldb 1(%r20),%r21
	ldb 1(%r31),%r19
	xor %r19,%r21,%r19
	comib,= 2,%r22,.L657
	stb %r19,1(%r20)
	ldb 2(%r20),%r21
	ldb 2(%r31),%r19
	xor %r19,%r21,%r19
	stb %r19,2(%r20)
.L657:
	bv,n %r0(%r2)
.L664:
	ldi 0,%r19
.L676:
	ldbx %r28(%r19),%r22
	ldbx %r25(%r19),%r20
	addl %r28,%r19,%r21
	xor %r20,%r22,%r20
	ldo 1(%r19),%r19
	comb,<> %r19,%r24,.L676
	stb %r20,0(%r21)
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
	comib,= 0,%r19,.L684
	copy %r26,%r28
	copy %r26,%r19
	ldbs,mb 1(%r19),%r20
.L694:
	extrs %r20,31,8,%r20
	comib,<>,n 0,%r20,.L694
	ldbs,mb 1(%r19),%r20
.L692:
	comiclr,<> 0,%r24,%r0
	b,n .L681
.L693:
	ldb 0(%r25),%r20
	stb %r20,0(%r19)
	extrs %r20,31,8,%r20
	comib,= 0,%r20,.L683
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L693
	ldo 1(%r19),%r19
.L681:
	stb %r0,0(%r19)
.L683:
	bv,n %r0(%r2)
.L684:
	b .L692
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
	movb,= %r25,%r25,.L695
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L704:
	comiclr,= 0,%r19,%r0
	b,n .L698
.L695:
	bv,n %r0(%r2)
.L698:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L704
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
	comib,= 0,%r21,.L710
	copy %r26,%r28
	b .L709
	copy %r25,%r20
.L708:
	comb,= %r21,%r19,.L707
	ldo 1(%r20),%r20
.L709:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L708
	nop
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L709
	copy %r25,%r20
.L710:
	copy %r21,%r28
.L707:
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
.L716:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L716
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
	comib,= 0,%r31,.L730
	copy %r25,%r19
	ldbs,mb 1(%r19),%r28
.L742:
	extrs %r28,31,8,%r28
	comib,<>,n 0,%r28,.L742
	ldbs,mb 1(%r19),%r28
	comb,= %r25,%r19,.L730
	sub %r19,%r25,%r28
	ldo -1(%r25),%r29
	extru %r31,31,8,%r23
	b .L739
	addl %r29,%r28,%r29
.L740:
	comib,= 0,%r28,.L718
	ldo 1(%r26),%r26
.L739:
	ldb 0(%r26),%r28
.L743:
	extrs %r28,31,8,%r28
	comb,<> %r31,%r28,.L740
	copy %r25,%r20
	copy %r23,%r28
	b .L722
	copy %r26,%r21
.L741:
	comclr,<> %r28,%r19,%r22
	ldi 1,%r22
	comiclr,= 0,%r19,%r19
	ldi 1,%r19
	and %r19,%r22,%r19
	comib,=,n 0,%r19,.L723
	ldbs,mb 1(%r21),%r28
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L723
	ldo 1(%r20),%r20
.L722:
	comb,<> %r29,%r20,.L741
	ldb 0(%r20),%r19
.L723:
	ldb 0(%r20),%r19
	comb,=,n %r28,%r19,.L730
	ldo 1(%r26),%r26
	b .L743
	ldb 0(%r26),%r28
.L730:
	copy %r26,%r28
.L718:
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
	b .L751
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L752
	bv,n %r0(%r2)
.L752:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L747
	bv,n %r0(%r2)
.L747:
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
.L751:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L747
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
	movb,= %r23,%r23,.L755
	copy %r26,%r28
	comb,>> %r23,%r25,.L766
	sub %r25,%r23,%r25
	addl %r26,%r25,%r22
	comb,<<,n %r22,%r26,.L766
	ldb 0(%r24),%r29
	b .L761
	extrs %r29,31,8,%r29
.L765:
	copy %r31,%r28
.L757:
	comclr,<<= %r28,%r22,%r0
	b,n .L766
.L761:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comb,<> %r29,%r19,.L765
	ldo 1(%r28),%r31
	comiclr,<> 1,%r23,%r0
	b,n .L755
.L760:
	b .L758
	ldi 1,%r19
.L759:
	comclr,<> %r23,%r19,%r0
	b,n .L755
.L758:
	ldbx %r28(%r19),%r21
	ldbx %r24(%r19),%r20
	comb,=,n %r20,%r21,.L759
	ldo 1(%r19),%r19
	comb,>>,n %r31,%r22,.L766
	ldb 0(%r31),%r19
	extrs %r19,31,8,%r19
	comb,<> %r19,%r29,.L757
	ldo 1(%r31),%r28
	copy %r31,%r19
	copy %r28,%r31
	b .L760
	copy %r19,%r28
.L766:
	ldi 0,%r28
.L755:
	bv,n %r0(%r2)
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
	movb,= %r24,%r3,.L775
	copy %r26,%r4
	bl memmove,%r2
	nop
.L775:
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
	b .L796
	ldil LR'.LC26,%r19
	ldo RR'.LC26(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr5,%fr22
	ftest
	b .L782
	ldi 0,%r21
	ldil LR'.LC27,%r19
	ldo RR'.LC27(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L797
	fcmp,dbl,= %fr5,%fr0
	fcpy,dbl %fr5,%fr4
	stw %r0,0(%r24)
.L779:
.L805:
	bv,n %r0(%r2)
.L791:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	ldi 1,%r21
	ldo RR'.LC26(%r19),%r19
.L782:
	ldil LR'.LC27,%r20
	ldi 0,%r28
	fldds 0(%r19),%fr23
	ldo RR'.LC27(%r20),%r20
	fldds 0(%r20),%fr22
.L788:
	fmpy,dbl %fr5,%fr22,%fr5
	fcmp,dbl,!>= %fr5,%fr23
	ftest
	b .L788
	ldo 1(%r28),%r28
	stw %r28,0(%r24)
	comib,= 0,%r21,.L779
	fcpy,dbl %fr5,%fr4
.L803:
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
.L796:
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
	b .L791
	ldil LR'.LC26,%r19
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b .L792
	fcpy,dbl %fr5,%fr4
	b .L805
	stw %r0,0(%r24)
.L797:
	ftest
	b .L794
	fcpy,dbl %fr5,%fr4
	b .L779
	stw %r0,0(%r24)
.L792:
	ldil LR'.LC27,%r19
	ldi 1,%r21
	ldo RR'.LC27(%r19),%r19
.L783:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	fldds 0(%r19),%fr22
	ldi 0,%r28
.L790:
	fadd,dbl %fr5,%fr5,%fr5
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L790
	ldo -1(%r28),%r28
	stw %r28,0(%r24)
	comib,<> 0,%r21,.L803
	fcpy,dbl %fr5,%fr4
	b,n .L779
.L794:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b,n .L783
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
	b,n .L806
.L809:
	shd %r25,%r26,1,%r21
	extru %r26,31,1,%r29
	ldi 0,%r28
	copy %r21,%r26
	extru %r25,30,31,%r25
	or %r25,%r26,%r31
	sub %r0,%r29,%r22
	subb %r0,%r28,%r21
	and %r21,%r23,%r19
	and %r22,%r24,%r20
	shd %r23,%r24,31,%r23
	add %r20,%r2,%r2
	addc %r19,%r1,%r1
	comb,<> %r28,%r31,.L809
	zdep %r24,30,31,%r24
.L806:
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
	comb,>> %r26,%r25,.L813
	ldi 1,%r19
	b .L819
	ldi 0,%r20
.L816:
	comb,>>= %r25,%r28,.L815
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L833
	copy %r19,%r20
.L813:
	comib,<=,n 0,%r25,.L816
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L819:
	comb,>>,n %r25,%r28,.L818
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L818:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L819
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L815:
	comib,<> 0,%r19,.L819
	ldi 0,%r20
	copy %r19,%r20
.L833:
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
	comb,= %r28,%r19,.L836
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L836:
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
	comb,= %r20,%r28,.L843
	xor %r26,%r20,%r26
.L841:
	bl __clzdi2,%r2
	nop
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L843:
	comb,<> %r28,%r19,.L841
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
	movb,=,n %r26,%r26,.L847
	ldi 0,%r28
.L846:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r19
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L846
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L847:
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
	copy %r24,%r20
	extru %r24,28,29,%r21
	stw %r3,-60(%r30)
	comb,>> %r25,%r26,.L853
	depi 0,31,3,%r20
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L884
.L853:
	comib,=,n 0,%r21,.L885
	copy %r25,%r28
	copy %r26,%r19
	sh3addl %r21,%r25,%r21 
.L856:
	ldw 0(%r28),%r3
	ldw 4(%r28),%r4
	stw %r3,0(%r19)
	stw %r4,4(%r19)
	ldo 8(%r28),%r28
	comb,<> %r21,%r28,.L856
	ldo 8(%r19),%r19
	comb,>>= %r20,%r24,.L849
	sub %r24,%r20,%r23
	ldo -1(%r23),%r28
	comib,>>= 6,%r28,.L886
	addl %r26,%r20,%r22
	ldo 1(%r20),%r28
	addl %r25,%r28,%r19
	sub %r22,%r19,%r19
	comib,>>= 2,%r19,.L882
	addl %r25,%r20,%r29
	or %r29,%r22,%r19
	extru %r19,31,2,%r19
	comib,<> 0,%r19,.L882
	copy %r23,%r31
	ldi 0,%r28
	depi 0,31,2,%r31
.L859:
	ldwx %r29(%r28),%r21
	addl %r22,%r28,%r19
	ldo 4(%r28),%r28
	comb,<> %r28,%r31,.L859
	stw %r21,0(%r19)
	comb,= %r23,%r31,.L849
	addl %r31,%r20,%r20
	addl %r26,%r20,%r28
	ldbx %r25(%r20),%r19
	stb %r19,0(%r28)
	ldo 1(%r20),%r28
	comb,>>=,n %r28,%r24,.L849
	ldbx %r25(%r28),%r19
	addl %r26,%r28,%r28
	ldo 2(%r20),%r20
	comb,>>= %r20,%r24,.L849
	stb %r19,0(%r28)
	ldbx %r25(%r20),%r28
	addl %r26,%r20,%r26
	stb %r28,0(%r26)
.L849:
	ldw -60(%r30),%r3
.L888:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L887:
	ldo 1(%r28),%r28
.L882:
	ldbx %r25(%r20),%r19
	stb %r19,0(%r22)
	copy %r28,%r20
	comb,<> %r28,%r24,.L887
	addl %r26,%r28,%r22
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L884:
	comib,= 0,%r24,.L849
	ldo -1(%r24),%r28
.L854:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L854
	stb %r20,0(%r19)
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L885:
	addl %r26,%r20,%r22
	comib,<> 0,%r24,.L882
	ldo 1(%r20),%r28
	b .L888
	ldw -60(%r30),%r3
.L886:
	b .L882
	ldo 1(%r20),%r28
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
	comb,>> %r25,%r26,.L893
	extru %r24,30,31,%r22
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L919
.L893:
	comib,= 0,%r22,.L892
	ldo -1(%r22),%r28
	comib,>>= 8,%r28,.L903
	or %r25,%r26,%r28
	extru %r28,31,2,%r28
	comib,<> 0,%r28,.L903
	ldo 2(%r25),%r28
	comb,= %r28,%r26,.L903
	extru %r24,29,30,%r31
	ldi 0,%r28
	zdep %r31,29,30,%r21
.L897:
	ldwx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 4(%r28),%r28
	comb,<> %r21,%r28,.L897
	stw %r20,0(%r19)
	zdep %r31,30,31,%r31
	comb,=,n %r31,%r22,.L892
	ldhx %r25(%r28),%r19
	addl %r26,%r28,%r28
	sth %r19,0(%r28)
.L892:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L889
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r28
.L922:
	addl %r26,%r24,%r26
	stb %r28,0(%r26)
.L889:
	bv,n %r0(%r2)
.L919:
	comib,= 0,%r24,.L889
	ldo -1(%r24),%r28
.L894:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L894
	stb %r20,0(%r19)
	bv,n %r0(%r2)
.L903:
	ldi 0,%r28
.L917:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r22,.L917
	sth %r20,0(%r19)
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L889
	ldo -1(%r24),%r24
	b .L922
	ldbx %r25(%r24),%r28
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
	copy %r24,%r21
	extru %r24,29,30,%r22
	comb,>> %r25,%r26,.L927
	depi 0,31,2,%r21
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L960
.L927:
	ldi 0,%r28
	comclr,<> %r28,%r22,%r0
	b,n .L956
.L925:
	ldwx,s %r28(%r25),%r20
	sh2addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r22,.L925
	stw %r20,0(%r19)
	comb,>>= %r21,%r24,.L923
	sub %r24,%r21,%r23
	ldo -1(%r23),%r28
	comib,>>= 6,%r28,.L961
	addl %r26,%r21,%r22
	ldo 1(%r21),%r28
	addl %r25,%r28,%r19
	sub %r22,%r19,%r19
	comib,>>= 2,%r19,.L958
	addl %r25,%r21,%r29
	or %r29,%r22,%r19
	extru %r19,31,2,%r19
	comib,<> 0,%r19,.L958
	copy %r23,%r31
	ldi 0,%r28
	depi 0,31,2,%r31
.L932:
	ldwx %r29(%r28),%r20
	addl %r22,%r28,%r19
	ldo 4(%r28),%r28
	comb,<> %r28,%r31,.L932
	stw %r20,0(%r19)
	comb,= %r23,%r31,.L923
	addl %r31,%r21,%r21
	addl %r26,%r21,%r28
	ldbx %r25(%r21),%r19
	stb %r19,0(%r28)
	ldo 1(%r21),%r28
	comb,>>=,n %r28,%r24,.L923
	ldbx %r25(%r28),%r19
	addl %r26,%r28,%r28
	ldo 2(%r21),%r21
	comb,>>= %r21,%r24,.L923
	stb %r19,0(%r28)
	ldbx %r25(%r21),%r28
	addl %r26,%r21,%r26
	stb %r28,0(%r26)
.L923:
	bv,n %r0(%r2)
.L962:
	ldo 1(%r28),%r28
.L958:
	ldbx %r25(%r21),%r19
	stb %r19,0(%r22)
	copy %r28,%r21
	comb,<> %r28,%r24,.L962
	addl %r26,%r28,%r22
	bv,n %r0(%r2)
.L960:
	comib,= 0,%r24,.L923
	ldo -1(%r24),%r28
.L928:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L928
	stb %r20,0(%r19)
	bv,n %r0(%r2)
.L956:
	addl %r26,%r21,%r22
	comib,<> 0,%r24,.L958
	ldo 1(%r21),%r28
	bv,n %r0(%r2)
.L961:
	b .L958
	ldo 1(%r21),%r28
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
	comib,>= 0,%r28,.L968
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L968:
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
	comib,>= 0,%r28,.L971
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L971:
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
	comib,<>,n 0,%r28,.L976
	extrs %r26,17,18,%r28
	comib,<>,n 0,%r28,.L973
	extrs %r26,18,19,%r28
	comib,<>,n 0,%r28,.L977
	extrs %r26,19,20,%r28
	comib,<>,n 0,%r28,.L978
	extrs %r26,20,21,%r28
	comib,<>,n 0,%r28,.L979
	extrs %r26,21,22,%r28
	comib,<>,n 0,%r28,.L980
	extrs %r26,22,23,%r28
	comib,<>,n 0,%r28,.L981
	extrs %r26,23,24,%r28
	comib,<>,n 0,%r28,.L982
	extrs %r26,24,25,%r28
	comib,<>,n 0,%r28,.L983
	extrs %r26,25,26,%r28
	comib,<>,n 0,%r28,.L984
	extrs %r26,26,27,%r28
	comib,<>,n 0,%r28,.L985
	extrs %r26,27,28,%r28
	comib,<>,n 0,%r28,.L986
	extrs %r26,28,29,%r28
	comib,<>,n 0,%r28,.L987
	extrs %r26,29,30,%r28
	comib,<>,n 0,%r28,.L988
	extrs %r26,30,31,%r28
	comiclr,= 0,%r28,%r0
	b,n .L989
	comiclr,<> 0,%r26,%r26
	ldi 1,%r26
	ldo 15(%r26),%r28
.L973:
	bv,n %r0(%r2)
.L976:
	bv %r0(%r2)
	ldi 0,%r28
.L987:
	bv %r0(%r2)
	ldi 12,%r28
.L977:
	bv %r0(%r2)
	ldi 2,%r28
.L978:
	bv %r0(%r2)
	ldi 3,%r28
.L979:
	bv %r0(%r2)
	ldi 4,%r28
.L980:
	bv %r0(%r2)
	ldi 5,%r28
.L981:
	bv %r0(%r2)
	ldi 6,%r28
.L982:
	bv %r0(%r2)
	ldi 7,%r28
.L983:
	bv %r0(%r2)
	ldi 8,%r28
.L984:
	bv %r0(%r2)
	ldi 9,%r28
.L985:
	bv %r0(%r2)
	ldi 10,%r28
.L986:
	bv %r0(%r2)
	ldi 11,%r28
.L988:
	bv %r0(%r2)
	ldi 13,%r28
.L989:
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
	comib,<>,n 0,%r26,.L994
	ldi 2,%r28
	and %r19,%r28,%r20
	comib,<> 0,%r20,.L995
	ldi 4,%r20
	and %r19,%r20,%r21
	comib,<>,n 0,%r21,.L991
	ldi 8,%r28
	and %r19,%r28,%r21
	comiclr,= 0,%r21,%r0
	b,n .L997
	extrs,>= %r19,27,1,%r0
	b,n .L998
	extrs,>= %r19,26,1,%r0
	b,n .L999
	extrs,>= %r19,25,1,%r0
	b,n .L1000
	extrs,>= %r19,24,1,%r0
	b,n .L1001
	extrs,>= %r19,23,1,%r0
	b,n .L991
	extrs,>= %r19,22,1,%r0
	b,n .L1003
	extrs,>= %r19,21,1,%r0
	b,n .L1004
	extrs,>= %r19,20,1,%r0
	b,n .L1005
	extrs,>= %r19,19,1,%r0
	b,n .L1006
	extrs,>= %r19,18,1,%r0
	b,n .L1007
	bb,< %r19,17,.L1008
	extrs %r19,16,17,%r19
	comiclr,<> 0,%r19,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L991:
	bv,n %r0(%r2)
.L994:
	bv %r0(%r2)
	ldi 0,%r28
.L995:
	bv %r0(%r2)
	ldi 1,%r28
.L1006:
	bv %r0(%r2)
	ldi 12,%r28
.L997:
	bv %r0(%r2)
	ldi 3,%r28
.L998:
	bv %r0(%r2)
	copy %r20,%r28
.L999:
	bv %r0(%r2)
	ldi 5,%r28
.L1000:
	bv %r0(%r2)
	ldi 6,%r28
.L1001:
	bv %r0(%r2)
	ldi 7,%r28
.L1003:
	bv %r0(%r2)
	ldi 9,%r28
.L1004:
	bv %r0(%r2)
	ldi 10,%r28
.L1005:
	bv %r0(%r2)
	ldi 11,%r28
.L1007:
	bv %r0(%r2)
	ldi 13,%r28
.L1008:
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
	b .L1014
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	bv,n %r0(%r2)
.L1014:
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
	movb,=,n %r26,%r26,.L1022
	ldi 0,%r28
.L1021:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r19
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L1021
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L1022:
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
	b,n .L1027
	comib,=,n 0,%r25,.L1028
	ldi 0,%r28
.L1026:
	extrs %r25,31+1-1,1,%r19
	extru %r25,30,31,%r25
	and %r19,%r26,%r19
	zdep %r26,30,31,%r26
	comib,<> 0,%r25,.L1026
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L1027:
	bv %r0(%r2)
	copy %r26,%r28
.L1028:
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
	comb,<< %r25,%r26,.L1031
	ldi 1,%r19
	b .L1037
	ldi 0,%r20
.L1034:
	comb,>>= %r25,%r28,.L1033
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L1051
	copy %r19,%r20
.L1031:
	comib,<=,n 0,%r25,.L1034
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L1037:
	comb,>>,n %r25,%r28,.L1036
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L1036:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L1037
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L1033:
	comib,<> 0,%r19,.L1037
	ldi 0,%r20
	copy %r19,%r20
.L1051:
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
	b,n .L1055
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L1052
	ldi 1,%r28
	ldi 0,%r28
.L1052:
	bv,n %r0(%r2)
.L1055:
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
	b,n .L1059
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L1056
	ldi 1,%r28
	ldi 0,%r28
.L1056:
	bv,n %r0(%r2)
.L1059:
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
	b,n .L1071
	comib,= 0,%r25,.L1067
	ldi 0,%r29
.L1064:
	ldi 1,%r28
	ldi 0,%r21
	ldi 32,%r31
.L1066:
	extrs %r25,31+1-1,1,%r20
	comclr,= %r31,%r28,%r22
	ldi 1,%r22
	and %r20,%r26,%r20
	extrs %r25,30,31,%r25
	ldo 1(%r28),%r28
	comiclr,= 0,%r25,%r19
	ldi 1,%r19
	addl %r21,%r20,%r21
	zdep %r26,30,31,%r26
	and %r19,%r22,%r19
	comib,<> 0,%r19,.L1066
	extru %r28,31,8,%r28
	sub %r0,%r21,%r25
	copy %r25,%r28
	comiclr,<> 0,%r29,%r0
	copy %r21,%r28
	bv,n %r0(%r2)
.L1071:
	sub %r0,%r25,%r25
	b .L1064
	ldi 1,%r29
.L1067:
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
	movb,<,n %r26,%r26,.L1095
	ldi 1,%r28
	ldi 0,%r21
.L1073:
	comib,<= 0,%r25,.L1097
	copy %r26,%r20
	sub %r0,%r25,%r25
	copy %r28,%r21
.L1097:
	comb,<< %r25,%r26,.L1075
	ldi 1,%r19
	b .L1081
	ldi 0,%r28
.L1096:
	comib,= 0,%r19,.L1098
	copy %r19,%r28
.L1075:
	zdep %r25,30,31,%r25
	comb,<< %r25,%r26,.L1096
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L1093
	ldi 0,%r28
.L1081:
	comb,<<,n %r20,%r25,.L1080
	sub %r20,%r25,%r20
	or %r28,%r19,%r28
.L1080:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L1081
	extru %r25,30,31,%r25
	sub %r0,%r28,%r19
	comiclr,= 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L1095:
	sub %r0,%r26,%r26
	ldi 0,%r28
	b .L1073
	ldi 1,%r21
.L1093:
	copy %r19,%r28
.L1098:
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
	movb,>= %r26,%r26,.L1100
	ldi 0,%r22
	sub %r0,%r26,%r26
	ldi 1,%r22
.L1100:
	copy %r26,%r28
	or,>= %r0,%r25,%r19
	subi 0,%r19,%r19
	comb,<< %r19,%r26,.L1101
	ldi 1,%r20
	b .L1123
	sub %r28,%r19,%r21
.L1122:
	comiclr,<> 0,%r20,%r0
	b,n .L1119
.L1101:
	zdep %r19,30,31,%r19
	comb,<< %r19,%r26,.L1122
	zdep %r20,30,31,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L1119
.L1120:
	sub %r28,%r19,%r21
.L1123:
	extru %r20,30,31,%r20
	comclr,<< %r28,%r19,%r0
	copy %r21,%r28
	comib,<> 0,%r20,.L1120
	extru %r19,30,31,%r19
	sub %r0,%r28,%r19
	comiclr,= 0,%r22,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L1119:
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
	comb,>> %r26,%r25,.L1125
	ldi 1,%r22
	b .L1184
	ldi 0,%r19
.L1128:
	zdep %r22,30,31,%r19
	extru %r28,31,16,%r28
	comb,>>= %r28,%r26,.L1127
	extru %r19,31,16,%r19
	comib,= 0,%r19,.L1154
	copy %r19,%r22
	copy %r28,%r25
.L1125:
	extrs %r25,31,16,%r28
	comib,<=,n 0,%r28,.L1128
	zdep %r25,30,31,%r28
	comb,>> %r25,%r26,.L1151
	ldi 0,%r19
	sub %r26,%r25,%r26
	copy %r22,%r19
	extru %r26,31,16,%r26
.L1151:
	extru %r22,15+16-1,16,%r21
	comib,= 0,%r21,.L1154
	extru %r25,30,31,%r20
.L1132:
	comb,>> %r20,%r26,.L1190
	extru %r22,14+16-1,16,%r28
	sub %r26,%r20,%r20
	or %r19,%r21,%r21
	extru %r20,31,16,%r26
	extru %r21,31,16,%r19
.L1190:
	comib,= 0,%r28,.L1154
	extru %r25,29,30,%r20
	comb,>>,n %r20,%r26,.L1134
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1134:
	extru %r22,13+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,28,29,%r20
	comb,>>,n %r20,%r26,.L1135
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1135:
	extru %r22,12+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,27,28,%r20
	comb,>>,n %r20,%r26,.L1136
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1136:
	extru %r22,11+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,26,27,%r20
	comb,>>,n %r20,%r26,.L1137
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1137:
	extru %r22,10+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,25,26,%r20
	comb,>>,n %r20,%r26,.L1138
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1138:
	extru %r22,9+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,24,25,%r20
	comb,<<= %r20,%r26,.L1185
	or %r19,%r28,%r28
.L1139:
	extru %r22,8+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,23,24,%r20
	comb,<<= %r20,%r26,.L1186
	or %r19,%r28,%r28
.L1140:
	extru %r22,7+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,22,23,%r20
	comb,<<= %r20,%r26,.L1187
	or %r19,%r28,%r28
.L1141:
	extru %r22,6+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,21,22,%r20
	comb,<<= %r20,%r26,.L1188
	or %r19,%r28,%r28
.L1142:
	extru %r22,5+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,20,21,%r20
	comb,<<= %r20,%r26,.L1189
	or %r19,%r28,%r28
.L1143:
	extru %r22,4+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,19,20,%r20
	comb,>>,n %r20,%r26,.L1144
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1144:
	extru %r22,3+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,18,19,%r20
	comb,>>,n %r20,%r26,.L1145
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1145:
	extru %r22,2+16-1,16,%r28
	comib,= 0,%r28,.L1154
	extru %r25,17,18,%r20
	comb,>> %r20,%r26,.L1146
	sub %r26,%r20,%r20
	or %r19,%r28,%r28
	extru %r20,31,16,%r26
	extru %r28,31,16,%r19
.L1146:
	extru %r22,1+16-1,16,%r22
	comib,= 0,%r22,.L1154
	extru %r25,16,17,%r25
	comb,>> %r25,%r26,.L1130
	ldi 0,%r28
	sub %r26,%r25,%r25
	depi -1,31,1,%r19
	extru %r25,31,16,%r28
	b .L1130
	extru %r19,31,16,%r19
.L1154:
	copy %r26,%r28
.L1130:
	comiclr,<> 0,%r24,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L1127:
	comib,=,n 0,%r19,.L1130
	copy %r26,%r28
	comb,>>,n %r28,%r26,.L1131
	sub %r26,%r28,%r26
	extru %r22,31,15,%r21
	extru %r25,31,15,%r20
	extru %r26,31,16,%r26
	copy %r28,%r25
	b .L1132
	copy %r19,%r22
.L1185:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L1139
	extru %r28,31,16,%r19
.L1131:
	extru %r22,31,15,%r21
	extru %r25,31,15,%r20
	copy %r19,%r22
	copy %r28,%r25
	b .L1132
	ldi 0,%r19
.L1186:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L1140
	extru %r28,31,16,%r19
.L1187:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L1141
	extru %r28,31,16,%r19
.L1188:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L1142
	extru %r28,31,16,%r19
.L1189:
	sub %r26,%r20,%r20
	extru %r20,31,16,%r26
	b .L1143
	extru %r28,31,16,%r19
.L1184:
	copy %r26,%r28
	comclr,<> %r26,%r25,%r0
	copy %r22,%r19
	comclr,<> %r26,%r25,%r0
	ldi 0,%r28
	b,n .L1130
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
	comb,<< %r25,%r26,.L1192
	ldi 1,%r19
	b .L1198
	ldi 0,%r20
.L1195:
	comb,>>= %r25,%r28,.L1194
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L1212
	copy %r19,%r20
.L1192:
	comib,<=,n 0,%r25,.L1195
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L1198:
	comb,>>,n %r25,%r28,.L1197
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L1197:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L1198
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L1194:
	comib,<> 0,%r19,.L1198
	ldi 0,%r20
	copy %r19,%r20
.L1212:
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
	bb,>=,n %r24,26,.L1214
	subi 63,%r24,%r24
	ldi 0,%r29
	mtsar %r24
	bv %r0(%r2)
	zvdep %r26,32,%r28
.L1214:
	comib,= 0,%r24,.L1217
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
.L1217:
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
	bb,>=,n %r24,26,.L1219
	subi 63,%r24,%r24
	extrs %r25,0,1,%r28
	mtsar %r24
	bv %r0(%r2)
	vextrs %r25,32,%r29
.L1219:
	comib,= 0,%r24,.L1222
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
.L1222:
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
	zdepi -1,31,16,%r31
	comclr,<< %r31,%r26,%r31
	ldi 1,%r31
	zdep %r31,27,28,%r31
	subi 16,%r31,%r19
	mtsar %r19
	ldi 0,%r28
	vshd %r0,%r26,%r19
	zdepi -1,23,8,%r22
	and %r19,%r22,%r22
	comclr,<> %r28,%r22,%r22
	ldi 1,%r22
	zdep %r22,28,29,%r22
	subi 8,%r22,%r29
	mtsar %r29
	addl %r22,%r31,%r22
	vshd %r0,%r19,%r19
	ldi 240,%r21
	and %r19,%r21,%r21
	comclr,<> %r28,%r21,%r21
	ldi 1,%r21
	zdep %r21,29,30,%r21
	subi 4,%r21,%r31
	mtsar %r31
	ldi 12,%r20
	vshd %r0,%r19,%r19
	addl %r21,%r22,%r21
	and %r19,%r20,%r20
	comclr,<> %r28,%r20,%r20
	ldi 1,%r20
	zdep %r20,30,31,%r20
	subi 2,%r20,%r22
	mtsar %r22
	vshd %r0,%r19,%r19
	extrs,< %r19,30,1,%r0
	subi 2,%r19,%r28
.L1227:
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
	b,n .L1233
	comclr,>= %r23,%r25,%r0
	b,n .L1232
	comclr,<<= %r24,%r26,%r0
	b,n .L1233
	comclr,>>= %r24,%r26,%r26
	ldi 1,%r26
	bv %r0(%r2)
	ldo 1(%r26),%r28
.L1233:
	bv %r0(%r2)
	ldi 0,%r28
.L1232:
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
	b,n .L1239
	comclr,>= %r23,%r25,%r0
	b,n .L1238
	comclr,<<= %r24,%r26,%r0
	b,n .L1239
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L1239:
	bv %r0(%r2)
	ldi -1,%r28
.L1238:
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
	bb,>= %r24,26,.L1242
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r25
	copy %r25,%r28
.L1244:
	bv,n %r0(%r2)
.L1242:
	comib,= 0,%r24,.L1245
	ldo -1(%r24),%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	mtsar %r28
	zvdep %r25,32,%r28
	mtsar %r24
	or %r28,%r29,%r29
	vshd %r0,%r25,%r25
	b .L1244
	copy %r25,%r28
.L1245:
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
	ldil L'32768,%r28
	extru %r19,23,24,%r20
	ldo -5738(%r28),%r28
	xor %r20,%r19,%r20
	extru %r20,27,28,%r19
	xor %r19,%r20,%r19
	extru %r19,31,4,%r19
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
	extru %r26,15,16,%r19
	xor %r19,%r26,%r19
	ldil L'32768,%r28
	extru %r19,23,24,%r26
	ldo -5738(%r28),%r28
	xor %r26,%r19,%r26
	extru %r26,27,28,%r19
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
	extru %r25,30,31,%r22
	shd %r25,%r26,1,%r20
	copy %r25,%r28
	copy %r26,%r29
	ldil L'1431650304,%r19
	ldil L'858996736,%r21
	ldo 5461(%r19),%r19
	ldo -3277(%r21),%r21
	and %r22,%r19,%r23
	and %r20,%r19,%r24
	sub %r29,%r24,%r29
	subb %r28,%r23,%r28
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
	ldil L'1431650304,%r28
	extru %r26,30,31,%r19
	ldo 5461(%r28),%r20
	ldil L'858996736,%r28
	and %r19,%r20,%r19
	ldo -3277(%r28),%r28
	sub %r26,%r19,%r26
	ldil L'252641280,%r20
	extru %r26,29,30,%r19
	ldo 3855(%r20),%r20
	and %r26,%r28,%r26
	and %r19,%r28,%r19
	addl %r19,%r26,%r19
	extru %r19,27,28,%r28
	addl %r28,%r19,%r28
	and %r28,%r20,%r28
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
	comib,= 0,%r28,.L1259
	ldil LR'.LC34,%r20
	ldo RR'.LC34(%r20),%r20
	copy %r24,%r28
	fldds 0(%r20),%fr4
.L1256:
	fmpy,dbl %fr4,%fr5,%fr4
.L1254:
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,= 0,%r28,.L1255
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1256
	fmpy,dbl %fr5,%fr5,%fr5
	extru %r28,0,1,%r19
.L1262:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1256
	fmpy,dbl %fr5,%fr5,%fr5
	b .L1262
	extru %r28,0,1,%r19
.L1255:
	comiclr,<= 0,%r24,%r0
	b,n .L1261
	bv,n %r0(%r2)
.L1259:
	ldo RR'.LC34(%r20),%r20
	copy %r24,%r28
	b .L1254
	fldds 0(%r20),%fr4
.L1261:
	fldds 0(%r20),%fr22
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
	comib,= 0,%r28,.L1269
	ldil LR'.LC36,%r20
	ldo RR'.LC36(%r20),%r20
	copy %r25,%r28
	fldws 0(%r20),%fr4L
.L1266:
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1264:
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,= 0,%r28,.L1265
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1266
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extru %r28,0,1,%r19
.L1272:
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1266
	fmpy,sgl %fr22L,%fr22L,%fr22L
	b .L1272
	extru %r28,0,1,%r19
.L1265:
	comiclr,<= 0,%r25,%r0
	b,n .L1271
	bv,n %r0(%r2)
.L1269:
	ldo RR'.LC36(%r20),%r20
	copy %r25,%r28
	b .L1264
	fldws 0(%r20),%fr4L
.L1271:
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
	b,n .L1277
	comclr,>>= %r23,%r25,%r0
	b,n .L1276
	comclr,<<= %r24,%r26,%r0
	b,n .L1277
	comclr,>>= %r24,%r26,%r26
	ldi 1,%r26
	bv %r0(%r2)
	ldo 1(%r26),%r28
.L1277:
	bv %r0(%r2)
	ldi 0,%r28
.L1276:
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
	b,n .L1283
	comclr,>>= %r23,%r25,%r0
	b,n .L1282
	comclr,<<= %r24,%r26,%r0
	b,n .L1283
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L1283:
	bv %r0(%r2)
	ldi -1,%r28
.L1282:
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
