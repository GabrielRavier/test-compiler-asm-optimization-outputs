	.LEVEL 1.1
	.text
	.align 4
.globl memmove
	.type	memmove, @function
memmove:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	comb,>>= %r25,%r26,.L2
	copy %r26,%r28
	addl %r25,%r24,%r25
	addl %r26,%r24,%r21
	b .L3
	copy %r24,%r19
.L4:
	ldbx %r20(%r19),%r22
	uaddcm %r21,%r24,%r20
	addl %r20,%r19,%r20
	stb %r22,0(%r20)
	ldo -1(%r19),%r19
.L3:
	comib,<> 0,%r19,.L4
	uaddcm %r25,%r24,%r20
	b,n .L5
.L2:
	comclr,= %r25,%r26,%r0
	b,n .L8
	b,n .L5
.L7:
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	b .L6
	ldo 1(%r19),%r19
.L8:
	ldi 0,%r19
.L6:
	comb,<>,n %r24,%r19,.L7
	ldbx %r25(%r19),%r21
.L5:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memmove, .-memmove
	.align 4
.globl memccpy
	.type	memccpy, @function
memccpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L10
	extru %r24,31,8,%r24
.L12:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	ldo 1(%r26),%r26
.L10:
	comib,=,n 0,%r23,.L11
	ldb 0(%r25),%r28
	comb,<> %r28,%r24,.L12
	stb %r28,0(%r26)
.L11:
	comib,<> 0,%r23,.L13
	ldo 1(%r26),%r28
	ldi 0,%r28
.L13:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memccpy, .-memccpy
	.align 4
.globl memchr
	.type	memchr, @function
memchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L16
	extru %r25,31,8,%r25
.L18:
	ldo -1(%r24),%r24
.L16:
	comib,=,n 0,%r24,.L17
	ldb 0(%r26),%r28
	comb,<>,n %r28,%r25,.L18
	ldo 1(%r26),%r26
.L17:
	comib,<> 0,%r24,.L19
	copy %r26,%r28
	ldi 0,%r28
.L19:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memchr, .-memchr
	.align 4
.globl memcmp
	.type	memcmp, @function
memcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b,n .L22
.L24:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L22:
	comib,=,n 0,%r24,.L23
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	comb,=,n %r28,%r19,.L24
	ldo -1(%r24),%r24
.L23:
	comib,=,n 0,%r24,.L26
	ldb 0(%r26),%r28
	ldb 0(%r25),%r19
	b .L25
	sub %r28,%r19,%r28
.L26:
	ldi 0,%r28
.L25:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memcmp, .-memcmp
	.align 4
.globl memcpy
	.type	memcpy, @function
memcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	b .L28
	ldi 0,%r19
.L29:
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	ldo 1(%r19),%r19
.L28:
	comb,<>,n %r24,%r19,.L29
	ldbx %r25(%r19),%r21
	ldo 64(%r3),%r30
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r25,31,8,%r25
	b .L31
	ldo -1(%r24),%r24
.L33:
	comb,<> %r19,%r25,.L34
	ldo -1(%r24),%r28
	b .L32
	addl %r26,%r24,%r28
.L34:
	copy %r28,%r24
.L31:
	comib,<>,n -1,%r24,.L33
	ldbx %r26(%r24),%r19
	ldi 0,%r28
.L32:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memrchr, .-memrchr
	.align 4
.globl memset
	.type	memset, @function
memset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	addl %r26,%r24,%r24
	b .L36
	copy %r26,%r19
.L37:
	ldo 1(%r19),%r19
.L36:
	comb,<>,n %r24,%r19,.L37
	stb %r25,0(%r19)
	ldo 64(%r3),%r30
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L39
	copy %r26,%r28
.L40:
	ldo 1(%r25),%r25
	ldo 1(%r28),%r28
.L39:
	ldb 0(%r25),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L40
	stb %r19,0(%r28)
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	stpcpy, .-stpcpy
	.align 4
.globl strchrnul
	.type	strchrnul, @function
strchrnul:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	extru %r25,31,8,%r25
.L44:
	ldb 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L43
	comb,<>,n %r19,%r25,.L44
	ldo 1(%r28),%r28
.L43:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strchrnul, .-strchrnul
	.align 4
.globl strchr
	.type	strchr, @function
strchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldb 0(%r26),%r28
.L49:
	extrs %r28,31,8,%r28
	comb,=,n %r28,%r25,.L48
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	comib,<>,n 0,%r28,.L49
	ldb 0(%r26),%r28
	b,n .L46
.L48:
	copy %r26,%r28
.L46:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strchr, .-strchr
	.align 4
.globl strcmp
	.type	strcmp, @function
strcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L54
	ldb 0(%r26),%r19
.L53:
	ldo 1(%r25),%r25
	ldb 0(%r26),%r19
.L54:
	extrs %r19,31,8,%r19
	ldb 0(%r25),%r28
	extrs %r28,31,8,%r28
	comb,<>,n %r28,%r19,.L52
	ldb 0(%r26),%r28
	comib,<>,n 0,%r28,.L53
	ldo 1(%r26),%r26
.L52:
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	sub %r19,%r28,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strcmp, .-strcmp
	.align 4
.globl strlen
	.type	strlen, @function
strlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
.L57:
	ldb 0(%r28),%r19
	comib,<>,n 0,%r19,.L57
	ldo 1(%r28),%r28
	sub %r28,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strlen, .-strlen
	.align 4
.globl strncmp
	.type	strncmp, @function
strncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	movb,= %r24,%r24,.L63
	copy %r26,%r19
	b .L65
	ldb 0(%r19),%r28
.L62:
	ldo 1(%r25),%r25
	ldb 0(%r19),%r28
.L65:
	comib,=,n 0,%r28,.L64
	ldb 0(%r25),%r20
	ldo -1(%r24),%r28
	addl %r26,%r28,%r28
	comclr,= %r28,%r19,%r28
	ldi 1,%r28
	comiclr,= 0,%r20,%r20
	ldi 1,%r20
	and %r28,%r20,%r28
	comib,=,n 0,%r28,.L61
	ldb 0(%r19),%r20
	ldb 0(%r25),%r28
	comb,=,n %r28,%r20,.L62
	ldo 1(%r19),%r19
.L61:
	ldb 0(%r19),%r28
.L64:
	ldb 0(%r25),%r19
	b .L59
	sub %r28,%r19,%r28
.L63:
	ldi 0,%r28
.L59:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strncmp, .-strncmp
	.align 4
.globl swab
	.type	swab, @function
swab:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L67
	copy %r26,%r28
.L68:
	stb %r19,0(%r25)
	ldb 0(%r28),%r19
	stb %r19,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L67:
	addl %r26,%r24,%r19
	sub %r19,%r28,%r19
	comib,<,n 1,%r19,.L68
	ldb 1(%r28),%r19
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	swab, .-swab
	.align 4
.globl isalpha
	.type	isalpha, @function
isalpha:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	depi -1,26,1,%r26
	ldo -97(%r26),%r28
	comiclr,<< 25,%r28,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isalpha, .-isalpha
	.align 4
.globl isascii
	.type	isascii, @function
isascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	comiclr,<< 127,%r26,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isascii, .-isascii
	.align 4
.globl isblank
	.type	isblank, @function
isblank:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	comiclr,= 9,%r26,%r0
	comiclr,<> 32,%r26,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isblank, .-isblank
	.align 4
.globl iscntrl
	.type	iscntrl, @function
iscntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	comiclr,= 127,%r26,%r0
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iscntrl, .-iscntrl
	.align 4
.globl isdigit
	.type	isdigit, @function
isdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -48(%r26),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isdigit, .-isdigit
	.align 4
.globl isgraph
	.type	isgraph, @function
isgraph:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -33(%r26),%r28
	comiclr,<< 93,%r28,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isgraph, .-isgraph
	.align 4
.globl islower
	.type	islower, @function
islower:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -97(%r26),%r28
	comiclr,<< 25,%r28,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	islower, .-islower
	.align 4
.globl isprint
	.type	isprint, @function
isprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -32(%r26),%r28
	comiclr,<< 94,%r28,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isprint, .-isprint
	.align 4
.globl isspace
	.type	isspace, @function
isspace:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -9(%r26),%r28
	comiclr,>>= 4,%r28,%r0
	comiclr,<> 32,%r26,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isspace, .-isspace
	.align 4
.globl isupper
	.type	isupper, @function
isupper:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -65(%r26),%r28
	comiclr,<< 25,%r28,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	isupper, .-isupper
	.align 4
.globl iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -127(%r26),%r28
	comiclr,>>= 32,%r28,%r0
	comiclr,<< 31,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L81
	ldo -40(%r26),%r28
	ldo -8192(%r28),%r28
	comib,>>=,n 1,%r28,.L82
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comib,<< 2,%r26,.L83
	ldi 1,%r28
	b,n .L80
.L81:
	b .L80
	ldi 1,%r28
.L82:
	b .L80
	ldi 1,%r28
.L83:
	ldi 0,%r28
.L80:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswcntrl, .-iswcntrl
	.align 4
.globl iswdigit
	.type	iswdigit, @function
iswdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -48(%r26),%r28
	comiclr,<< 9,%r28,%r28
	ldi 1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswdigit, .-iswdigit
	.align 4
.globl iswprint
	.type	iswprint, @function
iswprint:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldi 254,%r28
	comb,<< %r28,%r26,.L86
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
	b,n .L87
.L86:
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L88
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L89
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L90
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comb,= %r28,%r26,.L91
	ldi 1,%r28
	b,n .L87
.L88:
	b .L87
	ldi 1,%r28
.L89:
	b .L87
	ldi 1,%r28
.L90:
	b .L87
	ldi 0,%r28
.L91:
	ldi 0,%r28
.L87:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswprint, .-iswprint
	.align 4
.globl iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -48(%r26),%r28
	comib,>>= 9,%r28,.L94
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comib,<< 5,%r26,.L95
	ldi 1,%r28
	b,n .L93
.L94:
	b .L93
	ldi 1,%r28
.L95:
	ldi 0,%r28
.L93:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	iswxdigit, .-iswxdigit
	.align 4
.globl toascii
	.type	toascii, @function
toascii:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,7,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	toascii, .-toascii
	.align 4
.globl fdim
	.type	fdim, @function
fdim:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L100
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L98
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L103
	b .L104
	fcpy,dbl %fr0,%fr4
.L103:
	b .L98
	fsub,dbl %fr5,%fr7,%fr4
.L100:
	fcpy,dbl %fr5,%fr4
.L104:
.L98:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fdim, .-fdim
	.align 4
.globl fdimf
	.type	fdimf, @function
fdimf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b .L106
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L109
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L111
	b .L112
	fcpy,sgl %fr0,%fr4L
.L111:
	b .L106
	fsub,sgl %fr4L,%fr5L,%fr4L
.L109:
	fcpy,sgl %fr5L,%fr4L
.L112:
.L106:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fdimf, .-fdimf
	.align 4
.globl fmax
	.type	fmax, @function
fmax:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L117
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L118
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L115
	copy %r28,%r21
	comib,<= 0,%r21,.L119
	fcpy,dbl %fr7,%fr4
	b,n .L114
.L115:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L121
	b .L122
	fcpy,dbl %fr5,%fr4
.L121:
	b .L114
	fcpy,dbl %fr7,%fr4
.L117:
	b .L114
	fcpy,dbl %fr7,%fr4
.L118:
	b .L114
	fcpy,dbl %fr5,%fr4
.L119:
	fcpy,dbl %fr5,%fr4
.L122:
.L114:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmax, .-fmax
	.align 4
.globl fmaxf
	.type	fmaxf, @function
fmaxf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b .L127
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L124
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L125
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L124
	b .L124
	fcpy,sgl %fr5L,%fr4L
.L125:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L131
	b,n .L124
.L131:
	b .L124
	fcpy,sgl %fr5L,%fr4L
.L127:
	fcpy,sgl %fr5L,%fr4L
.L124:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmaxf, .-fmaxf
	.align 4
.globl fmaxl
	.type	fmaxl, @function
fmaxl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L137
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L138
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L135
	copy %r28,%r21
	comib,<= 0,%r21,.L139
	fcpy,dbl %fr7,%fr4
	b,n .L134
.L135:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L141
	b .L142
	fcpy,dbl %fr5,%fr4
.L141:
	b .L134
	fcpy,dbl %fr7,%fr4
.L137:
	b .L134
	fcpy,dbl %fr7,%fr4
.L138:
	b .L134
	fcpy,dbl %fr5,%fr4
.L139:
	fcpy,dbl %fr5,%fr4
.L142:
.L134:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmaxl, .-fmaxl
	.align 4
.globl fmin
	.type	fmin, @function
fmin:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L147
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L148
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L145
	copy %r19,%r21
	comib,<= 0,%r21,.L149
	fcpy,dbl %fr5,%fr4
	b,n .L144
.L145:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L151
	b .L152
	fcpy,dbl %fr7,%fr4
.L151:
	b .L144
	fcpy,dbl %fr5,%fr4
.L147:
	b .L144
	fcpy,dbl %fr7,%fr4
.L148:
	b .L144
	fcpy,dbl %fr5,%fr4
.L149:
	fcpy,dbl %fr7,%fr4
.L152:
.L144:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fmin, .-fmin
	.align 4
.globl fminf
	.type	fminf, @function
fminf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b .L157
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L154
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L155
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L159
	b,n .L154
.L155:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L154
	b .L162
	fcpy,sgl %fr5L,%fr4L
.L157:
	b .L154
	fcpy,sgl %fr5L,%fr4L
.L159:
	fcpy,sgl %fr5L,%fr4L
.L162:
.L154:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fminf, .-fminf
	.align 4
.globl fminl
	.type	fminl, @function
fminl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L167
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L168
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L165
	copy %r19,%r21
	comib,<= 0,%r21,.L169
	fcpy,dbl %fr5,%fr4
	b,n .L164
.L165:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L171
	b .L172
	fcpy,dbl %fr7,%fr4
.L171:
	b .L164
	fcpy,dbl %fr5,%fr4
.L167:
	b .L164
	fcpy,dbl %fr7,%fr4
.L168:
	b .L164
	fcpy,dbl %fr5,%fr4
.L169:
	fcpy,dbl %fr7,%fr4
.L172:
.L164:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	fminl, .-fminl
	.section	.rodata
	.align 4
	.type	digits, @object
	.size	digits, 65
digits:
	.stringz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.align 4
.globl l64a
	.type	l64a, @function
l64a:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	addil LR's.0-$global$,%r27
	b .L174
	ldo RR's.0-$global$(%r1),%r1
.L175:
	ldil LR'digits,%r28
	ldo RR'digits(%r28),%r28
	ldbx %r28(%r19),%r28
	stb %r28,0(%r1)
	ldo 1(%r1),%r1
	extru %r26,25,26,%r26
.L174:
	comib,<> 0,%r26,.L175
	extru %r26,31,6,%r19
	stb %r0,0(%r1)
	addil LR's.0-$global$,%r27
	ldo RR's.0-$global$(%r1),%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.align 4
.globl srand
	.type	srand, @function
srand:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldo -1(%r26),%r29
	ldi 0,%r28
	addil LR'seed-$global$,%r27
	ldo RR'seed-$global$(%r1),%r1
	stw %r28,0(%r1)
	stw %r29,4(%r1)
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	srand, .-srand
	.align 4
.globl rand
	.type	rand, @function
rand:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	addil LR'seed-$global$,%r27
	ldo RR'seed-$global$(%r1),%r1
	ldw 0(%r1),%r21
	ldw 4(%r1),%r22
	ldil L'1284865837,%r29
	ldil L'1481765933,%r28
	ldo R'1481765933(%r28),%r28
	ldo R'1284865837(%r29),%r29
	stws %r22,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r21,-16(%sp)
	fldws -16(%sp),%fr24R
	xmpyu %fr22L,%fr24R,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24R
	xmpyu %fr24R,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	xmpyu %fr22L,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r22,%r29,%r21
	copy %r20,%r29
	addl %r19,%r21,%r28
	addi 1,%r29,%r29
	addc %r28,%r0,%r28
	stw %r28,0(%r1)
	stw %r29,4(%r1)
	extru %r28,30,31,%r20
	copy %r20,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rand, .-rand
	.align 4
.globl insque
	.type	insque, @function
insque:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	movb,<>,n %r25,%r25,.L179
	stw %r0,4(%r26)
	b .L178
	stw %r0,0(%r26)
.L179:
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L178:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	insque, .-insque
	.align 4
.globl remque
	.type	remque, @function
remque:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldw 0(%r26),%r28
	comib,=,n 0,%r28,.L182
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L182:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L181
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L181:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	remque, .-remque
	.align 4
.globl lsearch
	.type	lsearch, @function
lsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=10
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r10,12(%r3)
	stw %r9,16(%r3)
	stw %r8,20(%r3)
	stw %r7,24(%r3)
	stw %r6,28(%r3)
	stw %r5,32(%r3)
	stw %r4,36(%r3)
	copy %r26,%r8
	copy %r25,%r4
	copy %r24,%r9
	copy %r23,%r5
	ldw -52(%r3),%r28
	stw %r28,8(%r3)
	ldw 0(%r24),%r7
	copy %r25,%r10
	b .L185
	ldi 0,%r6
.L188:
	copy %r10,%r25
	copy %r8,%r26
	ldw 8(%r3),%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L186
	addl %r10,%r5,%r10
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L187
	addl %r4,%r29,%r28
.L186:
	ldo 1(%r6),%r6
.L185:
	comb,<> %r7,%r6,.L188
	ldo 1(%r7),%r28
	stw %r28,0(%r9)
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r7,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r5,%r24
	copy %r8,%r25
	bl memcpy,%r2
	addl %r4,%r29,%r26
.L187:
	ldw -20(%r3),%r2
	ldw 12(%r3),%r10
	ldw 16(%r3),%r9
	ldw 20(%r3),%r8
	ldw 24(%r3),%r7
	ldw 28(%r3),%r6
	ldw 32(%r3),%r5
	ldw 36(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	lsearch, .-lsearch
	.align 4
.globl lfind
	.type	lfind, @function
lfind:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r9,12(%r3)
	stw %r8,16(%r3)
	stw %r7,20(%r3)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	stw %r4,32(%r3)
	copy %r26,%r8
	copy %r25,%r4
	copy %r23,%r6
	ldw -52(%r3),%r28
	stw %r28,8(%r3)
	ldw 0(%r24),%r9
	copy %r25,%r7
	b .L190
	ldi 0,%r5
.L193:
	copy %r7,%r25
	copy %r8,%r26
	ldw 8(%r3),%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L191
	addl %r7,%r6,%r7
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L192
	addl %r4,%r29,%r28
.L191:
	ldo 1(%r5),%r5
.L190:
	comb,<> %r9,%r5,.L193
	ldi 0,%r28
.L192:
	ldw -20(%r3),%r2
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	lfind, .-lfind
	.align 4
.globl abs
	.type	abs, @function
abs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	or,>= %r0,%r26,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	abs, .-abs
	.align 4
.globl atoi
	.type	atoi, @function
atoi:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r4,8(%r3)
	b .L196
	copy %r26,%r4
.L197:
	ldo 1(%r4),%r4
.L196:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<> 0,%r28,.L197
	ldi 43,%r19
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	comb,= %r19,%r28,.L203
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L204
	ldi 1,%r20
	b .L206
	ldo 1(%r4),%r4
.L203:
	ldi 0,%r20
	b .L199
	ldo 1(%r4),%r4
.L204:
	ldi 0,%r20
.L199:
.L206:
	b .L200
	ldi 0,%r28
.L201:
	zdep %r28,30,31,%r28
	ldo 1(%r4),%r4
	ldb -1(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L200:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L201
	sh2addl %r28,%r28,%r28 
	comiclr,<> 0,%r20,%r0
	sub %r0,%r28,%r28
.L202:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atoi, .-atoi
	.align 4
.globl atol
	.type	atol, @function
atol:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r4,8(%r3)
	b .L208
	copy %r26,%r4
.L209:
	ldo 1(%r4),%r4
.L208:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<> 0,%r28,.L209
	ldi 43,%r19
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	comb,= %r19,%r28,.L215
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L216
	ldi 1,%r20
	b .L218
	ldo 1(%r4),%r4
.L215:
	ldi 0,%r20
	b .L211
	ldo 1(%r4),%r4
.L216:
	ldi 0,%r20
.L211:
.L218:
	b .L212
	ldi 0,%r28
.L213:
	zdep %r28,30,31,%r28
	ldo 1(%r4),%r4
	ldb -1(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L212:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L213
	sh2addl %r28,%r28,%r28 
	comiclr,<> 0,%r20,%r0
	sub %r0,%r28,%r28
.L214:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atol, .-atol
	.align 4
.globl atoll
	.type	atoll, @function
atoll:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=10
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r10,8(%r3)
	stw %r9,12(%r3)
	stw %r8,16(%r3)
	stw %r7,20(%r3)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	stw %r4,32(%r3)
	b .L220
	copy %r26,%r4
.L221:
	ldo 1(%r4),%r4
.L220:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<> 0,%r28,.L221
	ldi 43,%r19
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	comb,=,n %r19,%r28,.L227
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L228
	ldi 1,%r20
	b .L223
	ldo 1(%r4),%r4
.L227:
	ldi 0,%r20
	b .L223
	ldo 1(%r4),%r4
.L228:
	ldi 0,%r20
.L223:
	ldi 0,%r28
	ldi 0,%r29
	b .L230
	ldb 0(%r4),%r19
.L225:
	zdep %r29,29,30,%r8
	add %r29,%r8,%r29
	addc %r28,%r7,%r28
	shd %r28,%r29,31,%r9
	zdep %r29,30,31,%r10
	ldo 1(%r4),%r4
	ldb -1(%r4),%r28
	extrs %r28,31,8,%r28
	ldo -48(%r28),%r28
	copy %r28,%r6
	extrs %r28,0,1,%r5
	sub %r10,%r6,%r29
	subb %r9,%r5,%r28
	ldb 0(%r4),%r19
.L230:
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L225
	shd %r28,%r29,30,%r7
	comib,<> 0,%r20,.L231
	ldw -20(%r3),%r2
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L231:
	ldw 8(%r3),%r10
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	atoll, .-atoll
	.align 4
.globl bsearch
	.type	bsearch, @function
bsearch:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r8,12(%r3)
	stw %r7,16(%r3)
	stw %r6,20(%r3)
	stw %r5,24(%r3)
	stw %r4,28(%r3)
	copy %r26,%r8
	copy %r25,%r7
	copy %r24,%r4
	copy %r23,%r6
	ldw -52(%r3),%r28
	b .L233
	stw %r28,8(%r3)
.L237:
	extru %r4,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r7,%r29,%r5
	copy %r5,%r25
	copy %r8,%r26
	ldw 8(%r3),%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,>=,n %r28,%r28,.L234
	extru %r4,30,31,%r4
	b,n .L233
.L234:
	comib,>= 0,%r28,.L238
	addl %r5,%r6,%r7
	extru %r4,30,31,%r28
	uaddcm %r4,%r28,%r4
.L233:
	comib,<> 0,%r4,.L237
	ldi 0,%r28
	b .L239
	ldw -20(%r3),%r2
.L238:
	copy %r5,%r28
	ldw -20(%r3),%r2
.L239:
	ldw 12(%r3),%r8
	ldw 16(%r3),%r7
	ldw 20(%r3),%r6
	ldw 24(%r3),%r5
	ldw 28(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bsearch, .-bsearch
	.align 4
.globl bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r8,16(%r3)
	stw %r7,20(%r3)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	stw %r4,32(%r3)
	copy %r26,%r8
	copy %r23,%r7
	ldw -52(%r3),%r28
	stw %r28,8(%r3)
	ldw -56(%r3),%r28
	stw %r28,12(%r3)
	copy %r24,%r4
	b .L241
	copy %r25,%r6
.L244:
	extrs %r4,30,31,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r7,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r6,%r29,%r5
	ldw 12(%r3),%r24
	copy %r5,%r25
	copy %r8,%r26
	ldw 8(%r3),%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,= %r28,%r28,.L245
	ldw -20(%r3),%r2
	comib,>=,n 0,%r28,.L243
	addl %r5,%r7,%r6
	ldo -1(%r4),%r4
.L243:
	extrs %r4,30,31,%r4
.L241:
	comib,<> 0,%r4,.L244
	ldi 0,%r28
	b .L246
	ldw -20(%r3),%r2
.L245:
	copy %r5,%r28
.L246:
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bsearch_r, .-bsearch_r
	.align 4
.globl div
	.type	div, @function
div:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r19
	copy %r25,%r28
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	copy %r29,%r20
	copy %r19,%r26
	copy %r28,%r25
	.IMPORT $$remI,MILLICODE
	bl $$remI,%r31
	nop
	copy %r20,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	div, .-div
	.align 4
.globl imaxabs
	.type	imaxabs, @function
imaxabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extrs %r25,0,1,%r29
	copy %r29,%r28
	xor %r29,%r25,%r19
	xor %r29,%r26,%r20
	sub %r20,%r29,%r29
	subb %r19,%r28,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	imaxabs, .-imaxabs
	.align 4
.globl imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=10
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,192(%r30)
	stw %r10,8(%r3)
	stw %r9,12(%r3)
	stw %r8,16(%r3)
	stw %r7,20(%r3)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	stw %r4,32(%r3)
	copy %r25,%r7
	copy %r26,%r8
	copy %r23,%r9
	copy %r24,%r10
	bl __divdi3,%r2
	copy %r28,%r4
	copy %r28,%r5
	copy %r29,%r6
	copy %r9,%r23
	copy %r10,%r24
	copy %r7,%r25
	copy %r8,%r26
	bl __moddi3,%r2
	nop
	stw %r5,0(%r4)
	stw %r6,4(%r4)
	stw %r28,8(%r4)
	stw %r29,12(%r4)
	copy %r4,%r28
	ldw -20(%r3),%r2
	ldw 8(%r3),%r10
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	imaxdiv, .-imaxdiv
	.align 4
.globl labs
	.type	labs, @function
labs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	or,>= %r0,%r26,%r28
	subi 0,%r28,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	labs, .-labs
	.align 4
.globl ldiv
	.type	ldiv, @function
ldiv:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r19
	copy %r25,%r28
	bl $$divI,%r31
	nop
	copy %r29,%r20
	copy %r19,%r26
	copy %r28,%r25
	bl $$remI,%r31
	nop
	copy %r20,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldiv, .-ldiv
	.align 4
.globl llabs
	.type	llabs, @function
llabs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extrs %r25,0,1,%r29
	copy %r29,%r28
	xor %r29,%r25,%r19
	xor %r29,%r26,%r20
	sub %r20,%r29,%r29
	subb %r19,%r28,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	llabs, .-llabs
	.align 4
.globl lldiv
	.type	lldiv, @function
lldiv:
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=10
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,192(%r30)
	stw %r10,8(%r3)
	stw %r9,12(%r3)
	stw %r8,16(%r3)
	stw %r7,20(%r3)
	stw %r6,24(%r3)
	stw %r5,28(%r3)
	stw %r4,32(%r3)
	copy %r25,%r7
	copy %r26,%r8
	copy %r23,%r9
	copy %r24,%r10
	bl __divdi3,%r2
	copy %r28,%r4
	copy %r28,%r5
	copy %r29,%r6
	copy %r9,%r23
	copy %r10,%r24
	copy %r7,%r25
	copy %r8,%r26
	bl __moddi3,%r2
	nop
	stw %r5,0(%r4)
	stw %r6,4(%r4)
	stw %r28,8(%r4)
	stw %r29,12(%r4)
	copy %r4,%r28
	ldw -20(%r3),%r2
	ldw 8(%r3),%r10
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	lldiv, .-lldiv
	.align 4
.globl wcschr
	.type	wcschr, @function
wcschr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L260
	ldw 0(%r26),%r28
.L257:
	ldw 0(%r26),%r28
.L260:
	comiclr,<> 0,%r28,%r0
	b,n .L256
	comb,<>,n %r28,%r25,.L257
	ldo 4(%r26),%r26
.L256:
	ldw 0(%r26),%r28
	comib,<> 0,%r28,.L258
	copy %r26,%r28
	ldi 0,%r28
.L258:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcschr, .-wcschr
	.align 4
.globl wcscmp
	.type	wcscmp, @function
wcscmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L267
	ldw 0(%r26),%r19
.L264:
	ldo 4(%r25),%r25
	ldw 0(%r26),%r19
.L267:
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L263
	comiclr,<> 0,%r19,%r0
	b,n .L263
	comib,<>,n 0,%r28,.L264
	ldo 4(%r26),%r26
.L263:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,> %r28,%r19,.L266
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L265
.L266:
	ldi -1,%r28
.L265:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcscmp, .-wcscmp
	.align 4
.globl wcscpy
	.type	wcscpy, @function
wcscpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	ldi 0,%r19
	ldwx %r25(%r19),%r21
.L270:
	addl %r28,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
	ldo -4(%r28),%r20
	ldwx %r20(%r19),%r20
	comib,<>,n 0,%r20,.L270
	ldwx %r25(%r19),%r21
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcscpy, .-wcscpy
	.align 4
.globl wcslen
	.type	wcslen, @function
wcslen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
.L273:
	ldw 0(%r28),%r19
	comib,<>,n 0,%r19,.L273
	ldo 4(%r28),%r28
	sub %r28,%r26,%r28
	extrs %r28,29,30,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcslen, .-wcslen
	.align 4
.globl wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b,n .L275
.L277:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L275:
	comib,=,n 0,%r24,.L276
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L276
	comiclr,<> 0,%r19,%r0
	b,n .L276
	comib,<>,n 0,%r28,.L277
	ldo -1(%r24),%r24
.L276:
	comib,=,n 0,%r24,.L279
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,> %r28,%r19,.L280
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L278
.L279:
	b .L278
	ldi 0,%r28
.L280:
	ldi -1,%r28
.L278:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wcsncmp, .-wcsncmp
	.align 4
.globl wmemchr
	.type	wmemchr, @function
wmemchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b,n .L282
.L284:
	ldo 4(%r26),%r26
.L282:
	comib,=,n 0,%r24,.L283
	ldw 0(%r26),%r28
	comb,<>,n %r28,%r25,.L284
	ldo -1(%r24),%r24
.L283:
	comib,<> 0,%r24,.L285
	copy %r26,%r28
	ldi 0,%r28
.L285:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemchr, .-wmemchr
	.align 4
.globl wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b,n .L288
.L290:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L288:
	comib,=,n 0,%r24,.L289
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,=,n %r28,%r19,.L290
	ldo -1(%r24),%r24
.L289:
	comib,=,n 0,%r24,.L292
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,> %r28,%r19,.L293
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L291
.L292:
	b .L291
	ldi 0,%r28
.L293:
	ldi -1,%r28
.L291:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemcmp, .-wmemcmp
	.align 4
.globl wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	b .L295
	ldi 0,%r19
.L296:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L295:
	comb,<>,n %r24,%r19,.L296
	ldwx,s %r19(%r25),%r21
	ldo 64(%r3),%r30
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	comb,= %r25,%r26,.L298
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L299
	ldi 0,%r19
	b,n .L300
.L301:
	sh2addl %r24,%r28,%r19 
	stw %r20,0(%r19)
.L299:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L301
	ldwx,s %r24(%r25),%r20
	b,n .L298
.L302:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L300:
	comb,<>,n %r24,%r19,.L302
	ldwx,s %r19(%r25),%r21
.L298:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemmove, .-wmemmove
	.align 4
.globl wmemset
	.type	wmemset, @function
wmemset:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	b .L304
	ldi 0,%r19
.L305:
	stw %r25,0(%r20)
	ldo 1(%r19),%r19
.L304:
	comb,<> %r24,%r19,.L305
	sh2addl %r19,%r28,%r20 
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	wmemset, .-wmemset
	.align 4
.globl bcopy
	.type	bcopy, @function
bcopy:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	comb,<<=,n %r25,%r26,.L307
	addl %r26,%r24,%r26
	addl %r25,%r24,%r25
	b .L308
	copy %r24,%r28
.L309:
	ldbx %r19(%r28),%r20
	uaddcm %r25,%r24,%r19
	addl %r19,%r28,%r19
	stb %r20,0(%r19)
	ldo -1(%r28),%r28
.L308:
	comib,<> 0,%r28,.L309
	uaddcm %r26,%r24,%r19
	b,n .L306
.L307:
	comclr,= %r25,%r26,%r0
	b,n .L313
	b,n .L306
.L312:
	addl %r25,%r28,%r19
	stb %r20,0(%r19)
	b .L311
	ldo 1(%r28),%r28
.L313:
	ldi 0,%r28
.L311:
	comb,<>,n %r24,%r28,.L312
	ldbx %r26(%r28),%r20
.L306:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bcopy, .-bcopy
	.align 4
.globl rotl64
	.type	rotl64, @function
rotl64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	bb,>= %r24,26,.L315
	subi 31,%r24,%r21
	mtsar %r21
	zvdep %r29,32,%r19
	b .L316
	ldi 0,%r20
.L315:
	extru %r29,30,31,%r21
	uaddcm %r0,%r24,%r19
	mtsar %r19
	vshd %r0,%r21,%r21
	subi 31,%r24,%r22
	mtsar %r22
	zvdep %r28,32,%r19
	or %r21,%r19,%r19
	zvdep %r29,32,%r20
.L316:
	sub %r0,%r24,%r21
	bb,>= %r21,26,.L317
	mtsar %r21
	vshd %r0,%r28,%r22
	b .L318
	ldi 0,%r21
.L317:
	zdep %r28,30,31,%r31
	sub %r0,%r24,%r24
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r21
	subi 31,%r21,%r21
	mtsar %r21
	zvdep %r31,32,%r31
	mtsar %r24
	vshd %r0,%r29,%r22
	or %r31,%r22,%r22
	vshd %r0,%r28,%r21
.L318:
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl64, .-rotl64
	.align 4
.globl rotr64
	.type	rotr64, @function
rotr64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	bb,>= %r24,26,.L320
	mtsar %r24
	vshd %r0,%r28,%r20
	b .L321
	ldi 0,%r19
.L320:
	copy %r28,%r21
	zdep %r21,30,31,%r21
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r21,32,%r21
	mtsar %r24
	vshd %r0,%r29,%r20
	or %r21,%r20,%r20
	vshd %r0,%r28,%r19
.L321:
	sub %r0,%r24,%r21
	bb,>=,n %r21,26,.L322
	extru %r21,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r29,32,%r21
	b .L323
	ldi 0,%r22
.L322:
	extru %r29,30,31,%r31
	sub %r0,%r24,%r24
	extru %r24,31,6,%r24
	uaddcm %r0,%r24,%r21
	mtsar %r21
	vshd %r0,%r31,%r31
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r28,32,%r21
	or %r31,%r21,%r21
	zvdep %r29,32,%r22
.L323:
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr64, .-rotr64
	.align 4
.globl rotl32
	.type	rotl32, @function
rotl32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	subi 32,%r25,%r25
	mtsar %r25
	vshd %r26,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl32, .-rotl32
	.align 4
.globl rotr32
	.type	rotr32, @function
rotr32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	mtsar %r25
	vshd %r26,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr32, .-rotr32
	.align 4
.globl rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	subi 32,%r25,%r25
	mtsar %r25
	vshd %r26,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl_sz, .-rotl_sz
	.align 4
.globl rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	mtsar %r25
	vshd %r26,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr_sz, .-rotr_sz
	.align 4
.globl rotl16
	.type	rotl16, @function
rotl16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r26
	subi 31,%r25,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	subi 16,%r25,%r25
	mtsar %r25
	vshd %r0,%r26,%r26
	or %r26,%r28,%r28
	extru %r28,31,16,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl16, .-rotl16
	.align 4
.globl rotr16
	.type	rotr16, @function
rotr16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r26
	mtsar %r25
	vshd %r0,%r26,%r28
	ldo 15(%r25),%r25
	mtsar %r25
	zvdep %r26,32,%r26
	or %r26,%r28,%r28
	extru %r28,31,16,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr16, .-rotr16
	.align 4
.globl rotl8
	.type	rotl8, @function
rotl8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,8,%r26
	subi 31,%r25,%r28
	mtsar %r28
	zvdep %r26,32,%r28
	subi 8,%r25,%r25
	mtsar %r25
	vshd %r0,%r26,%r26
	or %r26,%r28,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotl8, .-rotl8
	.align 4
.globl rotr8
	.type	rotr8, @function
rotr8:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,8,%r26
	mtsar %r25
	vshd %r0,%r26,%r28
	ldo 23(%r25),%r25
	mtsar %r25
	zvdep %r26,32,%r26
	or %r26,%r28,%r28
	extru %r28,31,8,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	rotr8, .-rotr8
	.align 4
.globl bswap_16
	.type	bswap_16, @function
bswap_16:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,16+8-1,8,%r28
	extru %r26,31,8,%r26
	zdep %r26,23,24,%r26
	or %r28,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bswap_16, .-bswap_16
	.align 4
.globl bswap_32
	.type	bswap_32, @function
bswap_32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,7,8,%r28
	ldil L'16711680,%r19
	and %r26,%r19,%r19
	extru %r19,23,24,%r19
	or %r19,%r28,%r19
	zdepi -1,23,8,%r28
	and %r26,%r28,%r28
	zdep %r28,23,24,%r28
	or %r19,%r28,%r28
	zdep %r26,7,8,%r26
	or %r28,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bswap_32, .-bswap_32
	.align 4
.globl bswap_64
	.type	bswap_64, @function
bswap_64:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	depi 0,31,24,%r28
	ldi 0,%r29
	extru %r28,7,8,%r20
	ldil L'16711680,%r31
	and %r25,%r31,%r23
	extru %r23,23,24,%r22
	or %r22,%r20,%r24
	zdepi -1,23,8,%r28
	and %r25,%r28,%r21
	zdep %r21,23,24,%r20
	extru %r21,7,8,%r19
	or %r29,%r19,%r21
	or %r24,%r20,%r22
	extru %r25,31,8,%r23
	zdep %r23,7,8,%r20
	extru %r23,23,24,%r19
	or %r21,%r19,%r23
	or %r22,%r20,%r24
	copy %r26,%r20
	depi 0,31,24,%r20
	shd %r29,%r20,24,%r21
	zdep %r20,23,24,%r22
	or %r23,%r21,%r1
	or %r24,%r22,%r2
	and %r26,%r31,%r20
	shd %r29,%r20,8,%r23
	zdep %r20,7,8,%r24
	or %r1,%r23,%r21
	or %r2,%r24,%r22
	and %r26,%r28,%r20
	zdep %r20,23,24,%r23
	or %r21,%r23,%r19
	copy %r22,%r20
	extru %r26,31,8,%r22
	zdep %r22,7,8,%r21
	or %r19,%r21,%r28
	copy %r20,%r29
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	bswap_64, .-bswap_64
	.align 4
.globl ffs
	.type	ffs, @function
ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L336
	ldi 0,%r28
.L339:
	mtsar %r19
	bvb,< %r26,.L338
	ldo 1(%r28),%r28
.L336:
	ldi 32,%r19
	comb,<> %r19,%r28,.L339
	subi 31,%r28,%r19
	ldi 0,%r28
.L338:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ffs, .-ffs
	.align 4
.globl libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	movb,= %r26,%r26,.L344
	ldi 1,%r28
	b .L345
	extru %r26,31,1,%r19
.L343:
	ldo 1(%r28),%r28
	extru %r26,31,1,%r19
.L345:
	comib,=,n 0,%r19,.L343
	extrs %r26,30,31,%r26
	b,n .L341
.L344:
	ldi 0,%r28
.L341:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	libiberty_ffs, .-libiberty_ffs
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldil LR'.LC0,%r28
	ldo RR'.LC0(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!< %fr4L,%fr22L
	ftest
	b,n .L349
	ldil LR'.LC1,%r28
	ldo RR'.LC1(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L351
	ldi 0,%r28
	b,n .L352
.L351:
	b .L347
	ldi 1,%r28
.L349:
	ldi 1,%r28
.L352:
.L347:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	gl_isinff, .-gl_isinff
	.section	.rodata
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldil LR'.LC4,%r28
	ldo RR'.LC4(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b,n .L356
	ldil LR'.LC5,%r28
	ldo RR'.LC5(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L358
	ldi 0,%r28
	b,n .L359
.L358:
	b .L354
	ldi 1,%r28
.L356:
	ldi 1,%r28
.L359:
.L354:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	gl_isinfd, .-gl_isinfd
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
	.align 4
.globl gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldil LR'.LC8,%r28
	ldo RR'.LC8(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b,n .L363
	ldil LR'.LC9,%r28
	ldo RR'.LC9(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L365
	ldi 0,%r28
	b,n .L366
.L365:
	b .L361
	ldi 1,%r28
.L363:
	ldi 1,%r28
.L366:
.L361:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	gl_isinfl, .-gl_isinfl
	.align 4
.globl _Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	fcnvxf,sgl,dbl %fr23L,%fr22
	fstds %fr22,0(%r26)
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	_Qp_itoq, .-_Qp_itoq
	.section	.rodata
	.align 4
.LC12:
	.word	1056964608
	.align 4
.LC13:
	.word	1073741824
	.text
	.align 4
.globl ldexpf
	.type	ldexpf, @function
ldexpf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,sgl,!? %fr4L,%fr4L
	ftest
	b,n .L369
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr4L,%fr22L
	ftest
	b,n .L369
	comib,<= 0,%r25,.L373
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L372
	fldws 0(%r28),%fr22L
.L373:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	fldws 0(%r28),%fr22L
.L372:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L374
	extru %r25,0,1,%r28
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L374:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L369
	b .L372
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L369:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldexpf, .-ldexpf
	.section	.rodata
	.align 8
.LC16:
	.word	1071644672
	.word	0
	.align 8
.LC17:
	.word	1073741824
	.word	0
	.text
	.align 4
.globl ldexp
	.type	ldexp, @function
ldexp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L376
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L376
	comib,<= 0,%r24,.L380
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L379
	fldds 0(%r28),%fr22
.L380:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	fldds 0(%r28),%fr22
.L379:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L381
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L381:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L376
	b .L379
	fmpy,dbl %fr22,%fr22,%fr22
.L376:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldexp, .-ldexp
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
	.align 4
.globl ldexpl
	.type	ldexpl, @function
ldexpl:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L383
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L383
	comib,<= 0,%r24,.L387
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L386
	fldds 0(%r28),%fr22
.L387:
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L386:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L388
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L388:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L383
	b .L386
	fmpy,dbl %fr22,%fr22,%fr22
.L383:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	ldexpl, .-ldexpl
	.align 4
.globl memxor
	.type	memxor, @function
memxor:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r28
	b .L390
	ldi 0,%r19
.L391:
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	stb %r20,0(%r21)
	ldo 1(%r19),%r19
.L390:
	comb,<>,n %r24,%r19,.L391
	ldbx %r25(%r19),%r21
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memxor, .-memxor
	.align 4
.globl strncat
	.type	strncat, @function
strncat:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=6
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r6,8(%r3)
	stw %r5,12(%r3)
	stw %r4,16(%r3)
	copy %r26,%r6
	copy %r25,%r5
	bl strlen,%r2
	copy %r24,%r4
	b .L393
	addl %r6,%r28,%r28
.L395:
	ldo 1(%r5),%r5
	ldo 1(%r28),%r28
	ldo -1(%r4),%r4
.L393:
	comib,=,n 0,%r4,.L394
	ldb 0(%r5),%r19
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L395
	stb %r19,0(%r28)
.L394:
	comiclr,<> 0,%r4,%r0
	stb %r0,0(%r28)
.L396:
	copy %r6,%r28
	ldw -20(%r3),%r2
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldw 16(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strncat, .-strncat
	.align 4
.globl strnlen
	.type	strnlen, @function
strnlen:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldi 0,%r28
.L400:
	comb,=,n %r25,%r28,.L399
	ldbx %r26(%r28),%r19
	comib,<>,n 0,%r19,.L400
	ldo 1(%r28),%r28
.L399:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strnlen, .-strnlen
	.align 4
.globl strpbrk
	.type	strpbrk, @function
strpbrk:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L408
	ldb 0(%r26),%r28
.L404:
	ldb -1(%r28),%r20
	extrs %r20,31,8,%r20
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comb,=,n %r19,%r20,.L406
	ldb 0(%r28),%r19
	b,n .L409
.L407:
	ldb 0(%r28),%r19
.L409:
	comib,<> 0,%r19,.L404
	ldo 1(%r28),%r28
	ldo 1(%r26),%r26
	ldb 0(%r26),%r28
.L408:
	comib,<>,n 0,%r28,.L407
	copy %r25,%r28
	b,n .L403
.L406:
	copy %r26,%r28
.L403:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strpbrk, .-strpbrk
	.align 4
.globl strrchr
	.type	strrchr, @function
strrchr:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldi 0,%r28
	ldb 0(%r26),%r19
.L414:
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
.L411:
	ldo 1(%r26),%r26
	ldb -1(%r26),%r19
	comib,<>,n 0,%r19,.L414
	ldb 0(%r26),%r19
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strrchr, .-strrchr
	.align 4
.globl strstr
	.type	strstr, @function
strstr:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r7,8(%r3)
	stw %r6,12(%r3)
	stw %r5,16(%r3)
	stw %r4,20(%r3)
	copy %r26,%r4
	copy %r25,%r5
	bl strlen,%r2
	copy %r25,%r26
	movb,=,n %r28,%r6,.L419
	ldb 0(%r5),%r7
	b .L417
	extrs %r7,31,8,%r7
.L418:
	copy %r6,%r24
	copy %r5,%r25
	bl strncmp,%r2
	copy %r4,%r26
	comib,=,n 0,%r28,.L420
	ldo 1(%r4),%r4
.L417:
	copy %r7,%r25
	bl strchr,%r2
	copy %r4,%r26
	movb,<> %r28,%r4,.L418
	ldw -20(%r3),%r2
	b .L422
	ldw 8(%r3),%r7
.L419:
	b .L416
	copy %r4,%r28
.L420:
	copy %r4,%r28
.L416:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r7
.L422:
	ldw 12(%r3),%r6
	ldw 16(%r3),%r5
	ldw 20(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	strstr, .-strstr
	.align 4
.globl copysign
	.type	copysign, @function
copysign:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b .L432
	fcpy,dbl %fr5,%fr4
	b .L436
	fcmp,dbl,!> %fr4,%fr0
.L432:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L426
	fcmp,dbl,!> %fr4,%fr0
.L436:
	ftest
	b,n .L433
	b,n .L427
.L433:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L426
	b,n .L427
.L426:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L427:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	copysign, .-copysign
	.align 4
.globl memmem
	.type	memmem, @function
memmem:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r7,8(%r3)
	stw %r6,12(%r3)
	stw %r5,16(%r3)
	stw %r4,20(%r3)
	copy %r26,%r4
	copy %r24,%r6
	copy %r23,%r5
	sub %r25,%r23,%r7
	comib,= 0,%r23,.L442
	addl %r26,%r7,%r7
	comb,>> %r23,%r25,.L445
	ldi 0,%r28
	b,n .L439
.L441:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldb 0(%r6),%r28
	extrs %r28,31,8,%r28
	comb,<> %r28,%r19,.L440
	ldo -1(%r5),%r24
	ldo 1(%r6),%r25
	bl memcmp,%r2
	ldo 1(%r4),%r26
	comib,= 0,%r28,.L444
	copy %r4,%r28
.L440:
	ldo 1(%r4),%r4
.L439:
	comb,>>= %r7,%r4,.L441
	ldi 0,%r28
	b .L446
	ldw -20(%r3),%r2
.L442:
	copy %r26,%r28
.L444:
.L438:
.L445:
	ldw -20(%r3),%r2
.L446:
	ldw 8(%r3),%r7
	ldw 12(%r3),%r6
	ldw 16(%r3),%r5
	ldw 20(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	memmem, .-memmem
	.align 4
.globl mempcpy
	.type	mempcpy, @function
mempcpy:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r4,8(%r3)
	bl memcpy,%r2
	copy %r24,%r4
	addl %r28,%r4,%r28
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	mempcpy, .-mempcpy
	.section	.rodata
	.align 8
.LC24:
	.word	1072693248
	.word	0
	.align 8
.LC25:
	.word	1071644672
	.word	0
	.text
	.align 4
.globl frexp
	.type	frexp, @function
frexp:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b .L463
	fcpy,dbl %fr5,%fr4
	b .L464
	ldi 0,%r20
.L463:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
	ldi 1,%r20
.L464:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L461
	ldi 1,%r28
	b .L465
	fcmp,dbl,= %fr4,%fr0
.L453:
	ldo 1(%r28),%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	b .L451
	fmpy,dbl %fr4,%fr22,%fr4
.L461:
	ldi 0,%r28
.L451:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b,n .L453
	stw %r28,0(%r24)
	b,n .L466
.L465:
	ftest
	b,n .L455
	ldi 0,%r28
.L455:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L456
	ldi 1,%r21
	ldi 0,%r21
.L456:
	and %r28,%r21,%r28
	comib,<>,n 0,%r28,.L462
	stw %r28,0(%r24)
	b,n .L466
.L458:
	ldo -1(%r28),%r28
	b .L457
	fadd,dbl %fr4,%fr4,%fr4
.L462:
	ldi 0,%r28
.L457:
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L458
	stw %r28,0(%r24)
.L466:
	comiclr,<> 0,%r20,%r0
	b,n .L459
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L459:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	frexp, .-frexp
	.align 4
.globl __muldi3
	.type	__muldi3, @function
__muldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r8,8(%r3)
	stw %r7,12(%r3)
	stw %r6,16(%r3)
	stw %r5,20(%r3)
	copy %r25,%r28
	copy %r26,%r29
	ldi 0,%r19
	ldi 0,%r20
	b .L472
	or %r28,%r29,%r21
.L471:
	ldi 0,%r5
	extru %r29,31,1,%r6
	or %r5,%r6,%r21
	comb,= %r5,%r21,.L473
	shd %r23,%r24,31,%r7
	add %r24,%r20,%r20
	addc %r23,%r19,%r19
.L473:
	zdep %r24,30,31,%r8
	copy %r7,%r23
	copy %r8,%r24
	zdep %r28,0,1,%r21
	extru %r29,30,31,%r2
	or %r21,%r2,%r2
	extru %r28,30,31,%r1
	copy %r1,%r28
	copy %r2,%r29
	or %r28,%r29,%r21
.L472:
	comib,<> 0,%r21,.L471
	ldw -20(%r3),%r2
	copy %r19,%r28
	copy %r20,%r29
	ldw 8(%r3),%r8
	ldw 12(%r3),%r7
	ldw 16(%r3),%r6
	ldw 20(%r3),%r5
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__muldi3, .-__muldi3
	.align 4
.globl udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L475
	ldi 1,%r28
.L477:
	zdep %r25,30,31,%r25
	zdep %r28,30,31,%r28
.L475:
	comclr,<<= %r26,%r25,%r19
	ldi 1,%r19
	comiclr,= 0,%r28,%r20
	ldi 1,%r20
	and %r19,%r20,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L482
	comib,<= 0,%r25,.L477
	ldi 0,%r19
	b,n .L479
.L480:
	comb,>>,n %r25,%r26,.L478
	sub %r26,%r25,%r26
	or %r19,%r28,%r19
.L478:
	extru %r28,30,31,%r28
	b .L479
	extru %r25,30,31,%r25
.L482:
	ldi 0,%r19
.L479:
	comib,<> 0,%r28,.L480
	nop
	comib,= 0,%r24,.L481
	copy %r19,%r28
	copy %r26,%r28
.L481:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	udivmodsi4, .-udivmodsi4
	.align 4
.globl __clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	extrs %r26,31,8,%r26
	comiclr,<= 0,%r26,%r0
	uaddcm %r0,%r26,%r26
.L485:
	comiclr,<> 0,%r26,%r0
	b,n .L487
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	b .L486
	ldo -1(%r28),%r28
.L487:
	ldi 7,%r28
.L486:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clrsbqi2, .-__clrsbqi2
	.align 4
.globl __clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	copy %r25,%r28
	copy %r26,%r29
	comib,<= 0,%r28,.L494
	or %r28,%r29,%r19
	uaddcm %r0,%r25,%r28
	uaddcm %r0,%r26,%r29
	or %r28,%r29,%r19
.L494:
	comiclr,<> 0,%r19,%r0
	b,n .L493
	copy %r28,%r25
	copy %r29,%r26
	bl __clzdi2,%r2
	nop
	b .L491
	ldo -1(%r28),%r28
.L493:
	ldi 63,%r28
.L491:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clrsbdi2, .-__clrsbdi2
	.align 4
.globl __mulsi3
	.type	__mulsi3, @function
__mulsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L496
	ldi 0,%r28
.L498:
	comiclr,= 0,%r19,%r0
	addl %r28,%r25,%r28
.L497:
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L496:
	comib,<> 0,%r26,.L498
	extru %r26,31,1,%r19
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulsi3, .-__mulsi3
	.align 4
.globl __cmovd
	.type	__cmovd, @function
__cmovd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=5
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r6,8(%r3)
	stw %r5,12(%r3)
	extru %r24,28,29,%r20
	copy %r24,%r28
	comb,>> %r25,%r26,.L500
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L501
.L500:
	copy %r25,%r19
	copy %r26,%r21
	b .L502
	sh3addl %r20,%r25,%r20 
.L503:
	ldw 0(%r19),%r5
	ldw 4(%r19),%r6
	stw %r5,0(%r21)
	stw %r6,4(%r21)
	ldo 8(%r19),%r19
	ldo 8(%r21),%r21
.L502:
	comb,<> %r20,%r19,.L503
	nop
	b,n .L504
.L505:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L504:
	comb,<< %r28,%r24,.L505
	ldw 8(%r3),%r6
	b .L509
	ldw 12(%r3),%r5
.L507:
	ldbx %r25(%r24),%r19
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L501:
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L507
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
.L509:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmovd, .-__cmovd
	.align 4
.globl __cmovh
	.type	__cmovh, @function
__cmovh:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	comb,>> %r25,%r26,.L511
	extru %r24,30,31,%r19
	addl %r25,%r24,%r28
	comclr,>> %r26,%r28,%r0
	b,n .L512
.L511:
	zdep %r19,30,31,%r19
	b .L513
	ldi 0,%r28
.L514:
	addl %r26,%r28,%r20
	sth %r21,0(%r20)
	ldo 2(%r28),%r28
.L513:
	comb,<>,n %r19,%r28,.L514
	ldhx %r25(%r28),%r21
	extru %r24,31,1,%r28
	comib,=,n 0,%r28,.L510
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	b .L510
	stb %r28,0(%r26)
.L516:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L512:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L516
	ldbx %r25(%r24),%r19
.L510:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmovh, .-__cmovh
	.align 4
.globl __cmovw
	.type	__cmovw, @function
__cmovw:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r24,29,30,%r20
	copy %r24,%r28
	comb,>> %r25,%r26,.L518
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L519
.L518:
	zdep %r20,29,30,%r20
	b .L520
	ldi 0,%r19
.L521:
	addl %r26,%r19,%r21
	stw %r22,0(%r21)
	ldo 4(%r19),%r19
.L520:
	comb,<>,n %r20,%r19,.L521
	ldwx %r25(%r19),%r22
	b,n .L522
.L523:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L522:
	comb,<<,n %r28,%r24,.L523
	ldbx %r25(%r28),%r20
	b,n .L517
.L525:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L519:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L525
	ldbx %r25(%r24),%r19
.L517:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmovw, .-__cmovw
	.align 4
.globl __modi
	.type	__modi, @function
__modi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	bl $$remI,%r31
	nop
	copy %r29,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__modi, .-__modi
	.align 4
.globl __uitod
	.type	__uitod, @function
__uitod:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__uitod, .-__uitod
	.align 4
.globl __uitof
	.type	__uitof, @function
__uitof:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r29
	ldi 0,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__uitof, .-__uitof
	.align 4
.globl __ulltod
	.type	__ulltod, @function
__ulltod:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r6,8(%r3)
	stw %r5,12(%r3)
	copy %r25,%r5
	copy %r26,%r6
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	nop
	comib,>= 0,%r28,.L531
	copy %r5,%r28
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	b .L530
	fcnvxf,dbl,dbl %fr22,%fr4
.L531:
	ldi 0,%r21
	ldi 0,%r22
	extru %r6,31,1,%r22
	zdep %r28,0,1,%r28
	extru %r6,30,31,%r20
	or %r28,%r20,%r20
	extru %r5,30,31,%r19
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	fadd,dbl %fr4,%fr4,%fr4
.L530:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ulltod, .-__ulltod
	.align 4
.globl __ulltof
	.type	__ulltof, @function
__ulltof:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r6,8(%r3)
	stw %r5,12(%r3)
	copy %r25,%r5
	copy %r26,%r6
	ldi 0,%r23
	ldi 0,%r24
	bl __cmpdi2,%r2
	nop
	comib,>= 0,%r28,.L534
	copy %r5,%r28
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	b .L533
	fcnvxf,dbl,sgl %fr22,%fr4L
.L534:
	ldi 0,%r21
	ldi 0,%r22
	extru %r6,31,1,%r22
	zdep %r28,0,1,%r28
	extru %r6,30,31,%r20
	or %r28,%r20,%r20
	extru %r5,30,31,%r19
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	fadd,sgl %fr4L,%fr4L,%fr4L
.L533:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ulltof, .-__ulltof
	.align 4
.globl __umodi
	.type	__umodi, @function
__umodi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	.IMPORT $$remU,MILLICODE
	bl $$remU,%r31
	nop
	copy %r29,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__umodi, .-__umodi
	.align 4
.globl __clzhi2
	.type	__clzhi2, @function
__clzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r26
	b .L537
	ldi 0,%r28
.L539:
	mtsar %r19
	bvb,<,n %r26,.L538
	ldo 1(%r28),%r28
.L537:
	ldi 16,%r19
	comb,<> %r19,%r28,.L539
	ldo 16(%r28),%r19
.L538:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clzhi2, .-__clzhi2
	.align 4
.globl __ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r26
	b .L541
	ldi 0,%r28
.L543:
	mtsar %r19
	bvb,<,n %r26,.L542
	ldo 1(%r28),%r28
.L541:
	ldi 16,%r19
	comb,<> %r19,%r28,.L543
	subi 31,%r28,%r19
.L542:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ctzhi2, .-__ctzhi2
	.section	.rodata
	.align 4
.LC28:
	.word	1191182336
	.text
	.align 4
.globl __fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	ldil LR'.LC28,%r28
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!>= %fr4L,%fr22L
	ftest
	b .L548
	ldil LR'.LC28,%r28
	b .L549
	fcnvfxt,sgl,sgl %fr4L,%fr4L
.L548:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L547
	addl %r28,%r19,%r28
.L549:
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L547:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__fixunssfsi, .-__fixunssfsi
	.align 4
.globl __parityhi2
	.type	__parityhi2, @function
__parityhi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r26
	ldi 0,%r28
	b .L551
	copy %r28,%r19
.L553:
	mtsar %r20
	vextrs,>= %r26,1,%r0
	ldo 1(%r28),%r28
.L552:
	ldo 1(%r19),%r19
.L551:
	ldi 16,%r20
	comb,<>,n %r20,%r19,.L553
	subi 31,%r19,%r20
	extru %r28,31,1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__parityhi2, .-__parityhi2
	.align 4
.globl __popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r26
	ldi 0,%r28
	b .L555
	copy %r28,%r19
.L557:
	mtsar %r20
	vextrs,>= %r26,1,%r0
	ldo 1(%r28),%r28
.L556:
	ldo 1(%r19),%r19
.L555:
	ldi 16,%r20
	comb,<>,n %r20,%r19,.L557
	subi 31,%r19,%r20
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__popcounthi2, .-__popcounthi2
	.align 4
.globl __mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L559
	ldi 0,%r28
.L561:
	comiclr,= 0,%r19,%r0
	addl %r28,%r25,%r28
.L560:
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L559:
	comib,<> 0,%r26,.L561
	extru %r26,31,1,%r19
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align 4
.globl __mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	movb,= %r26,%r26,.L567
	ldi 0,%r28
	b,n .L564
.L566:
	comiclr,= 0,%r19,%r0
	addl %r28,%r26,%r28
.L565:
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L564:
	comib,<> 0,%r25,.L566
	extru %r25,31,1,%r19
.L567:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align 4
.globl __udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L569
	ldi 1,%r28
.L571:
	zdep %r25,30,31,%r25
	zdep %r28,30,31,%r28
.L569:
	comclr,<<= %r26,%r25,%r19
	ldi 1,%r19
	comiclr,= 0,%r28,%r20
	ldi 1,%r20
	and %r19,%r20,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L576
	comib,<= 0,%r25,.L571
	ldi 0,%r19
	b,n .L573
.L574:
	comb,>>,n %r25,%r26,.L572
	sub %r26,%r25,%r26
	or %r19,%r28,%r19
.L572:
	extru %r28,30,31,%r28
	b .L573
	extru %r25,30,31,%r25
.L576:
	ldi 0,%r19
.L573:
	comib,<> 0,%r28,.L574
	nop
	comib,= 0,%r24,.L575
	copy %r19,%r28
	copy %r26,%r28
.L575:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__udivmodsi4, .-__udivmodsi4
	.align 4
.globl __mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b .L582
	ldi -1,%r28
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L581
	ldi 0,%r28
	b,n .L579
.L581:
	ldi 1,%r28
.L579:
.L582:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align 4
.globl __mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L587
	ldi -1,%r28
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L586
	ldi 0,%r28
	b,n .L584
.L586:
	ldi 1,%r28
.L584:
.L587:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align 4
.globl __mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r26,%r29
	extrs %r26,0,1,%r26
	extrs %r25,0,1,%r28
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr23L
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22L
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr24R
	xmpyu %fr22L,%fr24R,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24R
	xmpyu %fr24R,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	xmpyu %fr22L,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r20,%r29,%r19
	copy %r22,%r29
	addl %r21,%r19,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align 4
.globl __mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	copy %r20,%r29
	copy %r19,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align 4
.globl __mulhi3
	.type	__mulhi3, @function
__mulhi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	movb,>=,n %r25,%r25,.L596
	sub %r0,%r25,%r25
	b .L591
	ldi 1,%r22
.L596:
	ldi 0,%r22
.L591:
	ldi 0,%r28
	b .L592
	copy %r28,%r19
.L594:
	comiclr,= 0,%r20,%r0
	addl %r28,%r26,%r28
.L593:
	zdep %r26,30,31,%r26
	extrs %r25,30,31,%r25
	ldo 1(%r19),%r19
	extrs %r19,31,8,%r19
.L592:
	comiclr,= 0,%r25,%r21
	ldi 1,%r21
	extru %r19,31,8,%r20
	comiclr,<< 31,%r20,%r20
	ldi 1,%r20
	and %r20,%r21,%r20
	comib,<>,n 0,%r20,.L594
	extru %r25,31,1,%r20
	comiclr,= 0,%r22,%r0
	sub %r0,%r28,%r28
.L595:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__mulhi3, .-__mulhi3
	.align 4
.globl __divsi3
	.type	__divsi3, @function
__divsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r4,8(%r3)
	movb,>=,n %r26,%r26,.L602
	sub %r0,%r26,%r26
	b .L599
	ldi 1,%r4
.L602:
	ldi 0,%r4
.L599:
	comib,<=,n 0,%r25,.L600
	sub %r0,%r25,%r25
	comiclr,<> 0,%r4,%r4
	ldi 1,%r4
.L600:
	bl __udivmodsi4,%r2
	ldi 0,%r24
	comiclr,= 0,%r4,%r0
	sub %r0,%r28,%r28
.L601:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__divsi3, .-__divsi3
	.align 4
.globl __modsi3
	.type	__modsi3, @function
__modsi3:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	stw %r4,8(%r3)
	movb,>=,n %r26,%r26,.L607
	sub %r0,%r26,%r26
	b .L604
	ldi 1,%r4
.L607:
	ldi 0,%r4
.L604:
	comiclr,<= 0,%r25,%r0
	sub %r0,%r25,%r25
.L605:
	bl __udivmodsi4,%r2
	ldi 1,%r24
	comiclr,= 0,%r4,%r0
	sub %r0,%r28,%r28
.L606:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__modsi3, .-__modsi3
	.align 4
.globl __udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r28
	extru %r25,31,16,%r25
	b .L609
	ldi 1,%r19
.L611:
	zdep %r25,30,31,%r25
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
.L609:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,= 0,%r20,.L616
	extrs %r25,31,16,%r20
	comib,<= 0,%r20,.L611
	ldi 0,%r20
	b,n .L613
.L614:
	comb,>>,n %r25,%r28,.L612
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r20,%r19,%r20
.L612:
	extru %r19,30,31,%r19
	b .L613
	extru %r25,30,31,%r25
.L616:
	ldi 0,%r20
.L613:
	comib,<> 0,%r19,.L614
	nop
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
.L615:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__udivmodhi4, .-__udivmodhi4
	.align 4
.globl __udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	b .L619
	ldi 1,%r28
.L621:
	zdep %r25,30,31,%r25
	zdep %r28,30,31,%r28
.L619:
	comclr,<<= %r26,%r25,%r19
	ldi 1,%r19
	comiclr,= 0,%r28,%r20
	ldi 1,%r20
	and %r19,%r20,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L626
	comib,<= 0,%r25,.L621
	ldi 0,%r19
	b,n .L623
.L624:
	comb,>>,n %r25,%r26,.L622
	sub %r26,%r25,%r26
	or %r19,%r28,%r19
.L622:
	extru %r28,30,31,%r28
	b .L623
	extru %r25,30,31,%r25
.L626:
	ldi 0,%r19
.L623:
	comib,<> 0,%r28,.L624
	nop
	comib,= 0,%r24,.L625
	copy %r19,%r28
	copy %r26,%r28
.L625:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align 4
.globl __ashldi3
	.type	__ashldi3, @function
__ashldi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	copy %r25,%r19
	copy %r26,%r20
	bb,>=,n %r24,26,.L629
	subi 63,%r24,%r24
	ldi 0,%r28
	ldi 0,%r29
	mtsar %r24
	b .L631
	zvdep %r20,32,%r28
.L629:
	comib,=,n 0,%r24,.L631
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r20,32,%r29
	zvdep %r19,32,%r19
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r20,%r20
	or %r20,%r19,%r28
.L631:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ashldi3, .-__ashldi3
	.align 4
.globl __ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	copy %r25,%r19
	copy %r26,%r20
	bb,>=,n %r24,26,.L634
	extrs %r19,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	b .L636
	vextrs %r19,32,%r29
.L634:
	comib,= 0,%r24,.L636
	subi 31,%r24,%r21
	mtsar %r21
	vextrs %r19,32,%r28
	ldo -1(%r24),%r21
	mtsar %r21
	zvdep %r19,32,%r19
	mtsar %r24
	vshd %r0,%r20,%r20
	or %r19,%r20,%r29
.L636:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ashrdi3, .-__ashrdi3
	.align 4
.globl __bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	.PROC
	.CALLINFO FRAME=128,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=11
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r11,8(%r3)
	stw %r10,12(%r3)
	stw %r9,16(%r3)
	stw %r8,20(%r3)
	stw %r7,24(%r3)
	stw %r6,28(%r3)
	stw %r5,32(%r3)
	stw %r4,36(%r3)
	copy %r25,%r28
	copy %r26,%r29
	extru %r28,7,8,%r20
	ldi 0,%r19
	extru %r28,23,24,%r22
	copy %r19,%r1
	zdepi -1,23,8,%r11
	and %r22,%r11,%r2
	copy %r28,%r31
	zdep %r31,23,24,%r23
	extru %r29,7,8,%r22
	or %r23,%r22,%r22
	ldil L'16711680,%r4
	and %r22,%r4,%r26
	zdep %r31,7,8,%r31
	extru %r29,23,24,%r22
	or %r31,%r22,%r22
	copy %r22,%r24
	depi 0,31,24,%r24
	shd %r28,%r29,24,%r21
	zdep %r29,23,24,%r22
	extru %r21,31,8,%r5
	shd %r28,%r29,8,%r9
	zdep %r29,7,8,%r10
	and %r9,%r11,%r7
	and %r22,%r4,%r21
	or %r10,%r19,%r28
	or %r20,%r2,%r29
	or %r28,%r19,%r19
	or %r29,%r26,%r20
	or %r19,%r1,%r28
	or %r20,%r24,%r29
	or %r28,%r5,%r19
	copy %r29,%r20
	or %r19,%r7,%r28
	or %r28,%r21,%r19
	copy %r19,%r28
	copy %r20,%r29
	ldw -20(%r3),%r2
	ldw 8(%r3),%r11
	ldw 12(%r3),%r10
	ldw 16(%r3),%r9
	ldw 20(%r3),%r8
	ldw 24(%r3),%r7
	ldw 28(%r3),%r6
	ldw 32(%r3),%r5
	ldw 36(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__bswapdi2, .-__bswapdi2
	.align 4
.globl __bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,7,8,%r20
	extru %r26,23,24,%r19
	zdepi -1,23,8,%r28
	and %r19,%r28,%r19
	zdep %r26,23,24,%r28
	ldil L'16711680,%r21
	and %r28,%r21,%r28
	zdep %r26,7,8,%r26
	or %r26,%r20,%r26
	or %r26,%r19,%r26
	or %r26,%r28,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__bswapsi2, .-__bswapsi2
	.align 4
.globl __clzsi2
	.type	__clzsi2, @function
__clzsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	zdepi -1,31,16,%r28
	comb,>>= %r28,%r26,.L641
	ldi 16,%r28
	ldi 0,%r28
.L641:
	subi 16,%r28,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	zdepi -1,23,8,%r19
	and %r26,%r19,%r19
	comib,= 0,%r19,.L642
	ldi 8,%r19
	ldi 0,%r19
.L642:
	subi 8,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 240,%r19
	and %r26,%r19,%r19
	comib,= 0,%r19,.L643
	ldi 4,%r19
	ldi 0,%r19
.L643:
	subi 4,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 12,%r19
	and %r26,%r19,%r19
	comib,= 0,%r19,.L644
	ldi 2,%r19
	ldi 0,%r19
.L644:
	subi 2,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 2,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	subi 2,%r26,%r26
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r28,%r20,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__clzsi2, .-__clzsi2
	.align 4
.globl __cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	comclr,>= %r28,%r23,%r0
	b,n .L651
	comclr,<= %r28,%r23,%r0
	b,n .L652
	comclr,>>= %r29,%r24,%r0
	b,n .L653
	comb,>> %r29,%r24,.L654
	ldi 1,%r28
	b,n .L650
.L651:
	b .L650
	ldi 0,%r28
.L652:
	b .L650
	ldi 2,%r28
.L653:
	b .L650
	ldi 0,%r28
.L654:
	ldi 2,%r28
.L650:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__cmpdi2, .-__cmpdi2
	.align 4
.globl __aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	bl __cmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align 4
.globl __ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r28
	comib,= 0,%r28,.L657
	ldi 16,%r28
	ldi 0,%r28
.L657:
	mtsar %r28
	vshd %r0,%r26,%r26
	extru %r26,31,8,%r19
	comib,= 0,%r19,.L658
	ldi 8,%r19
	ldi 0,%r19
.L658:
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,4,%r19
	comib,= 0,%r19,.L659
	ldi 4,%r19
	ldi 0,%r19
.L659:
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,2,%r19
	comib,= 0,%r19,.L660
	ldi 2,%r19
	ldi 0,%r19
.L660:
	mtsar %r19
	vshd %r0,%r26,%r26
	extru %r26,31,2,%r26
	addl %r28,%r19,%r28
	uaddcm %r0,%r26,%r19
	extru %r26,30,31,%r26
	subi 2,%r26,%r26
	extrs %r19,31+1-1,1,%r19
	and %r26,%r19,%r26
	addl %r28,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ctzsi2, .-__ctzsi2
	.align 4
.globl __lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	copy %r25,%r19
	copy %r26,%r20
	bb,>= %r24,26,.L666
	mtsar %r24
	ldi 0,%r28
	ldi 0,%r29
	b .L668
	vshd %r0,%r19,%r29
.L666:
	comib,=,n 0,%r24,.L668
	vshd %r0,%r19,%r28
	ldo -1(%r24),%r21
	mtsar %r21
	zvdep %r19,32,%r19
	mtsar %r24
	vshd %r0,%r20,%r20
	or %r19,%r20,%r29
.L668:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__lshrdi3, .-__lshrdi3
	.align 4
.globl __muldsi3
	.type	__muldsi3, @function
__muldsi3:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,31,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr24L
	extru %r25,31,16,%r28
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	extru %r22,15,16,%r19
	extru %r22,31,16,%r20
	extru %r26,15,16,%r26
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r19,%r22,%r19
	zdep %r19,15,16,%r21
	addl %r21,%r20,%r29
	extru %r19,15,16,%r28
	extru %r29,15,16,%r19
	extru %r29,31,16,%r20
	extru %r25,15,16,%r25
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr23L
	xmpyu %fr24L,%fr23L,%fr25
	fstds %fr25,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	addl %r19,%r22,%r19
	zdep %r19,15,16,%r21
	addl %r21,%r20,%r29
	extru %r19,15,16,%r19
	addl %r19,%r28,%r19
	xmpyu %fr22L,%fr23L,%fr24
	fstds %fr24,-16(%sp)
	ldws -16(%sp),%r25
	ldws -12(%sp),%r26
	addl %r19,%r26,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__muldsi3, .-__muldsi3
	.align 4
.globl __muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	.PROC
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=9
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r9,8(%r3)
	stw %r8,12(%r3)
	stw %r7,16(%r3)
	stw %r6,20(%r3)
	stw %r5,24(%r3)
	stw %r4,28(%r3)
	copy %r25,%r5
	copy %r26,%r6
	copy %r23,%r7
	copy %r24,%r8
	copy %r6,%r4
	copy %r8,%r25
	bl __muldsi3,%r2
	copy %r6,%r26
	copy %r28,%r19
	copy %r29,%r20
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r8,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r5
	ldws -12(%sp),%r6
	stws %r7,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r7
	ldws -12(%sp),%r8
	addl %r8,%r6,%r21
	addl %r21,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	ldw -20(%r3),%r2
	ldw 8(%r3),%r9
	ldw 12(%r3),%r8
	ldw 16(%r3),%r7
	ldw 20(%r3),%r6
	ldw 24(%r3),%r5
	ldw 28(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align 4
.globl __negdi2
	.type	__negdi2, @function
__negdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	sub %r0,%r26,%r29
	subb %r0,%r25,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__negdi2, .-__negdi2
	.align 4
.globl __paritydi2
	.type	__paritydi2, @function
__paritydi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	xor %r26,%r25,%r25
	extru %r25,15,16,%r28
	xor %r25,%r28,%r25
	extru %r25,23,24,%r28
	xor %r25,%r28,%r25
	extru %r25,27,28,%r28
	xor %r25,%r28,%r25
	extru %r25,31,4,%r25
	subi 31,%r25,%r25
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r25
	vextru %r28,1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__paritydi2, .-__paritydi2
	.align 4
.globl __paritysi2
	.type	__paritysi2, @function
__paritysi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,15,16,%r28
	xor %r28,%r26,%r26
	extru %r26,23,24,%r28
	xor %r26,%r28,%r26
	extru %r26,27,28,%r28
	xor %r26,%r28,%r26
	extru %r26,31,4,%r26
	subi 31,%r26,%r26
	ldil L'32768,%r28
	ldo -5738(%r28),%r28
	mtsar %r26
	vextru %r28,1,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__paritysi2, .-__paritysi2
	.align 4
.globl __popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	copy %r28,%r21
	zdep %r21,0,1,%r21
	extru %r29,30,31,%r20
	or %r21,%r20,%r20
	extru %r28,30,31,%r19
	ldil L'1431650304,%r21
	ldo 5461(%r21),%r21
	and %r19,%r21,%r23
	and %r20,%r21,%r24
	sub %r26,%r24,%r29
	subb %r25,%r23,%r28
	copy %r28,%r19
	zdep %r19,1,2,%r19
	extru %r29,29,30,%r22
	or %r19,%r22,%r22
	extru %r28,29,30,%r21
	ldil L'858996736,%r19
	ldo -3277(%r19),%r19
	and %r21,%r19,%r23
	and %r22,%r19,%r24
	and %r28,%r19,%r21
	and %r29,%r19,%r22
	add %r22,%r24,%r29
	addc %r21,%r23,%r28
	copy %r28,%r21
	zdep %r21,3,4,%r21
	extru %r29,27,28,%r20
	or %r21,%r20,%r20
	extru %r28,27,28,%r19
	add %r29,%r20,%r20
	addc %r28,%r19,%r19
	ldil L'252641280,%r21
	ldo 3855(%r21),%r21
	and %r19,%r21,%r28
	and %r20,%r21,%r29
	addl %r28,%r29,%r19
	extru %r19,15,16,%r28
	addl %r19,%r28,%r19
	extru %r19,23,24,%r28
	addl %r28,%r19,%r28
	extru %r28,31,7,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__popcountdi2, .-__popcountdi2
	.align 4
.globl __popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r26,30,31,%r28
	ldil L'1431650304,%r19
	ldo 5461(%r19),%r19
	and %r28,%r19,%r28
	sub %r26,%r28,%r26
	extru %r26,29,30,%r19
	ldil L'858996736,%r28
	ldo -3277(%r28),%r28
	and %r19,%r28,%r19
	and %r26,%r28,%r26
	addl %r19,%r26,%r26
	extru %r26,27,28,%r28
	addl %r28,%r26,%r26
	ldil L'252641280,%r28
	ldo 3855(%r28),%r28
	and %r26,%r28,%r26
	extru %r26,15,16,%r28
	addl %r26,%r28,%r26
	extru %r26,23,24,%r28
	addl %r28,%r26,%r28
	extru %r28,31,6,%r28
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__popcountsi2, .-__popcountsi2
	.section	.rodata
	.align 8
.LC30:
	.word	1072693248
	.word	0
	.text
	.align 4
.globl __powidf2
	.type	__powidf2, @function
__powidf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r24,0,1,%r19
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr4
.L680:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L683
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr5,%fr4
.L683:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L679
	b .L680
	fmpy,dbl %fr5,%fr5,%fr5
.L679:
	comib,= 0,%r19,.L681
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr22
	fdiv,dbl %fr22,%fr4,%fr4
.L681:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__powidf2, .-__powidf2
	.section	.rodata
	.align 4
.LC32:
	.word	1065353216
	.text
	.align 4
.globl __powisf2
	.type	__powisf2, @function
__powisf2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	extru %r25,0,1,%r19
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr22L
.L687:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L690
	extru %r25,0,1,%r28
	fmpy,sgl %fr22L,%fr4L,%fr22L
.L690:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L686
	b .L687
	fmpy,sgl %fr4L,%fr4L,%fr4L
.L686:
	comib,= 0,%r19,.L689
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr4L
	b .L688
	fdiv,sgl %fr4L,%fr22L,%fr4L
.L689:
	fcpy,sgl %fr22L,%fr4L
.L688:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__powisf2, .-__powisf2
	.align 4
.globl __ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	.PROC
	.CALLINFO FRAME=64,NO_CALLS,SAVE_SP,ENTRY_GR=3
	.ENTRY
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	comclr,>>= %r28,%r23,%r0
	b,n .L693
	comclr,<<= %r28,%r23,%r0
	b,n .L694
	comclr,>>= %r29,%r24,%r0
	b,n .L695
	comb,>> %r29,%r24,.L696
	ldi 1,%r28
	b,n .L692
.L693:
	b .L692
	ldi 0,%r28
.L694:
	b .L692
	ldi 2,%r28
.L695:
	b .L692
	ldi 0,%r28
.L696:
	ldi 2,%r28
.L692:
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__ucmpdi2, .-__ucmpdi2
	.align 4
.globl __aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	.PROC
	.CALLINFO FRAME=64,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	bl __ucmpdi2,%r2
	nop
	ldo -1(%r28),%r28
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
	.EXIT
	.PROCEND
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
.globl __cmpdi2
.globl __clzdi2
.globl __clzsi2
.globl __moddi3
.globl __divdi3
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
