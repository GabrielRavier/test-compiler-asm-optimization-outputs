	.LEVEL 2.0
	.text
	.align 4
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,>>= %r25,%r26,.L2
	copy %r26,%r28
	cmpib,=,n 0,%r24,.L3
	ldo -1(%r25),%r26
	ldo -1(%r28),%r29
.L4:
	ldb %r26(%r24),%r31
	add,l %r29,%r24,%r1
	ldo -1(%r24),%r24
	cmpib,<> 0,%r24,.L4
	stb %r31,0(%r1)
.L3:
	bve,n (%r2)
.L2:
	cmpb,= %r25,%r26,.L3
	nop
	cmpib,= 0,%r24,.L3
	ldo -1(%r24),%r19
	cmpib,>>= 6,%r19,.L12
	or %r25,%r26,%r1
	extrw,u %r1,31,2,%r20
	cmpib,<> 0,%r20,.L12
	uaddcm %r26,%r25,%r21
	cmpib,>>= 2,%r21,.L12
	copy %r24,%r22
	ldi 0,%r29
	depwi 0,31,2,%r22
.L6:
	ldw %r25(%r29),%r23
	add,l %r28,%r29,%r26
	ldo 4(%r29),%r29
	cmpb,<> %r22,%r29,.L6
	stw %r23,0(%r26)
	add,l %r25,%r29,%r31
	add,l %r28,%r29,%r1
	cmpb,= %r29,%r24,.L3
	sub %r24,%r29,%r20
	ldb %r25(%r29),%r24
	cmpib,= 1,%r20,.L3
	stb %r24,0(%r1)
	ldb 1(%r31),%r25
	cmpib,= 2,%r20,.L3
	stb %r25,1(%r1)
	ldb 2(%r31),%r19
	bve (%r2)
	stb %r19,2(%r1)
.L12:
	ldi 0,%r23
.L34:
	ldb %r25(%r23),%r21
	add,l %r28,%r23,%r22
	ldo 1(%r23),%r23
	cmpb,<> %r23,%r24,.L34
	stb %r21,0(%r22)
	bve,n (%r2)
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
	extrw,u %r24,31,8,%r24
	b .L47
	ldi 0,%r28
.L40:
	cmpib,= 0,%r23,.L39
	ldo 1(%r26),%r26
.L37:
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	cmpb,<> %r24,%r28,.L40
	ldo 1(%r25),%r25
	bve (%r2)
	ldo 1(%r26),%r28
.L39:
	ldi 0,%r28
.L47:
	bve,n (%r2)
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
	extrw,u %r25,31,8,%r25
	b .L56
	copy %r24,%r28
.L51:
	cmpib,= 0,%r24,.L52
	ldo 1(%r26),%r26
.L49:
	ldb 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L51
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L52:
	copy %r24,%r28
.L56:
	bve,n (%r2)
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
	cmpib,= 0,%r28,.L57
	ldo 1(%r25),%r25
.L58:
	ldb 0(%r26),%r20
	ldb 0(%r25),%r19
	cmpb,= %r19,%r20,.L60
	ldo -1(%r28),%r28
	sub %r20,%r19,%r28
.L57:
	bve,n (%r2)
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
	stw,ma %r3,64(%r30)
	cmpib,= 0,%r24,.L69
	copy %r26,%r3
	b,l memcpy,%r2
	nop
.L69:
	copy %r3,%r28
	ldw -84(%r30),%r2
	bve (%r2)
	ldw,mb -64(%r30),%r3
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
	extrw,u %r25,31,8,%r25
	b .L74
	add,l %r26,%r24,%r26
.L76:
	ldb 0(%r28),%r19
	cmpb,= %r25,%r19,.L73
	ldo -1(%r26),%r26
.L74:
	cmpb,<> %r20,%r26,.L76
	copy %r26,%r28
	ldi 0,%r28
.L73:
	bve,n (%r2)
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
	stw,ma %r3,64(%r30)
	cmpib,= 0,%r24,.L80
	copy %r26,%r3
	b,l memset,%r2
	extrw,u %r25,31,8,%r25
.L80:
	copy %r3,%r28
	ldw -84(%r30),%r2
	bve (%r2)
	ldw,mb -64(%r30),%r3
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
	extrw,s %r19,31,8,%r1
	cmpib,= 0,%r1,.L82
	copy %r26,%r28
.L83:
	ldb,mb 1(%r25),%r20
	extrw,s %r20,31,8,%r21
	cmpib,<> 0,%r21,.L83
	stb,mb %r20,1(%r28)
.L82:
	bve,n (%r2)
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
	extrw,s %r19,31,8,%r21
	cmpib,<> 0,%r21,.L89
	extrw,u %r25,31,8,%r25
	b,n .L88
.L91:
	extrw,s %r20,31,8,%r21
	cmpiclr,<> 0,%r21,%r0
	b,n .L88
.L89:
	extrw,u %r21,31,8,%r1
	cmpb,<>,n %r25,%r1,.L91
	ldb,mb 1(%r28),%r20
.L88:
	bve,n (%r2)
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
	cmpib,= 0,%r1,.L100
	ldo 1(%r28),%r28
.L98:
	ldb 0(%r28),%r19
	extrw,s %r19,31,8,%r1
	cmpb,<> %r25,%r1,.L101
	nop
	bve,n (%r2)
.L100:
	bve (%r2)
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
	extrw,s %r19,31,8,%r22
	extrw,s %r21,31,8,%r28
	ldi 1,%r20
	cmpb,= %r22,%r28,.L103
	ldo -1(%r25),%r25
	b .L112
	extrw,u %r21,31,8,%r28
.L105:
	ldo 1(%r20),%r20
	extrw,s %r21,31,8,%r28
	ldb %r25(%r20),%r1
	extrw,s %r1,31,8,%r22
	cmpclr,= %r22,%r28,%r0
	b,n .L111
.L103:
	cmpib,<>,n 0,%r28,.L105
	ldb %r26(%r20),%r21
	extrw,u %r22,31,8,%r23
	bve (%r2)
	sub %r28,%r23,%r28
.L111:
	extrw,u %r21,31,8,%r28
.L112:
	extrw,u %r22,31,8,%r23
	bve (%r2)
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
	extrw,s %r28,31,8,%r28
	cmpib,= 0,%r28,.L113
	copy %r26,%r1
	ldb,mb 1(%r1),%r19
.L118:
	extrw,s %r19,31,8,%r20
	cmpib,<>,n 0,%r20,.L118
	ldb,mb 1(%r1),%r19
	sub %r1,%r26,%r28
.L113:
	bve,n (%r2)
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
	cmpib,<> 0,%r29,.L123
	add,l %r25,%r31,%r23
	b .L135
	ldb 0(%r25),%r21
.L137:
	cmpb,=,n %r23,%r19,.L122
	ldb,mb 1(%r26),%r28
	extrw,u %r28,31,8,%r29
	cmpib,= 0,%r29,.L136
	ldo 1(%r19),%r24
	copy %r24,%r19
.L123:
	ldb 0(%r19),%r21
	cmpclr,<> %r29,%r21,%r22
	ldi 1,%r22
	cmpiclr,= 0,%r21,%r20
	ldi 1,%r20
	and %r20,%r22,%r1
	cmpib,<> 0,%r1,.L137
	nop
.L122:
	sub %r29,%r21,%r28
.L119:
	bve,n (%r2)
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
	cmpib,>= 1,%r24,.L138
	depwi 0,31,1,%r24
	add,l %r26,%r24,%r20
.L140:
	ldb 1(%r26),%r19
	ldb 0(%r26),%r28
	ldo 2(%r25),%r25
	ldo 2(%r26),%r26
	stb %r19,-2(%r25)
	cmpb,<> %r20,%r26,.L140
	stb %r28,-1(%r25)
.L138:
	bve,n (%r2)
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
	depwi -1,26,1,%r26
	ldo -97(%r26),%r28
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,<< 127,%r26,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,= 9,%r26,%r0
	cmpiclr,<> 32,%r26,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,= 127,%r26,%r0
	cmpiclr,<< 31,%r26,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,<< 93,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,<< 94,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,= 32,%r26,%r0
	cmpiclr,<< 4,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpiclr,<< 32,%r28,%r1
	ldi 1,%r1
	cmpiclr,= 0,%r1,%r0
	b,n .L154
	cmpiclr,<< 31,%r26,%r19
	ldi 1,%r19
	cmpib,<> 0,%r19,.L154
	ldo -40(%r26),%r20
	ldi 1,%r28
	ldo -8192(%r20),%r21
	cmpb,>>= %r28,%r21,.L152
	depwi,z -7,31,16,%r22
	sub %r26,%r22,%r26
	cmpiclr,<< 2,%r26,%r28
	ldi 1,%r28
.L152:
	bve,n (%r2)
.L154:
	bve (%r2)
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
	cmpiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpb,>>= %r28,%r26,.L163
	ldo -42(%r26),%r1
	ldil L'49152,%r19
	ldo -8192(%r1),%r20
	ldo -2091(%r19),%r21
	cmpb,>>= %r21,%r20,.L161
	ldil L'16384,%r22
	ldo -8153(%r22),%r23
	cmpclr,<< %r23,%r26,%r28
	ldi 1,%r28
	cmpb,>>= %r23,%r26,.L161
	ldil L'-57344,%r24
	ldi 8184,%r25
	add,l %r26,%r24,%r29
	cmpb,>>= %r25,%r29,.L161
	depwi,z -1,29,14,%r31
	ldil L'1048576,%r1
	sub %r26,%r31,%r20
	ldo 3(%r1),%r19
	cmpb,<<,n %r19,%r20,.L157
	depwi,z -1,30,15,%r28
	and %r26,%r28,%r26
	cmpclr,= %r28,%r26,%r28
	ldi 1,%r28
.L157:
	bve,n (%r2)
.L161:
	bve (%r2)
	ldi 1,%r28
.L163:
	ldo 1(%r26),%r21
	extrw,u %r21,31,7,%r22
	cmpiclr,>>= 32,%r22,%r28
	ldi 1,%r28
	bve,n (%r2)
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
	cmpib,>>= 9,%r19,.L164
	ldi 1,%r28
	depwi -1,26,1,%r26
	ldo -97(%r26),%r26
	cmpiclr,<< 5,%r26,%r28
	ldi 1,%r28
.L164:
	bve,n (%r2)
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
	bve (%r2)
	extrw,u %r26,31,7,%r28
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
	bve (%r2)
	fcpy,dbl %fr0,%fr4
.L174:
	bve (%r2)
	fsub,dbl %fr5,%fr7,%fr4
.L171:
	bve (%r2)
	fcpy,dbl %fr5,%fr4
.L172:
	bve (%r2)
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
	bve,n (%r2)
.L183:
	bve (%r2)
	fsub,sgl %fr4L,%fr5L,%fr4L
.L181:
	bve (%r2)
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
	fstd %fr5,-16(%sp)
	ldw -16(%sp),%r19
	ldw -12(%sp),%r20
	fstd %fr7,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	ftest
	b .L192
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L193
	copy %r19,%r21
	copy %r28,%r22
	depwi 0,31,31,%r21
	depwi 0,31,31,%r22
	cmpb,<> %r22,%r21,.L198
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L186
.L193:
	stw %r19,-16(%sp)
	stw %r20,-12(%sp)
	fldd -16(%sp),%fr4
.L186:
	bve,n (%r2)
.L198:
	cmpib,= 0,%r21,.L193
	nop
	bve,n (%r2)
.L192:
	bve (%r2)
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
	fstw %fr4L,-16(%sp)
	ldw -16(%sp),%r28
	depwi 0,31,31,%r28
	fstw %fr5L,-16(%sp)
	ldw -16(%sp),%r19
	depwi 0,31,31,%r19
	cmpclr,= %r19,%r28,%r0
	b,n .L210
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L205
	fcpy,sgl %fr4L,%fr5L
.L205:
	fcpy,sgl %fr5L,%fr4L
.L199:
	bve,n (%r2)
.L210:
	cmpib,<> 0,%r28,.L199
	fcpy,sgl %fr5L,%fr4L
.L206:
	bve (%r2)
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
	fstd %fr5,-16(%sp)
	ldw -16(%sp),%r19
	ldw -12(%sp),%r20
	fstd %fr7,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	ftest
	b .L217
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L218
	copy %r19,%r21
	copy %r28,%r22
	depwi 0,31,31,%r21
	depwi 0,31,31,%r22
	cmpb,<> %r22,%r21,.L223
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L211
.L218:
	stw %r19,-16(%sp)
	stw %r20,-12(%sp)
	fldd -16(%sp),%fr4
.L211:
	bve,n (%r2)
.L223:
	cmpib,= 0,%r21,.L218
	nop
	bve,n (%r2)
.L217:
	bve (%r2)
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
	fstd %fr5,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	fstd %fr7,-16(%sp)
	ldw -16(%sp),%r19
	ldw -12(%sp),%r20
	ftest
	b .L230
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L231
	copy %r28,%r21
	copy %r19,%r22
	depwi 0,31,31,%r21
	depwi 0,31,31,%r22
	cmpb,= %r22,%r21,.L226
	fcpy,dbl %fr5,%fr4
	cmpiclr,<> 0,%r21,%r0
	b,n .L230
.L224:
	bve,n (%r2)
.L226:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L224
.L230:
	stw %r19,-16(%sp)
	stw %r20,-12(%sp)
	fldd -16(%sp),%fr4
	bve,n (%r2)
.L231:
	bve (%r2)
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
	fstw %fr4L,-16(%sp)
	ldw -16(%sp),%r28
	depwi 0,31,31,%r28
	fstw %fr5L,-16(%sp)
	ldw -16(%sp),%r19
	depwi 0,31,31,%r19
	cmpclr,<> %r19,%r28,%r0
	b,n .L237
	cmpiclr,<> 0,%r28,%r0
	b,n .L241
.L235:
	bve,n (%r2)
.L237:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L235
.L241:
	bve (%r2)
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
	fstd %fr5,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	fstd %fr7,-16(%sp)
	ldw -16(%sp),%r19
	ldw -12(%sp),%r20
	ftest
	b .L252
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L253
	copy %r28,%r21
	copy %r19,%r22
	depwi 0,31,31,%r21
	depwi 0,31,31,%r22
	cmpb,= %r22,%r21,.L248
	fcpy,dbl %fr5,%fr4
	cmpiclr,<> 0,%r21,%r0
	b,n .L252
.L246:
	bve,n (%r2)
.L248:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L246
.L252:
	stw %r19,-16(%sp)
	stw %r20,-12(%sp)
	fldd -16(%sp),%fr4
	bve,n (%r2)
.L253:
	bve (%r2)
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
	extrw,u %r26,31,6,%r20
	ldb %r22(%r20),%r23
	stb %r23,0(%r19)
	extrw,u %r26,25,26,%r26
	cmpib,<> 0,%r26,.L259
	ldo 1(%r19),%r19
	bve (%r2)
	stb %r0,0(%r19)
.L260:
	ldo RR's.0-$global$(%r1),%r28
	copy %r28,%r19
	bve (%r2)
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
	bve (%r2)
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
	stw %r29,-16(%sp)
	fldw -16(%sp),%fr4L
	stw %r21,-16(%sp)
	fldw -16(%sp),%fr4R
	xmpyu %fr4L,%fr4R,%fr5
	fldw 4(%r25),%fr22L
	fstd %fr5,-16(%sp)
	ldw -16(%sp),%r21
	ldw -12(%sp),%r22
	stw %r28,-16(%sp)
	fldw -16(%sp),%fr5R
	xmpyu %fr5R,%fr22L,%fr6
	stw %r29,-16(%sp)
	fldw -16(%sp),%fr23R
	xmpyu %fr23R,%fr22L,%fr23
	fstd %fr6,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	add,l %r22,%r29,%r28
	fstd %fr23,-16(%sp)
	ldw -16(%sp),%r23
	ldw -12(%sp),%r24
	copy %r24,%r20
	add,l %r23,%r28,%r19
	addi 1,%r20,%r29
	add,c %r19,%r0,%r28
	stw %r28,0(%r25)
	stw %r29,4(%r25)
	bve (%r2)
	extrw,u %r28,30,31,%r28
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
	cmpiclr,= 0,%r1,%r0
	stw %r26,4(%r1)
.L264:
	bve,n (%r2)
.L270:
	stw %r25,4(%r26)
	bve (%r2)
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
	cmpib,=,n 0,%r28,.L272
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L272:
	ldw 4(%r26),%r1
	cmpiclr,= 0,%r1,%r0
	stw %r28,0(%r1)
.L271:
	bve,n (%r2)
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
	stw,ma %r11,128(%r30)
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
	cmpib,= 0,%r6,.L281
	copy %r23,%r5
	copy %r25,%r3
	b .L283
	ldi 0,%r4
.L295:
	ldo 1(%r4),%r4
	cmpb,= %r4,%r6,.L281
	add,l %r3,%r5,%r3
.L283:
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r22
	b,l,n $$dyncall,%r2
	nop
	cmpib,<> 0,%r28,.L295
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
	bve (%r2)
	ldw,mb -128(%r30),%r11
.L281:
	stw %r5,-16(%sp)
	fldw -16(%sp),%fr22R
	ldo 1(%r6),%r1
	stw %r6,-16(%sp)
	fldw -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr4
	stw %r1,0(%r10)
	fstd %fr4,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	cmpib,= 0,%r5,.L280
	add,l %r11,%r29,%r8
	copy %r5,%r24
	copy %r7,%r25
	b,l memmove,%r2
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
	stw,ma %r9,128(%r30)
	ldw -180(%r30),%r9
	stw %r8,-124(%r30)
	ldw 0(%r24),%r8
	stw %r6,-116(%r30)
	copy %r23,%r6
	stw %r5,-112(%r30)
	stw %r7,-120(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	cmpib,= 0,%r8,.L298
	copy %r26,%r5
	copy %r25,%r3
	b .L300
	ldi 0,%r4
.L308:
	ldo 1(%r4),%r4
	cmpb,= %r4,%r8,.L298
	add,l %r3,%r6,%r3
.L300:
	copy %r3,%r25
	copy %r5,%r26
	copy %r9,%r22
	b,l,n $$dyncall,%r2
	nop
	cmpib,<> 0,%r28,.L308
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
	bve (%r2)
	ldw,mb -128(%r30),%r9
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
	bve,n (%r2)
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
	extrw,s %r19,31,8,%r23
	ldo -9(%r23),%r28
	cmpib,>>= 4,%r28,.L332
	ldi 32,%r20
	cmpiclr,<> 32,%r23,%r1
	ldi 1,%r1
	cmpib,= 0,%r1,.L337
	ldi 43,%r24
.L332:
	ldb,mb 1(%r26),%r21
.L338:
	extrw,s %r21,31,8,%r23
	ldo -9(%r23),%r22
	cmpib,>>=,n 4,%r22,.L338
	ldb,mb 1(%r26),%r21
	cmpb,=,n %r20,%r23,.L338
	ldb,mb 1(%r26),%r21
	ldi 43,%r24
.L337:
	cmpb,= %r24,%r23,.L314
	ldi 45,%r31
	cmpb,<> %r31,%r23,.L335
	ldo -48(%r23),%r1
	ldb 1(%r26),%r19
	extrw,s %r19,31,8,%r23
	ldo -48(%r23),%r28
	cmpib,<< 9,%r28,.L323
	ldo 1(%r26),%r26
	ldi 1,%r24
.L317:
	ldi 0,%r29
.L320:
	ldo -48(%r23),%r23
	shladd,l %r29,2,%r29,%r20 
	ldb,mb 1(%r26),%r22
	extrw,s %r23,31,8,%r25
	depw,z %r20,30,31,%r21
	extrw,s %r22,31,8,%r23
	ldo -48(%r23),%r31
	cmpib,>>= 9,%r31,.L320
	sub %r21,%r25,%r29
	sub %r25,%r21,%r28
	cmpiclr,= 0,%r24,%r0
	copy %r29,%r28
	bve,n (%r2)
.L335:
	cmpib,>>= 9,%r1,.L317
	ldi 0,%r24
.L323:
	ldi 0,%r28
.L336:
	bve,n (%r2)
.L314:
	ldb 1(%r26),%r25
	ldi 0,%r24
	extrw,s %r25,31,8,%r23
	ldo -48(%r23),%r29
	cmpib,>>= 9,%r29,.L317
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
	extrw,s %r19,31,8,%r23
	ldo -9(%r23),%r28
	cmpib,>>= 4,%r28,.L359
	ldi 32,%r20
	cmpiclr,<> 32,%r23,%r1
	ldi 1,%r1
	cmpib,= 0,%r1,.L362
	ldi 43,%r24
.L359:
	ldb,mb 1(%r26),%r21
.L363:
	extrw,s %r21,31,8,%r23
	ldo -9(%r23),%r22
	cmpib,>>=,n 4,%r22,.L363
	ldb,mb 1(%r26),%r21
	cmpb,=,n %r20,%r23,.L363
	ldb,mb 1(%r26),%r21
	ldi 43,%r24
.L362:
	cmpb,= %r24,%r23,.L343
	ldi 45,%r31
	cmpb,= %r31,%r23,.L361
	ldo -48(%r23),%r1
	cmpib,<< 9,%r1,.L351
	ldi 0,%r24
.L345:
	ldi 0,%r29
.L348:
	ldo -48(%r23),%r23
	shladd,l %r29,2,%r29,%r20 
	ldb,mb 1(%r26),%r22
	extrw,s %r23,31,8,%r25
	depw,z %r20,30,31,%r21
	extrw,s %r22,31,8,%r23
	ldo -48(%r23),%r31
	cmpib,>>= 9,%r31,.L348
	sub %r21,%r25,%r29
	sub %r25,%r21,%r28
	cmpiclr,= 0,%r24,%r0
	copy %r29,%r28
	bve,n (%r2)
.L361:
	ldb 1(%r26),%r19
	ldi 1,%r24
	extrw,s %r19,31,8,%r23
	ldo -48(%r23),%r28
	cmpib,>>= 9,%r28,.L345
	ldo 1(%r26),%r26
.L351:
	bve (%r2)
	ldi 0,%r28
.L343:
	ldb 1(%r26),%r25
	extrw,s %r25,31,8,%r23
	ldo -48(%r23),%r29
	cmpib,<< 9,%r29,.L351
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
	extrw,s %r19,31,8,%r25
	ldo -9(%r25),%r28
	cmpib,>>= 4,%r28,.L386
	ldi 32,%r20
	cmpiclr,<> 32,%r25,%r1
	ldi 1,%r1
	cmpib,= 0,%r1,.L390
	ldi 43,%r23
.L386:
	ldb,mb 1(%r26),%r21
.L391:
	extrw,s %r21,31,8,%r25
	ldo -9(%r25),%r22
	cmpib,>>=,n 4,%r22,.L391
	ldb,mb 1(%r26),%r21
	cmpb,=,n %r20,%r25,.L391
	ldb,mb 1(%r26),%r21
	ldi 43,%r23
.L390:
	cmpb,= %r23,%r25,.L368
	ldi 45,%r31
	cmpb,<> %r31,%r25,.L389
	ldo -48(%r25),%r1
	ldb 1(%r26),%r19
	extrw,s %r19,31,8,%r25
	ldo -48(%r25),%r28
	cmpib,<< 9,%r28,.L377
	ldo 1(%r26),%r26
	ldi 1,%r31
.L371:
	ldi 0,%r23
	ldi 0,%r24
	shrpw %r23,%r24,30,%r28
.L392:
	ldo -48(%r25),%r21
	depw,z %r24,29,30,%r29
	extrw,s %r21,31,8,%r25
	add %r24,%r29,%r29
	add,c %r23,%r28,%r28
	ldb,mb 1(%r26),%r24
	copy %r25,%r22
	extrw,s %r25,0,1,%r21
	shrpw %r28,%r29,31,%r28
	extrw,s %r24,31,8,%r25
	depw,z %r29,30,31,%r29
	ldo -48(%r25),%r19
	sub %r29,%r22,%r24
	sub,b %r28,%r21,%r23
	cmpib,>>=,n 9,%r19,.L392
	shrpw %r23,%r24,30,%r28
	cmpiclr,= 0,%r31,%r0
	b,n .L364
	sub %r22,%r29,%r24
	sub,b %r21,%r28,%r23
.L364:
	copy %r23,%r28
	copy %r24,%r29
	bve,n (%r2)
.L389:
	cmpib,>>= 9,%r1,.L371
	ldi 0,%r31
.L377:
	ldi 0,%r23
	ldi 0,%r24
	copy %r23,%r28
	copy %r24,%r29
	bve,n (%r2)
.L368:
	ldb 1(%r26),%r24
	ldi 0,%r31
	extrw,s %r24,31,8,%r25
	ldo -48(%r25),%r29
	cmpib,>>= 9,%r29,.L371
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
	stw,ma %r8,128(%r30)
	ldo -104(%r30),%r1
	stw %r7,-124(%r30)
	copy %r26,%r7
	stw %r6,-120(%r30)
	copy %r25,%r6
	stw %r5,-116(%r30)
	stw %r4,-112(%r30)
	stw %r3,-108(%r30)
	fstd,ma %fr12,8(%r1)
	stw %r23,-16(%sp)
	fldw -16(%sp),%fr12L
	movb,<> %r24,%r3,.L397
	ldw -180(%r30),%r8
	b .L393
	ldi 0,%r5
.L406:
	cmpib,= 0,%r28,.L393
	uaddcm %r3,%r4,%r3
	fstw %fr12L,-16(%sp)
	ldw -16(%sp),%r2
	cmpib,= 0,%r3,.L394
	add,l %r5,%r2,%r6
.L397:
	extrw,u %r3,30,31,%r4
.L407:
	stw %r4,-16(%sp)
	fldw -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstd %fr22,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	copy %r7,%r26
	add,l %r6,%r29,%r5
	copy %r8,%r22
	copy %r5,%r25
	b,l,n $$dyncall,%r2
	nop
	movb,>= %r28,%r28,.L406
	nop
	copy %r4,%r3
	cmpib,<> 0,%r3,.L407
	extrw,u %r3,30,31,%r4
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
	fldd,ma 8(%r19),%fr12
	bve (%r2)
	ldw,mb -128(%r30),%r8
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
	stw,ma %r9,128(%r30)
	ldo -96(%r30),%r1
	stw %r8,-124(%r30)
	stw %r7,-120(%r30)
	copy %r26,%r7
	stw %r6,-116(%r30)
	copy %r25,%r6
	stw %r5,-112(%r30)
	stw %r4,-108(%r30)
	stw %r3,-104(%r30)
	fstd,ma %fr12,8(%r1)
	ldw -180(%r30),%r8
	stw %r23,-16(%sp)
	fldw -16(%sp),%fr12L
	movb,= %r24,%r3,.L413
	ldw -184(%r30),%r9
.L421:
	extrw,s %r3,30,31,%r4
.L423:
	stw %r4,-16(%sp)
	fldw -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstd %fr22,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	copy %r9,%r24
	add,l %r6,%r29,%r5
	copy %r7,%r26
	copy %r8,%r22
	copy %r5,%r25
	b,l,n $$dyncall,%r2
	nop
	or,<> %r28,%r0,%r28
	b,n .L408
	cmpib,>= 0,%r28,.L411
	ldo -1(%r3),%r2
	fstw %fr12L,-16(%sp)
	ldw -16(%sp),%r6
	extrw,s %r2,30,31,%r3
	cmpib,<> 0,%r3,.L421
	add,l %r5,%r6,%r6
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
	fldd,ma 8(%r19),%fr12
	bve (%r2)
	ldw,mb -128(%r30),%r9
.L411:
	cmpib,= 0,%r4,.L413
	copy %r4,%r3
	b .L423
	extrw,s %r3,30,31,%r4
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
	b,l $$divI,%r31
	nop
	ldo 64(%r30),%r30
	copy %r29,%r28
	copy %r20,%r26
	copy %r19,%r25
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r31
	nop
	bve (%r2)
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
	extrw,s %r25,0,1,%r29
	xor %r29,%r25,%r19
	xor %r26,%r29,%r20
	copy %r29,%r28
	sub %r20,%r29,%r29
	sub,b %r19,%r28,%r28
	bve,n (%r2)
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
	stw,ma %r7,128(%r30)
	copy %r23,%r7
	stw %r6,-124(%r30)
	copy %r24,%r6
	stw %r5,-120(%r30)
	copy %r25,%r5
	stw %r4,-116(%r30)
	copy %r26,%r4
	stw %r3,-112(%r30)
	b,l __divdi3,%r2
	copy %r28,%r3
	stw %r28,0(%r3)
	stw %r29,4(%r3)
	copy %r6,%r24
	copy %r5,%r25
	copy %r4,%r26
	b,l __moddi3,%r2
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
	bve (%r2)
	ldw,mb -128(%r30),%r7
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
	bve,n (%r2)
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
	b,l $$divI,%r31
	nop
	ldo 64(%r30),%r30
	copy %r29,%r28
	copy %r20,%r26
	copy %r19,%r25
	b,l $$remI,%r31
	nop
	bve (%r2)
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
	extrw,s %r25,0,1,%r29
	xor %r29,%r25,%r19
	xor %r26,%r29,%r20
	copy %r29,%r28
	sub %r20,%r29,%r29
	sub,b %r19,%r28,%r28
	bve,n (%r2)
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
	stw,ma %r7,128(%r30)
	copy %r23,%r7
	stw %r6,-124(%r30)
	copy %r24,%r6
	stw %r5,-120(%r30)
	copy %r25,%r5
	stw %r4,-116(%r30)
	copy %r26,%r4
	stw %r3,-112(%r30)
	b,l __divdi3,%r2
	copy %r28,%r3
	stw %r28,0(%r3)
	stw %r29,4(%r3)
	copy %r6,%r24
	copy %r5,%r25
	copy %r4,%r26
	b,l __moddi3,%r2
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
	bve (%r2)
	ldw,mb -128(%r30),%r7
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
	cmpiclr,= 0,%r28,%r0
	b,n .L432
	b,n .L431
.L434:
	cmpiclr,<> 0,%r28,%r0
	b,n .L431
.L432:
	cmpb,<>,n %r28,%r25,.L434
	ldw,mb 4(%r26),%r28
	copy %r26,%r28
.L431:
	bve,n (%r2)
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
	cmpb,= %r20,%r19,.L440
	ldo -4(%r25),%r25
	b,n .L441
.L442:
	ldo 4(%r28),%r28
	ldw %r25(%r28),%r20
	cmpclr,= %r20,%r19,%r0
	b,n .L441
.L440:
	cmpib,<>,n 0,%r19,.L442
	ldw %r26(%r28),%r19
.L441:
	cmpclr,>= %r20,%r19,%r28
	ldi 1,%r28
	cmpclr,<= %r20,%r19,%r0
	ldi -1,%r28
	bve,n (%r2)
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
	ldw %r25(%r19),%r20
	add,l %r28,%r19,%r21
	stw %r20,0(%r21)
	cmpib,<> 0,%r20,.L449
	ldo 4(%r19),%r19
	bve,n (%r2)
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
	cmpib,=,n 0,%r28,.L451
	copy %r26,%r28
	ldw,mb 4(%r28),%r19
.L456:
	cmpib,<>,n 0,%r19,.L456
	ldw,mb 4(%r28),%r19
	sub %r28,%r26,%r1
	extrw,s %r1,29,30,%r28
.L451:
	bve,n (%r2)
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
	cmpib,= 0,%r19,.L462
	ldo -1(%r28),%r28
	ldo 4(%r26),%r26
	cmpib,= 0,%r28,.L457
	ldo 4(%r25),%r25
.L458:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r20
	cmpb,= %r19,%r20,.L471
	nop
.L462:
	ldw 0(%r26),%r1
	ldw 0(%r25),%r21
	cmpclr,>= %r21,%r1,%r28
	ldi 1,%r28
	cmpclr,<= %r21,%r1,%r0
	ldi -1,%r28
.L457:
	bve,n (%r2)
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
	cmpib,= 0,%r24,.L476
	ldo 4(%r26),%r26
.L473:
	ldw 0(%r26),%r28
	cmpb,<>,n %r25,%r28,.L475
	ldo -1(%r24),%r24
	bve (%r2)
	copy %r26,%r28
.L476:
	copy %r24,%r28
.L480:
	bve,n (%r2)
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
	cmpib,= 0,%r28,.L481
	ldo 4(%r25),%r25
.L482:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	cmpb,= %r19,%r20,.L484
	ldo -1(%r28),%r28
	cmpclr,>= %r19,%r20,%r28
	ldi 1,%r28
	cmpclr,<= %r19,%r20,%r0
	ldi -1,%r28
.L481:
	bve,n (%r2)
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
	stw,ma %r3,64(%r30)
	movb,= %r24,%r24,.L494
	copy %r26,%r3
	b,l memcpy,%r2
	depw,z %r24,29,30,%r24
.L494:
	copy %r3,%r28
	ldw -84(%r30),%r2
	bve (%r2)
	ldw,mb -64(%r30),%r3
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
	cmpb,= %r25,%r26,.L506
	copy %r26,%r28
	sub %r26,%r25,%r20
	depw,z %r24,29,30,%r19
	cmpb,<<= %r19,%r20,.L513
	ldi 0,%r22
	cmpib,=,n 0,%r24,.L506
	ldo -1(%r24),%r24
.L503:
	ldw,s %r24(%r25),%r23
	shladd,l %r24,2,%r28,%r26 
	ldo -1(%r24),%r24
	cmpib,<> -1,%r24,.L503
	stw %r23,0(%r26)
.L506:
	bve,n (%r2)
.L513:
	cmpb,= %r22,%r24,.L506
	nop
.L501:
	ldw,s %r22(%r25),%r21
	shladd,l %r22,2,%r28,%r1 
	ldo 1(%r22),%r22
	cmpb,<> %r22,%r24,.L501
	stw %r21,0(%r1)
	bve,n (%r2)
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
	shladd,l %r19,2,%r28,%r20 
	ldo 1(%r19),%r19
	cmpb,<> %r24,%r19,.L516
	stw %r25,0(%r20)
.L515:
	bve,n (%r2)
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
	cmpclr,>> %r25,%r26,%r0
	b,n .L522
	cmpib,=,n 0,%r24,.L521
	ldo -1(%r26),%r22
	ldo -1(%r25),%r23
.L524:
	ldb %r22(%r24),%r29
	add,l %r23,%r24,%r25
	ldo -1(%r24),%r24
	cmpib,<> 0,%r24,.L524
	stb %r29,0(%r25)
.L521:
	bve,n (%r2)
.L522:
	cmpb,= %r25,%r26,.L521
	nop
	cmpib,= 0,%r24,.L521
	ldo -1(%r24),%r28
	cmpib,>>= 6,%r28,.L532
	or %r25,%r26,%r1
	extrw,u %r1,31,2,%r19
	cmpib,<> 0,%r19,.L532
	uaddcm %r25,%r26,%r20
	cmpib,>>= 2,%r20,.L532
	copy %r24,%r21
	ldi 0,%r29
	depwi 0,31,2,%r21
.L526:
	ldw %r26(%r29),%r22
	add,l %r25,%r29,%r23
	ldo 4(%r29),%r29
	cmpb,<> %r21,%r29,.L526
	stw %r22,0(%r23)
	add,l %r25,%r29,%r25
	add,l %r26,%r29,%r31
	cmpb,= %r29,%r24,.L521
	sub %r24,%r29,%r1
	ldb %r26(%r29),%r24
	cmpib,= 1,%r1,.L521
	stb %r24,0(%r25)
	ldb 1(%r31),%r26
	cmpib,= 2,%r1,.L521
	stb %r26,1(%r25)
	ldb 2(%r31),%r28
	bve (%r2)
	stb %r28,2(%r25)
.L532:
	ldi 0,%r21
.L554:
	ldb %r26(%r21),%r20
	add,l %r25,%r21,%r19
	ldo 1(%r21),%r21
	cmpb,<> %r21,%r24,.L554
	stb %r20,0(%r19)
	bve,n (%r2)
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
	depw,z %r26,%sar,32,%r23
	bb,>= %r24,26,.L558
	extrw,u %r24,31,6,%r31
.L560:
	mtsar %r31
	shrpw %r0,%r25,%sar,%r21
	ldi 0,%r25
	or %r21,%r29,%r29
	bve (%r2)
	or %r25,%r23,%r28
.L556:
	mtsar %r19
	uaddcm %r0,%r24,%r20
	depw,z %r25,%sar,32,%r21
	mtsar %r20
	extrw,u %r26,30,31,%r1
	sub %r0,%r24,%r24
	shrpw %r0,%r1,%sar,%r22
	extrw,u %r24,31,6,%r31
	mtsar %r19
	or %r22,%r21,%r23
	bb,< %r24,26,.L560
	depw,z %r26,%sar,32,%r29
.L558:
	mtsar %r31
	depw,z %r25,30,31,%r28
	shrpw %r0,%r26,%sar,%r26
	shrpw %r0,%r25,%sar,%r25
	uaddcm %r0,%r31,%r1
	subi 31,%r1,%r20
	mtsar %r20
	depw,z %r28,%sar,32,%r19
	or %r25,%r23,%r28
	or %r19,%r26,%r21
	bve (%r2)
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
	shrpw %r0,%r25,%sar,%r23
	bb,>= %r24,26,.L564
	extrw,u %r24,31,6,%r29
.L566:
	mtsarcm %r29
	ldi 0,%r1
	depw,z %r26,%sar,32,%r26
	or %r1,%r23,%r29
	bve (%r2)
	or %r26,%r22,%r28
.L562:
	uaddcm %r0,%r24,%r28
	shrpw %r0,%r26,%sar,%r20
	depw,z %r25,30,31,%r19
	subi 31,%r28,%r1
	shrpw %r0,%r25,%sar,%r22
	sub %r0,%r24,%r24
	mtsar %r1
	extrw,u %r24,31,6,%r29
	depw,z %r19,%sar,32,%r21
	bb,< %r24,26,.L566
	or %r21,%r20,%r23
.L564:
	subi 31,%r29,%r31
	mtsar %r31
	uaddcm %r0,%r29,%r28
	depw,z %r25,%sar,32,%r25
	mtsar %r28
	extrw,u %r26,30,31,%r19
	shrpw %r0,%r19,%sar,%r20
	mtsar %r31
	depw,z %r26,%sar,32,%r1
	or %r20,%r25,%r26
	or %r1,%r23,%r29
	bve (%r2)
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
	bve (%r2)
	shrpw %r26,%r26,%sar,%r28
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
	bve (%r2)
	shrpw %r26,%r26,%sar,%r28
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
	bve (%r2)
	shrpw %r26,%r26,%sar,%r28
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
	bve (%r2)
	shrpw %r26,%r26,%sar,%r28
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
	extrw,u %r26,31,16,%r26
	extrw,u %r25,31,4,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r1
	extrw,u %r1,31,4,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r20
	or %r28,%r20,%r21
	bve (%r2)
	extrw,u %r21,31,16,%r28
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
	extrw,u %r26,31,16,%r26
	extrw,u %r25,31,4,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	sub %r0,%r25,%r1
	extrw,u %r1,31,4,%r19
	mtsarcm %r19
	depw,z %r26,%sar,32,%r20
	or %r28,%r20,%r21
	bve (%r2)
	extrw,u %r21,31,16,%r28
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
	extrw,u %r26,31,8,%r26
	extrw,u %r25,31,3,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r1
	extrw,u %r1,31,3,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r20
	or %r28,%r20,%r21
	bve (%r2)
	extrw,u %r21,31,8,%r28
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
	extrw,u %r26,31,8,%r26
	extrw,u %r25,31,3,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	sub %r0,%r25,%r1
	extrw,u %r1,31,3,%r19
	mtsarcm %r19
	depw,z %r26,%sar,32,%r20
	or %r28,%r20,%r21
	bve (%r2)
	extrw,u %r21,31,8,%r28
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
	extrw,u %r26,23,8,%r28
	depw %r26,23,8,%r28
	bve (%r2)
	extrw,u %r28,31,16,%r28
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
	shrpw %r26,%r26,16,%r28
	depw %r28,15,8,%r28
	shrpw %r26,%r28,8,%r28
	bve,n (%r2)
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
	shrpw %r25,%r25,16,%r29
	depw %r29,15,8,%r29
	shrpw %r25,%r29,8,%r29
	shrpw %r26,%r26,16,%r28
	depw %r28,15,8,%r28
	shrpw %r26,%r28,8,%r28
	bve,n (%r2)
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
	cmpclr,<> %r20,%r28,%r0
	b,n .L583
.L581:
	mtsar %r28
	shrpw %r0,%r26,%sar,%r19
	extrw,u %r19,31,1,%r1
	cmpib,= 0,%r1,.L584
	ldo 1(%r28),%r28
	bve,n (%r2)
.L583:
	bve (%r2)
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
	extrw,u %r26,31,1,%r28
	cmpib,<>,n 0,%r28,.L585
	ldi 1,%r28
.L587:
	extrw,s %r26,30,31,%r26
	extrw,u %r26,31,1,%r19
	cmpib,= 0,%r19,.L587
	ldo 1(%r28),%r28
.L585:
	bve,n (%r2)
.L588:
	bve (%r2)
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
	fldw 0(%r1),%fr22L
	fcmp,sgl,!< %fr4L,%fr22L
	ftest
	b .L591
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r20
	fldw 0(%r20),%fr4R
	fcmp,sgl,!> %fr4L,%fr4R
	ftest
	b,n .L591
	ldi 0,%r28
.L591:
	bve,n (%r2)
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
	fldd 0(%r1),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L595
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r20
	fldd 0(%r20),%fr4
	fcmp,dbl,!> %fr5,%fr4
	ftest
	b,n .L595
	ldi 0,%r28
.L595:
	bve,n (%r2)
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
	fldd 0(%r1),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L599
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r20
	fldd 0(%r20),%fr4
	fcmp,dbl,!> %fr5,%fr4
	ftest
	b,n .L599
	ldi 0,%r28
.L599:
	bve,n (%r2)
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
	stw %r25,-16(%sp)
	fldw -16(%sp),%fr23L
	fcnv,w,dbl %fr23L,%fr22
	bve (%r2)
	fstd %fr22,0(%r26)
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
	cmpib,> 0,%r25,.L617
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r1
	fldw 0(%r1),%fr4R
.L606:
	extrw,u %r25,31,1,%r21
	cmpib,= 0,%r21,.L620
	extrw,u %r25,0,1,%r22
.L608:
	fmpy,sgl %fr4L,%fr4R,%fr4L
	extrw,u %r25,0,1,%r22
.L620:
	add,l %r22,%r25,%r25
	extrw,s %r25,30,31,%r25
	cmpib,= 0,%r25,.L605
	extrw,u %r25,31,1,%r23
	cmpib,<> 0,%r23,.L608
	fmpy,sgl %fr4R,%fr4R,%fr4R
	extrw,u %r25,0,1,%r24
.L619:
	add,l %r24,%r25,%r26
	extrw,s %r26,30,31,%r25
	extrw,u %r25,31,1,%r23
	cmpib,<> 0,%r23,.L608
	fmpy,sgl %fr4R,%fr4R,%fr4R
	b .L619
	extrw,u %r25,0,1,%r24
.L605:
	bve,n (%r2)
.L617:
	ldil LR'.LC13,%r19
	ldo RR'.LC13(%r19),%r20
	b .L606
	fldw 0(%r20),%fr4R
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
	cmpib,> 0,%r24,.L634
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r1
	fldd 0(%r1),%fr5
.L623:
	extrw,u %r24,31,1,%r21
	cmpib,= 0,%r21,.L637
	extrw,u %r24,0,1,%r22
.L625:
	fmpy,dbl %fr4,%fr5,%fr4
	extrw,u %r24,0,1,%r22
.L637:
	add,l %r22,%r24,%r24
	extrw,s %r24,30,31,%r24
	cmpib,= 0,%r24,.L622
	extrw,u %r24,31,1,%r23
	cmpib,<> 0,%r23,.L625
	fmpy,dbl %fr5,%fr5,%fr5
	extrw,u %r24,0,1,%r25
.L636:
	add,l %r25,%r24,%r26
	extrw,s %r26,30,31,%r24
	extrw,u %r24,31,1,%r23
	cmpib,<> 0,%r23,.L625
	fmpy,dbl %fr5,%fr5,%fr5
	b .L636
	extrw,u %r24,0,1,%r25
.L622:
	bve,n (%r2)
.L634:
	ldil LR'.LC17,%r19
	ldo RR'.LC17(%r19),%r20
	b .L623
	fldd 0(%r20),%fr5
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
	cmpib,> 0,%r24,.L651
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r1
	fldd 0(%r1),%fr5
.L640:
	extrw,u %r24,31,1,%r21
	cmpib,= 0,%r21,.L654
	extrw,u %r24,0,1,%r22
.L642:
	fmpy,dbl %fr4,%fr5,%fr4
	extrw,u %r24,0,1,%r22
.L654:
	add,l %r22,%r24,%r24
	extrw,s %r24,30,31,%r24
	cmpib,= 0,%r24,.L639
	extrw,u %r24,31,1,%r23
	cmpib,<> 0,%r23,.L642
	fmpy,dbl %fr5,%fr5,%fr5
	extrw,u %r24,0,1,%r25
.L653:
	add,l %r25,%r24,%r26
	extrw,s %r26,30,31,%r24
	extrw,u %r24,31,1,%r23
	cmpib,<> 0,%r23,.L642
	fmpy,dbl %fr5,%fr5,%fr5
	b .L653
	extrw,u %r24,0,1,%r25
.L639:
	bve,n (%r2)
.L651:
	ldil LR'.LC20,%r19
	ldo RR'.LC20(%r19),%r20
	b .L640
	fldd 0(%r20),%fr5
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
	cmpib,>>= 3,%r19,.L663
	or %r26,%r25,%r1
	extrw,u %r1,31,2,%r26
	cmpib,<> 0,%r26,.L663
	copy %r24,%r31
	depwi 0,31,2,%r31
.L658:
	ldw %r28(%r26),%r22
	ldw %r25(%r26),%r20
	add,l %r28,%r26,%r21
	xor %r20,%r22,%r23
	ldo 4(%r26),%r26
	cmpb,<> %r31,%r26,.L658
	stw %r23,0(%r21)
	add,l %r28,%r26,%r29
	add,l %r25,%r26,%r1
	cmpb,= %r26,%r24,.L656
	sub %r24,%r26,%r31
	ldb %r28(%r26),%r24
	ldb %r25(%r26),%r25
	xor %r24,%r25,%r19
	cmpib,= 1,%r31,.L656
	stb %r19,0(%r29)
	ldb 1(%r29),%r22
	ldb 1(%r1),%r20
	xor %r20,%r22,%r21
	cmpib,= 2,%r31,.L656
	stb %r21,1(%r29)
	ldb 2(%r29),%r23
	ldb 2(%r1),%r26
	xor %r26,%r23,%r1
	stb %r1,2(%r29)
.L656:
	bve,n (%r2)
.L663:
	ldi 0,%r19
.L675:
	ldb %r28(%r19),%r29
	ldb %r25(%r19),%r31
	add,l %r28,%r19,%r22
	xor %r31,%r29,%r20
	ldo 1(%r19),%r19
	cmpb,<> %r19,%r24,.L675
	stb %r20,0(%r22)
	bve,n (%r2)
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
	cmpib,= 0,%r19,.L683
	copy %r26,%r28
	copy %r26,%r23
	ldb,mb 1(%r23),%r20
.L693:
	extrw,s %r20,31,8,%r1
	cmpib,<>,n 0,%r1,.L693
	ldb,mb 1(%r23),%r20
.L691:
	cmpiclr,<> 0,%r24,%r0
	b,n .L680
.L692:
	ldb 0(%r25),%r21
	stb %r21,0(%r23)
	extrw,s %r21,31,8,%r22
	cmpib,= 0,%r22,.L682
	ldo 1(%r25),%r25
	ldo -1(%r24),%r24
	cmpib,<> 0,%r24,.L692
	ldo 1(%r23),%r23
.L680:
	stb %r0,0(%r23)
.L682:
	bve,n (%r2)
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
	ldb %r26(%r28),%r19
.L703:
	cmpiclr,= 0,%r19,%r0
	b,n .L697
.L694:
	bve,n (%r2)
.L697:
	ldo 1(%r28),%r28
	cmpb,<>,n %r28,%r25,.L703
	ldb %r26(%r28),%r19
	bve,n (%r2)
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
	extrw,s %r21,31,8,%r23
	cmpib,= 0,%r23,.L709
	copy %r26,%r28
	b .L708
	copy %r25,%r20
.L707:
	cmpb,= %r23,%r1,.L706
	ldo 1(%r20),%r20
.L708:
	ldb 0(%r20),%r19
	extrw,s %r19,31,8,%r1
	cmpib,<> 0,%r1,.L707
	nop
	ldb,mb 1(%r28),%r22
	extrw,s %r22,31,8,%r23
	cmpib,<>,n 0,%r23,.L708
	copy %r25,%r20
.L709:
	copy %r23,%r28
.L706:
	bve,n (%r2)
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
	extrw,s %r19,31,8,%r1
	cmpclr,<> %r25,%r1,%r0
	copy %r26,%r28
	cmpib,<> 0,%r1,.L714
	ldo 1(%r26),%r26
	bve,n (%r2)
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
	extrw,s %r31,31,8,%r31
	cmpib,= 0,%r31,.L728
	copy %r25,%r19
	ldb,mb 1(%r19),%r28
.L740:
	extrw,s %r28,31,8,%r1
	cmpib,<>,n 0,%r1,.L740
	ldb,mb 1(%r19),%r28
	cmpb,= %r25,%r19,.L728
	sub %r19,%r25,%r20
	ldo -1(%r25),%r29
	extrw,u %r31,31,8,%r23
	b .L737
	add,l %r29,%r20,%r29
.L738:
	cmpib,= 0,%r28,.L716
	ldo 1(%r26),%r26
.L737:
	ldb 0(%r26),%r21
.L741:
	extrw,s %r21,31,8,%r28
	cmpb,<> %r31,%r28,.L738
	copy %r25,%r20
	copy %r23,%r28
	b .L720
	copy %r26,%r21
.L739:
	cmpclr,<> %r28,%r24,%r22
	ldi 1,%r22
	cmpiclr,= 0,%r24,%r19
	ldi 1,%r19
	and %r19,%r22,%r1
	cmpib,=,n 0,%r1,.L721
	ldb,mb 1(%r21),%r28
	extrw,u %r28,31,8,%r28
	cmpib,= 0,%r28,.L721
	ldo 1(%r20),%r20
.L720:
	cmpb,<> %r29,%r20,.L739
	ldb 0(%r20),%r24
.L721:
	ldb 0(%r20),%r24
	cmpb,=,n %r28,%r24,.L728
	ldo 1(%r26),%r26
	b .L741
	ldb 0(%r26),%r21
.L728:
	copy %r26,%r28
.L716:
	bve,n (%r2)
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
	bve,n (%r2)
.L750:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L745
	bve,n (%r2)
.L745:
	bve (%r2)
	fneg,dbl %fr4,%fr4
.L749:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L745
	bve,n (%r2)
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
	cmpb,>> %r23,%r25,.L764
	sub %r25,%r23,%r25
	add,l %r26,%r25,%r22
	cmpb,<<,n %r22,%r26,.L764
	ldb 0(%r24),%r29
	b .L759
	extrw,s %r29,31,8,%r29
.L763:
	copy %r31,%r28
.L755:
	cmpclr,<<= %r28,%r22,%r0
	b,n .L764
.L759:
	ldb 0(%r28),%r19
	extrw,s %r19,31,8,%r1
	cmpb,<> %r29,%r1,.L763
	ldo 1(%r28),%r31
	cmpiclr,<> 1,%r23,%r0
	b,n .L753
.L758:
	b .L756
	ldi 1,%r1
.L757:
	cmpclr,<> %r23,%r1,%r0
	b,n .L753
.L756:
	ldb %r28(%r1),%r21
	ldb %r24(%r1),%r20
	cmpb,=,n %r20,%r21,.L757
	ldo 1(%r1),%r1
	cmpb,>>,n %r31,%r22,.L764
	ldb 0(%r31),%r26
	extrw,s %r26,31,8,%r25
	cmpb,<> %r25,%r29,.L755
	ldo 1(%r31),%r28
	copy %r31,%r19
	copy %r28,%r31
	b .L758
	copy %r19,%r28
.L764:
	ldi 0,%r28
.L753:
	bve,n (%r2)
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
	stw,ma %r4,64(%r30)
	stw %r3,-60(%r30)
	movb,= %r24,%r3,.L773
	copy %r26,%r4
	b,l memmove,%r2
	nop
.L773:
	add,l %r4,%r3,%r28
	ldw -84(%r30),%r2
	ldw -60(%r30),%r3
	bve (%r2)
	ldw,mb -64(%r30),%r4
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
	ldo RR'.LC26(%r19),%r19
	fldd 0(%r19),%fr22
	fcmp,dbl,!>= %fr5,%fr22
	ftest
	b .L780
	ldi 0,%r31
	ldil LR'.LC27,%r1
	ldo RR'.LC27(%r1),%r20
	fldd 0(%r20),%fr4
	fcmp,dbl,!< %fr5,%fr4
	ftest
	b .L795
	fcmp,dbl,= %fr5,%fr0
	fcpy,dbl %fr5,%fr4
.L802:
	stw %r0,0(%r24)
.L777:
	bve,n (%r2)
.L789:
	fcpy,dbl %fr6,%fr5
	ldil LR'.LC26,%r29
	ldi 1,%r31
	ldo RR'.LC26(%r29),%r19
.L780:
	ldil LR'.LC27,%r1
	ldi 0,%r26
	fldd 0(%r19),%fr9
	ldo RR'.LC27(%r1),%r20
	fldd 0(%r20),%fr10
.L786:
	fmpy,dbl %fr5,%fr10,%fr5
	fcmp,dbl,!>= %fr5,%fr9
	ftest
	b .L786
	ldo 1(%r26),%r26
	stw %r26,0(%r24)
	cmpib,= 0,%r31,.L777
	fcpy,dbl %fr5,%fr4
.L801:
	bve (%r2)
	fneg,dbl %fr5,%fr4
.L794:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r21
	fldd 0(%r21),%fr7
	fcmp,dbl,!<= %fr5,%fr7
	ftest
	b .L789
	fneg,dbl %fr5,%fr6
	ldil LR'.LC25,%r22
	ldo RR'.LC25(%r22),%r23
	fldd 0(%r23),%fr23
	fcmp,dbl,!> %fr5,%fr23
	ftest
	b .L790
	ldil LR'.LC27,%r25
	b .L802
	fcpy,dbl %fr5,%fr4
.L795:
	ftest
	b .L792
	fcpy,dbl %fr5,%fr4
	b .L777
	stw %r0,0(%r24)
.L790:
	ldi 1,%r31
	ldo RR'.LC27(%r25),%r20
.L781:
	fcpy,dbl %fr6,%fr5
	ldi 0,%r26
	fldd 0(%r20),%fr8
.L788:
	fadd,dbl %fr5,%fr5,%fr5
	fcmp,dbl,!< %fr5,%fr8
	ftest
	b .L788
	ldo -1(%r26),%r26
	stw %r26,0(%r24)
	cmpib,<> 0,%r31,.L801
	fcpy,dbl %fr5,%fr4
	b,n .L777
.L792:
	b .L781
	fcpy,dbl %fr5,%fr6
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
	cmpiclr,<> 0,%r21,%r0
	b,n .L803
.L806:
	shrpw %r25,%r26,1,%r19
	extrw,u %r26,31,1,%r29
	ldi 0,%r28
	extrw,u %r25,30,31,%r25
	sub %r0,%r29,%r22
	sub,b %r0,%r28,%r21
	copy %r19,%r26
	and %r22,%r24,%r20
	or %r25,%r19,%r31
	and %r21,%r23,%r19
	shrpw %r23,%r24,31,%r23
	add %r20,%r2,%r2
	add,c %r19,%r1,%r1
	cmpb,<> %r28,%r31,.L806
	depw,z %r24,30,31,%r24
.L803:
	copy %r1,%r28
	copy %r2,%r29
	ldw -20(%r30),%r2
	bve,n (%r2)
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
	cmpb,>> %r26,%r25,.L810
	ldi 1,%r1
	b,n .L838
.L813:
	cmpb,>>= %r25,%r26,.L812
	depw,z %r1,30,31,%r1
	cmpib,= 0,%r1,.L840
	copy %r1,%r28
.L810:
	cmpib,<=,n 0,%r25,.L813
	depw,z %r25,30,31,%r25
	ldi 0,%r28
.L820:
	cmpclr,>> %r25,%r26,%r20
	ldi 1,%r20
	sub %r26,%r25,%r22
	ldi 0,%r21
	extrw,u %r25,30,31,%r25
	cmpclr,= %r21,%r20,%r0
	copy %r1,%r21
	cmpiclr,= 0,%r20,%r0
	copy %r22,%r26
	extrw,u %r1,30,31,%r1
	cmpib,<> 0,%r1,.L820
	or %r28,%r21,%r28
.L815:
	cmpiclr,= 0,%r24,%r0
	copy %r26,%r28
	bve,n (%r2)
.L812:
	cmpib,<> 0,%r1,.L820
	ldi 0,%r28
	copy %r1,%r28
.L840:
	cmpiclr,= 0,%r24,%r0
	copy %r26,%r28
	bve,n (%r2)
.L838:
	cmpclr,<< %r26,%r25,%r19
	ldi 1,%r19
	sub %r26,%r25,%r25
	cmpiclr,= 0,%r19,%r0
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
	extrw,s %r26,31,8,%r19
	extrw,s %r26,24+1-1,1,%r28
	ldo 128(%r30),%r30
	cmpb,= %r28,%r19,.L843
	xor %r19,%r28,%r26
	b,l __clzsi2,%r2
	depw,z %r26,23,24,%r26
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bve (%r2)
	ldo -128(%r30),%r30
.L843:
	ldi 7,%r28
	ldw -148(%r30),%r2
	bve (%r2)
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
	extrw,s %r25,0,1,%r20
	copy %r25,%r28
	copy %r26,%r19
	ldo 128(%r30),%r30
	xor %r25,%r20,%r25
	cmpb,= %r20,%r28,.L850
	xor %r26,%r20,%r26
.L848:
	b,l __clzdi2,%r2
	nop
	ldw -148(%r30),%r2
	ldo -1(%r28),%r28
	bve (%r2)
	ldo -128(%r30),%r30
.L850:
	cmpb,<> %r28,%r19,.L848
	ldi 63,%r28
	ldw -148(%r30),%r2
	bve (%r2)
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
	extrw,s %r26,31+1-1,1,%r19
	extrw,u %r26,30,31,%r26
	and %r19,%r25,%r1
	depw,z %r25,30,31,%r25
	cmpib,<> 0,%r26,.L853
	add,l %r28,%r1,%r28
	bve,n (%r2)
.L854:
	bve (%r2)
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
	stw,ma %r4,64(%r30)
	copy %r24,%r20
	extrw,u %r24,28,29,%r21
	stw %r3,-60(%r30)
	cmpb,>> %r25,%r26,.L860
	depwi 0,31,3,%r20
	add,l %r25,%r24,%r28
	cmpclr,<< %r28,%r26,%r0
	b,n .L891
.L860:
	cmpib,= 0,%r21,.L892
	copy %r25,%r23
	copy %r26,%r29
	shladd,l %r21,3,%r25,%r22 
.L863:
	ldw 0(%r23),%r3
	ldw 4(%r23),%r4
	stw %r3,0(%r29)
	stw %r4,4(%r29)
	ldo 8(%r23),%r23
	cmpb,<> %r22,%r23,.L863
	ldo 8(%r29),%r29
	cmpb,>>=,n %r20,%r24,.L856
	sub %r24,%r20,%r4
	ldo -1(%r4),%r31
	cmpib,>>= 6,%r31,.L893
	add,l %r26,%r20,%r22
	ldo 1(%r20),%r31
	add,l %r25,%r31,%r21
	sub %r22,%r21,%r19
	cmpib,>>= 2,%r19,.L889
	add,l %r25,%r20,%r1
	or %r1,%r22,%r3
	extrw,u %r3,31,2,%r23
	cmpib,<> 0,%r23,.L889
	copy %r4,%r29
	ldi 0,%r28
	depwi 0,31,2,%r29
.L866:
	ldw %r1(%r28),%r31
	add,l %r22,%r28,%r21
	ldo 4(%r28),%r28
	cmpb,<> %r28,%r29,.L866
	stw %r31,0(%r21)
	cmpb,= %r4,%r29,.L856
	add,l %r29,%r20,%r20
	ldb %r25(%r20),%r22
	add,l %r26,%r20,%r4
	ldo 1(%r20),%r1
	cmpb,>>= %r1,%r24,.L856
	stb %r22,0(%r4)
	ldb %r25(%r1),%r19
	add,l %r26,%r1,%r3
	ldo 2(%r20),%r23
	cmpb,>>= %r23,%r24,.L856
	stb %r19,0(%r3)
	ldb %r25(%r23),%r24
	add,l %r26,%r23,%r26
	stb %r24,0(%r26)
.L856:
	ldw -60(%r30),%r3
.L895:
	bve (%r2)
	ldw,mb -64(%r30),%r4
.L894:
	ldo 1(%r31),%r31
.L889:
	ldb %r25(%r20),%r29
	stb %r29,0(%r22)
	copy %r31,%r20
	cmpb,<> %r31,%r24,.L894
	add,l %r26,%r31,%r22
	ldw -60(%r30),%r3
	bve (%r2)
	ldw,mb -64(%r30),%r4
.L891:
	cmpib,= 0,%r24,.L856
	ldo -1(%r24),%r1
.L861:
	ldb %r25(%r1),%r20
	add,l %r26,%r1,%r19
	ldo -1(%r1),%r1
	cmpib,<> -1,%r1,.L861
	stb %r20,0(%r19)
	ldw -60(%r30),%r3
	bve (%r2)
	ldw,mb -64(%r30),%r4
.L892:
	add,l %r26,%r20,%r22
	cmpib,<> 0,%r24,.L889
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
	cmpb,>> %r25,%r26,.L900
	extrw,u %r24,30,31,%r22
	add,l %r25,%r24,%r28
	cmpclr,<< %r28,%r26,%r0
	b,n .L926
.L900:
	cmpib,=,n 0,%r22,.L899
	ldo -1(%r22),%r21
	cmpib,>>= 8,%r21,.L910
	or %r25,%r26,%r23
	extrw,u %r23,31,2,%r29
	cmpib,<> 0,%r29,.L910
	ldo 2(%r25),%r31
	cmpb,= %r31,%r26,.L910
	extrw,u %r24,29,30,%r1
	ldi 0,%r28
	depw,z %r1,29,30,%r21
.L904:
	ldw %r25(%r28),%r20
	add,l %r26,%r28,%r19
	ldo 4(%r28),%r28
	cmpb,<> %r21,%r28,.L904
	stw %r20,0(%r19)
	depw,z %r1,30,31,%r23
	cmpb,=,n %r23,%r22,.L899
	ldh %r25(%r28),%r22
	add,l %r26,%r28,%r29
	sth %r22,0(%r29)
.L899:
	extrw,u %r24,31,1,%r20
	cmpib,= 0,%r20,.L896
	ldo -1(%r24),%r24
	ldb %r25(%r24),%r25
.L929:
	add,l %r26,%r24,%r26
	stb %r25,0(%r26)
.L896:
	bve,n (%r2)
.L926:
	cmpib,= 0,%r24,.L896
	ldo -1(%r24),%r1
.L901:
	ldb %r25(%r1),%r20
	add,l %r26,%r1,%r19
	ldo -1(%r1),%r1
	cmpib,<> -1,%r1,.L901
	stb %r20,0(%r19)
	bve,n (%r2)
.L910:
	ldi 0,%r21
.L924:
	ldh,s %r21(%r25),%r31
	shladd,l %r21,1,%r26,%r1 
	ldo 1(%r21),%r21
	cmpb,<> %r21,%r22,.L924
	sth %r31,0(%r1)
	extrw,u %r24,31,1,%r20
	cmpib,= 0,%r20,.L896
	ldo -1(%r24),%r24
	b .L929
	ldb %r25(%r24),%r25
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
	extrw,u %r24,29,30,%r22
	cmpb,>> %r25,%r26,.L934
	depwi 0,31,2,%r21
	add,l %r25,%r24,%r28
	cmpclr,<< %r28,%r26,%r0
	b,n .L967
.L934:
	ldi 0,%r31
	cmpclr,<> %r31,%r22,%r0
	b,n .L963
.L932:
	ldw,s %r31(%r25),%r23
	shladd,l %r31,2,%r26,%r29 
	ldo 1(%r31),%r31
	cmpb,<> %r31,%r22,.L932
	stw %r23,0(%r29)
	cmpb,>>=,n %r21,%r24,.L930
	sub %r24,%r21,%r1
	ldo -1(%r1),%r28
	cmpib,>>= 6,%r28,.L968
	add,l %r26,%r21,%r22
	ldo 1(%r21),%r28
	add,l %r25,%r28,%r20
	sub %r22,%r20,%r19
	cmpib,>>= 2,%r19,.L965
	add,l %r25,%r21,%r23
	or %r23,%r22,%r29
	extrw,u %r29,31,2,%r31
	cmpib,<> 0,%r31,.L965
	copy %r1,%r29
	ldi 0,%r28
	depwi 0,31,2,%r29
.L939:
	ldw %r23(%r28),%r20
	add,l %r22,%r28,%r19
	ldo 4(%r28),%r28
	cmpb,<> %r28,%r29,.L939
	stw %r20,0(%r19)
	cmpb,= %r1,%r29,.L930
	add,l %r29,%r21,%r21
	ldb %r25(%r21),%r22
	add,l %r26,%r21,%r1
	ldo 1(%r21),%r23
	cmpb,>>= %r23,%r24,.L930
	stb %r22,0(%r1)
	ldb %r25(%r23),%r31
	add,l %r26,%r23,%r29
	ldo 2(%r21),%r20
	cmpb,>>= %r20,%r24,.L930
	stb %r31,0(%r29)
	ldb %r25(%r20),%r24
	add,l %r26,%r20,%r26
	stb %r24,0(%r26)
.L930:
	bve,n (%r2)
.L969:
	ldo 1(%r28),%r28
.L965:
	ldb %r25(%r21),%r19
	stb %r19,0(%r22)
	copy %r28,%r21
	cmpb,<> %r28,%r24,.L969
	add,l %r26,%r28,%r22
	bve,n (%r2)
.L967:
	cmpib,= 0,%r24,.L930
	ldo -1(%r24),%r1
.L935:
	ldb %r25(%r1),%r20
	add,l %r26,%r1,%r19
	ldo -1(%r1),%r1
	cmpib,<> -1,%r1,.L935
	stb %r20,0(%r19)
	bve,n (%r2)
.L963:
	add,l %r26,%r21,%r22
	cmpib,<> 0,%r24,.L965
	ldo 1(%r21),%r28
	bve,n (%r2)
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
	b,l $$remI,%r31
	nop
	bve (%r2)
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
	stw %r26,-16(%sp)
	fldw -16(%sp),%fr22L
	bve (%r2)
	fcnv,uw,dbl %fr22L,%fr4
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
	stw %r26,-16(%sp)
	fldw -16(%sp),%fr22L
	bve (%r2)
	fcnv,uw,sgl %fr22L,%fr4L
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 4
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	stw %r25,-16(%sp)
	stw %r26,-12(%sp)
	fldd -16(%sp),%fr22
	bve (%r2)
	fcnv,udw,dbl %fr22,%fr4
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 4
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	stw %r25,-16(%sp)
	stw %r26,-12(%sp)
	fldd -16(%sp),%fr22
	bve (%r2)
	fcnv,udw,sgl %fr22,%fr4L
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
	b,l $$remU,%r31
	nop
	bve (%r2)
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
	extrw,u %r26,31,16,%r26
	extrw,s %r26,16,17,%r28
	cmpib,<>,n 0,%r28,.L979
	extrw,s %r26,17,18,%r28
	cmpib,<> 0,%r28,.L976
	extrw,s %r26,18,19,%r1
	cmpib,<> 0,%r1,.L980
	extrw,s %r26,19,20,%r19
	cmpib,<> 0,%r19,.L981
	extrw,s %r26,20,21,%r20
	cmpib,<> 0,%r20,.L982
	extrw,s %r26,21,22,%r21
	cmpib,<> 0,%r21,.L983
	extrw,s %r26,22,23,%r22
	cmpib,<> 0,%r22,.L984
	extrw,s %r26,23,24,%r23
	cmpib,<> 0,%r23,.L985
	extrw,s %r26,24,25,%r24
	cmpib,<> 0,%r24,.L986
	extrw,s %r26,25,26,%r25
	cmpib,<> 0,%r25,.L987
	extrw,s %r26,26,27,%r29
	cmpib,<> 0,%r29,.L988
	extrw,s %r26,27,28,%r31
	cmpib,<>,n 0,%r31,.L989
	extrw,s %r26,28,29,%r28
	cmpib,<> 0,%r28,.L990
	extrw,s %r26,29,30,%r1
	cmpib,<> 0,%r1,.L991
	extrw,s %r26,30,31,%r19
	cmpiclr,= 0,%r19,%r0
	b,n .L992
	cmpiclr,<> 0,%r26,%r26
	ldi 1,%r26
	ldo 15(%r26),%r28
.L976:
	bve,n (%r2)
.L979:
	bve (%r2)
	ldi 0,%r28
.L990:
	bve (%r2)
	ldi 12,%r28
.L980:
	bve (%r2)
	ldi 2,%r28
.L981:
	bve (%r2)
	ldi 3,%r28
.L982:
	bve (%r2)
	ldi 4,%r28
.L983:
	bve (%r2)
	ldi 5,%r28
.L984:
	bve (%r2)
	ldi 6,%r28
.L985:
	bve (%r2)
	ldi 7,%r28
.L986:
	bve (%r2)
	ldi 8,%r28
.L987:
	bve (%r2)
	ldi 9,%r28
.L988:
	bve (%r2)
	ldi 10,%r28
.L989:
	bve (%r2)
	ldi 11,%r28
.L991:
	bve (%r2)
	ldi 13,%r28
.L992:
	bve (%r2)
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
	extrw,u %r26,31,16,%r19
	extrw,u %r26,31,1,%r26
	cmpib,<>,n 0,%r26,.L997
	ldi 2,%r28
	and %r19,%r28,%r20
	cmpib,<> 0,%r20,.L998
	ldi 4,%r1
	and %r19,%r1,%r21
	cmpib,<>,n 0,%r21,.L994
	ldi 8,%r28
	and %r19,%r28,%r22
	cmpiclr,= 0,%r22,%r0
	b,n .L1000
	extrw,s,>= %r19,27,1,%r0
	b,n .L1001
	extrw,s,>= %r19,26,1,%r0
	b,n .L1002
	extrw,s,>= %r19,25,1,%r0
	b,n .L1003
	extrw,s,>= %r19,24,1,%r0
	b,n .L1004
	extrw,s,>= %r19,23,1,%r0
	b,n .L994
	extrw,s,>= %r19,22,1,%r0
	b,n .L1006
	extrw,s,>= %r19,21,1,%r0
	b,n .L1007
	extrw,s,>= %r19,20,1,%r0
	b,n .L1008
	extrw,s,>= %r19,19,1,%r0
	b,n .L1009
	extrw,s,>= %r19,18,1,%r0
	b,n .L1010
	bb,< %r19,17,.L1011
	extrw,s %r19,16,17,%r23
	cmpiclr,<> 0,%r23,%r28
	ldi 1,%r28
	ldo 15(%r28),%r28
.L994:
	bve,n (%r2)
.L997:
	bve (%r2)
	ldi 0,%r28
.L998:
	bve (%r2)
	ldi 1,%r28
.L1009:
	bve (%r2)
	ldi 12,%r28
.L1000:
	bve (%r2)
	ldi 3,%r28
.L1001:
	bve (%r2)
	copy %r1,%r28
.L1002:
	bve (%r2)
	ldi 5,%r28
.L1003:
	bve (%r2)
	ldi 6,%r28
.L1004:
	bve (%r2)
	ldi 7,%r28
.L1006:
	bve (%r2)
	ldi 9,%r28
.L1007:
	bve (%r2)
	ldi 10,%r28
.L1008:
	bve (%r2)
	ldi 11,%r28
.L1010:
	bve (%r2)
	ldi 13,%r28
.L1011:
	bve (%r2)
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
	fldw 0(%r1),%fr22L
	fcmp,sgl,!>= %fr4L,%fr22L
	ftest
	b .L1017
	ldil L'32768,%r19
	fcnv,t,sgl,w %fr4L,%fr4L
	fstw %fr4L,-16(%sp)
	ldw -16(%sp),%r28
	bve,n (%r2)
.L1017:
	fsub,sgl %fr4L,%fr22L,%fr4R
	fcnv,t,sgl,w %fr4R,%fr5L
	fstw %fr5L,-16(%sp)
	ldw -16(%sp),%r20
	bve (%r2)
	add,l %r20,%r19,%r28
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
	extrw,u %r26,29+1-1,1,%r28
	extrw,u %r26,30+1-1,1,%r19
	extrw,u %r26,31,1,%r20
	extrw,u %r26,28+1-1,1,%r21
	add,l %r19,%r20,%r1
	extrw,u %r26,27+1-1,1,%r23
	add,l %r1,%r28,%r22
	extrw,u %r26,23+1-1,1,%r28
	add,l %r22,%r21,%r24
	extrw,u %r26,26+1-1,1,%r25
	add,l %r24,%r23,%r29
	extrw,u %r26,25+1-1,1,%r31
	add,l %r29,%r25,%r19
	extrw,u %r26,24+1-1,1,%r20
	add,l %r19,%r31,%r1
	extrw,u %r26,22+1-1,1,%r22
	add,l %r1,%r20,%r21
	extrw,u %r26,21+1-1,1,%r24
	add,l %r21,%r28,%r23
	extrw,u %r26,17+1-1,1,%r28
	add,l %r23,%r22,%r25
	extrw,u %r26,20+1-1,1,%r29
	add,l %r25,%r24,%r31
	extrw,u %r26,19+1-1,1,%r1
	extrw,u %r26,18+1-1,1,%r20
	add,l %r31,%r29,%r19
	extrw,u %r26,16+1-1,1,%r26
	add,l %r19,%r1,%r21
	add,l %r21,%r20,%r22
	add,l %r22,%r28,%r23
	add,l %r23,%r26,%r24
	bve (%r2)
	extrw,u %r24,31,1,%r28
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
	extrw,u %r26,31,1,%r28
	extrw,u %r26,30+1-1,1,%r19
	extrw,u %r26,29+1-1,1,%r20
	add,l %r19,%r28,%r1
	extrw,u %r26,28+1-1,1,%r21
	add,l %r1,%r20,%r22
	extrw,u %r26,27+1-1,1,%r23
	extrw,u %r26,24+1-1,1,%r28
	add,l %r22,%r21,%r24
	extrw,u %r26,26+1-1,1,%r25
	add,l %r24,%r23,%r29
	extrw,u %r26,25+1-1,1,%r31
	add,l %r29,%r25,%r19
	extrw,u %r26,23+1-1,1,%r20
	add,l %r19,%r31,%r1
	extrw,u %r26,22+1-1,1,%r22
	add,l %r1,%r28,%r21
	extrw,u %r26,18+1-1,1,%r28
	add,l %r21,%r20,%r23
	extrw,u %r26,21+1-1,1,%r24
	add,l %r23,%r22,%r25
	extrw,u %r26,20+1-1,1,%r29
	extrw,u %r26,19+1-1,1,%r1
	extrw,u %r26,17+1-1,1,%r20
	add,l %r25,%r24,%r31
	extrw,u %r26,16+1-1,1,%r26
	add,l %r31,%r29,%r19
	add,l %r19,%r1,%r21
	add,l %r21,%r28,%r22
	add,l %r22,%r20,%r23
	bve (%r2)
	add,l %r23,%r26,%r28
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
	movb,=,n %r26,%r26,.L1025
	ldi 0,%r28
.L1024:
	extrw,s %r26,31+1-1,1,%r19
	extrw,u %r26,30,31,%r26
	and %r19,%r25,%r1
	depw,z %r25,30,31,%r25
	cmpib,<> 0,%r26,.L1024
	add,l %r28,%r1,%r28
	bve,n (%r2)
.L1025:
	bve (%r2)
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
	b,n .L1030
	cmpib,=,n 0,%r25,.L1031
	ldi 0,%r28
.L1029:
	extrw,s %r25,31+1-1,1,%r19
	extrw,u %r25,30,31,%r25
	and %r19,%r26,%r1
	depw,z %r26,30,31,%r26
	cmpib,<> 0,%r25,.L1029
	add,l %r28,%r1,%r28
	bve,n (%r2)
.L1030:
	bve (%r2)
	copy %r26,%r28
.L1031:
	bve (%r2)
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
	cmpb,<< %r25,%r26,.L1034
	ldi 1,%r1
	b .L1060
	sub %r26,%r25,%r19
.L1037:
	cmpb,>>= %r25,%r26,.L1036
	depw,z %r1,30,31,%r1
	cmpib,= 0,%r1,.L1062
	copy %r1,%r28
.L1034:
	cmpib,<=,n 0,%r25,.L1037
	depw,z %r25,30,31,%r25
	ldi 0,%r28
.L1044:
	cmpclr,>> %r25,%r26,%r20
	ldi 1,%r20
	sub %r26,%r25,%r22
	ldi 0,%r21
	extrw,u %r25,30,31,%r25
	cmpclr,= %r21,%r20,%r0
	copy %r1,%r21
	cmpiclr,= 0,%r20,%r0
	copy %r22,%r26
	extrw,u %r1,30,31,%r1
	cmpib,<> 0,%r1,.L1044
	or %r28,%r21,%r28
.L1039:
	cmpiclr,= 0,%r24,%r0
	copy %r26,%r28
	bve,n (%r2)
.L1036:
	cmpib,<> 0,%r1,.L1044
	ldi 0,%r28
	copy %r1,%r28
.L1062:
	cmpiclr,= 0,%r24,%r0
	copy %r26,%r28
	bve,n (%r2)
.L1060:
	cmpclr,>> %r25,%r26,%r28
	ldi 1,%r28
	cmpclr,>> %r25,%r26,%r0
	copy %r19,%r26
	b,n .L1039
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
	b,n .L1066
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L1063
	ldi 1,%r28
	ldi 0,%r28
.L1063:
	bve,n (%r2)
.L1066:
	bve (%r2)
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
	b,n .L1070
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L1067
	ldi 1,%r28
	ldi 0,%r28
.L1067:
	bve,n (%r2)
.L1070:
	bve (%r2)
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
	stw %r26,-16(%sp)
	fldw -16(%sp),%fr22R
	extrw,s %r26,0,1,%r20
	extrw,s %r25,0,1,%r19
	stw %r25,-16(%sp)
	fldw -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr4
	and %r20,%r25,%r1
	fstd %fr4,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	and %r19,%r26,%r21
	sub %r28,%r1,%r28
	bve (%r2)
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
	stw %r26,-16(%sp)
	fldw -16(%sp),%fr22R
	stw %r25,-16(%sp)
	fldw -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr4
	fstd %fr4,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	bve,n (%r2)
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
	b,n .L1082
	cmpib,= 0,%r25,.L1078
	ldi 0,%r29
.L1075:
	ldi 1,%r24
	ldi 0,%r21
	ldi 32,%r31
.L1077:
	extrw,s %r25,31+1-1,1,%r20
	cmpclr,= %r31,%r24,%r22
	ldi 1,%r22
	and %r20,%r26,%r1
	extrw,s %r25,30,31,%r25
	ldo 1(%r24),%r28
	cmpiclr,= 0,%r25,%r19
	ldi 1,%r19
	add,l %r21,%r1,%r21
	depw,z %r26,30,31,%r26
	and %r19,%r22,%r23
	cmpib,<> 0,%r23,.L1077
	extrw,u %r28,31,8,%r24
	sub %r0,%r21,%r28
	cmpiclr,<> 0,%r29,%r0
	copy %r21,%r28
	bve,n (%r2)
.L1082:
	sub %r0,%r25,%r25
	b .L1075
	ldi 1,%r29
.L1078:
	bve (%r2)
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
	movb,<,n %r26,%r26,.L1117
	ldi 1,%r28
	ldi 0,%r29
.L1084:
	cmpib,<= 0,%r25,.L1121
	copy %r26,%r20
	sub %r0,%r25,%r25
	copy %r28,%r29
.L1121:
	copy %r25,%r19
	cmpb,<< %r25,%r26,.L1086
	ldi 1,%r23
	b,n .L1114
.L1118:
	cmpib,= 0,%r23,.L1122
	ldi 0,%r1
.L1086:
	depw,z %r19,30,31,%r19
	cmpb,<< %r19,%r26,.L1118
	depw,z %r23,30,31,%r23
	ldi 0,%r1
.L1122:
	cmpb,= %r1,%r23,.L1119
	sub %r0,%r23,%r28
.L1088:
	cmpclr,>> %r19,%r20,%r21
	ldi 1,%r21
	sub %r20,%r19,%r31
	ldi 0,%r22
	extrw,u %r19,30,31,%r19
	cmpclr,= %r22,%r21,%r0
	copy %r23,%r22
	cmpiclr,= 0,%r21,%r0
	copy %r31,%r20
	extrw,u %r23,30,31,%r23
	cmpib,<> 0,%r23,.L1088
	or %r1,%r22,%r1
	sub %r0,%r1,%r28
.L1120:
	cmpiclr,<> 0,%r29,%r0
	copy %r1,%r28
	bve,n (%r2)
.L1117:
	sub %r0,%r26,%r26
	ldi 0,%r28
	b .L1084
	ldi 1,%r29
.L1119:
	copy %r23,%r1
	cmpiclr,<> 0,%r29,%r0
	copy %r1,%r28
	bve,n (%r2)
.L1114:
	cmpclr,>> %r25,%r26,%r1
	ldi 1,%r1
	b .L1120
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
	movb,>= %r26,%r26,.L1124
	ldi 0,%r22
	sub %r0,%r26,%r26
	ldi 1,%r22
.L1124:
	copy %r26,%r28
	or,>= %r0,%r25,%r19
	subi 0,%r19,%r19
	cmpb,<< %r19,%r26,.L1125
	ldi 1,%r1
	b .L1151
	sub %r26,%r19,%r20
.L1153:
	cmpiclr,<> 0,%r1,%r0
	b,n .L1147
.L1125:
	depw,z %r19,30,31,%r19
	cmpb,<< %r19,%r26,.L1153
	depw,z %r1,30,31,%r1
	cmpiclr,<> 0,%r1,%r0
	b,n .L1147
.L1127:
	sub %r28,%r19,%r21
	extrw,u %r1,30,31,%r1
	cmpclr,>> %r19,%r28,%r0
	copy %r21,%r28
	cmpib,<> 0,%r1,.L1127
	extrw,u %r19,30,31,%r19
	sub %r0,%r28,%r23
.L1154:
	cmpiclr,= 0,%r22,%r0
	copy %r23,%r28
	bve,n (%r2)
.L1147:
	copy %r26,%r28
	sub %r0,%r26,%r23
	cmpiclr,= 0,%r22,%r0
	copy %r23,%r28
	bve,n (%r2)
.L1151:
	cmpclr,>> %r19,%r26,%r0
	copy %r20,%r28
	b .L1154
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
	extrw,u %r26,31,16,%r28
	extrw,u %r25,31,16,%r25
	cmpb,>> %r28,%r25,.L1156
	ldi 1,%r21
	b .L1318
	sub %r28,%r25,%r20
.L1161:
	depw,z %r21,30,31,%r23
	extrw,u %r20,31,16,%r26
	cmpb,>>= %r26,%r28,.L1160
	extrw,u %r23,31,16,%r19
	cmpib,= 0,%r19,.L1163
	copy %r19,%r21
	copy %r26,%r25
.L1156:
	extrw,s %r25,31,16,%r22
	cmpib,<= 0,%r22,.L1161
	depw,z %r25,30,31,%r20
	sub %r28,%r25,%r23
	copy %r21,%r26
	extrw,u %r23,31,16,%r31
	extrw,u %r21,15+16-1,16,%r29
	cmpclr,<<= %r25,%r28,%r0
	ldi 0,%r26
	cmpclr,<<= %r25,%r28,%r0
	copy %r28,%r31
	extrw,u %r26,31,16,%r1
	extrw,u %r31,31,16,%r28
	cmpib,= 0,%r29,.L1319
	extrw,u %r25,30,31,%r22
.L1227:
	sub %r28,%r22,%r19
	cmpclr,<< %r28,%r22,%r23
	ldi 1,%r23
	extrw,u %r19,31,16,%r26
	ldi 0,%r31
	cmpclr,>>= %r28,%r22,%r0
	copy %r28,%r26
	cmpib,= 0,%r23,.L1169
	extrw,u %r26,31,16,%r28
	copy %r29,%r31
.L1169:
	or %r1,%r31,%r1
	extrw,u %r21,14+16-1,16,%r29
	extrw,u %r1,31,16,%r19
	cmpib,= 0,%r29,.L1163
	extrw,u %r25,29,30,%r26
	sub %r28,%r26,%r22
	cmpclr,>> %r26,%r28,%r23
	ldi 1,%r23
	extrw,u %r22,31,16,%r20
	ldi 0,%r31
	cmpclr,<<= %r26,%r28,%r0
	copy %r28,%r20
	cmpib,= 0,%r23,.L1173
	extrw,u %r20,31,16,%r28
	copy %r29,%r31
.L1173:
	or %r19,%r31,%r19
	extrw,u %r21,13+16-1,16,%r1
	extrw,u %r19,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,28,29,%r29
	sub %r28,%r29,%r26
	cmpclr,>> %r29,%r28,%r23
	ldi 1,%r23
	extrw,u %r26,31,16,%r20
	ldi 0,%r22
	cmpclr,<<= %r29,%r28,%r0
	copy %r28,%r20
	cmpib,= 0,%r23,.L1177
	extrw,u %r20,31,16,%r28
	copy %r1,%r22
.L1177:
	or %r19,%r22,%r31
	extrw,u %r21,12+16-1,16,%r1
	extrw,u %r31,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,27,28,%r29
	sub %r28,%r29,%r26
	cmpclr,>> %r29,%r28,%r23
	ldi 1,%r23
	extrw,u %r26,31,16,%r20
	ldi 0,%r22
	cmpclr,<<= %r29,%r28,%r0
	copy %r28,%r20
	cmpib,= 0,%r23,.L1181
	extrw,u %r20,31,16,%r28
	copy %r1,%r22
.L1181:
	or %r19,%r22,%r19
	extrw,u %r21,11+16-1,16,%r1
	extrw,u %r19,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,26,27,%r31
	sub %r28,%r31,%r29
	cmpclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extrw,u %r29,31,16,%r23
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	cmpib,= 0,%r26,.L1185
	extrw,u %r23,31,16,%r28
	copy %r1,%r29
.L1185:
	or %r19,%r29,%r20
	extrw,u %r21,10+16-1,16,%r1
	extrw,u %r20,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,25,26,%r31
	sub %r28,%r31,%r22
	cmpclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extrw,u %r22,31,16,%r23
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	cmpib,= 0,%r26,.L1189
	extrw,u %r23,31,16,%r28
	copy %r1,%r29
.L1189:
	or %r19,%r29,%r19
	extrw,u %r21,9+16-1,16,%r1
	extrw,u %r19,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,24,25,%r31
	sub %r28,%r31,%r20
	cmpclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extrw,u %r20,31,16,%r23
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	cmpib,<> 0,%r26,.L1320
	extrw,u %r23,31,16,%r28
.L1193:
	or %r19,%r29,%r22
	extrw,u %r21,8+16-1,16,%r1
	extrw,u %r22,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,23,24,%r31
	sub %r28,%r31,%r20
	cmpclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extrw,u %r20,31,16,%r23
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r23
	cmpib,<> 0,%r26,.L1321
	extrw,u %r23,31,16,%r28
.L1197:
	or %r19,%r29,%r19
	extrw,u %r21,7+16-1,16,%r1
	extrw,u %r19,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,22,23,%r31
	sub %r28,%r31,%r22
	cmpclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extrw,u %r22,31,16,%r20
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r20
	cmpib,<> 0,%r26,.L1322
	extrw,u %r20,31,16,%r28
.L1201:
	or %r19,%r29,%r23
	extrw,u %r21,6+16-1,16,%r1
	extrw,u %r23,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,21,22,%r31
	sub %r28,%r31,%r22
	cmpclr,>> %r31,%r28,%r26
	ldi 1,%r26
	extrw,u %r22,31,16,%r20
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r20
	cmpib,<> 0,%r26,.L1323
	extrw,u %r20,31,16,%r28
.L1205:
	or %r19,%r29,%r19
	extrw,u %r21,5+16-1,16,%r1
	extrw,u %r19,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,20,21,%r31
	sub %r28,%r31,%r22
	cmpclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extrw,u %r22,31,16,%r26
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	cmpib,<> 0,%r23,.L1324
	extrw,u %r26,31,16,%r28
.L1209:
	or %r19,%r29,%r20
	extrw,u %r21,4+16-1,16,%r1
	extrw,u %r20,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,19,20,%r31
	sub %r28,%r31,%r22
	cmpclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extrw,u %r22,31,16,%r26
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	cmpib,<> 0,%r23,.L1325
	extrw,u %r26,31,16,%r28
	or %r19,%r29,%r19
	extrw,u %r21,3+16-1,16,%r1
	extrw,u %r19,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,18,19,%r31
.L1326:
	sub %r28,%r31,%r20
	cmpclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extrw,u %r20,31,16,%r26
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	cmpib,= 0,%r23,.L1217
	extrw,u %r26,31,16,%r28
	copy %r1,%r29
.L1217:
	or %r19,%r29,%r22
	extrw,u %r21,2+16-1,16,%r1
	extrw,u %r22,31,16,%r19
	cmpib,= 0,%r1,.L1163
	extrw,u %r25,17,18,%r31
	sub %r28,%r31,%r20
	cmpclr,>> %r31,%r28,%r23
	ldi 1,%r23
	extrw,u %r20,31,16,%r26
	ldi 0,%r29
	cmpclr,<<= %r31,%r28,%r0
	copy %r28,%r26
	cmpib,= 0,%r23,.L1221
	extrw,u %r26,31,16,%r28
	copy %r1,%r29
.L1221:
	or %r19,%r29,%r19
	extrw,u %r25,16,17,%r25
	extrw,u %r21,1+16-1,16,%r21
	cmpib,= 0,%r21,.L1163
	extrw,u %r19,31,16,%r19
	sub %r28,%r25,%r22
	cmpclr,>> %r25,%r28,%r1
	ldi 1,%r1
	extrw,u %r22,31,16,%r31
	or %r1,%r19,%r19
	cmpclr,<<= %r25,%r28,%r0
	copy %r28,%r31
	extrw,u %r31,31,16,%r28
.L1163:
	cmpiclr,<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
.L1160:
	cmpib,= 0,%r19,.L1163
	sub %r28,%r26,%r31
	extrw,u %r21,31,15,%r29
	extrw,u %r31,31,16,%r20
	extrw,u %r25,31,15,%r22
	cmpclr,<<= %r26,%r28,%r0
	copy %r28,%r20
	copy %r19,%r1
	copy %r19,%r21
	cmpclr,<<= %r26,%r28,%r0
	ldi 0,%r1
	copy %r26,%r25
	b .L1227
	extrw,u %r20,31,16,%r28
.L1320:
	b .L1193
	copy %r1,%r29
.L1321:
	b .L1197
	copy %r1,%r29
.L1322:
	b .L1201
	copy %r1,%r29
.L1323:
	b .L1205
	copy %r1,%r29
.L1324:
	b .L1209
	copy %r1,%r29
.L1325:
	copy %r1,%r29
	extrw,u %r25,18,19,%r31
	or %r19,%r29,%r19
	extrw,u %r21,3+16-1,16,%r1
	cmpib,<> 0,%r1,.L1326
	extrw,u %r19,31,16,%r19
	b,n .L1163
.L1318:
	cmpclr,<> %r28,%r25,%r19
	ldi 1,%r19
	extrw,u %r20,31,16,%r1
	extrw,u %r19,31,16,%r19
	cmpclr,= %r28,%r25,%r0
	copy %r28,%r1
	b .L1163
	extrw,u %r1,31,16,%r28
.L1319:
	b .L1163
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
	cmpb,<< %r25,%r26,.L1328
	ldi 1,%r1
	b .L1354
	sub %r26,%r25,%r19
.L1331:
	cmpb,>>= %r25,%r26,.L1330
	depw,z %r1,30,31,%r1
	cmpib,= 0,%r1,.L1356
	copy %r1,%r28
.L1328:
	cmpib,<=,n 0,%r25,.L1331
	depw,z %r25,30,31,%r25
	ldi 0,%r28
.L1338:
	cmpclr,>> %r25,%r26,%r20
	ldi 1,%r20
	sub %r26,%r25,%r22
	ldi 0,%r21
	extrw,u %r25,30,31,%r25
	cmpclr,= %r21,%r20,%r0
	copy %r1,%r21
	cmpiclr,= 0,%r20,%r0
	copy %r22,%r26
	extrw,u %r1,30,31,%r1
	cmpib,<> 0,%r1,.L1338
	or %r28,%r21,%r28
.L1333:
	cmpiclr,= 0,%r24,%r0
	copy %r26,%r28
	bve,n (%r2)
.L1330:
	cmpib,<> 0,%r1,.L1338
	ldi 0,%r28
	copy %r1,%r28
.L1356:
	cmpiclr,= 0,%r24,%r0
	copy %r26,%r28
	bve,n (%r2)
.L1354:
	cmpclr,>> %r25,%r26,%r28
	ldi 1,%r28
	cmpclr,>> %r25,%r26,%r0
	copy %r19,%r26
	b,n .L1333
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
	bb,>= %r24,26,.L1358
	subi 63,%r24,%r1
	ldi 0,%r29
	mtsar %r1
	bve (%r2)
	depw,z %r26,%sar,32,%r28
.L1358:
	cmpib,= 0,%r24,.L1361
	subi 31,%r24,%r19
	mtsar %r19
	subi 32,%r24,%r24
	depw,z %r25,%sar,32,%r28
	mtsar %r24
	shrpw %r0,%r26,%sar,%r20
	mtsar %r19
	or %r20,%r28,%r28
	bve (%r2)
	depw,z %r26,%sar,32,%r29
.L1361:
	copy %r25,%r28
	bve (%r2)
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
	bb,>=,n %r24,26,.L1363
	subi 63,%r24,%r24
	extrw,s %r25,0,1,%r28
	mtsar %r24
	bve (%r2)
	extrw,s %r25,%sar,32,%r29
.L1363:
	cmpib,= 0,%r24,.L1366
	mtsar %r24
	subi 31,%r24,%r28
	shrpw %r0,%r26,%sar,%r29
	ldo -1(%r24),%r19
	mtsar %r19
	depw,z %r25,%sar,32,%r1
	mtsar %r28
	or %r1,%r29,%r29
	bve (%r2)
	extrw,s %r25,%sar,32,%r28
.L1366:
	copy %r25,%r28
	bve (%r2)
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
	shrpw %r25,%r25,16,%r29
	depw %r29,15,8,%r29
	shrpw %r25,%r29,8,%r29
	shrpw %r26,%r26,16,%r28
	depw %r28,15,8,%r28
	shrpw %r26,%r28,8,%r28
	bve,n (%r2)
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
	shrpw %r26,%r26,16,%r28
	depw %r28,15,8,%r28
	shrpw %r26,%r28,8,%r28
	bve,n (%r2)
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
	depwi,z -1,31,16,%r31
	cmpclr,<< %r31,%r26,%r1
	ldi 1,%r1
	depw,z %r1,27,28,%r23
	subi 16,%r23,%r19
	mtsar %r19
	ldi 0,%r28
	shrpw %r0,%r26,%sar,%r24
	depwi,z -1,23,8,%r22
	and %r24,%r22,%r25
	cmpclr,<> %r28,%r25,%r26
	ldi 1,%r26
	depw,z %r26,28,29,%r31
	subi 8,%r31,%r29
	mtsar %r29
	add,l %r31,%r23,%r22
	shrpw %r0,%r24,%sar,%r1
	ldi 240,%r21
	and %r1,%r21,%r21
	cmpclr,<> %r28,%r21,%r23
	ldi 1,%r23
	depw,z %r23,29,30,%r19
	subi 4,%r19,%r24
	mtsar %r24
	ldi 12,%r20
	shrpw %r0,%r1,%sar,%r26
	add,l %r19,%r22,%r25
	and %r26,%r20,%r20
	cmpclr,<> %r28,%r20,%r31
	ldi 1,%r31
	depw,z %r31,30,31,%r29
	subi 2,%r29,%r22
	mtsar %r22
	shrpw %r0,%r26,%sar,%r1
	extrw,s,< %r1,30,1,%r0
	subi 2,%r1,%r28
.L1371:
	add,l %r29,%r25,%r21
	bve (%r2)
	add,l %r28,%r21,%r28
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
	cmpclr,<= %r23,%r25,%r0
	b,n .L1377
	cmpclr,>= %r23,%r25,%r0
	b,n .L1376
	cmpclr,<<= %r24,%r26,%r0
	b,n .L1377
	cmpclr,>>= %r24,%r26,%r26
	ldi 1,%r26
	bve (%r2)
	ldo 1(%r26),%r28
.L1377:
	bve (%r2)
	ldi 0,%r28
.L1376:
	bve (%r2)
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
	cmpclr,<= %r23,%r25,%r0
	b,n .L1383
	cmpclr,>= %r23,%r25,%r0
	b,n .L1382
	cmpclr,<<= %r24,%r26,%r0
	b,n .L1383
	cmpclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bve,n (%r2)
.L1383:
	bve (%r2)
	ldi -1,%r28
.L1382:
	bve (%r2)
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
	extrw,u %r26,31,16,%r20
	cmpiclr,<> 0,%r20,%r1
	ldi 1,%r1
	depw,z %r1,27,28,%r21
	mtsar %r21
	shrpw %r0,%r26,%sar,%r19
	extrw,u %r19,31,8,%r28
	cmpiclr,<> 0,%r28,%r22
	ldi 1,%r22
	depw,z %r22,28,29,%r23
	mtsar %r23
	add,l %r23,%r21,%r25
	shrpw %r0,%r19,%sar,%r24
	extrw,u %r24,31,4,%r26
	cmpiclr,<> 0,%r26,%r29
	ldi 1,%r29
	depw,z %r29,29,30,%r31
	mtsar %r31
	shrpw %r0,%r24,%sar,%r1
	extrw,u %r1,31,2,%r21
	cmpiclr,<> 0,%r21,%r19
	ldi 1,%r19
	depw,z %r19,30,31,%r28
	add,l %r31,%r25,%r20
	mtsar %r28
	add,l %r28,%r20,%r23
	shrpw %r0,%r1,%sar,%r22
	extrw,u %r22,31,2,%r24
	uaddcm %r0,%r24,%r25
	extrw,u %r24,30,31,%r26
	extrw,s %r25,31+1-1,1,%r29
	subi 2,%r26,%r31
	and %r29,%r31,%r1
	bve (%r2)
	add,l %r1,%r23,%r28
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
	bb,>= %r24,26,.L1386
	mtsar %r24
	shrpw %r0,%r25,%sar,%r29
	ldi 0,%r25
	copy %r25,%r28
.L1388:
	bve,n (%r2)
.L1386:
	cmpib,= 0,%r24,.L1389
	ldo -1(%r24),%r28
	shrpw %r0,%r26,%sar,%r29
	mtsar %r28
	depw,z %r25,%sar,32,%r1
	mtsar %r24
	or %r1,%r29,%r29
	shrpw %r0,%r25,%sar,%r25
	b .L1388
	copy %r25,%r28
.L1389:
	copy %r25,%r28
	bve (%r2)
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
	extrw,u %r26,31,16,%r28
	extrw,u %r25,31,16,%r1
	stw %r28,-16(%sp)
	fldw -16(%sp),%fr24L
	stw %r1,-16(%sp)
	fldw -16(%sp),%fr25L
	extrw,u %r26,15,16,%r26
	xmpyu %fr24L,%fr25L,%fr23
	stw %r26,-16(%sp)
	fldw -16(%sp),%fr22L
	extrw,u %r25,15,16,%r25
	xmpyu %fr25L,%fr22L,%fr26
	stw %r25,-16(%sp)
	fldw -16(%sp),%fr4L
	xmpyu %fr22L,%fr4L,%fr6
	xmpyu %fr24L,%fr4L,%fr5
	fstd %fr23,-16(%sp)
	ldw -16(%sp),%r23
	ldw -12(%sp),%r24
	fstd %fr26,-16(%sp)
	ldw -16(%sp),%r21
	ldw -12(%sp),%r22
	extrw,u %r24,15,16,%r23
	add,l %r23,%r22,%r22
	fstd %fr6,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	extrw,u %r24,31,16,%r21
	extrw,u %r22,15,16,%r31
	fstd %fr5,-16(%sp)
	ldw -16(%sp),%r19
	ldw -12(%sp),%r20
	add,l %r31,%r29,%r28
	extrw,u %r22,31,16,%r24
	add,l %r24,%r20,%r20
	depw,z %r20,15,16,%r29
	extrw,u %r20,15,16,%r1
	add,l %r21,%r29,%r29
	bve (%r2)
	add,l %r28,%r1,%r28
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
	extrw,u %r26,31,16,%r28
	extrw,u %r26,15,16,%r1
	stw,ma %r4,64(%r30)
	extrw,u %r24,31,16,%r2
	stw %r3,-60(%r30)
	extrw,u %r24,15,16,%r3
	stw %r28,-16(%sp)
	fldw -16(%sp),%fr24L
	stw %r1,-16(%sp)
	fldw -16(%sp),%fr22L
	stw %r3,-16(%sp)
	fldw -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr5
	xmpyu %fr22L,%fr23L,%fr6
	stw %r2,-16(%sp)
	fldw -16(%sp),%fr25L
	xmpyu %fr25L,%fr22L,%fr4
	xmpyu %fr24L,%fr25L,%fr26
	fstd %fr5,-16(%sp)
	ldw -16(%sp),%r21
	ldw -12(%sp),%r22
	fstd %fr6,-16(%sp)
	ldw -16(%sp),%r28
	ldw -12(%sp),%r29
	stw %r24,-16(%sp)
	fldw -16(%sp),%fr24R
	stw %r25,-16(%sp)
	fldw -16(%sp),%fr5R
	xmpyu %fr24R,%fr5R,%fr8
	fstd %fr4,-16(%sp)
	ldw -16(%sp),%r1
	ldw -12(%sp),%r2
	fstd %fr26,-16(%sp)
	ldw -16(%sp),%r3
	ldw -12(%sp),%r4
	extrw,u %r4,31,16,%r31
	extrw,u %r4,15,16,%r4
	stw %r26,-16(%sp)
	fldw -16(%sp),%fr22R
	add,l %r4,%r2,%r21
	extrw,u %r21,15,16,%r24
	stw %r23,-16(%sp)
	fldw -16(%sp),%fr4R
	extrw,u %r21,31,16,%r23
	xmpyu %fr22R,%fr4R,%fr7
	fstd %fr8,-16(%sp)
	ldw -16(%sp),%r25
	ldw -12(%sp),%r26
	add,l %r23,%r22,%r22
	extrw,u %r22,15,16,%r28
	add,l %r24,%r29,%r25
	fstd %fr7,-16(%sp)
	ldw -16(%sp),%r19
	ldw -12(%sp),%r20
	add,l %r25,%r28,%r1
	depw,z %r22,15,16,%r29
	ldw -84(%r30),%r2
	add,l %r31,%r29,%r29
	add,l %r1,%r20,%r20
	ldw -60(%r30),%r3
	add,l %r20,%r26,%r28
	bve (%r2)
	ldw,mb -64(%r30),%r4
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
	sub,b %r0,%r25,%r28
	bve,n (%r2)
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
	extrw,u %r25,15,16,%r19
	xor %r19,%r25,%r21
	extrw,u %r21,23,24,%r20
	xor %r20,%r21,%r22
	extrw,u %r22,27,28,%r23
	xor %r23,%r22,%r24
	extrw,u %r24,31,4,%r26
	mtsarcm %r26
	extrw,s %r1,%sar,32,%r29
	bve (%r2)
	extrw,u %r29,31,1,%r28
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
	extrw,u %r26,15,16,%r19
	ldo -5738(%r28),%r1
	xor %r19,%r26,%r20
	extrw,u %r20,23,24,%r26
	xor %r26,%r20,%r21
	extrw,u %r21,27,28,%r22
	xor %r22,%r21,%r23
	extrw,u %r23,31,4,%r24
	mtsarcm %r24
	extrw,s %r1,%sar,32,%r25
	bve (%r2)
	extrw,u %r25,31,1,%r28
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
	extrw,u %r25,30,31,%r22
	ldil L'1431650304,%r19
	ldo 5461(%r19),%r1
	and %r22,%r1,%r23
	copy %r25,%r28
	copy %r26,%r29
	shrpw %r25,%r26,1,%r25
	and %r25,%r1,%r24
	sub %r29,%r24,%r29
	sub,b %r28,%r23,%r28
	copy %r28,%r23
	extrw,u %r28,29,30,%r31
	shrpw %r23,%r29,2,%r1
	ldil L'858996736,%r21
	ldo -3277(%r21),%r26
	and %r28,%r26,%r23
	and %r29,%r26,%r24
	and %r31,%r26,%r19
	and %r1,%r26,%r20
	add %r24,%r20,%r20
	add,c %r23,%r19,%r19
	copy %r19,%r28
	extrw,u %r20,27,28,%r29
	depw,z %r28,3,4,%r22
	extrw,u %r19,27,28,%r28
	or %r22,%r29,%r29
	add %r20,%r29,%r29
	add,c %r19,%r28,%r28
	ldil L'252641280,%r24
	ldo 3855(%r24),%r25
	and %r28,%r25,%r20
	and %r29,%r25,%r21
	add,l %r20,%r21,%r26
	extrw,u %r26,15,16,%r19
	add,l %r19,%r26,%r23
	extrw,u %r23,23,24,%r31
	add,l %r31,%r23,%r1
	bve (%r2)
	extrw,u %r1,31,7,%r28
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
	extrw,u %r26,30,31,%r19
	ldil L'858996736,%r1
	and %r19,%r20,%r21
	ldo -3277(%r1),%r22
	sub %r26,%r21,%r26
	ldil L'252641280,%r23
	and %r26,%r22,%r25
	extrw,u %r26,29,30,%r24
	and %r24,%r22,%r29
	add,l %r29,%r25,%r20
	extrw,u %r20,27,28,%r28
	ldo 3855(%r23),%r31
	add,l %r28,%r20,%r19
	and %r19,%r31,%r1
	extrw,u %r1,15,16,%r21
	add,l %r21,%r1,%r22
	extrw,u %r22,23,24,%r26
	add,l %r26,%r22,%r23
	bve (%r2)
	extrw,u %r23,31,6,%r28
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
	extrw,u %r24,31,1,%r28
	cmpib,= 0,%r28,.L1403
	ldil LR'.LC34,%r20
	ldo RR'.LC34(%r20),%r1
	copy %r24,%r26
	fldd 0(%r1),%fr4
.L1400:
	fmpy,dbl %fr4,%fr5,%fr4
.L1398:
	extrw,u %r26,0,1,%r19
	add,l %r19,%r26,%r21
	extrw,s %r21,30,31,%r26
	cmpib,= 0,%r26,.L1399
	extrw,u %r26,31,1,%r22
	cmpib,<> 0,%r22,.L1400
	fmpy,dbl %fr5,%fr5,%fr5
	extrw,u %r26,0,1,%r23
.L1406:
	add,l %r23,%r26,%r25
	extrw,s %r25,30,31,%r26
	extrw,u %r26,31,1,%r22
	cmpib,<> 0,%r22,.L1400
	fmpy,dbl %fr5,%fr5,%fr5
	b .L1406
	extrw,u %r26,0,1,%r23
.L1399:
	cmpiclr,<= 0,%r24,%r0
	b,n .L1405
	bve,n (%r2)
.L1403:
	ldo RR'.LC34(%r20),%r1
	copy %r24,%r26
	b .L1398
	fldd 0(%r1),%fr4
.L1405:
	fldd 0(%r1),%fr22
	bve (%r2)
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
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L1413
	ldil LR'.LC36,%r20
	ldo RR'.LC36(%r20),%r1
	copy %r25,%r26
	fldw 0(%r1),%fr4L
.L1410:
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L1408:
	extrw,u %r26,0,1,%r19
	add,l %r19,%r26,%r21
	extrw,s %r21,30,31,%r26
	cmpib,= 0,%r26,.L1409
	extrw,u %r26,31,1,%r22
	cmpib,<> 0,%r22,.L1410
	fmpy,sgl %fr22L,%fr22L,%fr22L
	extrw,u %r26,0,1,%r23
.L1416:
	add,l %r23,%r26,%r24
	extrw,s %r24,30,31,%r26
	extrw,u %r26,31,1,%r22
	cmpib,<> 0,%r22,.L1410
	fmpy,sgl %fr22L,%fr22L,%fr22L
	b .L1416
	extrw,u %r26,0,1,%r23
.L1409:
	cmpiclr,<= 0,%r25,%r0
	b,n .L1415
	bve,n (%r2)
.L1413:
	ldo RR'.LC36(%r20),%r1
	copy %r25,%r26
	b .L1408
	fldw 0(%r1),%fr4L
.L1415:
	fldw 0(%r1),%fr4R
	bve (%r2)
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
	cmpclr,<<= %r23,%r25,%r0
	b,n .L1421
	cmpclr,>>= %r23,%r25,%r0
	b,n .L1420
	cmpclr,<<= %r24,%r26,%r0
	b,n .L1421
	cmpclr,>>= %r24,%r26,%r26
	ldi 1,%r26
	bve (%r2)
	ldo 1(%r26),%r28
.L1421:
	bve (%r2)
	ldi 0,%r28
.L1420:
	bve (%r2)
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
	cmpclr,<<= %r23,%r25,%r0
	b,n .L1427
	cmpclr,>>= %r23,%r25,%r0
	b,n .L1426
	cmpclr,<<= %r24,%r26,%r0
	b,n .L1427
	cmpclr,>>= %r24,%r26,%r28
	ldi 1,%r28
	bve,n (%r2)
.L1427:
	bve (%r2)
	ldi -1,%r28
.L1426:
	bve (%r2)
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
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
