	.LEVEL 2.0w
	.text
	.align 8
.globl make_ti
	.type	make_ti, @function
make_ti:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r25,%r29
	bve (%r2)
	copy %r26,%r28
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
	copy %r25,%r29
	bve (%r2)
	copy %r26,%r28
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
	add,l %r25,%r24,%r31
	b .L5
	add,l %r26,%r24,%r24
.L6:
	stb,mb %r19,-1(%r24)
.L5:
	cmpb,*<>,n %r25,%r31,.L6
	ldb,mb -1(%r31),%r19
.L7:
	bve,n (%r2)
.L4:
	cmpb,*= %r25,%r26,.L7
	add,l %r26,%r24,%r20
	copy %r25,%r31
	b .L8
	copy %r26,%r24
.L9:
	ldo 1(%r24),%r24
	ldb -1(%r31),%r19
	stb %r19,-1(%r24)
.L8:
	cmpb,*<>,n %r20,%r24,.L9
	ldo 1(%r31),%r31
	b,n .L7
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
	b .L11
	extrd,u %r24,63,8,%r24
.L13:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	ldo 1(%r26),%r26
.L11:
	cmpb,*=,n %r0,%r23,.L12
	ldb 0(%r25),%r28
	cmpb,*<> %r28,%r24,.L13
	stb %r28,0(%r26)
.L12:
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
	extrd,u %r25,63,8,%r25
	b .L17
	copy %r26,%r28
.L19:
	ldo -1(%r24),%r24
.L17:
	cmpb,*=,n %r0,%r24,.L18
	ldb 0(%r28),%r31
	cmpb,<>,n %r31,%r25,.L19
	ldo 1(%r28),%r28
.L18:
	cmpiclr,*<> 0,%r24,%r0
	ldi 0,%r28
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
	b,n .L23
.L25:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L23:
	cmpb,*=,n %r0,%r24,.L24
	ldb 0(%r26),%r31
	ldb 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L25
	ldo -1(%r24),%r24
.L24:
	ldi 0,%r28
	cmpb,*=,n %r28,%r24,.L26
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L26:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 8
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	add,l %r26,%r24,%r24
	b .L29
	copy %r26,%r31
.L30:
	ldo 1(%r31),%r31
	ldb -1(%r25),%r19
	stb %r19,-1(%r31)
.L29:
	cmpb,*<>,n %r24,%r31,.L30
	ldo 1(%r25),%r25
	bve,n (%r2)
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
	ldi -1,%r28
.L32:
	cmpb,*= %r28,%r24,.L36
	add,l %r26,%r24,%r31
	ldb 0(%r31),%r31
	cmpb,= %r31,%r25,.L37
	ldo -1(%r24),%r19
	b .L32
	copy %r19,%r24
.L37:
	b .L33
	add,l %r26,%r24,%r28
.L36:
	ldi 0,%r28
.L33:
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
	add,l %r26,%r24,%r24
	copy %r26,%r31
	b .L39
	extrd,u %r25,63,8,%r25
.L40:
	ldo 1(%r31),%r31
.L39:
	cmpb,*<>,n %r24,%r31,.L40
	stb %r25,0(%r31)
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
	b .L42
	copy %r26,%r28
.L43:
	ldo 1(%r28),%r28
.L42:
	ldb 0(%r25),%r31
	stb %r31,0(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L43
	ldo 1(%r25),%r25
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
	copy %r26,%r28
	extrd,u %r25,63,8,%r25
.L47:
	ldb 0(%r28),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L46
	cmpb,<>,n %r31,%r25,.L47
	ldo 1(%r28),%r28
.L46:
	bve,n (%r2)
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
	extrd,s %r25,63,32,%r25
	ldb 0(%r26),%r28
.L53:
	extrd,s %r28,63,8,%r28
	cmpb,=,n %r28,%r25,.L51
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	cmpb,*<>,n %r0,%r28,.L53
	ldb 0(%r26),%r28
	b,n .L49
.L51:
	copy %r26,%r28
.L49:
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
	b .L58
	ldb 0(%r26),%r31
.L57:
	ldo 1(%r25),%r25
	ldb 0(%r26),%r31
.L58:
	extrd,s %r31,63,8,%r31
	ldb 0(%r25),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r28,%r31,.L56
	ldb 0(%r26),%r28
	cmpb,*<>,n %r0,%r28,.L57
	ldo 1(%r26),%r26
.L56:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
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
	copy %r26,%r28
.L61:
	ldb 0(%r28),%r19
	cmpb,*<>,n %r0,%r19,.L61
	ldo 1(%r28),%r28
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
	cmpb,*= %r0,%r24,.L67
	copy %r26,%r19
	ldo -1(%r24),%r24
	add,l %r26,%r24,%r26
.L64:
	ldb 0(%r19),%r28
	cmpb,*=,n %r0,%r28,.L68
	ldb 0(%r25),%r31
	sub %r26,%r19,%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	sub %r0,%r28,%r28
	extrd,u %r28,0,1,%r28
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,56+1-1,1,%r31
	and %r28,%r31,%r28
	cmpb,*=,n %r0,%r28,.L65
	ldb 0(%r19),%r31
	ldb 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L65
	ldo 1(%r19),%r19
	b .L64
	ldo 1(%r25),%r25
.L65:
	ldb 0(%r19),%r28
.L68:
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L63:
	bve,n (%r2)
.L67:
	b .L63
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
	copy %r26,%r28
	add,l %r26,%r24,%r24
	b .L70
	ldi 1,%r19
.L71:
	stb %r31,0(%r25)
	ldb 0(%r28),%r31
	stb %r31,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L70:
	sub %r24,%r28,%r31
	cmpb,*<,n %r19,%r31,.L71
	ldb 1(%r28),%r31
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
	ldo -97(%r26),%r26
	ldi 25,%r31
	cmpb,>>= %r31,%r26,.L73
	ldi 1,%r28
	ldi 0,%r28
.L73:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	ldi 127,%r31
	cmpb,>>= %r31,%r26,.L75
	ldi 1,%r28
	ldi 0,%r28
.L75:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	bve (%r2)
	extrd,u %r28,32+1-1,1,%r28
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
	extrd,s %r26,63,32,%r31
	ldi 31,%r28
	cmpb,>>= %r28,%r26,.L78
	ldi 1,%r19
	ldi 0,%r19
.L78:
	ldi 127,%r28
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
	.size	iscntrl, .-iscntrl
	.align 8
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -48(%r26),%r26
	cmpib,>>= 9,%r26,.L80
	ldi 1,%r28
	ldi 0,%r28
.L80:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	ldo -33(%r26),%r26
	ldi 93,%r31
	cmpb,>>= %r31,%r26,.L82
	ldi 1,%r28
	ldi 0,%r28
.L82:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	ldo -97(%r26),%r26
	ldi 25,%r31
	cmpb,>>= %r31,%r26,.L84
	ldi 1,%r28
	ldi 0,%r28
.L84:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	ldo -32(%r26),%r26
	ldi 94,%r31
	cmpb,>>= %r31,%r26,.L86
	ldi 1,%r28
	ldi 0,%r28
.L86:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	ldi 32,%r31
	xor %r26,%r31,%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	ldo -9(%r26),%r26
	cmpib,>>= 4,%r26,.L88
	ldi 1,%r28
	ldi 0,%r28
.L88:
	extrd,u %r28,63,8,%r28
	bve (%r2)
	or %r28,%r31,%r28
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
	ldo -65(%r26),%r26
	ldi 25,%r31
	cmpb,>>= %r31,%r26,.L90
	ldi 1,%r28
	ldi 0,%r28
.L90:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	extrd,u %r26,63,32,%r19
	ldi 31,%r31
	cmpb,>>= %r31,%r26,.L92
	ldi 1,%r28
	ldi 0,%r28
.L92:
	extrd,u %r28,63,8,%r28
	ldo -127(%r26),%r26
	ldi 32,%r20
	cmpb,>>= %r20,%r26,.L93
	ldi 1,%r31
	ldi 0,%r31
.L93:
	extrd,u %r31,63,8,%r31
	or %r28,%r31,%r31
	cmpb,*<> %r0,%r31,.L94
	ldi 1,%r28
	ldo -40(%r19),%r31
	ldo -8192(%r31),%r31
	cmpib,>>=,n 1,%r31,.L94
	depwi,z -7,31,16,%r28
	sub %r19,%r28,%r19
	cmpib,<< 2,%r19,.L94
	ldi 0,%r28
	ldi 1,%r28
.L94:
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
	ldo -48(%r26),%r26
	cmpib,>>= 9,%r26,.L99
	ldi 1,%r28
	ldi 0,%r28
.L99:
	bve (%r2)
	extrd,u %r28,63,1,%r28
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
	ldi 254,%r28
	cmpb,>>= %r28,%r26,.L110
	extrd,u %r26,63,32,%r31
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	cmpb,>>= %r19,%r31,.L104
	ldi 1,%r28
	ldi 0,%r28
.L104:
	extrd,u %r28,63,8,%r28
	ldo -42(%r31),%r21
	ldo -8192(%r21),%r21
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	cmpb,>>= %r20,%r21,.L105
	ldi 1,%r19
	ldi 0,%r19
.L105:
	extrd,u %r19,63,8,%r19
	or %r28,%r19,%r28
	cmpb,*<>,n %r0,%r28,.L106
	ldil L'-57344,%r28
	add,l %r31,%r28,%r28
	ldi 8184,%r19
	cmpb,>>= %r19,%r28,.L107
	depwi,z -1,29,14,%r19
	sub %r31,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	cmpb,<<,n %r28,%r19,.L108
	depwi,z -1,30,15,%r28
	and %r31,%r28,%r31
	cmpb,=,n %r28,%r31,.L109
	ldi 1,%r28
	b,n .L103
.L110:
	ldo 1(%r26),%r26
	extrw,u %r26,31,7,%r26
	ldi 32,%r31
	cmpb,<< %r31,%r26,.L102
	ldi 1,%r28
	ldi 0,%r28
.L102:
	extrd,u %r28,63,1,%r28
.L103:
	bve,n (%r2)
.L106:
	b .L103
	ldi 1,%r28
.L107:
	b .L103
	ldi 1,%r28
.L108:
	b .L103
	ldi 0,%r28
.L109:
	b .L103
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
	cmpib,>>= 9,%r26,.L112
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r31
	cmpib,<< 5,%r31,.L112
	ldi 0,%r28
	ldi 1,%r28
.L112:
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
	b .L117
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L120
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L122
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	b .L117
	fldd 0(%r28),%fr4
.L122:
	fsub,dbl %fr4,%fr5,%fr4
.L117:
	bve,n (%r2)
.L120:
	b .L117
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
	b .L125
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L128
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L130
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	b .L125
	fldw 0(%r28),%fr4R
.L130:
	fsub,sgl %fr4R,%fr5R,%fr4R
.L125:
	bve,n (%r2)
.L128:
	b .L125
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
	b .L136
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L133
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r28
	cmpb,=,n %r28,%r31,.L134
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	cmpclr,*> %r0,%r28,%r0
	b,n .L133
	fcpy,dbl %fr5,%fr4
.L133:
	bve (%r2)
	ldo -64(%r30),%r30
.L134:
	fcmp,dbl,!< %fr22,%fr5
	ftest
	b .L133
	fcpy,dbl %fr5,%fr4
	b .L133
	fcpy,dbl %fr22,%fr4
.L136:
	b .L133
	fcpy,dbl %fr5,%fr4
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
	b .L146
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L143
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	cmpb,=,n %r28,%r31,.L144
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L143
	fcpy,sgl %fr5R,%fr4R
.L143:
	bve (%r2)
	ldo -64(%r30),%r30
.L144:
	fcmp,sgl,!< %fr22R,%fr5R
	ftest
	b .L143
	fcpy,sgl %fr5R,%fr4R
	b .L143
	fcpy,sgl %fr22R,%fr4R
.L146:
	b .L143
	fcpy,sgl %fr5R,%fr4R
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
	std,ma %r8,160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	copy %r26,%r7
	copy %r25,%r8
	copy %r24,%r5
	copy %r23,%r6
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L156
	copy %r4,%r27
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L157
	copy %r4,%r27
	extrd,u %r7,0+1-1,1,%r31
	extrd,u %r5,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L154
	copy %r5,%r24
	cmpb,*<= %r0,%r7,.L158
	copy %r7,%r19
	copy %r5,%r19
	copy %r6,%r20
.L153:
	copy %r19,%r28
	copy %r20,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	bve (%r2)
	ldd,mb -160(%r30),%r8
.L154:
	copy %r6,%r23
	copy %r7,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r8,%r25
	cmpb,*<=,n %r0,%r28,.L161
	copy %r5,%r19
	b .L153
	copy %r6,%r20
.L156:
	copy %r5,%r19
	b .L153
	copy %r6,%r20
.L157:
	copy %r7,%r19
	b .L153
	copy %r8,%r20
.L158:
	b .L153
	copy %r8,%r20
.L161:
	copy %r7,%r19
	b .L153
	copy %r8,%r20
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
	b .L166
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L163
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r28
	cmpb,=,n %r28,%r31,.L164
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	cmpb,*<= %r0,%r28,.L163
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr22,%fr4
.L163:
	bve (%r2)
	ldo -64(%r30),%r30
.L164:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L163
	b .L163
	fcpy,dbl %fr5,%fr4
.L166:
	b .L163
	fcpy,dbl %fr5,%fr4
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
	b .L176
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L173
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	cmpb,=,n %r28,%r31,.L174
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	cmpib,<= 0,%r28,.L173
	fcpy,sgl %fr5R,%fr4R
	fcpy,sgl %fr22R,%fr4R
.L173:
	bve (%r2)
	ldo -64(%r30),%r30
.L174:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L173
	b .L173
	fcpy,sgl %fr5R,%fr4R
.L176:
	b .L173
	fcpy,sgl %fr5R,%fr4R
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
	std,ma %r8,160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	copy %r26,%r7
	copy %r25,%r8
	copy %r24,%r5
	copy %r23,%r6
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L186
	copy %r4,%r27
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L187
	copy %r4,%r27
	extrd,u %r7,0+1-1,1,%r31
	extrd,u %r5,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L184
	copy %r5,%r24
	cmpb,*<= %r0,%r7,.L188
	copy %r5,%r19
	copy %r7,%r19
	copy %r8,%r20
.L183:
	copy %r19,%r28
	copy %r20,%r29
	ldd -176(%r30),%r2
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	bve (%r2)
	ldd,mb -160(%r30),%r8
.L184:
	copy %r6,%r23
	copy %r7,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r8,%r25
	cmpb,*<=,n %r0,%r28,.L191
	copy %r7,%r19
	b .L183
	copy %r8,%r20
.L186:
	copy %r5,%r19
	b .L183
	copy %r6,%r20
.L187:
	copy %r7,%r19
	b .L183
	copy %r8,%r20
.L188:
	b .L183
	copy %r6,%r20
.L191:
	copy %r5,%r19
	b .L183
	copy %r6,%r20
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.section	.rodata
	.align 8
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align 8
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r26
	addil LT's.0,%r27
	ldd RT's.0(%r1),%r28
	b .L193
	addil LT'digits,%r27
.L194:
	extrd,u %r26,63,6,%r19
	ldb %r19(%r31),%r31
	stb %r31,0(%r28)
	ldo 1(%r28),%r28
	extrd,u %r26,57,58,%r26
.L193:
	cmpb,*<>,n %r0,%r26,.L194
	ldd RT'digits(%r1),%r31
	stb %r0,0(%r28)
	addil LT's.0,%r27
	bve (%r2)
	ldd RT's.0(%r1),%r28
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align 8
.globl srand
	.type	srand, @function
srand:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	ldo -1(%r26),%r26
	extrd,u %r26,63,32,%r26
	addil LT'seed,%r27
	ldd RT'seed(%r1),%r28
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
	cmpb,*=,n %r0,%r25,.L200
	ldd 0(%r25),%r28
	std %r28,0(%r26)
	std %r25,8(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L197:
	bve,n (%r2)
.L200:
	std %r0,8(%r26)
	b .L197
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
	cmpb,*=,n %r0,%r28,.L202
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L202:
	ldd 8(%r26),%r28
	cmpb,*=,n %r0,%r28,.L201
	ldd 0(%r26),%r31
	std %r31,0(%r28)
.L201:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 8
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,ENTRY_GR=12
	.ENTRY
	std %r2,-16(%r30)
	ldo 208(%r30),%r30
	std %r12,-192(%r30)
	std %r11,-184(%r30)
	std %r10,-176(%r30)
	std %r9,-168(%r30)
	std %r8,-160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r26,%r8
	copy %r25,%r11
	copy %r24,%r12
	copy %r23,%r6
	copy %r22,%r9
	ldd 0(%r24),%r7
	copy %r25,%r5
	ldi 0,%r3
	b .L205
	ldo -48(%r30),%r10
.L206:
	ldo 1(%r3),%r3
.L205:
	cmpb,*= %r7,%r3,.L209
	copy %r5,%r25
	copy %r8,%r26
	copy %r10,%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L206
	add,l %r5,%r6,%r5
	extrd,u %r3,31,32,%r28
	extrd,u %r6,31,32,%r31
	std %r31,-200(%r30)
	fldd -200(%r30),%fr22
	std %r6,-200(%r30)
	fldd -200(%r30),%fr23
	std %r28,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r28
	std %r3,-200(%r30)
	fldd -200(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r6,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-200(%r30)
	ldd -200(%r30),%r3
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r3,%r28
	b .L207
	add,l %r11,%r28,%r28
.L209:
	ldo 1(%r7),%r28
	std %r28,0(%r12)
	extrd,u %r6,31,32,%r26
	extrd,u %r7,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr22
	std %r7,-200(%r30)
	fldd -200(%r30),%fr23
	std %r26,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r26
	std %r6,-200(%r30)
	fldd -200(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r7,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-200(%r30)
	ldd -200(%r30),%r7
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r26,%r28,%r26
	depd,z %r26,31,32,%r26
	add,l %r26,%r7,%r26
	copy %r6,%r24
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	add,l %r11,%r26,%r26
.L207:
	ldd -224(%r30),%r2
	ldd -192(%r30),%r12
	ldd -184(%r30),%r11
	ldd -176(%r30),%r10
	ldd -168(%r30),%r9
	ldd -160(%r30),%r8
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldo -208(%r30),%r30
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 8
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,ENTRY_GR=11
	.ENTRY
	std %r2,-16(%r30)
	ldo 208(%r30),%r30
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
	copy %r25,%r11
	copy %r23,%r6
	copy %r22,%r7
	ldd 0(%r24),%r9
	copy %r25,%r5
	ldi 0,%r3
	b .L211
	ldo -48(%r30),%r10
.L212:
	ldo 1(%r3),%r3
.L211:
	cmpb,*= %r9,%r3,.L215
	copy %r5,%r25
	copy %r8,%r26
	copy %r10,%r29
	copy %r27,%r4
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L212
	add,l %r5,%r6,%r5
	extrd,u %r3,31,32,%r28
	extrd,u %r6,31,32,%r31
	std %r31,-200(%r30)
	fldd -200(%r30),%fr22
	std %r6,-200(%r30)
	fldd -200(%r30),%fr23
	std %r28,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-200(%r30)
	ldd -200(%r30),%r28
	std %r3,-200(%r30)
	fldd -200(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r6,-200(%r30)
	fldd -200(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-200(%r30)
	ldd -200(%r30),%r6
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r6,%r28
	b .L213
	add,l %r11,%r28,%r28
.L215:
	ldi 0,%r28
.L213:
	ldd -224(%r30),%r2
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
	ldo -208(%r30),%r30
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
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r5,144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r3
	b .L218
	ldo -48(%r30),%r5
.L219:
	ldo 1(%r3),%r3
.L218:
	ldb 0(%r3),%r26
	extrw,s %r26,31,8,%r26
	copy %r5,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L219
	copy %r4,%r27
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,=,n %r31,%r28,.L225
	ldi 45,%r31
	cmpb,<> %r31,%r28,.L221
	ldi 0,%r19
	ldi 1,%r19
.L220:
	ldo 1(%r3),%r3
.L221:
	b .L222
	ldi 0,%r31
.L225:
	b .L220
	ldi 0,%r19
.L223:
	add,l %r31,%r31,%r31
	ldo 1(%r3),%r3
	ldb -1(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	sub %r31,%r28,%r31
	extrd,s %r31,63,32,%r31
.L222:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	cmpib,>>=,n 9,%r28,.L223
	shladd,l %r31,2,%r31,%r31 
	cmpb,*<> %r0,%r19,.L224
	copy %r31,%r28
	sub %r0,%r31,%r31
	extrd,s %r31,63,32,%r28
.L224:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 8
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r5,144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r3
	b .L229
	ldo -48(%r30),%r5
.L230:
	ldo 1(%r3),%r3
.L229:
	ldb 0(%r3),%r26
	extrw,s %r26,31,8,%r26
	copy %r5,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L230
	copy %r4,%r27
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L236
	ldi 45,%r31
	cmpb,<> %r31,%r28,.L232
	ldi 0,%r19
	ldi 1,%r19
.L231:
	ldo 1(%r3),%r3
.L232:
	b .L233
	ldi 0,%r28
.L236:
	b .L231
	ldi 0,%r19
.L234:
	depd,z %r28,62,63,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
.L233:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>=,n 9,%r31,.L234
	shladd,l %r28,2,%r28,%r28
	sub %r0,%r28,%r31
	cmpiclr,*<> 0,%r19,%r0
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r5,144(%r30)
	std %r4,-136(%r30)
	std %r3,-128(%r30)
	copy %r26,%r3
	b .L240
	ldo -48(%r30),%r5
.L241:
	ldo 1(%r3),%r3
.L240:
	ldb 0(%r3),%r26
	extrw,s %r26,31,8,%r26
	copy %r5,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L241
	copy %r4,%r27
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L247
	ldi 45,%r31
	cmpb,<> %r31,%r28,.L243
	ldi 0,%r19
	ldi 1,%r19
.L242:
	ldo 1(%r3),%r3
.L243:
	b .L244
	ldi 0,%r28
.L247:
	b .L242
	ldi 0,%r19
.L245:
	depd,z %r28,62,63,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
.L244:
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>=,n 9,%r31,.L245
	shladd,l %r28,2,%r28,%r28
	sub %r0,%r28,%r31
	cmpiclr,*<> 0,%r19,%r0
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 8
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,ENTRY_GR=9,ENTRY_FR=13
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
	fstd,ma %fr13,8(%r1)
	fstd,ma %fr12,8(%r1)
	copy %r26,%r8
	copy %r25,%r6
	copy %r24,%r5
	std %r23,-200(%r30)
	fldd -200(%r30),%fr12
	copy %r22,%r7
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr13
	b .L251
	ldo -48(%r30),%r9
.L258:
	extrd,u %r5,62,63,%r5
.L251:
	cmpb,*= %r0,%r5,.L257
	extrd,u %r5,62,63,%r28
	extrd,u %r5,30,31,%r3
	std %r3,-200(%r30)
	fldd -200(%r30),%fr22
	xmpyu %fr12R,%fr22R,%fr22
	fstd %fr22,-200(%r30)
	ldd -200(%r30),%r3
	std %r28,-200(%r30)
	fldd -200(%r30),%fr22
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
	copy %r3,%r25
	copy %r8,%r26
	copy %r9,%r29
	copy %r27,%r4
	ldd 16(%r7),%r2
	bve,l (%r2),%r2
	ldd 24(%r7),%r27
	cmpib,> 0,%r28,.L258
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L256
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	extrd,u %r5,62,63,%r28
	b .L251
	uaddcm %r5,%r28,%r5
.L257:
	ldi 0,%r28
.L254:
	ldd -224(%r30),%r2
	ldd -192(%r30),%r9
	ldd -184(%r30),%r8
	ldd -176(%r30),%r7
	ldd -168(%r30),%r6
	ldd -160(%r30),%r5
	ldd -152(%r30),%r4
	ldd -144(%r30),%r3
	ldo -136(%r30),%r1
	fldd,ma 8(%r1),%fr13
	fldd,ma 8(%r1),%fr12
	bve (%r2)
	ldo -208(%r30),%r30
.L256:
	b .L254
	copy %r3,%r28
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
	copy %r26,%r9
	std %r23,-200(%r30)
	fldd -200(%r30),%fr12
	copy %r22,%r8
	copy %r21,%r7
	extrd,s %r24,63,32,%r5
	copy %r25,%r6
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr13
	b .L260
	ldo -48(%r30),%r10
.L262:
	extrw,s %r5,30,31,%r5
.L266:
	extrd,s %r5,63,32,%r5
.L260:
	cmpb,*= %r0,%r5,.L265
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
	copy %r7,%r24
	copy %r3,%r25
	copy %r9,%r26
	copy %r10,%r29
	copy %r27,%r4
	ldd 16(%r8),%r2
	bve,l (%r2),%r2
	ldd 24(%r8),%r27
	cmpb,*= %r0,%r28,.L264
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L266
	extrw,s %r5,30,31,%r5
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	ldo -1(%r5),%r5
	b .L262
	extrd,s %r5,63,32,%r5
.L265:
	ldi 0,%r28
.L261:
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
.L264:
	b .L261
	copy %r3,%r28
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
	copy %r26,%r28
	extrd,u %r25,63,32,%r25
.L277:
	ldw 0(%r28),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L280
	cmpb,<>,n %r31,%r25,.L277
	ldo 4(%r28),%r28
	ldw 0(%r28),%r31
.L280:
	cmpiclr,*<> 0,%r31,%r0
	ldi 0,%r28
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
	b .L288
	ldw 0(%r26),%r31
.L284:
	ldo 4(%r25),%r25
	ldw 0(%r26),%r31
.L288:
	ldw 0(%r25),%r28
	cmpclr,= %r28,%r31,%r0
	b,n .L283
	cmpclr,*<> %r0,%r31,%r0
	b,n .L283
	cmpb,*<>,n %r0,%r28,.L284
	ldo 4(%r26),%r26
.L283:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L285
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L286
	ldi 1,%r28
	ldi 0,%r28
.L286:
	extrd,u %r28,63,1,%r28
.L285:
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
.L290:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L290
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
	copy %r26,%r28
.L294:
	ldw 0(%r28),%r31
	cmpb,*<>,n %r0,%r31,.L294
	ldo 4(%r28),%r28
	sub %r28,%r26,%r28
	bve (%r2)
	extrd,s %r28,61,62,%r28
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
.L296:
	cmpb,*=,n %r0,%r24,.L297
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,<> %r28,%r31,.L303
	ldi 0,%r28
	cmpb,*=,n %r0,%r31,.L297
	ldw 0(%r25),%r28
	cmpb,*=,n %r0,%r28,.L297
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	b .L296
	ldo 4(%r25),%r25
.L297:
	ldi 0,%r28
.L303:
	cmpb,*=,n %r28,%r24,.L299
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L299
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L300
	ldi 1,%r28
	ldi 0,%r28
.L300:
	extrd,u %r28,63,1,%r28
.L299:
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
	copy %r26,%r28
	b .L305
	extrd,u %r25,63,32,%r25
.L307:
	ldo 4(%r28),%r28
.L305:
	cmpb,*=,n %r0,%r24,.L306
	ldw 0(%r28),%r31
	cmpb,<>,n %r31,%r25,.L307
	ldo -1(%r24),%r24
.L306:
	cmpiclr,*<> 0,%r24,%r0
	ldi 0,%r28
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
	b,n .L311
.L313:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L311:
	cmpb,*=,n %r0,%r24,.L312
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L313
	ldo -1(%r24),%r24
.L312:
	ldi 0,%r28
	cmpb,*=,n %r28,%r24,.L314
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L314
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L315
	ldi 1,%r28
	ldi 0,%r28
.L315:
	extrd,u %r28,63,1,%r28
.L314:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	copy %r26,%r28
	copy %r26,%r31
	b .L319
	ldi -1,%r20
.L320:
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	stw %r19,-4(%r31)
.L319:
	ldo -1(%r24),%r24
	cmpb,*<>,n %r20,%r24,.L320
	ldo 4(%r25),%r25
	bve,n (%r2)
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
	cmpb,*= %r25,%r26,.L322
	copy %r26,%r28
	sub %r26,%r25,%r31
	depd,z %r24,61,62,%r19
	cmpb,*<<=,n %r19,%r31,.L327
	ldo -1(%r24),%r24
	shladd,l %r24,2,%r25,%r25
	shladd,l %r24,2,%r26,%r31
	b .L324
	ldo -4(%r26),%r20
.L325:
	stw %r19,0(%r31)
	ldo -4(%r25),%r25
	ldo -4(%r31),%r31
.L324:
	cmpb,*<>,n %r20,%r31,.L325
	ldw 0(%r25),%r19
.L322:
	bve,n (%r2)
.L326:
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	stw %r19,-4(%r31)
.L323:
	ldo -1(%r24),%r24
	cmpb,*<>,n %r20,%r24,.L326
	ldo 4(%r25),%r25
	b,n .L322
.L327:
	copy %r26,%r31
	b .L323
	ldi -1,%r20
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
	copy %r26,%r31
	b .L329
	ldi -1,%r19
.L330:
	stw %r25,-4(%r31)
.L329:
	ldo -1(%r24),%r24
	cmpb,*<>,n %r19,%r24,.L330
	ldo 4(%r31),%r31
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
	cmpb,*<<= %r25,%r26,.L332
	add,l %r26,%r24,%r28
	b .L333
	add,l %r25,%r24,%r25
.L334:
	stb,mb %r31,-1(%r25)
.L333:
	cmpb,*<>,n %r26,%r28,.L334
	ldb,mb -1(%r28),%r31
.L331:
	bve,n (%r2)
.L332:
	cmpb,*= %r25,%r26,.L331
	add,l %r25,%r24,%r24
	b .L336
	copy %r26,%r28
.L337:
	ldo 1(%r25),%r25
	ldb -1(%r28),%r31
	stb %r31,-1(%r25)
.L336:
	cmpb,*<>,n %r24,%r25,.L337
	ldo 1(%r28),%r28
	b,n .L331
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
	extrd,s %r25,63,32,%r25
	mtsarcm %r25
	depd,z %r26,%sar,64,%r28
	subi 64,%r25,%r25
	mtsar %r25
	shrpd %r0,%r26,%sar,%r26
	bve (%r2)
	or %r26,%r28,%r28
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
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r25,%r25
	extrd,u %r25,63,32,%r25
	mtsarcm %r25
	depd,z %r26,%sar,64,%r26
	bve (%r2)
	or %r26,%r28,%r28
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
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	subi 16,%r25,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r26,%r28,%r28
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
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	ldo 15(%r25),%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	or %r26,%r28,%r28
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
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	subi 8,%r25,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r26,%r28,%r28
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
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	ldo 23(%r25),%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	or %r26,%r28,%r28
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
	depdi,z -1,55,8,%r31
	and %r31,%r26,%r31
	extrd,u %r31,55,56,%r31
	extrw,u %r26,31,8,%r28
	depw,z %r28,23,24,%r28
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
	extrd,u %r26,32+8-1,8,%r20
	ldil L'16711680,%r31
	and %r26,%r31,%r31
	extrd,u %r31,55,56,%r31
	depdi,z -1,55,8,%r19
	and %r26,%r19,%r19
	depw,z %r19,23,24,%r19
	depw,z %r26,7,8,%r28
	or %r28,%r19,%r28
	or %r28,%r20,%r28
	or %r28,%r31,%r28
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
	extrd,u %r26,7,8,%r28
	depdi,z -1,15,8,%r31
	and %r26,%r31,%r31
	extrd,u %r31,23,24,%r31
	or %r31,%r28,%r31
	depdi,z -1,23,8,%r28
	and %r26,%r28,%r28
	extrd,u %r28,39,40,%r28
	or %r31,%r28,%r31
	depdi,z -1,31,8,%r28
	and %r26,%r28,%r28
	extrd,u %r28,55,56,%r28
	or %r31,%r28,%r31
	depdi,z -1,39,8,%r28
	and %r26,%r28,%r28
	depd,z %r28,55,56,%r28
	or %r31,%r28,%r31
	ldil L'16711680,%r28
	and %r26,%r28,%r28
	depd,z %r28,39,40,%r28
	or %r31,%r28,%r31
	depdi,z -1,55,8,%r28
	and %r26,%r28,%r28
	depd,z %r28,23,24,%r28
	or %r31,%r28,%r28
	depd,z %r26,7,8,%r26
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
	ldi 0,%r28
	ldi 32,%r19
	extrd,u %r26,63,32,%r26
.L352:
	cmpb,= %r19,%r28,.L356
	mtsar %r28
	shrpw %r0,%r26,%sar,%r31
	extrd,u %r31,63,1,%r31
	cmpb,*<> %r0,%r31,.L357
	ldo 1(%r28),%r28
	b .L352
	extrd,u %r28,63,32,%r28
.L357:
	extrd,s %r28,63,32,%r28
.L354:
	bve,n (%r2)
.L356:
	b .L354
	ldi 0,%r28
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
	cmpib,= 0,%r26,.L362
	extrd,s %r26,63,32,%r31
	b .L360
	ldi 1,%r28
.L361:
	extrd,s %r31,63,32,%r31
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L360:
	extrd,u %r31,63,1,%r19
	cmpb,*=,n %r0,%r19,.L361
	extrw,s %r31,30,31,%r31
.L359:
	bve,n (%r2)
.L362:
	b .L359
	ldi 0,%r28
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
	b .L364
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b .L364
	ldi 1,%r28
	ldi 0,%r28
.L364:
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
	b .L370
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b .L370
	ldi 1,%r28
	ldi 0,%r28
.L370:
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
	.CALLINFO FRAME=144,CALLS,SAVE_RP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	std,ma %r6,144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	copy %r26,%r5
	copy %r25,%r6
	addil LT'.LC12,%r27
	ldd RT'.LC12(%r1),%r28
	ldd 0(%r28),%r21
	ldd 8(%r28),%r22
	copy %r21,%r24
	copy %r22,%r23
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r31
	cmpb,*> %r0,%r31,.L376
	ldi 1,%r28
	addil LT'.LC13,%r27
	ldd RT'.LC13(%r1),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
	copy %r19,%r24
	copy %r20,%r23
	copy %r5,%r26
	ldo -48(%r30),%r29
	b,l __gttf2,%r2
	copy %r6,%r25
	cmpiclr,*>= 0,%r28,%r28
	ldi 1,%r28
.L376:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	bve (%r2)
	ldd,mb -144(%r30),%r6
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
	copy %r28,%r19
	std %r19,0(%r3)
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
	.word	1056964608
	.align 4
.LC17:
	.word	1073741824
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
	b .L383
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr4R,%fr22R
	ftest
	b,n .L383
	cmpib,> 0,%r25,.L388
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L386
	fldw 0(%r28),%fr22R
.L388:
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L386
	fldw 0(%r28),%fr22R
.L389:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L383
	extrd,s %r28,63,32,%r25
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L386:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L389
	extrw,u %r25,0,1,%r28
	b .L389
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L383:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
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
	.align 8
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L391
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr4,%fr22
	ftest
	b,n .L391
	cmpib,> 0,%r25,.L396
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L394
	fldd 0(%r28),%fr22
.L396:
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L394
	fldd 0(%r28),%fr22
.L397:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L391
	extrd,s %r28,63,32,%r25
	fmpy,dbl %fr22,%fr22,%fr22
.L394:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L397
	extrw,u %r25,0,1,%r28
	b .L397
	fmpy,dbl %fr4,%fr22,%fr4
.L391:
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata.cst16
	.align 16
.LC24:
	.word	1073610752
	.word	0
	.word	0
	.word	0
	.align 16
.LC25:
	.word	1073741824
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
	copy %r26,%r7
	copy %r25,%r8
	extrd,s %r24,63,32,%r3
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L399
	copy %r4,%r27
	copy %r7,%r24
	copy %r8,%r23
	copy %r7,%r26
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l __addtf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r24
	copy %r29,%r23
	copy %r7,%r26
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L399
	copy %r4,%r27
	cmpib,> 0,%r3,.L406
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r5
	ldd 8(%r28),%r6
.L401:
	b .L403
	ldo -48(%r30),%r9
.L406:
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r5
	b .L401
	ldd 8(%r28),%r6
.L402:
	extrw,u %r3,0,1,%r28
.L407:
	add,l %r28,%r3,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L399
	extrd,s %r28,63,32,%r3
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	copy %r9,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r5
	copy %r29,%r6
.L403:
	extrd,u %r3,63,1,%r28
	cmpb,*= %r0,%r28,.L407
	extrw,u %r3,0,1,%r28
	copy %r5,%r24
	copy %r6,%r23
	copy %r7,%r26
	copy %r8,%r25
	copy %r9,%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r7
	b .L402
	copy %r29,%r8
.L399:
	copy %r7,%r28
	copy %r8,%r29
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
	copy %r26,%r28
	add,l %r26,%r24,%r24
	b .L409
	copy %r26,%r31
.L410:
	ldb -1(%r25),%r20
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	xor %r19,%r20,%r19
	stb %r19,-1(%r31)
.L409:
	cmpb,*<>,n %r24,%r31,.L410
	ldo 1(%r25),%r25
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
	b .L412
	add,l %r6,%r28,%r28
.L414:
	ldo 1(%r28),%r28
	ldo -1(%r3),%r3
.L412:
	cmpb,*=,n %r0,%r3,.L413
	ldb 0(%r5),%r31
	stb %r31,0(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L414
	ldo 1(%r5),%r5
.L413:
	cmpclr,*<> %r0,%r3,%r0
	stb %r0,0(%r28)
.L415:
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
.L417:
	cmpb,*= %r25,%r28,.L418
	add,l %r26,%r28,%r31
	ldb 0(%r31),%r31
	cmpb,*<>,n %r0,%r31,.L417
	ldo 1(%r28),%r28
.L418:
	bve,n (%r2)
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
.L421:
	ldb 0(%r26),%r28
	cmpb,*=,n %r0,%r28,.L422
	copy %r25,%r31
	ldb 0(%r31),%r19
.L428:
	cmpb,*= %r0,%r19,.L427
	ldo 1(%r31),%r31
	ldb -1(%r31),%r20
	extrd,s %r20,63,8,%r20
	ldb 0(%r26),%r19
	extrd,s %r19,63,8,%r19
	cmpb,<>,n %r19,%r20,.L428
	ldb 0(%r31),%r19
	copy %r26,%r28
.L422:
	bve,n (%r2)
.L427:
	b .L421
	ldo 1(%r26),%r26
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
	b .L431
	ldi 0,%r28
.L430:
	ldo 1(%r26),%r26
.L435:
	ldb -1(%r26),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L434
.L431:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r31,%r25,.L430
	copy %r26,%r28
	b .L435
	ldo 1(%r26),%r26
.L434:
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
	cmpb,*= %r0,%r28,.L440
	copy %r28,%r7
	ldb 0(%r6),%r8
	extrd,s %r8,63,8,%r8
	ldo -48(%r30),%r5
.L438:
	copy %r8,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strchr,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L442
	copy %r28,%r3
	copy %r7,%r24
	copy %r6,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strncmp,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L441
	copy %r4,%r27
	b .L438
	ldo 1(%r3),%r3
.L442:
	b .L437
	ldi 0,%r28
.L440:
	copy %r3,%r28
.L437:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r8
.L441:
	b .L437
	copy %r3,%r28
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
	b,n .L452
	fcmp,dbl,!> %fr4,%fr0
.L456:
	ftest
	b,n .L453
	b,n .L447
.L453:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L446
.L447:
	bve,n (%r2)
.L452:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L446
	b .L456
	fcmp,dbl,!> %fr4,%fr0
.L446:
	b .L447
	fneg,dbl %fr4,%fr4
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 8
.globl memmem
	.type	memmem, @function
memmem:
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
	copy %r26,%r3
	copy %r24,%r5
	sub %r25,%r23,%r6
	cmpb,*= %r0,%r23,.L463
	add,l %r26,%r6,%r6
	cmpb,*>> %r23,%r25,.L459
	ldi 1,%r28
	ldi 0,%r28
.L459:
	extrd,u %r28,63,8,%r28
	cmpb,*<>,n %r0,%r28,.L464
	ldo 1(%r5),%r9
	ldo -1(%r23),%r7
	b .L460
	ldo -48(%r30),%r8
.L461:
	ldo 1(%r3),%r3
.L460:
	cmpb,*<<,n %r6,%r3,.L466
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldb 0(%r5),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r28,%r31,.L460
	ldo 1(%r3),%r3
	copy %r7,%r24
	copy %r9,%r25
	ldo 1(%r3),%r26
	copy %r8,%r29
	b,l memcmp,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L461
	copy %r4,%r27
	b .L458
	copy %r3,%r28
.L466:
	ldi 0,%r28
.L458:
	ldd -192(%r30),%r2
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r9
.L463:
	b .L458
	copy %r26,%r28
.L464:
	b .L458
	ldi 0,%r28
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
	b,n .L483
	ldi 0,%r19
.L469:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L488
	ldi 0,%r28
	b .L487
	ldi 1,%r28
.L488:
	ldd RT'.LC28(%r1),%r31
	fldd 0(%r31),%fr23
	b .L471
	addil LT'.LC29,%r27
.L483:
	fneg,dbl %fr4,%fr4
	b .L469
	ldi 1,%r19
.L473:
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
.L471:
	fcmp,dbl,!>= %fr4,%fr23
	ftest
	b,n .L473
.L474:
	cmpb,*= %r0,%r19,.L479
	stw %r28,0(%r25)
	fneg,dbl %fr4,%fr4
.L479:
	bve,n (%r2)
.L487:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L475
	ldi 0,%r28
.L475:
	extrd,u %r28,63,8,%r28
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L476
	ldi 1,%r31
	ldi 0,%r31
.L476:
	and %r28,%r31,%r28
	cmpb,*= %r0,%r28,.L474
	nop
	ldi 0,%r28
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r31
	b .L477
	fldd 0(%r31),%fr22
.L478:
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	fadd,dbl %fr4,%fr4,%fr4
.L477:
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L478
	b,n .L474
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
	b .L490
	ldi 0,%r28
.L492:
	ldi 0,%r31
	cmpclr,*= %r31,%r19,%r0
	copy %r25,%r31
	add,l %r28,%r31,%r28
	depd,z %r25,62,63,%r25
	extrd,u %r26,62,63,%r26
.L490:
	cmpb,*<> %r0,%r26,.L492
	extrd,u %r26,63,1,%r19
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
	extrd,u %r25,63,32,%r25
	ldi 1,%r31
	ldi 1,%r21
	b .L494
	ldi 0,%r22
.L495:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0,1,%r19
	and %r19,%r20,%r19
	cmpiclr,<> 0,%r19,%r0
	b,n .L504
	cmpib,>,n 0,%r25,.L505
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
.L494:
	cmpb,>> %r28,%r25,.L495
	copy %r21,%r20
	b .L495
	copy %r22,%r20
.L504:
	b .L497
	ldi 0,%r19
.L505:
	b .L497
	ldi 0,%r19
.L500:
	extrd,u %r31,62,63,%r31
.L507:
	extrd,u %r25,62,63,%r25
.L497:
	cmpclr,*<> %r0,%r31,%r0
	b,n .L506
	cmpb,>>,n %r25,%r28,.L507
	extrd,u %r31,62,63,%r31
	sub %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
	b .L500
	or %r19,%r31,%r19
.L506:
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
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
	extrd,s %r26,63,8,%r26
	cmpiclr,<= 0,%r26,%r0
	b,n .L512
.L509:
	cmpb,*=,n %r0,%r26,.L511
	depw,z %r26,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
.L510:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L512:
	uaddcm %r0,%r26,%r26
	b .L509
	extrd,s %r26,63,8,%r26
.L511:
	b .L510
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
	uaddcm %r0,%r26,%r28
	cmpclr,*< %r28,%r26,%r0
	copy %r28,%r26
	cmpb,*= %r0,%r26,.L516
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L515:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L516:
	b .L515
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
	extrd,u %r26,63,32,%r26
	extrd,u %r25,63,32,%r25
	b .L518
	ldi 0,%r28
.L519:
	extrd,u %r26,62,63,%r26
.L522:
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
.L518:
	cmpb,*= %r0,%r26,.L521
	extrd,u %r26,63,1,%r31
	cmpb,*=,n %r0,%r31,.L522
	extrd,u %r26,62,63,%r26
	add,l %r28,%r25,%r28
	b .L519
	extrd,u %r28,63,32,%r28
.L521:
	bve,n (%r2)
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
	extrd,u %r24,63,32,%r19
	extrd,u %r24,32+29-1,29,%r21
	depwi 0,31,3,%r24
	cmpb,*>> %r25,%r26,.L524
	extrd,u %r24,63,32,%r24
	add,l %r25,%r19,%r28
	cmpclr,*>> %r26,%r28,%r0
	b,n .L525
.L524:
	copy %r25,%r28
	copy %r26,%r31
	b .L526
	shladd,l %r21,3,%r25,%r21
.L527:
	std %r20,0(%r31)
	ldo 8(%r28),%r28
	ldo 8(%r31),%r31
.L526:
	cmpb,*<>,n %r21,%r28,.L527
	ldd 0(%r28),%r20
	b,n .L528
.L529:
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	stb %r31,0(%r28)
	ldo 1(%r24),%r24
.L528:
	cmpb,<< %r24,%r19,.L529
	add,l %r25,%r24,%r28
.L523:
	bve,n (%r2)
.L531:
	add,l %r25,%r19,%r28
	add,l %r26,%r19,%r31
	ldb 0(%r28),%r28
	stb %r28,0(%r31)
.L525:
	ldo -1(%r19),%r28
	cmpib,<> -1,%r28,.L531
	extrd,u %r28,63,32,%r19
	b,n .L523
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
	extrd,u %r24,63,32,%r19
	cmpb,*>> %r25,%r26,.L534
	extrd,u %r24,32+31-1,31,%r21
	add,l %r25,%r19,%r28
	cmpclr,*>> %r26,%r28,%r0
	b,n .L535
.L534:
	copy %r25,%r28
	copy %r26,%r31
	b .L536
	shladd,l %r21,1,%r25,%r21
.L537:
	sth %r20,0(%r31)
	ldo 2(%r28),%r28
	ldo 2(%r31),%r31
.L536:
	cmpb,*<>,n %r21,%r28,.L537
	ldh 0(%r28),%r20
	extrd,u %r19,63,1,%r19
	cmpb,*= %r0,%r19,.L533
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L533:
	bve,n (%r2)
.L539:
	add,l %r25,%r19,%r28
	add,l %r26,%r19,%r31
	ldb 0(%r28),%r28
	stb %r28,0(%r31)
.L535:
	ldo -1(%r19),%r28
	cmpib,<> -1,%r28,.L539
	extrd,u %r28,63,32,%r19
	b,n .L533
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
	extrd,u %r24,63,32,%r19
	extrd,u %r24,32+30-1,30,%r21
	depwi 0,31,2,%r24
	cmpb,*>> %r25,%r26,.L542
	extrd,u %r24,63,32,%r24
	add,l %r25,%r19,%r28
	cmpclr,*>> %r26,%r28,%r0
	b,n .L543
.L542:
	copy %r25,%r28
	copy %r26,%r31
	b .L544
	shladd,l %r21,2,%r25,%r21
.L545:
	stw %r20,0(%r31)
	ldo 4(%r28),%r28
	ldo 4(%r31),%r31
.L544:
	cmpb,*<>,n %r21,%r28,.L545
	ldw 0(%r28),%r20
	b,n .L546
.L547:
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	stb %r31,0(%r28)
	ldo 1(%r24),%r24
.L546:
	cmpb,<< %r24,%r19,.L547
	add,l %r25,%r24,%r28
.L541:
	bve,n (%r2)
.L549:
	add,l %r25,%r19,%r28
	add,l %r26,%r19,%r31
	ldb 0(%r28),%r28
	stb %r28,0(%r31)
.L543:
	ldo -1(%r19),%r28
	cmpib,<> -1,%r28,.L549
	extrd,u %r28,63,32,%r19
	b,n .L541
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
	ldi 0,%r28
	ldi 16,%r19
	extrd,u %r26,63,16,%r26
.L558:
	cmpb,= %r19,%r28,.L559
	ldo 16(%r28),%r31
	mtsar %r31
	bb,<,n %r26,%sar,.L559
	ldo 1(%r28),%r28
	b .L558
	extrd,s %r28,63,32,%r28
.L559:
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
	ldi 0,%r28
	ldi 16,%r31
	extrd,u %r26,63,16,%r26
.L562:
	cmpb,= %r31,%r28,.L563
	mtsarcm %r28
	bb,<,n %r26,%sar,.L563
	ldo 1(%r28),%r28
	b .L562
	extrd,s %r28,63,32,%r28
.L563:
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
	b .L569
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
.L568:
	bve (%r2)
	ldo -64(%r30),%r30
.L569:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	b .L568
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
	ldi 0,%r28
	copy %r28,%r31
	ldi 16,%r19
	b .L572
	extrd,u %r26,63,16,%r26
.L573:
	ldo 1(%r31),%r31
.L576:
	extrd,s %r31,63,32,%r31
.L572:
	cmpb,= %r19,%r31,.L575
	mtsarcm %r31
	bb,>=,n %r26,%sar,.L576
	ldo 1(%r31),%r31
	ldo 1(%r28),%r28
	b .L573
	extrd,s %r28,63,32,%r28
.L575:
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
	ldi 0,%r28
	copy %r28,%r31
	ldi 16,%r19
	b .L578
	extrd,u %r26,63,16,%r26
.L579:
	ldo 1(%r31),%r31
.L582:
	extrd,s %r31,63,32,%r31
.L578:
	cmpb,= %r19,%r31,.L581
	mtsarcm %r31
	bb,>=,n %r26,%sar,.L582
	ldo 1(%r31),%r31
	ldo 1(%r28),%r28
	b .L579
	extrd,s %r28,63,32,%r28
.L581:
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
	extrd,u %r26,63,32,%r26
	extrd,u %r25,63,32,%r25
	b .L584
	ldi 0,%r28
.L585:
	extrd,u %r26,62,63,%r26
.L588:
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
.L584:
	cmpb,*= %r0,%r26,.L587
	extrd,u %r26,63,1,%r31
	cmpb,*=,n %r0,%r31,.L588
	extrd,u %r26,62,63,%r26
	add,l %r28,%r25,%r28
	b .L585
	extrd,u %r28,63,32,%r28
.L587:
	bve,n (%r2)
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
	cmpib,= 0,%r26,.L594
	extrd,u %r25,63,32,%r25
	b .L591
	ldi 0,%r28
.L592:
	add,l %r31,%r31,%r31
.L595:
	extrd,u %r31,63,32,%r31
	extrd,u %r25,62,63,%r25
.L591:
	cmpb,*= %r0,%r25,.L590
	extrd,u %r25,63,1,%r19
	cmpb,*=,n %r0,%r19,.L595
	add,l %r31,%r31,%r31
	add,l %r28,%r31,%r28
	b .L592
	extrd,u %r28,63,32,%r28
.L594:
	ldi 0,%r28
.L590:
	bve,n (%r2)
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
	extrd,u %r25,63,32,%r25
	extrd,s %r24,63,32,%r24
	ldi 1,%r31
	ldi 1,%r21
	b .L597
	ldi 0,%r22
.L598:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0,1,%r19
	and %r19,%r20,%r19
	cmpiclr,<> 0,%r19,%r0
	b,n .L607
	cmpib,>,n 0,%r25,.L608
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
.L597:
	cmpb,>> %r28,%r25,.L598
	copy %r21,%r20
	b .L598
	copy %r22,%r20
.L607:
	b .L600
	ldi 0,%r19
.L608:
	b .L600
	ldi 0,%r19
.L603:
	extrd,u %r31,62,63,%r31
.L610:
	extrd,u %r25,62,63,%r25
.L600:
	cmpclr,*<> %r0,%r31,%r0
	b,n .L609
	cmpb,>>,n %r25,%r28,.L610
	extrd,u %r31,62,63,%r31
	sub %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
	b .L603
	or %r19,%r31,%r19
.L609:
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
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
	b .L615
	ldi -1,%r28
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b,n .L614
	ldi 0,%r28
.L612:
.L615:
	bve,n (%r2)
.L614:
	b .L612
	ldi 1,%r28
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
	b .L620
	ldi -1,%r28
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b,n .L619
	ldi 0,%r28
.L617:
.L620:
	bve,n (%r2)
.L619:
	b .L617
	ldi 1,%r28
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
	extrd,s %r25,63,32,%r31
	cmpib,> 0,%r25,.L632
	ldi 0,%r29
.L624:
	ldi 0,%r22
	copy %r22,%r19
	ldi 1,%r24
	ldi 31,%r23
	b .L625
	ldi 0,%r25
.L632:
	sub %r0,%r31,%r31
	extrd,s %r31,63,32,%r31
	b .L624
	ldi 1,%r29
.L626:
	add,l %r26,%r26,%r26
.L634:
	extrd,s %r26,63,32,%r26
	extrw,s %r31,30,31,%r31
	extrd,s %r31,63,32,%r31
	ldo 1(%r19),%r19
	extrd,s %r19,63,8,%r19
.L625:
	or,>= %r0,%r31,%r28
	subi 0,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	extrd,u %r28,63,8,%r28
	extrd,u %r19,63,8,%r20
	cmpb,>>= %r23,%r20,.L627
	copy %r24,%r21
	copy %r25,%r21
.L627:
	and %r28,%r21,%r28
	cmpb,*=,n %r0,%r28,.L633
	extrd,u %r31,63,1,%r28
	cmpb,*=,n %r0,%r28,.L634
	add,l %r26,%r26,%r26
	add,l %r22,%r26,%r22
	b .L626
	extrd,s %r22,63,32,%r22
.L633:
	cmpb,*= %r0,%r29,.L629
	copy %r22,%r28
	sub %r0,%r22,%r22
	extrd,s %r22,63,32,%r28
.L629:
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
	b,n .L640
.L636:
	cmpclr,*<= %r0,%r25,%r0
	b,n .L641
.L637:
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
.L640:
	sub %r0,%r26,%r26
	b .L636
	ldi 1,%r3
.L641:
	sub %r0,%r25,%r25
	or,>= %r0,%r3,%r3
	subi 0,%r3,%r3
	ldo -1(%r3),%r3
	extrw,u %r3,0,1,%r3
	b .L637
	extrd,u %r3,63,1,%r3
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
	b,n .L647
.L643:
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
.L647:
	sub %r0,%r26,%r26
	b .L643
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
	ldi 1,%r31
	ldi 1,%r21
	b .L649
	ldi 0,%r22
.L650:
	extrw,s,>= %r31,31,16,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrd,u %r19,48+1-1,1,%r19
	and %r19,%r20,%r19
	cmpb,*=,n %r0,%r19,.L652
	extrd,s %r25,63,16,%r19
	cmpib,>,n 0,%r19,.L659
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,16,%r31
.L649:
	cmpb,>> %r28,%r25,.L650
	copy %r21,%r20
	b .L650
	copy %r22,%r20
.L659:
	b .L652
	ldi 0,%r19
.L655:
	extrd,u %r31,62,63,%r31
.L661:
	extrd,u %r25,62,63,%r25
.L652:
	cmpclr,*<> %r0,%r31,%r0
	b,n .L660
	cmpb,>>,n %r25,%r28,.L661
	extrd,u %r31,62,63,%r31
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	b .L655
	or %r19,%r31,%r19
.L660:
	cmpiclr,*<> 0,%r24,%r0
	copy %r19,%r28
	bve,n (%r2)
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
	ldi 1,%r19
	ldi 1,%r21
	ldi 0,%r23
	b .L663
	depdi,z 1,32,4,%r22
.L664:
	or,*>= %r0,%r19,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,0,1,%r31
	and %r31,%r20,%r31
	cmpb,*=,n %r0,%r31,.L666
	and %r25,%r22,%r31
	cmpb,*<>,n %r0,%r31,.L673
	depd,z %r25,62,63,%r25
	depd,z %r19,62,63,%r19
.L663:
	cmpb,*>> %r28,%r25,.L664
	copy %r21,%r20
	b .L664
	copy %r23,%r20
.L673:
	b .L666
	ldi 0,%r31
.L669:
	extrd,u %r19,62,63,%r19
.L675:
	extrd,u %r25,62,63,%r25
.L666:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L674
	cmpb,*>>,n %r25,%r28,.L675
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	b .L669
	or %r31,%r19,%r31
.L674:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
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
	bb,>= %r25,26,.L677
	extrd,s %r25,63,32,%r19
	ldi 0,%r28
	depd %r28,32+32-1,32,%r28
	extrd,u %r26,63,32,%r26
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	depd %r26,0+32-1,32,%r28
.L679:
	bve,n (%r2)
.L677:
	cmpb,*= %r0,%r19,.L680
	extrd,u %r26,63,32,%r31
	mtsarcm %r19
	depw,z %r31,%sar,32,%r20
	extrd,u %r20,63,32,%r20
	ldi 0,%r28
	depd %r20,32+32-1,32,%r28
	extrd,s %r26,0+32-1,32,%r26
	depw,z %r26,%sar,32,%r26
	subi 32,%r19,%r19
	mtsar %r19
	shrpw %r0,%r31,%sar,%r31
	or %r31,%r26,%r31
	extrd,s %r31,63,32,%r31
	b .L679
	depd %r31,0+32-1,32,%r28
.L680:
	b .L679
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
	extrd,s %r24,63,32,%r31
	copy %r26,%r19
	bb,>= %r24,25,.L682
	copy %r25,%r20
	ldi 0,%r28
	copy %r28,%r29
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	depd,z %r25,%sar,64,%r28
.L683:
	copy %r28,%r19
	copy %r29,%r20
.L684:
	copy %r19,%r28
	bve (%r2)
	copy %r20,%r29
.L682:
	cmpb,*= %r0,%r31,.L684
	mtsarcm %r31
	depd,z %r25,%sar,64,%r29
	depd,z %r26,%sar,64,%r19
	subi 64,%r31,%r31
	mtsar %r31
	shrpd %r0,%r25,%sar,%r31
	b .L683
	or %r31,%r19,%r28
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
	bb,>= %r25,26,.L687
	extrd,s %r25,63,32,%r19
	extrd,s %r26,0+32-1,32,%r31
	extrw,s %r31,0,1,%r31
	extrd,s %r31,63,32,%r31
	ldi 0,%r28
	depd %r31,0+32-1,32,%r28
	extrd,s %r26,0+32-1,32,%r26
	subi 63,%r25,%r25
	mtsar %r25
	extrw,s %r26,%sar,32,%r26
	extrd,u %r26,63,32,%r26
	depd %r26,32+32-1,32,%r28
.L689:
	bve,n (%r2)
.L687:
	cmpb,*=,n %r0,%r19,.L690
	extrd,s %r26,0+32-1,32,%r28
	mtsarcm %r19
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r31
	ldi 0,%r28
	depd %r31,0+32-1,32,%r28
	extrd,s %r26,0+32-1,32,%r31
	ldo -1(%r19),%r20
	mtsar %r20
	depw,z %r31,%sar,32,%r31
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	or %r31,%r26,%r31
	extrd,u %r31,63,32,%r31
	b .L689
	depd %r31,32+32-1,32,%r28
.L690:
	b .L689
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
	extrd,s %r24,63,32,%r31
	copy %r26,%r19
	bb,>= %r24,25,.L692
	copy %r25,%r20
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	extrd,s %r26,%sar,64,%r29
.L693:
	copy %r28,%r19
	copy %r29,%r20
.L694:
	copy %r19,%r28
	bve (%r2)
	copy %r20,%r29
.L692:
	cmpb,*= %r0,%r31,.L694
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r21
	extrd,s %r21,63,32,%r21
	mtsarcm %r21
	depd,z %r26,%sar,64,%r19
	mtsar %r31
	shrpd %r0,%r25,%sar,%r31
	b .L693
	or %r19,%r31,%r29
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
	extrd,u %r26,7,8,%r24
	extrd,u %r26,23,24,%r23
	depdi,z -1,55,8,%r28
	and %r23,%r28,%r23
	extrd,u %r26,39,40,%r22
	ldil L'16711680,%r28
	and %r22,%r28,%r22
	extrd,u %r26,55,56,%r21
	depdi,z -1,39,8,%r28
	and %r21,%r28,%r21
	depd,z %r26,55,56,%r20
	depdi,z -1,31,8,%r28
	and %r20,%r28,%r20
	depd,z %r26,39,40,%r19
	depdi,z -1,23,8,%r28
	and %r19,%r28,%r19
	depd,z %r26,23,24,%r31
	depdi,z -1,15,8,%r28
	and %r31,%r28,%r31
	depd,z %r26,7,8,%r28
	or %r28,%r24,%r28
	or %r28,%r23,%r28
	or %r28,%r22,%r28
	or %r28,%r21,%r28
	or %r28,%r20,%r28
	or %r28,%r19,%r28
	bve (%r2)
	or %r28,%r31,%r28
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
	extrw,u %r26,7,8,%r20
	extrw,u %r26,23,24,%r19
	depwi,z -1,23,8,%r28
	and %r19,%r28,%r19
	depw,z %r26,23,24,%r31
	ldil L'16711680,%r28
	and %r31,%r28,%r31
	depw,z %r26,7,8,%r28
	or %r28,%r20,%r28
	or %r28,%r19,%r28
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
	.CALLINFO FRAME=64,NO_CALLS
	.ENTRY
	ldo 64(%r30),%r30
	extrd,u %r26,63,32,%r31
	depwi,z -1,31,16,%r28
	cmpb,<< %r28,%r26,.L699
	ldi 0,%r19
	ldi 16,%r19
.L699:
	subi 16,%r19,%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r31
	depwi,z -1,23,8,%r28
	and %r31,%r28,%r28
	extrd,u %r28,63,32,%r28
	cmpiclr,*<> 0,%r28,%r28
	ldi 1,%r28
	depd,z %r28,60,61,%r28
	subi 8,%r28,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 240,%r19
	and %r31,%r19,%r19
	extrd,u %r19,63,32,%r19
	cmpiclr,*<> 0,%r19,%r19
	ldi 1,%r19
	depd,z %r19,61,62,%r19
	subi 4,%r19,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 12,%r19
	and %r31,%r19,%r19
	extrd,u %r19,63,32,%r19
	cmpiclr,*<> 0,%r19,%r19
	ldi 1,%r19
	depd,z %r19,62,63,%r19
	subi 2,%r19,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 2,%r19
	and %r31,%r19,%r19
	subi 2,%r31,%r31
	cmpiclr,<> 0,%r19,%r19
	ldi 1,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr22
	std %r31,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r28,%r19,%r28
	extrd,s %r28,63,32,%r28
	bve (%r2)
	ldo -64(%r30),%r30
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
	copy %r26,%r21
	or,*>= %r0,%r26,%r3
	subi 0,%r3,%r3
	ldo -1(%r3),%r3
	extrd,s %r3,0,1,%r3
	extrd,s %r3,63,32,%r26
	andcm %r21,%r26,%r28
	and %r26,%r25,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	or %r28,%r26,%r26
	ldi 64,%r31
	and %r3,%r31,%r3
	add,l %r28,%r3,%r28
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
	b,n .L710
	cmpclr,>= %r28,%r31,%r0
	b,n .L711
	cmpclr,<<= %r25,%r26,%r0
	b,n .L712
	cmpb,<<,n %r25,%r26,.L713
	ldi 1,%r28
	b,n .L709
.L710:
	ldi 0,%r28
.L709:
	bve,n (%r2)
.L711:
	b .L709
	ldi 2,%r28
.L712:
	b .L709
	ldi 0,%r28
.L713:
	b .L709
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
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	cmpb,*< %r26,%r24,.L721
	ldi 0,%r28
	cmpb,*> %r26,%r24,.L721
	ldi 2,%r28
	cmpb,*<< %r25,%r23,.L721
	ldi 0,%r28
	cmpclr,*<<= %r25,%r23,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L716:
.L721:
	ldd -16(%r30),%r2
	bve,n (%r2)
	b .L716
	ldi 2,%r28
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
	extrd,u %r26,63,16,%r31
	cmpiclr,*<> 0,%r31,%r31
	ldi 1,%r31
	depd,z %r31,59,60,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,8,%r28
	cmpiclr,*<> 0,%r28,%r28
	ldi 1,%r28
	depd,z %r28,60,61,%r28
	mtsar %r28
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	extrd,u %r26,63,4,%r31
	cmpiclr,*<> 0,%r31,%r31
	ldi 1,%r31
	depd,z %r31,61,62,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	extrd,u %r26,63,2,%r31
	cmpiclr,*<> 0,%r31,%r31
	ldi 1,%r31
	depd,z %r31,62,63,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,2,%r26
	add,l %r28,%r31,%r28
	uaddcm %r0,%r26,%r31
	extrw,u %r26,30,31,%r26
	subi 2,%r26,%r26
	extrw,s %r31,31+1-1,1,%r31
	and %r31,%r26,%r31
	add,l %r28,%r31,%r28
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
	copy %r26,%r21
	or,*>= %r0,%r25,%r3
	subi 0,%r3,%r3
	ldo -1(%r3),%r3
	extrd,s %r3,0,1,%r3
	extrd,s %r3,63,32,%r26
	and %r26,%r21,%r19
	andcm %r25,%r26,%r26
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	or %r26,%r19,%r26
	ldi 64,%r31
	and %r3,%r31,%r3
	add,l %r28,%r3,%r28
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
	copy %r26,%r19
	cmpb,*<> %r0,%r25,.L733
	copy %r25,%r26
	ldi 0,%r28
	cmpb,*= %r28,%r19,.L736
	ldd -144(%r30),%r2
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	copy %r19,%r26
	ldo 65(%r28),%r28
	b .L734
	extrd,s %r28,63,32,%r28
.L733:
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L734:
	ldd -144(%r30),%r2
.L736:
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
	bb,>= %r25,26,.L738
	extrd,s %r25,63,32,%r19
	ldi 0,%r28
	depd %r28,0+32-1,32,%r28
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	depd %r26,32+32-1,32,%r28
.L740:
	bve,n (%r2)
.L738:
	cmpb,*= %r0,%r19,.L741
	extrd,u %r26,0+32-1,32,%r31
	mtsar %r19
	shrpw %r0,%r31,%sar,%r31
	extrd,u %r31,63,32,%r31
	ldi 0,%r28
	depd %r31,0+32-1,32,%r28
	extrd,u %r26,0+32-1,32,%r31
	ldo -1(%r19),%r20
	mtsar %r20
	depw,z %r31,%sar,32,%r31
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	or %r31,%r26,%r31
	extrd,u %r31,63,32,%r31
	b .L740
	depd %r31,32+32-1,32,%r28
.L741:
	b .L740
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
	copy %r25,%r29
	extrd,s %r24,63,32,%r31
	copy %r26,%r19
	bb,>= %r24,25,.L743
	copy %r25,%r20
	ldi 0,%r28
	mtsar %r24
	shrpd %r0,%r26,%sar,%r29
.L744:
	copy %r28,%r19
	copy %r29,%r20
.L745:
	copy %r19,%r28
	bve (%r2)
	copy %r20,%r29
.L743:
	cmpb,*= %r0,%r31,.L745
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r21
	extrd,s %r21,63,32,%r21
	mtsarcm %r21
	depd,z %r26,%sar,64,%r19
	mtsar %r31
	shrpd %r0,%r29,%sar,%r31
	b .L744
	or %r19,%r31,%r29
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
	extrw,u %r26,31,16,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	extrw,u %r25,31,16,%r31
	std %r31,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr24
	ldi 0,%r28
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r31
	depd %r31,32+32-1,32,%r28
	extrw,u %r28,15,16,%r19
	extrd,u %r28,63,16,%r31
	depd %r31,32+32-1,32,%r28
	extrw,u %r26,15,16,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r31,%r19,%r31
	depw,z %r31,15,16,%r19
	add,l %r19,%r28,%r19
	extrd,u %r19,63,32,%r19
	depd %r19,32+32-1,32,%r28
	extrw,u %r31,15,16,%r31
	extrd,s %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	extrw,u %r28,15,16,%r19
	extrd,u %r28,63,16,%r31
	depd %r31,32+32-1,32,%r28
	extrw,u %r25,15,16,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r31,%r19,%r31
	depw,z %r31,15,16,%r19
	add,l %r19,%r28,%r19
	extrd,u %r19,63,32,%r19
	depd %r19,32+32-1,32,%r28
	extrd,s %r28,0+32-1,32,%r19
	extrw,u %r31,15,16,%r31
	add,l %r31,%r19,%r31
	extrd,s %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	extrd,s %r28,0+32-1,32,%r31
	xmpyu %fr24R,%fr23R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r26
	add,l %r26,%r31,%r26
	extrd,s %r26,63,32,%r26
	depd %r26,0+32-1,32,%r28
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
	copy %r26,%r3
	copy %r25,%r5
	extrd,u %r26,63,32,%r6
	extrd,u %r25,63,32,%r7
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __muldsi3,%r2
	copy %r6,%r26
	extrd,s %r28,0+32-1,32,%r19
	extrd,s %r3,0+32-1,32,%r3
	std %r3,-168(%r30)
	fldd -168(%r30),%fr22
	std %r7,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r31
	extrd,s %r5,0+32-1,32,%r5
	std %r5,-168(%r30)
	fldd -168(%r30),%fr22
	std %r6,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r5
	add,l %r31,%r5,%r31
	add,l %r31,%r19,%r31
	extrd,s %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
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
	extrd,u %r26,63,32,%r19
	std %r19,-56(%r30)
	fldd -56(%r30),%fr24
	extrd,u %r25,63,32,%r21
	std %r21,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,31,32,%r28
	extrd,u %r31,63,32,%r31
	extrd,u %r26,31,32,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r28,%r19,%r28
	depd,z %r28,31,32,%r21
	add,l %r21,%r31,%r20
	extrd,u %r28,31,32,%r19
	extrd,u %r20,31,32,%r28
	extrd,u %r20,63,32,%r31
	extrd,u %r25,31,32,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r21
	add,l %r28,%r21,%r28
	depd,z %r28,31,32,%r21
	add,l %r21,%r31,%r20
	extrd,u %r28,31,32,%r28
	add,l %r28,%r19,%r28
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r25
	add,l %r25,%r28,%r28
	copy %r20,%r29
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
	.CALLINFO FRAME=192,CALLS,SAVE_RP,ENTRY_GR=10
	.ENTRY
	std %r2,-16(%r30)
	ldo 192(%r30),%r30
	std %r10,-176(%r30)
	std %r9,-168(%r30)
	std %r8,-160(%r30)
	std %r7,-152(%r30)
	std %r6,-144(%r30)
	std %r5,-136(%r30)
	std %r4,-128(%r30)
	std %r3,-120(%r30)
	copy %r25,%r6
	copy %r23,%r8
	copy %r26,%r9
	copy %r24,%r3
	copy %r23,%r25
	ldo -48(%r30),%r29
	b,l __mulddi3,%r2
	copy %r6,%r26
	copy %r28,%r21
	extrd,u %r9,31,32,%r28
	extrd,u %r8,31,32,%r7
	std %r8,-184(%r30)
	fldd -184(%r30),%fr22
	std %r28,-184(%r30)
	fldd -184(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-184(%r30)
	ldd -184(%r30),%r28
	std %r7,-184(%r30)
	fldd -184(%r30),%fr22
	std %r9,-184(%r30)
	fldd -184(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-184(%r30)
	ldd -184(%r30),%r7
	std %r8,-184(%r30)
	fldd -184(%r30),%fr22
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-184(%r30)
	ldd -184(%r30),%r9
	add,l %r28,%r7,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r9,%r28
	extrd,u %r3,31,32,%r31
	extrd,u %r6,31,32,%r5
	std %r6,-184(%r30)
	fldd -184(%r30),%fr22
	std %r31,-184(%r30)
	fldd -184(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-184(%r30)
	ldd -184(%r30),%r31
	std %r5,-184(%r30)
	fldd -184(%r30),%fr22
	std %r3,-184(%r30)
	fldd -184(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-184(%r30)
	ldd -184(%r30),%r5
	std %r6,-184(%r30)
	fldd -184(%r30),%fr22
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-184(%r30)
	ldd -184(%r30),%r3
	add,l %r31,%r5,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r3,%r31
	add,l %r28,%r31,%r28
	add,l %r28,%r21,%r28
	ldd -208(%r30),%r2
	ldd -176(%r30),%r10
	ldd -168(%r30),%r9
	ldd -160(%r30),%r8
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldo -192(%r30),%r30
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
	copy %r19,%r21
	copy %r21,%r28
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
	xor %r25,%r26,%r28
	extrd,s %r28,0+32-1,32,%r31
	xor %r31,%r28,%r31
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
	extrd,u %r26,61,62,%r28
	addil LT'.LC35,%r27
	ldd RT'.LC35(%r1),%r31
	ldd 0(%r31),%r31
	and %r28,%r31,%r28
	and %r26,%r31,%r26
	add,l %r28,%r26,%r26
	extrd,u %r26,59,60,%r28
	add,l %r28,%r26,%r26
	addil LT'.LC36,%r27
	ldd RT'.LC36(%r1),%r28
	ldd 0(%r28),%r28
	and %r26,%r28,%r26
	extrd,u %r26,31,32,%r28
	add,l %r28,%r26,%r28
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
	depd,z %r26,0,1,%r31
	extrd,u %r25,62,63,%r20
	or %r31,%r20,%r20
	extrd,u %r26,62,63,%r19
	addil LT'.LC40,%r27
	ldd RT'.LC40(%r1),%r31
	ldd 0(%r31),%r31
	and %r19,%r31,%r21
	and %r20,%r31,%r22
	sub %r29,%r22,%r29
	sub,db %r28,%r21,%r28
	copy %r28,%r31
	depd,z %r31,1,2,%r31
	extrd,u %r29,61,62,%r20
	or %r31,%r20,%r20
	extrd,u %r28,61,62,%r19
	addil LT'.LC41,%r27
	ldd RT'.LC41(%r1),%r31
	ldd 0(%r31),%r31
	and %r19,%r31,%r21
	and %r20,%r31,%r22
	and %r28,%r31,%r19
	and %r29,%r31,%r20
	add %r22,%r20,%r29
	add,dc %r21,%r19,%r28
	copy %r28,%r31
	depd,z %r31,3,4,%r31
	extrd,u %r29,59,60,%r20
	or %r31,%r20,%r20
	extrd,u %r28,59,60,%r19
	add %r20,%r29,%r20
	add,dc %r19,%r28,%r19
	addil LT'.LC42,%r27
	ldd RT'.LC42(%r1),%r31
	ldd 0(%r31),%r31
	and %r19,%r31,%r28
	and %r20,%r31,%r29
	add,l %r28,%r29,%r31
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
	extrd,s %r25,63,32,%r31
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	b .L762
	fldd 0(%r28),%fr22
.L765:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L761
	extrd,s %r28,63,32,%r31
	fmpy,dbl %fr4,%fr4,%fr4
.L762:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L765
	extrw,u %r31,0,1,%r28
	b .L765
	fmpy,dbl %fr22,%fr4,%fr22
.L761:
	cmpb,*= %r0,%r25,.L763
	fcpy,dbl %fr22,%fr4
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	fldd 0(%r28),%fr4
	fdiv,dbl %fr4,%fr22,%fr4
.L763:
	bve,n (%r2)
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
	extrd,s %r25,63,32,%r31
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	b .L769
	fldw 0(%r28),%fr22R
.L772:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L768
	extrd,s %r28,63,32,%r31
	fmpy,sgl %fr4R,%fr4R,%fr4R
.L769:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L772
	extrw,u %r31,0,1,%r28
	b .L772
	fmpy,sgl %fr22R,%fr4R,%fr22R
.L768:
	cmpb,*= %r0,%r25,.L770
	fcpy,sgl %fr22R,%fr4R
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	fldw 0(%r28),%fr4R
	fdiv,sgl %fr4R,%fr22R,%fr4R
.L770:
	bve,n (%r2)
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
	b,n .L775
	cmpclr,>>= %r28,%r31,%r0
	b,n .L776
	cmpclr,<<= %r25,%r26,%r0
	b,n .L777
	cmpb,<<,n %r25,%r26,.L778
	ldi 1,%r28
	b,n .L774
.L775:
	ldi 0,%r28
.L774:
	bve,n (%r2)
.L776:
	b .L774
	ldi 2,%r28
.L777:
	b .L774
	ldi 0,%r28
.L778:
	b .L774
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
	.CALLINFO FRAME=0,NO_CALLS,SAVE_RP
	.ENTRY
	std %r2,-16(%r30)
	cmpb,*<< %r26,%r24,.L786
	ldi 0,%r28
	cmpb,*>> %r26,%r24,.L786
	ldi 2,%r28
	cmpb,*<< %r25,%r23,.L786
	ldi 0,%r28
	cmpclr,*<<= %r25,%r23,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L781:
.L786:
	ldd -16(%r30),%r2
	bve,n (%r2)
	b .L781
	ldi 2,%r28
	.EXIT
	.PROCEND
	.size	__ucmpti2, .-__ucmpti2
	.local	s.0
	.comm	s.0,7,8
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
