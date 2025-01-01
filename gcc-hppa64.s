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
	cmpb,*= %r0,%r23,.L13
	extrd,u %r24,63,8,%r24
.L12:
	ldb 0(%r25),%r28
	cmpb,*= %r28,%r24,.L13
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
	cmpb,=,n %r28,%r25,.L20
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
	cmpb,*= %r0,%r24,.L32
	ldi 0,%r28
.L26:
	ldb 0(%r26),%r31
	ldb 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L27
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	cmpb,*<> %r0,%r24,.L26
	ldo 1(%r25),%r25
.L27:
	ldi 0,%r28
.L32:
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
	.CALLINFO FRAME=0,NO_CALLS
	.ENTRY
	cmpb,*= %r0,%r24,.L34
	copy %r26,%r28
	add,l %r26,%r24,%r24
	copy %r26,%r31
.L35:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r25),%r19
	cmpb,*<> %r24,%r31,.L35
	stb %r19,-1(%r31)
.L34:
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
.L38:
	cmpb,*= %r28,%r24,.L42
	add,l %r26,%r24,%r31
	ldb 0(%r31),%r31
	cmpb,= %r31,%r25,.L43
	ldo -1(%r24),%r19
	b .L38
	copy %r19,%r24
.L43:
	b .L37
	add,l %r26,%r24,%r28
.L42:
	ldi 0,%r28
.L37:
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
	cmpb,*= %r0,%r24,.L45
	extrd,s %r25,63,32,%r25
	add,l %r26,%r24,%r24
	copy %r26,%r31
	extrd,u %r25,63,8,%r25
	stb %r25,0(%r31)
.L48:
	ldo 1(%r31),%r31
	cmpb,*<>,n %r24,%r31,.L48
	stb %r25,0(%r31)
.L45:
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
	cmpb,*= %r0,%r19,.L50
	stb %r31,0(%r26)
	ldb,mb 1(%r25),%r31
.L53:
	stb,mb %r31,1(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L53
	ldb,mb 1(%r25),%r31
.L50:
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
	ldb 0(%r26),%r28
	cmpb,*= %r0,%r28,.L60
	extrd,u %r25,63,8,%r25
	ldb 0(%r26),%r28
.L62:
	cmpb,=,n %r28,%r25,.L61
	ldb,mb 1(%r26),%r28
	extrd,s %r28,63,8,%r28
	cmpb,*<>,n %r0,%r28,.L62
	ldb 0(%r26),%r28
	b .L54
	copy %r26,%r28
.L60:
	b .L54
	copy %r26,%r28
.L61:
	copy %r26,%r28
.L54:
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
	copy %r26,%r28
	extrd,s %r25,63,32,%r25
	ldb 0(%r28),%r31
.L67:
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r31,%r25,.L64
	ldo 1(%r28),%r28
	ldb -1(%r28),%r31
	cmpb,*<>,n %r0,%r31,.L67
	ldb 0(%r28),%r31
	ldi 0,%r28
.L64:
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
	copy %r26,%r19
	ldo -1(%r24),%r24
	cmpb,*= %r0,%r28,.L83
	add,l %r26,%r24,%r20
.L82:
	ldb 0(%r25),%r31
	sub %r20,%r19,%r28
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
	ldb 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L83
	ldb,mb 1(%r19),%r28
	extrd,u %r28,63,8,%r28
	cmpb,*<> %r0,%r28,.L82
	ldo 1(%r25),%r25
.L83:
	ldb 0(%r19),%r28
	ldb 0(%r25),%r31
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
	b .L135
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L139
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L141
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	b .L135
	fldd 0(%r28),%fr4
.L141:
	fsub,dbl %fr4,%fr5,%fr4
.L135:
	bve,n (%r2)
.L139:
	b .L135
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
	b .L143
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L147
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L149
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	b .L143
	fldw 0(%r28),%fr4R
.L149:
	fsub,sgl %fr4R,%fr5R,%fr4R
.L143:
	bve,n (%r2)
.L147:
	b .L143
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
	b,n .L151
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
	b,n .L151
	b .L151
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
	b,n .L151
	fcpy,dbl %fr5,%fr4
.L151:
	bve (%r2)
	ldo -64(%r30),%r30
.L157:
	b .L151
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
	b,n .L160
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
	b,n .L160
	b .L160
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
	b,n .L160
	fcpy,sgl %fr5R,%fr4R
.L160:
	bve (%r2)
	ldo -64(%r30),%r30
.L166:
	b .L160
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
	b .L169
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
.L169:
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
	b .L169
	copy %r5,%r29
.L176:
	copy %r6,%r28
	b .L169
	copy %r7,%r29
.L177:
	copy %r6,%r28
	b .L169
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
	b,n .L179
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r31
	extrd,u %r31,0+1-1,1,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	extrd,u %r28,0+1-1,1,%r28
	cmpb,=,n %r28,%r31,.L181
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	cmpb,*<= %r0,%r28,.L179
	fcpy,dbl %fr5,%fr4
	b .L179
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
.L179:
.L188:
	bve (%r2)
	ldo -64(%r30),%r30
.L185:
	b .L179
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
	b,n .L189
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	depwi 0,31,31,%r31
	fstd %fr5,-56(%r30)
	ldd -56(%r30),%r28
	depwi 0,31,31,%r28
	cmpb,=,n %r28,%r31,.L191
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r28
	cmpib,<= 0,%r28,.L189
	fcpy,sgl %fr5R,%fr4R
	b .L189
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
.L189:
.L198:
	bve (%r2)
	ldo -64(%r30),%r30
.L195:
	b .L189
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
	b .L199
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
.L199:
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
	b .L199
	copy %r7,%r29
.L206:
	copy %r3,%r28
	b .L199
	copy %r5,%r29
.L207:
	copy %r6,%r28
	b .L199
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
.L223:
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
	b .L223
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
	b .L230
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
.L230:
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
	b .L230
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
	ldi 0,%r28
.L244:
	shladd,l %r28,2,%r28,%r28 
	add,l %r28,%r28,%r28
	ldo 1(%r3),%r3
	ldb -1(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	sub %r28,%r31,%r28
	ldb 0(%r3),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>= 9,%r31,.L244
	extrd,s %r28,63,32,%r28
.L243:
	cmpb,*<> %r0,%r19,.L250
	ldd -160(%r30),%r2
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L250:
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
.L263:
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
	cmpib,>>=,n 9,%r31,.L263
	shladd,l %r28,2,%r28,%r28
	sub %r0,%r28,%r31
.L264:
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
	b .L264
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
	b .L266
	ldo -48(%r30),%r5
.L267:
	ldo 1(%r3),%r3
.L266:
	ldb 0(%r3),%r26
	extrw,s %r26,31,8,%r26
	copy %r5,%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L267
	copy %r4,%r27
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L273
	ldi 45,%r31
	cmpb,<> %r31,%r28,.L269
	ldi 0,%r19
	ldi 1,%r19
.L268:
	ldo 1(%r3),%r3
.L269:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	ldo -48(%r28),%r28
	cmpib,<< 9,%r28,.L275
	ldi 0,%r28
	shladd,l %r28,2,%r28,%r28
.L277:
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
	cmpib,>>=,n 9,%r31,.L277
	shladd,l %r28,2,%r28,%r28
	sub %r0,%r28,%r31
.L278:
	cmpiclr,*<> 0,%r19,%r0
	copy %r31,%r28
	ldd -160(%r30),%r2
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r5
.L273:
	b .L268
	ldi 0,%r19
.L275:
	b .L278
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
	cmpb,*= %r0,%r24,.L284
	copy %r22,%r8
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr13
	b .L283
	ldo -48(%r30),%r9
.L287:
	extrd,u %r5,62,63,%r5
.L282:
	cmpb,*= %r0,%r5,.L286
	ldi 0,%r3
.L283:
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
	cmpib,> 0,%r28,.L287
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L279
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	extrd,u %r5,62,63,%r28
	b .L282
	uaddcm %r5,%r28,%r5
.L286:
.L279:
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
	fldd,ma 8(%r1),%fr13
	fldd,ma 8(%r1),%fr12
	bve (%r2)
	ldo -208(%r30),%r30
.L284:
	b .L279
	ldi 0,%r3
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
	cmpib,= 0,%r24,.L292
	extrd,s %r24,63,32,%r5
	extrd,u %r23,31,32,%r28
	std %r28,-200(%r30)
	fldd -200(%r30),%fr13
	b .L291
	ldo -48(%r30),%r10
.L290:
	extrw,s %r5,30,31,%r28
.L295:
	cmpib,= 0,%r28,.L294
	extrd,s %r28,63,32,%r5
.L291:
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
	cmpb,*= %r0,%r28,.L288
	copy %r4,%r27
	cmpib,>= 0,%r28,.L295
	extrw,s %r5,30,31,%r28
	fstd %fr12,-200(%r30)
	ldd -200(%r30),%r28
	add,l %r3,%r28,%r6
	ldo -1(%r5),%r5
	b .L290
	extrd,s %r5,63,32,%r5
.L294:
	ldi 0,%r3
.L288:
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
.L292:
	b .L288
	ldi 0,%r3
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
	cmpb,*= %r0,%r28,.L311
	extrd,u %r25,63,32,%r25
	ldw 0(%r26),%r28
.L310:
	cmpb,=,n %r28,%r25,.L305
	ldw,mb 4(%r26),%r28
	cmpib,<>,n 0,%r28,.L310
	ldw 0(%r26),%r28
.L305:
	ldw 0(%r26),%r28
.L311:
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
	cmpb,<>,n %r28,%r31,.L314
	ldw 0(%r26),%r28
.L320:
	cmpb,*=,n %r0,%r28,.L314
	ldw 0(%r25),%r28
	cmpb,*=,n %r0,%r28,.L314
	ldw,mb 4(%r26),%r31
	ldw,mb 4(%r25),%r28
	cmpb,=,n %r28,%r31,.L320
	ldw 0(%r26),%r28
.L314:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L316
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L317
	ldi 1,%r28
	ldi 0,%r28
.L317:
	extrd,u %r28,63,1,%r28
.L316:
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
.L322:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L322
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
	cmpb,*= %r0,%r28,.L327
	copy %r26,%r28
	ldw,mb 4(%r28),%r31
.L329:
	cmpib,<>,n 0,%r31,.L329
	ldw,mb 4(%r28),%r31
	sub %r28,%r26,%r28
.L330:
	bve (%r2)
	extrd,s %r28,61,62,%r28
.L327:
	b .L330
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
	cmpb,*= %r0,%r24,.L340
	ldi 0,%r28
.L332:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,<> %r28,%r31,.L340
	ldi 0,%r28
	cmpb,*=,n %r0,%r31,.L333
	ldw 0(%r25),%r28
	cmpb,*=,n %r0,%r28,.L333
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L332
	ldo 4(%r25),%r25
.L333:
	ldi 0,%r28
.L340:
	cmpb,*=,n %r28,%r24,.L335
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L335
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L336
	ldi 1,%r28
	ldi 0,%r28
.L336:
	extrd,u %r28,63,1,%r28
.L335:
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
	cmpb,*= %r0,%r24,.L343
	extrd,u %r25,63,32,%r25
.L342:
	ldw 0(%r26),%r28
	cmpb,=,n %r28,%r25,.L343
	ldo -1(%r24),%r24
	cmpb,*<> %r0,%r24,.L342
	ldo 4(%r26),%r26
.L343:
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
	cmpb,*= %r0,%r24,.L357
	ldi 0,%r28
.L349:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,<>,n %r28,%r31,.L350
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	cmpb,*<> %r0,%r24,.L349
	ldo 4(%r25),%r25
.L350:
	ldi 0,%r28
.L357:
	cmpb,*=,n %r28,%r24,.L352
	ldw 0(%r26),%r19
	ldw 0(%r25),%r31
	cmpb,>> %r31,%r19,.L352
	ldi -1,%r28
	cmpb,<< %r31,%r19,.L353
	ldi 1,%r28
	ldi 0,%r28
.L353:
	extrd,u %r28,63,1,%r28
.L352:
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
	cmpb,*= %r0,%r24,.L359
	ldo -1(%r24),%r31
	copy %r26,%r19
	ldi -1,%r21
.L360:
	ldo 4(%r25),%r25
	ldo 4(%r19),%r19
	ldw -4(%r25),%r20
	ldo -1(%r31),%r31
	cmpb,*<> %r21,%r31,.L360
	stw %r20,-4(%r19)
.L359:
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
	cmpb,*= %r25,%r26,.L363
	copy %r26,%r28
	sub %r26,%r25,%r31
	depd,z %r24,61,62,%r19
	cmpb,*>> %r19,%r31,.L364
	ldo -1(%r24),%r19
	copy %r26,%r31
	cmpb,*= %r0,%r24,.L363
	ldi -1,%r21
.L365:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r20
	ldo -1(%r19),%r19
	cmpb,*<> %r21,%r19,.L365
	stw %r20,-4(%r31)
	b,n .L363
.L364:
	cmpb,*= %r0,%r24,.L363
	ldo -1(%r24),%r24
	shladd,l %r24,2,%r25,%r19
	shladd,l %r24,2,%r26,%r31
	ldo -4(%r25),%r25
.L366:
	ldw 0(%r19),%r20
	stw %r20,0(%r31)
	ldo -4(%r19),%r19
	cmpb,*<> %r25,%r19,.L366
	ldo -4(%r31),%r31
.L363:
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
	cmpb,*= %r0,%r24,.L372
	ldo -1(%r24),%r31
	copy %r26,%r19
	ldi -1,%r20
.L373:
	ldo 4(%r19),%r19
	ldo -1(%r31),%r31
	cmpb,*<> %r20,%r31,.L373
	stw %r25,-4(%r19)
.L372:
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
	cmpb,*<<= %r25,%r26,.L376
	add,l %r26,%r24,%r28
	cmpb,*= %r0,%r24,.L375
	add,l %r25,%r24,%r25
.L378:
	ldb,mb -1(%r28),%r31
	cmpb,*<> %r28,%r26,.L378
	stb,mb %r31,-1(%r25)
.L375:
	bve,n (%r2)
.L376:
	cmpb,*= %r25,%r26,.L375
	nop
	cmpb,*= %r0,%r24,.L375
	add,l %r26,%r24,%r24
.L379:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
	ldb -1(%r26),%r28
	cmpb,*<> %r24,%r26,.L379
	stb %r28,-1(%r25)
	b,n .L375
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
.L398:
	mtsar %r31
	shrpw %r0,%r26,%sar,%r28
	extrd,u %r28,63,1,%r28
	cmpb,*<> %r0,%r28,.L400
	ldo 1(%r31),%r28
	cmpb,<> %r19,%r28,.L398
	extrd,u %r28,63,32,%r31
	b .L397
	ldi 0,%r28
.L400:
	extrd,s %r28,63,32,%r28
.L397:
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
	cmpib,= 0,%r26,.L404
	extrd,s %r26,63,32,%r19
	extrd,u %r19,63,1,%r28
	cmpb,*<> %r0,%r28,.L402
	ldi 1,%r28
.L403:
	extrw,s %r19,30,31,%r31
	extrd,s %r31,63,32,%r19
	ldo 1(%r28),%r28
	extrd,u %r31,63,1,%r31
	cmpb,*= %r0,%r31,.L403
	extrd,s %r28,63,32,%r28
.L402:
	bve,n (%r2)
.L404:
	b .L402
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
	b .L408
	ldi 1,%r28
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r31
	fldw 0(%r31),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L409
	ldi 0,%r28
.L409:
	extrd,u %r28,63,1,%r28
.L408:
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
	b .L412
	ldi 1,%r28
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r31
	fldd 0(%r31),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L413
	ldi 0,%r28
.L413:
	extrd,u %r28,63,1,%r28
.L412:
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
	cmpb,*> %r0,%r31,.L416
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
	b,n .L419
.L417:
	extrd,u %r3,63,1,%r28
.L416:
	ldd -160(%r30),%r2
	ldd -136(%r30),%r5
	ldd -128(%r30),%r4
	ldd -120(%r30),%r3
	bve (%r2)
	ldd,mb -144(%r30),%r6
.L419:
	b .L417
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
	b .L422
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr4R,%fr22R
	ftest
	b,n .L422
	cmpib,> 0,%r25,.L427
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L425
	fldw 0(%r28),%fr22R
.L427:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	b .L425
	fldw 0(%r28),%fr22R
.L428:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L422
	extrd,s %r28,63,32,%r25
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L425:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L428
	extrw,u %r25,0,1,%r28
	b .L428
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L422:
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
	b .L430
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr4,%fr22
	ftest
	b,n .L430
	cmpib,> 0,%r25,.L435
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L433
	fldd 0(%r28),%fr22
.L435:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	b .L433
	fldd 0(%r28),%fr22
.L436:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L430
	extrd,s %r28,63,32,%r25
	fmpy,dbl %fr22,%fr22,%fr22
.L433:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L436
	extrw,u %r25,0,1,%r28
	b .L436
	fmpy,dbl %fr4,%fr22,%fr4
.L430:
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
	cmpb,*<> %r0,%r28,.L438
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
	cmpb,*= %r0,%r28,.L438
	copy %r4,%r27
	cmpib,> 0,%r6,.L445
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r3
	ldd 8(%r28),%r5
.L440:
	b .L442
	ldo -48(%r30),%r9
.L445:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r3
	b .L440
	ldd 8(%r28),%r5
.L441:
	extrw,u %r6,0,1,%r31
.L446:
	add,l %r31,%r6,%r31
	extrw,s %r31,30,31,%r31
	cmpib,= 0,%r31,.L438
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
.L442:
	extrd,u %r6,63,1,%r31
	cmpb,*= %r0,%r31,.L446
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
	b .L441
	copy %r29,%r7
.L438:
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
	cmpb,*= %r0,%r24,.L448
	copy %r26,%r28
	add,l %r25,%r24,%r24
	copy %r26,%r31
.L449:
	ldo 1(%r25),%r25
	ldb -1(%r25),%r20
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	xor %r19,%r20,%r19
	cmpb,*<> %r24,%r25,.L449
	stb %r19,-1(%r31)
.L448:
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
	cmpb,*= %r0,%r3,.L453
	add,l %r6,%r28,%r28
.L452:
	ldb 0(%r5),%r31
	stb %r31,0(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*= %r0,%r31,.L453
	ldo 1(%r5),%r5
	ldo -1(%r3),%r3
	cmpb,*<> %r0,%r3,.L452
	ldo 1(%r28),%r28
.L453:
	cmpclr,*<> %r0,%r3,%r0
	stb %r0,0(%r28)
.L455:
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
	cmpb,*= %r28,%r25,.L457
	add,l %r26,%r28,%r31
.L463:
	ldb 0(%r31),%r31
	cmpclr,*= %r0,%r31,%r0
	b,n .L460
.L457:
	bve,n (%r2)
.L460:
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L463
	add,l %r26,%r28,%r31
	b,n .L457
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
	ldb 0(%r26),%r31
	cmpb,*= %r0,%r31,.L471
	copy %r26,%r28
	copy %r25,%r31
.L474:
	ldb 0(%r31),%r19
.L473:
	cmpb,*= %r0,%r19,.L472
	ldo 1(%r31),%r31
	ldb -1(%r31),%r20
	extrd,s %r20,63,8,%r20
	ldb 0(%r28),%r19
	extrd,s %r19,63,8,%r19
	cmpb,<>,n %r19,%r20,.L473
	ldb 0(%r31),%r19
.L466:
	bve,n (%r2)
.L471:
	b .L466
	ldi 0,%r28
.L472:
	ldb,mb 1(%r28),%r31
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L474
	copy %r25,%r31
	b .L466
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
	b .L477
	ldi 0,%r28
.L476:
	ldo 1(%r26),%r26
.L481:
	ldb -1(%r26),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L480
.L477:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r31,%r25,.L476
	copy %r26,%r28
	b .L481
	ldo 1(%r26),%r26
.L480:
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
	cmpb,*= %r0,%r28,.L482
	copy %r28,%r7
	ldb 0(%r6),%r8
	extrd,s %r8,63,8,%r8
	ldo -48(%r30),%r5
.L484:
	copy %r8,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strchr,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L482
	copy %r28,%r3
	copy %r7,%r24
	copy %r6,%r25
	copy %r3,%r26
	copy %r5,%r29
	b,l strncmp,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L482
	copy %r4,%r27
	b .L484
	ldo 1(%r3),%r3
.L482:
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
	b,n .L494
	fcmp,dbl,!> %fr4,%fr0
.L496:
	ftest
	b,n .L495
	b,n .L491
.L495:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L490
.L491:
	bve,n (%r2)
.L494:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L490
	b .L496
	fcmp,dbl,!> %fr4,%fr0
.L490:
	b .L491
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
	cmpb,*= %r0,%r23,.L502
	add,l %r26,%r5,%r5
	cmpb,*>> %r23,%r25,.L499
	ldi 1,%r28
	ldi 0,%r28
.L499:
	extrd,u %r28,63,8,%r28
	cmpclr,*= %r0,%r28,%r0
	b,n .L503
	cmpb,*<<,n %r5,%r3,.L504
	ldb 0(%r24),%r6
	extrd,s %r6,63,8,%r6
	ldo 1(%r24),%r8
	ldo -1(%r23),%r7
	b .L501
	ldo -48(%r30),%r9
.L500:
	ldo 1(%r3),%r3
.L508:
	cmpb,*>> %r3,%r5,.L507
	ldi 0,%r28
.L501:
	ldb 0(%r3),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r6,%r28,.L508
	ldo 1(%r3),%r3
	copy %r7,%r24
	copy %r8,%r25
	ldo 1(%r3),%r26
	copy %r9,%r29
	b,l memcmp,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L500
	copy %r4,%r27
	copy %r3,%r28
.L507:
.L497:
	ldd -192(%r30),%r2
	ldd -168(%r30),%r8
	ldd -160(%r30),%r7
	ldd -152(%r30),%r6
	ldd -144(%r30),%r5
	ldd -136(%r30),%r4
	ldd -128(%r30),%r3
	bve (%r2)
	ldd,mb -176(%r30),%r9
.L502:
	b .L497
	copy %r26,%r28
.L503:
	b .L497
	ldi 0,%r28
.L504:
	b .L497
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
	b,n .L523
	ldi 0,%r19
.L511:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L525
	ldi 0,%r28
	b .L530
	ldi 1,%r28
.L525:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr23
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r31
	fldd 0(%r31),%fr22
.L515:
	ldo 1(%r28),%r28
	fmpy,dbl %fr4,%fr23,%fr4
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L515
	extrd,s %r28,63,32,%r28
.L516:
	cmpb,*= %r0,%r19,.L520
	stw %r28,0(%r25)
	fneg,dbl %fr4,%fr4
.L520:
	bve,n (%r2)
.L523:
	fneg,dbl %fr4,%fr4
	b .L511
	ldi 1,%r19
.L530:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L517
	ldi 0,%r28
.L517:
	extrd,u %r28,63,8,%r28
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L518
	ldi 1,%r31
	ldi 0,%r31
.L518:
	and %r28,%r31,%r31
	ldi 0,%r28
	cmpb,*= %r28,%r31,.L516
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r31
	fldd 0(%r31),%fr22
.L519:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L519
	extrd,s %r28,63,32,%r28
	b,n .L516
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
	cmpb,*= %r0,%r26,.L531
	ldi 0,%r28
.L533:
	extrd,s %r26,63+1-1,1,%r31
	and %r25,%r31,%r31
	add,l %r28,%r31,%r28
	extrd,u %r26,62,63,%r26
	cmpb,*<> %r0,%r26,.L533
	depd,z %r25,62,63,%r25
.L531:
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
	cmpb,<< %r25,%r26,.L537
	ldi 0,%r29
.L538:
	ldi 0,%r31
.L552:
	cmpclr,*= %r31,%r20,%r0
	b,n .L540
.L541:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L539:
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,u %r31,0,1,%r31
	and %r31,%r22,%r31
	cmpib,= 0,%r31,.L552
	ldi 0,%r31
.L537:
	cmpib,> 0,%r19,.L538
	add,l %r19,%r19,%r21
	extrd,u %r21,63,32,%r19
	add,l %r20,%r20,%r31
	extrd,u %r31,63,32,%r20
	cmpb,<< %r21,%r28,.L539
	copy %r23,%r22
	b .L539
	copy %r29,%r22
.L543:
	extrd,u %r20,62,63,%r20
.L553:
	cmpb,*= %r0,%r20,.L541
	extrd,u %r19,62,63,%r19
.L540:
	cmpb,>>,n %r19,%r28,.L553
	extrd,u %r20,62,63,%r20
	sub %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r20,%r31
	b .L543
	extrd,u %r31,63,32,%r31
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
	cmpb,*=,n %r0,%r26,.L556
	depw,z %r26,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
.L555:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L556:
	b .L555
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
	cmpb,*= %r26,%r28,.L559
	xor %r28,%r26,%r31
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	copy %r31,%r26
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L558:
	ldd -144(%r30),%r2
	bve (%r2)
	ldd,mb -128(%r30),%r4
.L559:
	b .L558
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
	cmpib,= 0,%r26,.L563
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L562:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L562
	extrd,u %r25,63,32,%r25
.L561:
	bve,n (%r2)
.L563:
	b .L561
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
	cmpb,*<<= %r25,%r26,.L566
	extrd,u %r21,63,32,%r22
.L569:
	cmpb,*=,n %r0,%r20,.L568
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,3,%r25,%r20
.L572:
	ldd 0(%r28),%r19
	std %r19,0(%r31)
	ldo 8(%r28),%r28
	cmpb,*<> %r20,%r28,.L572
	ldo 8(%r31),%r31
.L568:
	cmpb,>>=,n %r21,%r23,.L565
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r22,%r25
	add,l %r25,%r24,%r25
.L573:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L573
	ldo 1(%r26),%r26
.L565:
	bve,n (%r2)
.L566:
	add,l %r25,%r23,%r28
	cmpb,*>> %r26,%r28,.L569
	nop
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r23,.L565
	ldi -1,%r19
.L574:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L574
	stb %r31,0(%r28)
	b,n .L565
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
	cmpb,*<<= %r25,%r26,.L580
	extrd,u %r24,32+31-1,31,%r20
.L583:
	cmpb,*=,n %r0,%r20,.L582
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,1,%r25,%r20
.L586:
	ldh 0(%r28),%r19
	sth %r19,0(%r31)
	ldo 2(%r28),%r28
	cmpb,*<> %r20,%r28,.L586
	ldo 2(%r31),%r31
.L582:
	extrd,u %r21,63,1,%r21
	cmpb,*= %r0,%r21,.L579
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
.L579:
	bve,n (%r2)
.L580:
	add,l %r25,%r21,%r28
	cmpb,*>> %r26,%r28,.L583
	nop
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r21,.L579
	ldi -1,%r19
.L587:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L587
	stb %r31,0(%r28)
	b,n .L579
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
	cmpb,*<<= %r25,%r26,.L592
	extrd,u %r21,63,32,%r22
.L595:
	cmpb,*=,n %r0,%r20,.L594
	copy %r25,%r28
	copy %r26,%r31
	shladd,l %r20,2,%r25,%r20
.L598:
	ldw 0(%r28),%r19
	stw %r19,0(%r31)
	ldo 4(%r28),%r28
	cmpb,*<> %r20,%r28,.L598
	ldo 4(%r31),%r31
.L594:
	cmpb,>>=,n %r21,%r23,.L591
	add,l %r25,%r22,%r28
	add,l %r26,%r22,%r26
	ldo 1(%r25),%r25
	uaddcm %r24,%r21,%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r22,%r25
	add,l %r25,%r24,%r25
.L599:
	ldb 0(%r28),%r31
	stb %r31,0(%r26)
	ldo 1(%r28),%r28
	cmpb,*<> %r25,%r28,.L599
	ldo 1(%r26),%r26
.L591:
	bve,n (%r2)
.L592:
	add,l %r25,%r23,%r28
	cmpb,*>> %r26,%r28,.L595
	nop
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	cmpb,*= %r0,%r23,.L591
	ldi -1,%r19
.L600:
	add,l %r25,%r24,%r28
	ldb 0(%r28),%r31
	add,l %r26,%r24,%r28
	ldo -1(%r24),%r24
	cmpb,*<> %r19,%r24,.L600
	stb %r31,0(%r28)
	b,n .L591
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
.L613:
	ldo 16(%r28),%r31
	mtsar %r31
	bb,< %r26,%sar,.L612
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L613
	extrd,s %r31,63,32,%r28
.L612:
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
.L617:
	mtsarcm %r28
	bb,< %r26,%sar,.L616
	ldo 1(%r28),%r31
	cmpb,<> %r19,%r31,.L617
	extrd,s %r31,63,32,%r28
.L616:
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
	b .L623
	ldil L'32768,%r31
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
.L619:
	bve (%r2)
	ldo -64(%r30),%r30
.L623:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,-56(%r30)
	ldd -56(%r30),%r28
	b .L619
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
	ldi 0,%r20
	copy %r20,%r31
	extrd,u %r26,63,16,%r26
	ldi 16,%r21
.L626:
	mtsarcm %r31
	extrw,u %r26,%sar,1,%r28
	add,l %r28,%r20,%r28
	extrd,s %r28,63,32,%r20
	ldo 1(%r31),%r19
	cmpb,<> %r21,%r19,.L626
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
	ldi 0,%r28
	copy %r28,%r31
	extrd,u %r26,63,16,%r26
	ldi 16,%r20
.L629:
	mtsarcm %r31
	extrw,u %r26,%sar,1,%r19
	add,l %r19,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 1(%r31),%r19
	cmpb,<> %r20,%r19,.L629
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
	cmpib,= 0,%r26,.L634
	extrd,u %r25,63,32,%r25
	ldi 0,%r28
.L633:
	extrw,s %r31,31+1-1,1,%r19
	and %r19,%r25,%r19
	add,l %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r31,62,63,%r31
	add,l %r25,%r25,%r25
	cmpb,*<> %r0,%r31,.L633
	extrd,u %r25,63,32,%r25
.L632:
	bve,n (%r2)
.L634:
	b .L632
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
	cmpib,= 0,%r26,.L639
	extrd,u %r25,63,32,%r25
	cmpb,*= %r0,%r25,.L637
	ldi 0,%r28
.L638:
	extrw,s %r25,31+1-1,1,%r19
	and %r19,%r31,%r19
	add,l %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	add,l %r31,%r31,%r31
	extrd,u %r25,62,63,%r25
	cmpb,*<> %r0,%r25,.L638
	extrd,u %r31,63,32,%r31
.L637:
	bve,n (%r2)
.L639:
	b .L637
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
	cmpb,<< %r25,%r26,.L643
	ldi 0,%r29
.L644:
	ldi 0,%r31
.L658:
	cmpclr,*= %r31,%r20,%r0
	b,n .L646
.L647:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L645:
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,u %r31,0,1,%r31
	and %r31,%r22,%r31
	cmpib,= 0,%r31,.L658
	ldi 0,%r31
.L643:
	cmpib,> 0,%r19,.L644
	add,l %r19,%r19,%r21
	extrd,u %r21,63,32,%r19
	add,l %r20,%r20,%r31
	extrd,u %r31,63,32,%r20
	cmpb,<< %r21,%r28,.L645
	copy %r23,%r22
	b .L645
	copy %r29,%r22
.L649:
	extrd,u %r20,62,63,%r20
.L659:
	cmpb,*= %r0,%r20,.L647
	extrd,u %r19,62,63,%r19
.L646:
	cmpb,>>,n %r19,%r28,.L659
	extrd,u %r20,62,63,%r20
	sub %r28,%r19,%r28
	extrd,u %r28,63,32,%r28
	or %r31,%r20,%r31
	b .L649
	extrd,u %r31,63,32,%r31
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
	b,n .L663
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L662
	ldi 1,%r28
	ldi 0,%r28
.L662:
	extrd,u %r28,63,1,%r28
.L661:
	bve,n (%r2)
.L663:
	b .L661
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
	b,n .L667
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L666
	ldi 1,%r28
	ldi 0,%r28
.L666:
	extrd,u %r28,63,1,%r28
.L665:
	bve,n (%r2)
.L667:
	b .L665
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
	cmpib,> 0,%r25,.L679
	ldi 0,%r29
.L671:
	cmpb,*= %r0,%r20,.L677
	ldi 0,%r28
	copy %r28,%r19
	ldi 1,%r24
	ldi 31,%r23
	b .L674
	ldi 0,%r25
.L679:
	sub %r0,%r20,%r20
	extrd,s %r20,63,32,%r20
	b .L671
	ldi 1,%r29
.L673:
	and %r31,%r21,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L672
.L674:
	extrw,s %r20,31+1-1,1,%r31
	and %r31,%r26,%r31
	add,l %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	add,l %r26,%r26,%r26
	extrd,s %r26,63,32,%r26
	extrw,s %r20,30,31,%r31
	extrd,s %r31,63,32,%r20
	ldo 1(%r19),%r19
	extrd,u %r19,63,8,%r22
	extrd,s %r19,63,8,%r19
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	cmpb,>>= %r23,%r22,.L673
	copy %r24,%r21
	b .L673
	copy %r25,%r21
.L677:
.L672:
	cmpb,*=,n %r0,%r29,.L675
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L675:
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
	b,n .L685
.L681:
	cmpb,*> %r0,%r25,.L686
	ldi 1,%r28
.L682:
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
.L685:
	sub %r0,%r26,%r26
	b .L681
	ldi 1,%r3
.L686:
	sub %r0,%r25,%r25
	b .L682
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
	b,n .L691
.L688:
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
.L691:
	sub %r0,%r26,%r26
	b .L688
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
	cmpb,>> %r28,%r25,.L693
	ldi 0,%r22
.L694:
	ldi 0,%r31
.L708:
	cmpclr,*= %r31,%r19,%r0
	b,n .L696
.L697:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L695:
	extrw,s,>= %r31,31,16,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,48+1-1,1,%r31
	and %r31,%r20,%r31
	cmpb,*= %r0,%r31,.L708
	ldi 0,%r31
.L693:
	extrd,s %r25,63,16,%r31
	cmpib,> 0,%r31,.L694
	add,l %r19,%r19,%r31
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	extrd,u %r31,63,16,%r19
	cmpb,<< %r25,%r28,.L695
	copy %r21,%r20
	b .L695
	copy %r22,%r20
.L699:
	extrd,u %r19,62,63,%r19
.L709:
	cmpb,*= %r0,%r19,.L697
	extrd,u %r25,62,63,%r25
.L696:
	cmpb,>>,n %r25,%r28,.L709
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	or %r31,%r19,%r31
	b .L699
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
	cmpb,*<<= %r26,%r25,.L726
	ldi 1,%r19
	depdi,z 1,32,4,%r21
	ldi 1,%r22
	b .L711
	ldi 0,%r23
.L726:
	ldi 0,%r31
.L727:
	cmpclr,*= %r31,%r19,%r0
	b,n .L714
.L715:
	cmpiclr,*<> 0,%r24,%r0
	copy %r31,%r28
	bve,n (%r2)
.L713:
	or,*>= %r0,%r19,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,0,1,%r31
	and %r31,%r20,%r31
	cmpb,*= %r0,%r31,.L727
	ldi 0,%r31
.L711:
	and %r25,%r21,%r31
	cmpb,*<> %r0,%r31,.L727
	ldi 0,%r31
	depd,z %r25,62,63,%r25
	depd,z %r19,62,63,%r19
	cmpb,*<< %r25,%r28,.L713
	copy %r22,%r20
	b .L713
	copy %r23,%r20
.L717:
	extrd,u %r19,62,63,%r19
.L728:
	cmpb,*= %r0,%r19,.L715
	extrd,u %r25,62,63,%r25
.L714:
	cmpb,*>>,n %r25,%r28,.L728
	extrd,u %r19,62,63,%r19
	sub %r28,%r25,%r28
	b .L717
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
	bb,>= %r25,26,.L730
	extrd,s %r25,63,32,%r19
	ldi 0,%r28
	depd %r28,32+32-1,32,%r28
	extrd,u %r26,63,32,%r26
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	depd %r26,0+32-1,32,%r28
.L729:
	bve,n (%r2)
.L730:
	cmpb,*= %r0,%r19,.L733
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
	b .L729
	depd %r31,0+32-1,32,%r28
.L733:
	b .L729
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
	bb,>= %r24,25,.L735
	extrd,s %r24,63,32,%r31
	ldi 0,%r29
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	depd,z %r25,%sar,64,%r28
.L737:
	bve,n (%r2)
.L735:
	cmpb,*= %r0,%r31,.L738
	mtsarcm %r31
	depd,z %r25,%sar,64,%r29
	depd,z %r26,%sar,64,%r28
	subi 64,%r31,%r31
	mtsar %r31
	shrpd %r0,%r25,%sar,%r25
	b .L737
	or %r25,%r28,%r28
.L738:
	copy %r26,%r28
	b .L737
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
	bb,>= %r25,26,.L740
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
.L739:
	bve,n (%r2)
.L740:
	cmpb,*=,n %r0,%r19,.L743
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
	b .L739
	depd %r31,32+32-1,32,%r28
.L743:
	b .L739
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
	bb,>= %r24,25,.L745
	extrd,s %r24,63,32,%r31
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	extrd,s %r26,%sar,64,%r29
.L747:
	bve,n (%r2)
.L745:
	cmpb,*= %r0,%r31,.L748
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r19
	extrd,s %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L747
	or %r26,%r29,%r29
.L748:
	copy %r26,%r28
	b .L747
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
	cmpb,>>= %r28,%r26,.L752
	ldi 1,%r19
	ldi 0,%r19
.L752:
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
	b,n .L756
	cmpclr,>= %r28,%r31,%r0
	b,n .L757
	cmpclr,<<= %r25,%r26,%r0
	b,n .L758
	cmpb,<<,n %r25,%r26,.L759
	ldi 1,%r28
	b,n .L755
.L756:
	ldi 0,%r28
.L755:
	bve,n (%r2)
.L757:
	b .L755
	ldi 2,%r28
.L758:
	b .L755
	ldi 0,%r28
.L759:
	b .L755
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
	cmpb,*> %r24,%r26,.L767
	ldi 0,%r28
	cmpb,*< %r24,%r26,.L767
	ldi 2,%r28
	cmpb,*>> %r23,%r25,.L767
	ldi 0,%r28
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L762:
.L767:
	bve,n (%r2)
	b .L762
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
	cmpb,*<> %r0,%r25,.L771
	ldo -48(%r30),%r29
	ldi 0,%r28
	cmpb,*= %r28,%r26,.L774
	ldd -144(%r30),%r2
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	b .L772
	extrd,s %r28,63,32,%r28
.L771:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L772:
	ldd -144(%r30),%r2
.L774:
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
	bb,>= %r25,26,.L776
	extrd,s %r25,63,32,%r19
	ldi 0,%r28
	depd %r28,0+32-1,32,%r28
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	depd %r26,32+32-1,32,%r28
.L775:
	bve,n (%r2)
.L776:
	cmpb,*= %r0,%r19,.L779
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
	b .L775
	depd %r31,32+32-1,32,%r28
.L779:
	b .L775
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
	bb,>= %r24,25,.L781
	extrd,s %r24,63,32,%r31
	ldi 0,%r28
	mtsar %r24
	shrpd %r0,%r26,%sar,%r29
.L783:
	bve,n (%r2)
.L781:
	cmpb,*= %r0,%r31,.L784
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r19
	extrd,s %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r26
	mtsar %r31
	shrpd %r0,%r25,%sar,%r29
	b .L783
	or %r26,%r29,%r29
.L784:
	copy %r26,%r28
	b .L783
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
	extrd,u %r26,63,32,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr22
	extrd,u %r25,63,32,%r28
	std %r28,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr23R,%fr22R,%fr24
	fstd %fr24,-56(%r30)
	ldd -56(%r30),%r29
	extrd,u %r29,31,32,%r31
	extrd,u %r26,31,32,%r26
	std %r26,-56(%r30)
	fldd -56(%r30),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	add,l %r28,%r31,%r28
	extrd,u %r28,31,32,%r20
	extrd,u %r28,63,32,%r28
	extrd,u %r29,63,32,%r29
	extrd,u %r25,31,32,%r25
	std %r25,-56(%r30)
	fldd -56(%r30),%fr23
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,-56(%r30)
	ldd -56(%r30),%r31
	add,l %r31,%r28,%r31
	depd,z %r31,31,32,%r19
	extrd,u %r31,31,32,%r31
	add,l %r31,%r20,%r31
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,-56(%r30)
	ldd -56(%r30),%r28
	add,l %r28,%r31,%r28
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
	extrd,s %r25,63,32,%r31
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	b .L800
	fldd 0(%r28),%fr4
.L802:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L799
	extrd,s %r28,63,32,%r31
	fmpy,dbl %fr22,%fr22,%fr22
.L800:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L802
	extrw,u %r31,0,1,%r28
	b .L802
	fmpy,dbl %fr4,%fr22,%fr4
.L799:
	cmpb,*= %r0,%r25,.L797
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	fldd 0(%r28),%fr22
	fdiv,dbl %fr22,%fr4,%fr4
.L797:
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
	fcpy,sgl %fr4R,%fr22R
	extrd,s %r25,63,32,%r31
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	b .L806
	fldw 0(%r28),%fr4R
.L808:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L805
	extrd,s %r28,63,32,%r31
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L806:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L808
	extrw,u %r31,0,1,%r28
	b .L808
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L805:
	cmpb,*= %r0,%r25,.L803
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	fldw 0(%r28),%fr22R
	fdiv,sgl %fr22R,%fr4R,%fr4R
.L803:
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
	b,n .L811
	cmpclr,>>= %r28,%r31,%r0
	b,n .L812
	cmpclr,<<= %r25,%r26,%r0
	b,n .L813
	cmpb,<<,n %r25,%r26,.L814
	ldi 1,%r28
	b,n .L810
.L811:
	ldi 0,%r28
.L810:
	bve,n (%r2)
.L812:
	b .L810
	ldi 2,%r28
.L813:
	b .L810
	ldi 0,%r28
.L814:
	b .L810
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
	cmpb,*>> %r24,%r26,.L822
	ldi 0,%r28
	cmpb,*<< %r24,%r26,.L822
	ldi 2,%r28
	cmpb,*>> %r23,%r25,.L822
	ldi 0,%r28
	cmpclr,*>>= %r23,%r25,%r28
	ldi 1,%r28
	ldo 1(%r28),%r28
.L817:
.L822:
	bve,n (%r2)
	b .L817
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
