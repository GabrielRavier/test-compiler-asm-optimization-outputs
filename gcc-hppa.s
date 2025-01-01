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
	b .L26
	ldi 0,%r28
.L18:
	comib,= 0,%r23,.L17
	ldo 1(%r26),%r26
.L16:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	comb,<> %r24,%r28,.L18
	ldo 1(%r25),%r25
	bv %r0(%r2)
	ldo 1(%r26),%r28
.L17:
	ldi 0,%r28
.L26:
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
	movb,<> %r24,%r24,.L28
	extru %r25,31,8,%r25
	b .L33
	copy %r24,%r28
.L30:
	comib,= 0,%r24,.L31
	ldo 1(%r26),%r26
.L28:
	ldb 0(%r26),%r28
	comb,<>,n %r25,%r28,.L30
	ldo -1(%r24),%r24
	bv %r0(%r2)
	copy %r26,%r28
.L31:
	copy %r24,%r28
.L33:
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
	b,n .L35
	b,n .L34
.L37:
	ldo 1(%r26),%r26
	comib,= 0,%r28,.L34
	ldo 1(%r25),%r25
.L35:
	ldb 0(%r26),%r20
	ldb 0(%r25),%r19
	comb,= %r19,%r20,.L37
	ldo -1(%r28),%r28
	sub %r20,%r19,%r28
.L34:
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
	comib,= 0,%r24,.L43
	copy %r26,%r3
	bl memcpy,%r2
	nop
.L43:
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
	b .L48
	addl %r26,%r24,%r26
.L50:
	ldb 0(%r28),%r19
	comb,= %r25,%r19,.L47
	ldo -1(%r26),%r26
.L48:
	comb,<> %r20,%r26,.L50
	copy %r26,%r28
	ldi 0,%r28
.L47:
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
	comib,= 0,%r24,.L52
	copy %r26,%r3
	bl memset,%r2
	extru %r25,31,8,%r25
.L52:
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
	comib,= 0,%r19,.L57
	copy %r26,%r28
	ldbs,mb 1(%r25),%r19
.L63:
	stbs,mb %r19,1(%r28)
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L63
	ldbs,mb 1(%r25),%r19
.L57:
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
	comib,<> 0,%r19,.L65
	extru %r25,31,8,%r25
	b,n .L64
.L67:
	extrs %r19,31,8,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L64
.L65:
	extru %r19,31,8,%r19
	comb,<>,n %r25,%r19,.L67
	ldbs,mb 1(%r28),%r19
.L64:
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
	b .L73
	copy %r26,%r28
.L76:
	comib,= 0,%r19,.L75
	ldo 1(%r28),%r28
.L73:
	ldb 0(%r28),%r19
	extrs %r19,31,8,%r19
	comb,<> %r25,%r19,.L76
	nop
	bv,n %r0(%r2)
.L75:
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
	ldb 0(%r25),%r28
	extrs %r19,31,8,%r19
	comib,= 0,%r19,.L78
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L78
	ldi 1,%r20
	b .L93
	ldbx %r26(%r20),%r19
.L91:
	comb,<> %r28,%r19,.L92
	extru %r19,31,8,%r19
	ldbx %r26(%r20),%r19
.L93:
	ldbx %r25(%r20),%r28
	extrs %r19,31,8,%r19
	extrs %r28,31,8,%r28
	comib,<> 0,%r19,.L91
	ldo 1(%r20),%r20
.L78:
	extru %r19,31,8,%r19
.L92:
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
	extrs %r28,31,8,%r28
	comib,=,n 0,%r28,.L94
	copy %r26,%r28
	ldbs,mb 1(%r28),%r19
.L99:
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L99
	ldbs,mb 1(%r28),%r19
	sub %r28,%r26,%r28
.L94:
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
	movb,=,n %r24,%r28,.L100
	ldo -1(%r28),%r31
	copy %r25,%r19
	ldb 0(%r26),%r28
	comib,<> 0,%r28,.L104
	addl %r25,%r31,%r31
	b .L114
	ldb 0(%r25),%r21
.L116:
	comb,=,n %r31,%r19,.L103
	ldbs,mb 1(%r26),%r28
	extru %r28,31,8,%r28
	comib,=,n 0,%r28,.L115
	copy %r22,%r19
.L104:
	ldb 0(%r19),%r21
	comclr,<> %r28,%r21,%r22
	ldi 1,%r22
	comiclr,= 0,%r21,%r20
	ldi 1,%r20
	and %r20,%r22,%r20
	comib,<> 0,%r20,.L116
	ldo 1(%r19),%r22
.L103:
	sub %r28,%r21,%r28
.L100:
	bv,n %r0(%r2)
.L115:
	ldb 1(%r19),%r21
	b .L100
	sub %r28,%r21,%r28
.L114:
	b .L100
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
	comib,>= 1,%r24,.L117
	depi 0,31,1,%r24
	addl %r26,%r24,%r20
.L119:
	ldb 1(%r26),%r19
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r19,-2(%r25)
	comb,<> %r20,%r26,.L119
	stb %r28,-1(%r25)
.L117:
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
	b,n .L133
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	comib,<> 0,%r28,.L133
	ldo -40(%r26),%r19
	ldi 1,%r28
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L131
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L131:
	bv,n %r0(%r2)
.L133:
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
	comb,>>= %r28,%r26,.L142
	ldo -42(%r26),%r19
	ldil L'49152,%r28
	ldo -8192(%r19),%r19
	ldo -2091(%r28),%r28
	comb,>>= %r28,%r19,.L140
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comb,>>= %r19,%r26,.L140
	ldil L'-57344,%r19
	ldi 8184,%r20
	addl %r26,%r19,%r19
	comb,>>= %r20,%r19,.L140
	zdepi -1,29,14,%r20
	ldil L'1048576,%r19
	sub %r26,%r20,%r20
	ldo 3(%r19),%r19
	comb,<<,n %r19,%r20,.L136
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
.L136:
	bv,n %r0(%r2)
.L140:
	bv %r0(%r2)
	ldi 1,%r28
.L142:
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
	comib,>>= 9,%r19,.L143
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L143:
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
	b .L150
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L151
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L153
	bv %r0(%r2)
	fcpy,dbl %fr0,%fr4
.L153:
	bv %r0(%r2)
	fsub,dbl %fr5,%fr7,%fr4
.L150:
	bv %r0(%r2)
	fcpy,dbl %fr5,%fr4
.L151:
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
	b .L155
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L159
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L161
	fcpy,sgl %fr0,%fr4L
.L155:
	bv,n %r0(%r2)
.L161:
	bv %r0(%r2)
	fsub,sgl %fr4L,%fr5L,%fr4L
.L159:
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
	b .L169
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L170
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L175
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L163
.L170:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L163:
	bv,n %r0(%r2)
.L175:
	comib,= 0,%r21,.L170
	nop
	bv,n %r0(%r2)
.L169:
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
	b .L182
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L183
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,= %r19,%r28,%r0
	b,n .L187
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L182
	fcpy,sgl %fr4L,%fr5L
.L182:
	fcpy,sgl %fr5L,%fr4L
.L176:
	bv,n %r0(%r2)
.L187:
	comib,<> 0,%r28,.L176
	fcpy,sgl %fr5L,%fr4L
.L183:
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
	b .L194
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L195
	copy %r19,%r21
	copy %r28,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,<> %r22,%r21,.L200
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L188
.L195:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
.L188:
	bv,n %r0(%r2)
.L200:
	comib,= 0,%r21,.L195
	nop
	bv,n %r0(%r2)
.L194:
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
	b .L207
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L208
	copy %r28,%r21
	copy %r19,%r22
	depi 0,31,31,%r21
	depi 0,31,31,%r22
	comb,= %r22,%r21,.L203
	fcpy,dbl %fr5,%fr4
	comiclr,<> 0,%r21,%r0
	b,n .L207
.L201:
	bv,n %r0(%r2)
.L203:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L201
.L207:
	stws %r19,-16(%sp)
	stws %r20,-12(%sp)
	fldds -16(%sp),%fr4
	bv,n %r0(%r2)
.L208:
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
	b .L219
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L213
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L215
	comiclr,<> 0,%r28,%r0
	b,n .L219
.L213:
	bv,n %r0(%r2)
.L215:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L213
.L219:
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
	.size	fminl, .-fminl
	.align 4
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LR's.0-$global$,%r27
	movb,= %r26,%r26,.L239
	ldo RR's.0-$global$(%r1),%r28
	ldil LR'digits,%r21
	copy %r28,%r19
	ldo RR'digits(%r21),%r21
.L238:
	extru %r26,31,6,%r20
	ldbx %r21(%r20),%r20
	stb %r20,0(%r19)
	extru %r26,25,26,%r26
	comib,<> 0,%r26,.L238
	ldo 1(%r19),%r19
	bv %r0(%r2)
	stb %r0,0(%r19)
.L239:
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
	movb,=,n %r25,%r25,.L249
	ldw 0(%r25),%r28
	stw %r25,4(%r26)
	stw %r28,0(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L243:
	bv,n %r0(%r2)
.L249:
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
	comib,=,n 0,%r28,.L251
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L251:
	ldw 4(%r26),%r19
	comiclr,= 0,%r19,%r0
	stw %r28,0(%r19)
.L250:
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
	comib,= 0,%r6,.L260
	copy %r23,%r5
	copy %r25,%r3
	b .L262
	ldi 0,%r4
.L274:
	comb,= %r4,%r6,.L260
	addl %r3,%r5,%r3
.L262:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	copy %r3,%r8
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L274
	ldo 1(%r4),%r4
.L259:
	copy %r8,%r28
.L275:
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
.L260:
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
	comib,= 0,%r5,.L259
	addl %r11,%r29,%r8
	copy %r5,%r24
	copy %r7,%r25
	bl memmove,%r2
	copy %r8,%r26
	b .L275
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
	stw %r7,-120(%r30)
	ldw 0(%r24),%r7
	stw %r6,-116(%r30)
	copy %r23,%r6
	stw %r5,-112(%r30)
	stw %r8,-124(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	comib,= 0,%r7,.L277
	copy %r26,%r5
	copy %r25,%r3
	b .L279
	ldi 0,%r4
.L287:
	comb,= %r4,%r7,.L277
	addl %r3,%r6,%r3
.L279:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	copy %r3,%r8
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L287
	ldo 1(%r4),%r4
.L276:
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
.L277:
	b .L276
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
	comib,>>= 4,%r19,.L307
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L313
	ldi 43,%r19
.L307:
	ldbs,mb 1(%r26),%r28
.L314:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L314
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L314
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L313:
	comb,= %r19,%r28,.L293
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L311
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L302
	ldo 1(%r26),%r26
	ldi 1,%r31
.L296:
	ldi 0,%r28
.L299:
	sh2addl %r28,%r28,%r28 
	ldo -48(%r19),%r19
	ldbs,mb 1(%r26),%r22
	extrs %r19,31,8,%r20
	zdep %r28,30,31,%r21
	extrs %r22,31,8,%r19
	ldo -48(%r19),%r22
	comib,>>= 9,%r22,.L299
	sub %r21,%r20,%r28
	sub %r20,%r21,%r20
	comiclr,<> 0,%r31,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L311:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L296
	ldi 0,%r31
.L302:
	ldi 0,%r28
.L312:
	bv,n %r0(%r2)
.L293:
	ldb 1(%r26),%r19
	ldi 0,%r31
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L296
	ldo 1(%r26),%r26
	b .L312
	ldi 0,%r28
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
	comib,>>= 4,%r19,.L334
	ldi 32,%r20
	comiclr,<> 32,%r28,%r19
	ldi 1,%r19
	comib,= 0,%r19,.L339
	ldi 43,%r19
.L334:
	ldbs,mb 1(%r26),%r28
.L340:
	extrs %r28,31,8,%r28
	ldo -9(%r28),%r19
	comib,>>=,n 4,%r19,.L340
	ldbs,mb 1(%r26),%r28
	comb,=,n %r20,%r28,.L340
	ldbs,mb 1(%r26),%r28
	ldi 43,%r19
.L339:
	comb,= %r19,%r28,.L320
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L338
	ldb 1(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,<< 9,%r28,.L329
	ldo 1(%r26),%r26
	ldi 1,%r25
.L323:
	ldi 0,%r23
	ldi 0,%r24
	ldo -48(%r19),%r19
.L341:
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
	comib,>>=,n 9,%r20,.L341
	ldo -48(%r19),%r19
	comiclr,= 0,%r25,%r0
	b,n .L316
	sub %r22,%r29,%r24
	subb %r21,%r28,%r23
.L316:
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L338:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L323
	ldi 0,%r25
.L329:
	ldi 0,%r23
	ldi 0,%r24
	copy %r23,%r28
	copy %r24,%r29
	bv,n %r0(%r2)
.L320:
	ldb 1(%r26),%r19
	ldi 0,%r25
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r28
	comib,>>= 9,%r28,.L323
	ldo 1(%r26),%r26
	b,n .L329
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
	movb,<> %r24,%r3,.L346
	ldw -180(%r30),%r8
	b .L342
	ldi 0,%r5
.L352:
	comib,>= 0,%r28,.L353
	copy %r5,%r28
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	comib,= 0,%r3,.L343
	addl %r5,%r28,%r6
.L346:
	extru %r3,30,31,%r4
.L354:
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
	movb,>= %r28,%r28,.L352
	uaddcm %r3,%r4,%r3
	copy %r4,%r3
	comib,<> 0,%r3,.L354
	extru %r3,30,31,%r4
.L343:
	ldi 0,%r5
.L342:
	copy %r5,%r28
.L353:
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
	movb,<> %r24,%r3,.L359
	ldw -184(%r30),%r8
	b .L355
	ldi 0,%r4
.L368:
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	comib,= 0,%r3,.L356
	addl %r4,%r28,%r6
.L359:
	extrs %r3,30,31,%r5
.L369:
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
	movb,= %r28,%r28,.L355
	ldo -1(%r3),%r3
	comib,< 0,%r28,.L368
	extrs %r3,30,31,%r3
	copy %r5,%r3
	comib,<> 0,%r3,.L369
	extrs %r3,30,31,%r5
.L356:
	ldi 0,%r4
.L355:
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
	ldw 0(%r26),%r19
	comb,= %r19,%r25,.L378
	copy %r26,%r28
.L392:
	comib,=,n 0,%r19,.L378
	ldws,mb 4(%r28),%r19
	comb,<> %r25,%r19,.L392
	nop
.L378:
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
	b,n .L394
	comib,= 0,%r21,.L394
	ldi 4,%r28
	b .L410
	ldwx %r26(%r28),%r20
.L409:
	comib,=,n 0,%r21,.L394
	ldwx %r26(%r28),%r20
.L410:
	ldwx %r25(%r28),%r21
	comiclr,= 0,%r20,%r19
	ldi 1,%r19
	comclr,<> %r21,%r20,%r22
	ldi 1,%r22
	and %r19,%r22,%r19
	comib,<> 0,%r19,.L409
	ldo 4(%r28),%r28
.L394:
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
.L412:
	ldwx %r25(%r19),%r20
	addl %r28,%r19,%r21
	stw %r20,0(%r21)
	comib,<> 0,%r20,.L412
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
	comib,=,n 0,%r28,.L414
	copy %r26,%r28
	ldws,mb 4(%r28),%r19
.L419:
	comib,<>,n 0,%r19,.L419
	ldws,mb 4(%r28),%r19
	sub %r28,%r26,%r28
	extrs %r28,29,30,%r28
.L414:
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
	b,n .L421
	b,n .L420
.L432:
	comib,=,n 0,%r21,.L425
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L420
	ldo 4(%r25),%r25
.L421:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r21
	comiclr,= 0,%r19,%r20
	ldi 1,%r20
	comclr,<> %r21,%r19,%r19
	ldi 1,%r19
	and %r20,%r19,%r19
	comib,<> 0,%r19,.L432
	ldo -1(%r28),%r28
.L425:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L420:
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
	movb,<> %r24,%r24,.L434
	copy %r24,%r28
	b,n .L439
.L436:
	comib,= 0,%r24,.L437
	ldo 4(%r26),%r26
.L434:
	ldw 0(%r26),%r28
	comb,<>,n %r25,%r28,.L436
	ldo -1(%r24),%r24
	bv %r0(%r2)
	copy %r26,%r28
.L437:
	copy %r24,%r28
.L439:
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
	b,n .L441
	b,n .L440
.L443:
	ldo 4(%r26),%r26
	comib,= 0,%r28,.L440
	ldo 4(%r25),%r25
.L441:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,= %r19,%r20,.L443
	ldo -1(%r28),%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
	comclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L440:
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
	movb,= %r24,%r24,.L450
	copy %r26,%r3
	bl memcpy,%r2
	zdep %r24,29,30,%r24
.L450:
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
	comb,<<= %r19,%r20,.L466
	ldi 0,%r19
	comib,=,n 0,%r24,.L455
	ldo -1(%r24),%r24
.L458:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L458
	stw %r20,0(%r19)
.L455:
	bv,n %r0(%r2)
.L466:
	comb,= %r19,%r24,.L455
	nop
.L457:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L457
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
	movb,= %r24,%r24,.L468
	copy %r26,%r28
	ldi 0,%r19
.L469:
	sh2addl %r19,%r28,%r20 
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L469
	stw %r25,0(%r20)
.L468:
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
	b,n .L475
	comib,=,n 0,%r24,.L474
	ldo -1(%r26),%r26
	ldo -1(%r25),%r25
.L477:
	ldbx %r26(%r24),%r19
	addl %r25,%r24,%r28
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L477
	stb %r19,0(%r28)
.L474:
	bv,n %r0(%r2)
.L475:
	comb,= %r25,%r26,.L474
	nop
	comib,= 0,%r24,.L474
	nop
	ldi 0,%r28
.L478:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L478
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
	bb,>= %r24,26,.L488
	subi 31,%r24,%r20
	subi 31,%r24,%r28
	ldi 0,%r29
	mtsar %r28
	sub %r0,%r24,%r24
	zvdep %r26,32,%r28
	bb,>= %r24,26,.L490
	extru %r24,31,6,%r19
.L492:
	mtsar %r19
	vshd %r0,%r25,%r26
	ldi 0,%r25
	or %r26,%r29,%r29
	bv %r0(%r2)
	or %r25,%r28,%r28
.L488:
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
	bb,< %r24,26,.L492
	extru %r24,31,6,%r19
.L490:
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
	bb,>= %r24,26,.L494
	mtsar %r24
	ldi 0,%r28
	sub %r0,%r24,%r24
	vshd %r0,%r25,%r20
	bb,>= %r24,26,.L496
	extru %r24,31,6,%r19
.L498:
	subi 31,%r19,%r19
	ldi 0,%r29
	mtsar %r19
	or %r29,%r20,%r29
	zvdep %r26,32,%r25
	bv %r0(%r2)
	or %r25,%r28,%r28
.L494:
	uaddcm %r0,%r24,%r21
	vshd %r0,%r26,%r20
	zdep %r25,30,31,%r19
	subi 31,%r21,%r21
	vshd %r0,%r25,%r28
	mtsar %r21
	zvdep %r19,32,%r19
	sub %r0,%r24,%r24
	or %r19,%r20,%r20
	bb,< %r24,26,.L498
	extru %r24,31,6,%r19
.L496:
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
	b .L513
	ldi 32,%r20
.L516:
	comclr,<> %r20,%r28,%r0
	b,n .L515
.L513:
	mtsar %r28
	vshd %r0,%r26,%r19
	extru %r19,31,1,%r19
	comib,= 0,%r19,.L516
	ldo 1(%r28),%r28
	bv,n %r0(%r2)
.L515:
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
	movb,=,n %r26,%r26,.L520
	extru %r26,31,1,%r28
	comib,<>,n 0,%r28,.L517
	ldi 1,%r28
.L519:
	extrs %r26,30,31,%r26
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L519
	ldo 1(%r28),%r28
.L517:
	bv,n %r0(%r2)
.L520:
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
	b .L523
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L523
	ldi 0,%r28
.L523:
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
	b .L527
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L527
	ldi 0,%r28
.L527:
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
	b .L531
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L531
	ldi 0,%r28
.L531:
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
	b,n .L537
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr22L,%fr4L
	ftest
	b,n .L537
	comib,> 0,%r25,.L549
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldws 0(%r28),%fr22L
.L538:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L552
	extru %r25,0,1,%r28
.L540:
	fmpy,sgl %fr4L,%fr22L,%fr4L
	extru %r25,0,1,%r28
.L552:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comib,= 0,%r25,.L537
	extru %r25,31,1,%r28
	fmpy,sgl %fr22L,%fr22L,%fr22L
	comib,<> 0,%r28,.L540
	extru %r25,0,1,%r19
	addl %r19,%r25,%r25
.L551:
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extrs %r25,30,31,%r25
	extru %r25,31,1,%r28
	comib,<> 0,%r28,.L540
	extru %r25,0,1,%r19
	b .L551
	addl %r19,%r25,%r25
.L537:
	bv,n %r0(%r2)
.L549:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	b .L538
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
	b .L554
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr22,%fr5
	ftest
	b,n .L554
	comib,> 0,%r24,.L566
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr22
.L555:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L569
	extru %r24,0,1,%r28
.L557:
	fmpy,dbl %fr4,%fr22,%fr4
	extru %r24,0,1,%r28
.L569:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L554
	extru %r24,31,1,%r28
	fmpy,dbl %fr22,%fr22,%fr22
	comib,<> 0,%r28,.L557
	extru %r24,0,1,%r19
	addl %r19,%r24,%r24
.L568:
	fmpy,dbl %fr22,%fr22,%fr22
	extrs %r24,30,31,%r24
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L557
	extru %r24,0,1,%r19
	b .L568
	addl %r19,%r24,%r24
.L554:
	bv,n %r0(%r2)
.L566:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	b .L555
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
	b .L571
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L571
	comib,> 0,%r24,.L583
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L572:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L586
	extru %r24,0,1,%r28
.L574:
	fmpy,dbl %fr4,%fr22,%fr4
	extru %r24,0,1,%r28
.L586:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comib,= 0,%r24,.L571
	extru %r24,31,1,%r28
	fmpy,dbl %fr22,%fr22,%fr22
	comib,<> 0,%r28,.L574
	extru %r24,0,1,%r19
	addl %r19,%r24,%r24
.L585:
	fmpy,dbl %fr22,%fr22,%fr22
	extrs %r24,30,31,%r24
	extru %r24,31,1,%r28
	comib,<> 0,%r28,.L574
	extru %r24,0,1,%r19
	b .L585
	addl %r19,%r24,%r24
.L571:
	bv,n %r0(%r2)
.L583:
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L572
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
	movb,= %r24,%r24,.L588
	copy %r26,%r28
	ldi 0,%r19
.L589:
	ldbx %r28(%r19),%r20
	ldbx %r25(%r19),%r22
	addl %r28,%r19,%r21
	xor %r20,%r22,%r20
	ldo 1(%r19),%r19
	comb,<> %r24,%r19,.L589
	stb %r20,0(%r21)
.L588:
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
	comib,= 0,%r19,.L601
	copy %r26,%r28
	copy %r26,%r19
	ldbs,mb 1(%r19),%r20
.L609:
	extrs %r20,31,8,%r20
	comib,<>,n 0,%r20,.L609
	ldbs,mb 1(%r19),%r20
.L607:
	comiclr,<> 0,%r24,%r0
	b,n .L598
.L608:
	ldb 0(%r25),%r20
	stb %r20,0(%r19)
	extrs %r20,31,8,%r20
	comib,= 0,%r20,.L600
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	comib,<> 0,%r24,.L608
	ldo 1(%r19),%r19
.L598:
	stb %r0,0(%r19)
.L600:
	bv,n %r0(%r2)
.L601:
	b .L607
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
	movb,= %r25,%r25,.L610
	ldi 0,%r28
	ldbx %r26(%r28),%r19
.L618:
	comiclr,= 0,%r19,%r0
	b,n .L613
.L610:
	bv,n %r0(%r2)
.L613:
	ldo 1(%r28),%r28
	comb,<>,n %r28,%r25,.L618
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
	comib,= 0,%r21,.L624
	copy %r26,%r28
	b .L623
	copy %r25,%r20
.L622:
	comclr,<> %r21,%r19,%r0
	b,n .L621
.L623:
	ldb 0(%r20),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L622
	ldo 1(%r20),%r20
	ldbs,mb 1(%r28),%r21
	extrs %r21,31,8,%r21
	comib,<>,n 0,%r21,.L623
	copy %r25,%r20
.L624:
	copy %r21,%r28
.L621:
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
.L628:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
	comib,<> 0,%r19,.L628
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
	comib,= 0,%r31,.L642
	copy %r25,%r19
	ldbs,mb 1(%r19),%r28
.L653:
	extrs %r28,31,8,%r28
	comib,<>,n 0,%r28,.L653
	ldbs,mb 1(%r19),%r28
	comb,= %r25,%r19,.L642
	sub %r19,%r25,%r28
	ldo -1(%r25),%r29
	extru %r31,31,8,%r23
	b .L639
	addl %r29,%r28,%r29
.L651:
	comib,= 0,%r28,.L630
	ldo 1(%r26),%r26
.L639:
	ldb 0(%r26),%r28
.L654:
	extrs %r28,31,8,%r28
	comb,<> %r31,%r28,.L651
	copy %r23,%r19
	copy %r25,%r20
	b .L634
	copy %r26,%r21
.L652:
	comclr,<> %r19,%r28,%r22
	ldi 1,%r22
	comiclr,= 0,%r28,%r28
	ldi 1,%r28
	and %r28,%r22,%r28
	comib,=,n 0,%r28,.L635
	ldbs,mb 1(%r21),%r19
	extru %r19,31,8,%r19
	comib,= 0,%r19,.L635
	ldo 1(%r20),%r20
.L634:
	comb,<> %r29,%r20,.L652
	ldb 0(%r20),%r28
.L635:
	ldb 0(%r20),%r28
	comb,=,n %r19,%r28,.L642
	ldo 1(%r26),%r26
	b .L654
	ldb 0(%r26),%r28
.L642:
	copy %r26,%r28
.L630:
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
	b .L662
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L663
	bv,n %r0(%r2)
.L663:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L658
	bv,n %r0(%r2)
.L658:
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
.L662:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L658
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
	b,n .L671
	comb,>> %r23,%r25,.L673
	sub %r25,%r23,%r22
	addl %r26,%r22,%r22
	comb,<<,n %r22,%r26,.L673
	ldb 0(%r24),%r31
	b .L670
	extrs %r31,31,8,%r31
.L667:
	comclr,<<= %r26,%r22,%r0
	b,n .L673
.L670:
	ldb 0(%r26),%r19
	copy %r26,%r28
	extrs %r19,31,8,%r19
	comb,<> %r31,%r19,.L667
	ldo 1(%r26),%r26
	comib,=,n 1,%r23,.L665
	ldi 1,%r19
	ldbx %r28(%r19),%r21
.L676:
	ldbx %r24(%r19),%r20
	comb,<> %r20,%r21,.L667
	ldo 1(%r19),%r19
	comb,<>,n %r19,%r23,.L676
	ldbx %r28(%r19),%r21
.L665:
	bv,n %r0(%r2)
.L673:
	bv %r0(%r2)
	ldi 0,%r28
.L671:
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
	movb,= %r24,%r3,.L678
	copy %r26,%r4
	bl memmove,%r2
	nop
.L678:
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
	b .L699
	ldil LR'.LC26,%r19
	ldo RR'.LC26(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr5,%fr22
	ftest
	b .L685
	ldi 0,%r20
	ldil LR'.LC27,%r19
	ldo RR'.LC27(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L700
	fcmp,dbl,= %fr5,%fr0
	fcpy,dbl %fr5,%fr4
	stw %r0,0(%r24)
.L682:
	bv,n %r0(%r2)
.L694:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	ldi 1,%r20
	ldo RR'.LC26(%r19),%r19
.L685:
	fldds 0(%r19),%fr23
	ldi 0,%r28
	ldil LR'.LC27,%r19
	ldo RR'.LC27(%r19),%r19
	fldds 0(%r19),%fr22
.L691:
	fmpy,dbl %fr5,%fr22,%fr5
	fcmp,dbl,!>= %fr5,%fr23
	ftest
	b .L691
	ldo 1(%r28),%r28
	stw %r28,0(%r24)
	comib,= 0,%r20,.L682
	fcpy,dbl %fr5,%fr4
.L705:
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
.L699:
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
	b .L694
	ldil LR'.LC26,%r19
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b .L695
	ldil LR'.LC27,%r19
	fcpy,dbl %fr5,%fr4
.L706:
	bv %r0(%r2)
	stw %r0,0(%r24)
.L700:
	ftest
	b .L697
	fcpy,dbl %fr5,%fr4
	b,n .L706
.L695:
	ldi 1,%r20
	ldo RR'.LC27(%r19),%r19
.L686:
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr5
	fldds 0(%r19),%fr22
	ldi 0,%r28
.L693:
	fadd,dbl %fr5,%fr5,%fr5
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L693
	ldo -1(%r28),%r28
	stw %r28,0(%r24)
	comib,<> 0,%r20,.L705
	fcpy,dbl %fr5,%fr4
	b,n .L682
.L697:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b,n .L686
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
	b,n .L707
.L710:
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
	comb,<> %r28,%r31,.L710
	zdep %r24,30,31,%r24
.L707:
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
	comb,>> %r26,%r25,.L714
	ldi 1,%r19
	b .L720
	ldi 0,%r20
.L717:
	comb,>>= %r25,%r28,.L716
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L733
	copy %r19,%r20
.L714:
	comib,<=,n 0,%r25,.L717
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L720:
	comb,<<,n %r28,%r25,.L719
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L719:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L720
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L716:
	comib,<> 0,%r19,.L720
	ldi 0,%r20
	copy %r19,%r20
.L733:
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
	comb,= %r28,%r19,.L736
	xor %r19,%r28,%r26
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L736:
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
	comb,= %r20,%r28,.L743
	xor %r26,%r20,%r26
.L741:
	bl __clzdi2,%r2
	nop
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bv %r0(%r2)
	ldo -128(%r30),%r30
.L743:
	comb,<> %r28,%r19,.L741
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
	movb,=,n %r26,%r26,.L747
	ldi 0,%r28
.L746:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r19
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L746
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L747:
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
	comb,>> %r25,%r26,.L750
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,<< %r19,%r26,%r0
	b,n .L763
.L750:
	comib,=,n 0,%r21,.L753
	copy %r25,%r19
	copy %r26,%r20
	sh3addl %r21,%r25,%r21 
.L754:
	ldw 0(%r19),%r3
	ldw 4(%r19),%r4
	stw %r3,0(%r20)
	stw %r4,4(%r20)
	ldo 8(%r19),%r19
	comb,<> %r21,%r19,.L754
	ldo 8(%r20),%r20
.L753:
	comb,>>= %r28,%r24,.L764
	ldw -60(%r30),%r3
.L755:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L755
	stb %r20,0(%r19)
.L749:
	ldw -60(%r30),%r3
.L764:
	bv %r0(%r2)
	ldwm -64(%r30),%r4
.L763:
	comib,= 0,%r24,.L749
	ldo -1(%r24),%r28
.L751:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L751
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
	comb,>> %r25,%r26,.L766
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,<< %r28,%r26,%r0
	b,n .L780
.L766:
	comib,= 0,%r21,.L769
	ldi 0,%r28
.L770:
	ldhx,s %r28(%r25),%r20
	sh1addl %r28,%r26,%r19 
	ldo 1(%r28),%r28
	comb,<> %r28,%r21,.L770
	sth %r20,0(%r19)
.L769:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L765
	ldo -1(%r24),%r24
	ldbx %r25(%r24),%r28
	addl %r26,%r24,%r26
	stb %r28,0(%r26)
.L765:
	bv,n %r0(%r2)
.L780:
	comib,= 0,%r24,.L765
	ldo -1(%r24),%r28
.L767:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L767
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
	comb,>> %r25,%r26,.L782
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,<< %r19,%r26,%r0
	b,n .L795
.L782:
	comib,=,n 0,%r22,.L785
	ldi 0,%r19
.L786:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r26,%r20 
	ldo 1(%r19),%r19
	comb,<> %r19,%r22,.L786
	stw %r21,0(%r20)
.L785:
	comclr,<< %r28,%r24,%r0
	b,n .L781
.L787:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo 1(%r28),%r28
	comb,<> %r28,%r24,.L787
	stb %r20,0(%r19)
.L781:
	bv,n %r0(%r2)
.L795:
	comib,= 0,%r24,.L781
	ldo -1(%r24),%r28
.L783:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	ldo -1(%r28),%r28
	comib,<> -1,%r28,.L783
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
	comib,>= 0,%r28,.L801
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L801:
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
	comib,>= 0,%r28,.L804
	ldw -148(%r30),%r2
	stws %r3,-16(%sp)
	stws %r4,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	ldw -124(%r30),%r3
	bv %r0(%r2)
	ldwm -128(%r30),%r4
.L804:
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
	ldi 0,%r28
	extru %r26,31,16,%r26
	ldi 16,%r20
	ldo 16(%r28),%r19
.L810:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L806
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L810
	ldo 16(%r28),%r19
.L806:
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
	ldi 0,%r28
	extru %r26,31,16,%r26
	ldi 16,%r20
	subi 31,%r28,%r19
.L815:
	mtsar %r19
	vextrs %r26,32,%r19
	extru %r19,31,1,%r19
	comib,<>,n 0,%r19,.L811
	ldo 1(%r28),%r28
	comb,<> %r20,%r28,.L815
	subi 31,%r28,%r19
.L811:
	bv,n %r0(%r2)
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
	b .L820
	ldil L'32768,%r19
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	bv,n %r0(%r2)
.L820:
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
	ldi 0,%r28
	extru %r26,31,16,%r26
	copy %r28,%r19
	ldi 16,%r21
.L823:
	subi 31,%r19,%r20
	ldo 1(%r19),%r19
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	comb,<> %r21,%r19,.L823
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
	ldi 0,%r28
	extru %r26,31,16,%r26
	copy %r28,%r19
	ldi 16,%r21
.L826:
	subi 31,%r19,%r20
	ldo 1(%r19),%r19
	mtsar %r20
	vextrs %r26,32,%r20
	extru %r20,31,1,%r20
	comb,<> %r21,%r19,.L826
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
	movb,=,n %r26,%r26,.L831
	ldi 0,%r28
.L830:
	extrs %r26,31+1-1,1,%r19
	extru %r26,30,31,%r26
	and %r19,%r25,%r19
	zdep %r25,30,31,%r25
	comib,<> 0,%r26,.L830
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L831:
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
	b,n .L836
	comib,=,n 0,%r25,.L837
	ldi 0,%r28
.L835:
	extrs %r25,31+1-1,1,%r19
	extru %r25,30,31,%r25
	and %r19,%r26,%r19
	zdep %r26,30,31,%r26
	comib,<> 0,%r25,.L835
	addl %r28,%r19,%r28
	bv,n %r0(%r2)
.L836:
	bv %r0(%r2)
	copy %r26,%r28
.L837:
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
	comb,<< %r25,%r26,.L840
	ldi 1,%r19
	b .L846
	ldi 0,%r20
.L843:
	comb,>>= %r25,%r28,.L842
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L859
	copy %r19,%r20
.L840:
	comib,<=,n 0,%r25,.L843
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L846:
	comb,<<,n %r28,%r25,.L845
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L845:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L846
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L842:
	comib,<> 0,%r19,.L846
	ldi 0,%r20
	copy %r19,%r20
.L859:
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
	b,n .L863
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L860
	ldi 1,%r28
	ldi 0,%r28
.L860:
	bv,n %r0(%r2)
.L863:
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
	b,n .L867
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L864
	ldi 1,%r28
	ldi 0,%r28
.L864:
	bv,n %r0(%r2)
.L867:
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
	b,n .L879
	comib,= 0,%r25,.L875
	ldi 0,%r29
.L872:
	ldi 1,%r19
	ldi 0,%r28
	ldi 31,%r31
.L874:
	extrs %r25,31+1-1,1,%r21
	comclr,<< %r31,%r19,%r22
	ldi 1,%r22
	and %r21,%r26,%r21
	extrs %r25,30,31,%r25
	ldo 1(%r19),%r19
	comiclr,= 0,%r25,%r20
	ldi 1,%r20
	addl %r28,%r21,%r28
	zdep %r26,30,31,%r26
	and %r20,%r22,%r20
	comib,<> 0,%r20,.L874
	extru %r19,31,8,%r19
	sub %r0,%r28,%r19
	comiclr,= 0,%r29,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L879:
	sub %r0,%r25,%r25
	b .L872
	ldi 1,%r29
.L875:
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
	movb,< %r26,%r26,.L902
	ldi 0,%r21
.L881:
	comib,<= 0,%r25,.L904
	copy %r26,%r20
	ldi 1,%r28
	sub %r0,%r25,%r25
	xor %r21,%r28,%r21
.L904:
	comb,<< %r25,%r26,.L883
	ldi 1,%r19
	b .L889
	ldi 0,%r28
.L903:
	comib,= 0,%r19,.L885
	copy %r19,%r28
.L883:
	zdep %r25,30,31,%r25
	comb,<< %r25,%r26,.L903
	zdep %r19,30,31,%r19
	comib,=,n 0,%r19,.L901
	ldi 0,%r28
.L889:
	comb,<<,n %r20,%r25,.L888
	sub %r20,%r25,%r20
	or %r28,%r19,%r28
.L888:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L889
	extru %r25,30,31,%r25
.L885:
	sub %r0,%r28,%r19
	comiclr,= 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L902:
	sub %r0,%r26,%r26
	b .L881
	ldi 1,%r21
.L901:
	b .L885
	copy %r19,%r28
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
	movb,>= %r26,%r26,.L906
	ldi 0,%r21
	sub %r0,%r26,%r26
	ldi 1,%r21
.L906:
	copy %r26,%r28
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	comb,<< %r25,%r26,.L907
	ldi 1,%r19
	b .L927
	sub %r28,%r25,%r20
.L926:
	comiclr,<> 0,%r19,%r0
	b,n .L925
.L907:
	zdep %r25,30,31,%r25
	comb,<< %r25,%r26,.L926
	zdep %r19,30,31,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L925
.L913:
	sub %r28,%r25,%r20
.L927:
	extru %r19,30,31,%r19
	comclr,<< %r28,%r25,%r0
	copy %r20,%r28
	comib,<> 0,%r19,.L913
	extru %r25,30,31,%r25
.L909:
	sub %r0,%r28,%r19
	comiclr,= 0,%r21,%r0
	copy %r19,%r28
	bv,n %r0(%r2)
.L925:
	b .L909
	copy %r26,%r28
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
	comb,>> %r28,%r25,.L929
	ldi 1,%r19
	b .L935
	ldi 0,%r20
.L932:
	zdep %r19,30,31,%r19
	extru %r21,31,16,%r25
	comb,>>= %r25,%r28,.L931
	extru %r19,31,16,%r19
	comib,= 0,%r19,.L948
	copy %r19,%r20
.L929:
	extrs %r25,31,16,%r20
	comib,<= 0,%r20,.L932
	zdep %r25,30,31,%r21
	ldi 0,%r20
.L935:
	comb,<<,n %r28,%r25,.L934
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
	extru %r28,31,16,%r28
	extru %r20,31,16,%r20
.L934:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L935
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L931:
	comib,<> 0,%r19,.L935
	ldi 0,%r20
	copy %r19,%r20
.L948:
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
	comb,<< %r25,%r26,.L950
	ldi 1,%r19
	b .L956
	ldi 0,%r20
.L953:
	comb,>>= %r25,%r28,.L952
	zdep %r19,30,31,%r19
	comib,= 0,%r19,.L969
	copy %r19,%r20
.L950:
	comib,<=,n 0,%r25,.L953
	zdep %r25,30,31,%r25
	ldi 0,%r20
.L956:
	comb,<<,n %r28,%r25,.L955
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L955:
	extru %r19,30,31,%r19
	comib,<> 0,%r19,.L956
	extru %r25,30,31,%r25
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
	bv,n %r0(%r2)
.L952:
	comib,<> 0,%r19,.L956
	ldi 0,%r20
	copy %r19,%r20
.L969:
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
	bb,>=,n %r24,26,.L971
	subi 63,%r24,%r24
	ldi 0,%r29
	mtsar %r24
	bv %r0(%r2)
	zvdep %r26,32,%r28
.L971:
	comib,= 0,%r24,.L974
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
.L974:
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
	bb,>=,n %r24,26,.L976
	subi 63,%r24,%r24
	extrs %r25,0,1,%r28
	mtsar %r24
	bv %r0(%r2)
	vextrs %r25,32,%r29
.L976:
	comib,= 0,%r24,.L979
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
.L979:
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
.L984:
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
	b,n .L990
	comclr,>= %r23,%r25,%r0
	b,n .L989
	comclr,<<= %r24,%r26,%r0
	b,n .L990
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv %r0(%r2)
	ldo 1(%r28),%r28
.L990:
	bv %r0(%r2)
	ldi 0,%r28
.L989:
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
	b,n .L996
	comclr,>= %r23,%r25,%r0
	b,n .L995
	comclr,<<= %r24,%r26,%r0
	b,n .L996
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L996:
	bv %r0(%r2)
	ldi -1,%r28
.L995:
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
	bb,>= %r24,26,.L999
	mtsar %r24
	vshd %r0,%r25,%r29
	ldi 0,%r25
	copy %r25,%r28
.L1001:
	bv,n %r0(%r2)
.L999:
	comib,= 0,%r24,.L1002
	ldo -1(%r24),%r28
	mtsar %r24
	vshd %r0,%r26,%r29
	mtsar %r28
	zvdep %r25,32,%r28
	mtsar %r24
	or %r28,%r29,%r29
	vshd %r0,%r25,%r25
	b .L1001
	copy %r25,%r28
.L1002:
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
	comib,= 0,%r28,.L1016
	ldil LR'.LC34,%r21
	ldo RR'.LC34(%r21),%r21
	copy %r24,%r28
	fldds 0(%r21),%fr4
.L1013:
	fmpy,dbl %fr4,%fr5,%fr4
.L1011:
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,= 0,%r28,.L1012
	extru %r28,31,1,%r19
	fmpy,dbl %fr5,%fr5,%fr5
	comib,<> 0,%r19,.L1013
	extru %r28,0,1,%r20
	addl %r20,%r28,%r28
.L1019:
	fmpy,dbl %fr5,%fr5,%fr5
	extrs %r28,30,31,%r28
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1013
	extru %r28,0,1,%r20
	b .L1019
	addl %r20,%r28,%r28
.L1012:
	comiclr,<= 0,%r24,%r0
	b,n .L1018
	bv,n %r0(%r2)
.L1016:
	ldo RR'.LC34(%r21),%r21
	copy %r24,%r28
	b .L1011
	fldds 0(%r21),%fr4
.L1018:
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
	comib,= 0,%r28,.L1026
	ldil LR'.LC36,%r21
	ldo RR'.LC36(%r21),%r21
	copy %r25,%r28
	fldws 0(%r21),%fr4L
.L1023:
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1021:
	extru %r28,0,1,%r19
	addl %r19,%r28,%r28
	extrs %r28,30,31,%r28
	comib,= 0,%r28,.L1022
	extru %r28,31,1,%r19
	fmpy,sgl %fr22L,%fr22L,%fr22L
	comib,<> 0,%r19,.L1023
	extru %r28,0,1,%r20
	addl %r20,%r28,%r28
.L1029:
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extrs %r28,30,31,%r28
	extru %r28,31,1,%r19
	comib,<> 0,%r19,.L1023
	extru %r28,0,1,%r20
	b .L1029
	addl %r20,%r28,%r28
.L1022:
	comiclr,<= 0,%r25,%r0
	b,n .L1028
	bv,n %r0(%r2)
.L1026:
	ldo RR'.LC36(%r21),%r21
	copy %r25,%r28
	b .L1021
	fldws 0(%r21),%fr4L
.L1028:
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
	b,n .L1034
	comclr,>>= %r23,%r25,%r0
	b,n .L1033
	comclr,<<= %r24,%r26,%r0
	b,n .L1034
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv %r0(%r2)
	ldo 1(%r28),%r28
.L1034:
	bv %r0(%r2)
	ldi 0,%r28
.L1033:
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
	b,n .L1040
	comclr,>>= %r23,%r25,%r0
	b,n .L1039
	comclr,<<= %r24,%r26,%r0
	b,n .L1040
	comclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bv,n %r0(%r2)
.L1040:
	bv %r0(%r2)
	ldi -1,%r28
.L1039:
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
