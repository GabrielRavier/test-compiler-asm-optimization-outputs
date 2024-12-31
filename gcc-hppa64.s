	.LEVEL 2.0w
	.text
	.align 8
.globl make_ti
	.type	make_ti, @function
make_ti:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r25,%r29
	copy %r26,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	make_ti, .-make_ti
	.align 8
.globl make_tu
	.type	make_tu, @function
make_tu:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r25,%r29
	copy %r26,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	make_tu, .-make_tu
	.align 8
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpb,*>>= %r25,%r26,.L4
	copy %r26,%r28
	add,l %r25,%r24,%r19
	b .L5
	add,l %r26,%r24,%r31
.L6:
	stb,mb %r20,-1(%r31)
.L5:
	cmpb,*<>,n %r25,%r19,.L6
	ldb,mb -1(%r19),%r20
	b,n .L7
.L4:
	cmpb,*=,n %r25,%r26,.L7
	add,l %r26,%r24,%r24
	copy %r25,%r19
	b .L8
	copy %r26,%r31
.L9:
	ldo 1(%r31),%r31
	ldb -1(%r19),%r20
	stb %r20,-1(%r31)
.L8:
	cmpb,*<>,n %r24,%r31,.L9
	ldo 1(%r19),%r19
.L7:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 8
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	cmpb,*<> %r0,%r23,.L14
	ldo 1(%r26),%r28
	ldi 0,%r28
.L14:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 8
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L17
	extrd,u %r25,63,8,%r25
.L19:
	ldo -1(%r24),%r24
.L17:
	cmpb,*=,n %r0,%r24,.L18
	ldb 0(%r26),%r28
	cmpb,<>,n %r28,%r25,.L19
	ldo 1(%r26),%r26
.L18:
	cmpb,*<> %r0,%r24,.L20
	copy %r26,%r28
	ldi 0,%r28
.L20:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 8
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	cmpb,*=,n %r0,%r24,.L27
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	b .L26
	extrd,s %r28,63,32,%r28
.L27:
	ldi 0,%r28
.L26:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 8
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memcpy, .-memcpy
	.align 8
.globl memrchr
	.type	memrchr, @function
memrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r25,63,8,%r25
	b .L32
	ldo -1(%r24),%r24
.L34:
	ldb 0(%r28),%r31
	cmpb,<> %r31,%r25,.L35
	ldo -1(%r24),%r28
	b .L33
	add,l %r26,%r24,%r28
.L35:
	copy %r28,%r24
.L32:
	cmpib,*<> -1,%r24,.L34
	add,l %r26,%r24,%r28
	ldi 0,%r28
.L33:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 8
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
	extrd,s %r25,63,32,%r25
	add,l %r26,%r24,%r24
	b .L37
	copy %r26,%r31
.L38:
	ldo 1(%r31),%r31
.L37:
	cmpb,*<>,n %r24,%r31,.L38
	stb %r25,0(%r31)
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memset, .-memset
	.align 8
.globl stpcpy
	.type	stpcpy, @function
stpcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L40
	copy %r26,%r28
.L41:
	ldo 1(%r28),%r28
.L40:
	ldb 0(%r25),%r31
	stb %r31,0(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<>,n %r0,%r31,.L41
	ldo 1(%r25),%r25
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 8
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
	extrd,u %r25,63,8,%r25
.L45:
	ldb 0(%r28),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L44
	cmpb,<>,n %r31,%r25,.L45
	ldo 1(%r28),%r28
.L44:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 8
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r25,63,32,%r25
	ldb 0(%r26),%r28
.L50:
	extrd,s %r28,63,8,%r28
	cmpb,=,n %r28,%r25,.L49
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	cmpb,*<>,n %r0,%r28,.L50
	ldb 0(%r26),%r28
	b,n .L47
.L49:
	copy %r26,%r28
.L47:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 8
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L55
	ldb 0(%r26),%r31
.L54:
	ldo 1(%r25),%r25
	ldb 0(%r26),%r31
.L55:
	extrd,s %r31,63,8,%r31
	ldb 0(%r25),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<>,n %r28,%r31,.L53
	ldb 0(%r26),%r28
	cmpb,*<>,n %r0,%r28,.L54
	ldo 1(%r26),%r26
.L53:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 8
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
.L58:
	ldb 0(%r28),%r31
	cmpb,*<>,n %r0,%r31,.L58
	ldo 1(%r28),%r28
	sub %r28,%r26,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 8
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpb,*= %r0,%r24,.L64
	copy %r26,%r19
	b .L66
	ldb 0(%r19),%r28
.L63:
	ldo 1(%r25),%r25
	ldb 0(%r19),%r28
.L66:
	cmpb,*=,n %r0,%r28,.L65
	ldb 0(%r25),%r31
	ldo -1(%r24),%r28
	add,l %r26,%r28,%r28
	sub %r28,%r19,%r28
	or,*>= %r0,%r28,%r28
	subi 0,%r28,%r28
	sub %r0,%r28,%r28
	extrd,u %r28,0,1,%r28
	extrw,s,>= %r31,31,8,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,56+1-1,1,%r31
	and %r28,%r31,%r28
	cmpb,*=,n %r0,%r28,.L62
	ldb 0(%r19),%r31
	ldb 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L63
	ldo 1(%r19),%r19
.L62:
	ldb 0(%r19),%r28
.L65:
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	b .L60
	extrd,s %r28,63,32,%r28
.L64:
	ldi 0,%r28
.L60:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 8
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L68
	copy %r26,%r28
.L69:
	stb %r31,0(%r25)
	ldb 0(%r28),%r31
	stb %r31,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L68:
	add,l %r26,%r24,%r31
	sub %r31,%r28,%r31
	cmpib,*<,n 1,%r31,.L69
	ldb 1(%r28),%r31
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 8
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	depwi -1,26,1,%r26
	ldo -97(%r26),%r26
	ldi 25,%r31
	cmpb,>>= %r31,%r26,.L71
	ldi 1,%r28
	ldi 0,%r28
.L71:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 8
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldi 127,%r31
	cmpb,>>= %r31,%r26,.L73
	ldi 1,%r28
	ldi 0,%r28
.L73:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 8
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,u %r28,32+1-1,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 8
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r26,63,32,%r31
	ldi 31,%r28
	cmpb,>>= %r28,%r26,.L76
	ldi 1,%r19
	ldi 0,%r19
.L76:
	ldi 127,%r28
	xor %r31,%r28,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0,1,%r28
	or %r28,%r19,%r28
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 8
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -48(%r26),%r26
	cmpib,>>= 9,%r26,.L78
	ldi 1,%r28
	ldi 0,%r28
.L78:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 8
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -33(%r26),%r26
	ldi 93,%r31
	cmpb,>>= %r31,%r26,.L80
	ldi 1,%r28
	ldi 0,%r28
.L80:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 8
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -97(%r26),%r26
	ldi 25,%r31
	cmpb,>>= %r31,%r26,.L82
	ldi 1,%r28
	ldi 0,%r28
.L82:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 8
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -32(%r26),%r26
	ldi 94,%r31
	cmpb,>>= %r31,%r26,.L84
	ldi 1,%r28
	ldi 0,%r28
.L84:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 8
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldi 32,%r31
	xor %r26,%r31,%r31
	or,>= %r0,%r31,%r31
	subi 0,%r31,%r31
	ldo -1(%r31),%r31
	extrw,u %r31,0,1,%r31
	extrd,u %r31,63,8,%r31
	ldo -9(%r26),%r26
	cmpib,>>= 4,%r26,.L86
	ldi 1,%r28
	ldi 0,%r28
.L86:
	extrd,u %r28,63,8,%r28
	or %r28,%r31,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 8
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -65(%r26),%r26
	ldi 25,%r31
	cmpb,>>= %r31,%r26,.L88
	ldi 1,%r28
	ldi 0,%r28
.L88:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 8
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r31
	ldi 31,%r19
	cmpb,>>= %r19,%r26,.L90
	ldi 1,%r28
	ldi 0,%r28
.L90:
	extrd,u %r28,63,8,%r28
	ldo -127(%r26),%r26
	ldi 32,%r20
	cmpb,>>= %r20,%r26,.L91
	ldi 1,%r19
	ldi 0,%r19
.L91:
	extrd,u %r19,63,8,%r19
	or %r28,%r19,%r28
	cmpb,*<>,n %r0,%r28,.L93
	ldo -40(%r31),%r28
	ldo -8192(%r28),%r28
	cmpib,>>=,n 1,%r28,.L94
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpib,<< 2,%r31,.L95
	ldi 1,%r28
	b,n .L92
.L93:
	b .L92
	ldi 1,%r28
.L94:
	b .L92
	ldi 1,%r28
.L95:
	ldi 0,%r28
.L92:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 8
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -48(%r26),%r26
	cmpib,>>= 9,%r26,.L97
	ldi 1,%r28
	ldi 0,%r28
.L97:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 8
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldi 254,%r31
	cmpb,<< %r31,%r26,.L99
	extrd,u %r26,63,32,%r28
	ldo 1(%r26),%r26
	extrw,u %r26,31,7,%r26
	ldi 32,%r31
	cmpb,<< %r31,%r26,.L100
	ldi 1,%r28
	ldi 0,%r28
.L100:
	b .L101
	extrd,u %r28,63,1,%r28
.L99:
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	cmpb,>>= %r19,%r28,.L102
	ldi 1,%r31
	ldi 0,%r31
.L102:
	extrd,u %r31,63,8,%r31
	ldo -42(%r28),%r21
	ldo -8192(%r21),%r21
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	cmpb,>>= %r20,%r21,.L103
	ldi 1,%r19
	ldi 0,%r19
.L103:
	extrd,u %r19,63,8,%r19
	or %r31,%r19,%r31
	cmpb,*<> %r0,%r31,.L104
	ldil L'-57344,%r31
	add,l %r28,%r31,%r31
	ldi 8184,%r19
	cmpb,>>= %r19,%r31,.L105
	depwi,z -1,29,14,%r19
	sub %r28,%r19,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpb,<< %r31,%r19,.L106
	depwi,z -1,30,15,%r31
	and %r28,%r31,%r28
	cmpb,= %r31,%r28,.L107
	ldi 1,%r28
	b,n .L101
.L104:
	b .L101
	ldi 1,%r28
.L105:
	b .L101
	ldi 1,%r28
.L106:
	b .L101
	ldi 0,%r28
.L107:
	ldi 0,%r28
.L101:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 8
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r28
	ldo -48(%r26),%r26
	cmpib,>>=,n 9,%r26,.L110
	depwi -1,26,1,%r28
	ldo -97(%r28),%r28
	cmpib,<< 5,%r28,.L111
	ldi 1,%r28
	b,n .L109
.L110:
	b .L109
	ldi 1,%r28
.L111:
	ldi 0,%r28
.L109:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 8
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,7,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L114
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L117
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L119
	addil LT'.LC0,%r27
	b .L120
	ldd RT'.LC0(%r1),%r28
.L119:
	b .L114
	fsub,dbl %fr4,%fr5,%fr4
.L117:
	b .L114
	fcpy,dbl %fr5,%fr4
.L120:
	fldd 0(%r28),%fr4
.L114:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.section	.rodata
	.align 4
.LC2:
	.word	0
	.text
	.align 8
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L122
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L125
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L127
	addil LT'.LC2,%r27
	b .L128
	ldd RT'.LC2(%r1),%r28
.L127:
	b .L122
	fsub,sgl %fr4R,%fr5R,%fr4R
.L125:
	b .L122
	fcpy,sgl %fr5R,%fr4R
.L128:
	fldw 0(%r28),%fr4R
.L122:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 8
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L133
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L130
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r31,0+1-1,1,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,0+1-1,1,%r28
	cmpb,=,n %r28,%r31,.L131
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpclr,*> %r0,%r28,%r0
	b,n .L130
	b .L130
	fcpy,dbl %fr5,%fr4
.L131:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L137
	b,n .L130
.L137:
	b .L130
	fcpy,dbl %fr5,%fr4
.L133:
	fcpy,dbl %fr5,%fr4
.L130:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 8
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L143
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L140
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	depwi 0,31,31,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	depwi 0,31,31,%r28
	cmpb,=,n %r28,%r31,.L141
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L140
	b .L140
	fcpy,sgl %fr5R,%fr4R
.L141:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L147
	b,n .L140
.L147:
	b .L140
	fcpy,sgl %fr5R,%fr4R
.L143:
	fcpy,sgl %fr5R,%fr4R
.L140:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 8
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r8,8(%r3)
	std %r7,16(%r3)
	std %r6,24(%r3)
	std %r5,32(%r3)
	std %r4,40(%r3)
	copy %r26,%r5
	copy %r25,%r6
	copy %r24,%r7
	copy %r23,%r8
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L153
	copy %r4,%r27
	copy %r7,%r24
	copy %r8,%r23
	copy %r7,%r26
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L154
	copy %r4,%r27
	extrd,u %r5,0+1-1,1,%r31
	extrd,u %r7,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L151
	copy %r7,%r24
	cmpb,*<=,n %r0,%r5,.L155
	copy %r7,%r19
	b .L150
	copy %r8,%r20
.L151:
	copy %r8,%r23
	copy %r5,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r6,%r25
	cmpb,*<= %r0,%r28,.L158
	copy %r7,%r19
	b .L150
	copy %r8,%r20
.L153:
	copy %r7,%r19
	b .L150
	copy %r8,%r20
.L154:
	copy %r5,%r19
	b .L150
	copy %r6,%r20
.L155:
	copy %r5,%r19
	b .L150
	copy %r6,%r20
.L158:
	copy %r5,%r19
	copy %r6,%r20
.L150:
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 8
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L163
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L160
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r31,0+1-1,1,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,0+1-1,1,%r28
	cmpb,=,n %r28,%r31,.L161
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpclr,*> %r0,%r28,%r0
	b,n .L165
	b,n .L160
.L161:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L160
	b .L168
	fcpy,dbl %fr5,%fr4
.L163:
	b .L160
	fcpy,dbl %fr5,%fr4
.L165:
	fcpy,dbl %fr5,%fr4
.L168:
.L160:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 8
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L173
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L170
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	depwi 0,31,31,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	depwi 0,31,31,%r28
	cmpb,=,n %r28,%r31,.L171
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L175
	b,n .L170
.L171:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L170
	b .L178
	fcpy,sgl %fr5R,%fr4R
.L173:
	b .L170
	fcpy,sgl %fr5R,%fr4R
.L175:
	fcpy,sgl %fr5R,%fr4R
.L178:
.L170:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 8
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r8,8(%r3)
	std %r7,16(%r3)
	std %r6,24(%r3)
	std %r5,32(%r3)
	std %r4,40(%r3)
	copy %r26,%r7
	copy %r25,%r8
	copy %r24,%r5
	copy %r23,%r6
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L183
	copy %r4,%r27
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L184
	copy %r4,%r27
	extrd,u %r7,0+1-1,1,%r31
	extrd,u %r5,0+1-1,1,%r28
	cmpb,= %r28,%r31,.L181
	copy %r5,%r24
	cmpb,*<=,n %r0,%r7,.L185
	copy %r7,%r19
	b .L180
	copy %r8,%r20
.L181:
	copy %r6,%r23
	copy %r7,%r26
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	copy %r8,%r25
	cmpb,*<= %r0,%r28,.L188
	copy %r7,%r19
	b .L180
	copy %r8,%r20
.L183:
	copy %r5,%r19
	b .L180
	copy %r6,%r20
.L184:
	copy %r7,%r19
	b .L180
	copy %r8,%r20
.L185:
	copy %r5,%r19
	b .L180
	copy %r6,%r20
.L188:
	copy %r5,%r19
	copy %r6,%r20
.L180:
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r26
	addil LT's.0,%r27
	b .L190
	ldd RT's.0(%r1),%r28
.L191:
	addil LT'digits,%r27
	ldd RT'digits(%r1),%r31
	extrd,u %r26,63,6,%r19
	ldb %r19(%r31),%r31
	stb %r31,0(%r28)
	ldo 1(%r28),%r28
	extrd,u %r26,57,58,%r26
.L190:
	cmpb,*<> %r0,%r26,.L191
	addil LT's.0,%r27
	stb %r0,0(%r28)
	ldd RT's.0(%r1),%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldo -1(%r26),%r26
	extrd,u %r26,63,32,%r26
	addil LT'seed,%r27
	ldd RT'seed(%r1),%r28
	std %r26,0(%r28)
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 8
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	addil LT'seed,%r27
	ldd RT'seed(%r1),%r20
	ldd 0(%r20),%r28
	shladd,l %r28,2,%r28,%r19
	shladd,l %r19,2,%r28,%r19
	depd,z %r19,52,53,%r31
	sub %r31,%r28,%r31
	depd,z %r31,55,56,%r19
	add,l %r31,%r19,%r31
	shladd,l %r31,1,%r28,%r31
	depd,z %r31,57,58,%r19
	add,l %r31,%r19,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,3,%r28,%r31
	depd,z %r31,58,59,%r19
	add,l %r31,%r19,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,2,%r28,%r31
	shladd,l %r31,1,%r28,%r31
	depd,z %r31,56,57,%r19
	sub %r19,%r28,%r19
	shladd,l %r19,3,%r28,%r19
	shladd,l %r19,2,%r28,%r19
	shladd,l %r19,1,%r28,%r19
	shladd,l %r19,2,%r28,%r28
	ldo 1(%r28),%r28
	std %r28,0(%r20)
	extrd,u %r28,30,31,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 8
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpb,*<>,n %r0,%r25,.L195
	std %r0,8(%r26)
	b .L194
	std %r0,0(%r26)
.L195:
	ldd 0(%r25),%r28
	std %r28,0(%r26)
	std %r25,8(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*= %r0,%r28,%r0
	std %r26,8(%r28)
.L194:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 8
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldd 0(%r26),%r28
	cmpb,*=,n %r0,%r28,.L198
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L198:
	ldd 8(%r26),%r28
	cmpb,*=,n %r0,%r28,.L197
	ldd 0(%r26),%r31
	std %r31,0(%r28)
.L197:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 8
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=12
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,208(%r30)
	std %r12,16(%r3)
	std %r11,24(%r3)
	std %r10,32(%r3)
	std %r9,40(%r3)
	std %r8,48(%r3)
	std %r7,56(%r3)
	std %r6,64(%r3)
	std %r5,72(%r3)
	std %r4,80(%r3)
	copy %r26,%r9
	copy %r25,%r6
	copy %r24,%r10
	copy %r23,%r5
	copy %r22,%r12
	ldd 0(%r24),%r7
	copy %r25,%r11
	b .L201
	ldi 0,%r8
.L204:
	copy %r11,%r25
	copy %r9,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r12),%r2
	bve,l (%r2),%r2
	ldd 24(%r12),%r27
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L202
	add,l %r11,%r5,%r11
	extrd,u %r8,31,32,%r28
	extrd,u %r5,31,32,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r5,8(%r3)
	fldd 8(%r3),%fr23
	std %r28,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r28
	std %r8,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r5,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r5
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r5,%r28
	b .L203
	add,l %r6,%r28,%r28
.L202:
	ldo 1(%r8),%r8
.L201:
	cmpb,*<> %r7,%r8,.L204
	ldo 1(%r7),%r28
	std %r28,0(%r10)
	extrd,u %r5,31,32,%r28
	extrd,u %r7,31,32,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r7,8(%r3)
	fldd 8(%r3),%fr23
	std %r28,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r28
	std %r5,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r7,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r7
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r7,%r28
	copy %r5,%r24
	copy %r9,%r25
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	add,l %r6,%r28,%r26
.L203:
	ldd -16(%r3),%r2
	ldd 16(%r3),%r12
	ldd 24(%r3),%r11
	ldd 32(%r3),%r10
	ldd 40(%r3),%r9
	ldd 48(%r3),%r8
	ldd 56(%r3),%r7
	ldd 64(%r3),%r6
	ldd 72(%r3),%r5
	ldd 80(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 8
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=11
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,192(%r30)
	std %r11,16(%r3)
	std %r10,24(%r3)
	std %r9,32(%r3)
	std %r8,40(%r3)
	std %r7,48(%r3)
	std %r6,56(%r3)
	std %r5,64(%r3)
	std %r4,72(%r3)
	copy %r26,%r10
	copy %r25,%r6
	copy %r23,%r5
	copy %r22,%r9
	ldd 0(%r24),%r11
	copy %r25,%r8
	b .L206
	ldi 0,%r7
.L209:
	copy %r8,%r25
	copy %r10,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L207
	add,l %r8,%r5,%r8
	extrd,u %r7,31,32,%r31
	extrd,u %r5,31,32,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	std %r5,8(%r3)
	fldd 8(%r3),%fr23
	std %r31,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r31
	std %r7,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r5,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r5
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r31,%r28,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r5,%r23
	b .L208
	add,l %r6,%r23,%r28
.L207:
	ldo 1(%r7),%r7
.L206:
	cmpb,*<> %r11,%r7,.L209
	ldi 0,%r28
.L208:
	ldd -16(%r3),%r2
	ldd 16(%r3),%r11
	ldd 24(%r3),%r10
	ldd 32(%r3),%r9
	ldd 40(%r3),%r8
	ldd 48(%r3),%r7
	ldd 56(%r3),%r6
	ldd 64(%r3),%r5
	ldd 72(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 8
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	or,>= %r0,%r26,%r28
	subi 0,%r28,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 8
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	b .L212
	copy %r26,%r5
.L213:
	ldo 1(%r5),%r5
.L212:
	ldb 0(%r5),%r26
	extrw,s %r26,31,8,%r26
	ldo -48(%r30),%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L213
	copy %r4,%r27
	ldb 0(%r5),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L219
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L220
	ldi 1,%r19
	b .L222
	ldo 1(%r5),%r5
.L219:
	ldi 0,%r19
	b .L215
	ldo 1(%r5),%r5
.L220:
	ldi 0,%r19
.L215:
.L222:
	b .L216
	ldi 0,%r28
.L217:
	add,l %r28,%r28,%r28
	ldo 1(%r5),%r5
	ldb -1(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L216:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>=,n 9,%r31,.L217
	shladd,l %r28,2,%r28,%r28 
	cmpb,*<>,n %r0,%r19,.L218
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L218:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 8
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	b .L224
	copy %r26,%r5
.L225:
	ldo 1(%r5),%r5
.L224:
	ldb 0(%r5),%r26
	extrw,s %r26,31,8,%r26
	ldo -48(%r30),%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L225
	copy %r4,%r27
	ldb 0(%r5),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L231
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L232
	ldi 1,%r19
	b .L234
	ldo 1(%r5),%r5
.L231:
	ldi 0,%r19
	b .L227
	ldo 1(%r5),%r5
.L232:
	ldi 0,%r19
.L227:
.L234:
	b .L228
	ldi 0,%r28
.L229:
	depd,z %r28,62,63,%r28
	ldo 1(%r5),%r5
	ldb -1(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
.L228:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>=,n 9,%r31,.L229
	shladd,l %r28,2,%r28,%r28
	cmpclr,*<> %r0,%r19,%r0
	sub %r0,%r28,%r28
.L230:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 8
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	b .L236
	copy %r26,%r5
.L237:
	ldo 1(%r5),%r5
.L236:
	ldb 0(%r5),%r26
	extrw,s %r26,31,8,%r26
	ldo -48(%r30),%r29
	b,l isspace,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L237
	copy %r4,%r27
	ldb 0(%r5),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpb,= %r31,%r28,.L243
	ldi 45,%r31
	cmpb,<>,n %r31,%r28,.L244
	ldi 1,%r19
	b .L246
	ldo 1(%r5),%r5
.L243:
	ldi 0,%r19
	b .L239
	ldo 1(%r5),%r5
.L244:
	ldi 0,%r19
.L239:
.L246:
	b .L240
	ldi 0,%r28
.L241:
	depd,z %r28,62,63,%r28
	ldo 1(%r5),%r5
	ldb -1(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
.L240:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>=,n 9,%r31,.L241
	shladd,l %r28,2,%r28,%r28
	cmpclr,*<> %r0,%r19,%r0
	sub %r0,%r28,%r28
.L242:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 8
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=10
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,192(%r30)
	std %r10,16(%r3)
	std %r9,24(%r3)
	std %r8,32(%r3)
	std %r7,40(%r3)
	std %r6,48(%r3)
	std %r5,56(%r3)
	std %r4,64(%r3)
	copy %r26,%r9
	copy %r25,%r8
	copy %r24,%r6
	copy %r23,%r7
	b .L248
	copy %r22,%r10
.L252:
	extrd,u %r6,62,63,%r28
	extrd,u %r6,30,31,%r5
	extrd,u %r7,31,32,%r31
	std %r7,8(%r3)
	fldd 8(%r3),%fr22
	std %r5,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r5
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr23R,%fr22R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r31
	std %r7,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr23R,%fr22R,%fr22
	add,l %r5,%r31,%r5
	depd,z %r5,31,32,%r5
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r5,%r28,%r5
	add,l %r8,%r5,%r5
	copy %r5,%r25
	copy %r9,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r10),%r2
	bve,l (%r2),%r2
	ldd 24(%r10),%r27
	cmpib,<= 0,%r28,.L249
	copy %r4,%r27
	b .L248
	extrd,u %r6,62,63,%r6
.L249:
	cmpib,>= 0,%r28,.L253
	add,l %r5,%r7,%r8
	extrd,u %r6,62,63,%r28
	uaddcm %r6,%r28,%r6
.L248:
	cmpb,*<> %r0,%r6,.L252
	ldi 0,%r28
	b .L254
	ldd -16(%r3),%r2
.L253:
	copy %r5,%r28
	ldd -16(%r3),%r2
.L254:
	ldd 16(%r3),%r10
	ldd 24(%r3),%r9
	ldd 32(%r3),%r8
	ldd 40(%r3),%r7
	ldd 48(%r3),%r6
	ldd 56(%r3),%r5
	ldd 64(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 8
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=11
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,192(%r30)
	std %r11,16(%r3)
	std %r10,24(%r3)
	std %r9,32(%r3)
	std %r8,40(%r3)
	std %r7,48(%r3)
	std %r6,56(%r3)
	std %r5,64(%r3)
	std %r4,72(%r3)
	copy %r26,%r10
	copy %r23,%r7
	copy %r22,%r11
	copy %r21,%r9
	extrd,s %r24,63,32,%r6
	b .L256
	copy %r25,%r8
.L259:
	extrw,s %r6,30,31,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	extrd,s %r28,63,32,%r5
	extrd,u %r5,31,32,%r5
	extrd,u %r7,31,32,%r28
	std %r7,8(%r3)
	fldd 8(%r3),%fr23
	std %r5,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r5
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr23R,%fr22R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r28
	std %r7,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr22R,%fr22
	add,l %r5,%r28,%r5
	depd,z %r5,31,32,%r5
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r5,%r28,%r5
	add,l %r8,%r5,%r5
	copy %r9,%r24
	copy %r5,%r25
	copy %r10,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r11),%r2
	bve,l (%r2),%r2
	ldd 24(%r11),%r27
	cmpb,*= %r0,%r28,.L260
	copy %r4,%r27
	cmpib,>=,n 0,%r28,.L258
	add,l %r5,%r7,%r8
	ldo -1(%r6),%r6
	extrd,s %r6,63,32,%r6
.L258:
	extrw,s %r6,30,31,%r6
	extrd,s %r6,63,32,%r6
.L256:
	cmpb,*<> %r0,%r6,.L259
	ldi 0,%r28
	b .L261
	ldd -16(%r3),%r2
.L260:
	copy %r5,%r28
	ldd -16(%r3),%r2
.L261:
	ldd 16(%r3),%r11
	ldd 24(%r3),%r10
	ldd 32(%r3),%r9
	ldd 40(%r3),%r8
	ldd 48(%r3),%r7
	ldd 56(%r3),%r6
	ldd 64(%r3),%r5
	ldd 72(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 8
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 8
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 8
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,176(%r30)
	std %r7,24(%r3)
	std %r6,32(%r3)
	std %r5,40(%r3)
	std %r4,48(%r3)
	copy %r26,%r6
	copy %r25,%r7
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r5
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r6,%r26
	copy %r28,%r29
	copy %r5,%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 8
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 8
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,176(%r30)
	std %r7,24(%r3)
	std %r6,32(%r3)
	std %r5,40(%r3)
	std %r4,48(%r3)
	copy %r26,%r6
	copy %r25,%r7
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r5
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r6,%r26
	copy %r28,%r29
	copy %r5,%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 8
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	or,*>= %r0,%r26,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 8
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,176(%r30)
	std %r7,24(%r3)
	std %r6,32(%r3)
	std %r5,40(%r3)
	std %r4,48(%r3)
	copy %r26,%r6
	copy %r25,%r7
	ldo -48(%r30),%r29
	b,l __divdi3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r5
	copy %r7,%r25
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	copy %r6,%r26
	copy %r28,%r29
	copy %r5,%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 8
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r25,63,32,%r25
.L272:
	ldw 0(%r26),%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L275
	cmpb,<>,n %r28,%r25,.L272
	ldo 4(%r26),%r26
.L275:
	cmpb,*<> %r0,%r28,.L273
	copy %r26,%r28
	ldi 0,%r28
.L273:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 8
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L283
	ldw 0(%r26),%r31
.L279:
	ldo 4(%r25),%r25
	ldw 0(%r26),%r31
.L283:
	ldw 0(%r25),%r28
	cmpclr,= %r28,%r31,%r0
	b,n .L278
	cmpclr,*<> %r0,%r31,%r0
	b,n .L278
	cmpb,*<>,n %r0,%r28,.L279
	ldo 4(%r26),%r26
.L278:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,>> %r28,%r31,.L282
	copy %r31,%r19
	copy %r28,%r31
	cmpb,<< %r31,%r19,.L281
	ldi 1,%r28
	ldi 0,%r28
.L281:
	b .L280
	extrd,u %r28,63,1,%r28
.L282:
	ldi -1,%r28
.L280:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 8
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
	copy %r26,%r31
.L285:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	cmpb,*<> %r0,%r19,.L285
	stw %r19,-4(%r31)
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 8
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
.L288:
	ldw 0(%r28),%r31
	cmpb,*<>,n %r0,%r31,.L288
	ldo 4(%r28),%r28
	sub %r28,%r26,%r28
	extrd,s %r28,61,62,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 8
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b,n .L290
.L292:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L290:
	cmpb,*=,n %r0,%r24,.L291
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpclr,= %r28,%r31,%r0
	b,n .L291
	cmpclr,*<> %r0,%r31,%r0
	b,n .L291
	cmpb,*<>,n %r0,%r28,.L292
	ldo -1(%r24),%r24
.L291:
	cmpb,*=,n %r0,%r24,.L295
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,>> %r28,%r31,.L296
	copy %r31,%r19
	copy %r28,%r31
	cmpb,<< %r31,%r19,.L294
	ldi 1,%r28
	ldi 0,%r28
.L294:
	b .L293
	extrd,u %r28,63,1,%r28
.L295:
	b .L293
	ldi 0,%r28
.L296:
	ldi -1,%r28
.L293:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 8
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L298
	extrd,u %r25,63,32,%r25
.L300:
	ldo 4(%r26),%r26
.L298:
	cmpb,*=,n %r0,%r24,.L299
	ldw 0(%r26),%r28
	cmpb,<>,n %r28,%r25,.L300
	ldo -1(%r24),%r24
.L299:
	cmpb,*<> %r0,%r24,.L301
	copy %r26,%r28
	ldi 0,%r28
.L301:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 8
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b,n .L304
.L306:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L304:
	cmpb,*=,n %r0,%r24,.L305
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,=,n %r28,%r31,.L306
	ldo -1(%r24),%r24
.L305:
	cmpb,*=,n %r0,%r24,.L309
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,>> %r28,%r31,.L310
	copy %r31,%r19
	copy %r28,%r31
	cmpb,<< %r31,%r19,.L308
	ldi 1,%r28
	ldi 0,%r28
.L308:
	b .L307
	extrd,u %r28,63,1,%r28
.L309:
	b .L307
	ldi 0,%r28
.L310:
	ldi -1,%r28
.L307:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 8
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
	b .L312
	copy %r26,%r31
.L313:
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	stw %r19,-4(%r31)
.L312:
	ldo -1(%r24),%r24
	cmpib,*<>,n -1,%r24,.L313
	ldo 4(%r25),%r25
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemcpy, .-wmemcpy
	.align 8
.globl wmemmove
	.type	wmemmove, @function
wmemmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpb,*= %r25,%r26,.L315
	copy %r26,%r28
	sub %r26,%r25,%r31
	depd,z %r24,61,62,%r19
	cmpb,*<<=,n %r19,%r31,.L320
	ldo -1(%r24),%r24
	shladd,l %r24,2,%r25,%r25
	shladd,l %r24,2,%r26,%r24
	b .L317
	ldo -4(%r26),%r31
.L318:
	stw %r19,0(%r24)
	ldo -4(%r25),%r25
	ldo -4(%r24),%r24
.L317:
	cmpb,*<>,n %r31,%r24,.L318
	ldw 0(%r25),%r19
	b,n .L315
.L319:
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	b .L316
	stw %r19,-4(%r31)
.L320:
	copy %r26,%r31
.L316:
	ldo -1(%r24),%r24
	cmpib,*<>,n -1,%r24,.L319
	ldo 4(%r25),%r25
.L315:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 8
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
	extrd,u %r25,63,32,%r25
	b .L322
	copy %r26,%r31
.L323:
	stw %r25,-4(%r31)
.L322:
	ldo -1(%r24),%r24
	cmpib,*<>,n -1,%r24,.L323
	ldo 4(%r31),%r31
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 8
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpb,*<<= %r25,%r26,.L325
	add,l %r26,%r24,%r28
	b .L326
	add,l %r25,%r24,%r25
.L327:
	stb,mb %r31,-1(%r25)
.L326:
	cmpb,*<>,n %r26,%r28,.L327
	ldb,mb -1(%r28),%r31
	b,n .L324
.L325:
	cmpb,*=,n %r25,%r26,.L324
	add,l %r25,%r24,%r24
	b .L329
	copy %r26,%r28
.L330:
	ldo 1(%r25),%r25
	ldb -1(%r28),%r31
	stb %r31,-1(%r25)
.L329:
	cmpb,*<>,n %r24,%r25,.L330
	ldo 1(%r28),%r28
.L324:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 8
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	sub %r0,%r25,%r25
	mtsar %r25
	shrpd %r26,%r26,%sar,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 8
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	mtsar %r25
	shrpd %r26,%r26,%sar,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 8
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	subi 32,%r25,%r25
	mtsar %r25
	shrpw %r26,%r26,%sar,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 8
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	mtsar %r25
	shrpw %r26,%r26,%sar,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 8
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r25,63,32,%r25
	mtsarcm %r25
	depd,z %r26,%sar,64,%r28
	subi 64,%r25,%r25
	mtsar %r25
	shrpd %r0,%r26,%sar,%r26
	or %r26,%r28,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 8
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	mtsar %r25
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r25,%r25
	extrd,u %r25,63,32,%r25
	mtsarcm %r25
	depd,z %r26,%sar,64,%r26
	or %r26,%r28,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 8
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,16,%r26
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	subi 16,%r25,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r26,%r28,%r28
	extrd,u %r28,63,16,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 8
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,16,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	ldo 15(%r25),%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	or %r26,%r28,%r28
	extrd,u %r28,63,16,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 8
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,8,%r26
	mtsarcm %r25
	depw,z %r26,%sar,32,%r28
	subi 8,%r25,%r25
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	or %r26,%r28,%r28
	extrd,u %r28,63,8,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 8
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,8,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r28
	ldo 23(%r25),%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	or %r26,%r28,%r28
	extrd,u %r28,63,8,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 8
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	depdi,z -1,55,8,%r31
	and %r31,%r26,%r31
	extrd,u %r31,55,56,%r31
	extrw,u %r26,31,8,%r28
	depw,z %r28,23,24,%r28
	or %r28,%r31,%r28
	extrd,u %r28,63,16,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 8
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 8
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	or %r28,%r26,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 8
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r26,63,32,%r26
	b .L345
	ldi 0,%r28
.L348:
	shrpw %r0,%r26,%sar,%r31
	extrd,u %r31,63,1,%r31
	cmpb,*= %r0,%r31,.L346
	ldo 1(%r28),%r28
	b .L347
	extrd,s %r28,63,32,%r28
.L346:
	extrd,u %r28,63,32,%r28
.L345:
	ldi 32,%r31
	cmpb,<> %r31,%r28,.L348
	mtsar %r28
	ldi 0,%r28
.L347:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 8
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpib,= 0,%r26,.L353
	extrd,s %r26,63,32,%r31
	b .L351
	ldi 1,%r28
.L352:
	extrd,s %r31,63,32,%r31
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L351:
	extrd,u %r31,63,1,%r19
	cmpb,*=,n %r0,%r19,.L352
	extrw,s %r31,30,31,%r31
	b,n .L350
.L353:
	ldi 0,%r28
.L350:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	addil LT'.LC4,%r27
	ldd RT'.LC4(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!< %fr4R,%fr22R
	ftest
	b .L357
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L359
	ldi 0,%r28
	b,n .L360
.L359:
	b .L355
	ldi 1,%r28
.L357:
	ldi 1,%r28
.L360:
.L355:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	addil LT'.LC8,%r27
	ldd RT'.LC8(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L364
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L366
	ldi 0,%r28
	b,n .L367
.L366:
	b .L362
	ldi 1,%r28
.L364:
	ldi 1,%r28
.L367:
.L362:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
	.section	.rodata
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
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=6
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r6,8(%r3)
	std %r5,16(%r3)
	std %r4,24(%r3)
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
	cmpb,*> %r0,%r28,.L371
	copy %r4,%r27
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
	cmpb,*>= %r0,%r28,.L374
	ldi 1,%r28
	b .L375
	ldd -16(%r3),%r2
.L371:
	b .L369
	ldi 1,%r28
.L374:
	ldi 0,%r28
.L369:
	ldd -16(%r3),%r2
.L375:
	ldd 8(%r3),%r6
	ldd 16(%r3),%r5
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 8
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,16(%r3)
	std %r4,24(%r3)
	copy %r26,%r5
	std %r25,8(%r3)
	fldd 8(%r3),%fr22
	ldo -48(%r30),%r29
	b,l __extenddftf2,%r2
	fcnv,w,dbl %fr22R,%fr4
	copy %r28,%r19
	std %r19,0(%r5)
	std %r29,8(%r5)
	ldd -16(%r3),%r2
	ldd 16(%r3),%r5
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b .L378
	extrd,s %r25,63,32,%r25
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr4R,%fr22R
	ftest
	b,n .L378
	cmpib,<= 0,%r25,.L382
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	b .L381
	fldw 0(%r28),%fr22R
.L382:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	fldw 0(%r28),%fr22R
.L381:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L383
	extrw,u %r25,0,1,%r28
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L383:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L378
	extrd,s %r28,63,32,%r25
	b .L381
	fmpy,sgl %fr22R,%fr22R,%fr22R
.L378:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b .L385
	extrd,s %r25,63,32,%r25
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr4,%fr22
	ftest
	b,n .L385
	cmpib,<= 0,%r25,.L389
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	b .L388
	fldd 0(%r28),%fr22
.L389:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	fldd 0(%r28),%fr22
.L388:
	extrd,u %r25,63,1,%r28
	cmpb,*= %r0,%r28,.L390
	extrw,u %r25,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L390:
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L385
	extrd,s %r28,63,32,%r25
	b .L388
	fmpy,dbl %fr22,%fr22,%fr22
.L385:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
	.section	.rodata
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
	.CALLINFO FRAME=176,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=9
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,176(%r30)
	std %r9,8(%r3)
	std %r8,16(%r3)
	std %r7,24(%r3)
	std %r6,32(%r3)
	std %r5,40(%r3)
	std %r4,48(%r3)
	copy %r26,%r5
	copy %r25,%r6
	extrd,s %r24,63,32,%r9
	copy %r26,%r24
	copy %r25,%r23
	ldo -48(%r30),%r29
	b,l __unordtf2,%r2
	copy %r27,%r4
	cmpb,*<> %r0,%r28,.L392
	copy %r4,%r27
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __addtf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r24
	copy %r29,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __netf2,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L392
	copy %r4,%r27
	cmpib,<= 0,%r9,.L397
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r7
	b .L396
	ldd 8(%r28),%r8
.L397:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r7
	ldd 8(%r28),%r8
.L396:
	extrd,u %r9,63,1,%r28
	cmpb,*= %r0,%r28,.L395
	copy %r7,%r24
	copy %r8,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r5
	copy %r29,%r6
.L395:
	extrw,u %r9,0,1,%r28
	add,l %r28,%r9,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L392
	extrd,s %r28,63,32,%r9
	copy %r7,%r24
	copy %r8,%r23
	copy %r7,%r26
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l __multf3,%r2
	copy %r27,%r4
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r7
	b .L396
	copy %r29,%r8
.L392:
	copy %r5,%r28
	copy %r6,%r29
	ldd -16(%r3),%r2
	ldd 8(%r3),%r9
	ldd 16(%r3),%r8
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 8
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
	add,l %r26,%r24,%r24
	b .L400
	copy %r26,%r31
.L401:
	ldb -1(%r25),%r20
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	xor %r19,%r20,%r19
	stb %r19,-1(%r31)
.L400:
	cmpb,*<>,n %r24,%r31,.L401
	ldo 1(%r25),%r25
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 8
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r7,8(%r3)
	std %r6,16(%r3)
	std %r5,24(%r3)
	std %r4,32(%r3)
	copy %r26,%r7
	copy %r25,%r6
	ldo -48(%r30),%r29
	b,l strlen,%r2
	copy %r24,%r5
	b .L403
	add,l %r7,%r28,%r28
.L405:
	ldo 1(%r28),%r28
	ldo -1(%r5),%r5
.L403:
	cmpb,*=,n %r0,%r5,.L404
	ldb 0(%r6),%r31
	stb %r31,0(%r28)
	extrd,s %r31,63,8,%r31
	cmpb,*<> %r0,%r31,.L405
	ldo 1(%r6),%r6
.L404:
	cmpclr,*<> %r0,%r5,%r0
	stb %r0,0(%r28)
.L406:
	copy %r7,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r7
	ldd 16(%r3),%r6
	ldd 24(%r3),%r5
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 8
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	ldi 0,%r28
.L410:
	cmpb,*= %r25,%r28,.L409
	add,l %r26,%r28,%r31
	ldb 0(%r31),%r31
	cmpb,*<>,n %r0,%r31,.L410
	ldo 1(%r28),%r28
.L409:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 8
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L418
	ldb 0(%r26),%r28
.L414:
	ldb -1(%r28),%r19
	extrd,s %r19,63,8,%r19
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpb,=,n %r31,%r19,.L416
	ldb 0(%r28),%r31
	b,n .L419
.L417:
	ldb 0(%r28),%r31
.L419:
	cmpb,*<> %r0,%r31,.L414
	ldo 1(%r28),%r28
	ldo 1(%r26),%r26
	ldb 0(%r26),%r28
.L418:
	cmpb,*<>,n %r0,%r28,.L417
	copy %r25,%r28
	b,n .L413
.L416:
	copy %r26,%r28
.L413:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 8
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r25,63,32,%r25
	ldi 0,%r28
	ldb 0(%r26),%r31
.L424:
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r31,%r25,%r0
	copy %r26,%r28
.L421:
	ldo 1(%r26),%r26
	ldb -1(%r26),%r31
	cmpb,*<>,n %r0,%r31,.L424
	ldb 0(%r26),%r31
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 8
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r8,8(%r3)
	std %r7,16(%r3)
	std %r6,24(%r3)
	std %r5,32(%r3)
	std %r4,40(%r3)
	copy %r26,%r5
	copy %r25,%r6
	copy %r25,%r26
	ldo -48(%r30),%r29
	b,l strlen,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*= %r0,%r28,.L429
	copy %r28,%r7
	ldb 0(%r6),%r8
	b .L427
	extrd,s %r8,63,8,%r8
.L428:
	copy %r7,%r24
	copy %r6,%r25
	copy %r5,%r26
	ldo -48(%r30),%r29
	b,l strncmp,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L430
	copy %r4,%r27
	ldo 1(%r5),%r5
.L427:
	copy %r8,%r25
	copy %r5,%r26
	ldo -48(%r30),%r29
	b,l strchr,%r2
	copy %r27,%r4
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L428
	copy %r28,%r5
	b .L426
	ldi 0,%r28
.L429:
	b .L426
	copy %r5,%r28
.L430:
	copy %r5,%r28
.L426:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 8
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,dbl,!< %fr4,%fr0
	ftest
	b,n .L440
	b .L444
	fcmp,dbl,!> %fr4,%fr0
.L440:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L434
	fcmp,dbl,!> %fr4,%fr0
.L444:
	ftest
	b,n .L441
	b,n .L435
.L441:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L434
	b,n .L435
.L434:
	fneg,dbl %fr4,%fr4
.L435:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 8
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=160,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,160(%r30)
	std %r8,8(%r3)
	std %r7,16(%r3)
	std %r6,24(%r3)
	std %r5,32(%r3)
	std %r4,40(%r3)
	copy %r26,%r5
	copy %r24,%r7
	copy %r23,%r6
	sub %r25,%r23,%r8
	cmpb,*= %r0,%r23,.L451
	add,l %r26,%r8,%r8
	cmpb,*>> %r23,%r25,.L447
	ldi 1,%r28
	ldi 0,%r28
.L447:
	extrd,u %r28,63,8,%r28
	cmpb,*<> %r0,%r28,.L454
	ldi 0,%r28
	b,n .L448
.L450:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldb 0(%r7),%r28
	extrd,s %r28,63,8,%r28
	cmpb,<> %r28,%r31,.L449
	ldo -1(%r6),%r24
	ldo 1(%r7),%r25
	ldo 1(%r5),%r26
	ldo -48(%r30),%r29
	b,l memcmp,%r2
	copy %r27,%r4
	cmpb,*= %r0,%r28,.L453
	copy %r4,%r27
.L449:
	ldo 1(%r5),%r5
.L448:
	cmpb,*>>= %r8,%r5,.L450
	ldi 0,%r28
	b .L455
	ldd -16(%r3),%r2
.L451:
	b .L446
	copy %r26,%r28
.L453:
	copy %r5,%r28
.L446:
.L454:
	ldd -16(%r3),%r2
.L455:
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 8
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	copy %r24,%r5
	add,l %r28,%r5,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,dbl,!< %fr4,%fr0
	ftest
	b,n .L472
	ldi 0,%r31
	b .L476
	addil LT'.LC28,%r27
.L472:
	fneg,dbl %fr4,%fr4
	ldi 1,%r31
	addil LT'.LC28,%r27
.L476:
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L470
	ldi 1,%r28
	b .L474
	fcmp,dbl,= %fr4,%fr0
.L462:
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr22
	b .L460
	fmpy,dbl %fr4,%fr22,%fr4
.L470:
	ldi 0,%r28
.L460:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r19
	fldd 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b,n .L462
	stw %r28,0(%r25)
	b,n .L475
.L474:
	ftest
	b,n .L464
	ldi 0,%r28
.L464:
	extrd,u %r28,63,8,%r28
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L465
	ldi 1,%r19
	ldi 0,%r19
.L465:
	and %r28,%r19,%r28
	cmpb,*<>,n %r0,%r28,.L471
	stw %r28,0(%r25)
	b,n .L475
.L467:
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	b .L466
	fadd,dbl %fr4,%fr4,%fr4
.L471:
	ldi 0,%r28
.L466:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L467
	stw %r28,0(%r25)
.L475:
	cmpclr,*<> %r0,%r31,%r0
	b,n .L468
	fneg,dbl %fr4,%fr4
.L468:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 8
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b .L478
	ldi 0,%r28
.L480:
	cmpclr,*= %r0,%r31,%r0
	add,l %r28,%r25,%r28
.L479:
	depd,z %r25,62,63,%r25
	extrd,u %r26,62,63,%r26
.L478:
	cmpb,*<> %r0,%r26,.L480
	extrd,u %r26,63,1,%r31
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 8
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r25
	b .L482
	ldi 1,%r31
.L485:
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
.L482:
	cmpb,>> %r28,%r25,.L483
	ldi 1,%r20
	ldi 0,%r20
.L483:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0,1,%r19
	and %r19,%r20,%r19
	cmpiclr,<> 0,%r19,%r0
	b,n .L490
	cmpib,<= 0,%r25,.L485
	ldi 0,%r19
	b,n .L487
.L488:
	cmpb,>>,n %r25,%r28,.L486
	sub %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r31,%r19
.L486:
	extrd,u %r31,62,63,%r31
	b .L487
	extrd,u %r25,62,63,%r25
.L490:
	ldi 0,%r19
.L487:
	cmpb,*<> %r0,%r31,.L488
	nop
	cmpclr,*<> %r0,%r24,%r0
	copy %r19,%r28
.L489:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 8
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,128(%r30)
	std %r4,8(%r3)
	extrd,s %r26,63,8,%r26
	cmpib,<=,n 0,%r26,.L493
	uaddcm %r0,%r26,%r26
	extrd,s %r26,63,8,%r26
.L493:
	cmpb,*= %r0,%r26,.L495
	depw,z %r26,23,24,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	extrd,u %r26,63,32,%r26
	ldo -33(%r28),%r28
	b .L494
	extrd,s %r28,63,32,%r28
.L495:
	ldi 7,%r28
.L494:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 8
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,128(%r30)
	std %r4,8(%r3)
	cmpclr,*<= %r0,%r26,%r0
	uaddcm %r0,%r26,%r26
.L497:
	cmpb,*= %r0,%r26,.L499
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	b .L498
	extrd,s %r28,63,32,%r28
.L499:
	ldi 63,%r28
.L498:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 8
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r26
	extrd,u %r25,63,32,%r25
	b .L501
	ldi 0,%r28
.L503:
	cmpb,*=,n %r0,%r31,.L502
	add,l %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
.L502:
	extrd,u %r26,62,63,%r26
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
.L501:
	cmpb,*<> %r0,%r26,.L503
	extrd,u %r26,63,1,%r31
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 8
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r24,63,32,%r28
	extrd,u %r24,32+29-1,29,%r19
	depwi 0,31,3,%r24
	cmpb,*>> %r25,%r26,.L505
	extrd,u %r24,63,32,%r24
	add,l %r25,%r28,%r31
	cmpclr,*>> %r26,%r31,%r0
	b,n .L506
.L505:
	copy %r25,%r31
	copy %r26,%r20
	b .L507
	shladd,l %r19,3,%r25,%r19
.L508:
	std %r21,0(%r20)
	ldo 8(%r31),%r31
	ldo 8(%r20),%r20
.L507:
	cmpb,*<>,n %r19,%r31,.L508
	ldd 0(%r31),%r21
	b,n .L509
.L510:
	ldb 0(%r31),%r19
	add,l %r26,%r24,%r31
	stb %r19,0(%r31)
	ldo 1(%r24),%r24
.L509:
	cmpb,<< %r24,%r28,.L510
	add,l %r25,%r24,%r31
	b,n .L504
.L512:
	add,l %r25,%r28,%r31
	add,l %r26,%r28,%r19
	ldb 0(%r31),%r31
	stb %r31,0(%r19)
.L506:
	ldo -1(%r28),%r31
	cmpib,<> -1,%r31,.L512
	extrd,u %r31,63,32,%r28
.L504:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 8
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r24,63,32,%r28
	cmpb,*>> %r25,%r26,.L514
	extrd,u %r24,32+31-1,31,%r19
	add,l %r25,%r28,%r31
	cmpclr,*>> %r26,%r31,%r0
	b,n .L515
.L514:
	copy %r25,%r31
	copy %r26,%r20
	b .L516
	shladd,l %r19,1,%r25,%r19
.L517:
	sth %r21,0(%r20)
	ldo 2(%r31),%r31
	ldo 2(%r20),%r20
.L516:
	cmpb,*<>,n %r19,%r31,.L517
	ldh 0(%r31),%r21
	extrd,u %r28,63,1,%r28
	cmpb,*= %r0,%r28,.L513
	ldo -1(%r24),%r24
	extrd,u %r24,63,32,%r24
	add,l %r25,%r24,%r25
	add,l %r26,%r24,%r26
	ldb 0(%r25),%r28
	b .L513
	stb %r28,0(%r26)
.L519:
	add,l %r25,%r28,%r31
	add,l %r26,%r28,%r19
	ldb 0(%r31),%r31
	stb %r31,0(%r19)
.L515:
	ldo -1(%r28),%r31
	cmpib,<> -1,%r31,.L519
	extrd,u %r31,63,32,%r28
.L513:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 8
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r24,63,32,%r28
	extrd,u %r24,32+30-1,30,%r19
	depwi 0,31,2,%r24
	cmpb,*>> %r25,%r26,.L521
	extrd,u %r24,63,32,%r24
	add,l %r25,%r28,%r31
	cmpclr,*>> %r26,%r31,%r0
	b,n .L522
.L521:
	copy %r25,%r31
	copy %r26,%r20
	b .L523
	shladd,l %r19,2,%r25,%r19
.L524:
	stw %r21,0(%r20)
	ldo 4(%r31),%r31
	ldo 4(%r20),%r20
.L523:
	cmpb,*<>,n %r19,%r31,.L524
	ldw 0(%r31),%r21
	b,n .L525
.L526:
	ldb 0(%r31),%r19
	add,l %r26,%r24,%r31
	stb %r19,0(%r31)
	ldo 1(%r24),%r24
.L525:
	cmpb,<< %r24,%r28,.L526
	add,l %r25,%r24,%r31
	b,n .L520
.L528:
	add,l %r25,%r28,%r31
	add,l %r26,%r28,%r19
	ldb 0(%r31),%r31
	stb %r31,0(%r19)
.L522:
	ldo -1(%r28),%r31
	cmpib,<> -1,%r31,.L528
	extrd,u %r31,63,32,%r28
.L520:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 8
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	b,l $$remI,%r2
	nop
	extrd,s %r29,63,32,%r28
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 8
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	std %r26,8(%r3)
	fldd 8(%r3),%fr22
	fcnv,uw,dbl %fr22R,%fr4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 8
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	std %r26,8(%r3)
	fldd 8(%r3),%fr22
	fcnv,uw,sgl %fr22R,%fr4R
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 8
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	std %r26,8(%r3)
	fldd 8(%r3),%fr22
	fcnv,udw,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 8
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	std %r26,8(%r3)
	fldd 8(%r3),%fr22
	fcnv,udw,sgl %fr22,%fr4R
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 8
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	.IMPORT $$remU,MILLICODE
	b,l $$remU,%r2
	nop
	extrd,u %r29,63,32,%r28
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 8
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,16,%r26
	b .L536
	ldi 0,%r28
.L538:
	mtsar %r31
	bb,<,n %r26,%sar,.L537
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L536:
	ldi 16,%r31
	cmpb,<> %r31,%r28,.L538
	ldo 16(%r28),%r31
.L537:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 8
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,16,%r26
	b .L540
	ldi 0,%r28
.L542:
	bb,<,n %r26,%sar,.L541
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L540:
	ldi 16,%r31
	cmpb,<> %r31,%r28,.L542
	mtsarcm %r28
.L541:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata
	.align 4
.LC32:
	.word	1191182336
	.text
	.align 8
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	addil LT'.LC32,%r27
	ldd RT'.LC32(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!>= %fr4R,%fr22R
	ftest
	b .L547
	ldil L'32768,%r31
	b .L548
	fcnv,t,sgl,dw %fr4R,%fr4
.L547:
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	b .L546
	add,l %r28,%r31,%r28
.L548:
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
.L546:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 8
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	b .L550
	copy %r28,%r31
.L552:
	bb,>=,n %r26,%sar,.L551
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L551:
	ldo 1(%r31),%r31
	extrd,s %r31,63,32,%r31
.L550:
	ldi 16,%r19
	cmpb,<> %r19,%r31,.L552
	mtsarcm %r31
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 8
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,16,%r26
	ldi 0,%r28
	b .L554
	copy %r28,%r31
.L556:
	bb,>=,n %r26,%sar,.L555
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L555:
	ldo 1(%r31),%r31
	extrd,s %r31,63,32,%r31
.L554:
	ldi 16,%r19
	cmpb,<> %r19,%r31,.L556
	mtsarcm %r31
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 8
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r26
	extrd,u %r25,63,32,%r25
	b .L558
	ldi 0,%r28
.L560:
	cmpb,*=,n %r0,%r31,.L559
	add,l %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
.L559:
	extrd,u %r26,62,63,%r26
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
.L558:
	cmpb,*<> %r0,%r26,.L560
	extrd,u %r26,63,1,%r31
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 8
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r31
	cmpib,= 0,%r26,.L566
	extrd,u %r25,63,32,%r25
	b .L563
	ldi 0,%r28
.L565:
	cmpb,*=,n %r0,%r19,.L564
	add,l %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
.L564:
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r25,62,63,%r25
.L563:
	cmpb,*<> %r0,%r25,.L565
	extrd,u %r25,63,1,%r19
	b,n .L562
.L566:
	ldi 0,%r28
.L562:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 8
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r28
	extrd,u %r25,63,32,%r25
	extrd,s %r24,63,32,%r24
	b .L568
	ldi 1,%r31
.L571:
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
.L568:
	cmpb,>> %r28,%r25,.L569
	ldi 1,%r20
	ldi 0,%r20
.L569:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0,1,%r19
	and %r19,%r20,%r19
	cmpiclr,<> 0,%r19,%r0
	b,n .L576
	cmpib,<= 0,%r25,.L571
	ldi 0,%r19
	b,n .L573
.L574:
	cmpb,>>,n %r25,%r28,.L572
	sub %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r31,%r19
.L572:
	extrd,u %r31,62,63,%r31
	b .L573
	extrd,u %r25,62,63,%r25
.L576:
	ldi 0,%r19
.L573:
	cmpb,*<> %r0,%r31,.L574
	nop
	cmpclr,*<> %r0,%r24,%r0
	copy %r19,%r28
.L575:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 8
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b .L582
	ldi -1,%r28
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b .L581
	ldi 0,%r28
	b,n .L579
.L581:
	ldi 1,%r28
.L579:
.L582:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 8
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b .L587
	ldi -1,%r28
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b .L586
	ldi 0,%r28
	b,n .L584
.L586:
	ldi 1,%r28
.L584:
.L587:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 8
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,31,32,%r28
	extrd,u %r25,31,32,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r25,8(%r3)
	fldd 8(%r3),%fr23
	std %r28,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r28
	std %r26,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r25,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r25
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r25,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 8
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,31,32,%r28
	extrd,u %r25,31,32,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r25,8(%r3)
	fldd 8(%r3),%fr23
	std %r28,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r28
	std %r26,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	std %r25,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r25
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	add,l %r28,%r31,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r25,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 8
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r26,63,32,%r26
	cmpib,<= 0,%r25,.L597
	extrd,s %r25,63,32,%r31
	sub %r0,%r31,%r31
	extrd,s %r31,63,32,%r31
	b .L591
	ldi 1,%r22
.L597:
	ldi 0,%r22
.L591:
	ldi 0,%r28
	b .L592
	copy %r28,%r20
.L595:
	cmpb,*=,n %r0,%r19,.L593
	add,l %r28,%r26,%r28
	extrd,s %r28,63,32,%r28
.L593:
	add,l %r26,%r26,%r26
	extrd,s %r26,63,32,%r26
	extrw,s %r31,30,31,%r31
	extrd,s %r31,63,32,%r31
	ldo 1(%r20),%r20
	extrd,s %r20,63,8,%r20
.L592:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0,1,%r19
	extrd,u %r19,63,8,%r19
	extrd,u %r20,63,8,%r21
	ldi 31,%r24
	cmpb,>>= %r24,%r21,.L594
	ldi 1,%r23
	ldi 0,%r23
.L594:
	and %r19,%r23,%r19
	cmpb,*<>,n %r0,%r19,.L595
	extrd,u %r31,63,1,%r19
	cmpb,*=,n %r0,%r22,.L596
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L596:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 8
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	cmpb,*<=,n %r0,%r26,.L603
	sub %r0,%r26,%r26
	b .L600
	ldi 1,%r5
.L603:
	ldi 0,%r5
.L600:
	cmpb,*<=,n %r0,%r25,.L601
	sub %r0,%r25,%r25
	or,>= %r0,%r5,%r5
	subi 0,%r5,%r5
	ldo -1(%r5),%r5
	extrw,u %r5,0,1,%r5
	extrd,u %r5,63,1,%r5
.L601:
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	ldi 0,%r24
	cmpclr,*= %r0,%r5,%r0
	sub %r0,%r28,%r28
.L602:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 8
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	cmpb,*<=,n %r0,%r26,.L608
	sub %r0,%r26,%r26
	b .L605
	ldi 1,%r5
.L608:
	ldi 0,%r5
.L605:
	cmpclr,*<= %r0,%r25,%r0
	sub %r0,%r25,%r25
.L606:
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	ldi 1,%r24
	cmpclr,*= %r0,%r5,%r0
	sub %r0,%r28,%r28
.L607:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 8
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r24,63,32,%r24
	extrd,u %r26,63,16,%r28
	extrd,u %r25,63,16,%r25
	b .L610
	ldi 1,%r31
.L613:
	add,l %r25,%r25,%r25
	extrd,u %r25,63,16,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,16,%r31
.L610:
	cmpb,>> %r28,%r25,.L611
	ldi 1,%r20
	ldi 0,%r20
.L611:
	extrw,s,>= %r31,31,16,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrd,u %r19,48+1-1,1,%r19
	and %r19,%r20,%r19
	cmpb,*= %r0,%r19,.L618
	extrd,s %r25,63,16,%r19
	cmpib,<= 0,%r19,.L613
	ldi 0,%r19
	b,n .L615
.L616:
	cmpb,>>,n %r25,%r28,.L614
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	or %r19,%r31,%r19
.L614:
	extrd,u %r31,62,63,%r31
	b .L615
	extrd,u %r25,62,63,%r25
.L618:
	ldi 0,%r19
.L615:
	cmpb,*<> %r0,%r31,.L616
	nop
	cmpclr,*<> %r0,%r24,%r0
	copy %r19,%r28
.L617:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 8
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r24,63,32,%r24
	b .L621
	ldi 1,%r28
.L624:
	depd,z %r25,62,63,%r25
	depd,z %r28,62,63,%r28
.L621:
	cmpb,*>> %r26,%r25,.L622
	ldi 1,%r19
	ldi 0,%r19
.L622:
	or,*>= %r0,%r28,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,0,1,%r31
	and %r31,%r19,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L629
	bb,*>= %r25,32,.L624
	ldi 0,%r31
	b,n .L626
.L627:
	cmpb,*>>,n %r25,%r26,.L625
	sub %r26,%r25,%r26
	or %r31,%r28,%r31
.L625:
	extrd,u %r28,62,63,%r28
	b .L626
	extrd,u %r25,62,63,%r25
.L629:
	ldi 0,%r31
.L626:
	cmpb,*<> %r0,%r28,.L627
	nop
	cmpb,*= %r0,%r24,.L628
	copy %r31,%r28
	copy %r26,%r28
.L628:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 8
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	bb,>= %r25,26,.L632
	extrd,s %r25,63,32,%r19
	ldi 0,%r31
	depd %r31,32+32-1,32,%r31
	extrd,u %r26,63,32,%r26
	subi 63,%r25,%r25
	mtsar %r25
	depw,z %r26,%sar,32,%r26
	extrd,s %r26,63,32,%r26
	b .L633
	depd %r26,0+32-1,32,%r31
.L632:
	cmpb,*= %r0,%r19,.L635
	extrd,u %r26,63,32,%r28
	mtsarcm %r19
	depw,z %r28,%sar,32,%r20
	extrd,u %r20,63,32,%r20
	ldi 0,%r31
	depd %r20,32+32-1,32,%r31
	extrd,s %r26,0+32-1,32,%r26
	depw,z %r26,%sar,32,%r26
	subi 32,%r19,%r19
	mtsar %r19
	shrpw %r0,%r28,%sar,%r28
	or %r28,%r26,%r28
	extrd,s %r28,63,32,%r28
	depd %r28,0+32-1,32,%r31
.L633:
	b .L634
	copy %r31,%r28
.L635:
	copy %r26,%r28
.L634:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 8
.globl __ashlti3
	.type	__ashlti3, @function
__ashlti3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r24,63,32,%r31
	copy %r26,%r19
	bb,>= %r24,25,.L637
	copy %r25,%r20
	ldi 0,%r28
	copy %r28,%r29
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	b .L638
	depd,z %r25,%sar,64,%r28
.L637:
	cmpb,*= %r0,%r31,.L639
	mtsarcm %r31
	depd,z %r25,%sar,64,%r29
	depd,z %r26,%sar,64,%r19
	subi 64,%r31,%r31
	mtsar %r31
	shrpd %r0,%r25,%sar,%r31
	or %r31,%r19,%r28
.L638:
	copy %r28,%r19
	b .L639
	copy %r29,%r20
.L639:
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ashlti3, .-__ashlti3
	.align 8
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	bb,>= %r25,26,.L642
	extrd,s %r25,63,32,%r19
	extrd,s %r26,0+32-1,32,%r28
	extrw,s %r28,0,1,%r28
	extrd,s %r28,63,32,%r28
	ldi 0,%r31
	depd %r28,0+32-1,32,%r31
	extrd,s %r26,0+32-1,32,%r26
	subi 63,%r25,%r25
	mtsar %r25
	extrw,s %r26,%sar,32,%r26
	extrd,u %r26,63,32,%r26
	b .L643
	depd %r26,32+32-1,32,%r31
.L642:
	cmpb,*= %r0,%r19,.L645
	extrd,s %r26,0+32-1,32,%r28
	mtsarcm %r19
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r28
	ldi 0,%r31
	depd %r28,0+32-1,32,%r31
	extrd,s %r26,0+32-1,32,%r28
	ldo -1(%r19),%r20
	mtsar %r20
	depw,z %r28,%sar,32,%r28
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	or %r28,%r26,%r28
	extrd,u %r28,63,32,%r28
	depd %r28,32+32-1,32,%r31
.L643:
	b .L644
	copy %r31,%r28
.L645:
	copy %r26,%r28
.L644:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 8
.globl __ashrti3
	.type	__ashrti3, @function
__ashrti3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r24,63,32,%r21
	copy %r26,%r19
	bb,>= %r24,25,.L647
	copy %r25,%r20
	extrd,s %r26,0,1,%r28
	ldo -64(%r24),%r24
	extrd,s %r24,63,32,%r24
	mtsarcm %r24
	b .L648
	extrd,s %r26,%sar,64,%r29
.L647:
	cmpb,*= %r0,%r21,.L649
	mtsarcm %r21
	extrd,s %r26,%sar,64,%r28
	subi 64,%r21,%r31
	extrd,s %r31,63,32,%r31
	mtsarcm %r31
	depd,z %r26,%sar,64,%r19
	mtsar %r21
	shrpd %r0,%r25,%sar,%r31
	or %r19,%r31,%r29
.L648:
	copy %r28,%r19
	b .L649
	copy %r29,%r20
.L649:
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ashrti3, .-__ashrti3
	.align 8
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	or %r28,%r31,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 8
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 8
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	depwi,z -1,31,16,%r28
	cmpb,<< %r28,%r26,.L658
	extrd,u %r26,63,32,%r20
	b .L654
	ldi 16,%r19
.L658:
	ldi 0,%r19
.L654:
	subi 16,%r19,%r28
	mtsar %r28
	shrpw %r0,%r20,%sar,%r31
	depwi,z -1,23,8,%r28
	and %r31,%r28,%r28
	cmpib,<> 0,%r28,.L659
	extrd,u %r19,63,32,%r19
	b .L655
	ldi 8,%r28
.L659:
	ldi 0,%r28
.L655:
	subi 8,%r28,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 240,%r19
	and %r31,%r19,%r19
	cmpib,= 0,%r19,.L656
	ldi 4,%r19
	ldi 0,%r19
.L656:
	subi 4,%r19,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 12,%r19
	and %r31,%r19,%r19
	cmpib,= 0,%r19,.L657
	ldi 2,%r19
	ldi 0,%r19
.L657:
	subi 2,%r19,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 2,%r19
	and %r31,%r19,%r19
	subi 2,%r31,%r31
	cmpiclr,<> 0,%r19,%r19
	ldi 1,%r19
	std %r19,8(%r3)
	fldd 8(%r3),%fr22
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	add,l %r28,%r19,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 8
.globl __clzti2
	.type	__clzti2, @function
__clzti2:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	copy %r26,%r21
	or,*>= %r0,%r26,%r5
	subi 0,%r5,%r5
	ldo -1(%r5),%r5
	extrd,s %r5,0,1,%r5
	extrd,s %r5,63,32,%r26
	andcm %r21,%r26,%r28
	and %r26,%r25,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	or %r28,%r26,%r26
	ldi 64,%r31
	and %r5,%r31,%r5
	add,l %r28,%r5,%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clzti2, .-__clzti2
	.align 8
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r26,0+32-1,32,%r31
	extrd,s %r25,0+32-1,32,%r28
	cmpclr,<= %r28,%r31,%r0
	b,n .L665
	cmpclr,>= %r28,%r31,%r0
	b,n .L666
	cmpclr,<<= %r25,%r26,%r0
	b,n .L667
	cmpb,<< %r25,%r26,.L668
	ldi 1,%r28
	b,n .L664
.L665:
	b .L664
	ldi 0,%r28
.L666:
	b .L664
	ldi 2,%r28
.L667:
	b .L664
	ldi 0,%r28
.L668:
	ldi 2,%r28
.L664:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 8
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,128(%r30)
	std %r4,8(%r3)
	ldo -48(%r30),%r29
	b,l __cmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 8
.globl __cmpti2
	.type	__cmpti2, @function
__cmpti2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpb,*< %r26,%r24,.L676
	ldi 0,%r28
	cmpb,*> %r26,%r24,.L676
	ldi 2,%r28
	cmpb,*<< %r25,%r23,.L676
	ldi 0,%r28
	cmpb,*>> %r25,%r23,.L675
	ldi 1,%r28
	b .L677
	ldd -16(%r3),%r2
	b .L671
	ldi 2,%r28
.L675:
	ldi 2,%r28
.L671:
.L676:
	ldd -16(%r3),%r2
.L677:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmpti2, .-__cmpti2
	.align 8
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r20
	extrd,u %r26,63,16,%r26
	cmpb,*<>,n %r0,%r26,.L683
	ldi 16,%r19
	b .L687
	mtsar %r19
.L683:
	ldi 0,%r19
	mtsar %r19
.L687:
	shrpw %r0,%r20,%sar,%r31
	extrd,u %r31,63,8,%r28
	cmpb,*<> %r0,%r28,.L684
	extrd,u %r19,63,32,%r19
	b .L680
	ldi 8,%r28
.L684:
	ldi 0,%r28
.L680:
	mtsar %r28
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	extrd,u %r31,63,4,%r19
	cmpb,*= %r0,%r19,.L681
	ldi 4,%r19
	ldi 0,%r19
.L681:
	mtsar %r19
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	extrd,u %r31,63,2,%r19
	cmpb,*= %r0,%r19,.L682
	ldi 2,%r19
	ldi 0,%r19
.L682:
	mtsar %r19
	shrpw %r0,%r31,%sar,%r31
	extrw,u %r31,31,2,%r31
	add,l %r28,%r19,%r28
	uaddcm %r0,%r31,%r19
	extrw,u %r31,30,31,%r31
	subi 2,%r31,%r31
	extrw,s %r19,31+1-1,1,%r19
	and %r19,%r31,%r31
	add,l %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 8
.globl __ctzti2
	.type	__ctzti2, @function
__ctzti2:
	.PROC
	.CALLINFO FRAME=144,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,144(%r30)
	std %r5,8(%r3)
	std %r4,16(%r3)
	copy %r26,%r21
	or,*>= %r0,%r25,%r5
	subi 0,%r5,%r5
	ldo -1(%r5),%r5
	extrd,s %r5,0,1,%r5
	extrd,s %r5,63,32,%r26
	and %r26,%r21,%r19
	andcm %r25,%r26,%r26
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	or %r26,%r19,%r26
	ldi 64,%r31
	and %r5,%r31,%r5
	add,l %r28,%r5,%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ctzti2, .-__ctzti2
	.align 8
.globl __ffsti2
	.type	__ffsti2, @function
__ffsti2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,128(%r30)
	std %r4,8(%r3)
	cmpb,*<> %r0,%r25,.L690
	ldo -48(%r30),%r29
	cmpclr,*<> %r0,%r26,%r0
	b,n .L692
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	b .L691
	extrd,s %r28,63,32,%r28
.L690:
	b,l __ctzdi2,%r2
	copy %r25,%r26
	ldo 1(%r28),%r28
	b .L691
	extrd,s %r28,63,32,%r28
.L692:
	ldi 0,%r28
.L691:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ffsti2, .-__ffsti2
	.align 8
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	bb,>= %r25,26,.L694
	extrd,s %r25,63,32,%r19
	ldi 0,%r31
	depd %r31,0+32-1,32,%r31
	extrd,u %r26,0+32-1,32,%r26
	mtsar %r25
	shrpw %r0,%r26,%sar,%r26
	extrd,u %r26,63,32,%r26
	b .L695
	depd %r26,32+32-1,32,%r31
.L694:
	cmpb,*= %r0,%r19,.L697
	extrd,u %r26,0+32-1,32,%r28
	mtsar %r19
	shrpw %r0,%r28,%sar,%r28
	extrd,u %r28,63,32,%r28
	ldi 0,%r31
	depd %r28,0+32-1,32,%r31
	extrd,u %r26,0+32-1,32,%r28
	ldo -1(%r19),%r20
	mtsar %r20
	depw,z %r28,%sar,32,%r28
	mtsar %r19
	shrpw %r0,%r26,%sar,%r26
	or %r28,%r26,%r28
	extrd,u %r28,63,32,%r28
	depd %r28,32+32-1,32,%r31
.L695:
	b .L696
	copy %r31,%r28
.L697:
	copy %r26,%r28
.L696:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 8
.globl __lshrti3
	.type	__lshrti3, @function
__lshrti3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r25,%r22
	extrd,s %r24,63,32,%r21
	copy %r26,%r19
	bb,>= %r24,25,.L699
	copy %r25,%r20
	ldi 0,%r28
	mtsar %r24
	b .L700
	shrpd %r0,%r26,%sar,%r29
.L699:
	cmpb,*= %r0,%r21,.L701
	mtsar %r21
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r21,%r31
	extrd,s %r31,63,32,%r31
	mtsarcm %r31
	depd,z %r26,%sar,64,%r19
	mtsar %r21
	shrpd %r0,%r22,%sar,%r31
	or %r19,%r31,%r29
.L700:
	copy %r28,%r19
	b .L701
	copy %r29,%r20
.L701:
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__lshrti3, .-__lshrti3
	.align 8
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrw,u %r26,31,16,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	extrw,u %r25,31,16,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr24
	ldi 0,%r28
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	depd %r31,32+32-1,32,%r28
	extrw,u %r28,15,16,%r19
	extrd,u %r28,63,16,%r31
	depd %r31,32+32-1,32,%r28
	extrw,u %r26,15,16,%r26
	std %r26,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r31
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
	std %r25,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
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
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r26
	add,l %r26,%r31,%r26
	extrd,s %r26,63,32,%r26
	depd %r26,0+32-1,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 8
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=176,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,176(%r30)
	std %r8,16(%r3)
	std %r7,24(%r3)
	std %r6,32(%r3)
	std %r5,40(%r3)
	std %r4,48(%r3)
	copy %r26,%r5
	copy %r25,%r6
	extrd,u %r26,63,32,%r7
	extrd,u %r25,63,32,%r8
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l __muldsi3,%r2
	copy %r7,%r26
	extrd,s %r28,0+32-1,32,%r19
	extrd,s %r5,0+32-1,32,%r5
	std %r5,8(%r3)
	fldd 8(%r3),%fr22
	std %r8,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	extrd,s %r6,0+32-1,32,%r6
	std %r6,8(%r3)
	fldd 8(%r3),%fr22
	std %r7,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r6
	add,l %r31,%r6,%r31
	add,l %r31,%r19,%r31
	extrd,s %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	ldd -16(%r3),%r2
	ldd 16(%r3),%r8
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 8
.globl __mulddi3
	.type	__mulddi3, @function
__mulddi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,63,32,%r19
	std %r19,8(%r3)
	fldd 8(%r3),%fr24
	extrd,u %r25,63,32,%r21
	std %r21,8(%r3)
	fldd 8(%r3),%fr22
	xmpyu %fr22R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r31,31,32,%r28
	extrd,u %r31,63,32,%r31
	extrd,u %r26,31,32,%r26
	std %r26,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r19
	add,l %r28,%r19,%r28
	depd,z %r28,31,32,%r21
	add,l %r21,%r31,%r20
	extrd,u %r28,31,32,%r19
	extrd,u %r20,31,32,%r28
	extrd,u %r20,63,32,%r31
	extrd,u %r25,31,32,%r25
	std %r25,8(%r3)
	fldd 8(%r3),%fr22
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r21
	add,l %r28,%r21,%r28
	depd,z %r28,31,32,%r21
	add,l %r21,%r31,%r20
	extrd,u %r28,31,32,%r28
	add,l %r28,%r19,%r28
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r25
	add,l %r25,%r28,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulddi3, .-__mulddi3
	.align 8
.globl __multi3
	.type	__multi3, @function
__multi3:
	.PROC
	.CALLINFO FRAME=208,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=12
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,208(%r30)
	std %r12,16(%r3)
	std %r11,24(%r3)
	std %r10,32(%r3)
	std %r9,40(%r3)
	std %r8,48(%r3)
	std %r7,56(%r3)
	std %r6,64(%r3)
	std %r5,72(%r3)
	std %r4,80(%r3)
	copy %r25,%r6
	copy %r23,%r10
	copy %r26,%r11
	copy %r24,%r7
	copy %r23,%r25
	ldo -48(%r30),%r29
	b,l __mulddi3,%r2
	copy %r6,%r26
	copy %r28,%r21
	extrd,u %r11,31,32,%r28
	extrd,u %r10,31,32,%r8
	std %r10,8(%r3)
	fldd 8(%r3),%fr22
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	std %r8,8(%r3)
	fldd 8(%r3),%fr22
	std %r11,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r8
	std %r10,8(%r3)
	fldd 8(%r3),%fr22
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r11
	add,l %r28,%r8,%r28
	depd,z %r28,31,32,%r28
	add,l %r28,%r11,%r28
	extrd,u %r7,31,32,%r31
	extrd,u %r6,31,32,%r5
	std %r6,8(%r3)
	fldd 8(%r3),%fr22
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	std %r5,8(%r3)
	fldd 8(%r3),%fr22
	std %r7,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r5
	std %r6,8(%r3)
	fldd 8(%r3),%fr22
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r7
	add,l %r31,%r5,%r31
	depd,z %r31,31,32,%r31
	add,l %r31,%r7,%r31
	add,l %r28,%r31,%r28
	add,l %r28,%r21,%r28
	ldd -16(%r3),%r2
	ldd 16(%r3),%r12
	ldd 24(%r3),%r11
	ldd 32(%r3),%r10
	ldd 40(%r3),%r9
	ldd 48(%r3),%r8
	ldd 56(%r3),%r7
	ldd 64(%r3),%r6
	ldd 72(%r3),%r5
	ldd 80(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__multi3, .-__multi3
	.align 8
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	sub %r0,%r26,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 8
.globl __negti2
	.type	__negti2, @function
__negti2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	copy %r26,%r28
	copy %r25,%r29
	sub %r0,%r29,%r20
	sub,db %r0,%r28,%r19
	copy %r19,%r21
	copy %r21,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__negti2, .-__negti2
	.align 8
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 8
.globl __parityti2
	.type	__parityti2, @function
__parityti2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__parityti2, .-__parityti2
	.align 8
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,u %r28,63,7,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 8
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,u %r28,63,6,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
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
	extrd,u %r28,63,8,%r28
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__popcountti2, .-__popcountti2
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r25,63,32,%r31
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	fldd 0(%r28),%fr22
.L718:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L721
	extrw,u %r31,0,1,%r28
	fmpy,dbl %fr22,%fr4,%fr22
.L721:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L717
	extrd,s %r28,63,32,%r31
	b .L718
	fmpy,dbl %fr4,%fr4,%fr4
.L717:
	cmpb,*= %r0,%r25,.L720
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	fldd 0(%r28),%fr4
	b .L719
	fdiv,dbl %fr4,%fr22,%fr4
.L720:
	fcpy,dbl %fr22,%fr4
.L719:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata
	.align 4
.LC48:
	.word	1065353216
	.text
	.align 8
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,s %r25,63,32,%r31
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	fldw 0(%r28),%fr22R
.L725:
	extrd,u %r31,63,1,%r28
	cmpb,*= %r0,%r28,.L728
	extrw,u %r31,0,1,%r28
	fmpy,sgl %fr22R,%fr4R,%fr22R
.L728:
	add,l %r28,%r31,%r28
	extrw,s %r28,30,31,%r28
	cmpib,= 0,%r28,.L724
	extrd,s %r28,63,32,%r31
	b .L725
	fmpy,sgl %fr4R,%fr4R,%fr4R
.L724:
	cmpb,*= %r0,%r25,.L727
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	fldw 0(%r28),%fr4R
	b .L726
	fdiv,sgl %fr4R,%fr22R,%fr4R
.L727:
	fcpy,sgl %fr22R,%fr4R
.L726:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 8
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	extrd,u %r26,0+32-1,32,%r31
	extrd,u %r25,0+32-1,32,%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L731
	cmpclr,>>= %r28,%r31,%r0
	b,n .L732
	cmpclr,<<= %r25,%r26,%r0
	b,n .L733
	cmpb,<< %r25,%r26,.L734
	ldi 1,%r28
	b,n .L730
.L731:
	b .L730
	ldi 0,%r28
.L732:
	b .L730
	ldi 2,%r28
.L733:
	b .L730
	ldi 0,%r28
.L734:
	ldi 2,%r28
.L730:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 8
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,128(%r30)
	std %r4,8(%r3)
	ldo -48(%r30),%r29
	b,l __ucmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.align 8
.globl __ucmpti2
	.type	__ucmpti2, @function
__ucmpti2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	std %r2,-16(%r30)
	copy %r3,%r1
	copy %r30,%r3
	std,ma %r1,64(%r30)
	cmpb,*<< %r26,%r24,.L742
	ldi 0,%r28
	cmpb,*>> %r26,%r24,.L742
	ldi 2,%r28
	cmpb,*<< %r25,%r23,.L742
	ldi 0,%r28
	cmpb,*>> %r25,%r23,.L741
	ldi 1,%r28
	b .L743
	ldd -16(%r3),%r2
	b .L737
	ldi 2,%r28
.L741:
	ldi 2,%r28
.L737:
.L742:
	ldd -16(%r3),%r2
.L743:
	ldo 64(%r3),%r30
	bve (%r2)
	ldd,mb -64(%r30),%r3
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
