	.LEVEL 2.0w
	.text
	.align 8
.globl make_ti
	.type	make_ti, @function
make_ti:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	bve (%r2)
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	make_ti, .-make_ti
	.align 8
.globl make_tu
	.type	make_tu, @function
make_tu:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	bve (%r2)
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	make_tu, .-make_tu
	.align 8
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*>>= %r25,%r26,.L4
	copy %r26,%r28
	add,l %r25,%r24,%r25
	cmpb,*= %r0,%r24,.L5
	add,l %r26,%r24,%r31
	ldb,mb -1(%r25),%r19
.L10:
	stb,mb %r19,-1(%r31)
	cmpb,*<>,n %r31,%r28,.L10
	ldb,mb -1(%r25),%r19
.L5:
	bve,n (%r2)
.L4:
	cmpb,*= %r25,%r26,.L5
	nop
	cmpb,*= %r0,%r24,.L5
	add,l %r26,%r24,%r24
	copy %r26,%r31
.L7:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r25),%r19
	cmpb,*<> %r31,%r24,.L7
	stb %r19,-1(%r31)
	b,n .L5
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 8
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r23,.L13
	extrd,u %r24,63,8,%r24
.L12:
	ldb 0(%r25),%r28
	cmpb,= %r24,%r28,.L13
	stb %r28,0(%r26)
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	cmpb,*<> %r0,%r23,.L12
	ldo 1(%r26),%r26
.L13:
	ldo 1(%r26),%r26
	cmpiclr,*= 0,%r23,%r28
	copy %r26,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 8
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r24,.L20
	extrd,u %r25,63,8,%r25
.L19:
	ldb 0(%r26),%r28
	cmpb,=,n %r25,%r28,.L20
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L19
	ldo 1(%r26),%r26
.L20:
	cmpiclr,*= 0,%r24,%r28
	copy %r26,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 8
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	b,n .L32
.L28:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L32:
	cmpb,*=,n %r0,%r24,.L27
	ldb 0(%r26),%r31
	ldb 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L28
	ldo -1(%r24),%r24
.L27:
	ldi 0,%r28
	cmpb,*=,n %r28,%r24,.L29
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L29:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 8
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	cmpb,*= %r0,%r24,.L34
	copy %r26,%r31
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
	copy %r28,%r31
.L34:
	copy %r31,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 8
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r25,63,8,%r25
	ldo -1(%r24),%r24
	add,l %r26,%r24,%r24
	ldo -1(%r26),%r26
.L36:
	cmpb,*= %r26,%r24,.L39
	copy %r24,%r28
	ldb 0(%r28),%r31
	cmpb,<> %r25,%r31,.L36
	ldo -1(%r24),%r24
	b,n .L35
.L39:
	ldi 0,%r28
.L35:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 8
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	cmpb,*= %r0,%r24,.L41
	extrd,s %r25,63,32,%r25
	add,l %r26,%r24,%r24
	copy %r26,%r31
	stb %r25,0(%r31)
.L44:
	ldo 1(%r31),%r31
	cmpb,*<>,n %r31,%r24,.L44
	stb %r25,0(%r31)
.L41:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	ldb 0(%r25),%r31
	extrd,s %r31,63,8,%r19
	cmpb,*= %r0,%r19,.L46
	stb %r31,0(%r26)
.L47:
	ldb,mb 1(%r25),%r31
	extrd,s %r31,63,8,%r19
	cmpb,*<> %r0,%r19,.L47
	stb,mb %r31,1(%r28)
.L46:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*= %r0,%r31,.L53
	extrd,u %r25,63,8,%r25
	extrw,u %r31,31,8,%r31
.L55:
	cmpb,=,n %r25,%r31,.L53
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L55
	extrw,u %r31,31,8,%r31
.L53:
	bve (%r2)
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 8
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	extrd,s %r25,63,32,%r25
.L58:
	ldb 0(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r25,%r31,%r0
	b,n .L57
	cmpb,*<> %r0,%r31,.L58
	ldo 1(%r28),%r28
	ldi 0,%r28
.L57:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 8
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r28
	ldb 0(%r25),%r20
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	bb,>= %r19,24,.L61
	extrd,s %r20,63,8,%r21
.L65:
	xor %r31,%r20,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	bb,>=,n %r31,24,.L61
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r28
	ldb,mb 1(%r25),%r20
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	bb,< %r19,24,.L65
	extrd,s %r20,63,8,%r21
.L61:
	extrw,u %r28,31,8,%r28
	extrw,u %r21,31,8,%r21
	sub %r28,%r21,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 8
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r28
	cmpib,= 0,%r28,.L67
	copy %r26,%r28
	ldb,mb 1(%r28),%r31
.L71:
	extrw,s %r31,31,8,%r31
	cmpib,<>,n 0,%r31,.L71
	ldb,mb 1(%r28),%r31
.L67:
	bve (%r2)
	sub %r28,%r26,%r28
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 8
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*=,n %r0,%r24,.L78
	ldb 0(%r26),%r28
	cmpb,*= %r0,%r28,.L79
	ldo -1(%r24),%r24
	copy %r25,%r20
	add,l %r25,%r24,%r25
.L75:
	ldb 0(%r20),%r31
	extrw,s,>= %r31,31,8,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	xor %r31,%r28,%r31
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	and %r19,%r31,%r19
	extrw,s,< %r19,24,1,%r0
	b,n .L74
	cmpb,*=,n %r25,%r20,.L74
	ldb,mb 1(%r26),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*<> %r0,%r28,.L75
	ldo 1(%r20),%r20
.L74:
	ldb 0(%r20),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L73:
	bve,n (%r2)
.L79:
	b .L74
	copy %r25,%r20
.L78:
	b .L73
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 8
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpib,*>= 1,%r24,.L80
	depdi 0,63,1,%r24
	add,l %r26,%r24,%r31
.L82:
	ldb 1(%r26),%r28
	stb %r28,0(%r25)
	ldb 0(%r26),%r28
	stb %r28,1(%r25)
	ldo 2(%r26),%r26
	cmpb,*<> %r31,%r26,.L82
	ldo 2(%r25),%r25
.L80:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 8
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
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 8
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpiclr,<< 127,%r26,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 8
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 32,%r31
	xor %r26,%r31,%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	ldi 9,%r28
	xor %r26,%r28,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	or %r28,%r31,%r28
	extrw,u %r28,0,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,63,32,%r28
	ldi 31,%r19
	cmpb,>>= %r19,%r26,.L90
	ldi 1,%r31
	ldi 0,%r31
.L90:
	ldi 127,%r19
	xor %r28,%r19,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	or %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 8
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r28
	cmpiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 8
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -33(%r26),%r28
	cmpiclr,<< 93,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 8
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -97(%r26),%r28
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 8
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -32(%r26),%r28
	cmpiclr,<< 94,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 8
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,63,32,%r31
	ldo -9(%r26),%r26
	cmpib,>>= 4,%r26,.L100
	ldi 1,%r19
	ldi 0,%r19
.L100:
	ldi 32,%r28
	xor %r31,%r28,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	or %r28,%r19,%r28
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 8
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -65(%r26),%r28
	cmpiclr,<< 25,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	ldo -127(%r26),%r26
	ldi 32,%r19
	cmpb,>>= %r19,%r26,.L105
	ldi 1,%r28
	ldi 0,%r28
.L105:
	extrw,u %r28,31,8,%r28
	cmpib,<> 0,%r28,.L108
	ldi 31,%r19
	cmpb,>>= %r19,%r31,.L106
	ldi 1,%r28
	ldi 0,%r28
.L106:
	extrw,u %r28,31,8,%r28
	cmpib,<> 0,%r28,.L108
	ldo -40(%r31),%r19
	ldo -8192(%r19),%r19
	cmpib,>>= 1,%r19,.L104
	ldi 1,%r28
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpiclr,<< 2,%r31,%r31
	ldi 1,%r31
	b .L104
	extrd,s %r31,63,32,%r28
.L108:
	ldi 1,%r28
.L104:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r28
	cmpiclr,<< 9,%r28,%r28
	ldi 1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 8
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 254,%r31
	cmpb,>>= %r31,%r26,.L121
	extrd,u %r26,63,32,%r28
	ldo -42(%r28),%r20
	ldo -8192(%r20),%r20
	ldil L'49152,%r19
	ldo -2091(%r19),%r19
	cmpb,>>= %r19,%r20,.L116
	ldi 1,%r31
	ldi 0,%r31
.L116:
	extrw,u %r31,31,8,%r31
	cmpib,<> 0,%r31,.L119
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	cmpb,>>= %r19,%r28,.L117
	ldi 1,%r31
	ldi 0,%r31
.L117:
	extrw,u %r31,31,8,%r31
	cmpib,<> 0,%r31,.L119
	ldil L'-57344,%r31
	add,l %r28,%r31,%r31
	ldi 8184,%r19
	cmpb,>>= %r19,%r31,.L119
	depwi,z -1,29,14,%r19
	sub %r28,%r19,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L120
	depwi,z -1,30,15,%r31
	andcm %r31,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	b .L115
	extrd,s %r28,63,32,%r28
.L121:
	ldo 1(%r26),%r28
	extrw,u %r28,31,7,%r28
	cmpiclr,>>= 32,%r28,%r28
	ldi 1,%r28
	b .L115
	extrd,s %r28,63,32,%r28
.L119:
	ldi 1,%r28
.L115:
	bve,n (%r2)
.L120:
	b .L115
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	ldo -48(%r26),%r26
	cmpib,>>= 9,%r26,.L123
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r28
	cmpiclr,<< 5,%r28,%r28
	ldi 1,%r28
	extrd,s %r28,63,32,%r28
.L123:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 8
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bve (%r2)
	extrd,u %r26,63,7,%r28
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.word	0
	.word	0
	.text
	.align 8
.globl fdim
	.type	fdim, @function
fdim:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L127
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L131
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L133
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	b .L127
	fldd 0(%r28),%fr4
.L133:
	fsub,dbl %fr4,%fr5,%fr4
.L127:
	bve,n (%r2)
.L131:
	b .L127
	fcpy,dbl %fr5,%fr4
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.word	0
	.text
	.align 8
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L135
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L139
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L141
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	b .L135
	fldw 0(%r28),%fr4R
.L141:
	fsub,sgl %fr4R,%fr5R,%fr4R
.L135:
	bve,n (%r2)
.L139:
	b .L135
	fcpy,sgl %fr5R,%fr4R
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 8
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L149
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L150
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L145
	extrd,u %r28,0,1,%r28
	cmpb,*<> %r0,%r28,.L143
	fcpy,dbl %fr5,%fr4
.L150:
	b .L143
	fcpy,dbl %fr22,%fr4
.L145:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b .L148
	ldi 1,%r28
	ldi 0,%r28
.L148:
	extrw,u %r28,31,8,%r28
	cmpib,= 0,%r28,.L143
	fcpy,dbl %fr22,%fr4
.L149:
	fcpy,dbl %fr5,%fr4
.L143:
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L158
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L159
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L154
	extrd,s %r28,63,32,%r19
	cmpb,*<> %r0,%r19,.L152
	fcpy,sgl %fr5R,%fr4R
.L159:
	b .L152
	fcpy,sgl %fr22R,%fr4R
.L154:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b .L157
	ldi 1,%r28
	ldi 0,%r28
.L157:
	extrw,u %r28,31,8,%r28
	cmpib,= 0,%r28,.L152
	fcpy,sgl %fr22R,%fr4R
.L158:
	fcpy,sgl %fr5R,%fr4R
.L152:
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r7,160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r6
	copy %r25,%r7
	copy %r24,%r3
	copy %r23,%r5
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L169
	copy %r4,%r27
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	copy %r5,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L168
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L163
	extrd,u %r6,0,1,%r19
	cmpclr,*= %r0,%r19,%r0
	b,n .L169
.L168:
	copy %r6,%r28
	b .L161
	copy %r7,%r29
.L163:
	copy %r3,%r24
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpb,*> %r0,%r28,.L170
	copy %r3,%r28
	copy %r6,%r3
	copy %r7,%r5
.L169:
	copy %r3,%r28
.L170:
	copy %r5,%r29
.L161:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 8
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L177
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L171
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r19
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	cmpb,= %r31,%r19,.L173
	extrd,u %r28,0,1,%r28
	cmpclr,*= %r0,%r28,%r0
	b,n .L171
.L177:
	fcpy,dbl %fr5,%fr4
.L171:
	bve (%r2)
	ldo -64(%r30),%r30
.L173:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b .L176
	ldi 1,%r28
	ldi 0,%r28
.L176:
	extrw,u %r28,31,8,%r28
	cmpib,= 0,%r28,.L177
	nop
	b .L177
	fcpy,dbl %fr4,%fr5
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 8
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L186
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L180
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	cmpb,= %r31,%r28,.L182
	extrd,s %r28,63,32,%r19
	cmpclr,*= %r0,%r19,%r0
	b,n .L180
.L186:
	fcpy,sgl %fr5R,%fr4R
.L180:
	bve (%r2)
	ldo -64(%r30),%r30
.L182:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b .L185
	ldi 1,%r28
	ldi 0,%r28
.L185:
	extrw,u %r28,31,8,%r28
	cmpib,= 0,%r28,.L186
	nop
	b .L186
	fcpy,sgl %fr4R,%fr5R
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 8
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r7,160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r3
	copy %r25,%r5
	copy %r24,%r6
	copy %r23,%r7
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L195
	copy %r4,%r27
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L197
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L191
	extrd,u %r3,0,1,%r19
	cmpclr,*= %r0,%r19,%r0
	b,n .L197
.L195:
	copy %r6,%r28
	b .L189
	copy %r7,%r29
.L191:
	copy %r6,%r24
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpb,*> %r0,%r28,.L198
	copy %r3,%r28
	copy %r6,%r3
	copy %r7,%r5
.L197:
	copy %r3,%r28
.L198:
	copy %r5,%r29
.L189:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.align 8
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r28
	addil LT's.0,%r27
	cmpib,= 0,%r26,.L200
	ldd RT's.0(%r1),%r31
	addil LT'digits,%r27
	ldd RT'digits(%r1),%r20
.L201:
	extrd,u %r28,63,6,%r19
	ldb %r19(%r20),%r19
	stb %r19,0(%r31)
	extrd,u %r28,57,58,%r28
	cmpb,*<> %r0,%r28,.L201
	ldo 1(%r31),%r31
.L200:
	stb %r0,0(%r31)
	addil LT's.0,%r27
	bve (%r2)
	ldd RT's.0(%r1),%r28
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
	.align 8
.globl srand
	.type	srand, @function
srand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'seed,%r27
	ldd RT'seed(%r1),%r28
	ldo -1(%r26),%r26
	extrd,u %r26,63,32,%r26
	bve (%r2)
	std %r26,0(%r28)
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 8
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'seed,%r27
	ldd RT'seed(%r1),%r19
	ldd 0(%r19),%r28
	shladd,l %r28,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	depd,z %r31,52,53,%r31
	sub %r31,%r28,%r31
	depd,z %r31,55,56,%r20
	add,l %r31,%r20,%r31
	shladd,l %r31,1,%r28,%r31
	depd,z %r31,57,58,%r20
	add,l %r31,%r20,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,3,%r28,%r31
	depd,z %r31,58,59,%r20
	add,l %r31,%r20,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,1,%r28,%r31
	depd,z %r31,56,57,%r31
	sub %r31,%r28,%r31
	shladd,l %r31,3,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,1,%r28,%r31
	shladd,l %r31,2,%r28,%r28
	ldo 1(%r28),%r28
	std %r28,0(%r19)
	bve (%r2)
	extrd,u %r28,30,31,%r28
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 8
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*=,n %r0,%r25,.L209
	ldd 0(%r25),%r28
	std %r28,0(%r26)
	std %r25,8(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L206:
	bve,n (%r2)
.L209:
	std %r0,8(%r26)
	b .L206
	std %r0,0(%r26)
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 8
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldd 0(%r26),%r28
	cmpb,*=,n %r0,%r28,.L211
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L211:
	ldd 8(%r26),%r28
	cmpb,*=,n %r0,%r28,.L210
	ldd 0(%r26),%r31
	std %r31,0(%r28)
.L210:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 8
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=224,CALLS,SAVE_RP,ENTRY_GR=13
	.ENTRY
	std %r2,-16(%r30)
	ldo 224(%r30),%r30
	std %r13,-208(%r30)
	std %r12,-200(%r30)
	std %r11,-192(%r30)
	std %r10,-184(%r30)
	std %r9,-176(%r30)
	std %r8,-168(%r30)
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r8
	copy %r25,%r12
	copy %r24,%r13
	copy %r23,%r7
	ldd 0(%r24),%r6
	cmpb,*= %r0,%r6,.L214
	copy %r22,%r9
	copy %r25,%r3
	ldi 0,%r5
	ldo -48(%r30),%r11
.L216:
	copy %r3,%r10
	copy %r3,%r25
	copy %r8,%r26
	copy %r11,%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	cmpb,*= %r0,%r28,.L213
	copy %r4,%r27
	ldo 1(%r5),%r5
	cmpb,*<> %r5,%r6,.L216
	add,l %r3,%r7,%r3
.L214:
	ldo 1(%r6),%r28
	std %r28,0(%r13)
	extrd,u %r7,31,32,%r26
	extrd,u %r6,31,32,%r28
	std %r28,-216(%r30)
	fldd -216(%r30),%fr22
	std %r6,-216(%r30)
	fldd -216(%r30),%fr23
	std %r26,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-216(%r30)
	ldd -216(%r30),%r26
	std %r7,-216(%r30)
	fldd -216(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r6,-216(%r30)
	fldd -216(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-216(%r30)
	ldd -216(%r30),%r6
	fstd %fr22,-216(%r30)
	ldd -216(%r30),%r28
	add,l %r26,%r28,%r26
	depd,z %r26,31,32,%r26
	add,l %r26,%r6,%r26
	copy %r7,%r24
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	add,l %r12,%r26,%r26
	copy %r28,%r10
.L213:
	copy %r10,%r28
	ldd -240(%r30),%r2
	ldd -208(%r30),%r13
	ldd -200(%r30),%r12
	ldd -192(%r30),%r11
	ldd -184(%r30),%r10
	ldd -176(%r30),%r9
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -224(%r30),%r30
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 8
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,ENTRY_GR=11
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r11,192(%r30)
	std %r10,-184(%r30)
	std %r9,-176(%r30)
	std %r8,-168(%r30)
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r6
	copy %r23,%r8
	ldd 0(%r24),%r9
	cmpb,*= %r0,%r9,.L219
	copy %r22,%r7
	copy %r25,%r3
	ldi 0,%r5
	ldo -48(%r30),%r11
.L221:
	copy %r3,%r10
	copy %r3,%r25
	copy %r6,%r26
	copy %r11,%r29
	copy %r27,%r4
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpb,*= %r0,%r28,.L218
	copy %r4,%r27
	ldo 1(%r5),%r5
	cmpb,*<> %r5,%r9,.L221
	add,l %r3,%r8,%r3
.L219:
	ldi 0,%r10
.L218:
	copy %r10,%r28
	ldd -208(%r30),%r2
	ldd -184(%r30),%r10
	ldd -176(%r30),%r9
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -192(%r30),%r11
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 8
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 8
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	b .L225
	ldo -48(%r30),%r6
.L226:
	ldo 1(%r3),%r3
.L225:
	ldb 0(%r3),%r5
	extrd,s %r5,63,8,%r5
	copy %r5,%r26
	copy %r6,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L226
	copy %r4,%r27
	ldi 43,%r31
	cmpb,= %r31,%r5,.L232
	ldi 45,%r31
	cmpb,<> %r31,%r5,.L228
	copy %r28,%r20
	ldi 1,%r20
.L227:
	ldo 1(%r3),%r3
.L228:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpiclr,>>= 9,%r19,%r0
	b,n .L230
.L229:
	shladd,l %r28,2,%r28,%r28 
	add,l %r28,%r28,%r28
	ldo -48(%r31),%r31
	extrw,s %r31,31,8,%r31
	sub %r28,%r31,%r28
	ldb,mb 1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r19
	cmpib,>>= 9,%r19,.L229
	extrd,s %r28,63,32,%r28
.L230:
	cmpb,*<> %r0,%r20,.L236
	ldd -160(%r30),%r2
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L236:
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L232:
	b .L227
	copy %r28,%r20
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 8
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	b .L238
	ldo -48(%r30),%r6
.L239:
	ldo 1(%r3),%r3
.L238:
	ldb 0(%r3),%r5
	extrd,s %r5,63,8,%r5
	copy %r5,%r26
	copy %r6,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L239
	copy %r4,%r27
	ldi 43,%r31
	cmpb,= %r31,%r5,.L240
	ldi 45,%r31
	cmpb,<>,n %r31,%r5,.L241
	ldi 1,%r28
.L240:
	ldo 1(%r3),%r3
.L241:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,<< 9,%r20,.L243
	ldi 0,%r19
	shladd,l %r19,2,%r19,%r19
.L248:
	depd,z %r19,62,63,%r19
	ldo -48(%r31),%r31
	extrd,s %r31,63,8,%r31
	sub %r19,%r31,%r19
	ldb,mb 1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,>>=,n 9,%r20,.L248
	shladd,l %r19,2,%r19,%r19
.L243:
	sub %r0,%r19,%r31
	cmpiclr,*= 0,%r28,%r0
	copy %r19,%r31
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	b .L250
	ldo -48(%r30),%r6
.L251:
	ldo 1(%r3),%r3
.L250:
	ldb 0(%r3),%r5
	extrd,s %r5,63,8,%r5
	copy %r5,%r26
	copy %r6,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L251
	copy %r4,%r27
	ldi 43,%r31
	cmpb,= %r31,%r5,.L252
	ldi 45,%r31
	cmpb,<>,n %r31,%r5,.L253
	ldi 1,%r28
.L252:
	ldo 1(%r3),%r3
.L253:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,<< 9,%r20,.L255
	ldi 0,%r19
	shladd,l %r19,2,%r19,%r19
.L260:
	depd,z %r19,62,63,%r19
	ldo -48(%r31),%r31
	extrd,s %r31,63,8,%r31
	sub %r19,%r31,%r19
	ldb,mb 1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r20
	cmpib,>>=,n 9,%r20,.L260
	shladd,l %r19,2,%r19,%r19
.L255:
	sub %r0,%r19,%r31
	cmpiclr,*= 0,%r28,%r0
	copy %r19,%r31
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 8
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,ENTRY_GR=9,ENTRY_FR=14
	.ENTRY
	std %r2,-16(%r30)
	ldo 208(%r30),%r30
	std %r9,-192(%r30)
	std %r8,-184(%r30)
	std %r7,-176(%r30)
	std %r6,-168(%r30)
	std %r5,-160(%r30)
	std %r4,-152(%r30)
	std %r3,-144(%r30)
	ldo -136(%r30),%r1
	fstd,ma %fr14,8(%r1)
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	copy %r26,%r7
	copy %r25,%r6
	copy %r24,%r5
	std %r23,-200(%r30)
	fldd -200(%r30),%fr13
	cmpb,*= %r0,%r24,.L262
	copy %r22,%r8
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr14
	b .L265
	ldo -48(%r30),%r9
.L266:
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r5
.L263:
	cmpb,*= %r0,%r5,.L261
	ldi 0,%r3
.L265:
	extrd,u %r5,62,63,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr12
	extrd,u %r5,30,31,%r3
	std %r3,-200(%r30)
	fldd -200(%r30),%fr22
	xmpyu %fr13R,%fr22R,%fr22
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r3
	xmpyu %fr14R,%fr12R,%fr23
	xmpyu %fr13R,%fr12R,%fr22
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r3
	depd,z %r3,31,32,%r3
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r3
	add,l %r6,%r3,%r3
	copy %r3,%r25
	copy %r7,%r26
	copy %r9,%r29
	copy %r27,%r4
	ldd 16(%r8),%r2
	bve,l (%r2),%r2
	ldd 24(%r8),%r27
	cmpib,> 0,%r28,.L266
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L261
	fstd %fr13,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	b .L263
	uaddcm %r5,%r28,%r5
.L262:
	ldi 0,%r3
.L261:
	copy %r3,%r28
	ldd -224(%r30),%r2
	ldd -192(%r30),%r9
	ldd -184(%r30),%r8
	ldd -176(%r30),%r7
	ldd -168(%r30),%r6
	ldd -160(%r30),%r5
	ldd -152(%r30),%r4
	ldd -144(%r30),%r3
	ldo -136(%r30),%r1
	fldd,ma 8(%r1),%fr14
	fldd,ma 8(%r1),%fr13
	fldd,ma 8(%r1),%fr12
	bve (%r2)
	ldo -208(%r30),%r30
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,ENTRY_GR=10,ENTRY_FR=13
	.ENTRY
	std %r2,-16(%r30)
	ldo 208(%r30),%r30
	std %r10,-192(%r30)
	std %r9,-184(%r30)
	std %r8,-176(%r30)
	std %r7,-168(%r30)
	std %r6,-160(%r30)
	std %r5,-152(%r30)
	std %r4,-144(%r30)
	std %r3,-136(%r30)
	ldo -128(%r30),%r1
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	copy %r26,%r7
	copy %r25,%r6
	std %r23,-200(%r30)
	fldd -200(%r30),%fr12
	copy %r22,%r8
	copy %r21,%r9
	cmpib,= 0,%r24,.L269
	extrd,s %r24,63,32,%r5
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr13
	b .L272
	ldo -48(%r30),%r10
.L271:
	extrw,s %r5,30,31,%r28
.L274:
	cmpib,= 0,%r28,.L269
	extrd,s %r28,63,32,%r5
.L272:
	extrw,s %r5,30,31,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr22
	extrd,s %r28,63,32,%r3
	extrd,u %r3,31,32,%r3
	std %r3,-200(%r30)
	fldd -200(%r30),%fr23
	xmpyu %fr12R,%fr23R,%fr23
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r3
	xmpyu %fr13R,%fr22R,%fr23
	xmpyu %fr12R,%fr22R,%fr22
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r3
	depd,z %r3,31,32,%r3
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r3
	add,l %r6,%r3,%r3
	copy %r9,%r24
	copy %r3,%r25
	copy %r7,%r26
	copy %r10,%r29
	copy %r27,%r4
	ldd 16(%r8),%r2
	bve,l (%r2),%r2
	ldd 24(%r8),%r27
	cmpb,*= %r0,%r28,.L268
	copy %r4,%r27
	cmpib,>= 0,%r28,.L274
	extrw,s %r5,30,31,%r28
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	ldo -1(%r5),%r5
	b .L271
	extrd,s %r5,63,32,%r5
.L269:
	ldi 0,%r3
.L268:
	copy %r3,%r28
	ldd -224(%r30),%r2
	ldd -192(%r30),%r10
	ldd -184(%r30),%r9
	ldd -176(%r30),%r8
	ldd -168(%r30),%r7
	ldd -160(%r30),%r6
	ldd -152(%r30),%r5
	ldd -144(%r30),%r4
	ldd -136(%r30),%r3
	ldo -128(%r30),%r1
	fldd,ma 8(%r1),%fr13
	fldd,ma 8(%r1),%fr12
	bve (%r2)
	ldo -208(%r30),%r30
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 8
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	ldo 64(%r30),%r30
	extrd,s %r26,63,32,%r19
	extrd,s %r25,63,32,%r28
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$divI,MILLICODE
	b,l $$divI,%r2
	nop
	copy %r29,%r31
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r2
	ldi 0,%r28
	extrd,u %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	extrd,u %r29,63,32,%r29
	depd %r29,32+32-1,32,%r28
	ldd -80(%r30),%r2
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r3
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r5,%r26
	copy %r28,%r29
	copy %r3,%r28
	ldd -192(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 8
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 8
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r3
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r5,%r26
	copy %r28,%r29
	copy %r3,%r28
	ldd -192(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 8
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 8
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r3
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r5,%r26
	copy %r28,%r29
	copy %r3,%r28
	ldd -192(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 8
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r28
	cmpb,= %r28,%r25,.L283
	extrd,u %r25,63,32,%r19
.L288:
	cmpb,*=,n %r0,%r28,.L283
	ldw,mb 4(%r26),%r31
	cmpb,<> %r19,%r31,.L288
	extrd,u %r31,63,32,%r28
.L283:
	cmpiclr,*= 0,%r28,%r28
	copy %r26,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r21
	ldw 0(%r25),%r20
	or,>= %r0,%r21,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	xor %r21,%r20,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	and %r28,%r31,%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L290
.L297:
	cmpb,*=,n %r0,%r20,.L290
	ldw,mb 4(%r26),%r28
	extrd,u %r28,63,32,%r21
	ldw,mb 4(%r25),%r19
	or,>= %r0,%r28,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	xor %r28,%r19,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	and %r28,%r31,%r28
	cmpib,> 0,%r28,.L297
	extrd,u %r19,63,32,%r20
.L290:
	cmpb,>> %r20,%r21,.L293
	ldi -1,%r28
	cmpclr,>>= %r20,%r21,%r21
	ldi 1,%r21
	extrd,s %r21,63,32,%r28
.L293:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r26,%r31
.L299:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L299
	stw %r19,-4(%r31)
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 8
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldw 0(%r26),%r28
	cmpib,= 0,%r28,.L304
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L306:
	cmpib,<>,n 0,%r31,.L306
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
.L307:
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L304:
	b .L307
	sub %r28,%r26,%r28
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	b,n .L318
.L311:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L318:
	cmpb,*=,n %r0,%r24,.L310
	ldw 0(%r26),%r28
	ldw 0(%r25),%r19
	or,>= %r0,%r28,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	xor %r28,%r19,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	and %r28,%r31,%r28
	cmpib,<= 0,%r28,.L319
	ldi 0,%r28
	cmpb,*<>,n %r0,%r19,.L311
	ldo -1(%r24),%r24
.L310:
	ldi 0,%r28
.L319:
	cmpb,*=,n %r28,%r24,.L313
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,>> %r19,%r31,.L313
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	extrd,s %r31,63,32,%r28
.L313:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r24,.L322
	extrd,u %r25,63,32,%r25
.L321:
	ldw 0(%r26),%r28
	cmpb,=,n %r25,%r28,.L322
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L321
	ldo 4(%r26),%r26
.L322:
	cmpiclr,*= 0,%r24,%r28
	copy %r26,%r28
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	b,n .L336
.L330:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L336:
	cmpb,*=,n %r0,%r24,.L329
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L330
	ldo -1(%r24),%r24
.L329:
	ldi 0,%r28
	cmpb,*=,n %r28,%r24,.L331
	ldw 0(%r26),%r31
	ldw 0(%r25),%r19
	cmpb,>> %r19,%r31,.L331
	ldi -1,%r28
	cmpclr,>>= %r19,%r31,%r31
	ldi 1,%r31
	extrd,s %r31,63,32,%r28
.L331:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	cmpb,*= %r0,%r24,.L338
	copy %r26,%r31
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	depd,z %r24,61,62,%r24
	copy %r28,%r31
.L338:
	copy %r31,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r25,%r26,.L340
	copy %r26,%r28
	copy %r25,%r20
	sub %r26,%r25,%r19
	depd,z %r24,61,62,%r21
	cmpb,*>> %r21,%r19,.L341
	ldo -1(%r24),%r31
	copy %r26,%r19
	cmpb,*= %r0,%r24,.L340
	ldi -1,%r21
.L342:
	ldo 4(%r25),%r25
	ldo 4(%r19),%r19
	ldw -4(%r25),%r20
	ldo -1(%r31),%r31
	cmpb,*<> %r21,%r31,.L342
	stw %r20,-4(%r19)
	b,n .L340
.L341:
	cmpb,*=,n %r0,%r24,.L340
	shladd,l %r31,2,%r25,%r25
	shladd,l %r31,2,%r26,%r31
.L343:
	ldw 0(%r25),%r19
	stw %r19,0(%r31)
	copy %r25,%r19
	ldo -4(%r25),%r25
	cmpb,*<> %r19,%r20,.L343
	ldo -4(%r31),%r31
.L340:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 8
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	extrd,u %r25,63,32,%r25
	cmpb,*= %r0,%r24,.L349
	ldo -1(%r24),%r31
	copy %r26,%r19
	ldi -1,%r20
.L350:
	ldo 4(%r19),%r19
	ldo -1(%r31),%r31
	cmpb,*<> %r20,%r31,.L350
	stw %r25,-4(%r19)
.L349:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 8
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*<<= %r25,%r26,.L353
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L352
	add,l %r25,%r24,%r25
.L355:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L355
	stb,mb %r31,-1(%r25)
.L352:
	bve,n (%r2)
.L353:
	cmpb,*= %r25,%r26,.L352
	nop
	cmpb,*= %r0,%r24,.L352
	add,l %r26,%r24,%r24
.L356:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
	ldb -1(%r26),%r28
	cmpb,*<> %r26,%r24,.L356
	stb %r28,-1(%r25)
	b,n .L352
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 8
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	sub %r0,%r25,%r25
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 8
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 8
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	subi 32,%r25,%r25
	mtsar %r25
	shrpw %r26,%r26,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 8
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	shrpw %r26,%r26,%sar,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	sub %r0,%r25,%r25
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	mtsar %r25
	bve (%r2)
	shrpd %r26,%r26,%sar,%r28
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 8
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r26
	extrw,u %r25,31,4,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r25
	extrw,u %r25,31,4,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r28,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,16,%r28
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 8
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r26
	extrw,u %r25,31,4,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	sub %r0,%r25,%r25
	extrw,u %r25,31,4,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r26
	or %r28,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,16,%r28
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 8
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,8,%r26
	extrw,u %r25,31,3,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	sub %r0,%r25,%r25
	extrw,u %r25,31,3,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r28,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,8,%r28
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 8
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,8,%r26
	extrw,u %r25,31,3,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	sub %r0,%r25,%r25
	extrw,u %r25,31,3,%r25
	mtsarcm %r25
	depw,z %r26,%sar,32,%r26
	or %r28,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,8,%r28
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r26
	extrd,u %r26,55,56,%r31
	depw,z %r26,23,24,%r28
	or %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,16,%r28
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r26
	depw,z %r26,23,24,%r28
	ldil L'16711680,%r19
	and %r28,%r19,%r28
	depw,z %r26,7,8,%r31
	or %r28,%r31,%r28
	extrd,u %r26,39,40,%r31
	or %r28,%r31,%r28
	and %r26,%r19,%r26
	extrd,u %r26,55,56,%r26
	or %r28,%r26,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	depd,z %r26,7,8,%r28
	extrd,u %r26,7,8,%r31
	or %r28,%r31,%r28
	extrd,u %r26,23,24,%r31
	depdi,z -1,55,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	extrd,u %r26,39,40,%r31
	ldil L'16711680,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	extrd,u %r26,55,56,%r31
	depdi,z -1,39,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	depd,z %r26,55,56,%r31
	depdi,z -1,31,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	depd,z %r26,39,40,%r31
	depdi,z -1,23,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	depd,z %r26,23,24,%r26
	depdi,z -1,15,8,%r31
	and %r26,%r31,%r26
	bve (%r2)
	or %r28,%r26,%r28
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 8
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,63,32,%r26
	ldi 0,%r19
	ldi 32,%r20
	mtsar %r19
.L378:
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	ldo 1(%r19),%r31
	cmpb,*<> %r0,%r28,.L377
	extrd,u %r31,63,32,%r19
	cmpb,<> %r20,%r31,.L378
	mtsar %r19
	b .L374
	ldi 0,%r28
.L377:
	extrd,s %r31,63,32,%r28
.L374:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpib,= 0,%r26,.L382
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<>,n %r0,%r28,.L380
	ldi 1,%r28
.L381:
	extrw,s %r19,30,31,%r31
	extrd,s %r31,63,32,%r19
	ldo 1(%r28),%r28
	extrw,u %r31,31,1,%r31
	cmpib,= 0,%r31,.L381
	extrd,s %r28,63,32,%r28
.L380:
	bve,n (%r2)
.L382:
	b .L380
	copy %r19,%r28
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata.cst4
	.align 4
.LC4:
	.word	-8388609
	.align 4
.LC5:
	.word	2139095039
	.text
	.align 8
.globl gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'.LC4,%r27
	ldd RT'.LC4(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!< %fr4R,%fr22R
	ftest
	b .L385
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L386
	ldi 0,%r28
.L386:
	extrd,s %r28,63,32,%r28
.L385:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
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
	.align 8
.globl gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	addil LT'.LC8,%r27
	ldd RT'.LC8(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L389
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L390
	ldi 0,%r28
.L390:
	extrd,s %r28,63,32,%r28
.L389:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC12:
	.word	-65537
	.word	-1
	.word	-1
	.word	-1
	.align 16
.LC13:
	.word	2147418111
	.word	-1
	.word	-1
	.word	-1
	.text
	.align 8
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r6
	copy %r25,%r5
	addil LT'.LC12,%r27
	ldd RT'.LC12(%r1),%r28
	ldd 0(%r28),%r24
	ldd 8(%r28),%r23
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r31
	cmpb,*> %r0,%r31,.L393
	ldi 1,%r28
	ldi 1,%r3
	addil LT'.LC13,%r27
	ldd RT'.LC13(%r1),%r28
	ldd 0(%r28),%r24
	ldd 8(%r28),%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __gttf2,%r2
	copy %r5,%r25
	cmpclr,*< %r0,%r28,%r0
	b,n .L396
.L394:
	extrd,s %r3,63,32,%r28
.L393:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L396:
	b .L394
	ldi 0,%r3
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	ldo 144(%r30),%r30
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	std %r25,-136(%r30)
	fldd -136(%r30),%fr22
	ldo -48(%r30),%r29
	b,l __extenddftf2,%r2
	fcnv,w,dbl %fr22R,%fr4
	std %r28,0(%r3)
	std %r29,8(%r3)
	ldd -160(%r30),%r2
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldo -144(%r30),%r30
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata.cst4
	.align 4
.LC16:
	.word	1073741824
	.align 4
.LC17:
	.word	1056964608
	.text
	.align 8
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L399
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr22R,%fr4R
	ftest
	b,n .L399
	cmpib,> 0,%r25,.L404
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L402
	fldw 0(%r28),%fr22R
.L404:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L402
	fldw 0(%r28),%fr22R
.L405:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L399
	extrd,s %r28,63,32,%r25
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L402:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L405
	extrw,u %r25,0,1,%r28
	b .L405
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L399:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
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
	.align 8
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L407
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr22,%fr4
	ftest
	b,n .L407
	cmpib,> 0,%r25,.L412
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L410
	fldd 0(%r28),%fr22
.L412:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L410
	fldd 0(%r28),%fr22
.L413:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L407
	extrd,s %r28,63,32,%r25
	fmpy,dbl %fr22,%fr22,%fr22
.L410:
	extrw,u %r25,31,1,%r28
	cmpib,= 0,%r28,.L413
	extrw,u %r25,0,1,%r28
	b .L413
	fmpy,dbl %fr4,%fr22,%fr4
.L407:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
	.align 16
.LC24:
	.word	1073741824
	.word	0
	.word	0
	.word	0
	.align 16
.LC25:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.text
	.align 8
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=9
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r9,176(%r30)
	std %r8,-168(%r30)
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r3
	copy %r26,%r8
	copy %r25,%r7
	extrd,s %r24,63,32,%r6
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L415
	copy %r4,%r27
	copy %r5,%r24
	copy %r3,%r23
	copy %r5,%r26
	copy %r3,%r25
	ldo -48(%r30),%r29
	b,l __addtf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r5,%r24
	copy %r3,%r23
	copy %r28,%r26
	copy %r29,%r25
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L415
	copy %r4,%r27
	cmpib,> 0,%r6,.L422
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r3
	ldd 8(%r28),%r5
.L417:
	b .L419
	ldo -48(%r30),%r9
.L422:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r3
	b .L417
	ldd 8(%r28),%r5
.L418:
	extrw,u %r6,0,1,%r31
.L423:
	add,l %r31,%r6,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L415
	extrd,s %r31,63,32,%r6
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	copy %r5,%r25
	copy %r9,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r3
	copy %r29,%r5
.L419:
	extrw,u %r6,31,1,%r28
	cmpib,= 0,%r28,.L423
	extrw,u %r6,0,1,%r31
	copy %r3,%r24
	copy %r5,%r23
	copy %r8,%r26
	copy %r7,%r25
	copy %r9,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r8
	b .L418
	copy %r29,%r7
.L415:
	copy %r8,%r28
	copy %r7,%r29
	ldd -192(%r30),%r2
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r9
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 8
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r24,.L425
	copy %r26,%r28
	add,l %r25,%r24,%r24
	copy %r26,%r31
.L426:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	ldb -1(%r25),%r20
	xor %r19,%r20,%r19
	cmpb,*<> %r25,%r24,.L426
	stb %r19,-1(%r31)
.L425:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 8
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r6
	copy %r25,%r5
	ldo -48(%r30),%r29
	b,l strlen,%r2
	copy %r24,%r3
	cmpb,*= %r0,%r3,.L430
	add,l %r6,%r28,%r28
.L429:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r19
	cmpb,*= %r0,%r19,.L430
	stb %r31,0(%r28)
	ldo 1(%r5),%r5
	ldo -1(%r3),%r3
	cmpb,*<> %r0,%r3,.L429
	ldo 1(%r28),%r28
.L430:
	cmpclr,*<> %r0,%r3,%r0
	stb %r0,0(%r28)
.L432:
	copy %r6,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 8
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldi 0,%r28
	cmpb,*= %r28,%r25,.L439
	add,l %r26,%r28,%r31
.L442:
	ldb 0(%r31),%r31
	cmpiclr,= 0,%r31,%r0
	b,n .L441
.L434:
	bve,n (%r2)
.L441:
	ldo 1(%r28),%r28
	cmpb,*<> %r28,%r25,.L442
	add,l %r26,%r28,%r31
.L439:
	b .L434
	copy %r25,%r28
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldb 0(%r26),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*= %r0,%r20,.L448
	copy %r26,%r28
	copy %r25,%r19
.L447:
	ldb 0(%r19),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L450
	cmpb,<> %r20,%r31,.L447
	ldo 1(%r19),%r19
.L445:
	bve,n (%r2)
.L450:
	ldb,mb 1(%r28),%r20
	extrd,s %r20,63,8,%r20
	cmpb,*<>,n %r0,%r20,.L447
	copy %r25,%r19
.L448:
	b .L445
	ldi 0,%r28
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 8
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r25,63,32,%r25
	b .L453
	ldi 0,%r28
.L452:
	cmpb,*= %r0,%r31,.L456
	ldo 1(%r26),%r26
.L453:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r25,%r31,.L452
	copy %r26,%r28
	b,n .L452
.L456:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 8
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r8,160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r3
	copy %r25,%r6
	copy %r25,%r26
	ldo -48(%r30),%r29
	b,l strlen,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L457
	copy %r28,%r7
	ldb 0(%r6),%r8
	extrd,s %r8,63,8,%r8
	ldo -48(%r30),%r5
.L459:
	copy %r8,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strchr,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L457
	copy %r28,%r3
	copy %r7,%r24
	copy %r6,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strncmp,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L457
	copy %r4,%r27
	b .L459
	ldo 1(%r3),%r3
.L457:
	copy %r3,%r28
	ldd -176(%r30),%r2
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r8
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 8
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr4,%fr0
	ftest
	b,n .L469
	fcmp,dbl,!> %fr4,%fr0
.L471:
	ftest
	b,n .L470
	b,n .L466
.L470:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L465
.L466:
	bve,n (%r2)
.L469:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L465
	b .L471
	fcmp,dbl,!> %fr4,%fr0
.L465:
	b .L466
	fneg,dbl %fr4,%fr4
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 8
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=10
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r10,176(%r30)
	std %r9,-168(%r30)
	std %r8,-160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	cmpb,*= %r0,%r23,.L476
	copy %r26,%r3
	cmpb,*>> %r23,%r25,.L478
	sub %r25,%r23,%r5
	add,l %r26,%r5,%r5
	cmpb,*<<,n %r5,%r26,.L478
	ldb 0(%r24),%r7
	extrd,s %r7,63,8,%r7
	ldo -1(%r23),%r8
	ldo 1(%r24),%r9
	b .L475
	ldo -48(%r30),%r10
.L474:
	cmpb,*<< %r5,%r3,.L472
	ldi 0,%r6
.L475:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	copy %r3,%r6
	cmpb,<> %r7,%r28,.L474
	ldo 1(%r3),%r3
	copy %r8,%r24
	copy %r9,%r25
	copy %r3,%r26
	copy %r10,%r29
	b,l memcmp,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L474
	copy %r4,%r27
	b .L480
	copy %r6,%r28
.L476:
	b .L472
	copy %r26,%r6
.L478:
	ldi 0,%r6
.L472:
	copy %r6,%r28
.L480:
	ldd -192(%r30),%r2
	ldd -168(%r30),%r9
	ldd -160(%r30),%r8
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r10
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	copy %r24,%r3
	add,l %r28,%r3,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata.cst8
	.align 8
.LC28:
	.word	1072693248
	.word	0
	.align 8
.LC29:
	.word	1071644672
	.word	0
	.text
	.align 8
.globl frexp
	.type	frexp, @function
frexp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr4,%fr0
	ftest
	b,n .L495
	ldi 0,%r31
.L483:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L497
	ldi 0,%r28
	b .L502
	ldi 1,%r28
.L497:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr23
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r19
	fldd 0(%r19),%fr22
.L487:
	ldo 1(%r28),%r28
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L487
	extrd,s %r28,63,32,%r28
.L488:
	cmpb,*= %r0,%r31,.L492
	stw %r28,0(%r25)
	fneg,dbl %fr4,%fr4
.L492:
	bve,n (%r2)
.L495:
	fneg,dbl %fr4,%fr4
	b .L483
	ldi 1,%r31
.L502:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L489
	ldi 0,%r28
.L489:
	extrw,u %r28,31,8,%r28
	cmpib,= 0,%r28,.L494
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L490
	ldi 1,%r28
	ldi 0,%r28
.L490:
	extrw,u %r28,31,8,%r28
	cmpib,<> 0,%r28,.L503
	addil LT'.LC29,%r27
.L494:
	b .L488
	ldi 0,%r28
.L503:
	ldi 0,%r28
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr22
.L491:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L491
	extrd,s %r28,63,32,%r28
	b,n .L488
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r26,.L504
	ldi 0,%r28
.L506:
	extrd,s %r26,63+1-1,1,%r31
	and %r31,%r25,%r31
	add,l %r28,%r31,%r28
	extrd,u %r26,62,63,%r26
	cmpb,*<> %r0,%r26,.L506
	depd,z %r25,62,63,%r25
.L504:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	ldi 1,%r19
	ldi 1,%r23
	cmpb,<< %r25,%r26,.L510
	ldi 0,%r29
.L511:
	ldi 0,%r20
.L526:
	cmpb,*<>,n %r20,%r19,.L514
	copy %r19,%r20
.L515:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L513:
	extrw,u %r20,31,8,%r20
	cmpib,= 0,%r20,.L526
	ldi 0,%r20
	cmpib,= 0,%r22,.L526
	nop
.L510:
	cmpib,> 0,%r31,.L511
	add,l %r31,%r31,%r21
	extrd,u %r21,63,32,%r31
	add,l %r19,%r19,%r22
	extrd,u %r22,63,32,%r19
	cmpb,<< %r21,%r28,.L513
	copy %r23,%r20
	b .L513
	copy %r29,%r20
.L517:
	extrd,u %r19,62,63,%r19
.L527:
	cmpb,*= %r0,%r19,.L515
	extrd,u %r31,62,63,%r31
.L514:
	cmpb,>>,n %r31,%r28,.L527
	extrd,u %r19,62,63,%r19
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	b .L517
	extrd,u %r20,63,32,%r20
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	extrd,s %r26,63,8,%r31
	extrw,s %r26,24+1-1,1,%r26
	xor %r26,%r31,%r28
	cmpb,= %r31,%r26,.L530
	extrd,s %r28,63,8,%r28
	depw,z %r28,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
.L529:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L530:
	b .L529
	ldi 7,%r28
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	copy %r26,%r28
	extrd,s %r26,0,1,%r31
	cmpb,*= %r31,%r28,.L533
	xor %r26,%r31,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L532:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L533:
	b .L532
	ldi 63,%r28
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L537
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L536:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L536
	extrd,u %r25,63,32,%r25
.L535:
	bve,n (%r2)
.L537:
	b .L535
	copy %r31,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r24,63,32,%r23
	extrd,u %r24,32+29-1,29,%r20
	copy %r24,%r21
	depwi 0,31,3,%r21
	cmpb,*>> %r25,%r26,.L540
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpb,*<<,n %r28,%r26,.L540
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r23,.L539
	ldi -1,%r19
.L546:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L546
	stb %r31,0(%r28)
	b,n .L539
.L540:
	cmpb,*=,n %r0,%r20,.L543
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L544:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L544
	ldo 8(%r31),%r31
.L543:
	cmpb,>>=,n %r21,%r23,.L539
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	add,l %r25,%r22,%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
.L545:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L545
	ldo 1(%r26),%r26
.L539:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r24,63,32,%r21
	cmpb,*>> %r25,%r26,.L552
	extrd,u %r24,32+31-1,31,%r20
	add,l %r25,%r21,%r28
	cmpb,*<<,n %r28,%r26,.L552
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r21,.L551
	ldi -1,%r19
.L557:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L557
	stb %r31,0(%r28)
	b,n .L551
.L552:
	cmpb,*=,n %r0,%r20,.L555
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,1,%r25,%r20
.L556:
	ldh 0(%r28),%r19
	sth %r19,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r20,%r28,.L556
	ldo 2(%r31),%r31
.L555:
	extrw,u %r21,31,1,%r21
	cmpib,= 0,%r21,.L551
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	ldb 0(%r25),%r28
	add,l %r26,%r24,%r26
	stb %r28,0(%r26)
.L551:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r24,63,32,%r23
	extrd,u %r24,32+30-1,30,%r20
	copy %r24,%r21
	depwi 0,31,2,%r21
	cmpb,*>> %r25,%r26,.L562
	extrd,u %r21,63,32,%r22
	add,l %r25,%r23,%r28
	cmpb,*<<,n %r28,%r26,.L562
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r23,.L561
	ldi -1,%r19
.L568:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L568
	stb %r31,0(%r28)
	b,n .L561
.L562:
	cmpb,*=,n %r0,%r20,.L565
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,2,%r25,%r20
.L566:
	ldw 0(%r28),%r19
	stw %r19,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r20,%r28,.L566
	ldo 4(%r31),%r31
.L565:
	cmpb,>>=,n %r21,%r23,.L561
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	add,l %r25,%r22,%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
.L567:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L567
	ldo 1(%r26),%r26
.L561:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 8
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	b,l $$remI,%r2
	nop
	extrd,s %r29,63,32,%r28
	ldd -16(%r30),%r2
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 8
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,uw,dbl %fr22R,%fr4
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 8
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,uw,sgl %fr22R,%fr4R
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,udw,dbl %fr22,%fr4
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	fcnv,udw,sgl %fr22,%fr4R
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 8
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	.IMPORT $$remU,MILLICODE
	b,l $$remU,%r2
	nop
	extrd,u %r29,63,32,%r28
	ldd -16(%r30),%r2
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	ldi 16,%r19
.L581:
	ldo 16(%r28),%r31
	mtsar %r31
	bb,< %r26,%sar,.L580
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L581
	extrd,s %r31,63,32,%r28
.L580:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	ldi 16,%r19
.L585:
	mtsarcm %r28
	bb,< %r26,%sar,.L584
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L585
	extrd,s %r31,63,32,%r28
.L584:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata.cst4
	.align 4
.LC32:
	.word	1191182336
	.text
	.align 8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	addil LT'.LC32,%r27
	ldd RT'.LC32(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!>= %fr4R,%fr22R
	ftest
	b .L591
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
.L587:
	bve (%r2)
	ldo -64(%r30),%r30
.L591:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	b .L587
	add,l %r28,%r31,%r28
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r26
	ldi 0,%r20
	copy %r20,%r31
	ldi 16,%r21
.L594:
	mtsarcm %r31
	extrw,u %r26,%sar,1,%r28
	add,l %r28,%r20,%r28
	extrd,s %r28,63,32,%r20
	ldo 1(%r31),%r19
	cmpb,<> %r21,%r19,.L594
	extrd,s %r19,63,32,%r31
	bve (%r2)
	extrd,u %r28,63,1,%r28
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	copy %r28,%r31
	ldi 16,%r20
.L597:
	mtsarcm %r31
	extrw,u %r26,%sar,1,%r19
	add,l %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r31),%r19
	cmpb,<> %r20,%r19,.L597
	extrd,s %r19,63,32,%r31
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L602
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L601:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L601
	extrd,u %r25,63,32,%r25
.L600:
	bve,n (%r2)
.L602:
	b .L600
	copy %r31,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L607
	extrd,u %r25,63,32,%r25
	cmpb,*=,n %r0,%r25,.L608
	ldi 0,%r28
.L606:
	extrw,s %r25,31+1-1,1,%r19
	and %r19,%r31,%r19
	add,l %r19,%r28,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r31,%r31
	extrd,u %r25,62,63,%r25
	cmpb,*<> %r0,%r25,.L606
	extrd,u %r31,63,32,%r31
.L605:
	bve,n (%r2)
.L607:
	b .L605
	copy %r31,%r28
.L608:
	b .L605
	copy %r25,%r28
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r31
	extrd,s %r24,63,32,%r24
	ldi 1,%r19
	ldi 1,%r23
	cmpb,<< %r25,%r26,.L611
	ldi 0,%r29
.L612:
	ldi 0,%r20
.L627:
	cmpb,*<>,n %r20,%r19,.L615
	copy %r19,%r20
.L616:
	cmpiclr,*<> 0,%r24,%r0
	copy %r20,%r28
	bve,n (%r2)
.L614:
	extrw,u %r20,31,8,%r20
	cmpib,= 0,%r20,.L627
	ldi 0,%r20
	cmpib,= 0,%r22,.L627
	nop
.L611:
	cmpib,> 0,%r31,.L612
	add,l %r31,%r31,%r21
	extrd,u %r21,63,32,%r31
	add,l %r19,%r19,%r22
	extrd,u %r22,63,32,%r19
	cmpb,<< %r21,%r28,.L614
	copy %r23,%r20
	b .L614
	copy %r29,%r20
.L618:
	extrd,u %r19,62,63,%r19
.L628:
	cmpb,*= %r0,%r19,.L616
	extrd,u %r31,62,63,%r31
.L615:
	cmpb,>>,n %r31,%r28,.L628
	extrd,u %r19,62,63,%r19
	sub %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r20,%r20
	b .L618
	extrd,u %r20,63,32,%r20
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L632
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L631
	ldi 1,%r28
	ldi 0,%r28
.L631:
	extrd,s %r28,63,32,%r28
.L630:
	bve,n (%r2)
.L632:
	b .L630
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L636
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L635
	ldi 1,%r28
	ldi 0,%r28
.L635:
	extrd,s %r28,63,32,%r28
.L634:
	bve,n (%r2)
.L636:
	b .L634
	ldi -1,%r28
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrd,u %r26,31,32,%r28
	extrd,u %r25,31,32,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	std %r28,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r25
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r25,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrd,u %r26,31,32,%r28
	extrd,u %r25,31,32,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	std %r28,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r25
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r25,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,63,32,%r26
	extrd,s %r25,63,32,%r20
	cmpib,> 0,%r25,.L648
	ldi 0,%r29
.L640:
	cmpb,*= %r0,%r20,.L646
	ldi 1,%r19
	ldi 0,%r28
	ldi 1,%r23
	ldi 31,%r22
	b .L643
	ldi 0,%r24
.L648:
	sub %r0,%r20,%r20
	extrd,s %r20,63,32,%r20
	b .L640
	ldi 1,%r29
.L642:
	and %r31,%r21,%r31
	ldo 1(%r19),%r19
	cmpib,= 0,%r31,.L641
	extrd,u %r19,63,8,%r19
.L643:
	extrw,s %r20,31+1-1,1,%r31
	and %r31,%r26,%r31
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	add,l %r26,%r26,%r26
	extrd,s %r26,63,32,%r26
	extrw,s %r20,30,31,%r31
	extrd,s %r31,63,32,%r20
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,u %r31,0,1,%r31
	cmpb,>>= %r22,%r19,.L642
	copy %r23,%r21
	b .L642
	copy %r24,%r21
.L646:
	copy %r20,%r28
.L641:
	cmpb,*=,n %r0,%r29,.L644
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L644:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldi 0,%r3
	cmpclr,*<= %r3,%r26,%r0
	b,n .L654
.L650:
	cmpb,*> %r0,%r25,.L655
	ldi 1,%r28
.L651:
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r3,%r0
	copy %r31,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L654:
	sub %r0,%r26,%r26
	b .L650
	ldi 1,%r3
.L655:
	sub %r0,%r25,%r25
	xor %r3,%r28,%r3
	b .L651
	extrd,s %r3,63,32,%r3
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	ldi 0,%r3
	cmpclr,*<= %r3,%r26,%r0
	b,n .L660
.L657:
	or,*>= %r0,%r25,%r25
	subi 0,%r25,%r25
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	ldi 1,%r24
	sub %r0,%r28,%r31
	cmpiclr,*= 0,%r3,%r0
	copy %r31,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L660:
	sub %r0,%r26,%r26
	b .L657
	ldi 1,%r3
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r24,63,32,%r24
	extrd,u %r26,63,16,%r28
	extrd,u %r25,63,16,%r25
	ldi 1,%r19
	ldi 1,%r21
	cmpb,>> %r28,%r25,.L662
	ldi 0,%r22
.L663:
	ldi 0,%r31
.L678:
	cmpb,*<>,n %r31,%r19,.L666
	copy %r19,%r31
.L667:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L665:
	extrw,u %r20,31,8,%r20
	cmpib,=,n 0,%r20,.L678
	ldi 0,%r31
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	bb,>= %r31,16,.L678
	ldi 0,%r31
.L662:
	extrw,s %r25,31,16,%r31
	cmpib,> 0,%r31,.L663
	add,l %r19,%r19,%r31
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	extrd,u %r31,63,16,%r19
	cmpb,<< %r25,%r28,.L665
	copy %r21,%r20
	b .L665
	copy %r22,%r20
.L669:
	extrd,u %r19,62,63,%r19
.L679:
	cmpb,*= %r0,%r19,.L667
	extrd,u %r25,62,63,%r25
.L666:
	cmpb,>>,n %r25,%r28,.L679
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	or %r19,%r31,%r31
	b .L669
	extrd,u %r31,63,16,%r31
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	extrd,s %r24,63,32,%r24
	cmpb,*<<= %r26,%r25,.L697
	ldi 1,%r31
	depdi,z 1,32,4,%r20
	ldi 1,%r21
	b .L681
	ldi 0,%r22
.L697:
	ldi 0,%r19
.L698:
	cmpb,*<>,n %r19,%r31,.L685
	copy %r31,%r19
.L686:
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
.L684:
	extrw,u %r19,31,8,%r19
	cmpib,= 0,%r19,.L698
	ldi 0,%r19
	cmpb,*= %r0,%r31,.L698
	nop
.L681:
	and %r25,%r20,%r19
	cmpb,*<>,n %r0,%r19,.L698
	ldi 0,%r19
	depd,z %r25,62,63,%r25
	depd,z %r31,62,63,%r31
	cmpb,*<< %r25,%r28,.L684
	copy %r21,%r19
	b .L684
	copy %r22,%r19
.L688:
	extrd,u %r31,62,63,%r31
.L699:
	cmpb,*= %r0,%r31,.L686
	extrd,u %r25,62,63,%r25
.L685:
	cmpb,*>>,n %r25,%r28,.L699
	extrd,u %r31,62,63,%r31
	sub %r28,%r25,%r28
	b .L688
	or %r19,%r31,%r19
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r25,26,.L701
	extrd,s %r25,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	ldi 0,%r31
.L702:
	depd,z %r26,31,32,%r26
	or %r26,%r31,%r28
.L700:
	bve,n (%r2)
.L701:
	cmpb,*= %r0,%r28,.L704
	extrd,u %r26,63,32,%r19
	subi 31,%r28,%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	subi 32,%r28,%r28
	mtsar %r28
	shrpw %r0,%r19,%sar,%r19
	extrd,s %r26,0+32-1,32,%r26
	mtsar %r20
	depw,z %r26,%sar,32,%r26
	or %r19,%r26,%r19
	b .L702
	extrd,s %r19,63,32,%r26
.L704:
	b .L700
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,25,.L706
	extrd,s %r24,63,32,%r28
	ldo -64(%r24),%r24
	extrd,u %r24,63,32,%r24
	mtsarcm %r24
	depd,z %r25,%sar,64,%r28
	ldi 0,%r29
.L708:
	bve,n (%r2)
.L706:
	cmpb,*= %r0,%r28,.L709
	subi 63,%r28,%r31
	mtsar %r31
	depd,z %r25,%sar,64,%r29
	subi 64,%r28,%r28
	mtsar %r28
	shrpd %r0,%r25,%sar,%r25
	mtsar %r31
	depd,z %r26,%sar,64,%r28
	b .L708
	or %r25,%r28,%r28
.L709:
	copy %r26,%r28
	b .L708
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	__ashlti3, .-__ashlti3
	.align 8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r25,26,.L711
	extrd,s %r25,63,32,%r31
	extrd,s %r26,0+32-1,32,%r26
	extrw,s %r26,0,1,%r28
	extrd,s %r28,63,32,%r28
	subi 63,%r25,%r25
	mtsar %r25
	extrw,s %r26,%sar,32,%r26
	extrd,u %r26,63,32,%r26
.L712:
	depd,z %r28,31,32,%r28
	or %r28,%r26,%r28
.L710:
	bve,n (%r2)
.L711:
	cmpb,*= %r0,%r31,.L714
	extrd,s %r26,0+32-1,32,%r19
	mtsarcm %r31
	extrw,s %r19,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	ldo -1(%r31),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r19
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	or %r19,%r26,%r19
	b .L712
	extrd,u %r19,63,32,%r26
.L714:
	b .L710
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,25,.L716
	extrd,s %r24,63,32,%r31
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	extrd,s %r26,%sar,64,%r29
.L718:
	bve,n (%r2)
.L716:
	cmpb,*= %r0,%r31,.L719
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L718
	or %r26,%r29,%r29
.L719:
	copy %r26,%r28
	b .L718
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	__ashrti3, .-__ashrti3
	.align 8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,7,8,%r28
	depd,z %r26,7,8,%r31
	or %r28,%r31,%r28
	extrd,u %r26,23,24,%r31
	depdi,z -1,55,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	extrd,u %r26,39,40,%r31
	ldil L'16711680,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	extrd,u %r26,55,56,%r31
	depdi,z -1,39,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	depd,z %r26,55,56,%r31
	depdi,z -1,31,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	depd,z %r26,39,40,%r31
	depdi,z -1,23,8,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	depd,z %r26,23,24,%r26
	depdi,z -1,15,8,%r31
	and %r26,%r31,%r26
	bve (%r2)
	or %r28,%r26,%r28
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,7,8,%r28
	copy %r26,%r31
	depw,z %r26,7,8,%r19
	or %r28,%r19,%r28
	extrw,u %r26,23,24,%r26
	depwi,z -1,23,8,%r19
	and %r26,%r19,%r26
	or %r28,%r26,%r28
	depw,z %r31,23,24,%r31
	ldil L'16711680,%r19
	and %r31,%r19,%r31
	or %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	depwi,z -1,31,16,%r31
	cmpclr,<< %r31,%r26,%r31
	ldi 1,%r31
	depw,z %r31,27,28,%r31
	subi 16,%r31,%r28
	mtsar %r28
	shrpw %r0,%r26,%sar,%r26
	depwi,z -1,23,8,%r28
	and %r26,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,28,29,%r28
	subi 8,%r28,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r31
	ldi 240,%r28
	and %r26,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,29,30,%r28
	subi 4,%r28,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	ldi 12,%r31
	and %r26,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	add,l %r31,%r31,%r31
	subi 2,%r31,%r19
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	bb,< %r26,30,.L725
	ldi 0,%r19
	subi 2,%r26,%r19
.L725:
	add,l %r31,%r28,%r31
	add,l %r19,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 8
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	or,*>= %r0,%r26,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrd,u %r31,0,1,%r3
	cmpiclr,*> 0,%r31,%r31
	ldi -1,%r31
	and %r31,%r26,%r31
	cmpiclr,*<> 0,%r26,%r26
	copy %r25,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	or %r31,%r26,%r26
	depw,z %r3,25,26,%r3
	add,l %r3,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__clzti2, .-__clzti2
	.align 8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,s %r26,0+32-1,32,%r31
	extrd,s %r25,0+32-1,32,%r28
	cmpclr,<= %r28,%r31,%r0
	b,n .L731
	cmpb,< %r28,%r31,.L732
	extrd,u %r26,63,32,%r31
	cmpb,>> %r25,%r26,.L731
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L732
	ldi 1,%r28
	b,n .L728
.L731:
	ldi 0,%r28
.L728:
	bve,n (%r2)
.L732:
	b .L728
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	ldo -48(%r30),%r29
	b,l __cmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 8
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*> %r24,%r26,.L740
	ldi 0,%r28
	cmpb,*< %r24,%r26,.L740
	ldi 2,%r28
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L738
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	b .L735
	ldo 1(%r28),%r28
.L738:
	ldi 0,%r28
.L735:
.L740:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__cmpti2, .-__cmpti2
	.align 8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,31,16,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	depw,z %r31,27,28,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,8,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,28,29,%r28
	mtsar %r28
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r31
	extrw,u %r26,31,4,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	depw,z %r28,29,30,%r28
	mtsar %r28
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	extrw,u %r26,31,2,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	add,l %r31,%r31,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,2,%r26
	uaddcm %r0,%r26,%r19
	extrw,u %r26,30,31,%r26
	subi 2,%r26,%r26
	extrw,s %r19,31+1-1,1,%r19
	and %r19,%r26,%r19
	add,l %r31,%r28,%r31
	add,l %r19,%r31,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 8
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	std %r3,-120(%r30)
	or,*>= %r0,%r25,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrd,u %r31,0,1,%r3
	cmpiclr,*= 0,%r25,%r0
	ldi 0,%r26
	cmpiclr,*> 0,%r31,%r31
	ldi -1,%r31
	and %r31,%r25,%r25
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	or %r26,%r25,%r26
	depw,z %r3,25,26,%r3
	add,l %r3,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__ctzti2, .-__ctzti2
	.align 8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	cmpb,*<> %r0,%r25,.L744
	ldo -48(%r30),%r29
	ldi 0,%r28
	cmpb,*= %r28,%r26,.L747
	ldd -144(%r30),%r2
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	b .L745
	extrd,s %r28,63,32,%r28
.L744:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L745:
	ldd -144(%r30),%r2
.L747:
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__ffsti2, .-__ffsti2
	.align 8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r25,26,.L749
	extrd,s %r25,63,32,%r31
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	ldi 0,%r28
.L750:
	depd,z %r28,31,32,%r28
	or %r28,%r26,%r28
.L748:
	bve,n (%r2)
.L749:
	cmpb,*= %r0,%r31,.L752
	extrd,u %r26,0+32-1,32,%r19
	mtsar %r31
	shrpw %r0,%r19,%sar,%r28
	extrd,u %r28,63,32,%r28
	ldo -1(%r31),%r20
	mtsar %r20
	depw,z %r19,%sar,32,%r19
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	or %r19,%r26,%r19
	b .L750
	extrd,u %r19,63,32,%r26
.L752:
	b .L748
	copy %r26,%r28
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bb,>= %r24,25,.L754
	extrd,s %r24,63,32,%r31
	mtsar %r24
	shrpd %r0,%r26,%sar,%r29
	ldi 0,%r28
.L756:
	bve,n (%r2)
.L754:
	cmpb,*= %r0,%r31,.L757
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r19
	extrd,u %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L756
	or %r26,%r29,%r29
.L757:
	copy %r26,%r28
	b .L756
	copy %r25,%r29
	.EXIT
	.PROCEND
	.size	__lshrti3, .-__lshrti3
	.align 8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrw,u %r26,31,16,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr23
	extrw,u %r25,31,16,%r20
	std %r20,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	extrw,u %r28,15,16,%r31
	extrw,u %r26,15,16,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr24R,%fr22R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r31,%r19,%r31
	extrw,u %r31,31,16,%r19
	extrw,u %r25,15,16,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r19,%r20,%r19
	extrw,u %r28,31,16,%r28
	depw,z %r19,15,16,%r20
	add,l %r28,%r20,%r20
	ldi 0,%r28
	depd %r20,32+32-1,32,%r28
	extrw,u %r31,15,16,%r31
	xmpyu %fr22R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r20
	add,l %r31,%r20,%r31
	extrw,u %r19,15,16,%r19
	add,l %r31,%r19,%r31
	depd %r31,0+32-1,32,%r28
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r3
	extrd,u %r26,63,32,%r6
	extrd,u %r25,63,32,%r7
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __muldsi3,%r2
	copy %r6,%r26
	extrd,s %r5,0+32-1,32,%r5
	std %r5,-168(%r30)
	fldd -168(%r30),%fr22
	std %r7,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r5
	extrd,s %r3,0+32-1,32,%r3
	std %r3,-168(%r30)
	fldd -168(%r30),%fr22
	std %r6,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r3
	add,l %r3,%r5,%r3
	extrd,s %r28,0+32-1,32,%r31
	add,l %r3,%r31,%r3
	depd %r3,0+32-1,32,%r28
	ldd -192(%r30),%r2
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrd,u %r26,63,32,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr23
	extrd,u %r25,63,32,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr23R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r29
	extrd,u %r29,31,32,%r28
	extrd,u %r26,31,32,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r31,%r28,%r31
	extrd,u %r31,63,32,%r19
	extrd,u %r25,31,32,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr23R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	add,l %r28,%r19,%r28
	extrd,u %r29,63,32,%r29
	depd,z %r28,31,32,%r19
	extrd,u %r31,31,32,%r31
	xmpyu %fr22R,%fr24R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r31,%r25,%r31
	extrd,u %r28,31,32,%r28
	add,l %r31,%r28,%r28
	add,l %r29,%r19,%r29
	bve (%r2)
	ldo -64(%r30),%r30
	.EXIT
	.PROCEND
	.size	__mulddi3, .-__mulddi3
	.align 8
.globl __multi3
	.type	__multi3, @function
__multi3:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	ldo 176(%r30),%r30
	std %r7,-160(%r30)
	std %r6,-152(%r30)
	std %r5,-144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	copy %r24,%r3
	copy %r23,%r7
	copy %r23,%r25
	ldo -48(%r30),%r29
	b,l __mulddi3,%r2
	copy %r6,%r26
	extrd,u %r7,31,32,%r31
	extrd,u %r5,31,32,%r19
	std %r19,-168(%r30)
	fldd -168(%r30),%fr22
	std %r5,-168(%r30)
	fldd -168(%r30),%fr23
	std %r31,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-168(%r30)
	ldd -168(%r30),%r31
	std %r7,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r5,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-168(%r30)
	ldd -168(%r30),%r5
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r19
	add,l %r31,%r19,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r5,%r31
	extrd,u %r6,31,32,%r19
	extrd,u %r3,31,32,%r20
	std %r20,-168(%r30)
	fldd -168(%r30),%fr22
	std %r3,-168(%r30)
	fldd -168(%r30),%fr23
	std %r19,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-168(%r30)
	ldd -168(%r30),%r19
	std %r6,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r3,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-168(%r30)
	ldd -168(%r30),%r3
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r20
	add,l %r19,%r20,%r19
	depd,z %r19,31,32,%r19
	add,l %r19,%r3,%r24
	add,l %r31,%r24,%r31
	add,l %r31,%r28,%r28
	ldd -192(%r30),%r2
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldo -176(%r30),%r30
	.EXIT
	.PROCEND
	.size	__multi3, .-__multi3
	.align 8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	bve (%r2)
	sub %r0,%r26,%r28
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 8
.globl __negti2
	.type	__negti2, @function
__negti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r25,%r29
	sub %r0,%r29,%r20
	sub,db %r0,%r28,%r19
	copy %r19,%r28
	bve (%r2)
	copy %r20,%r29
	.EXIT
	.PROCEND
	.size	__negti2, .-__negti2
	.align 8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,0+32-1,32,%r28
	xor %r28,%r26,%r26
	extrw,u %r26,15,16,%r28
	xor %r28,%r26,%r28
	extrw,u %r28,23,24,%r26
	xor %r26,%r28,%r26
	extrw,u %r26,27,28,%r28
	xor %r28,%r26,%r28
	extrw,u %r28,31,4,%r28
	mtsarcm %r28
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	extrw,u %r28,%sar,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 8
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	xor %r25,%r26,%r25
	extrd,s %r25,0+32-1,32,%r31
	xor %r31,%r25,%r31
	extrw,u %r31,15,16,%r28
	xor %r28,%r31,%r28
	extrw,u %r28,23,24,%r31
	xor %r31,%r28,%r31
	extrw,u %r31,27,28,%r28
	xor %r28,%r31,%r28
	extrw,u %r28,31,4,%r28
	mtsarcm %r28
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	extrw,u %r28,%sar,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__parityti2, .-__parityti2
	.align 8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,15,16,%r28
	xor %r28,%r26,%r26
	extrw,u %r26,23,24,%r28
	xor %r28,%r26,%r26
	extrw,u %r26,27,28,%r28
	xor %r28,%r26,%r28
	extrw,u %r28,31,4,%r28
	mtsarcm %r28
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	extrw,u %r28,%sar,1,%r28
	bve (%r2)
	extrd,s %r28,63,32,%r28
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.section	.rodata.cst8
	.align 8
.LC34:
	.dword	6148914691236517205
	.align 8
.LC35:
	.dword	3689348814741910323
	.align 8
.LC36:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,62,63,%r28
	addil LT'.LC34,%r27
	ldd RT'.LC34(%r1),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r28
	sub %r26,%r28,%r26
	extrd,u %r26,61,62,%r31
	addil LT'.LC35,%r27
	ldd RT'.LC35(%r1),%r28
	ldd 0(%r28),%r28
	and %r31,%r28,%r31
	and %r26,%r28,%r26
	add,l %r31,%r26,%r31
	extrd,u %r31,59,60,%r28
	add,l %r28,%r31,%r28
	addil LT'.LC36,%r27
	ldd RT'.LC36(%r1),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r28
	extrd,u %r28,31,32,%r31
	add,l %r31,%r28,%r28
	extrw,u %r28,15,16,%r31
	add,l %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	add,l %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,7,%r28
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrw,u %r26,30,31,%r28
	ldil L'1431650304,%r31
	ldo 5461(%r31),%r31
	and %r28,%r31,%r28
	sub %r26,%r28,%r26
	extrw,u %r26,29,30,%r31
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r31,%r28,%r31
	and %r26,%r28,%r26
	add,l %r31,%r26,%r31
	extrw,u %r31,27,28,%r28
	add,l %r28,%r31,%r28
	ldil L'252641280,%r31
	ldo 3855(%r31),%r31
	and %r28,%r31,%r28
	extrw,u %r28,15,16,%r31
	add,l %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	add,l %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,6,%r28
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata.cst8
	.align 8
.LC40:
	.dword	6148914691236517205
	.align 8
.LC41:
	.dword	3689348814741910323
	.align 8
.LC42:
	.dword	1085102592571150095
	.text
	.align 8
.globl __popcountti2
	.type	__popcountti2, @function
__popcountti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r25,%r29
	shrpd %r26,%r25,1,%r31
	extrd,u %r26,62,63,%r22
	addil LT'.LC40,%r27
	ldd RT'.LC40(%r1),%r19
	ldd 0(%r19),%r21
	and %r22,%r21,%r19
	and %r31,%r21,%r20
	sub %r29,%r20,%r29
	sub,db %r28,%r19,%r28
	copy %r28,%r21
	shrpd %r21,%r29,2,%r21
	extrd,u %r28,61,62,%r22
	addil LT'.LC41,%r27
	ldd RT'.LC41(%r1),%r31
	ldd 0(%r31),%r31
	and %r22,%r31,%r19
	and %r21,%r31,%r20
	and %r28,%r31,%r21
	and %r29,%r31,%r22
	add %r20,%r22,%r20
	add,dc %r19,%r21,%r19
	copy %r19,%r31
	depd,z %r31,3,4,%r31
	extrd,u %r20,59,60,%r29
	or %r31,%r29,%r29
	extrd,u %r19,59,60,%r28
	add %r29,%r20,%r29
	add,dc %r28,%r19,%r28
	addil LT'.LC42,%r27
	ldd RT'.LC42(%r1),%r31
	ldd 0(%r31),%r19
	and %r28,%r19,%r31
	and %r29,%r19,%r19
	add,l %r31,%r19,%r31
	extrd,u %r31,31,32,%r28
	add,l %r28,%r31,%r28
	extrw,u %r28,15,16,%r31
	add,l %r31,%r28,%r31
	extrw,u %r31,23,24,%r28
	add,l %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,8,%r28
	.EXIT
	.PROCEND
	.size	__popcountti2, .-__popcountti2
	.section	.rodata.cst8
	.align 8
.LC46:
	.word	1072693248
	.word	0
	.text
	.align 8
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcpy,dbl %fr4,%fr22
	extrd,s %r25,63,32,%r25
	copy %r25,%r31
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	b .L773
	fldd 0(%r28),%fr4
.L776:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L772
	extrd,s %r28,63,32,%r31
	fmpy,dbl %fr22,%fr22,%fr22
.L773:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L776
	extrw,u %r31,0,1,%r28
	b .L776
	fmpy,dbl %fr4,%fr22,%fr4
.L772:
	cmpib,> 0,%r25,.L775
	addil LT'.LC46,%r27
.L770:
	bve,n (%r2)
.L775:
	ldd RT'.LC46(%r1),%r28
	fldd 0(%r28),%fr22
	b .L770
	fdiv,dbl %fr22,%fr4,%fr4
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata.cst4
	.align 4
.LC48:
	.word	1065353216
	.text
	.align 8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcpy,sgl %fr4R,%fr22R
	extrd,s %r25,63,32,%r25
	copy %r25,%r31
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	b .L780
	fldw 0(%r28),%fr4R
.L783:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L779
	extrd,s %r28,63,32,%r31
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L780:
	extrw,u %r31,31,1,%r28
	cmpib,= 0,%r28,.L783
	extrw,u %r31,0,1,%r28
	b .L783
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L779:
	cmpib,> 0,%r25,.L782
	addil LT'.LC48,%r27
.L777:
	bve,n (%r2)
.L782:
	ldd RT'.LC48(%r1),%r28
	fldw 0(%r28),%fr22R
	b .L777
	fdiv,sgl %fr22R,%fr4R,%fr4R
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,0+32-1,32,%r31
	extrd,u %r25,0+32-1,32,%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L788
	cmpb,<< %r28,%r31,.L789
	extrd,u %r26,63,32,%r31
	cmpb,>> %r25,%r26,.L788
	extrd,u %r25,63,32,%r28
	cmpb,<<,n %r28,%r31,.L789
	ldi 1,%r28
	b,n .L785
.L788:
	ldi 0,%r28
.L785:
	bve,n (%r2)
.L789:
	b .L785
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r4,128(%r30)
	ldo -48(%r30),%r29
	b,l __ucmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 8
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*>> %r24,%r26,.L797
	ldi 0,%r28
	cmpb,*<< %r24,%r26,.L797
	ldi 2,%r28
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L795
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	b .L792
	ldo 1(%r28),%r28
.L795:
	ldi 0,%r28
.L792:
.L797:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.align 8
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
.globl __ctzdi2
.globl __clzdi2
.globl __multf3
.globl __netf2
.globl __addtf3
.globl __extenddftf2
.globl __gttf2
.globl __moddi3
.globl __divdi3
.globl __lttf2
.globl __unordtf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
