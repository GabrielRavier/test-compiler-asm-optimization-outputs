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
	ldo -1(%r25),%r26
	ldo -1(%r28),%r29
.L4:
	ldbx %r26(%r24),%r31
	addl %r29,%r24,%r1
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L4
	stb %r31,0(%r1)
.L3:
	bv,n %r0(%r2)
.L2:
	comb,= %r25,%r26,.L3
	nop
	comib,= 0,%r24,.L3
	ldo -1(%r24),%r19
	comib,>>= 6,%r19,.L12
	or %r25,%r26,%r1
	extru %r1,31,2,%r20
	comib,<> 0,%r20,.L12
	uaddcm %r26,%r25,%r21
	comib,>>= 2,%r21,.L12
	copy %r24,%r22
	ldi 0,%r29
	depi 0,31,2,%r22
.L6:
	ldwx %r25(%r29),%r23
	addl %r28,%r29,%r26
	ldo 4(%r29),%r29
	comb,<> %r22,%r29,.L6
	stw %r23,0(%r26)
	addl %r25,%r29,%r31
	addl %r28,%r29,%r1
	comb,= %r29,%r24,.L3
	sub %r24,%r29,%r20
	ldbx %r25(%r29),%r24
	comib,= 1,%r20,.L3
	stb %r24,0(%r1)
	ldb 1(%r31),%r25
	comib,= 2,%r20,.L3
	stb %r25,1(%r1)
	ldb 2(%r31),%r19
	bv %r0(%r2)
	stb %r19,2(%r1)
.L12:
	ldi 0,%r23
.L34:
	ldbx %r25(%r23),%r21
	addl %r28,%r23,%r22
	ldo 1(%r23),%r23
	comb,<> %r23,%r24,.L34
	stb %r21,0(%r22)
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
	extrs %r19,31,8,%r1
	comib,= 0,%r1,.L82
	copy %r26,%r28
.L83:
	ldbs,mb 1(%r25),%r20
	extrs %r20,31,8,%r21
	comib,<> 0,%r21,.L83
	stbs,mb %r20,1(%r28)
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
	extrs %r19,31,8,%r21
	comib,<> 0,%r21,.L89
	extru %r25,31,8,%r25
	b,n .L88
.L91:
	extrs %r20,31,8,%r21
	comiclr,<> 0,%r21,%r0
	b,n .L88
.L89:
	extru %r21,31,8,%r1
	comb,<>,n %r25,%r1,.L91
	ldbs,mb 1(%r28),%r20
.L88:
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
	b .L98
	copy %r26,%r28
.L101:
	comib,= 0,%r1,.L100
	ldo 1(%r28),%r28
.L98:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r1
	comb,<> %r25,%r1,.L101
	nop
	bv,n %r0(%r2)
.L100:
	bv %r0(%r2)
	copy %r1,%r28
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
	extrs %r19,31,8,%r22
	extrs %r21,31,8,%r28
	ldi 1,%r20
	comb,= %r22,%r28,.L103
	ldo -1(%r25),%r25
	b .L112
	extru %r21,31,8,%r28
.L105:
	ldo 1(%r20),%r20
	extrs %r21,31,8,%r28
	ldbx %r25(%r20),%r1
	extrs %r1,31,8,%r22
	comclr,= %r22,%r28,%r0
	b,n .L111
.L103:
	comib,<>,n 0,%r28,.L105
	ldbx %r26(%r20),%r21
	extru %r22,31,8,%r23
	bv %r0(%r2)
	sub %r28,%r23,%r28
.L111:
	extru %r21,31,8,%r28
.L112:
	extru %r22,31,8,%r23
	bv %r0(%r2)
	sub %r28,%r23,%r28
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
	comib,= 0,%r28,.L113
	copy %r26,%r1
	ldbs,mb 1(%r1),%r19
.L118:
	extrs %r19,31,8,%r20
	comib,<>,n 0,%r20,.L118
	ldbs,mb 1(%r1),%r19
	sub %r1,%r26,%r28
.L113:
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
	movb,= %r24,%r28,.L119
	ldo -1(%r28),%r31
	copy %r25,%r19
	ldb 0(%r26),%r29
	comib,<> 0,%r29,.L123
	addl %r25,%r31,%r23
	b .L135
	ldb 0(%r25),%r21
.L137:
	comb,=,n %r23,%r19,.L122
	ldbs,mb 1(%r26),%r28
	extru %r28,31,8,%r29
	comib,= 0,%r29,.L136
	ldo 1(%r19),%r24
	copy %r24,%r19
.L123:
	ldb 0(%r19),%r21
	comclr,<> %r29,%r21,%r22
	ldi 1,%r22
	comiclr,= 0,%r21,%r20
	ldi 1,%r20
	and %r20,%r22,%r1
	comib,<> 0,%r1,.L137
	nop
.L122:
	sub %r29,%r21,%r28
.L119:
	bv,n %r0(%r2)
.L136:
	ldb 1(%r19),%r21
	b .L119
	sub %r29,%r21,%r28
.L135:
	b .L119
	sub %r29,%r21,%r28
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
	comib,>= 1,%r24,.L138
	depi 0,31,1,%r24
	addl %r26,%r24,%r20
.L140:
	ldb 1(%r26),%r19
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r19,-2(%r25)
	comb,<> %r20,%r26,.L140
	stb %r28,-1(%r25)
.L138:
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
	comiclr,<< 32,%r28,%r1
	ldi 1,%r1
	comiclr,= 0,%r1,%r0
	b,n .L154
	comiclr,<< 31,%r26,%r19
	ldi 1,%r19
	comib,<> 0,%r19,.L154
	ldo -40(%r26),%r20
	ldi 1,%r28
	ldo -8192(%r20),%r21
	comb,>>= %r28,%r21,.L152
	zdepi -7,31,16,%r22
	sub %r26,%r22,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L152:
	bv,n %r0(%r2)
.L154:
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
	comb,>>= %r28,%r26,.L163
	ldo -42(%r26),%r1
	ldil L'49152,%r19
	ldo -8192(%r1),%r20
	ldo -2091(%r19),%r21
	comb,>>= %r21,%r20,.L161
	ldil L'16384,%r22
	ldo -8153(%r22),%r23
	comclr,<< %r23,%r26,%r28
	ldi 1,%r28
	comb,>>= %r23,%r26,.L161
	ldil L'-57344,%r24
	ldi 8184,%r25
	addl %r26,%r24,%r29
	comb,>>= %r25,%r29,.L161
	zdepi -1,29,14,%r31
	ldil L'1048576,%r1
	sub %r26,%r31,%r20
	ldo 3(%r1),%r19
	comb,<<,n %r19,%r20,.L157
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
.L157:
	bv,n %r0(%r2)
.L161:
	bv %r0(%r2)
	ldi 1,%r28
.L163:
	ldo 1(%r26),%r21
	extru %r21,31,7,%r22
	comiclr,>>= 32,%r22,%r28
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
	comib,>>= 9,%r19,.L164
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L164:
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
	b .L171
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L172
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L174
	bv %r0(%r2)
	fcpy,dbl %fr0,%fr4
.L174:
	bv %r0(%r2)
	fsub,dbl %fr5,%fr7,%fr4
.L171:
	bv %r0(%r2)
	fcpy,dbl %fr5,%fr4
.L172:
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
	b .L177
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L181
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L183
	fcpy,sgl %fr0,%fr4L
.L177:
	bv,n %r0(%r2)
.L183:
	bv %r0(%r2)
	fsub,sgl %fr4L,%fr5L,%fr4L
.L181:
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
	b .L192
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L193
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L198
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L186
.L193:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L186:
	bv,n %r0(%r2)
.L198:
	comib,= 0,%r21,.L193
	nop
	bv,n %r0(%r2)
.L192:
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
	b .L205
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L206
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,= %r19,%r28,%r0
	b,n .L210
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L205
	fcpy,sgl %fr4L,%fr5L
.L205:
	fcpy,sgl %fr5L,%fr4L
.L199:
	bv,n %r0(%r2)
.L210:
	comib,<> 0,%r28,.L199
	fcpy,sgl %fr5L,%fr4L
.L206:
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
	b .L217
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L218
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L223
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L211
.L218:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L211:
	bv,n %r0(%r2)
.L223:
	comib,= 0,%r21,.L218
	nop
	bv,n %r0(%r2)
.L217:
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
	b .L230
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L231
	copy %r28,%r21
	copy %r19,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L226
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L230
.L224:
	bv,n %r0(%r2)
.L226:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L224
.L230:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L231:
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
	b .L241
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L235
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L237
	comiclr,<> 0,%r28,%r0
	b,n .L241
.L235:
	bv,n %r0(%r2)
.L237:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L235
.L241:
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
	b .L252
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L253
	copy %r28,%r21
	copy %r19,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L248
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L252
.L246:
	bv,n %r0(%r2)
.L248:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L246
.L252:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L253:
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
	movb,= %r26,%r26,.L260
	addil LR's.0-$global$,%r27
	ldil LR'digits,%r21
	ldo RR's.0-$global$(%r1),%r28
	ldo RR'digits(%r21),%r22
	copy %r28,%r19
.L259:
	extru %r26,31,6,%r20
	ldbx %r22(%r20),%r23
	stb %r23,0(%r19)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L259
	ldo 1(%r19),%r19
	bv %r0(%r2)
	stb %r0,0(%r19)
.L260:
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
	ldo RR'seed-$global$(%r1),%r19
	stw %r26,4(%r19)
	bv %r0(%r2)
	stw %r0,0(%r19)
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
	ldo RR'seed-$global$(%r1),%r25
	ldo R'1284865837(%r29),%r29
	ldw 0(%r25),%r21
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr4L
	stws %r21,-16(%sp)
	fldws -16(%sp),%fr4R
	xmpyu %fr4L,%fr4R,%fr5
	fldws 4(%r25),%fr22L
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr5R
	xmpyu %fr5R,%fr22L,%fr6
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstds %fr6,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r22,%r29,%r28
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	copy %r24,%r20
	addl %r23,%r28,%r19
	addi 1,%r20,%r29
	addc %r19,%r0,%r28
	stw %r28,0(%r25)
	stw %r29,4(%r25)
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
	movb,=,n %r25,%r25,.L270
	ldw 0(%r25),%r28
	stw %r25,4(%r26)
	stw %r28,0(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r1
	comiclr,= 0,%r1,%r0
	stw %r26,4(%r1)
.L264:
	bv,n %r0(%r2)
.L270:
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
	comib,=,n 0,%r28,.L272
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L272:
	ldw 4(%r26),%r1
	comiclr,= 0,%r1,%r0
	stw %r28,0(%r1)
.L271:
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
	comib,= 0,%r6,.L281
	copy %r23,%r5
	copy %r25,%r3
	b .L283
	ldi 0,%r4
.L295:
	ldo 1(%r4),%r4
	comb,= %r4,%r6,.L281
	addl %r3,%r5,%r3
.L283:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L295
	copy %r3,%r8
.L280:
	copy %r8,%r28
.L296:
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
.L281:
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	ldo 1(%r6),%r1
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr4
	stw %r1,0(%r10)
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	comib,= 0,%r5,.L280
	addl %r11,%r29,%r8
	copy %r5,%r24
	copy %r7,%r25
	bl memmove,%r2
	copy %r8,%r26
	b .L296
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
	comib,= 0,%r8,.L298
	copy %r26,%r5
	copy %r25,%r3
	b .L300
	ldi 0,%r4
.L308:
	ldo 1(%r4),%r4
	comb,= %r4,%r8,.L298
	addl %r3,%r6,%r3
.L300:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L308
	copy %r3,%r7
.L297:
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
.L298:
	b .L297
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
	extrs %r19,31,8,%r23
	ldo -9(%r23),%r28
	comib,>>= 4,%r28,.L332
	ldi 32,%r20
	comiclr,<> 32,%r23,%r1
	ldi 1,%r1
	comib,= 0,%r1,.L337
	ldi 43,%r24
.L332:
	ldbs,mb 1(%r26),%r21
.L338:
	extrs %r21,31,8,%r23
	ldo -9(%r23),%r22
	comib,>>=,n 4,%r22,.L338
	ldbs,mb 1(%r26),%r21
	comb,=,n %r20,%r23,.L338
	ldbs,mb 1(%r26),%r21
	ldi 43,%r24
.L337:
	comb,= %r24,%r23,.L314
	ldi 45,%r31
	comb,<> %r31,%r23,.L335
	ldo -48(%r23),%r1
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r23
	ldo -48(%r23),%r28
	comib,<< 9,%r28,.L323
	ldo 1(%r26),%r26
	ldi 1,%r24
.L317:
	ldi 0,%r29
.L320:
	ldo -48(%r23),%r23
	sh2addl %r29,%r29,%r20 
	ldbs,mb 1(%r26),%r22
	extrs %r23,31,8,%r25
	zdep %r20,30,31,%r21
	extrs %r22,31,8,%r23
	ldo -48(%r23),%r31
	comib,>>= 9,%r31,.L320
	sub %r21,%r25,%r29
	sub %r25,%r21,%r28
	comiclr,= 0,%r24,%r0
	copy %r29,%r28
	bv,n %r0(%r2)
.L335:
	comib,>>= 9,%r1,.L317
	ldi 0,%r24
.L323:
	ldi 0,%r28
.L336:
	bv,n %r0(%r2)
.L314:
	ldb 1(%r26),%r25
	ldi 0,%r24
	extrs %r25,31,8,%r23
	ldo -48(%r23),%r29
	comib,>>= 9,%r29,.L317
	ldo 1(%r26),%r26
	b .L336
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
	extrs %r19,31,8,%r23
	ldo -9(%r23),%r28
	comib,>>= 4,%r28,.L359
	ldi 32,%r20
	comiclr,<> 32,%r23,%r1
	ldi 1,%r1
	comib,= 0,%r1,.L362
	ldi 43,%r24
.L359:
	ldbs,mb 1(%r26),%r21
.L363:
	extrs %r21,31,8,%r23
	ldo -9(%r23),%r22
	comib,>>=,n 4,%r22,.L363
	ldbs,mb 1(%r26),%r21
	comb,=,n %r20,%r23,.L363
	ldbs,mb 1(%r26),%r21
	ldi 43,%r24
.L362:
	comb,= %r24,%r23,.L343
	ldi 45,%r31
	comb,= %r31,%r23,.L361
	ldo -48(%r23),%r1
	comib,<< 9,%r1,.L351
	ldi 0,%r24
.L345:
	ldi 0,%r29
.L348:
	ldo -48(%r23),%r23
	sh2addl %r29,%r29,%r20 
	ldbs,mb 1(%r26),%r22
	extrs %r23,31,8,%r25
	zdep %r20,30,31,%r21
	extrs %r22,31,8,%r23
	ldo -48(%r23),%r31
	comib,>>= 9,%r31,.L348
	sub %r21,%r25,%r29
	sub %r25,%r21,%r28
	comiclr,= 0,%r24,%r0
	copy %r29,%r28
	bv,n %r0(%r2)
.L361:
	ldb 1(%r26),%r19
	ldi 1,%r24
	extrs %r19,31,8,%r23
	ldo -48(%r23),%r28
	comib,>>= 9,%r28,.L345
	ldo 1(%r26),%r26
.L351:
	bv %r0(%r2)
	ldi 0,%r28
.L343:
	ldb 1(%r26),%r25
	extrs %r25,31,8,%r23
	ldo -48(%r23),%r29
	comib,<< 9,%r29,.L351
	ldo 1(%r26),%r26
	b .L345
	ldi 0,%r24
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
	extrs %r19,31,8,%r25
	ldo -9(%r25),%r28
	comib,>>= 4,%r28,.L386
	ldi 32,%r20
	comiclr,<> 32,%r25,%r1
	ldi 1,%r1
	comib,= 0,%r1,.L390
	ldi 43,%r23
.L386:
	ldbs,mb 1(%r26),%r21
.L391:
	extrs %r21,31,8,%r25
	ldo -9(%r25),%r22
	comib,>>=,n 4,%r22,.L391
	ldbs,mb 1(%r26),%r21
	comb,=,n %r20,%r25,.L391
	ldbs,mb 1(%r26),%r21
	ldi 43,%r23
.L390:
	comb,= %r23,%r25,.L368
	ldi 45,%r31
	comb,<> %r31,%r25,.L389
	ldo -48(%r25),%r1
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r25
	ldo -48(%r25),%r28
	comib,<< 9,%r28,.L377
	ldo 1(%r26),%r26
	ldi 1,%r31
.L371:
	ldi 0,%r23
	ldi 0,%r24
	shd %r23,%r24,30,%r28
.L392:
	ldo -48(%r25),%r21
	zdep %r24,29,30,%r29
	extrs %r21,31,8,%r25
	add %r24,%r29,%r29
	addc %r23,%r28,%r28
	ldbs,mb 1(%r26),%r24
	copy %r25,%r22
	extrs %r25,0,1,%r21
	shd %r28,%r29,31,%r28
	extrs %r24,31,8,%r25
	zdep %r29,30,31,%r29
	ldo -48(%r25),%r19
	sub %r29,%r22,%r24
	subb %r28,%r21,%r23
	comib,>>=,n 9,%r19,.L392
	shd %r23,%r24,30,%r28
	comiclr,= 0,%r31,%r0
	b,n .L364
	sub %r22,%r29,%r24
	subb %r21,%r28,%r23
.L364:
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L389:
	comib,>>= 9,%r1,.L371
	ldi 0,%r31
.L377:
	ldi 0,%r23
	ldi 0,%r24
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L368:
	ldb 1(%r26),%r24
	ldi 0,%r31
	extrs %r24,31,8,%r25
	ldo -48(%r25),%r29
	comib,>>= 9,%r29,.L371
	ldo 1(%r26),%r26
	b,n .L377
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
	movb,<> %r24,%r3,.L397
	ldw -180(%r30),%r8
	b .L393
	ldi 0,%r5
.L406:
	comib,= 0,%r28,.L393
	uaddcm %r3,%r4,%r3
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r2
	comib,= 0,%r3,.L394
	addl %r5,%r2,%r6
.L397:
	extru %r3,30,31,%r4
.L407:
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
	movb,>= %r28,%r28,.L406
	nop
	copy %r4,%r3
	comib,<> 0,%r3,.L407
	extru %r3,30,31,%r4
.L394:
	ldi 0,%r5
.L393:
	copy %r5,%r28
	ldo -104(%r30),%r19
	ldw -148(%r30),%r2
	ldw -124(%r30),%r7
	ldw -120(%r30),%r6
	ldw -116(%r30),%r5
	ldw -112(%r30),%r4
	ldw -108(%r30),%r3
	fldds,ma 8(%r19),%fr12
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
	movb,= %r24,%r3,.L413
	ldw -184(%r30),%r9
.L421:
	extrs %r3,30,31,%r4
.L423:
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
	b,n .L408
	comib,>= 0,%r28,.L411
	ldo -1(%r3),%r2
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r6
	extrs %r2,30,31,%r3
	comib,<> 0,%r3,.L421
	addl %r5,%r6,%r6
.L413:
	ldi 0,%r5
.L408:
	copy %r5,%r28
	ldo -96(%r30),%r19
	ldw -148(%r30),%r2
	ldw -124(%r30),%r8
	ldw -120(%r30),%r7
	ldw -116(%r30),%r6
	ldw -112(%r30),%r5
	ldw -108(%r30),%r4
	ldw -104(%r30),%r3
	fldds,ma 8(%r19),%fr12
	bv %r0(%r2)
	ldwm -128(%r30),%r9
.L411:
	comib,= 0,%r4,.L413
	copy %r4,%r3
	b .L423
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
	b,n .L432
	b,n .L431
.L434:
	comiclr,<> 0,%r28,%r0
	b,n .L431
.L432:
	comb,<>,n %r28,%r25,.L434
	ldws,mb 4(%r26),%r28
	copy %r26,%r28
.L431:
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
	comb,= %r20,%r19,.L440
	ldo -4(%r25),%r25
	b,n .L441
.L442:
	ldo 4(%r28),%r28
	ldwx %r25(%r28),%r20
	comclr,= %r20,%r19,%r0
	b,n .L441
.L440:
	comib,<>,n 0,%r19,.L442
	ldwx %r26(%r28),%r19
.L441:
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
.L449:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L449
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
	comib,=,n 0,%r28,.L451
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L456:
	comib,<>,n 0,%r19,.L456
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r1
	extrs %r1,29,30,%r28
.L451:
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
	b,n .L458
	b,n .L457
.L471:
	comib,= 0,%r19,.L462
	ldo -1(%r28),%r28
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L457
	ldo 4(%r25),%r25
.L458:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r20
	comb,= %r19,%r20,.L471
	nop
.L462:
	ldw 0(%r26),%r1
	ldw 0(%r25),%r21
	comclr,>= %r21,%r1,%r28
	ldi 1,%r28
	comclr,<= %r21,%r1,%r0
	ldi -1,%r28
.L457:
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
	movb,<> %r24,%r24,.L473
	copy %r24,%r28
	b,n .L480
.L475:
	comib,= 0,%r24,.L476
	ldo 4(%r26),%r26
.L473:
	ldw 0(%r26),%r28
	comb,<>,n %r25,%r28,.L475
	ldo -1(%r24),%r24
	bv %r0(%r2)
	copy %r26,%r28
.L476:
	copy %r24,%r28
.L480:
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
	b,n .L482
	b,n .L481
.L484:
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L481
	ldo 4(%r25),%r25
.L482:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,= %r19,%r20,.L484
	ldo -1(%r28),%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L481:
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
	movb,= %r24,%r24,.L494
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L494:
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
	comb,= %r25,%r26,.L506
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,<<= %r19,%r20,.L513
	ldi 0,%r22
	comib,=,n 0,%r24,.L506
	ldo -1(%r24),%r24
.L503:
	ldwx,s %r24(%r25),%r23
	sh2addl %r24,%r28,%r26 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L503
	stw %r23,0(%r26)
.L506:
	bv,n %r0(%r2)
.L513:
	comb,= %r22,%r24,.L506
	nop
.L501:
	ldwx,s %r22(%r25),%r21
	sh2addl %r22,%r28,%r1 
	ldo 1(%r22),%r22
	comb,<> %r22,%r24,.L501
	stw %r21,0(%r1)
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
	movb,= %r24,%r24,.L515
	copy %r26,%r28
	ldi 0,%r19
.L516:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L516
	stw %r25,0(%r20)
.L515:
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
	b,n .L522
	comib,=,n 0,%r24,.L521
	ldo -1(%r26),%r22
	ldo -1(%r25),%r23
.L524:
	ldbx %r22(%r24),%r29
	addl %r23,%r24,%r25
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L524
	stb %r29,0(%r25)
.L521:
	bv,n %r0(%r2)
.L522:
	comb,= %r25,%r26,.L521
	nop
	comib,= 0,%r24,.L521
	ldo -1(%r24),%r28
	comib,>>= 6,%r28,.L532
	or %r25,%r26,%r1
	extru %r1,31,2,%r19
	comib,<> 0,%r19,.L532
	uaddcm %r25,%r26,%r20
	comib,>>= 2,%r20,.L532
	copy %r24,%r21
	ldi 0,%r29
	depi 0,31,2,%r21
.L526:
	ldwx %r26(%r29),%r22
	addl %r25,%r29,%r23
	ldo 4(%r29),%r29
	comb,<> %r21,%r29,.L526
	stw %r22,0(%r23)
	addl %r25,%r29,%r25
	addl %r26,%r29,%r31
	comb,= %r29,%r24,.L521
	sub %r24,%r29,%r1
	ldbx %r26(%r29),%r24
	comib,= 1,%r1,.L521
	stb %r24,0(%r25)
	ldb 1(%r31),%r26
	comib,= 2,%r1,.L521
	stb %r26,1(%r25)
	ldb 2(%r31),%r28
	bv %r0(%r2)
	stb %r28,2(%r25)
.L532:
	ldi 0,%r21
.L554:
	ldbx %r26(%r21),%r20
	addl %r25,%r21,%r19
	ldo 1(%r21),%r21
	comb,<> %r21,%r24,.L554
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
	bb,>= %r24,26,.L556
	subi 31,%r24,%r19
	subi 31,%r24,%r28
	ldi 0,%r29
	mtsar %r28
	sub %r0,%r24,%r24
	zvdep %r26,32,%r23
	bb,>= %r24,26,.L558
	extru %r24,31,6,%r31
.L560:
	mtsar %r31
	vshd %r0,%r25,%r21
	ldi 0,%r25
	or %r21,%r29,%r29
	bv %r0(%r2)
	or %r25,%r23,%r28
.L556:
	mtsar %r19
	uaddcm %r0,%r24,%r20
	zvdep %r25,32,%r21
	mtsar %r20
	extru %r26,30,31,%r1
	sub %r0,%r24,%r24
	vshd %r0,%r1,%r22
	extru %r24,31,6,%r31
	mtsar %r19
	or %r22,%r21,%r23
	bb,< %r24,26,.L560
	zvdep %r26,32,%r29
.L558:
	mtsar %r31
	zdep %r25,30,31,%r28
	vshd %r0,%r26,%r26
	vshd %r0,%r25,%r25
	uaddcm %r0,%r31,%r1
	subi 31,%r1,%r20
	mtsar %r20
	zvdep %r28,32,%r19
	or %r25,%r23,%r28
	or %r19,%r26,%r21
	bv %r0(%r2)
	or %r21,%r29,%r29
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
	bb,>= %r24,26,.L562
	mtsar %r24
	ldi 0,%r22
	sub %r0,%r24,%r24
	vshd %r0,%r25,%r23
	bb,>= %r24,26,.L564
	extru %r24,31,6,%r29
.L566:
	subi 31,%r29,%r25
	ldi 0,%r21
	mtsar %r25
	or %r21,%r23,%r29
	zvdep %r26,32,%r26
	bv %r0(%r2)
	or %r26,%r22,%r28
.L562:
	uaddcm %r0,%r24,%r28
	vshd %r0,%r26,%r20
	zdep %r25,30,31,%r19
	subi 31,%r28,%r1
	vshd %r0,%r25,%r22
	sub %r0,%r24,%r24
	mtsar %r1
	extru %r24,31,6,%r29
	zvdep %r19,32,%r21
	bb,< %r24,26,.L566
	or %r21,%r20,%r23
.L564:
	subi 31,%r29,%r31
	mtsar %r31
	uaddcm %r0,%r29,%r28
	zvdep %r25,32,%r1
	mtsar %r28
	extru %r26,30,31,%r19
	vshd %r0,%r19,%r20
	mtsar %r31
	zvdep %r26,32,%r21
	or %r20,%r1,%r26
	or %r21,%r23,%r29
	bv %r0(%r2)
	or %r26,%r22,%r28
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
	sub %r0,%r25,%r1
	zvdep %r26,32,%r19
	extru %r1,31,4,%r20
	mtsar %r20
	vshd %r0,%r26,%r21
	or %r19,%r21,%r22
	bv %r0(%r2)
	extru %r22,31,16,%r28
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
	sub %r0,%r25,%r1
	extru %r1,31,4,%r19
	subi 31,%r19,%r20
	mtsar %r20
	zvdep %r26,32,%r21
	or %r28,%r21,%r22
	bv %r0(%r2)
	extru %r22,31,16,%r28
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
	sub %r0,%r25,%r1
	zvdep %r26,32,%r19
	extru %r1,31,3,%r20
	mtsar %r20
	vshd %r0,%r26,%r21
	or %r19,%r21,%r22
	bv %r0(%r2)
	extru %r22,31,8,%r28
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
	sub %r0,%r25,%r1
	extru %r1,31,3,%r19
	subi 31,%r19,%r20
	mtsar %r20
	zvdep %r26,32,%r21
	or %r28,%r21,%r22
	bv %r0(%r2)
	extru %r22,31,8,%r28
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
	b .L581
	ldi 32,%r20
.L584:
	comclr,<> %r20,%r28,%r0
	b,n .L583
.L581:
	mtsar %r28
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r1
	comib,= 0,%r1,.L584
	ldo 1(%r28),%r28
	bv,n %r0(%r2)
.L583:
	bv %r0(%r2)
	copy %r1,%r28
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
	movb,=,n %r26,%r26,.L588
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L585
	ldi 1,%r28
.L587:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L587
	ldo 1(%r28),%r28
.L585:
	bv,n %r0(%r2)
.L588:
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
	ldo RR'.LC0(%r28),%r1
	fldws 0(%r1),%fr22L
	fcmp,sgl,!< %fr4L,%fr22L
	ftest
	b .L591
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r20
	fldws 0(%r20),%fr4R
	fcmp,sgl,!> %fr4L,%fr4R
	ftest
	b,n .L591
	ldi 0,%r28
.L591:
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
	ldo RR'.LC4(%r28),%r1
	fldds 0(%r1),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L595
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r20
	fldds 0(%r20),%fr4
	fcmp,dbl,!> %fr5,%fr4
	ftest
	b,n .L595
	ldi 0,%r28
.L595:
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
	ldo RR'.LC8(%r28),%r1
	fldds 0(%r1),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L599
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r20
	fldds 0(%r20),%fr4
	fcmp,dbl,!> %fr5,%fr4
	ftest
	b,n .L599
	ldi 0,%r28
.L599:
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
	b,n .L605
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L605
	comib,> 0,%r25,.L617
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r1
	fldws 0(%r1),%fr4R
.L606:
	extru %r25,31,1,%r21
	comib,= 0,%r21,.L620
	extru %r25,0,1,%r22
.L608:
	fmpy,sgl %fr4L,%fr4R,%fr4L
	extru %r25,0,1,%r22
.L620:
	addl %r22,%r25,%r25
	extrs %r25,30,31,%r25
	comib,= 0,%r25,.L605
	extru %r25,31,1,%r23
	comib,<> 0,%r23,.L608
	fmpy,sgl %fr4R,%fr4R,%fr4R
	extru %r25,0,1,%r24
.L619:
	addl %r24,%r25,%r26
	extrs %r26,30,31,%r25
	extru %r25,31,1,%r23
	comib,<> 0,%r23,.L608
	fmpy,sgl %fr4R,%fr4R,%fr4R
	b .L619
	extru %r25,0,1,%r24
.L605:
	bv,n %r0(%r2)
.L617:
	ldil LR'.LC13,%r19
	ldo RR'.LC13(%r19),%r20
	b .L606
	fldws 0(%r20),%fr4R
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
	b .L622
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L622
	comib,> 0,%r24,.L634
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r1
	fldds 0(%r1),%fr5
.L623:
	extru %r24,31,1,%r21
	comib,= 0,%r21,.L637
	extru %r24,0,1,%r22
.L625:
	fmpy,dbl %fr4,%fr5,%fr4
	extru %r24,0,1,%r22
.L637:
	addl %r22,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L622
	extru %r24,31,1,%r23
	comib,<> 0,%r23,.L625
	fmpy,dbl %fr5,%fr5,%fr5
	extru %r24,0,1,%r25
.L636:
	addl %r25,%r24,%r26
	extrs %r26,30,31,%r24
	extru %r24,31,1,%r23
	comib,<> 0,%r23,.L625
	fmpy,dbl %fr5,%fr5,%fr5
	b .L636
	extru %r24,0,1,%r25
.L622:
	bv,n %r0(%r2)
.L634:
	ldil LR'.LC17,%r19
	ldo RR'.LC17(%r19),%r20
	b .L623
	fldds 0(%r20),%fr5
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
	b .L639
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L639
	comib,> 0,%r24,.L651
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r1
	fldds 0(%r1),%fr5
.L640:
	extru %r24,31,1,%r21
	comib,= 0,%r21,.L654
	extru %r24,0,1,%r22
.L642:
	fmpy,dbl %fr4,%fr5,%fr4
	extru %r24,0,1,%r22
.L654:
	addl %r22,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L639
	extru %r24,31,1,%r23
	comib,<> 0,%r23,.L642
	fmpy,dbl %fr5,%fr5,%fr5
	extru %r24,0,1,%r25
.L653:
	addl %r25,%r24,%r26
	extrs %r26,30,31,%r24
	extru %r24,31,1,%r23
	comib,<> 0,%r23,.L642
	fmpy,dbl %fr5,%fr5,%fr5
	b .L653
	extru %r24,0,1,%r25
.L639:
	bv,n %r0(%r2)
.L651:
	ldil LR'.LC20,%r19
	ldo RR'.LC20(%r19),%r20
	b .L640
	fldds 0(%r20),%fr5
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
	movb,= %r24,%r24,.L656
	copy %r26,%r28
	ldo -1(%r24),%r19
	comib,>>= 3,%r19,.L663
	or %r26,%r25,%r1
	extru %r1,31,2,%r26
	comib,<> 0,%r26,.L663
	copy %r24,%r31
	depi 0,31,2,%r31
.L658:
	ldwx %r28(%r26),%r22
	ldwx %r25(%r26),%r20
	addl %r28,%r26,%r21
	xor %r20,%r22,%r23
	ldo 4(%r26),%r26
	comb,<> %r31,%r26,.L658
	stw %r23,0(%r21)
	addl %r28,%r26,%r29
	addl %r25,%r26,%r1
	comb,= %r26,%r24,.L656
	sub %r24,%r26,%r31
	ldbx %r28(%r26),%r24
	ldbx %r25(%r26),%r25
	xor %r24,%r25,%r19
	comib,= 1,%r31,.L656
	stb %r19,0(%r29)
	ldb 1(%r29),%r22
	ldb 1(%r1),%r20
	xor %r20,%r22,%r21
	comib,= 2,%r31,.L656
	stb %r21,1(%r29)
	ldb 2(%r29),%r23
	ldb 2(%r1),%r26
	xor %r26,%r23,%r1
	stb %r1,2(%r29)
.L656:
	bv,n %r0(%r2)
.L663:
	ldi 0,%r19
.L675:
	ldbx %r28(%r19),%r29
	ldbx %r25(%r19),%r31
	addl %r28,%r19,%r22
	xor %r31,%r29,%r20
	ldo 1(%r19),%r19
	comb,<> %r19,%r24,.L675
	stb %r20,0(%r22)
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
	comib,= 0,%r19,.L683
	copy %r26,%r28
	copy %r26,%r23
	ldbs,mb 1(%r23),%r20
.L693:
	extrs %r20,31,8,%r1
	comib,<>,n 0,%r1,.L693
	ldbs,mb 1(%r23),%r20
.L691:
	comiclr,<> 0,%r24,%r0
	b,n .L680
.L692:
	ldb 0(%r25),%r21
	stb %r21,0(%r23)
	extrs %r21,31,8,%r22
	comib,= 0,%r22,.L682
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L692
	ldo 1(%r23),%r23
.L680:
	stb %r0,0(%r23)
.L682:
	bv,n %r0(%r2)
.L683:
	b .L691
	copy %r26,%r23
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
	movb,= %r25,%r25,.L694
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L703:
	comiclr,= 0,%r19,%r0
	b,n .L697
.L694:
	bv,n %r0(%r2)
.L697:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L703
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
	extrs %r21,31,8,%r23
	comib,= 0,%r23,.L709
	copy %r26,%r28
	b .L708
	copy %r25,%r20
.L707:
	comb,= %r23,%r1,.L706
	ldo 1(%r20),%r20
.L708:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r1
	comib,<> 0,%r1,.L707
	nop
	ldbs,mb 1(%r28),%r22
	extrs %r22,31,8,%r23
	comib,<>,n 0,%r23,.L708
	copy %r25,%r20
.L709:
	copy %r23,%r28
.L706:
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
.L714:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r1
	comclr,<> %r25,%r1,%r0
	copy %r26,%r28
	comib,<> 0,%r1,.L714
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
	comib,= 0,%r31,.L728
	copy %r25,%r19
	ldbs,mb 1(%r19),%r28
.L740:
	extrs %r28,31,8,%r1
	comib,<>,n 0,%r1,.L740
	ldbs,mb 1(%r19),%r28
	comb,= %r25,%r19,.L728
	sub %r19,%r25,%r20
	ldo -1(%r25),%r29
	extru %r31,31,8,%r23
	b .L737
	addl %r29,%r20,%r29
.L738:
	comib,= 0,%r28,.L716
	ldo 1(%r26),%r26
.L737:
	ldb 0(%r26),%r21
.L741:
	extrs %r21,31,8,%r28
	comb,<> %r31,%r28,.L738
	copy %r25,%r20
	copy %r23,%r28
	b .L720
	copy %r26,%r21
.L739:
	comclr,<> %r28,%r24,%r22
	ldi 1,%r22
	comiclr,= 0,%r24,%r19
	ldi 1,%r19
	and %r19,%r22,%r1
	comib,=,n 0,%r1,.L721
	ldbs,mb 1(%r21),%r28
	extru %r28,31,8,%r28
	comib,= 0,%r28,.L721
	ldo 1(%r20),%r20
.L720:
	comb,<> %r29,%r20,.L739
	ldb 0(%r20),%r24
.L721:
	ldb 0(%r20),%r24
	comb,=,n %r28,%r24,.L728
	ldo 1(%r26),%r26
	b .L741
	ldb 0(%r26),%r21
.L728:
	copy %r26,%r28
.L716:
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
	b .L749
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L750
	bv,n %r0(%r2)
.L750:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L745
	bv,n %r0(%r2)
.L745:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r19
	depi,tr 1,0,1,%r19
	depi 0,0,1,%r19
	copy %r29,%r20
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L749:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L745
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
	movb,= %r23,%r23,.L753
	copy %r26,%r28
	comb,>> %r23,%r25,.L764
	sub %r25,%r23,%r25
	addl %r26,%r25,%r22
	comb,<<,n %r22,%r26,.L764
	ldb 0(%r24),%r29
	b .L759
	extrs %r29,31,8,%r29
.L763:
	copy %r31,%r28
.L755:
	comclr,<<= %r28,%r22,%r0
	b,n .L764
.L759:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r1
	comb,<> %r29,%r1,.L763
	ldo 1(%r28),%r31
	comiclr,<> 1,%r23,%r0
	b,n .L753
.L758:
	b .L756
	ldi 1,%r1
.L757:
	comclr,<> %r23,%r1,%r0
	b,n .L753
.L756:
	ldbx %r28(%r1),%r21
	ldbx %r24(%r1),%r20
	comb,=,n %r20,%r21,.L757
	ldo 1(%r1),%r1
	comb,>>,n %r31,%r22,.L764
	ldb 0(%r31),%r26
	extrs %r26,31,8,%r25
	comb,<> %r25,%r29,.L755
	ldo 1(%r31),%r28
	copy %r31,%r19
	copy %r28,%r31
	b .L758
	copy %r19,%r28
.L764:
	ldi 0,%r28
.L753:
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
	movb,= %r24,%r3,.L773
	copy %r26,%r4
	bl memmove,%r2
	nop
.L773:
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
	b .L794
	ldil LR'.LC26,%r19
	ldo RR'.LC26(%r19),%r1
	fldds 0(%r1),%fr22
	fcmp,dbl,!>= %fr5,%fr22
	ftest
	b .L780
	ldi 0,%r21
	ldil LR'.LC27,%r1
	ldo RR'.LC27(%r1),%r20
	fldds 0(%r20),%fr4
	fcmp,dbl,!< %fr5,%fr4
	ftest
	b .L795
	fcmp,dbl,= %fr5,%fr0
	fcpy,dbl %fr5,%fr4
.L802:
	stw %r0,0(%r24)
.L777:
	bv,n %r0(%r2)
.L789:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	ldi 1,%r21
.L780:
	ldil LR'.LC27,%r20
	ldi 0,%r29
	fldds 0(%r1),%fr23
	ldo RR'.LC27(%r20),%r28
	fldds 0(%r28),%fr9
.L786:
	fmpy,dbl %fr5,%fr9,%fr5
	fcmp,dbl,!>= %fr5,%fr23
	ftest
	b .L786
	ldo 1(%r29),%r29
	stw %r29,0(%r24)
	comib,= 0,%r21,.L777
	fcpy,dbl %fr5,%fr4
.L801:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	and,< %r25,%r25,%r23
	depi,tr 1,0,1,%r23
	depi 0,0,1,%r23
	copy %r26,%r24
	stws %r23,-16(%sp)
	stws %r24,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L794:
	ldil LR'.LC24,%r21
	ldo RR'.LC24(%r21),%r22
	fldds 0(%r22),%fr6
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	fcmp,dbl,!<= %fr5,%fr6
	and,< %r25,%r25,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	copy %r26,%r29
	ftest
	b .L789
	ldo RR'.LC26(%r19),%r1
	ldil LR'.LC25,%r23
	ldo RR'.LC25(%r23),%r26
	fldds 0(%r26),%fr7
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L790
	ldil LR'.LC27,%r31
	b .L802
	fcpy,dbl %fr5,%fr4
.L795:
	ftest
	b .L792
	fcpy,dbl %fr5,%fr4
	b .L777
	stw %r0,0(%r24)
.L790:
	ldi 1,%r21
	ldo RR'.LC27(%r31),%r20
.L781:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	fldds 0(%r20),%fr8
	ldi 0,%r29
.L788:
	fadd,dbl %fr5,%fr5,%fr5
	fcmp,dbl,!< %fr5,%fr8
	ftest
	b .L788
	ldo -1(%r29),%r29
	stw %r29,0(%r24)
	comib,<> 0,%r21,.L801
	fcpy,dbl %fr5,%fr4
	b,n .L777
.L792:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b,n .L781
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
	b,n .L803
.L806:
	shd %r25,%r26,1,%r19
	extru %r26,31,1,%r29
	ldi 0,%r28
	extru %r25,30,31,%r25
	sub %r0,%r29,%r22
	subb %r0,%r28,%r21
	copy %r19,%r26
	and %r22,%r24,%r20
	or %r25,%r19,%r31
	and %r21,%r23,%r19
	shd %r23,%r24,31,%r23
	add %r20,%r2,%r2
	addc %r19,%r1,%r1
	comb,<> %r28,%r31,.L806
	zdep %r24,30,31,%r24
.L803:
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
	comb,>> %r26,%r25,.L810
	ldi 1,%r1
	b,n .L838
.L813:
	comb,>>= %r25,%r26,.L812
	zdep %r1,30,31,%r1
	comib,= 0,%r1,.L840
	copy %r1,%r28
.L810:
	comib,<=,n 0,%r25,.L813
	zdep %r25,30,31,%r25
	ldi 0,%r28
.L820:
	comclr,>> %r25,%r26,%r20
	ldi 1,%r20
	sub %r26,%r25,%r22
	ldi 0,%r21
	extru %r25,30,31,%r25
	comclr,= %r21,%r20,%r0
	copy %r1,%r21
	comiclr,= 0,%r20,%r0
	copy %r22,%r26
	extru %r1,30,31,%r1
	comib,<> 0,%r1,.L820
	or %r28,%r21,%r28
.L815:
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
	bv,n %r0(%r2)
.L812:
	comib,<> 0,%r1,.L820
	ldi 0,%r28
	copy %r1,%r28
.L840:
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
	bv,n %r0(%r2)
.L838:
	comclr,<< %r26,%r25,%r19
	ldi 1,%r19
	sub %r26,%r25,%r25
	comiclr,= 0,%r19,%r0
	copy %r25,%r26
	b .L815
	copy %r19,%r28
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
	comb,= %r28,%r19,.L843
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L843:
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
	comb,= %r20,%r28,.L850
	xor %r26,%r20,%r26
.L848:
	bl __clzdi2,%r2
	nop
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L850:
	comb,<> %r28,%r19,.L848
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
	movb,=,n %r26,%r26,.L854
	ldi 0,%r28
.L853:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r1
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L853
	addl %r28,%r1,%r28
	bv,n %r0(%r2)
.L854:
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
	comb,>> %r25,%r26,.L860
	depi 0,31,3,%r20
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L891
.L860:
	comib,= 0,%r21,.L892
	copy %r25,%r23
	copy %r26,%r29
	sh3addl %r21,%r25,%r22 
.L863:
	ldw 0(%r23),%r3
	ldw 4(%r23),%r4
	stw %r3,0(%r29)
	stw %r4,4(%r29)
	ldo 8(%r23),%r23
	comb,<> %r22,%r23,.L863
	ldo 8(%r29),%r29
	comb,>>=,n %r20,%r24,.L856
	sub %r24,%r20,%r4
	ldo -1(%r4),%r31
	comib,>>= 6,%r31,.L893
	addl %r26,%r20,%r22
	ldo 1(%r20),%r31
	addl %r25,%r31,%r21
	sub %r22,%r21,%r19
	comib,>>= 2,%r19,.L889
	addl %r25,%r20,%r1
	or %r1,%r22,%r3
	extru %r3,31,2,%r23
	comib,<> 0,%r23,.L889
	copy %r4,%r29
	ldi 0,%r28
	depi 0,31,2,%r29
.L866:
	ldwx %r1(%r28),%r31
	addl %r22,%r28,%r21
	ldo 4(%r28),%r28
	comb,<> %r28,%r29,.L866
	stw %r31,0(%r21)
	comb,= %r4,%r29,.L856
	addl %r29,%r20,%r20
	ldbx %r25(%r20),%r22
	addl %r26,%r20,%r4
	ldo 1(%r20),%r1
	comb,>>= %r1,%r24,.L856
	stb %r22,0(%r4)
	ldbx %r25(%r1),%r19
	addl %r26,%r1,%r3
	ldo 2(%r20),%r23
	comb,>>= %r23,%r24,.L856
	stb %r19,0(%r3)
	ldbx %r25(%r23),%r24
	addl %r26,%r23,%r26
	stb %r24,0(%r26)
.L856:
	ldw -60(%r30),%r3
.L895:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L894:
	ldo 1(%r31),%r31
.L889:
	ldbx %r25(%r20),%r29
	stb %r29,0(%r22)
	copy %r31,%r20
	comb,<> %r31,%r24,.L894
	addl %r26,%r31,%r22
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L891:
	comib,= 0,%r24,.L856
	ldo -1(%r24),%r1
.L861:
	ldbx %r25(%r1),%r20
	addl %r26,%r1,%r19
	ldo -1(%r1),%r1
	comib,<> -1,%r1,.L861
	stb %r20,0(%r19)
	ldw -60(%r30),%r3
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L892:
	addl %r26,%r20,%r22
	comib,<> 0,%r24,.L889
	ldo 1(%r20),%r31
	b .L895
	ldw -60(%r30),%r3
.L893:
	b .L889
	ldo 1(%r20),%r31
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
	comb,>> %r25,%r26,.L900
	extru %r24,30,31,%r22
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L926
.L900:
	comib,=,n 0,%r22,.L899
	ldo -1(%r22),%r21
	comib,>>= 8,%r21,.L910
	or %r25,%r26,%r23
	extru %r23,31,2,%r29
	comib,<> 0,%r29,.L910
	ldo 2(%r25),%r31
	comb,= %r31,%r26,.L910
	extru %r24,29,30,%r1
	ldi 0,%r28
	zdep %r1,29,30,%r21
.L904:
	ldwx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 4(%r28),%r28
	comb,<> %r21,%r28,.L904
	stw %r20,0(%r19)
	zdep %r1,30,31,%r23
	comb,=,n %r23,%r22,.L899
	ldhx %r25(%r28),%r22
	addl %r26,%r28,%r29
	sth %r22,0(%r29)
.L899:
	extru %r24,31,1,%r20
	comib,= 0,%r20,.L896
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r25
.L929:
	addl %r26,%r24,%r26
	stb %r25,0(%r26)
.L896:
	bv,n %r0(%r2)
.L926:
	comib,= 0,%r24,.L896
	ldo -1(%r24),%r1
.L901:
	ldbx %r25(%r1),%r20
	addl %r26,%r1,%r19
	ldo -1(%r1),%r1
	comib,<> -1,%r1,.L901
	stb %r20,0(%r19)
	bv,n %r0(%r2)
.L910:
	ldi 0,%r21
.L924:
	ldhx,s %r21(%r25),%r31
	sh1addl %r21,%r26,%r1 
	ldo 1(%r21),%r21
	comb,<> %r21,%r22,.L924
	sth %r31,0(%r1)
	extru %r24,31,1,%r20
	comib,= 0,%r20,.L896
	ldo -1(%r24),%r24
	b .L929
	ldbx %r25(%r24),%r25
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
	comb,>> %r25,%r26,.L934
	depi 0,31,2,%r21
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L967
.L934:
	ldi 0,%r31
	comclr,<> %r31,%r22,%r0
	b,n .L963
.L932:
	ldwx,s %r31(%r25),%r23
	sh2addl %r31,%r26,%r29 
	ldo 1(%r31),%r31
	comb,<> %r31,%r22,.L932
	stw %r23,0(%r29)
	comb,>>=,n %r21,%r24,.L930
	sub %r24,%r21,%r1
	ldo -1(%r1),%r28
	comib,>>= 6,%r28,.L968
	addl %r26,%r21,%r22
	ldo 1(%r21),%r28
	addl %r25,%r28,%r20
	sub %r22,%r20,%r19
	comib,>>= 2,%r19,.L965
	addl %r25,%r21,%r23
	or %r23,%r22,%r29
	extru %r29,31,2,%r31
	comib,<> 0,%r31,.L965
	copy %r1,%r29
	ldi 0,%r28
	depi 0,31,2,%r29
.L939:
	ldwx %r23(%r28),%r20
	addl %r22,%r28,%r19
	ldo 4(%r28),%r28
	comb,<> %r28,%r29,.L939
	stw %r20,0(%r19)
	comb,= %r1,%r29,.L930
	addl %r29,%r21,%r21
	ldbx %r25(%r21),%r22
	addl %r26,%r21,%r1
	ldo 1(%r21),%r23
	comb,>>= %r23,%r24,.L930
	stb %r22,0(%r1)
	ldbx %r25(%r23),%r31
	addl %r26,%r23,%r29
	ldo 2(%r21),%r20
	comb,>>= %r20,%r24,.L930
	stb %r31,0(%r29)
	ldbx %r25(%r20),%r24
	addl %r26,%r20,%r26
	stb %r24,0(%r26)
.L930:
	bv,n %r0(%r2)
.L969:
	ldo 1(%r28),%r28
.L965:
	ldbx %r25(%r21),%r19
	stb %r19,0(%r22)
	copy %r28,%r21
	comb,<> %r28,%r24,.L969
	addl %r26,%r28,%r22
	bv,n %r0(%r2)
.L967:
	comib,= 0,%r24,.L930
	ldo -1(%r24),%r1
.L935:
	ldbx %r25(%r1),%r20
	addl %r26,%r1,%r19
	ldo -1(%r1),%r1
	comib,<> -1,%r1,.L935
	stb %r20,0(%r19)
	bv,n %r0(%r2)
.L963:
	addl %r26,%r21,%r22
	comib,<> 0,%r24,.L965
	ldo 1(%r21),%r28
	bv,n %r0(%r2)
.L968:
	b .L965
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
	comib,>= 0,%r28,.L975
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L975:
	shd %r3,%r4,1,%r2
	extru %r3,30,31,%r28
	ldw -124(%r30),%r3
	extru %r4,31,1,%r1
	or %r1,%r2,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	ldw -148(%r30),%r2
	fcnvxf,dbl,dbl %fr4,%fr5
	fadd,dbl %fr5,%fr5,%fr4
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
	comib,>= 0,%r28,.L978
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L978:
	shd %r3,%r4,1,%r2
	extru %r3,30,31,%r28
	ldw -124(%r30),%r3
	extru %r4,31,1,%r1
	or %r1,%r2,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	ldw -148(%r30),%r2
	fcnvxf,dbl,sgl %fr4,%fr4R
	fadd,sgl %fr4R,%fr4R,%fr4L
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
	comib,<>,n 0,%r28,.L983
	extrs %r26,17,18,%r28
	comib,<> 0,%r28,.L980
	extrs %r26,18,19,%r1
	comib,<> 0,%r1,.L984
	extrs %r26,19,20,%r19
	comib,<> 0,%r19,.L985
	extrs %r26,20,21,%r20
	comib,<> 0,%r20,.L986
	extrs %r26,21,22,%r21
	comib,<> 0,%r21,.L987
	extrs %r26,22,23,%r22
	comib,<> 0,%r22,.L988
	extrs %r26,23,24,%r23
	comib,<> 0,%r23,.L989
	extrs %r26,24,25,%r24
	comib,<> 0,%r24,.L990
	extrs %r26,25,26,%r25
	comib,<> 0,%r25,.L991
	extrs %r26,26,27,%r29
	comib,<> 0,%r29,.L992
	extrs %r26,27,28,%r31
	comib,<>,n 0,%r31,.L993
	extrs %r26,28,29,%r28
	comib,<> 0,%r28,.L994
	extrs %r26,29,30,%r1
	comib,<> 0,%r1,.L995
	extrs %r26,30,31,%r19
	comiclr,= 0,%r19,%r0
	b,n .L996
	comiclr,<> 0,%r26,%r26
	ldi 1,%r26
	ldo 15(%r26),%r28
.L980:
	bv,n %r0(%r2)
.L983:
	bv %r0(%r2)
	ldi 0,%r28
.L994:
	bv %r0(%r2)
	ldi 12,%r28
.L984:
	bv %r0(%r2)
	ldi 2,%r28
.L985:
	bv %r0(%r2)
	ldi 3,%r28
.L986:
	bv %r0(%r2)
	ldi 4,%r28
.L987:
	bv %r0(%r2)
	ldi 5,%r28
.L988:
	bv %r0(%r2)
	ldi 6,%r28
.L989:
	bv %r0(%r2)
	ldi 7,%r28
.L990:
	bv %r0(%r2)
	ldi 8,%r28
.L991:
	bv %r0(%r2)
	ldi 9,%r28
.L992:
	bv %r0(%r2)
	ldi 10,%r28
.L993:
	bv %r0(%r2)
	ldi 11,%r28
.L995:
	bv %r0(%r2)
	ldi 13,%r28
.L996:
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
	comib,<>,n 0,%r26,.L1001
	ldi 2,%r28
	and %r19,%r28,%r20
	comib,<> 0,%r20,.L1002
	ldi 4,%r1
	and %r19,%r1,%r21
	comib,<>,n 0,%r21,.L998
	ldi 8,%r28
	and %r19,%r28,%r22
	comiclr,= 0,%r22,%r0
	b,n .L1004
	extrs,>= %r19,27,1,%r0
	b,n .L1005
	extrs,>= %r19,26,1,%r0
	b,n .L1006
	extrs,>= %r19,25,1,%r0
	b,n .L1007
	extrs,>= %r19,24,1,%r0
	b,n .L1008
	extrs,>= %r19,23,1,%r0
	b,n .L998
	extrs,>= %r19,22,1,%r0
	b,n .L1010
	extrs,>= %r19,21,1,%r0
	b,n .L1011
	extrs,>= %r19,20,1,%r0
	b,n .L1012
	extrs,>= %r19,19,1,%r0
	b,n .L1013
	extrs,>= %r19,18,1,%r0
	b,n .L1014
	bb,< %r19,17,.L1015
	extrs %r19,16,17,%r23
	comiclr,<> 0,%r23,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L998:
	bv,n %r0(%r2)
.L1001:
	bv %r0(%r2)
	ldi 0,%r28
.L1002:
	bv %r0(%r2)
	ldi 1,%r28
.L1013:
	bv %r0(%r2)
	ldi 12,%r28
.L1004:
	bv %r0(%r2)
	ldi 3,%r28
.L1005:
	bv %r0(%r2)
	copy %r1,%r28
.L1006:
	bv %r0(%r2)
	ldi 5,%r28
.L1007:
	bv %r0(%r2)
	ldi 6,%r28
.L1008:
	bv %r0(%r2)
	ldi 7,%r28
.L1010:
	bv %r0(%r2)
	ldi 9,%r28
.L1011:
	bv %r0(%r2)
	ldi 10,%r28
.L1012:
	bv %r0(%r2)
	ldi 11,%r28
.L1014:
	bv %r0(%r2)
	ldi 13,%r28
.L1015:
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
	ldo RR'.LC32(%r28),%r1
	fldws 0(%r1),%fr22L
	fcmp,sgl,!>= %fr4L,%fr22L
	ftest
	b .L1021
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	bv,n %r0(%r2)
.L1021:
	fsub,sgl %fr4L,%fr22L,%fr4R
	fcnvfxt,sgl,sgl %fr4R,%fr5L
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r20
	bv %r0(%r2)
	addl %r20,%r19,%r28
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
	extru %r26,29+1-1,1,%r28
	extru %r26,30+1-1,1,%r19
	extru %r26,31,1,%r20
	extru %r26,28+1-1,1,%r21
	addl %r19,%r20,%r1
	extru %r26,27+1-1,1,%r23
	addl %r1,%r28,%r22
	extru %r26,23+1-1,1,%r28
	addl %r22,%r21,%r24
	extru %r26,26+1-1,1,%r25
	addl %r24,%r23,%r29
	extru %r26,25+1-1,1,%r31
	addl %r29,%r25,%r19
	extru %r26,24+1-1,1,%r20
	addl %r19,%r31,%r1
	extru %r26,22+1-1,1,%r22
	addl %r1,%r20,%r21
	extru %r26,21+1-1,1,%r24
	addl %r21,%r28,%r23
	extru %r26,17+1-1,1,%r28
	addl %r23,%r22,%r25
	extru %r26,20+1-1,1,%r29
	addl %r25,%r24,%r31
	extru %r26,19+1-1,1,%r1
	extru %r26,18+1-1,1,%r20
	addl %r31,%r29,%r19
	extru %r26,16+1-1,1,%r26
	addl %r19,%r1,%r21
	addl %r21,%r20,%r22
	addl %r22,%r28,%r23
	addl %r23,%r26,%r24
	bv %r0(%r2)
	extru %r24,31,1,%r28
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
	extru %r26,30+1-1,1,%r19
	extru %r26,29+1-1,1,%r20
	addl %r19,%r28,%r1
	extru %r26,28+1-1,1,%r21
	addl %r1,%r20,%r22
	extru %r26,27+1-1,1,%r23
	extru %r26,24+1-1,1,%r28
	addl %r22,%r21,%r24
	extru %r26,26+1-1,1,%r25
	addl %r24,%r23,%r29
	extru %r26,25+1-1,1,%r31
	addl %r29,%r25,%r19
	extru %r26,23+1-1,1,%r20
	addl %r19,%r31,%r1
	extru %r26,22+1-1,1,%r22
	addl %r1,%r28,%r21
	extru %r26,18+1-1,1,%r28
	addl %r21,%r20,%r23
	extru %r26,21+1-1,1,%r24
	addl %r23,%r22,%r25
	extru %r26,20+1-1,1,%r29
	extru %r26,19+1-1,1,%r1
	extru %r26,17+1-1,1,%r20
	addl %r25,%r24,%r31
	extru %r26,16+1-1,1,%r26
	addl %r31,%r29,%r19
	addl %r19,%r1,%r21
	addl %r21,%r28,%r22
	addl %r22,%r20,%r23
	bv %r0(%r2)
	addl %r23,%r26,%r28
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
	movb,=,n %r26,%r26,.L1029
	ldi 0,%r28
.L1028:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r1
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L1028
	addl %r28,%r1,%r28
	bv,n %r0(%r2)
.L1029:
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
	b,n .L1034
	comib,=,n 0,%r25,.L1035
	ldi 0,%r28
.L1033:
	extrs %r25,31+1-1,1,%r19
	extru %r25,30,31,%r25
	and %r19,%r26,%r1
	zdep %r26,30,31,%r26
	comib,<> 0,%r25,.L1033
	addl %r28,%r1,%r28
	bv,n %r0(%r2)
.L1034:
	bv %r0(%r2)
	copy %r26,%r28
.L1035:
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
	comb,<< %r25,%r26,.L1038
	ldi 1,%r1
	b .L1064
	sub %r26,%r25,%r19
.L1041:
	comb,>>= %r25,%r26,.L1040
	zdep %r1,30,31,%r1
	comib,= 0,%r1,.L1066
	copy %r1,%r28
.L1038:
	comib,<=,n 0,%r25,.L1041
	zdep %r25,30,31,%r25
	ldi 0,%r28
.L1048:
	comclr,>> %r25,%r26,%r20
	ldi 1,%r20
	sub %r26,%r25,%r22
	ldi 0,%r21
	extru %r25,30,31,%r25
	comclr,= %r21,%r20,%r0
	copy %r1,%r21
	comiclr,= 0,%r20,%r0
	copy %r22,%r26
	extru %r1,30,31,%r1
	comib,<> 0,%r1,.L1048
	or %r28,%r21,%r28
.L1043:
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
	bv,n %r0(%r2)
.L1040:
	comib,<> 0,%r1,.L1048
	ldi 0,%r28
	copy %r1,%r28
.L1066:
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
	bv,n %r0(%r2)
.L1064:
	comclr,>> %r25,%r26,%r28
	ldi 1,%r28
	comclr,>> %r25,%r26,%r0
	copy %r19,%r26
	b,n .L1043
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
	b,n .L1070
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L1067
	ldi 1,%r28
	ldi 0,%r28
.L1067:
	bv,n %r0(%r2)
.L1070:
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
	b,n .L1074
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L1071
	ldi 1,%r28
	ldi 0,%r28
.L1071:
	bv,n %r0(%r2)
.L1074:
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
	xmpyu %fr22R,%fr22L,%fr4
	and %r20,%r25,%r1
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and %r19,%r26,%r21
	sub %r28,%r1,%r28
	bv %r0(%r2)
	sub %r28,%r21,%r28
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
	xmpyu %fr22R,%fr22L,%fr4
	fstds %fr4,-16(%sp)
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
	b,n .L1086
	comib,= 0,%r25,.L1082
	ldi 0,%r29
.L1079:
	ldi 1,%r24
	ldi 0,%r21
	ldi 32,%r31
.L1081:
	extrs %r25,31+1-1,1,%r20
	comclr,= %r31,%r24,%r22
	ldi 1,%r22
	and %r20,%r26,%r1
	extrs %r25,30,31,%r25
	ldo 1(%r24),%r28
	comiclr,= 0,%r25,%r19
	ldi 1,%r19
	addl %r21,%r1,%r21
	zdep %r26,30,31,%r26
	and %r19,%r22,%r23
	comib,<> 0,%r23,.L1081
	extru %r28,31,8,%r24
	sub %r0,%r21,%r28
	comiclr,<> 0,%r29,%r0
	copy %r21,%r28
	bv,n %r0(%r2)
.L1086:
	sub %r0,%r25,%r25
	b .L1079
	ldi 1,%r29
.L1082:
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
	movb,<,n %r26,%r26,.L1121
	ldi 1,%r28
	ldi 0,%r29
.L1088:
	comib,<= 0,%r25,.L1125
	copy %r26,%r20
	sub %r0,%r25,%r25
	copy %r28,%r29
.L1125:
	copy %r25,%r19
	comb,<< %r25,%r26,.L1090
	ldi 1,%r23
	b,n .L1118
.L1122:
	comib,= 0,%r23,.L1126
	ldi 0,%r1
.L1090:
	zdep %r19,30,31,%r19
	comb,<< %r19,%r26,.L1122
	zdep %r23,30,31,%r23
	ldi 0,%r1
.L1126:
	comb,= %r1,%r23,.L1123
	sub %r0,%r23,%r28
.L1092:
	comclr,>> %r19,%r20,%r21
	ldi 1,%r21
	sub %r20,%r19,%r31
	ldi 0,%r22
	extru %r19,30,31,%r19
	comclr,= %r22,%r21,%r0
	copy %r23,%r22
	comiclr,= 0,%r21,%r0
	copy %r31,%r20
	extru %r23,30,31,%r23
	comib,<> 0,%r23,.L1092
	or %r1,%r22,%r1
	sub %r0,%r1,%r28
.L1124:
	comiclr,<> 0,%r29,%r0
	copy %r1,%r28
	bv,n %r0(%r2)
.L1121:
	sub %r0,%r26,%r26
	ldi 0,%r28
	b .L1088
	ldi 1,%r29
.L1123:
	copy %r23,%r1
	comiclr,<> 0,%r29,%r0
	copy %r1,%r28
	bv,n %r0(%r2)
.L1118:
	comclr,>> %r25,%r26,%r1
	ldi 1,%r1
	b .L1124
	sub %r0,%r1,%r28
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
	movb,>= %r26,%r26,.L1128
	ldi 0,%r22
	sub %r0,%r26,%r26
	ldi 1,%r22
.L1128:
	copy %r26,%r28
	or,>= %r0,%r25,%r19
	subi 0,%r19,%r19
	comb,<< %r19,%r26,.L1129
	ldi 1,%r1
	b .L1155
	sub %r26,%r19,%r20
.L1157:
	comiclr,<> 0,%r1,%r0
	b,n .L1151
.L1129:
	zdep %r19,30,31,%r19
	comb,<< %r19,%r26,.L1157
	zdep %r1,30,31,%r1
	comiclr,<> 0,%r1,%r0
	b,n .L1151
.L1131:
	sub %r28,%r19,%r21
	extru %r1,30,31,%r1
	comclr,>> %r19,%r28,%r0
	copy %r21,%r28
	comib,<> 0,%r1,.L1131
	extru %r19,30,31,%r19
	sub %r0,%r28,%r23
.L1158:
	comiclr,= 0,%r22,%r0
	copy %r23,%r28
	bv,n %r0(%r2)
.L1151:
	copy %r26,%r28
	sub %r0,%r26,%r23
	comiclr,= 0,%r22,%r0
	copy %r23,%r28
	bv,n %r0(%r2)
.L1155:
	comclr,>> %r19,%r26,%r0
	copy %r20,%r28
	b .L1158
	sub %r0,%r28,%r23
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
	comb,>> %r28,%r25,.L1160
	ldi 1,%r21
	b .L1322
	sub %r28,%r25,%r20
.L1165:
	zdep %r21,30,31,%r23
	extru %r20,31,16,%r26
	comb,>>= %r26,%r28,.L1164
	extru %r23,31,16,%r19
	comib,= 0,%r19,.L1167
	copy %r19,%r21
	copy %r26,%r25
.L1160:
	extrs %r25,31,16,%r22
	comib,<= 0,%r22,.L1165
	zdep %r25,30,31,%r20
	sub %r28,%r25,%r23
	copy %r21,%r26
	extru %r23,31,16,%r31
	extru %r21,15+16-1,16,%r29
	comclr,<<= %r25,%r28,%r0
	ldi 0,%r26
	comclr,<<= %r25,%r28,%r0
	copy %r28,%r31
	extru %r26,31,16,%r1
	extru %r31,31,16,%r28
	comib,= 0,%r29,.L1323
	extru %r25,30,31,%r22
.L1231:
	sub %r28,%r22,%r19
	comclr,<< %r28,%r22,%r23
	ldi 1,%r23
	extru %r19,31,16,%r26
	ldi 0,%r31
	comclr,>>= %r28,%r22,%r0
	copy %r28,%r26
	comib,= 0,%r23,.L1173
	extru %r26,31,16,%r28
	copy %r29,%r31
.L1173:
	or %r1,%r31,%r1
	extru %r21,14+16-1,16,%r29
	extru %r1,31,16,%r19
	comib,= 0,%r29,.L1167
	extru %r25,29,30,%r26
	sub %r28,%r26,%r22
	comclr,>> %r26,%r28,%r23
	ldi 1,%r23
	extru %r22,31,16,%r20
	ldi 0,%r31
	comclr,<<= %r26,%r28,%r0
	copy %r28,%r20
	comib,= 0,%r23,.L1177
	extru %r20,31,16,%r28
	copy %r29,%r31
.L1177:
	or %r19,%r31,%r19
	extru %r21,13+16-1,16,%r1
	extru %r19,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,28,29,%r29
	sub %r28,%r29,%r26
	comclr,>> %r29,%r28,%r23
	ldi 1,%r23
	extru %r26,31,16,%r20
	ldi 0,%r22
	comclr,<<= %r29,%r28,%r0
	copy %r28,%r20
	comib,= 0,%r23,.L1181
	extru %r20,31,16,%r28
	copy %r1,%r22
.L1181:
	or %r19,%r22,%r31
	extru %r21,12+16-1,16,%r1
	extru %r31,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,27,28,%r29
	sub %r28,%r29,%r26
	comclr,>> %r29,%r28,%r23
	ldi 1,%r23
	extru %r26,31,16,%r20
	ldi 0,%r22
	comclr,<<= %r29,%r28,%r0
	copy %r28,%r20
	comib,= 0,%r23,.L1185
	extru %r20,31,16,%r28
	copy %r1,%r22
.L1185:
	or %r19,%r22,%r19
	extru %r21,11+16-1,16,%r1
	extru %r19,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,26,27,%r31
	sub %r28,%r31,%r29
	comclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extru %r29,31,16,%r23
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	comib,= 0,%r26,.L1189
	extru %r23,31,16,%r28
	copy %r1,%r29
.L1189:
	or %r19,%r29,%r20
	extru %r21,10+16-1,16,%r1
	extru %r20,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,25,26,%r31
	sub %r28,%r31,%r22
	comclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extru %r22,31,16,%r23
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	comib,= 0,%r26,.L1193
	extru %r23,31,16,%r28
	copy %r1,%r29
.L1193:
	or %r19,%r29,%r19
	extru %r21,9+16-1,16,%r1
	extru %r19,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,24,25,%r31
	sub %r28,%r31,%r20
	comclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extru %r20,31,16,%r23
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	comib,<> 0,%r26,.L1324
	extru %r23,31,16,%r28
.L1197:
	or %r19,%r29,%r22
	extru %r21,8+16-1,16,%r1
	extru %r22,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,23,24,%r31
	sub %r28,%r31,%r20
	comclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extru %r20,31,16,%r23
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	comib,<> 0,%r26,.L1325
	extru %r23,31,16,%r28
.L1201:
	or %r19,%r29,%r19
	extru %r21,7+16-1,16,%r1
	extru %r19,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,22,23,%r31
	sub %r28,%r31,%r22
	comclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extru %r22,31,16,%r20
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r20
	comib,<> 0,%r26,.L1326
	extru %r20,31,16,%r28
.L1205:
	or %r19,%r29,%r23
	extru %r21,6+16-1,16,%r1
	extru %r23,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,21,22,%r31
	sub %r28,%r31,%r22
	comclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extru %r22,31,16,%r20
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r20
	comib,<> 0,%r26,.L1327
	extru %r20,31,16,%r28
.L1209:
	or %r19,%r29,%r19
	extru %r21,5+16-1,16,%r1
	extru %r19,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,20,21,%r31
	sub %r28,%r31,%r22
	comclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extru %r22,31,16,%r26
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	comib,<> 0,%r23,.L1328
	extru %r26,31,16,%r28
.L1213:
	or %r19,%r29,%r20
	extru %r21,4+16-1,16,%r1
	extru %r20,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,19,20,%r31
	sub %r28,%r31,%r22
	comclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extru %r22,31,16,%r26
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	comib,<> 0,%r23,.L1329
	extru %r26,31,16,%r28
	or %r19,%r29,%r19
	extru %r21,3+16-1,16,%r1
	extru %r19,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,18,19,%r31
.L1330:
	sub %r28,%r31,%r20
	comclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extru %r20,31,16,%r26
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	comib,= 0,%r23,.L1221
	extru %r26,31,16,%r28
	copy %r1,%r29
.L1221:
	or %r19,%r29,%r22
	extru %r21,2+16-1,16,%r1
	extru %r22,31,16,%r19
	comib,= 0,%r1,.L1167
	extru %r25,17,18,%r31
	sub %r28,%r31,%r20
	comclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extru %r20,31,16,%r26
	ldi 0,%r29
	comclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	comib,= 0,%r23,.L1225
	extru %r26,31,16,%r28
	copy %r1,%r29
.L1225:
	or %r19,%r29,%r19
	extru %r25,16,17,%r25
	extru %r21,1+16-1,16,%r21
	comib,= 0,%r21,.L1167
	extru %r19,31,16,%r19
	sub %r28,%r25,%r22
	comclr,>> %r25,%r28,%r1
	ldi 1,%r1
	extru %r22,31,16,%r31
	or %r1,%r19,%r19
	comclr,<<= %r25,%r28,%r0
	copy %r28,%r31
	extru %r31,31,16,%r28
.L1167:
	comiclr,<> 0,%r24,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L1164:
	comib,= 0,%r19,.L1167
	sub %r28,%r26,%r31
	extru %r21,31,15,%r29
	extru %r31,31,16,%r20
	extru %r25,31,15,%r22
	comclr,<<= %r26,%r28,%r0
	copy %r28,%r20
	copy %r19,%r1
	copy %r19,%r21
	comclr,<<= %r26,%r28,%r0
	ldi 0,%r1
	copy %r26,%r25
	b .L1231
	extru %r20,31,16,%r28
.L1324:
	b .L1197
	copy %r1,%r29
.L1325:
	b .L1201
	copy %r1,%r29
.L1326:
	b .L1205
	copy %r1,%r29
.L1327:
	b .L1209
	copy %r1,%r29
.L1328:
	b .L1213
	copy %r1,%r29
.L1329:
	copy %r1,%r29
	extru %r25,18,19,%r31
	or %r19,%r29,%r19
	extru %r21,3+16-1,16,%r1
	comib,<> 0,%r1,.L1330
	extru %r19,31,16,%r19
	b,n .L1167
.L1322:
	comclr,<> %r28,%r25,%r19
	ldi 1,%r19
	extru %r20,31,16,%r1
	extru %r19,31,16,%r19
	comclr,= %r28,%r25,%r0
	copy %r28,%r1
	b .L1167
	extru %r1,31,16,%r28
.L1323:
	b .L1167
	copy %r1,%r19
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
	comb,<< %r25,%r26,.L1332
	ldi 1,%r1
	b .L1358
	sub %r26,%r25,%r19
.L1335:
	comb,>>= %r25,%r26,.L1334
	zdep %r1,30,31,%r1
	comib,= 0,%r1,.L1360
	copy %r1,%r28
.L1332:
	comib,<=,n 0,%r25,.L1335
	zdep %r25,30,31,%r25
	ldi 0,%r28
.L1342:
	comclr,>> %r25,%r26,%r20
	ldi 1,%r20
	sub %r26,%r25,%r22
	ldi 0,%r21
	extru %r25,30,31,%r25
	comclr,= %r21,%r20,%r0
	copy %r1,%r21
	comiclr,= 0,%r20,%r0
	copy %r22,%r26
	extru %r1,30,31,%r1
	comib,<> 0,%r1,.L1342
	or %r28,%r21,%r28
.L1337:
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
	bv,n %r0(%r2)
.L1334:
	comib,<> 0,%r1,.L1342
	ldi 0,%r28
	copy %r1,%r28
.L1360:
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
	bv,n %r0(%r2)
.L1358:
	comclr,>> %r25,%r26,%r28
	ldi 1,%r28
	comclr,>> %r25,%r26,%r0
	copy %r19,%r26
	b,n .L1337
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
	bb,>= %r24,26,.L1362
	subi 63,%r24,%r1
	ldi 0,%r29
	mtsar %r1
	bv %r0(%r2)
	zvdep %r26,32,%r28
.L1362:
	comib,= 0,%r24,.L1365
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
.L1365:
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
	bb,>=,n %r24,26,.L1367
	subi 63,%r24,%r24
	extrs %r25,0,1,%r28
	mtsar %r24
	bv %r0(%r2)
	vextrs %r25,32,%r29
.L1367:
	comib,= 0,%r24,.L1370
	mtsar %r24
	subi 31,%r24,%r28
	vshd %r0,%r26,%r29
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r1
	mtsar %r28
	or %r1,%r29,%r29
	bv %r0(%r2)
	vextrs %r25,32,%r28
.L1370:
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
	comclr,<< %r31,%r26,%r1
	ldi 1,%r1
	zdep %r1,27,28,%r23
	subi 16,%r23,%r19
	mtsar %r19
	ldi 0,%r28
	vshd %r0,%r26,%r24
	zdepi -1,23,8,%r22
	and %r24,%r22,%r25
	comclr,<> %r28,%r25,%r26
	ldi 1,%r26
	zdep %r26,28,29,%r31
	subi 8,%r31,%r29
	mtsar %r29
	addl %r31,%r23,%r22
	vshd %r0,%r24,%r1
	ldi 240,%r21
	and %r1,%r21,%r21
	comclr,<> %r28,%r21,%r23
	ldi 1,%r23
	zdep %r23,29,30,%r19
	subi 4,%r19,%r24
	mtsar %r24
	ldi 12,%r20
	vshd %r0,%r1,%r26
	addl %r19,%r22,%r25
	and %r26,%r20,%r20
	comclr,<> %r28,%r20,%r31
	ldi 1,%r31
	zdep %r31,30,31,%r29
	subi 2,%r29,%r22
	mtsar %r22
	vshd %r0,%r26,%r1
	extrs,< %r1,30,1,%r0
	subi 2,%r1,%r28
.L1375:
	addl %r29,%r25,%r21
	bv %r0(%r2)
	addl %r28,%r21,%r28
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
	b,n .L1381
	comclr,>= %r23,%r25,%r0
	b,n .L1380
	comclr,<<= %r24,%r26,%r0
	b,n .L1381
	comclr,>>= %r24,%r26,%r26
	ldi 1,%r26
	bv %r0(%r2)
	ldo 1(%r26),%r28
.L1381:
	bv %r0(%r2)
	ldi 0,%r28
.L1380:
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
	b,n .L1387
	comclr,>= %r23,%r25,%r0
	b,n .L1386
	comclr,<<= %r24,%r26,%r0
	b,n .L1387
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L1387:
	bv %r0(%r2)
	ldi -1,%r28
.L1386:
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
	comiclr,<> 0,%r20,%r1
	ldi 1,%r1
	zdep %r1,27,28,%r21
	mtsar %r21
	vshd %r0,%r26,%r19
	extru %r19,31,8,%r28
	comiclr,<> 0,%r28,%r22
	ldi 1,%r22
	zdep %r22,28,29,%r23
	mtsar %r23
	addl %r23,%r21,%r25
	vshd %r0,%r19,%r24
	extru %r24,31,4,%r26
	comiclr,<> 0,%r26,%r29
	ldi 1,%r29
	zdep %r29,29,30,%r31
	mtsar %r31
	vshd %r0,%r24,%r1
	extru %r1,31,2,%r21
	comiclr,<> 0,%r21,%r19
	ldi 1,%r19
	zdep %r19,30,31,%r28
	addl %r31,%r25,%r20
	mtsar %r28
	addl %r28,%r20,%r23
	vshd %r0,%r1,%r22
	extru %r22,31,2,%r24
	uaddcm %r0,%r24,%r25
	extru %r24,30,31,%r26
	extrs %r25,31+1-1,1,%r29
	subi 2,%r26,%r31
	and %r29,%r31,%r1
	bv %r0(%r2)
	addl %r1,%r23,%r28
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
	bb,>= %r24,26,.L1390
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r25
	copy %r25,%r28
.L1392:
	bv,n %r0(%r2)
.L1390:
	comib,= 0,%r24,.L1393
	ldo -1(%r24),%r28
	vshd %r0,%r26,%r29
	mtsar %r28
	zvdep %r25,32,%r1
	mtsar %r24
	or %r1,%r29,%r29
	vshd %r0,%r25,%r25
	b .L1392
	copy %r25,%r28
.L1393:
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
	extru %r25,31,16,%r1
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	stws %r1,-16(%sp)
	fldws -16(%sp),%fr25L
	extru %r26,15,16,%r26
	xmpyu %fr24L,%fr25L,%fr23
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	extru %r25,15,16,%r25
	xmpyu %fr25L,%fr22L,%fr26
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr4L
	xmpyu %fr22L,%fr4L,%fr6
	xmpyu %fr24L,%fr4L,%fr5
	fstds %fr23,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	extru %r24,15,16,%r23
	addl %r23,%r22,%r22
	fstds %fr6,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	extru %r24,31,16,%r21
	extru %r22,15,16,%r31
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r31,%r29,%r28
	extru %r22,31,16,%r24
	addl %r24,%r20,%r20
	zdep %r20,15,16,%r29
	extru %r20,15,16,%r1
	addl %r21,%r29,%r29
	bv %r0(%r2)
	addl %r28,%r1,%r28
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
	stw %r2,-20(%r30)
	extru %r26,31,16,%r28
	extru %r26,15,16,%r1
	stwm %r4,64(%r30)
	extru %r24,31,16,%r2
	stw %r3,-60(%r30)
	extru %r24,15,16,%r3
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	stws %r1,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r3,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr5
	xmpyu %fr22L,%fr23L,%fr6
	stws %r2,-16(%sp)
	fldws -16(%sp),%fr25L
	xmpyu %fr25L,%fr22L,%fr4
	xmpyu %fr24L,%fr25L,%fr26
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	fstds %fr6,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	stws %r24,-16(%sp)
	fldws -16(%sp),%fr24R
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr5R
	xmpyu %fr24R,%fr5R,%fr8
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r1
	ldws -12(%sp),%r2
	fstds %fr26,-16(%sp)
	ldws -16(%sp),%r3
	ldws -12(%sp),%r4
	extru %r4,31,16,%r31
	extru %r4,15,16,%r4
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22R
	addl %r4,%r2,%r21
	extru %r21,15,16,%r24
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr4R
	extru %r21,31,16,%r23
	xmpyu %fr22R,%fr4R,%fr7
	fstds %fr8,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	addl %r23,%r22,%r22
	extru %r22,15,16,%r28
	addl %r24,%r29,%r25
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r25,%r28,%r1
	zdep %r22,15,16,%r29
	ldw -84(%r30),%r2
	addl %r31,%r29,%r29
	addl %r1,%r20,%r20
	ldw -60(%r30),%r3
	addl %r20,%r26,%r28
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
	ldil L'32768,%r28
	xor %r25,%r26,%r25
	ldo -5738(%r28),%r1
	extru %r25,15,16,%r19
	xor %r19,%r25,%r21
	extru %r21,23,24,%r20
	xor %r20,%r21,%r22
	extru %r22,27,28,%r23
	xor %r23,%r22,%r24
	extru %r24,31,4,%r26
	subi 31,%r26,%r29
	mtsar %r29
	vextrs %r1,32,%r31
	bv %r0(%r2)
	extru %r31,31,1,%r28
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
	ldil L'32768,%r28
	extru %r26,15,16,%r19
	ldo -5738(%r28),%r1
	xor %r19,%r26,%r20
	extru %r20,23,24,%r26
	xor %r26,%r20,%r21
	extru %r21,27,28,%r22
	xor %r22,%r21,%r23
	extru %r23,31,4,%r24
	subi 31,%r24,%r25
	mtsar %r25
	vextrs %r1,32,%r29
	bv %r0(%r2)
	extru %r29,31,1,%r28
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
	ldil L'1431650304,%r19
	ldo 5461(%r19),%r1
	and %r22,%r1,%r23
	copy %r25,%r28
	copy %r26,%r29
	shd %r25,%r26,1,%r25
	and %r25,%r1,%r24
	sub %r29,%r24,%r29
	subb %r28,%r23,%r28
	copy %r28,%r23
	extru %r28,29,30,%r31
	shd %r23,%r29,2,%r1
	ldil L'858996736,%r21
	ldo -3277(%r21),%r26
	and %r28,%r26,%r23
	and %r29,%r26,%r24
	and %r31,%r26,%r19
	and %r1,%r26,%r20
	add %r24,%r20,%r20
	addc %r23,%r19,%r19
	copy %r19,%r28
	extru %r20,27,28,%r29
	zdep %r28,3,4,%r22
	extru %r19,27,28,%r28
	or %r22,%r29,%r29
	add %r20,%r29,%r29
	addc %r19,%r28,%r28
	ldil L'252641280,%r24
	ldo 3855(%r24),%r25
	and %r28,%r25,%r20
	and %r29,%r25,%r21
	addl %r20,%r21,%r26
	extru %r26,15,16,%r19
	addl %r19,%r26,%r23
	extru %r23,23,24,%r31
	addl %r31,%r23,%r1
	bv %r0(%r2)
	extru %r1,31,7,%r28
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
	ldo 5461(%r28),%r20
	extru %r26,30,31,%r19
	ldil L'858996736,%r1
	and %r19,%r20,%r21
	ldo -3277(%r1),%r22
	sub %r26,%r21,%r26
	ldil L'252641280,%r23
	and %r26,%r22,%r25
	extru %r26,29,30,%r24
	and %r24,%r22,%r29
	addl %r29,%r25,%r20
	extru %r20,27,28,%r28
	ldo 3855(%r23),%r31
	addl %r28,%r20,%r19
	and %r19,%r31,%r1
	extru %r1,15,16,%r21
	addl %r21,%r1,%r22
	extru %r22,23,24,%r26
	addl %r26,%r22,%r23
	bv %r0(%r2)
	extru %r23,31,6,%r28
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
	comib,= 0,%r28,.L1407
	ldil LR'.LC34,%r20
	ldo RR'.LC34(%r20),%r1
	copy %r24,%r26
	fldds 0(%r1),%fr4
.L1404:
	fmpy,dbl %fr4,%fr5,%fr4
.L1402:
	extru %r26,0,1,%r19
	addl %r19,%r26,%r21
	extrs %r21,30,31,%r26
	comib,= 0,%r26,.L1403
	extru %r26,31,1,%r22
	comib,<> 0,%r22,.L1404
	fmpy,dbl %fr5,%fr5,%fr5
	extru %r26,0,1,%r23
.L1410:
	addl %r23,%r26,%r25
	extrs %r25,30,31,%r26
	extru %r26,31,1,%r22
	comib,<> 0,%r22,.L1404
	fmpy,dbl %fr5,%fr5,%fr5
	b .L1410
	extru %r26,0,1,%r23
.L1403:
	comiclr,<= 0,%r24,%r0
	b,n .L1409
	bv,n %r0(%r2)
.L1407:
	ldo RR'.LC34(%r20),%r1
	copy %r24,%r26
	b .L1402
	fldds 0(%r1),%fr4
.L1409:
	fldds 0(%r1),%fr22
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
	comib,= 0,%r28,.L1417
	ldil LR'.LC36,%r20
	ldo RR'.LC36(%r20),%r1
	copy %r25,%r26
	fldws 0(%r1),%fr4L
.L1414:
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1412:
	extru %r26,0,1,%r19
	addl %r19,%r26,%r21
	extrs %r21,30,31,%r26
	comib,= 0,%r26,.L1413
	extru %r26,31,1,%r22
	comib,<> 0,%r22,.L1414
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extru %r26,0,1,%r23
.L1420:
	addl %r23,%r26,%r24
	extrs %r24,30,31,%r26
	extru %r26,31,1,%r22
	comib,<> 0,%r22,.L1414
	fmpy,sgl %fr22L,%fr22L,%fr22L
	b .L1420
	extru %r26,0,1,%r23
.L1413:
	comiclr,<= 0,%r25,%r0
	b,n .L1419
	bv,n %r0(%r2)
.L1417:
	ldo RR'.LC36(%r20),%r1
	copy %r25,%r26
	b .L1412
	fldws 0(%r1),%fr4L
.L1419:
	fldws 0(%r1),%fr4R
	bv %r0(%r2)
	fdiv,sgl %fr4R,%fr4L,%fr4L
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
	b,n .L1425
	comclr,>>= %r23,%r25,%r0
	b,n .L1424
	comclr,<<= %r24,%r26,%r0
	b,n .L1425
	comclr,>>= %r24,%r26,%r26
	ldi 1,%r26
	bv %r0(%r2)
	ldo 1(%r26),%r28
.L1425:
	bv %r0(%r2)
	ldi 0,%r28
.L1424:
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
	b,n .L1431
	comclr,>>= %r23,%r25,%r0
	b,n .L1430
	comclr,<<= %r24,%r26,%r0
	b,n .L1431
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L1431:
	bv %r0(%r2)
	ldi -1,%r28
.L1430:
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
