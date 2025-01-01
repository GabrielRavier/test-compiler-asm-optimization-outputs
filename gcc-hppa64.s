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
	cmpb,*<> %r24,%r31,.L7
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
	extrd,u %r24,63,8,%r24
	cmpb,*= %r0,%r23,.L13
	copy %r26,%r28
.L12:
	ldb 0(%r25),%r31
	cmpb,*= %r31,%r24,.L13
	stb %r31,0(%r28)
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	cmpb,*<> %r0,%r23,.L12
	ldo 1(%r28),%r28
.L13:
	ldo 1(%r28),%r28
	cmpiclr,*<> 0,%r23,%r0
	ldi 0,%r28
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
	cmpb,*= %r0,%r24,.L21
	copy %r26,%r28
.L20:
	ldb 0(%r28),%r31
	cmpb,=,n %r31,%r25,.L21
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L20
	ldo 1(%r28),%r28
.L21:
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
	copy %r25,%r31
	cmpb,*= %r0,%r24,.L29
	copy %r26,%r19
.L28:
	ldb 0(%r19),%r20
	ldb 0(%r31),%r28
	cmpb,<>,n %r28,%r20,.L29
	ldo -1(%r24),%r24
	ldo 1(%r19),%r19
	cmpb,*<> %r0,%r24,.L28
	ldo 1(%r31),%r31
.L29:
	ldi 0,%r28
	cmpb,*=,n %r28,%r24,.L31
	ldb 0(%r19),%r28
	ldb 0(%r31),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L31:
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
	cmpb,*= %r0,%r24,.L36
	copy %r26,%r28
	add,l %r26,%r24,%r24
	copy %r26,%r31
.L37:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r25),%r19
	cmpb,*<> %r24,%r31,.L37
	stb %r19,-1(%r31)
.L36:
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
.L40:
	cmpb,*= %r28,%r24,.L44
	add,l %r26,%r24,%r31
	ldb 0(%r31),%r31
	cmpb,= %r31,%r25,.L45
	ldo -1(%r24),%r19
	b .L40
	copy %r19,%r24
.L45:
	b .L41
	add,l %r26,%r24,%r28
.L44:
	ldi 0,%r28
.L41:
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
	cmpb,*= %r0,%r24,.L47
	extrd,s %r25,63,32,%r25
	add,l %r26,%r24,%r24
	copy %r26,%r31
	extrd,u %r25,63,8,%r25
	stb %r25,0(%r31)
.L50:
	ldo 1(%r31),%r31
	cmpb,*<>,n %r24,%r31,.L50
	stb %r25,0(%r31)
.L47:
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
	cmpb,*= %r0,%r19,.L52
	stb %r31,0(%r26)
	ldb,mb 1(%r25),%r31
.L55:
	stb,mb %r31,1(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L55
	ldb,mb 1(%r25),%r31
.L52:
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
	ldb 0(%r26),%r31
	cmpb,*= %r0,%r31,.L58
	extrd,u %r25,63,8,%r25
	ldb 0(%r28),%r31
.L61:
	cmpb,=,n %r31,%r25,.L58
	ldb,mb 1(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L61
	ldb 0(%r28),%r31
.L58:
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
.L67:
	extrd,s %r28,63,8,%r28
	cmpb,=,n %r28,%r25,.L65
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	cmpb,*<>,n %r0,%r28,.L67
	ldb 0(%r26),%r28
	b,n .L63
.L65:
	copy %r26,%r28
.L63:
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
	extrd,s %r31,63,8,%r31
	ldb 0(%r25),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r28,%r31,.L70
	ldb 0(%r26),%r28
.L73:
	cmpb,*=,n %r0,%r28,.L70
	ldb,mb 1(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldb,mb 1(%r25),%r28
	extrd,s %r28,63,8,%r28
	cmpb,=,n %r28,%r31,.L73
	ldb 0(%r26),%r28
.L70:
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
	ldb 0(%r26),%r28
	cmpb,*= %r0,%r28,.L75
	copy %r26,%r28
	ldb,mb 1(%r28),%r31
.L79:
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L79
	ldb,mb 1(%r28),%r31
.L75:
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
	cmpb,*=,n %r0,%r24,.L85
	ldb 0(%r26),%r28
	copy %r25,%r20
	copy %r26,%r19
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r28,.L83
	add,l %r26,%r24,%r21
.L82:
	ldb 0(%r20),%r31
	sub %r21,%r19,%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	sub %r0,%r28,%r28
	extrd,u %r28,0,1,%r28
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,56+1-1,1,%r31
	and %r28,%r31,%r28
	cmpb,*=,n %r0,%r28,.L83
	ldb 0(%r19),%r31
	ldb 0(%r20),%r28
	cmpb,<>,n %r28,%r31,.L83
	ldb,mb 1(%r19),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*<> %r0,%r28,.L82
	ldo 1(%r20),%r20
.L83:
	ldb 0(%r19),%r28
	ldb 0(%r20),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L81:
	bve,n (%r2)
.L85:
	b .L81
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
	cmpib,*>=,n 1,%r24,.L88
	ldo -2(%r24),%r28
	copy %r28,%r24
	depdi 0,63,1,%r24
	ldo 2(%r24),%r28
	add,l %r26,%r28,%r28
.L90:
	ldb 1(%r26),%r31
	stb %r31,0(%r25)
	ldb 0(%r26),%r31
	stb %r31,1(%r25)
	ldo 2(%r26),%r26
	cmpb,*<> %r28,%r26,.L90
	ldo 2(%r25),%r25
.L88:
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
	cmpb,>>= %r31,%r26,.L93
	ldi 1,%r28
	ldi 0,%r28
.L93:
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
	cmpb,>>= %r31,%r26,.L95
	ldi 1,%r28
	ldi 0,%r28
.L95:
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
	cmpb,>>= %r28,%r26,.L98
	ldi 1,%r19
	ldi 0,%r19
.L98:
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
	cmpib,>>= 9,%r26,.L100
	ldi 1,%r28
	ldi 0,%r28
.L100:
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
	cmpb,>>= %r31,%r26,.L102
	ldi 1,%r28
	ldi 0,%r28
.L102:
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
	cmpb,>>= %r31,%r26,.L104
	ldi 1,%r28
	ldi 0,%r28
.L104:
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
	cmpb,>>= %r31,%r26,.L106
	ldi 1,%r28
	ldi 0,%r28
.L106:
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
	cmpib,>>= 4,%r26,.L108
	ldi 1,%r28
	ldi 0,%r28
.L108:
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
	cmpb,>>= %r31,%r26,.L110
	ldi 1,%r28
	ldi 0,%r28
.L110:
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
	cmpb,>>= %r31,%r26,.L112
	ldi 1,%r28
	ldi 0,%r28
.L112:
	extrd,u %r28,63,8,%r28
	ldo -127(%r26),%r26
	ldi 32,%r20
	cmpb,>>= %r20,%r26,.L113
	ldi 1,%r31
	ldi 0,%r31
.L113:
	extrd,u %r31,63,8,%r31
	or %r28,%r31,%r31
	cmpb,*<> %r0,%r31,.L114
	ldi 1,%r28
	ldo -40(%r19),%r31
	ldo -8192(%r31),%r31
	cmpib,>>=,n 1,%r31,.L114
	depwi,z -7,31,16,%r28
	sub %r19,%r28,%r19
	cmpib,>>= 2,%r19,.L115
	ldi 1,%r28
	ldi 0,%r28
.L115:
	extrd,u %r28,63,1,%r28
.L114:
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
	cmpib,>>= 9,%r26,.L119
	ldi 1,%r28
	ldi 0,%r28
.L119:
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
	ldi 254,%r31
	cmpb,>>= %r31,%r26,.L129
	extrd,u %r26,63,32,%r28
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	cmpb,>>= %r19,%r28,.L124
	ldi 1,%r31
	ldi 0,%r31
.L124:
	extrd,u %r31,63,8,%r31
	ldo -42(%r28),%r21
	ldo -8192(%r21),%r21
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	cmpb,>>= %r20,%r21,.L125
	ldi 1,%r19
	ldi 0,%r19
.L125:
	extrd,u %r19,63,8,%r19
	or %r31,%r19,%r31
	cmpb,*<> %r0,%r31,.L126
	ldil L'-57344,%r31
	add,l %r28,%r31,%r31
	ldi 8184,%r19
	cmpb,>>= %r19,%r31,.L127
	depwi,z -1,29,14,%r19
	sub %r28,%r19,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L128
	depwi,z -1,30,15,%r31
	andcm %r31,%r28,%r28
	sub %r0,%r28,%r28
	b .L123
	extrd,u %r28,32+1-1,1,%r28
.L129:
	ldo 1(%r26),%r26
	extrw,u %r26,31,7,%r26
	ldi 32,%r31
	cmpb,<< %r31,%r26,.L122
	ldi 1,%r28
	ldi 0,%r28
.L122:
	extrd,u %r28,63,1,%r28
.L123:
	bve,n (%r2)
.L126:
	b .L123
	ldi 1,%r28
.L127:
	b .L123
	ldi 1,%r28
.L128:
	b .L123
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
	cmpib,>>= 9,%r26,.L131
	ldi 1,%r28
	depwi -1,26,1,%r31
	ldo -97(%r31),%r31
	cmpiclr,>>= 5,%r31,%r0
	ldi 0,%r28
.L132:
	extrd,u %r28,63,1,%r28
.L131:
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
	b .L136
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L139
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L141
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	b .L136
	fldd 0(%r28),%fr4
.L141:
	fsub,dbl %fr4,%fr5,%fr4
.L136:
	bve,n (%r2)
.L139:
	b .L136
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
	b .L144
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L147
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L149
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	b .L144
	fldw 0(%r28),%fr4R
.L149:
	fsub,sgl %fr4R,%fr5R,%fr4R
.L144:
	bve,n (%r2)
.L147:
	b .L144
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
	b .L157
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L152
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r28
	cmpb,=,n %r28,%r31,.L153
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	cmpclr,*> %r0,%r28,%r0
	b,n .L152
	b .L152
	fcpy,dbl %fr5,%fr4
.L153:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b .L154
	ldi 1,%r28
	ldi 0,%r28
.L154:
	extrd,u %r28,63,8,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L152
	fcpy,dbl %fr5,%fr4
.L152:
	bve (%r2)
	ldo -64(%r30),%r30
.L157:
	b .L152
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
	b .L166
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L161
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	cmpb,=,n %r28,%r31,.L162
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L161
	b .L161
	fcpy,sgl %fr5R,%fr4R
.L162:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b .L163
	ldi 1,%r28
	ldi 0,%r28
.L163:
	extrd,u %r28,63,8,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L161
	fcpy,sgl %fr5R,%fr4R
.L161:
	bve (%r2)
	ldo -64(%r30),%r30
.L166:
	b .L161
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
	cmpb,*<> %r0,%r28,.L175
	copy %r4,%r27
	copy %r3,%r24
	copy %r5,%r23
	copy %r3,%r26
	copy %r5,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L176
	copy %r4,%r27
	extrd,u %r6,0+1-1,1,%r31
	extrd,u %r3,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L171
	copy %r3,%r24
	cmpb,*<=,n %r0,%r6,.L177
	copy %r3,%r28
	b .L170
	copy %r5,%r29
.L171:
	copy %r5,%r23
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r7,%r25
	cmpclr,*> %r0,%r28,%r0
	b,n .L178
.L174:
	copy %r3,%r28
	copy %r5,%r29
.L170:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L178:
	copy %r6,%r3
	b .L174
	copy %r7,%r5
.L175:
	copy %r3,%r28
	b .L170
	copy %r5,%r29
.L176:
	copy %r6,%r28
	b .L170
	copy %r7,%r29
.L177:
	copy %r6,%r28
	b .L170
	copy %r7,%r29
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
	b .L185
	fcpy,dbl %fr4,%fr22
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L180
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r28
	cmpb,=,n %r28,%r31,.L181
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	cmpb,*<= %r0,%r28,.L180
	fcpy,dbl %fr5,%fr4
	b .L180
	fcpy,dbl %fr22,%fr4
.L181:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b .L182
	ldi 1,%r28
	ldi 0,%r28
.L182:
	extrd,u %r28,63,8,%r28
	cmpb,*= %r0,%r28,.L188
	fcpy,dbl %fr5,%fr4
	fcpy,dbl %fr22,%fr4
.L180:
.L188:
	bve (%r2)
	ldo -64(%r30),%r30
.L185:
	b .L180
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
	b .L195
	fcpy,sgl %fr4R,%fr22R
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L190
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	cmpb,=,n %r28,%r31,.L191
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	cmpib,<= 0,%r28,.L190
	fcpy,sgl %fr5R,%fr4R
	b .L190
	fcpy,sgl %fr22R,%fr4R
.L191:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b .L192
	ldi 1,%r28
	ldi 0,%r28
.L192:
	extrd,u %r28,63,8,%r28
	cmpb,*= %r0,%r28,.L198
	fcpy,sgl %fr5R,%fr4R
	fcpy,sgl %fr22R,%fr4R
.L190:
.L198:
	bve (%r2)
	ldo -64(%r30),%r30
.L195:
	b .L190
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
	cmpb,*<> %r0,%r28,.L205
	copy %r4,%r27
	copy %r6,%r24
	copy %r7,%r23
	copy %r6,%r26
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L206
	copy %r4,%r27
	extrd,u %r3,0+1-1,1,%r31
	extrd,u %r6,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L201
	copy %r6,%r24
	cmpb,*<=,n %r0,%r3,.L207
	copy %r3,%r28
	b .L200
	copy %r5,%r29
.L201:
	copy %r7,%r23
	copy %r3,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r5,%r25
	cmpclr,*> %r0,%r28,%r0
	b,n .L208
.L204:
	copy %r3,%r28
	copy %r5,%r29
.L200:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r7
.L208:
	copy %r6,%r3
	b .L204
	copy %r7,%r5
.L205:
	copy %r6,%r28
	b .L200
	copy %r7,%r29
.L206:
	copy %r3,%r28
	b .L200
	copy %r5,%r29
.L207:
	copy %r6,%r28
	b .L200
	copy %r7,%r29
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
	cmpib,= 0,%r26,.L212
	extrd,u %r26,63,32,%r28
	addil LT's.0,%r27
	ldd RT's.0(%r1),%r31
	addil LT'digits,%r27
	ldd RT'digits(%r1),%r20
.L211:
	extrd,u %r28,63,6,%r19
	ldb %r19(%r20),%r19
	stb %r19,0(%r31)
	extrd,u %r28,57,58,%r28
	cmpb,*<> %r0,%r28,.L211
	ldo 1(%r31),%r31
.L210:
	stb %r0,0(%r31)
	addil LT's.0,%r27
	bve (%r2)
	ldd RT's.0(%r1),%r28
.L212:
	addil LT's.0,%r27
	b .L210
	ldd RT's.0(%r1),%r31
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
	cmpb,*=,n %r0,%r25,.L219
	ldd 0(%r25),%r28
	std %r28,0(%r26)
	std %r25,8(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L216:
	bve,n (%r2)
.L219:
	std %r0,8(%r26)
	b .L216
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
	cmpb,*=,n %r0,%r28,.L221
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L221:
	ldd 8(%r26),%r28
	cmpb,*=,n %r0,%r28,.L220
	ldd 0(%r26),%r31
	std %r31,0(%r28)
.L220:
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
	ldd 0(%r24),%r7
	cmpb,*= %r0,%r7,.L224
	copy %r22,%r9
	copy %r25,%r5
	ldi 0,%r3
	ldo -48(%r30),%r10
.L227:
	copy %r5,%r25
	copy %r8,%r26
	copy %r10,%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	cmpb,*= %r0,%r28,.L229
	copy %r4,%r27
	ldo 1(%r3),%r3
	cmpb,*<> %r7,%r3,.L227
	add,l %r5,%r6,%r5
.L224:
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
.L226:
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
.L229:
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
	b .L226
	add,l %r11,%r28,%r28
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
	copy %r26,%r7
	copy %r25,%r11
	copy %r23,%r6
	ldd 0(%r24),%r9
	cmpb,*= %r0,%r9,.L234
	copy %r22,%r8
	copy %r25,%r5
	ldi 0,%r3
	ldo -48(%r30),%r10
.L233:
	copy %r5,%r25
	copy %r7,%r26
	copy %r10,%r29
	copy %r27,%r4
	ldd 16(%r8),%r2
	bve,l (%r2),%r2
	ldd 24(%r8),%r27
	cmpb,*= %r0,%r28,.L236
	copy %r4,%r27
	ldo 1(%r3),%r3
	cmpb,*<> %r9,%r3,.L233
	add,l %r5,%r6,%r5
	b .L231
	ldi 0,%r28
.L236:
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
	add,l %r11,%r28,%r28
.L231:
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
.L234:
	b .L231
	ldi 0,%r28
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
	b .L239
	ldo -48(%r30),%r5
.L240:
	ldo 1(%r3),%r3
.L239:
	ldb 0(%r3),%r26
	extrw,s %r26,31,8,%r26
	copy %r5,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L240
	copy %r4,%r27
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L246
	ldi 45,%r31
	cmpb,<> %r31,%r28,.L242
	ldi 0,%r19
	ldi 1,%r19
.L241:
	ldo 1(%r3),%r3
.L242:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	cmpib,<< 9,%r28,.L243
	ldi 0,%r31
.L244:
	shladd,l %r31,2,%r31,%r31 
	add,l %r31,%r31,%r31
	ldo 1(%r3),%r3
	ldb -1(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	sub %r31,%r28,%r31
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	cmpib,>>= 9,%r28,.L244
	extrd,s %r31,63,32,%r31
.L243:
	cmpb,*<> %r0,%r19,.L245
	copy %r31,%r28
	sub %r0,%r31,%r31
	extrd,s %r31,63,32,%r28
.L245:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
.L246:
	b .L241
	ldi 0,%r19
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
	b .L252
	ldo -48(%r30),%r5
.L253:
	ldo 1(%r3),%r3
.L252:
	ldb 0(%r3),%r26
	extrw,s %r26,31,8,%r26
	copy %r5,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L253
	copy %r4,%r27
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L259
	ldi 45,%r31
	cmpb,<> %r31,%r28,.L255
	ldi 0,%r19
	ldi 1,%r19
.L254:
	ldo 1(%r3),%r3
.L255:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	cmpib,<< 9,%r28,.L261
	ldi 0,%r28
	shladd,l %r28,2,%r28,%r28
.L264:
	depd,z %r28,62,63,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>=,n 9,%r31,.L264
	shladd,l %r28,2,%r28,%r28
	sub %r0,%r28,%r31
.L265:
	cmpiclr,*<> 0,%r19,%r0
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
.L259:
	b .L254
	ldi 0,%r19
.L261:
	b .L265
	sub %r0,%r28,%r31
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
	b .L267
	ldo -48(%r30),%r5
.L268:
	ldo 1(%r3),%r3
.L267:
	ldb 0(%r3),%r26
	extrw,s %r26,31,8,%r26
	copy %r5,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L268
	copy %r4,%r27
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L274
	ldi 45,%r31
	cmpb,<> %r31,%r28,.L270
	ldi 0,%r19
	ldi 1,%r19
.L269:
	ldo 1(%r3),%r3
.L270:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	cmpib,<< 9,%r28,.L276
	ldi 0,%r28
	shladd,l %r28,2,%r28,%r28
.L279:
	depd,z %r28,62,63,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>=,n 9,%r31,.L279
	shladd,l %r28,2,%r28,%r28
	sub %r0,%r28,%r31
.L280:
	cmpiclr,*<> 0,%r19,%r0
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
.L274:
	b .L269
	ldi 0,%r19
.L276:
	b .L280
	sub %r0,%r28,%r31
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
	copy %r26,%r7
	copy %r25,%r6
	copy %r24,%r5
	std %r23,-200(%r30)
	fldd -200(%r30),%fr12
	cmpb,*= %r0,%r24,.L286
	copy %r22,%r8
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr13
	b .L285
	ldo -48(%r30),%r9
.L290:
	extrd,u %r5,62,63,%r5
.L284:
	cmpb,*= %r0,%r5,.L289
	ldi 0,%r28
.L285:
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
	copy %r7,%r26
	copy %r9,%r29
	copy %r27,%r4
	ldd 16(%r8),%r2
	bve,l (%r2),%r2
	ldd 24(%r8),%r27
	cmpib,> 0,%r28,.L290
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L287
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	extrd,u %r5,62,63,%r28
	b .L284
	uaddcm %r5,%r28,%r5
.L289:
.L282:
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
.L286:
	b .L282
	ldi 0,%r28
.L287:
	b .L282
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
	copy %r26,%r7
	std %r23,-200(%r30)
	fldd -200(%r30),%fr12
	copy %r22,%r8
	copy %r21,%r9
	cmpib,= 0,%r24,.L295
	extrd,s %r24,63,32,%r5
	copy %r25,%r6
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr13
	b .L294
	ldo -48(%r30),%r10
.L293:
	extrw,s %r5,30,31,%r28
.L299:
	cmpib,= 0,%r28,.L298
	extrd,s %r28,63,32,%r5
.L294:
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
	cmpb,*= %r0,%r28,.L296
	copy %r4,%r27
	cmpib,>= 0,%r28,.L299
	extrw,s %r5,30,31,%r28
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	ldo -1(%r5),%r5
	b .L293
	extrd,s %r5,63,32,%r5
.L298:
	b .L292
	ldi 0,%r28
.L295:
	b .L292
	ldi 0,%r28
.L296:
	copy %r3,%r28
.L292:
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
	cmpb,*= %r0,%r28,.L315
	extrd,u %r25,63,32,%r25
	ldw 0(%r26),%r28
.L314:
	cmpb,=,n %r28,%r25,.L309
	ldw,mb 4(%r26),%r28
	cmpib,<>,n 0,%r28,.L314
	ldw 0(%r26),%r28
.L309:
	ldw 0(%r26),%r28
.L315:
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
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L318
	ldw 0(%r26),%r28
.L324:
	cmpb,*=,n %r0,%r28,.L318
	ldw 0(%r25),%r28
	cmpb,*=,n %r0,%r28,.L318
	ldw,mb 4(%r26),%r31
	ldw,mb 4(%r25),%r28
	cmpb,=,n %r28,%r31,.L324
	ldw 0(%r26),%r28
.L318:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L320
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L321
	ldi 1,%r28
	ldi 0,%r28
.L321:
	extrd,u %r28,63,1,%r28
.L320:
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
.L326:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L326
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
	cmpb,*= %r0,%r28,.L331
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L333:
	cmpib,<>,n 0,%r31,.L333
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
.L334:
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L331:
	b .L334
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
	cmpb,*= %r0,%r24,.L344
	ldi 0,%r28
.L336:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,<> %r28,%r31,.L344
	ldi 0,%r28
	cmpb,*=,n %r0,%r31,.L337
	ldw 0(%r25),%r28
	cmpb,*=,n %r0,%r28,.L337
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L336
	ldo 4(%r25),%r25
.L337:
	ldi 0,%r28
.L344:
	cmpb,*=,n %r28,%r24,.L339
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L339
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L340
	ldi 1,%r28
	ldi 0,%r28
.L340:
	extrd,u %r28,63,1,%r28
.L339:
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
	cmpb,*= %r0,%r24,.L347
	extrd,u %r25,63,32,%r25
.L346:
	ldw 0(%r26),%r28
	cmpb,=,n %r28,%r25,.L347
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L346
	ldo 4(%r26),%r26
.L347:
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
	cmpb,*= %r0,%r24,.L361
	ldi 0,%r28
.L353:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L354
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L353
	ldo 4(%r25),%r25
.L354:
	ldi 0,%r28
.L361:
	cmpb,*=,n %r28,%r24,.L356
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L356
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L357
	ldi 1,%r28
	ldi 0,%r28
.L357:
	extrd,u %r28,63,1,%r28
.L356:
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
	cmpb,*= %r0,%r24,.L363
	ldo -1(%r24),%r31
	copy %r31,%r24
	copy %r26,%r31
	ldi -1,%r20
.L364:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	ldo -1(%r24),%r24
	cmpb,*<> %r20,%r24,.L364
	stw %r19,-4(%r31)
.L363:
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
	cmpb,*= %r25,%r26,.L367
	copy %r26,%r28
	sub %r26,%r25,%r31
	depd,z %r24,61,62,%r19
	cmpclr,*<<= %r19,%r31,%r0
	b,n .L368
	cmpb,*= %r0,%r24,.L367
	ldo -1(%r24),%r31
	copy %r31,%r24
	copy %r26,%r31
	ldi -1,%r20
.L369:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	ldo -1(%r24),%r24
	cmpb,*<> %r20,%r24,.L369
	stw %r19,-4(%r31)
	b,n .L367
.L368:
	cmpb,*=,n %r0,%r24,.L367
	ldo -1(%r24),%r24
	shladd,l %r24,2,%r25,%r31
	shladd,l %r24,2,%r26,%r24
	ldo -4(%r25),%r25
.L370:
	ldw 0(%r31),%r19
	stw %r19,0(%r24)
	ldo -4(%r31),%r31
	cmpb,*<> %r25,%r31,.L370
	ldo -4(%r24),%r24
.L367:
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
	cmpb,*= %r0,%r24,.L375
	ldo -1(%r24),%r31
	copy %r31,%r24
	copy %r26,%r31
	ldi -1,%r19
.L376:
	ldo 4(%r31),%r31
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L376
	stw %r25,-4(%r31)
.L375:
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
	cmpb,*<<= %r25,%r26,.L379
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L378
	add,l %r25,%r24,%r25
.L381:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L381
	stb,mb %r31,-1(%r25)
.L378:
	bve,n (%r2)
.L379:
	cmpb,*= %r25,%r26,.L378
	nop
	cmpb,*= %r0,%r24,.L378
	add,l %r26,%r24,%r24
	copy %r26,%r28
.L382:
	ldo 1(%r28),%r28
	ldo 1(%r25),%r25
	ldb -1(%r28),%r31
	cmpb,*<> %r24,%r28,.L382
	stb %r31,-1(%r25)
	b,n .L378
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
	extrd,u %r26,63,16,%r26
	extrd,u %r26,55,56,%r31
	extrw,u %r26,31,8,%r28
	depw,z %r28,23,24,%r28
	or %r28,%r31,%r28
	bve (%r2)
	extrd,u %r28,63,32,%r28
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
	extrd,u %r26,32+8-1,8,%r19
	ldil L'16711680,%r28
	and %r26,%r28,%r28
	extrw,u %r28,0+24-1,24,%r28
	depwi,z -1,23,8,%r31
	and %r26,%r31,%r31
	depw,z %r31,23,24,%r31
	depw,z %r26,7,8,%r26
	or %r26,%r31,%r26
	or %r26,%r19,%r26
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
	ldi 0,%r31
	extrd,u %r26,63,32,%r26
	ldi 32,%r19
.L401:
	mtsar %r31
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	cmpb,*<> %r0,%r28,.L403
	ldo 1(%r31),%r28
	cmpb,<> %r19,%r28,.L401
	extrd,u %r28,63,32,%r31
	b .L400
	ldi 0,%r28
.L403:
	extrd,s %r28,63,32,%r28
.L400:
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
	cmpib,= 0,%r26,.L407
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<> %r0,%r28,.L405
	ldi 1,%r28
.L406:
	extrw,s %r19,30,31,%r31
	extrd,s %r31,63,32,%r19
	ldo 1(%r28),%r28
	extrd,u %r31,63,1,%r31
	cmpb,*= %r0,%r31,.L406
	extrd,s %r28,63,32,%r28
.L405:
	bve,n (%r2)
.L407:
	b .L405
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
	b .L411
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L412
	ldi 0,%r28
.L412:
	extrd,u %r28,63,1,%r28
.L411:
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
	b .L415
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L416
	ldi 0,%r28
.L416:
	extrd,u %r28,63,1,%r28
.L415:
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
	cmpb,*> %r0,%r31,.L419
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
	b,n .L422
.L420:
	extrd,u %r3,63,1,%r28
.L419:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L422:
	b .L420
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
	b .L425
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr4R,%fr22R
	ftest
	b,n .L425
	cmpib,> 0,%r25,.L430
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L428
	fldw 0(%r28),%fr22R
.L430:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L428
	fldw 0(%r28),%fr22R
.L431:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L425
	extrd,s %r28,63,32,%r25
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L428:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L431
	extrw,u %r25,0,1,%r28
	b .L431
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L425:
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
	b .L433
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr4,%fr22
	ftest
	b,n .L433
	cmpib,> 0,%r25,.L438
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L436
	fldd 0(%r28),%fr22
.L438:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L436
	fldd 0(%r28),%fr22
.L439:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L433
	extrd,s %r28,63,32,%r25
	fmpy,dbl %fr22,%fr22,%fr22
.L436:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L439
	extrw,u %r25,0,1,%r28
	b .L439
	fmpy,dbl %fr4,%fr22,%fr4
.L433:
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
	cmpb,*<> %r0,%r28,.L441
	copy %r4,%r27
	copy %r5,%r24
	copy %r3,%r23
	copy %r5,%r26
	copy %r3,%r25
	ldo -48(%r30),%r29
	b,l __addtf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r24
	copy %r29,%r23
	copy %r5,%r26
	copy %r3,%r25
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L441
	copy %r4,%r27
	cmpib,> 0,%r6,.L448
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r3
	ldd 8(%r28),%r5
.L443:
	b .L445
	ldo -48(%r30),%r9
.L448:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r3
	b .L443
	ldd 8(%r28),%r5
.L444:
	extrw,u %r6,0,1,%r31
.L449:
	add,l %r31,%r6,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L441
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
.L445:
	extrd,u %r6,63,1,%r31
	cmpb,*= %r0,%r31,.L449
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
	b .L444
	copy %r29,%r7
.L441:
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
	cmpb,*= %r0,%r24,.L451
	copy %r26,%r28
	add,l %r25,%r24,%r24
	copy %r26,%r31
.L452:
	ldo 1(%r25),%r25
	ldb -1(%r25),%r20
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	xor %r19,%r20,%r19
	cmpb,*<> %r24,%r25,.L452
	stb %r19,-1(%r31)
.L451:
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
	cmpb,*= %r0,%r3,.L456
	add,l %r6,%r28,%r28
.L455:
	ldb 0(%r5),%r31
	stb %r31,0(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*= %r0,%r31,.L456
	ldo 1(%r5),%r5
	ldo -1(%r3),%r3
	cmpb,*<> %r0,%r3,.L455
	ldo 1(%r28),%r28
.L456:
	cmpclr,*<> %r0,%r3,%r0
	stb %r0,0(%r28)
.L458:
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
	cmpb,*= %r28,%r25,.L462
	add,l %r26,%r28,%r31
.L466:
	ldb 0(%r31),%r31
	cmpclr,*= %r0,%r31,%r0
	b,n .L463
.L462:
	bve,n (%r2)
.L463:
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L466
	add,l %r26,%r28,%r31
	b,n .L462
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
	ldb 0(%r26),%r28
	cmpb,*=,n %r0,%r28,.L469
	copy %r25,%r31
.L477:
	ldb 0(%r31),%r19
.L476:
	cmpb,*= %r0,%r19,.L475
	ldo 1(%r31),%r31
	ldb -1(%r31),%r20
	extrd,s %r20,63,8,%r20
	ldb 0(%r26),%r19
	extrd,s %r19,63,8,%r19
	cmpb,<>,n %r19,%r20,.L476
	ldb 0(%r31),%r19
	copy %r26,%r28
.L469:
	bve,n (%r2)
.L475:
	ldb,mb 1(%r26),%r28
	extrd,s %r28,63,8,%r28
	cmpb,*<>,n %r0,%r28,.L477
	copy %r25,%r31
	b .L469
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
	b .L480
	ldi 0,%r28
.L479:
	ldo 1(%r26),%r26
.L484:
	ldb -1(%r26),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L483
.L480:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r31,%r25,.L479
	copy %r26,%r28
	b .L484
	ldo 1(%r26),%r26
.L483:
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
	cmpb,*= %r0,%r28,.L489
	copy %r28,%r7
	ldb 0(%r6),%r8
	extrd,s %r8,63,8,%r8
	ldo -48(%r30),%r5
.L487:
	copy %r8,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strchr,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L491
	copy %r28,%r3
	copy %r7,%r24
	copy %r6,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strncmp,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L490
	copy %r4,%r27
	b .L487
	ldo 1(%r3),%r3
.L491:
	b .L486
	ldi 0,%r28
.L489:
	copy %r3,%r28
.L486:
	ldd -176(%r30),%r2
	ldd -152(%r30),%r7
	ldd -144(%r30),%r6
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -160(%r30),%r8
.L490:
	b .L486
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
	b,n .L501
	fcmp,dbl,!> %fr4,%fr0
.L505:
	ftest
	b,n .L502
	b,n .L496
.L502:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L495
.L496:
	bve,n (%r2)
.L501:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L495
	b .L505
	fcmp,dbl,!> %fr4,%fr0
.L495:
	b .L496
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
	sub %r25,%r23,%r5
	cmpb,*= %r0,%r23,.L511
	add,l %r26,%r5,%r5
	cmpb,*>> %r23,%r25,.L508
	ldi 1,%r28
	ldi 0,%r28
.L508:
	extrd,u %r28,63,8,%r28
	cmpclr,*= %r0,%r28,%r0
	b,n .L512
	cmpb,*<<,n %r5,%r3,.L513
	ldb 0(%r24),%r6
	extrd,s %r6,63,8,%r6
	ldo 1(%r24),%r8
	ldo -1(%r23),%r7
	b .L510
	ldo -48(%r30),%r9
.L509:
	ldo 1(%r3),%r3
.L517:
	cmpb,*>> %r3,%r5,.L516
	ldi 0,%r28
.L510:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r6,%r28,.L517
	ldo 1(%r3),%r3
	copy %r7,%r24
	copy %r8,%r25
	ldo 1(%r3),%r26
	copy %r9,%r29
	b,l memcmp,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L509
	copy %r4,%r27
	copy %r3,%r28
.L516:
.L507:
	ldd -192(%r30),%r2
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r9
.L511:
	b .L507
	copy %r26,%r28
.L512:
	b .L507
	ldi 0,%r28
.L513:
	b .L507
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
	b,n .L532
	ldi 0,%r19
.L520:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L534
	ldi 0,%r28
	b .L539
	ldi 1,%r28
.L534:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr23
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r31
	fldd 0(%r31),%fr22
.L524:
	ldo 1(%r28),%r28
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L524
	extrd,s %r28,63,32,%r28
.L525:
	cmpb,*= %r0,%r19,.L529
	stw %r28,0(%r25)
	fneg,dbl %fr4,%fr4
.L529:
	bve,n (%r2)
.L532:
	fneg,dbl %fr4,%fr4
	b .L520
	ldi 1,%r19
.L539:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L526
	ldi 0,%r28
.L526:
	extrd,u %r28,63,8,%r28
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L527
	ldi 1,%r31
	ldi 0,%r31
.L527:
	and %r28,%r31,%r31
	ldi 0,%r28
	cmpb,*= %r28,%r31,.L525
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr22
.L528:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L528
	extrd,s %r28,63,32,%r28
	b,n .L525
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
	cmpb,*= %r0,%r26,.L541
	ldi 0,%r28
.L542:
	extrd,s %r26,63+1-1,1,%r31
	and %r25,%r31,%r31
	add,l %r28,%r31,%r28
	extrd,u %r26,62,63,%r26
	cmpb,*<> %r0,%r26,.L542
	depd,z %r25,62,63,%r25
.L541:
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
	extrd,u %r25,63,32,%r19
	ldi 1,%r20
	ldi 1,%r23
	cmpb,<< %r25,%r26,.L547
	ldi 0,%r29
.L548:
	ldi 0,%r31
.L562:
	cmpclr,*= %r31,%r20,%r0
	b,n .L550
.L551:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L549:
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,u %r31,0,1,%r31
	and %r31,%r22,%r31
	cmpib,= 0,%r31,.L562
	ldi 0,%r31
.L547:
	cmpib,> 0,%r19,.L548
	add,l %r19,%r19,%r21
	extrd,u %r21,63,32,%r19
	add,l %r20,%r20,%r31
	extrd,u %r31,63,32,%r20
	cmpb,<< %r21,%r28,.L549
	copy %r23,%r22
	b .L549
	copy %r29,%r22
.L553:
	extrd,u %r20,62,63,%r20
.L563:
	cmpb,*= %r0,%r20,.L551
	extrd,u %r19,62,63,%r19
.L550:
	cmpb,>>,n %r19,%r28,.L563
	extrd,u %r20,62,63,%r20
	sub %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	b .L553
	or %r31,%r20,%r31
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
	extrw,s %r26,24+1-1,1,%r28
	xor %r26,%r28,%r26
	extrd,s %r26,63,8,%r26
	cmpb,*=,n %r0,%r26,.L566
	depw,z %r26,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
.L565:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L566:
	b .L565
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
	extrd,s %r26,0,1,%r28
	cmpb,*= %r26,%r28,.L569
	xor %r28,%r26,%r31
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	copy %r31,%r26
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L568:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L569:
	b .L568
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
	cmpib,= 0,%r26,.L573
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L572:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L572
	extrd,u %r25,63,32,%r25
.L571:
	bve,n (%r2)
.L573:
	b .L571
	ldi 0,%r28
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
	cmpb,*<<= %r25,%r26,.L576
	extrd,u %r21,63,32,%r22
.L579:
	cmpb,*=,n %r0,%r20,.L578
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L582:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L582
	ldo 8(%r31),%r31
.L578:
	cmpb,>>=,n %r21,%r23,.L575
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r22,%r25
	add,l %r25,%r24,%r25
.L583:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L583
	ldo 1(%r26),%r26
.L575:
	bve,n (%r2)
.L576:
	add,l %r25,%r23,%r28
	cmpb,*>> %r26,%r28,.L579
	nop
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r23,.L575
	ldi -1,%r19
.L584:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L584
	stb %r31,0(%r28)
	b,n .L575
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
	cmpb,*<<= %r25,%r26,.L590
	extrd,u %r24,32+31-1,31,%r20
.L593:
	cmpb,*=,n %r0,%r20,.L592
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,1,%r25,%r20
.L596:
	ldh 0(%r28),%r19
	sth %r19,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r20,%r28,.L596
	ldo 2(%r31),%r31
.L592:
	extrd,u %r21,63,1,%r21
	cmpb,*= %r0,%r21,.L589
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L589:
	bve,n (%r2)
.L590:
	add,l %r25,%r21,%r28
	cmpb,*>> %r26,%r28,.L593
	nop
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r21,.L589
	ldi -1,%r19
.L597:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L597
	stb %r31,0(%r28)
	b,n .L589
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
	cmpb,*<<= %r25,%r26,.L602
	extrd,u %r21,63,32,%r22
.L605:
	cmpb,*=,n %r0,%r20,.L604
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,2,%r25,%r20
.L608:
	ldw 0(%r28),%r19
	stw %r19,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r20,%r28,.L608
	ldo 4(%r31),%r31
.L604:
	cmpb,>>=,n %r21,%r23,.L601
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r22,%r25
	add,l %r25,%r24,%r25
.L609:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L609
	ldo 1(%r26),%r26
.L601:
	bve,n (%r2)
.L602:
	add,l %r25,%r23,%r28
	cmpb,*>> %r26,%r28,.L605
	nop
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r23,.L601
	ldi -1,%r19
.L610:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L610
	stb %r31,0(%r28)
	b,n .L601
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
	extrd,u %r26,63,16,%r26
	ldi 16,%r19
.L623:
	ldo 16(%r28),%r31
	mtsar %r31
	bb,< %r26,%sar,.L622
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L623
	extrd,s %r31,63,32,%r28
.L622:
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
	extrd,u %r26,63,16,%r26
	ldi 16,%r19
.L627:
	mtsarcm %r28
	bb,< %r26,%sar,.L626
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L627
	extrd,s %r31,63,32,%r28
.L626:
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
	b .L633
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
.L632:
	bve (%r2)
	ldo -64(%r30),%r30
.L633:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	b .L632
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
	ldi 0,%r31
	copy %r31,%r19
	extrd,u %r26,63,16,%r26
	ldi 16,%r21
.L636:
	mtsarcm %r19
	extrw,u %r26,%sar,1,%r28
	add,l %r28,%r31,%r28
	extrd,s %r28,63,32,%r31
	ldo 1(%r19),%r20
	cmpb,<> %r21,%r20,.L636
	extrd,s %r20,63,32,%r19
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
	copy %r28,%r19
	extrd,u %r26,63,16,%r26
	ldi 16,%r20
.L639:
	mtsarcm %r19
	extrw,u %r26,%sar,1,%r31
	add,l %r31,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r19),%r31
	cmpb,<> %r20,%r31,.L639
	extrd,s %r31,63,32,%r19
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
	cmpib,= 0,%r26,.L644
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L643:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L643
	extrd,u %r25,63,32,%r25
.L642:
	bve,n (%r2)
.L644:
	b .L642
	ldi 0,%r28
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
	cmpib,= 0,%r26,.L649
	extrd,u %r25,63,32,%r25
	cmpb,*= %r0,%r25,.L647
	ldi 0,%r28
.L648:
	extrw,s %r25,31+1-1,1,%r19
	and %r19,%r31,%r19
	add,l %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r31,%r31
	extrd,u %r25,62,63,%r25
	cmpb,*<> %r0,%r25,.L648
	extrd,u %r31,63,32,%r31
.L647:
	bve,n (%r2)
.L649:
	b .L647
	ldi 0,%r28
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
	extrd,u %r25,63,32,%r19
	extrd,s %r24,63,32,%r24
	ldi 1,%r20
	ldi 1,%r23
	cmpb,<< %r25,%r26,.L654
	ldi 0,%r29
.L655:
	ldi 0,%r31
.L669:
	cmpclr,*= %r31,%r20,%r0
	b,n .L657
.L658:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L656:
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,u %r31,0,1,%r31
	and %r31,%r22,%r31
	cmpib,= 0,%r31,.L669
	ldi 0,%r31
.L654:
	cmpib,> 0,%r19,.L655
	add,l %r19,%r19,%r21
	extrd,u %r21,63,32,%r19
	add,l %r20,%r20,%r31
	extrd,u %r31,63,32,%r20
	cmpb,<< %r21,%r28,.L656
	copy %r23,%r22
	b .L656
	copy %r29,%r22
.L660:
	extrd,u %r20,62,63,%r20
.L670:
	cmpb,*= %r0,%r20,.L658
	extrd,u %r19,62,63,%r19
.L657:
	cmpb,>>,n %r19,%r28,.L670
	extrd,u %r20,62,63,%r20
	sub %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	b .L660
	or %r31,%r20,%r31
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
	b,n .L674
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L673
	ldi 1,%r28
	ldi 0,%r28
.L673:
	extrd,u %r28,63,1,%r28
.L672:
	bve,n (%r2)
.L674:
	b .L672
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
	b,n .L678
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L677
	ldi 1,%r28
	ldi 0,%r28
.L677:
	extrd,u %r28,63,1,%r28
.L676:
	bve,n (%r2)
.L678:
	b .L676
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
	cmpib,> 0,%r25,.L691
	ldi 0,%r29
.L682:
	cmpb,*= %r0,%r20,.L688
	ldi 0,%r31
	copy %r31,%r19
	ldi 1,%r24
	ldi 31,%r23
	b .L685
	ldi 0,%r25
.L691:
	sub %r0,%r20,%r20
	extrd,s %r20,63,32,%r20
	b .L682
	ldi 1,%r29
.L684:
	and %r28,%r21,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L683
.L685:
	extrw,s %r20,31+1-1,1,%r28
	and %r28,%r26,%r28
	add,l %r31,%r28,%r31
	extrd,s %r31,63,32,%r31
	add,l %r26,%r26,%r26
	extrd,s %r26,63,32,%r26
	extrw,s %r20,30,31,%r28
	extrd,s %r28,63,32,%r20
	ldo 1(%r19),%r19
	extrd,u %r19,63,8,%r22
	extrd,s %r19,63,8,%r19
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	sub %r0,%r28,%r28
	extrw,u %r28,0,1,%r28
	extrd,u %r28,63,8,%r28
	cmpb,>>= %r23,%r22,.L684
	copy %r24,%r21
	b .L684
	copy %r25,%r21
.L688:
.L683:
	cmpb,*= %r0,%r29,.L686
	copy %r31,%r28
	sub %r0,%r31,%r31
	extrd,s %r31,63,32,%r28
.L686:
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
	b,n .L697
.L693:
	cmpb,*> %r0,%r25,.L698
	ldi 1,%r28
.L694:
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
.L697:
	sub %r0,%r26,%r26
	b .L693
	ldi 1,%r3
.L698:
	sub %r0,%r25,%r25
	b .L694
	xor %r28,%r3,%r3
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
	b,n .L703
.L700:
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
.L703:
	sub %r0,%r26,%r26
	b .L700
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
	cmpb,>> %r28,%r25,.L706
	ldi 0,%r22
.L707:
	ldi 0,%r31
.L721:
	cmpclr,*= %r31,%r19,%r0
	b,n .L709
.L710:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L708:
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,48+1-1,1,%r31
	and %r31,%r20,%r31
	cmpb,*= %r0,%r31,.L721
	ldi 0,%r31
.L706:
	extrd,s %r25,63,16,%r31
	cmpib,> 0,%r31,.L707
	add,l %r19,%r19,%r31
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	extrd,u %r31,63,16,%r19
	cmpb,<< %r25,%r28,.L708
	copy %r21,%r20
	b .L708
	copy %r22,%r20
.L712:
	extrd,u %r19,62,63,%r19
.L722:
	cmpb,*= %r0,%r19,.L710
	extrd,u %r25,62,63,%r25
.L709:
	cmpb,>>,n %r25,%r28,.L722
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	b .L712
	or %r31,%r19,%r31
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
	cmpb,*<<= %r26,%r25,.L740
	ldi 1,%r19
	depdi,z 1,32,4,%r21
	ldi 1,%r22
	b .L725
	ldi 0,%r23
.L740:
	ldi 0,%r31
.L741:
	cmpclr,*= %r31,%r19,%r0
	b,n .L728
.L729:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L727:
	or,*>= %r0,%r19,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,0,1,%r31
	and %r31,%r20,%r31
	cmpb,*= %r0,%r31,.L741
	ldi 0,%r31
.L725:
	and %r25,%r21,%r31
	cmpb,*<> %r0,%r31,.L741
	ldi 0,%r31
	depd,z %r25,62,63,%r25
	depd,z %r19,62,63,%r19
	cmpb,*<< %r25,%r28,.L727
	copy %r22,%r20
	b .L727
	copy %r23,%r20
.L731:
	extrd,u %r19,62,63,%r19
.L742:
	cmpb,*= %r0,%r19,.L729
	extrd,u %r25,62,63,%r25
.L728:
	cmpb,*>>,n %r25,%r28,.L742
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	b .L731
	or %r31,%r19,%r31
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
	bb,>= %r25,26,.L744
	extrd,s %r25,63,32,%r19
	ldi 0,%r28
	depd %r28,32+32-1,32,%r28
	extrd,u %r26,63,32,%r26
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	depd %r26,0+32-1,32,%r28
.L746:
	bve,n (%r2)
.L744:
	cmpb,*= %r0,%r19,.L747
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
	b .L746
	depd %r31,0+32-1,32,%r28
.L747:
	b .L746
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
	bb,>= %r24,25,.L749
	extrd,s %r24,63,32,%r31
	ldi 0,%r29
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	depd,z %r25,%sar,64,%r28
.L751:
	bve,n (%r2)
.L749:
	cmpb,*= %r0,%r31,.L752
	mtsarcm %r31
	depd,z %r25,%sar,64,%r29
	depd,z %r26,%sar,64,%r28
	subi 64,%r31,%r31
	mtsar %r31
	shrpd %r0,%r25,%sar,%r25
	b .L751
	or %r25,%r28,%r28
.L752:
	copy %r26,%r28
	b .L751
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
	bb,>= %r25,26,.L754
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
.L756:
	bve,n (%r2)
.L754:
	cmpb,*=,n %r0,%r19,.L757
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
	b .L756
	depd %r31,32+32-1,32,%r28
.L757:
	b .L756
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
	bb,>= %r24,25,.L759
	extrd,s %r24,63,32,%r31
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	extrd,s %r26,%sar,64,%r29
.L761:
	bve,n (%r2)
.L759:
	cmpb,*= %r0,%r31,.L762
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r19
	extrd,s %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L761
	or %r26,%r29,%r29
.L762:
	copy %r26,%r28
	b .L761
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	extrd,u %r26,63,32,%r31
	depwi,z -1,31,16,%r28
	cmpb,>>= %r28,%r26,.L766
	ldi 1,%r19
	ldi 0,%r19
.L766:
	extrw,u %r19,31,1,%r19
	depw,z %r19,27,28,%r19
	subi 16,%r19,%r28
	mtsar %r28
	shrpw %r0,%r31,%sar,%r31
	depwi,z -1,23,8,%r28
	and %r31,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0+1-1,1,%r28
	depw,z %r28,28,29,%r28
	subi 8,%r28,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 240,%r19
	and %r31,%r19,%r19
	ldo -1(%r19),%r19
	extrw,u %r19,0+1-1,1,%r19
	depw,z %r19,29,30,%r19
	subi 4,%r19,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 12,%r19
	and %r31,%r19,%r19
	ldo -1(%r19),%r19
	extrw,u %r19,0,1,%r19
	extrd,u %r19,63,1,%r19
	add,l %r19,%r19,%r19
	subi 2,%r19,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	extrw,u %r31,30+1-1,1,%r19
	subi 2,%r31,%r31
	ldo -1(%r19),%r19
	and %r19,%r31,%r31
	add,l %r28,%r31,%r28
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
	or,*>= %r0,%r26,%r3
	subi 0,%r3,%r3
	ldo -1(%r3),%r3
	extrd,s %r3,0,1,%r3
	extrd,s %r3,63,32,%r28
	andcm %r26,%r28,%r26
	and %r28,%r25,%r28
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	or %r26,%r28,%r26
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
	b,n .L770
	cmpclr,>= %r28,%r31,%r0
	b,n .L771
	cmpclr,<<= %r25,%r26,%r0
	b,n .L772
	cmpb,<<,n %r25,%r26,.L773
	ldi 1,%r28
	b,n .L769
.L770:
	ldi 0,%r28
.L769:
	bve,n (%r2)
.L771:
	b .L769
	ldi 2,%r28
.L772:
	b .L769
	ldi 0,%r28
.L773:
	b .L769
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
	cmpb,*> %r24,%r26,.L781
	ldi 0,%r28
	cmpb,*< %r24,%r26,.L781
	ldi 2,%r28
	cmpb,*>> %r23,%r25,.L781
	ldi 0,%r28
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L776:
.L781:
	bve,n (%r2)
	b .L776
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
	extrw,u %r26,31,16,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0+1-1,1,%r31
	depw,z %r31,27,28,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	extrw,u %r26,31,8,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0+1-1,1,%r28
	depw,z %r28,28,29,%r28
	mtsar %r28
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	extrw,u %r26,31,4,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0+1-1,1,%r31
	depw,z %r31,29,30,%r31
	mtsar %r31
	shrpw %r0,%r26,%sar,%r26
	add,l %r28,%r31,%r28
	extrw,u %r26,31,2,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,1,%r31
	add,l %r31,%r31,%r31
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
	or,*>= %r0,%r25,%r3
	subi 0,%r3,%r3
	ldo -1(%r3),%r3
	extrd,s %r3,0,1,%r3
	extrd,s %r3,63,32,%r28
	and %r28,%r26,%r26
	andcm %r25,%r28,%r28
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
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
	cmpb,*<> %r0,%r25,.L785
	ldo -48(%r30),%r29
	ldi 0,%r28
	cmpb,*= %r28,%r26,.L788
	ldd -144(%r30),%r2
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	b .L786
	extrd,s %r28,63,32,%r28
.L785:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L786:
	ldd -144(%r30),%r2
.L788:
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
	bb,>= %r25,26,.L790
	extrd,s %r25,63,32,%r19
	ldi 0,%r28
	depd %r28,0+32-1,32,%r28
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	depd %r26,32+32-1,32,%r28
.L792:
	bve,n (%r2)
.L790:
	cmpb,*= %r0,%r19,.L793
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
	b .L792
	depd %r31,32+32-1,32,%r28
.L793:
	b .L792
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
	bb,>= %r24,25,.L795
	extrd,s %r24,63,32,%r31
	ldi 0,%r28
	mtsar %r24
	shrpd %r0,%r26,%sar,%r29
.L797:
	bve,n (%r2)
.L795:
	cmpb,*= %r0,%r31,.L798
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r19
	extrd,s %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L797
	or %r26,%r29,%r29
.L798:
	copy %r26,%r28
	b .L797
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
	extrd,u %r25,63,32,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r29
	extrd,u %r29,31,32,%r31
	extrd,u %r26,31,32,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r31,%r19,%r31
	extrd,u %r31,31,32,%r28
	extrd,u %r31,63,32,%r31
	extrd,u %r29,63,32,%r29
	extrd,u %r25,31,32,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr22
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r19
	add,l %r31,%r19,%r31
	depd,z %r31,31,32,%r19
	extrd,u %r31,31,32,%r31
	add,l %r31,%r28,%r28
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r31,%r28,%r28
	add,l %r19,%r29,%r29
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
	copy %r26,%r7
	copy %r25,%r3
	copy %r24,%r6
	copy %r23,%r5
	copy %r23,%r25
	ldo -48(%r30),%r29
	b,l __mulddi3,%r2
	copy %r3,%r26
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
	extrd,u %r6,31,32,%r24
	extrd,u %r3,31,32,%r19
	std %r19,-168(%r30)
	fldd -168(%r30),%fr22
	std %r3,-168(%r30)
	fldd -168(%r30),%fr23
	std %r24,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-168(%r30)
	ldd -168(%r30),%r24
	std %r6,-168(%r30)
	fldd -168(%r30),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r3,-168(%r30)
	fldd -168(%r30),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,-168(%r30)
	ldd -168(%r30),%r3
	fstd %fr22,-168(%r30)
	ldd -168(%r30),%r19
	add,l %r24,%r19,%r24
	depd,z %r24,31,32,%r24
	add,l %r24,%r3,%r24
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
	xor %r26,%r25,%r26
	extrd,s %r26,0+32-1,32,%r31
	xor %r31,%r26,%r31
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
	shrpd %r26,%r25,1,%r31
	extrd,u %r26,62,63,%r22
	addil LT'.LC40,%r27
	ldd RT'.LC40(%r1),%r19
	ldd 0(%r19),%r21
	and %r22,%r21,%r19
	and %r31,%r21,%r20
	sub %r29,%r20,%r29
	sub,db %r28,%r19,%r28
	copy %r28,%r19
	shrpd %r19,%r29,2,%r19
	extrd,u %r28,61,62,%r20
	addil LT'.LC41,%r27
	ldd RT'.LC41(%r1),%r31
	ldd 0(%r31),%r31
	and %r20,%r31,%r21
	and %r19,%r31,%r22
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
	add,l %r28,%r29,%r28
	extrd,u %r28,31,32,%r31
	add,l %r31,%r28,%r28
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
	b .L814
	fldd 0(%r28),%fr22
.L817:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L813
	extrd,s %r28,63,32,%r31
	fmpy,dbl %fr4,%fr4,%fr4
.L814:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L817
	extrw,u %r31,0,1,%r28
	b .L817
	fmpy,dbl %fr22,%fr4,%fr22
.L813:
	cmpb,*= %r0,%r25,.L815
	fcpy,dbl %fr22,%fr4
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	fldd 0(%r28),%fr4
	fdiv,dbl %fr4,%fr22,%fr4
.L815:
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
	b .L821
	fldw 0(%r28),%fr22R
.L824:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L820
	extrd,s %r28,63,32,%r31
	fmpy,sgl %fr4R,%fr4R,%fr4R
.L821:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L824
	extrw,u %r31,0,1,%r28
	b .L824
	fmpy,sgl %fr22R,%fr4R,%fr22R
.L820:
	cmpb,*= %r0,%r25,.L822
	fcpy,sgl %fr22R,%fr4R
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	fldw 0(%r28),%fr4R
	fdiv,sgl %fr4R,%fr22R,%fr4R
.L822:
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
	b,n .L827
	cmpclr,>>= %r28,%r31,%r0
	b,n .L828
	cmpclr,<<= %r25,%r26,%r0
	b,n .L829
	cmpb,<<,n %r25,%r26,.L830
	ldi 1,%r28
	b,n .L826
.L827:
	ldi 0,%r28
.L826:
	bve,n (%r2)
.L828:
	b .L826
	ldi 2,%r28
.L829:
	b .L826
	ldi 0,%r28
.L830:
	b .L826
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
	cmpb,*>> %r24,%r26,.L838
	ldi 0,%r28
	cmpb,*<< %r24,%r26,.L838
	ldi 2,%r28
	cmpb,*>> %r23,%r25,.L838
	ldi 0,%r28
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L833:
.L838:
	bve,n (%r2)
	b .L833
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
