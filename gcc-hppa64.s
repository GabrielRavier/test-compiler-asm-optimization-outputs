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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	cmpclr,*<< %r25,%r26,%r0
	b,n .L4
	add,l %r25,%r24,%r19
	add,l %r26,%r24,%r31
	b,n .L5
.L6:
	ldb,mb -1(%r19),%r20
	stb,mb %r20,-1(%r31)
.L5:
	cmpb,*<> %r25,%r19,.L6
	nop
	b,n .L7
.L4:
	cmpclr,*<> %r25,%r26,%r0
	b,n .L7
	add,l %r26,%r24,%r24
	copy %r25,%r19
	copy %r26,%r31
	b,n .L8
.L9:
	ldo 1(%r19),%r19
	ldo 1(%r31),%r31
	ldb -1(%r19),%r20
	stb %r20,-1(%r31)
.L8:
	cmpb,*<> %r24,%r31,.L9
	nop
.L7:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r24,63,8,%r24
	b,n .L11
.L13:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	ldo 1(%r26),%r26
.L11:
	cmpclr,*<> %r0,%r23,%r0
	b,n .L12
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	cmpb,*<> %r28,%r24,.L13
	nop
.L12:
	cmpclr,*<> %r0,%r23,%r0
	b,n .L15
	ldo 1(%r26),%r28
	b,n .L14
.L15:
	ldi 0,%r28
.L14:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r25,63,8,%r25
	b,n .L17
.L19:
	ldo 1(%r26),%r26
	ldo -1(%r24),%r24
.L17:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L18
	ldb 0(%r26),%r28
	cmpb,<> %r28,%r25,.L19
	nop
.L18:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L21
	copy %r26,%r28
	b,n .L20
.L21:
	ldi 0,%r28
.L20:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L23:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L24
	ldb 0(%r26),%r31
	ldb 0(%r25),%r28
	cmpb,= %r28,%r31,.L25
	nop
.L24:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L27
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	b,n .L26
.L27:
	ldi 0,%r28
.L26:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r31
	b,n .L29
.L30:
	ldo 1(%r25),%r25
	ldo 1(%r31),%r31
	ldb -1(%r25),%r19
	stb %r19,-1(%r31)
.L29:
	cmpb,*<> %r24,%r31,.L30
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldo -1(%r24),%r24
	b,n .L32
.L34:
	add,l %r26,%r24,%r28
	ldb 0(%r28),%r31
	ldo -1(%r24),%r28
	cmpclr,= %r31,%r25,%r0
	b,n .L35
	add,l %r26,%r24,%r28
	b,n .L33
.L35:
	copy %r28,%r24
.L32:
	cmpib,*<> -1,%r24,.L34
	nop
	ldi 0,%r28
.L33:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r31
	b,n .L37
.L38:
	stb %r25,0(%r31)
	ldo 1(%r31),%r31
.L37:
	cmpb,*<> %r24,%r31,.L38
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	b,n .L40
.L41:
	ldo 1(%r25),%r25
	ldo 1(%r28),%r28
.L40:
	ldb 0(%r25),%r31
	extrd,s %r31,63,8,%r31
	stb %r31,0(%r28)
	cmpb,*<> %r0,%r31,.L41
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L43
.L45:
	ldo 1(%r28),%r28
.L43:
	ldb 0(%r28),%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L44
	cmpb,<> %r31,%r25,.L45
	nop
.L44:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
.L48:
	ldb 0(%r26),%r28
	extrd,s %r28,63,8,%r28
	cmpclr,<> %r28,%r25,%r0
	b,n .L49
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	cmpb,*<> %r0,%r28,.L48
	nop
	b,n .L47
.L49:
	copy %r26,%r28
.L47:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L51
.L53:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L51:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	ldb 0(%r25),%r28
	extrd,s %r28,63,8,%r28
	cmpclr,= %r28,%r31,%r0
	b,n .L52
	ldb 0(%r26),%r28
	cmpb,*<> %r0,%r28,.L53
	nop
.L52:
	ldb 0(%r26),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L55
.L56:
	ldo 1(%r28),%r28
.L55:
	ldb 0(%r28),%r31
	cmpb,*<> %r0,%r31,.L56
	nop
	sub %r28,%r26,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*<> %r0,%r24,%r0
	b,n .L62
	copy %r26,%r19
	b,n .L59
.L61:
	ldo 1(%r19),%r19
	ldo 1(%r25),%r25
.L59:
	ldb 0(%r19),%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L60
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
	cmpclr,*<> %r0,%r28,%r0
	b,n .L60
	ldb 0(%r19),%r31
	ldb 0(%r25),%r28
	cmpb,= %r28,%r31,.L61
	nop
.L60:
	ldb 0(%r19),%r28
	ldb 0(%r25),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	b,n .L58
.L62:
	ldi 0,%r28
.L58:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	b,n .L64
.L65:
	ldb 1(%r28),%r31
	stb %r31,0(%r25)
	ldb 0(%r28),%r31
	stb %r31,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L64:
	add,l %r26,%r24,%r31
	sub %r31,%r28,%r31
	cmpib,*< 1,%r31,.L65
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	ldi 25,%r31
	cmpclr,<< %r31,%r26,%r0
	b,n .L67
	ldi 0,%r28
.L67:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	ldi 127,%r31
	cmpclr,<< %r31,%r26,%r0
	b,n .L69
	ldi 0,%r28
.L69:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 32,%r19
	xor %r26,%r19,%r19
	or,>= %r0,%r19,%r19
	subi 0,%r19,%r19
	ldo -1(%r19),%r19
	ldi 9,%r31
	xor %r26,%r31,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	or %r28,%r19,%r28
	extrd,u %r28,32+1-1,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r19
	ldi 31,%r28
	cmpclr,<< %r28,%r26,%r0
	b,n .L72
	ldi 0,%r19
.L72:
	ldi 127,%r28
	xor %r31,%r28,%r28
	or,>= %r0,%r28,%r28
	subi 0,%r28,%r28
	ldo -1(%r28),%r28
	extrw,u %r28,0+1-1,1,%r28
	or %r28,%r19,%r28
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	cmpiclr,<< 9,%r26,%r0
	b,n .L74
	ldi 0,%r28
.L74:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	ldi 93,%r31
	cmpclr,<< %r31,%r26,%r0
	b,n .L76
	ldi 0,%r28
.L76:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	ldi 25,%r31
	cmpclr,<< %r31,%r26,%r0
	b,n .L78
	ldi 0,%r28
.L78:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	ldi 94,%r31
	cmpclr,<< %r31,%r26,%r0
	b,n .L80
	ldi 0,%r28
.L80:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrw,u %r31,0+1-1,1,%r31
	extrd,u %r31,63,8,%r31
	ldo -9(%r26),%r26
	ldi 1,%r28
	cmpiclr,<< 4,%r26,%r0
	b,n .L82
	ldi 0,%r28
.L82:
	extrd,u %r28,63,8,%r28
	or %r28,%r31,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	ldi 25,%r31
	cmpclr,<< %r31,%r26,%r0
	b,n .L84
	ldi 0,%r28
.L84:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	ldi 31,%r19
	cmpclr,<< %r19,%r26,%r0
	b,n .L86
	ldi 0,%r28
.L86:
	extrd,u %r28,63,8,%r28
	ldo -127(%r31),%r20
	ldi 1,%r19
	ldi 32,%r21
	cmpclr,<< %r21,%r20,%r0
	b,n .L87
	ldi 0,%r19
.L87:
	extrd,u %r19,63,8,%r19
	or %r28,%r19,%r28
	cmpclr,*= %r0,%r28,%r0
	b,n .L89
	ldo -40(%r31),%r28
	ldo -8192(%r28),%r28
	cmpiclr,<< 1,%r28,%r0
	b,n .L90
	depwi,z -7,31,16,%r28
	sub %r31,%r28,%r31
	cmpiclr,>>= 2,%r31,%r0
	b,n .L91
	ldi 1,%r28
	b,n .L88
.L89:
	ldi 1,%r28
	b,n .L88
.L90:
	ldi 1,%r28
	b,n .L88
.L91:
	ldi 0,%r28
.L88:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	cmpiclr,<< 9,%r26,%r0
	b,n .L93
	ldi 0,%r28
.L93:
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,63,32,%r28
	ldi 254,%r31
	cmpclr,>>= %r31,%r26,%r0
	b,n .L95
	ldo 1(%r28),%r28
	extrd,u %r28,63,7,%r28
	ldi 1,%r31
	ldi 32,%r19
	cmpclr,>>= %r19,%r28,%r0
	b,n .L96
	ldi 0,%r31
.L96:
	extrd,u %r31,63,1,%r28
	b,n .L97
.L95:
	ldi 1,%r31
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	cmpclr,<< %r19,%r28,%r0
	b,n .L98
	ldi 0,%r31
.L98:
	extrd,u %r31,63,8,%r31
	ldo -42(%r28),%r21
	ldo -8192(%r21),%r21
	ldi 1,%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	cmpclr,<< %r20,%r21,%r0
	b,n .L99
	ldi 0,%r19
.L99:
	extrd,u %r19,63,8,%r19
	or %r31,%r19,%r31
	cmpclr,*= %r0,%r31,%r0
	b,n .L100
	ldil L'-57344,%r31
	add,l %r28,%r31,%r31
	ldi 8184,%r19
	cmpclr,<< %r19,%r31,%r0
	b,n .L101
	depwi,z -1,29,14,%r19
	sub %r28,%r19,%r19
	ldil L'1048576,%r31
	ldo 3(%r31),%r31
	cmpclr,>>= %r31,%r19,%r0
	b,n .L102
	depwi,z -1,30,15,%r31
	and %r28,%r31,%r28
	cmpclr,<> %r31,%r28,%r0
	b,n .L103
	ldi 1,%r28
	b,n .L97
.L100:
	ldi 1,%r28
	b,n .L97
.L101:
	ldi 1,%r28
	b,n .L97
.L102:
	ldi 0,%r28
	b,n .L97
.L103:
	ldi 0,%r28
.L97:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpiclr,<< 9,%r26,%r0
	b,n .L106
	depdi -1,58,1,%r28
	ldo -97(%r28),%r28
	cmpiclr,>>= 5,%r28,%r0
	b,n .L107
	ldi 1,%r28
	b,n .L105
.L106:
	ldi 1,%r28
	b,n .L105
.L107:
	ldi 0,%r28
.L105:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L110
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L113
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b,n .L115
	b,n .L116
.L115:
	fsub,dbl %fr4,%fr5,%fr4
	b,n .L110
.L113:
	fcpy,dbl %fr5,%fr4
	b,n .L110
.L116:
	addil LT'.LC0,%r27
	ldd RT'.LC0(%r1),%r28
	fldd 0(%r28),%fr4
.L110:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L118
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L121
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b,n .L123
	b,n .L124
.L123:
	fsub,sgl %fr4R,%fr5R,%fr4R
	b,n .L118
.L121:
	fcpy,sgl %fr5R,%fr4R
	b,n .L118
.L124:
	addil LT'.LC2,%r27
	ldd RT'.LC2(%r1),%r28
	fldw 0(%r28),%fr4R
.L118:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L129
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L126
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r31,0,1,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,0,1,%r28
	cmpclr,<> %r28,%r31,%r0
	b,n .L127
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpclr,*> %r0,%r28,%r0
	b,n .L126
	fcpy,dbl %fr5,%fr4
	b,n .L126
.L127:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L133
	b,n .L126
.L133:
	fcpy,dbl %fr5,%fr4
	b,n .L126
.L129:
	fcpy,dbl %fr5,%fr4
.L126:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L139
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L136
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	depwi 0,31,31,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	depwi 0,31,31,%r28
	cmpclr,<> %r28,%r31,%r0
	b,n .L137
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L136
	fcpy,sgl %fr5R,%fr4R
	b,n .L136
.L137:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L143
	b,n .L136
.L143:
	fcpy,sgl %fr5R,%fr4R
	b,n .L136
.L139:
	fcpy,sgl %fr5R,%fr4R
.L136:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpclr,*= %r0,%r28,%r0
	b,n .L149
	copy %r7,%r24
	copy %r8,%r23
	copy %r7,%r26
	copy %r8,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpclr,*= %r0,%r28,%r0
	b,n .L150
	extrd,u %r5,0,1,%r31
	extrd,u %r7,0,1,%r28
	cmpclr,<> %r28,%r31,%r0
	b,n .L147
	cmpclr,*> %r0,%r5,%r0
	b,n .L151
	copy %r7,%r19
	copy %r8,%r20
	b,n .L146
.L147:
	copy %r7,%r24
	copy %r8,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	nop
	cmpclr,*> %r0,%r28,%r0
	b,n .L154
	copy %r7,%r19
	copy %r8,%r20
	b,n .L146
.L149:
	copy %r7,%r19
	copy %r8,%r20
	b,n .L146
.L150:
	copy %r5,%r19
	copy %r6,%r20
	b,n .L146
.L151:
	copy %r5,%r19
	copy %r6,%r20
	b,n .L146
.L154:
	copy %r5,%r19
	copy %r6,%r20
.L146:
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L159
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L156
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r31,0,1,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	extrd,u %r28,0,1,%r28
	cmpclr,<> %r28,%r31,%r0
	b,n .L157
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpclr,*> %r0,%r28,%r0
	b,n .L161
	b,n .L156
.L157:
	fcmp,dbl,!< %fr4,%fr5
	ftest
	b,n .L156
	b,n .L164
.L159:
	fcpy,dbl %fr5,%fr4
	b,n .L156
.L161:
	fcpy,dbl %fr5,%fr4
	b,n .L156
.L164:
	fcpy,dbl %fr5,%fr4
.L156:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L169
	fcmp,sgl,!? %fr5R,%fr5R
	ftest
	b,n .L166
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r31
	depwi 0,31,31,%r31
	fstd %fr5,8(%r3)
	ldd 8(%r3),%r28
	depwi 0,31,31,%r28
	cmpclr,<> %r28,%r31,%r0
	b,n .L167
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	cmpiclr,> 0,%r28,%r0
	b,n .L171
	b,n .L166
.L167:
	fcmp,sgl,!< %fr4R,%fr5R
	ftest
	b,n .L166
	b,n .L174
.L169:
	fcpy,sgl %fr5R,%fr4R
	b,n .L166
.L171:
	fcpy,sgl %fr5R,%fr4R
	b,n .L166
.L174:
	fcpy,sgl %fr5R,%fr4R
.L166:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpclr,*= %r0,%r28,%r0
	b,n .L179
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpclr,*= %r0,%r28,%r0
	b,n .L180
	extrd,u %r7,0,1,%r31
	extrd,u %r5,0,1,%r28
	cmpclr,<> %r28,%r31,%r0
	b,n .L177
	cmpclr,*> %r0,%r7,%r0
	b,n .L181
	copy %r7,%r19
	copy %r8,%r20
	b,n .L176
.L177:
	copy %r5,%r24
	copy %r6,%r23
	copy %r7,%r26
	copy %r8,%r25
	ldo -48(%r30),%r29
	b,l __lttf2,%r2
	nop
	cmpclr,*> %r0,%r28,%r0
	b,n .L184
	copy %r7,%r19
	copy %r8,%r20
	b,n .L176
.L179:
	copy %r5,%r19
	copy %r6,%r20
	b,n .L176
.L180:
	copy %r7,%r19
	copy %r8,%r20
	b,n .L176
.L181:
	copy %r5,%r19
	copy %r6,%r20
	b,n .L176
.L184:
	copy %r5,%r19
	copy %r6,%r20
.L176:
	copy %r19,%r28
	copy %r20,%r29
	ldd -16(%r3),%r2
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd RT's.0(%r1),%r28
	b,n .L186
.L187:
	addil LT'digits,%r27
	ldd RT'digits(%r1),%r31
	extrd,u %r26,63,6,%r19
	ldb %r19(%r31),%r31
	stb %r31,0(%r28)
	ldo 1(%r28),%r28
	extrd,u %r26,57,58,%r26
.L186:
	cmpb,*<> %r0,%r26,.L187
	nop
	stb %r0,0(%r28)
	addil LT's.0,%r27
	ldd RT's.0(%r1),%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*= %r0,%r25,%r0
	b,n .L191
	std %r0,8(%r26)
	std %r0,0(%r26)
	b,n .L190
.L191:
	ldd 0(%r25),%r28
	std %r28,0(%r26)
	std %r25,8(%r26)
	std %r26,0(%r25)
	ldd 0(%r26),%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L190
	std %r26,8(%r28)
.L190:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*<> %r0,%r28,%r0
	b,n .L194
	ldd 8(%r26),%r31
	std %r31,8(%r28)
.L194:
	ldd 8(%r26),%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L193
	ldd 0(%r26),%r31
	std %r31,0(%r28)
.L193:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r25,%r7
	copy %r24,%r10
	copy %r23,%r6
	copy %r22,%r12
	ldd 0(%r24),%r8
	copy %r25,%r11
	ldi 0,%r5
	b,n .L197
.L200:
	copy %r11,%r25
	copy %r9,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r12),%r2
	bve,l (%r2),%r2
	ldd 24(%r12),%r27
	copy %r4,%r27
	add,l %r11,%r6,%r11
	cmpclr,*= %r0,%r28,%r0
	b,n .L198
	copy %r5,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	copy %r6,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	extrd,u %r5,0+32-1,32,%r5
	extrd,u %r6,0+32-1,32,%r6
	std %r5,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	std %r6,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r6
	xmpyu %fr22R,%fr23R,%fr22
	add,l %r31,%r6,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r31,%r28,%r31
	add,l %r7,%r31,%r28
	b,n .L199
.L198:
	ldo 1(%r5),%r5
.L197:
	cmpb,*<> %r8,%r5,.L200
	nop
	ldo 1(%r8),%r28
	std %r28,0(%r10)
	copy %r6,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	copy %r8,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	extrd,u %r6,0+32-1,32,%r28
	extrd,u %r8,0+32-1,32,%r8
	std %r28,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r28
	std %r8,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r8
	xmpyu %fr22R,%fr23R,%fr22
	add,l %r28,%r8,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	add,l %r28,%r31,%r28
	copy %r6,%r24
	copy %r9,%r25
	add,l %r7,%r28,%r26
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
.L199:
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r25,%r7
	copy %r23,%r6
	copy %r22,%r9
	ldd 0(%r24),%r11
	copy %r25,%r8
	ldi 0,%r5
	b,n .L202
.L205:
	copy %r8,%r25
	copy %r10,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	copy %r4,%r27
	add,l %r8,%r6,%r8
	cmpclr,*= %r0,%r28,%r0
	b,n .L203
	copy %r5,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	copy %r6,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	extrd,u %r5,0+32-1,32,%r5
	extrd,u %r6,0+32-1,32,%r6
	std %r5,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	std %r6,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r6
	xmpyu %fr22R,%fr23R,%fr22
	add,l %r31,%r6,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r31,%r28,%r31
	add,l %r7,%r31,%r28
	b,n .L204
.L203:
	ldo 1(%r5),%r5
.L202:
	cmpb,*<> %r11,%r5,.L205
	nop
	ldi 0,%r28
.L204:
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r5
	b,n .L208
.L209:
	ldo 1(%r5),%r5
.L208:
	ldb 0(%r5),%r26
	extrw,s %r26,31,8,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l isspace,%r2
	nop
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L209
	nop
	ldb 0(%r5),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpclr,<> %r31,%r28,%r0
	b,n .L215
	ldi 45,%r31
	cmpclr,= %r31,%r28,%r0
	b,n .L216
	ldi 1,%r19
	b,n .L210
.L215:
	ldi 0,%r19
.L210:
	ldo 1(%r5),%r5
	b,n .L211
.L216:
	ldi 0,%r19
.L211:
	ldi 0,%r28
	b,n .L212
.L213:
	shladd,l %r28,2,%r28,%r28 
	add,l %r28,%r28,%r28
	ldo 1(%r5),%r5
	ldb -1(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	sub %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
.L212:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>= 9,%r31,.L213
	nop
	cmpclr,*= %r0,%r19,%r0
	b,n .L214
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L214:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r5
	b,n .L219
.L220:
	ldo 1(%r5),%r5
.L219:
	ldb 0(%r5),%r26
	extrw,s %r26,31,8,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l isspace,%r2
	nop
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L220
	nop
	ldb 0(%r5),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpclr,<> %r31,%r28,%r0
	b,n .L226
	ldi 45,%r31
	cmpclr,= %r31,%r28,%r0
	b,n .L227
	ldi 1,%r19
	b,n .L221
.L226:
	ldi 0,%r19
.L221:
	ldo 1(%r5),%r5
	b,n .L222
.L227:
	ldi 0,%r19
.L222:
	ldi 0,%r28
	b,n .L223
.L224:
	shladd,l %r28,2,%r28,%r28
	depd,z %r28,62,63,%r28
	ldo 1(%r5),%r5
	ldb -1(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
.L223:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>= 9,%r31,.L224
	nop
	cmpclr,*= %r0,%r19,%r0
	b,n .L225
	sub %r0,%r28,%r28
.L225:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r5
	b,n .L230
.L231:
	ldo 1(%r5),%r5
.L230:
	ldb 0(%r5),%r26
	extrw,s %r26,31,8,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l isspace,%r2
	nop
	copy %r4,%r27
	cmpb,*<> %r0,%r28,.L231
	nop
	ldb 0(%r5),%r28
	extrd,s %r28,63,8,%r28
	ldi 43,%r31
	cmpclr,<> %r31,%r28,%r0
	b,n .L237
	ldi 45,%r31
	cmpclr,= %r31,%r28,%r0
	b,n .L238
	ldi 1,%r19
	b,n .L232
.L237:
	ldi 0,%r19
.L232:
	ldo 1(%r5),%r5
	b,n .L233
.L238:
	ldi 0,%r19
.L233:
	ldi 0,%r28
	b,n .L234
.L235:
	shladd,l %r28,2,%r28,%r28
	depd,z %r28,62,63,%r28
	ldo 1(%r5),%r5
	ldb -1(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	extrd,s %r31,63,32,%r31
	sub %r28,%r31,%r28
.L234:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldo -48(%r31),%r31
	cmpib,>>= 9,%r31,.L235
	nop
	cmpclr,*= %r0,%r19,%r0
	b,n .L236
	sub %r0,%r28,%r28
.L236:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r10
	copy %r25,%r8
	copy %r24,%r6
	copy %r23,%r7
	copy %r22,%r9
	b,n .L241
.L245:
	extrd,u %r6,31+32-1,32,%r19
	copy %r7,%r28
	extrd,u %r6,0+31-1,31,%r5
	extrd,u %r7,0+32-1,32,%r31
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	std %r5,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r5
	std %r31,8(%r3)
	fldd 8(%r3),%fr24
	std %r19,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	xmpyu %fr22R,%fr23R,%fr22
	add,l %r5,%r31,%r5
	depd,z %r5,31,32,%r5
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r5,%r28,%r5
	add,l %r8,%r5,%r5
	copy %r5,%r25
	copy %r10,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r9),%r2
	bve,l (%r2),%r2
	ldd 24(%r9),%r27
	copy %r4,%r27
	cmpiclr,> 0,%r28,%r0
	b,n .L242
	extrd,u %r6,62,63,%r6
	b,n .L241
.L242:
	cmpiclr,< 0,%r28,%r0
	b,n .L246
	add,l %r5,%r7,%r8
	extrd,u %r6,62,63,%r28
	uaddcm %r6,%r28,%r6
.L241:
	cmpb,*<> %r0,%r6,.L245
	nop
	ldi 0,%r28
	b,n .L244
.L246:
	copy %r5,%r28
.L244:
	ldd -16(%r3),%r2
	ldd 16(%r3),%r10
	ldd 24(%r3),%r9
	ldd 32(%r3),%r8
	ldd 40(%r3),%r7
	ldd 48(%r3),%r6
	ldd 56(%r3),%r5
	ldd 64(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r11
	copy %r23,%r7
	copy %r22,%r10
	copy %r21,%r9
	extrd,s %r24,63,32,%r6
	copy %r25,%r8
	b,n .L248
.L251:
	extrw,s %r6,30,31,%r28
	extrd,s %r28,63,32,%r28
	copy %r28,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	copy %r7,%r31
	extrd,u %r28,0+32-1,32,%r28
	extrd,u %r7,0+32-1,32,%r19
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r28,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r5
	std %r19,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r19
	xmpyu %fr22R,%fr23R,%fr22
	add,l %r5,%r19,%r5
	depd,z %r5,31,32,%r5
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r5,%r28,%r5
	add,l %r8,%r5,%r5
	copy %r9,%r24
	copy %r5,%r25
	copy %r11,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	ldd 16(%r10),%r2
	bve,l (%r2),%r2
	ldd 24(%r10),%r27
	copy %r4,%r27
	cmpclr,*<> %r0,%r28,%r0
	b,n .L252
	cmpiclr,< 0,%r28,%r0
	b,n .L250
	add,l %r5,%r7,%r8
	ldo -1(%r6),%r6
	extrd,s %r6,63,32,%r6
.L250:
	extrw,s %r6,30,31,%r6
	extrd,s %r6,63,32,%r6
.L248:
	cmpb,*<> %r0,%r6,.L251
	nop
	ldi 0,%r28
	b,n .L249
.L252:
	copy %r5,%r28
.L249:
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r29,63,32,%r31
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$remI,MILLICODE
	b,l $$remI,%r2
	nop
	extrd,s %r29,63,32,%r29
	stw %r31,8(%r3)
	stw %r29,12(%r3)
	ldi 0,%r28
	extrd,u %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	extrd,u %r29,63,32,%r29
	depd %r29,32+32-1,32,%r28
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r5
	copy %r7,%r25
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	nop
	copy %r28,%r29
	std %r5,8(%r3)
	std %r28,16(%r3)
	copy %r5,%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r5
	copy %r7,%r25
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	nop
	copy %r28,%r29
	std %r5,8(%r3)
	std %r28,16(%r3)
	copy %r5,%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l __divdi3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r5
	copy %r7,%r25
	copy %r6,%r26
	ldo -48(%r30),%r29
	b,l __moddi3,%r2
	nop
	copy %r28,%r29
	std %r5,8(%r3)
	std %r28,16(%r3)
	copy %r5,%r28
	ldd -16(%r3),%r2
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L261
.L263:
	ldo 4(%r26),%r26
.L261:
	ldw 0(%r26),%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L262
	cmpb,<> %r28,%r25,.L263
	nop
.L262:
	ldw 0(%r26),%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L265
	copy %r26,%r28
	b,n .L264
.L265:
	ldi 0,%r28
.L264:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L267
.L269:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L267:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpclr,= %r28,%r31,%r0
	b,n .L268
	cmpclr,*<> %r0,%r31,%r0
	b,n .L268
	ldw 0(%r25),%r28
	cmpb,*<> %r0,%r28,.L269
	nop
.L268:
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L272
	copy %r31,%r19
	copy %r28,%r31
	ldi 1,%r28
	cmpclr,>>= %r31,%r19,%r0
	b,n .L271
	ldi 0,%r28
.L271:
	extrd,u %r28,63,1,%r28
	b,n .L270
.L272:
	ldi -1,%r28
.L270:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
.L274:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	stw %r19,-4(%r31)
	cmpb,*<> %r0,%r19,.L274
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L276
.L277:
	ldo 4(%r28),%r28
.L276:
	ldw 0(%r28),%r31
	cmpb,*<> %r0,%r31,.L277
	nop
	sub %r28,%r26,%r28
	extrd,s %r28,61,62,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L279
.L281:
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L279:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L280
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpclr,= %r28,%r31,%r0
	b,n .L280
	cmpclr,*<> %r0,%r31,%r0
	b,n .L280
	ldw 0(%r25),%r28
	cmpb,*<> %r0,%r28,.L281
	nop
.L280:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L284
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L285
	copy %r31,%r19
	copy %r28,%r31
	ldi 1,%r28
	cmpclr,>>= %r31,%r19,%r0
	b,n .L283
	ldi 0,%r28
.L283:
	extrd,u %r28,63,1,%r28
	b,n .L282
.L284:
	ldi 0,%r28
	b,n .L282
.L285:
	ldi -1,%r28
.L282:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r25,63,32,%r25
	b,n .L287
.L289:
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
.L287:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L288
	ldw 0(%r26),%r28
	cmpb,<> %r28,%r25,.L289
	nop
.L288:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L291
	copy %r26,%r28
	b,n .L290
.L291:
	ldi 0,%r28
.L290:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L293
.L295:
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L293:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L294
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpb,= %r28,%r31,.L295
	nop
.L294:
	cmpclr,*<> %r0,%r24,%r0
	b,n .L298
	ldw 0(%r26),%r31
	ldw 0(%r25),%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L299
	copy %r31,%r19
	copy %r28,%r31
	ldi 1,%r28
	cmpclr,>>= %r31,%r19,%r0
	b,n .L297
	ldi 0,%r28
.L297:
	extrd,u %r28,63,1,%r28
	b,n .L296
.L298:
	ldi 0,%r28
	b,n .L296
.L299:
	ldi -1,%r28
.L296:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r31
	b,n .L301
.L302:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	stw %r19,-4(%r31)
.L301:
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L302
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	cmpclr,*<> %r25,%r26,%r0
	b,n .L304
	sub %r26,%r25,%r31
	depd,z %r24,61,62,%r19
	cmpclr,*>> %r19,%r31,%r0
	b,n .L309
	ldo -1(%r24),%r24
	shladd,l %r24,2,%r25,%r25
	shladd,l %r24,2,%r26,%r24
	ldo -4(%r26),%r31
	b,n .L306
.L307:
	ldw 0(%r25),%r19
	stw %r19,0(%r24)
	ldo -4(%r25),%r25
	ldo -4(%r24),%r24
.L306:
	cmpb,*<> %r31,%r24,.L307
	nop
	b,n .L304
.L308:
	ldo 4(%r25),%r25
	ldo 4(%r31),%r31
	ldw -4(%r25),%r19
	stw %r19,-4(%r31)
	b,n .L305
.L309:
	copy %r26,%r31
.L305:
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L308
	nop
.L304:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r31
	b,n .L311
.L312:
	ldo 4(%r31),%r31
	stw %r25,-4(%r31)
.L311:
	ldo -1(%r24),%r24
	cmpib,*<> -1,%r24,.L312
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*>> %r25,%r26,%r0
	b,n .L314
	add,l %r26,%r24,%r28
	add,l %r25,%r24,%r25
	b,n .L315
.L316:
	ldb,mb -1(%r28),%r31
	stb,mb %r31,-1(%r25)
.L315:
	cmpb,*<> %r26,%r28,.L316
	nop
	b,n .L313
.L314:
	cmpclr,*<> %r25,%r26,%r0
	b,n .L313
	add,l %r25,%r24,%r24
	copy %r26,%r28
	b,n .L318
.L319:
	ldo 1(%r28),%r28
	ldo 1(%r25),%r25
	ldb -1(%r28),%r31
	stb %r31,-1(%r25)
.L318:
	cmpb,*<> %r24,%r25,.L319
	nop
.L313:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,63,32,%r26
	extrd,u %r26,39,40,%r20
	ldil L'16711680,%r31
	and %r26,%r31,%r31
	extrd,u %r31,55,56,%r31
	depdi,z -1,55,8,%r19
	and %r26,%r19,%r19
	depd,z %r19,55,56,%r19
	extrw,u %r26,31,8,%r28
	depw,z %r28,7,8,%r28
	or %r28,%r19,%r28
	or %r28,%r20,%r28
	or %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 0,%r28
	b,n .L334
.L337:
	mtsar %r28
	shrpw %r0,%r26,%sar,%r31
	extrd,u %r31,63,1,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L335
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	b,n .L336
.L335:
	ldo 1(%r28),%r28
	extrd,u %r28,63,32,%r28
.L334:
	ldi 32,%r31
	cmpb,<> %r31,%r28,.L337
	nop
	ldi 0,%r28
.L336:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r26,63,32,%r31
	cmpiclr,<> 0,%r26,%r0
	b,n .L342
	ldi 1,%r28
	b,n .L340
.L341:
	extrw,s %r31,30,31,%r31
	extrd,s %r31,63,32,%r31
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L340:
	extrd,u %r31,63,1,%r19
	cmpb,*= %r0,%r19,.L341
	nop
	b,n .L339
.L342:
	ldi 0,%r28
.L339:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L346
	addil LT'.LC5,%r27
	ldd RT'.LC5(%r1),%r28
	fldw 0(%r28),%fr22R
	fcmp,sgl,!> %fr4R,%fr22R
	ftest
	b,n .L348
	b,n .L349
.L348:
	ldi 1,%r28
	b,n .L344
.L346:
	ldi 1,%r28
	b,n .L344
.L349:
	ldi 0,%r28
.L344:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L353
	addil LT'.LC9,%r27
	ldd RT'.LC9(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!> %fr4,%fr22
	ftest
	b,n .L355
	b,n .L356
.L355:
	ldi 1,%r28
	b,n .L351
.L353:
	ldi 1,%r28
	b,n .L351
.L356:
	ldi 0,%r28
.L351:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l __lttf2,%r2
	nop
	copy %r4,%r27
	cmpclr,*<= %r0,%r28,%r0
	b,n .L360
	addil LT'.LC13,%r27
	ldd RT'.LC13(%r1),%r28
	ldd 0(%r28),%r19
	ldd 8(%r28),%r20
	copy %r19,%r24
	copy %r20,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	b,l __gttf2,%r2
	nop
	cmpclr,*< %r0,%r28,%r0
	b,n .L363
	ldi 1,%r28
	b,n .L358
.L360:
	ldi 1,%r28
	b,n .L358
.L363:
	ldi 0,%r28
.L358:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r6
	ldd 16(%r3),%r5
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	fcnv,w,dbl %fr22R,%fr4
	ldo -48(%r30),%r29
	b,l __extenddftf2,%r2
	nop
	copy %r28,%r19
	std %r19,0(%r5)
	std %r29,8(%r5)
	ldd -16(%r3),%r2
	ldd 16(%r3),%r5
	ldd 24(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r25,63,32,%r25
	fcmp,sgl,!? %fr4R,%fr4R
	ftest
	b,n .L366
	fadd,sgl %fr4R,%fr4R,%fr22R
	fcmp,sgl,!= %fr4R,%fr22R
	ftest
	b,n .L366
	cmpiclr,> 0,%r25,%r0
	b,n .L370
	addil LT'.LC16,%r27
	ldd RT'.LC16(%r1),%r28
	fldw 0(%r28),%fr22R
	b,n .L369
.L370:
	addil LT'.LC17,%r27
	ldd RT'.LC17(%r1),%r28
	fldw 0(%r28),%fr22R
.L369:
	extrd,u %r25,63,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L368
	fmpy,sgl %fr4R,%fr22R,%fr4R
.L368:
	extrw,u %r25,0,1,%r28
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	cmpiclr,<> 0,%r28,%r0
	b,n .L366
	fmpy,sgl %fr22R,%fr22R,%fr22R
	b,n .L369
.L366:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r25,63,32,%r25
	fcmp,dbl,!? %fr4,%fr4
	ftest
	b,n .L372
	fadd,dbl %fr4,%fr4,%fr22
	fcmp,dbl,!= %fr4,%fr22
	ftest
	b,n .L372
	cmpiclr,> 0,%r25,%r0
	b,n .L376
	addil LT'.LC20,%r27
	ldd RT'.LC20(%r1),%r28
	fldd 0(%r28),%fr22
	b,n .L375
.L376:
	addil LT'.LC21,%r27
	ldd RT'.LC21(%r1),%r28
	fldd 0(%r28),%fr22
.L375:
	extrd,u %r25,63,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L374
	fmpy,dbl %fr4,%fr22,%fr4
.L374:
	extrw,u %r25,0,1,%r28
	add,l %r28,%r25,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r25
	cmpiclr,<> 0,%r28,%r0
	b,n .L372
	fmpy,dbl %fr22,%fr22,%fr22
	b,n .L375
.L372:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l __unordtf2,%r2
	nop
	copy %r4,%r27
	cmpclr,*= %r0,%r28,%r0
	b,n .L378
	copy %r5,%r24
	copy %r6,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __addtf3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r24
	copy %r29,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __netf2,%r2
	nop
	copy %r4,%r27
	cmpclr,*<> %r0,%r28,%r0
	b,n .L378
	cmpiclr,> 0,%r9,%r0
	b,n .L383
	addil LT'.LC24,%r27
	ldd RT'.LC24(%r1),%r28
	ldd 0(%r28),%r7
	ldd 8(%r28),%r8
	b,n .L382
.L383:
	addil LT'.LC25,%r27
	ldd RT'.LC25(%r1),%r28
	ldd 0(%r28),%r7
	ldd 8(%r28),%r8
.L382:
	extrd,u %r9,63,1,%r28
	cmpclr,*<> %r0,%r28,%r0
	b,n .L381
	copy %r7,%r24
	copy %r8,%r23
	copy %r5,%r26
	copy %r6,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __multf3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r5
	copy %r29,%r6
.L381:
	extrw,u %r9,0,1,%r28
	add,l %r28,%r9,%r28
	extrw,s %r28,30,31,%r28
	extrd,s %r28,63,32,%r9
	cmpiclr,<> 0,%r28,%r0
	b,n .L378
	copy %r7,%r24
	copy %r8,%r23
	copy %r7,%r26
	copy %r8,%r25
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l __multf3,%r2
	nop
	copy %r4,%r27
	copy %r28,%r19
	copy %r19,%r7
	copy %r29,%r8
	b,n .L382
.L378:
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r31
	b,n .L386
.L387:
	ldo 1(%r25),%r25
	ldb -1(%r25),%r20
	ldo 1(%r31),%r31
	ldb -1(%r31),%r19
	xor %r19,%r20,%r19
	stb %r19,-1(%r31)
.L386:
	cmpb,*<> %r24,%r31,.L387
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r24,%r5
	ldo -48(%r30),%r29
	b,l strlen,%r2
	nop
	add,l %r7,%r28,%r28
	b,n .L389
.L391:
	ldo 1(%r6),%r6
	ldo 1(%r28),%r28
	ldo -1(%r5),%r5
.L389:
	cmpclr,*<> %r0,%r5,%r0
	b,n .L390
	ldb 0(%r6),%r31
	extrd,s %r31,63,8,%r31
	stb %r31,0(%r28)
	cmpb,*<> %r0,%r31,.L391
	nop
.L390:
	cmpclr,*= %r0,%r5,%r0
	b,n .L392
	stb %r0,0(%r28)
.L392:
	copy %r7,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r7
	ldd 16(%r3),%r6
	ldd 24(%r3),%r5
	ldd 32(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L394
.L396:
	ldo 1(%r28),%r28
.L394:
	cmpclr,*<> %r25,%r28,%r0
	b,n .L395
	add,l %r26,%r28,%r31
	ldb 0(%r31),%r31
	cmpb,*<> %r0,%r31,.L396
	nop
.L395:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L398
.L400:
	ldo 1(%r28),%r28
	ldb -1(%r28),%r19
	extrd,s %r19,63,8,%r19
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,<> %r31,%r19,%r0
	b,n .L402
	b,n .L401
.L403:
	copy %r25,%r28
.L401:
	ldb 0(%r28),%r31
	cmpb,*<> %r0,%r31,.L400
	nop
	ldo 1(%r26),%r26
.L398:
	ldb 0(%r26),%r28
	cmpb,*<> %r0,%r28,.L403
	nop
	b,n .L399
.L402:
	copy %r26,%r28
.L399:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
.L406:
	ldb 0(%r26),%r31
	extrd,s %r31,63,8,%r31
	cmpclr,= %r31,%r25,%r0
	b,n .L405
	copy %r26,%r28
.L405:
	ldo 1(%r26),%r26
	ldb -1(%r26),%r31
	cmpb,*<> %r0,%r31,.L406
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r27,%r4
	b,l strlen,%r2
	nop
	copy %r4,%r27
	copy %r28,%r7
	cmpclr,*<> %r0,%r28,%r0
	b,n .L412
	ldb 0(%r6),%r8
	extrd,s %r8,63,8,%r8
	b,n .L410
.L411:
	copy %r7,%r24
	copy %r6,%r25
	copy %r5,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strncmp,%r2
	nop
	copy %r4,%r27
	cmpclr,*<> %r0,%r28,%r0
	b,n .L413
	ldo 1(%r5),%r5
.L410:
	copy %r8,%r25
	copy %r5,%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l strchr,%r2
	nop
	copy %r4,%r27
	copy %r28,%r5
	cmpb,*<> %r0,%r28,.L411
	nop
	ldi 0,%r28
	b,n .L409
.L412:
	copy %r5,%r28
	b,n .L409
.L413:
	copy %r5,%r28
.L409:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L423
	b,n .L415
.L423:
	fcmp,dbl,!> %fr5,%fr0
	ftest
	b,n .L417
.L415:
	fcmp,dbl,!> %fr4,%fr0
	ftest
	b,n .L424
	b,n .L418
.L424:
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L417
	b,n .L418
.L417:
	fneg,dbl %fr4,%fr4
.L418:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	add,l %r26,%r8,%r8
	cmpclr,*<> %r0,%r23,%r0
	b,n .L433
	ldi 1,%r28
	cmpclr,*<<= %r23,%r25,%r0
	b,n .L429
	ldi 0,%r28
.L429:
	extrd,u %r28,63,8,%r28
	cmpclr,*= %r0,%r28,%r0
	b,n .L434
	b,n .L430
.L432:
	ldb 0(%r5),%r31
	extrd,s %r31,63,8,%r31
	ldb 0(%r7),%r28
	extrd,s %r28,63,8,%r28
	cmpclr,= %r28,%r31,%r0
	b,n .L431
	ldo -1(%r6),%r24
	ldo 1(%r7),%r25
	ldo 1(%r5),%r26
	ldo -48(%r30),%r29
	copy %r27,%r4
	b,l memcmp,%r2
	nop
	copy %r4,%r27
	cmpclr,*<> %r0,%r28,%r0
	b,n .L435
.L431:
	ldo 1(%r5),%r5
.L430:
	cmpb,*>>= %r8,%r5,.L432
	nop
	ldi 0,%r28
	b,n .L428
.L433:
	copy %r26,%r28
	b,n .L428
.L434:
	ldi 0,%r28
	b,n .L428
.L435:
	copy %r5,%r28
.L428:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r8
	ldd 16(%r3),%r7
	ldd 24(%r3),%r6
	ldd 32(%r3),%r5
	ldd 40(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r24,%r5
	ldo -48(%r30),%r29
	b,l memcpy,%r2
	nop
	add,l %r28,%r5,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L452
	b,n .L453
.L452:
	fneg,dbl %fr4,%fr4
	ldi 1,%r31
	b,n .L438
.L453:
	ldi 0,%r31
.L438:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r28
	fldd 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b,n .L450
	b,n .L454
.L442:
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
	b,n .L440
.L450:
	ldi 0,%r28
.L440:
	addil LT'.LC28,%r27
	ldd RT'.LC28(%r1),%r19
	fldd 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b,n .L442
	b,n .L443
.L454:
	ldi 1,%r28
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L444
	ldi 0,%r28
.L444:
	extrd,u %r28,63,8,%r28
	ldi 1,%r19
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r20
	fldd 0(%r20),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L445
	ldi 0,%r19
.L445:
	and %r28,%r19,%r28
	cmpclr,*= %r0,%r28,%r0
	b,n .L451
	b,n .L443
.L447:
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	fadd,dbl %fr4,%fr4,%fr4
	b,n .L446
.L451:
	ldi 0,%r28
.L446:
	addil LT'.LC29,%r27
	ldd RT'.LC29(%r1),%r19
	fldd 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L447
.L443:
	stw %r28,0(%r25)
	cmpclr,*<> %r0,%r31,%r0
	b,n .L448
	fneg,dbl %fr4,%fr4
.L448:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 0,%r28
	b,n .L456
.L458:
	extrd,u %r26,63,1,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L457
	add,l %r28,%r25,%r28
.L457:
	depd,z %r25,62,63,%r25
	extrd,u %r26,62,63,%r26
.L456:
	cmpb,*<> %r0,%r26,.L458
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r31
	b,n .L460
.L463:
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
.L460:
	ldi 1,%r20
	cmpclr,<<= %r28,%r25,%r0
	b,n .L461
	ldi 0,%r20
.L461:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0+1-1,1,%r19
	extrd,u %r19,63,8,%r19
	and %r19,%r20,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L468
	cmpib,<= 0,%r25,.L463
	nop
	ldi 0,%r19
	b,n .L465
.L466:
	cmpclr,<<= %r25,%r28,%r0
	b,n .L464
	sub %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r31,%r19
.L464:
	extrd,u %r31,62,63,%r31
	extrd,u %r25,62,63,%r25
	b,n .L465
.L468:
	ldi 0,%r19
.L465:
	cmpb,*<> %r0,%r31,.L466
	nop
	cmpclr,*= %r0,%r24,%r0
	b,n .L467
	copy %r19,%r28
.L467:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpiclr,> 0,%r26,%r0
	b,n .L471
	uaddcm %r0,%r26,%r26
	extrd,s %r26,63,8,%r26
.L471:
	cmpclr,*<> %r0,%r26,%r0
	b,n .L473
	depw,z %r26,23,24,%r26
	extrd,u %r26,63,32,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -33(%r28),%r28
	extrd,s %r28,63,32,%r28
	b,n .L472
.L473:
	ldi 7,%r28
.L472:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*> %r0,%r26,%r0
	b,n .L475
	uaddcm %r0,%r26,%r26
.L475:
	cmpclr,*<> %r0,%r26,%r0
	b,n .L477
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	extrd,s %r28,63,32,%r28
	b,n .L476
.L477:
	ldi 63,%r28
.L476:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 0,%r28
	b,n .L479
.L481:
	extrd,u %r26,63,1,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L480
	add,l %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
.L480:
	extrd,u %r26,62,63,%r26
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
.L479:
	cmpb,*<> %r0,%r26,.L481
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r24,63,32,%r24
	cmpclr,*<<= %r25,%r26,%r0
	b,n .L483
	add,l %r25,%r28,%r31
	cmpclr,*>> %r26,%r31,%r0
	b,n .L484
.L483:
	copy %r25,%r31
	copy %r26,%r20
	shladd,l %r19,3,%r25,%r19
	b,n .L485
.L486:
	ldd 0(%r31),%r21
	std %r21,0(%r20)
	ldo 8(%r31),%r31
	ldo 8(%r20),%r20
.L485:
	cmpb,*<> %r19,%r31,.L486
	nop
	b,n .L487
.L488:
	add,l %r25,%r24,%r31
	ldb 0(%r31),%r19
	add,l %r26,%r24,%r31
	stb %r19,0(%r31)
	ldo 1(%r24),%r24
.L487:
	cmpb,<< %r24,%r28,.L488
	nop
	b,n .L482
.L490:
	add,l %r25,%r28,%r31
	add,l %r26,%r28,%r19
	ldb 0(%r31),%r31
	stb %r31,0(%r19)
.L484:
	ldo -1(%r28),%r31
	extrd,u %r31,63,32,%r28
	cmpib,<> -1,%r31,.L490
	nop
.L482:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r24,32+31-1,31,%r24
	cmpclr,*<<= %r25,%r26,%r0
	b,n .L492
	add,l %r25,%r28,%r31
	cmpclr,*>> %r26,%r31,%r0
	b,n .L493
.L492:
	copy %r25,%r31
	copy %r26,%r19
	shladd,l %r24,1,%r25,%r24
	b,n .L494
.L495:
	ldh 0(%r31),%r20
	sth %r20,0(%r19)
	ldo 2(%r31),%r31
	ldo 2(%r19),%r19
.L494:
	cmpb,*<> %r24,%r31,.L495
	nop
	extrd,u %r28,63,1,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L491
	ldo -1(%r28),%r28
	extrd,u %r28,63,32,%r28
	add,l %r25,%r28,%r25
	add,l %r26,%r28,%r26
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	b,n .L491
.L497:
	add,l %r25,%r28,%r31
	add,l %r26,%r28,%r19
	ldb 0(%r31),%r31
	stb %r31,0(%r19)
.L493:
	ldo -1(%r28),%r31
	extrd,u %r31,63,32,%r28
	cmpib,<> -1,%r31,.L497
	nop
.L491:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r24,63,32,%r24
	cmpclr,*<<= %r25,%r26,%r0
	b,n .L499
	add,l %r25,%r28,%r31
	cmpclr,*>> %r26,%r31,%r0
	b,n .L500
.L499:
	copy %r25,%r31
	copy %r26,%r20
	shladd,l %r19,2,%r25,%r19
	b,n .L501
.L502:
	ldw 0(%r31),%r21
	stw %r21,0(%r20)
	ldo 4(%r31),%r31
	ldo 4(%r20),%r20
.L501:
	cmpb,*<> %r19,%r31,.L502
	nop
	b,n .L503
.L504:
	add,l %r25,%r24,%r31
	ldb 0(%r31),%r19
	add,l %r26,%r24,%r31
	stb %r19,0(%r31)
	ldo 1(%r24),%r24
.L503:
	cmpb,<< %r24,%r28,.L504
	nop
	b,n .L498
.L506:
	add,l %r25,%r28,%r31
	add,l %r26,%r28,%r19
	ldb 0(%r31),%r31
	stb %r31,0(%r19)
.L500:
	ldo -1(%r28),%r31
	extrd,u %r31,63,32,%r28
	cmpib,<> -1,%r31,.L506
	nop
.L498:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 0,%r28
	b,n .L514
.L516:
	ldo 16(%r28),%r31
	mtsar %r31
	extrw,s,>= %r26,%sar,1,%r0
	b,n .L515
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L514:
	ldi 16,%r31
	cmpb,<> %r31,%r28,.L516
	nop
.L515:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 0,%r28
	b,n .L518
.L520:
	mtsarcm %r28
	extrw,s,>= %r26,%sar,1,%r0
	b,n .L519
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L518:
	ldi 16,%r31
	cmpb,<> %r31,%r28,.L520
	nop
.L519:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L525
	b,n .L526
.L525:
	addil LT'.LC32,%r27
	ldd RT'.LC32(%r1),%r28
	fldw 0(%r28),%fr22R
	fsub,sgl %fr4R,%fr22R,%fr4R
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
	ldil L'32768,%r31
	add,l %r28,%r31,%r28
	b,n .L524
.L526:
	fcnv,t,sgl,dw %fr4R,%fr4
	fstd %fr4,8(%r3)
	ldd 8(%r3),%r28
.L524:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r28,%r31
	b,n .L528
.L530:
	mtsarcm %r31
	extrw,s,< %r26,%sar,1,%r0
	b,n .L529
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L529:
	ldo 1(%r31),%r31
	extrd,s %r31,63,32,%r31
.L528:
	ldi 16,%r19
	cmpb,<> %r19,%r31,.L530
	nop
	extrd,u %r28,63,1,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r28,%r31
	b,n .L532
.L534:
	mtsarcm %r31
	extrw,s,< %r26,%sar,1,%r0
	b,n .L533
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
.L533:
	ldo 1(%r31),%r31
	extrd,s %r31,63,32,%r31
.L532:
	ldi 16,%r19
	cmpb,<> %r19,%r31,.L534
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 0,%r28
	b,n .L536
.L538:
	extrd,u %r26,63,1,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L537
	add,l %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
.L537:
	extrd,u %r26,62,63,%r26
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
.L536:
	cmpb,*<> %r0,%r26,.L538
	nop
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r25,63,32,%r25
	cmpiclr,<> 0,%r26,%r0
	b,n .L544
	ldi 0,%r28
	b,n .L541
.L543:
	extrd,u %r25,63,1,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L542
	add,l %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
.L542:
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
	extrd,u %r25,62,63,%r25
.L541:
	cmpb,*<> %r0,%r25,.L543
	nop
	b,n .L540
.L544:
	ldi 0,%r28
.L540:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r31
	b,n .L546
.L549:
	add,l %r25,%r25,%r25
	extrd,u %r25,63,32,%r25
	add,l %r31,%r31,%r31
	extrd,u %r31,63,32,%r31
.L546:
	ldi 1,%r20
	cmpclr,<<= %r28,%r25,%r0
	b,n .L547
	ldi 0,%r20
.L547:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0+1-1,1,%r19
	extrd,u %r19,63,8,%r19
	and %r19,%r20,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L554
	cmpib,<= 0,%r25,.L549
	nop
	ldi 0,%r19
	b,n .L551
.L552:
	cmpclr,<<= %r25,%r28,%r0
	b,n .L550
	sub %r28,%r25,%r28
	extrd,u %r28,63,32,%r28
	or %r19,%r31,%r19
.L550:
	extrd,u %r31,62,63,%r31
	extrd,u %r25,62,63,%r25
	b,n .L551
.L554:
	ldi 0,%r19
.L551:
	cmpb,*<> %r0,%r31,.L552
	nop
	cmpclr,*= %r0,%r24,%r0
	b,n .L553
	copy %r19,%r28
.L553:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L558
	fcmp,sgl,!> %fr4R,%fr5R
	ftest
	b,n .L559
	ldi 0,%r28
	b,n .L557
.L558:
	ldi -1,%r28
	b,n .L557
.L559:
	ldi 1,%r28
.L557:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	b,n .L562
	fcmp,dbl,!> %fr4,%fr5
	ftest
	b,n .L563
	ldi 0,%r28
	b,n .L561
.L562:
	ldi -1,%r28
	b,n .L561
.L563:
	ldi 1,%r28
.L561:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	copy %r25,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	extrd,u %r26,0+32-1,32,%r26
	extrd,u %r25,0+32-1,32,%r25
	std %r26,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r26
	std %r25,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r25
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r26,%r25,%r26
	depd,z %r26,31,32,%r26
	add,l %r26,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	copy %r25,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	extrd,u %r26,0+32-1,32,%r26
	extrd,u %r25,0+32-1,32,%r25
	std %r26,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r26
	std %r25,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r25
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r28
	add,l %r26,%r25,%r26
	depd,z %r26,31,32,%r26
	add,l %r26,%r28,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r25,63,32,%r31
	cmpiclr,> 0,%r25,%r0
	b,n .L573
	sub %r0,%r31,%r31
	extrd,s %r31,63,32,%r31
	ldi 1,%r22
	b,n .L567
.L573:
	ldi 0,%r22
.L567:
	ldi 0,%r28
	copy %r28,%r20
	b,n .L568
.L571:
	extrd,u %r31,63,1,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L569
	add,l %r28,%r26,%r28
	extrd,s %r28,63,32,%r28
.L569:
	extrd,s %r26,33+31-1,31,%r26
	depd,z %r26,62,63,%r26
	extrw,s %r31,30,31,%r31
	extrd,s %r31,63,32,%r31
	ldo 1(%r20),%r20
	extrd,s %r20,63,8,%r20
.L568:
	or,>= %r0,%r31,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrw,u %r19,0+1-1,1,%r19
	extrd,u %r19,63,8,%r19
	extrd,u %r20,63,8,%r21
	ldi 1,%r23
	ldi 31,%r24
	cmpclr,<< %r24,%r21,%r0
	b,n .L570
	ldi 0,%r23
.L570:
	and %r19,%r23,%r19
	cmpb,*<> %r0,%r19,.L571
	nop
	cmpclr,*<> %r0,%r22,%r0
	b,n .L572
	sub %r0,%r28,%r28
	extrd,s %r28,63,32,%r28
.L572:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*> %r0,%r26,%r0
	b,n .L579
	sub %r0,%r26,%r26
	ldi 1,%r5
	b,n .L576
.L579:
	ldi 0,%r5
.L576:
	cmpclr,*> %r0,%r25,%r0
	b,n .L577
	sub %r0,%r25,%r25
	or,>= %r0,%r5,%r5
	subi 0,%r5,%r5
	ldo -1(%r5),%r5
	extrw,u %r5,0+1-1,1,%r5
	extrd,u %r5,63,1,%r5
.L577:
	ldi 0,%r24
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	nop
	cmpclr,*<> %r0,%r5,%r0
	b,n .L578
	sub %r0,%r28,%r28
.L578:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*> %r0,%r26,%r0
	b,n .L584
	sub %r0,%r26,%r26
	ldi 1,%r5
	b,n .L581
.L584:
	ldi 0,%r5
.L581:
	cmpclr,*> %r0,%r25,%r0
	b,n .L582
	sub %r0,%r25,%r25
.L582:
	ldi 1,%r24
	ldo -48(%r30),%r29
	b,l __udivmodsi4,%r2
	nop
	cmpclr,*<> %r0,%r5,%r0
	b,n .L583
	sub %r0,%r28,%r28
.L583:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r31
	b,n .L586
.L589:
	depd,z %r25,62,63,%r25
	extrd,u %r25,63,16,%r25
	depd,z %r31,62,63,%r31
	extrd,u %r31,63,16,%r31
.L586:
	ldi 1,%r20
	cmpclr,<<= %r28,%r25,%r0
	b,n .L587
	ldi 0,%r20
.L587:
	extrw,s,>= %r31,31,16,%r19
	subi 0,%r19,%r19
	sub %r0,%r19,%r19
	extrd,u %r19,48+1-1,1,%r19
	and %r19,%r20,%r19
	cmpclr,*<> %r0,%r19,%r0
	b,n .L594
	extrd,s %r25,63,16,%r19
	cmpib,<= 0,%r19,.L589
	nop
	ldi 0,%r19
	b,n .L591
.L592:
	cmpclr,<<= %r25,%r28,%r0
	b,n .L590
	sub %r28,%r25,%r28
	extrd,u %r28,63,16,%r28
	or %r19,%r31,%r19
.L590:
	extrd,u %r31,62,63,%r31
	extrd,u %r25,62,63,%r25
	b,n .L591
.L594:
	ldi 0,%r19
.L591:
	cmpb,*<> %r0,%r31,.L592
	nop
	cmpclr,*= %r0,%r24,%r0
	b,n .L593
	copy %r19,%r28
.L593:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldi 1,%r28
	b,n .L597
.L600:
	depd,z %r25,62,63,%r25
	depd,z %r28,62,63,%r28
.L597:
	ldi 1,%r19
	cmpclr,*<<= %r26,%r25,%r0
	b,n .L598
	ldi 0,%r19
.L598:
	or,*>= %r0,%r28,%r31
	subi 0,%r31,%r31
	sub %r0,%r31,%r31
	extrd,u %r31,0,1,%r31
	and %r31,%r19,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L605
	bb,*>= %r25,32,.L600
	nop
	ldi 0,%r31
	b,n .L602
.L603:
	cmpclr,*<<= %r25,%r26,%r0
	b,n .L601
	sub %r26,%r25,%r26
	or %r31,%r28,%r31
.L601:
	extrd,u %r28,62,63,%r28
	extrd,u %r25,62,63,%r25
	b,n .L602
.L605:
	ldi 0,%r31
.L602:
	cmpb,*<> %r0,%r28,.L603
	nop
	cmpclr,*= %r0,%r24,%r0
	b,n .L606
	copy %r31,%r28
	b,n .L604
.L606:
	copy %r26,%r28
.L604:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	extrd,s %r25,63,32,%r19
	extrw,s,< %r25,26,1,%r0
	b,n .L608
	ldi 0,%r28
	depd %r28,32+32-1,32,%r28
	extrd,u %r26,63,32,%r31
	subi 63,%r19,%r19
	mtsar %r19
	depw,z %r31,%sar,32,%r31
	extrd,s %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	b,n .L610
.L608:
	cmpclr,*<> %r0,%r19,%r0
	b,n .L610
	extrd,u %r26,63,32,%r20
	mtsarcm %r19
	depw,z %r20,%sar,32,%r21
	extrd,u %r21,63,32,%r21
	ldi 0,%r28
	depd %r21,32+32-1,32,%r28
	extrd,u %r26,31,32,%r31
	depw,z %r31,%sar,32,%r31
	subi 32,%r19,%r19
	mtsar %r19
	shrpw %r0,%r20,%sar,%r20
	or %r31,%r20,%r31
	extrd,s %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
.L610:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r24,63,32,%r28
	copy %r26,%r21
	copy %r25,%r22
	extrw,s,< %r24,25,1,%r0
	b,n .L613
	ldi 0,%r19
	copy %r19,%r20
	ldo -64(%r28),%r28
	extrd,s %r28,63,32,%r28
	mtsarcm %r28
	depd,z %r25,%sar,64,%r19
	b,n .L614
.L613:
	cmpclr,*<> %r0,%r28,%r0
	b,n .L616
	mtsarcm %r28
	depd,z %r25,%sar,64,%r20
	depd,z %r26,%sar,64,%r21
	subi 64,%r28,%r28
	mtsar %r28
	shrpd %r0,%r25,%sar,%r31
	or %r31,%r21,%r19
.L614:
	copy %r19,%r21
	copy %r20,%r22
	b,n .L615
.L616:
.L615:
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	extrd,s %r25,63,32,%r20
	extrw,s,< %r25,26,1,%r0
	b,n .L618
	extrd,s %r26,31,32,%r19
	extrw,s %r19,0,1,%r19
	extrd,s %r19,63,32,%r19
	ldi 0,%r28
	depd %r19,0+32-1,32,%r28
	extrd,s %r26,31,32,%r31
	subi 63,%r20,%r20
	mtsar %r20
	extrw,s %r31,%sar,32,%r31
	extrd,u %r31,63,32,%r31
	depd %r31,32+32-1,32,%r28
	b,n .L620
.L618:
	cmpclr,*<> %r0,%r20,%r0
	b,n .L620
	extrd,s %r26,31,32,%r28
	mtsarcm %r20
	extrw,s %r28,%sar,32,%r28
	extrd,s %r28,63,32,%r19
	ldi 0,%r28
	depd %r19,0+32-1,32,%r28
	extrd,u %r26,31,32,%r19
	ldo -1(%r20),%r21
	mtsar %r21
	depw,z %r19,%sar,32,%r19
	mtsar %r20
	shrpw %r0,%r26,%sar,%r31
	or %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	depd %r31,32+32-1,32,%r28
.L620:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r24,63,32,%r31
	copy %r26,%r19
	copy %r25,%r20
	extrw,s,< %r24,25,1,%r0
	b,n .L623
	extrd,s %r26,0,1,%r28
	ldo -64(%r31),%r31
	extrd,s %r31,63,32,%r31
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r29
	b,n .L624
.L623:
	cmpclr,*<> %r0,%r31,%r0
	b,n .L626
	mtsarcm %r31
	extrd,s %r26,%sar,64,%r28
	subi 64,%r31,%r19
	extrd,s %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r21
	mtsar %r31
	shrpd %r0,%r25,%sar,%r31
	or %r21,%r31,%r29
.L624:
	copy %r28,%r19
	copy %r29,%r20
	b,n .L625
.L626:
.L625:
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,63,32,%r31
	extrd,u %r26,32+8-1,8,%r19
	extrd,u %r26,32+24-1,24,%r26
	depwi,z -1,23,8,%r28
	and %r26,%r28,%r26
	depw,z %r31,23,24,%r28
	ldil L'16711680,%r20
	and %r28,%r20,%r28
	depw,z %r31,7,8,%r31
	or %r31,%r19,%r31
	or %r31,%r26,%r31
	or %r28,%r31,%r28
	extrd,u %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,63,32,%r31
	depwi,z -1,31,16,%r28
	cmpclr,>>= %r28,%r26,%r0
	b,n .L634
	ldi 16,%r28
	b,n .L630
.L634:
	ldi 0,%r28
.L630:
	subi 16,%r28,%r19
	mtsar %r19
	shrpw %r0,%r31,%sar,%r19
	extrd,u %r19,63,32,%r31
	extrd,u %r28,63,32,%r28
	depwi,z -1,23,8,%r20
	and %r19,%r20,%r19
	cmpiclr,= 0,%r19,%r0
	b,n .L635
	ldi 8,%r20
	b,n .L631
.L635:
	ldi 0,%r20
.L631:
	subi 8,%r20,%r19
	mtsar %r19
	shrpw %r0,%r31,%sar,%r19
	extrd,u %r19,63,32,%r31
	add,l %r20,%r28,%r28
	extrd,u %r28,63,32,%r28
	ldi 240,%r20
	and %r19,%r20,%r19
	cmpiclr,= 0,%r19,%r0
	b,n .L636
	ldi 4,%r20
	b,n .L632
.L636:
	ldi 0,%r20
.L632:
	subi 4,%r20,%r19
	mtsar %r19
	shrpw %r0,%r31,%sar,%r19
	extrd,u %r19,63,32,%r31
	add,l %r28,%r20,%r28
	extrd,u %r28,63,32,%r28
	ldi 12,%r20
	and %r19,%r20,%r19
	cmpiclr,= 0,%r19,%r0
	b,n .L637
	ldi 2,%r19
	b,n .L633
.L637:
	ldi 0,%r19
.L633:
	subi 2,%r19,%r20
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	add,l %r28,%r19,%r28
	ldi 2,%r19
	and %r31,%r19,%r19
	cmpiclr,<> 0,%r19,%r19
	ldi 1,%r19
	subi 2,%r31,%r31
	std %r19,8(%r3)
	fldd 8(%r3),%fr22
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	add,l %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	or,*>= %r0,%r26,%r5
	subi 0,%r5,%r5
	ldo -1(%r5),%r5
	extrd,s %r5,0,1,%r5
	extrd,s %r5,63,32,%r5
	andcm %r26,%r5,%r28
	and %r5,%r25,%r26
	or %r28,%r26,%r26
	ldo -48(%r30),%r29
	b,l __clzdi2,%r2
	nop
	ldi 64,%r31
	and %r31,%r5,%r31
	add,l %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r26,31,32,%r31
	extrd,s %r25,31,32,%r28
	cmpclr,<= %r28,%r31,%r0
	b,n .L641
	copy %r31,%r28
	extrd,s %r25,31,32,%r31
	cmpclr,>= %r31,%r28,%r0
	b,n .L642
	cmpclr,<<= %r25,%r26,%r0
	b,n .L643
	cmpclr,>>= %r25,%r26,%r0
	b,n .L644
	ldi 1,%r28
	b,n .L640
.L641:
	ldi 0,%r28
	b,n .L640
.L642:
	ldi 2,%r28
	b,n .L640
.L643:
	ldi 0,%r28
	b,n .L640
.L644:
	ldi 2,%r28
.L640:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*>= %r26,%r24,%r0
	b,n .L648
	cmpclr,*<= %r26,%r24,%r0
	b,n .L649
	cmpclr,*>>= %r25,%r23,%r0
	b,n .L650
	cmpclr,*<<= %r25,%r23,%r0
	b,n .L651
	ldi 1,%r28
	b,n .L647
.L648:
	ldi 0,%r28
	b,n .L647
.L649:
	ldi 2,%r28
	b,n .L647
.L650:
	ldi 0,%r28
	b,n .L647
.L651:
	ldi 2,%r28
.L647:
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,63,32,%r31
	extrd,u %r26,63,16,%r26
	cmpclr,*= %r0,%r26,%r0
	b,n .L657
	ldi 16,%r28
	b,n .L653
.L657:
	ldi 0,%r28
.L653:
	mtsar %r28
	shrpw %r0,%r31,%sar,%r19
	extrd,u %r19,63,32,%r31
	extrd,u %r28,63,32,%r28
	extrd,u %r19,63,8,%r19
	cmpclr,*= %r0,%r19,%r0
	b,n .L658
	ldi 8,%r20
	b,n .L654
.L658:
	ldi 0,%r20
.L654:
	mtsar %r20
	shrpw %r0,%r31,%sar,%r19
	extrd,u %r19,63,32,%r31
	add,l %r20,%r28,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r19,63,4,%r19
	cmpclr,*= %r0,%r19,%r0
	b,n .L659
	ldi 4,%r20
	b,n .L655
.L659:
	ldi 0,%r20
.L655:
	mtsar %r20
	shrpw %r0,%r31,%sar,%r19
	extrd,u %r19,63,32,%r31
	add,l %r28,%r20,%r28
	extrd,u %r28,63,32,%r28
	extrd,u %r19,63,2,%r19
	cmpclr,*= %r0,%r19,%r0
	b,n .L660
	ldi 2,%r19
	b,n .L656
.L660:
	ldi 0,%r19
.L656:
	mtsar %r19
	shrpw %r0,%r31,%sar,%r31
	extrd,u %r31,63,2,%r31
	add,l %r28,%r19,%r28
	uaddcm %r0,%r31,%r19
	extrd,u %r19,63,1,%r19
	extrd,u %r31,62,63,%r31
	subi 2,%r31,%r31
	sub %r0,%r19,%r19
	and %r19,%r31,%r19
	add,l %r28,%r19,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	or,*>= %r0,%r25,%r5
	subi 0,%r5,%r5
	ldo -1(%r5),%r5
	extrd,s %r5,0,1,%r5
	extrd,s %r5,63,32,%r5
	and %r5,%r26,%r28
	andcm %r25,%r5,%r26
	or %r26,%r28,%r26
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldi 64,%r31
	and %r31,%r5,%r31
	add,l %r28,%r31,%r28
	extrd,s %r28,63,32,%r28
	ldd -16(%r3),%r2
	ldd 8(%r3),%r5
	ldd 16(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*= %r0,%r25,%r0
	b,n .L663
	cmpclr,*<> %r0,%r26,%r0
	b,n .L665
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 65(%r28),%r28
	extrd,s %r28,63,32,%r28
	b,n .L664
.L663:
	copy %r25,%r26
	ldo -48(%r30),%r29
	b,l __ctzdi2,%r2
	nop
	ldo 1(%r28),%r28
	extrd,s %r28,63,32,%r28
	b,n .L664
.L665:
	ldi 0,%r28
.L664:
	ldd -16(%r3),%r2
	ldd 8(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r28
	extrd,s %r25,63,32,%r20
	extrw,s,< %r25,26,1,%r0
	b,n .L667
	ldi 0,%r28
	depd %r28,0+32-1,32,%r28
	extrd,u %r26,31,32,%r31
	mtsar %r20
	shrpw %r0,%r31,%sar,%r31
	extrd,u %r31,63,32,%r31
	depd %r31,32+32-1,32,%r28
	b,n .L669
.L667:
	cmpclr,*<> %r0,%r20,%r0
	b,n .L669
	extrd,u %r26,31,32,%r19
	mtsar %r20
	shrpw %r0,%r19,%sar,%r19
	extrd,u %r19,63,32,%r19
	ldi 0,%r28
	depd %r19,0+32-1,32,%r28
	extrd,u %r26,31,32,%r19
	ldo -1(%r20),%r21
	mtsar %r21
	depw,z %r19,%sar,32,%r19
	mtsar %r20
	shrpw %r0,%r26,%sar,%r31
	or %r19,%r31,%r31
	extrd,u %r31,63,32,%r31
	depd %r31,32+32-1,32,%r28
.L669:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r24,63,32,%r31
	copy %r26,%r19
	copy %r25,%r20
	extrw,s,< %r24,25,1,%r0
	b,n .L672
	ldi 0,%r28
	mtsar %r31
	shrpd %r0,%r26,%sar,%r29
	b,n .L673
.L672:
	cmpclr,*<> %r0,%r31,%r0
	b,n .L675
	mtsar %r31
	shrpd %r0,%r26,%sar,%r28
	subi 64,%r31,%r19
	extrd,s %r19,63,32,%r19
	mtsarcm %r19
	depd,z %r26,%sar,64,%r21
	mtsar %r31
	shrpd %r0,%r22,%sar,%r31
	or %r21,%r31,%r29
.L673:
	copy %r28,%r19
	copy %r29,%r20
	b,n .L674
.L675:
.L674:
	copy %r19,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrw,u %r25,31,16,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r31,63,32,%r31
	ldi 0,%r28
	depd %r31,32+32-1,32,%r28
	extrd,u %r28,32+16-1,16,%r19
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
	extrd,u %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	extrd,u %r28,32+16-1,16,%r19
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
	extrd,u %r28,31,32,%r19
	extrw,u %r31,15,16,%r31
	add,l %r31,%r19,%r31
	extrd,s %r31,63,32,%r31
	depd %r31,0+32-1,32,%r28
	extrd,u %r28,31,32,%r31
	xmpyu %fr24R,%fr23R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r26
	add,l %r26,%r31,%r26
	extrd,s %r26,63,32,%r26
	depd %r26,0+32-1,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r7,%r26
	ldo -48(%r30),%r29
	b,l __muldsi3,%r2
	nop
	extrd,u %r28,31,32,%r19
	extrd,u %r5,0+32-1,32,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr22
	std %r8,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr22R,%fr23R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r6,0+32-1,32,%r6
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	copy %r26,%r19
	std %r19,8(%r3)
	fldd 8(%r3),%fr22
	copy %r25,%r21
	std %r21,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr23R,%fr22R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	extrd,u %r31,31,32,%r28
	extrd,u %r31,63,32,%r31
	extrd,u %r26,0+32-1,32,%r26
	std %r26,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr23R,%fr24R,%fr23
	fstd %fr23,8(%r3)
	ldd 8(%r3),%r19
	add,l %r28,%r19,%r28
	depd,z %r28,31,32,%r21
	add,l %r21,%r31,%r20
	extrd,u %r28,31,32,%r19
	extrd,u %r20,31,32,%r28
	extrd,u %r20,63,32,%r31
	extrd,u %r25,0+32-1,32,%r25
	std %r25,8(%r3)
	fldd 8(%r3),%fr23
	xmpyu %fr23R,%fr22R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r21
	add,l %r28,%r21,%r28
	depd,z %r28,31,32,%r21
	add,l %r21,%r31,%r20
	extrd,u %r28,31,32,%r28
	add,l %r28,%r19,%r28
	xmpyu %fr23R,%fr24R,%fr22
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r25
	add,l %r25,%r28,%r28
	copy %r20,%r29
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
	.EXIT
	.PROCEND
	.size	__mulddi3, .-__mulddi3
	.align 8
.globl __multi3
	.type	__multi3, @function
__multi3:
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
	copy %r25,%r29
	copy %r26,%r5
	copy %r25,%r6
	copy %r24,%r7
	copy %r23,%r8
	copy %r23,%r25
	copy %r29,%r26
	ldo -48(%r30),%r29
	b,l __mulddi3,%r2
	nop
	copy %r28,%r21
	copy %r21,%r19
	copy %r5,%r21
	std %r21,8(%r3)
	fldd 8(%r3),%fr23
	copy %r8,%r28
	std %r28,8(%r3)
	fldd 8(%r3),%fr22
	extrd,u %r5,0+32-1,32,%r5
	extrd,u %r8,0+32-1,32,%r8
	std %r5,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r28
	std %r8,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r8
	xmpyu %fr22R,%fr23R,%fr22
	add,l %r28,%r8,%r28
	depd,z %r28,31,32,%r28
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r21
	add,l %r28,%r21,%r28
	copy %r7,%r31
	std %r31,8(%r3)
	fldd 8(%r3),%fr23
	copy %r6,%r21
	std %r21,8(%r3)
	fldd 8(%r3),%fr22
	extrd,u %r7,0+32-1,32,%r7
	extrd,u %r6,0+32-1,32,%r6
	std %r7,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr22R,%fr24R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r31
	std %r6,8(%r3)
	fldd 8(%r3),%fr24
	xmpyu %fr24R,%fr23R,%fr24
	fstd %fr24,8(%r3)
	ldd 8(%r3),%r6
	xmpyu %fr22R,%fr23R,%fr22
	add,l %r31,%r6,%r31
	depd,z %r31,31,32,%r31
	fstd %fr22,8(%r3)
	ldd 8(%r3),%r21
	add,l %r31,%r21,%r31
	add,l %r28,%r31,%r28
	add,l %r28,%r19,%r28
	ldd -16(%r3),%r2
	ldd 16(%r3),%r8
	ldd 24(%r3),%r7
	ldd 32(%r3),%r6
	ldd 40(%r3),%r5
	ldd 48(%r3),%r4
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	xor %r26,%r28,%r26
	extrw,u %r26,23,24,%r28
	xor %r26,%r28,%r26
	extrw,u %r26,27,28,%r28
	xor %r26,%r28,%r26
	extrd,u %r26,63,4,%r26
	mtsarcm %r26
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	extrw,u %r28,%sar,1,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	xor %r25,%r26,%r31
	extrd,u %r31,31,32,%r28
	xor %r28,%r31,%r28
	extrw,u %r28,15,16,%r31
	xor %r28,%r31,%r28
	extrw,u %r28,23,24,%r31
	xor %r28,%r31,%r28
	extrw,u %r28,27,28,%r31
	xor %r28,%r31,%r28
	extrd,u %r28,63,4,%r28
	mtsarcm %r28
	ldil L'32768,%r31
	ldo -5738(%r31),%r31
	extrw,u %r31,%sar,1,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,32+16-1,16,%r28
	xor %r26,%r28,%r26
	extrw,u %r26,23,24,%r28
	xor %r26,%r28,%r26
	extrw,u %r26,27,28,%r28
	xor %r26,%r28,%r26
	extrd,u %r26,63,4,%r26
	mtsarcm %r26
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	extrw,u %r28,%sar,1,%r28
	extrd,s %r28,63,32,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	add,l %r28,%r31,%r28
	extrw,u %r28,23,24,%r31
	add,l %r28,%r31,%r28
	extrd,u %r28,63,7,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,32+31-1,31,%r28
	ldil L'1431650304,%r31
	ldo 5461(%r31),%r31
	and %r28,%r31,%r28
	sub %r26,%r28,%r26
	extrw,u %r26,29,30,%r28
	ldil L'858996736,%r31
	ldo -3277(%r31),%r31
	and %r28,%r31,%r28
	and %r26,%r31,%r26
	add,l %r28,%r26,%r28
	extrw,u %r28,27,28,%r31
	add,l %r28,%r31,%r28
	ldil L'252641280,%r31
	ldo 3855(%r31),%r31
	and %r28,%r31,%r28
	extrw,u %r28,15,16,%r31
	add,l %r28,%r31,%r28
	extrw,u %r28,23,24,%r31
	add,l %r28,%r31,%r28
	extrd,u %r28,63,6,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	add,l %r28,%r31,%r28
	extrw,u %r28,23,24,%r31
	add,l %r28,%r31,%r28
	extrd,u %r28,63,8,%r28
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r25,63,32,%r28
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r31
	fldd 0(%r31),%fr22
.L691:
	extrd,u %r28,63,1,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L689
	fmpy,dbl %fr22,%fr4,%fr22
.L689:
	extrw,u %r28,0,1,%r31
	add,l %r31,%r28,%r31
	extrw,s %r31,30,31,%r31
	extrd,s %r31,63,32,%r28
	cmpiclr,<> 0,%r31,%r0
	b,n .L690
	fmpy,dbl %fr4,%fr4,%fr4
	b,n .L691
.L690:
	cmpclr,*<> %r0,%r25,%r0
	b,n .L693
	addil LT'.LC46,%r27
	ldd RT'.LC46(%r1),%r28
	fldd 0(%r28),%fr4
	fdiv,dbl %fr4,%fr22,%fr4
	b,n .L692
.L693:
	fcpy,dbl %fr22,%fr4
.L692:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,s %r25,63,32,%r28
	extrd,u %r25,32+1-1,1,%r25
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r31
	fldw 0(%r31),%fr22R
.L697:
	extrd,u %r28,63,1,%r31
	cmpclr,*<> %r0,%r31,%r0
	b,n .L695
	fmpy,sgl %fr22R,%fr4R,%fr22R
.L695:
	extrw,u %r28,0,1,%r31
	add,l %r31,%r28,%r31
	extrw,s %r31,30,31,%r31
	extrd,s %r31,63,32,%r28
	cmpiclr,<> 0,%r31,%r0
	b,n .L696
	fmpy,sgl %fr4R,%fr4R,%fr4R
	b,n .L697
.L696:
	cmpclr,*<> %r0,%r25,%r0
	b,n .L699
	addil LT'.LC48,%r27
	ldd RT'.LC48(%r1),%r28
	fldw 0(%r28),%fr4R
	fdiv,sgl %fr4R,%fr22R,%fr4R
	b,n .L698
.L699:
	fcpy,sgl %fr22R,%fr4R
.L698:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	extrd,u %r26,31,32,%r31
	extrd,u %r25,31,32,%r28
	cmpclr,<<= %r28,%r31,%r0
	b,n .L702
	copy %r31,%r28
	extrd,u %r25,31,32,%r31
	cmpclr,>>= %r31,%r28,%r0
	b,n .L703
	cmpclr,<<= %r25,%r26,%r0
	b,n .L704
	cmpclr,>>= %r25,%r26,%r0
	b,n .L705
	ldi 1,%r28
	b,n .L701
.L702:
	ldi 0,%r28
	b,n .L701
.L703:
	ldi 2,%r28
	b,n .L701
.L704:
	ldi 0,%r28
	b,n .L701
.L705:
	ldi 2,%r28
.L701:
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
	cmpclr,*>>= %r26,%r24,%r0
	b,n .L709
	cmpclr,*<<= %r26,%r24,%r0
	b,n .L710
	cmpclr,*>>= %r25,%r23,%r0
	b,n .L711
	cmpclr,*<<= %r25,%r23,%r0
	b,n .L712
	ldi 1,%r28
	b,n .L708
.L709:
	ldi 0,%r28
	b,n .L708
.L710:
	ldi 2,%r28
	b,n .L708
.L711:
	ldi 0,%r28
	b,n .L708
.L712:
	ldi 2,%r28
.L708:
	ldd -16(%r3),%r2
	ldo 64(%r3),%r30
	ldd,mb -64(%r30),%r3
	bve,n (%r2)
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
