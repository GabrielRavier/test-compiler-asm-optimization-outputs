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
	addl %r26,%r24,%r22
	b .L3
	copy %r24,%r19
.L4:
	ldbx %r20(%r19),%r21
	uaddcm %r22,%r24,%r20
	addl %r20,%r19,%r20
	stb %r21,0(%r20)
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
	ldo -1(%r24),%r20
	b .L32
	addl %r26,%r24,%r28
.L34:
	copy %r20,%r24
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
	ldo 1(%r28),%r28
.L39:
	ldb 0(%r25),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<>,n 0,%r19,.L40
	ldo 1(%r25),%r25
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
	ldb 0(%r28),%r20
	comib,<>,n 0,%r20,.L57
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
	comib,<> 0,%r28,.L84
	ldi 1,%r28
	ldo -40(%r26),%r28
	ldo -8192(%r28),%r28
	comib,>>=,n 1,%r28,.L82
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comib,<< 2,%r26,.L83
	ldi 1,%r28
	b,n .L80
.L82:
	b .L80
	ldi 1,%r28
.L83:
	ldi 0,%r28
.L80:
.L84:
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
	comb,<< %r28,%r26,.L87
	ldil L'16384,%r19
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
	b,n .L88
.L87:
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comib,<>,n 0,%r28,.L89
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comb,>>= %r19,%r28,.L90
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comb,<<,n %r28,%r19,.L91
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comb,= %r28,%r26,.L92
	ldi 1,%r28
	b,n .L88
.L89:
	b .L88
	ldi 1,%r28
.L90:
	b .L88
	ldi 1,%r28
.L91:
	b .L88
	ldi 0,%r28
.L92:
	ldi 0,%r28
.L88:
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
	comib,>>= 9,%r28,.L95
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comib,<< 5,%r26,.L96
	ldi 1,%r28
	b,n .L94
.L95:
	b .L94
	ldi 1,%r28
.L96:
	ldi 0,%r28
.L94:
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
	b .L101
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L106
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L104
	b .L105
	fcpy,dbl %fr0,%fr4
.L104:
	b .L99
	fsub,dbl %fr5,%fr7,%fr4
.L101:
	fcpy,dbl %fr5,%fr4
.L105:
.L99:
.L106:
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
	b .L108
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L111
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L113
	b .L114
	fcpy,sgl %fr0,%fr4L
.L113:
	b .L108
	fsub,sgl %fr4L,%fr5L,%fr4L
.L111:
	fcpy,sgl %fr5L,%fr4L
.L114:
.L108:
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
	b .L119
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L120
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L117
	copy %r28,%r21
	comib,<= 0,%r21,.L121
	fcpy,dbl %fr7,%fr4
	b,n .L116
.L117:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L123
	b .L124
	fcpy,dbl %fr5,%fr4
.L123:
	b .L116
	fcpy,dbl %fr7,%fr4
.L119:
	b .L116
	fcpy,dbl %fr7,%fr4
.L120:
	b .L116
	fcpy,dbl %fr5,%fr4
.L121:
	fcpy,dbl %fr5,%fr4
.L124:
.L116:
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
	b .L129
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L126
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L127
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L126
	b .L126
	fcpy,sgl %fr5L,%fr4L
.L127:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L133
	b,n .L126
.L133:
	b .L126
	fcpy,sgl %fr5L,%fr4L
.L129:
	fcpy,sgl %fr5L,%fr4L
.L126:
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
	b .L139
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L140
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L137
	copy %r28,%r21
	comib,<= 0,%r21,.L141
	fcpy,dbl %fr7,%fr4
	b,n .L136
.L137:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L143
	b .L144
	fcpy,dbl %fr5,%fr4
.L143:
	b .L136
	fcpy,dbl %fr7,%fr4
.L139:
	b .L136
	fcpy,dbl %fr7,%fr4
.L140:
	b .L136
	fcpy,dbl %fr5,%fr4
.L141:
	fcpy,dbl %fr5,%fr4
.L144:
.L136:
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
	b .L149
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L150
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L147
	copy %r19,%r21
	comib,<= 0,%r21,.L151
	fcpy,dbl %fr5,%fr4
	b,n .L146
.L147:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L153
	b .L154
	fcpy,dbl %fr7,%fr4
.L153:
	b .L146
	fcpy,dbl %fr5,%fr4
.L149:
	b .L146
	fcpy,dbl %fr7,%fr4
.L150:
	b .L146
	fcpy,dbl %fr5,%fr4
.L151:
	fcpy,dbl %fr7,%fr4
.L154:
.L146:
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
	b .L159
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L156
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L157
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L161
	b,n .L156
.L157:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L156
	b .L164
	fcpy,sgl %fr5L,%fr4L
.L159:
	b .L156
	fcpy,sgl %fr5L,%fr4L
.L161:
	fcpy,sgl %fr5L,%fr4L
.L164:
.L156:
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
	b .L169
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L170
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comb,= %r21,%r22,.L167
	copy %r19,%r21
	comib,<= 0,%r21,.L171
	fcpy,dbl %fr5,%fr4
	b,n .L166
.L167:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L173
	b .L174
	fcpy,dbl %fr7,%fr4
.L173:
	b .L166
	fcpy,dbl %fr5,%fr4
.L169:
	b .L166
	fcpy,dbl %fr7,%fr4
.L170:
	b .L166
	fcpy,dbl %fr5,%fr4
.L171:
	fcpy,dbl %fr7,%fr4
.L174:
.L166:
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
	b .L176
	ldo RR's.0-$global$(%r1),%r1
.L177:
	ldil LR'digits,%r28
	ldo RR'digits(%r28),%r28
	ldbx %r28(%r19),%r28
	stb %r28,0(%r1)
	ldo 1(%r1),%r1
	extru %r26,25,26,%r26
.L176:
	comib,<> 0,%r26,.L177
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
	ldw 0(%r1),%r19
	ldw 4(%r1),%r20
	ldil L'1284865837,%r29
	ldil L'1481765933,%r28
	ldo R'1481765933(%r28),%r28
	ldo R'1284865837(%r29),%r29
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r19,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r23
	ldws -12(%sp),%r24
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r29,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r20,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	addl %r24,%r22,%r21
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
	movb,<>,n %r25,%r25,.L181
	stw %r0,4(%r26)
	b .L180
	stw %r0,0(%r26)
.L181:
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L180:
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
	comib,=,n 0,%r28,.L184
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L184:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L183
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L183:
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=11
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
	copy %r26,%r8
	copy %r25,%r10
	copy %r24,%r11
	copy %r23,%r6
	ldw -52(%r3),%r9
	ldw 0(%r24),%r7
	copy %r25,%r5
	b .L187
	ldi 0,%r4
.L190:
	copy %r8,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L188
	addl %r5,%r6,%r5
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L189
	addl %r10,%r29,%r28
.L188:
	ldo 1(%r4),%r4
.L187:
	comb,<> %r7,%r4,.L190
	copy %r5,%r25
	ldo 1(%r7),%r28
	stw %r28,0(%r11)
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r7,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	copy %r6,%r24
	copy %r8,%r25
	bl memcpy,%r2
	addl %r10,%r29,%r26
.L189:
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
	.size	lsearch, .-lsearch
	.align 4
.globl lfind
	.type	lfind, @function
lfind:
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
	copy %r26,%r7
	copy %r25,%r10
	copy %r23,%r6
	ldw -52(%r3),%r9
	ldw 0(%r24),%r8
	copy %r25,%r5
	b .L192
	ldi 0,%r4
.L195:
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L193
	addl %r5,%r6,%r5
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L194
	addl %r10,%r29,%r28
.L193:
	ldo 1(%r4),%r4
.L192:
	comb,<> %r8,%r4,.L195
	copy %r5,%r25
	ldi 0,%r28
.L194:
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
	copy %r26,%r4
.L199:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L199
	ldo 1(%r4),%r4
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L205
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L206
	ldi 1,%r20
	b .L208
	ldo 1(%r4),%r4
.L205:
	ldi 0,%r20
	b .L201
	ldo 1(%r4),%r4
.L206:
	ldi 0,%r20
.L201:
.L208:
	b .L202
	ldi 0,%r28
.L203:
	zdep %r28,30,31,%r28
	ldo 1(%r4),%r4
	ldb -1(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L202:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L203
	sh2addl %r28,%r28,%r28 
	comiclr,<> 0,%r20,%r0
	sub %r0,%r28,%r28
.L204:
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
	copy %r26,%r4
.L211:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L211
	ldo 1(%r4),%r4
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L217
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L218
	ldi 1,%r20
	b .L220
	ldo 1(%r4),%r4
.L217:
	ldi 0,%r20
	b .L213
	ldo 1(%r4),%r4
.L218:
	ldi 0,%r20
.L213:
.L220:
	b .L214
	ldi 0,%r28
.L215:
	zdep %r28,30,31,%r28
	ldo 1(%r4),%r4
	ldb -1(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L214:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L215
	sh2addl %r28,%r28,%r28 
	comiclr,<> 0,%r20,%r0
	sub %r0,%r28,%r28
.L216:
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
	copy %r26,%r4
.L223:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L223
	ldo 1(%r4),%r4
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L229
	ldi 45,%r19
	comb,<>,n %r19,%r28,.L230
	ldi 1,%r20
	b .L225
	ldo 1(%r4),%r4
.L229:
	ldi 0,%r20
	b .L225
	ldo 1(%r4),%r4
.L230:
	ldi 0,%r20
.L225:
	ldi 0,%r28
	ldi 0,%r29
	b .L232
	ldb 0(%r4),%r19
.L227:
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
.L232:
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L227
	shd %r28,%r29,30,%r7
	comib,<> 0,%r20,.L233
	ldw -20(%r3),%r2
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L233:
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=8,ENTRY_FR=12
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r8,8(%r3)
	stw %r7,12(%r3)
	stw %r6,16(%r3)
	stw %r5,20(%r3)
	stw %r4,24(%r3)
	ldo 32(%r3),%r1
	fstds,ma %fr12,8(%r1)
	copy %r26,%r7
	copy %r25,%r6
	copy %r24,%r4
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	b .L235
	ldw -52(%r3),%r8
.L239:
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r6,%r29,%r5
	copy %r5,%r25
	copy %r7,%r26
	copy %r8,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	movb,>=,n %r28,%r28,.L236
	extru %r4,30,31,%r4
	b,n .L235
.L236:
	comib,>= 0,%r28,.L240
	copy %r5,%r28
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
	extru %r4,30,31,%r28
	uaddcm %r4,%r28,%r4
.L235:
	comib,<>,n 0,%r4,.L239
	extru %r4,30,31,%r28
	ldi 0,%r28
.L240:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r8
	ldw 12(%r3),%r7
	ldw 16(%r3),%r6
	ldw 20(%r3),%r5
	ldw 24(%r3),%r4
	ldo 32(%r3),%r1
	fldds,ma 8(%r1),%fr12
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=9,ENTRY_FR=12
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
	ldo 32(%r3),%r1
	fstds,ma %fr12,8(%r1)
	copy %r26,%r7
	stws %r23,-16(%sp)
	fldws -16(%sp),%fr12L
	ldw -52(%r3),%r9
	ldw -56(%r3),%r8
	copy %r24,%r4
	b .L242
	copy %r25,%r6
.L245:
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	xmpyu %fr22R,%fr12L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r6,%r29,%r5
	copy %r8,%r24
	copy %r5,%r25
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	or,<> %r28,%r0,%r28
	b,n .L246
	comib,>=,n 0,%r28,.L244
	ldo -1(%r4),%r4
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
.L244:
	extrs %r4,30,31,%r4
.L242:
	comib,<>,n 0,%r4,.L245
	extrs %r4,30,31,%r28
	b .L243
	ldi 0,%r28
.L246:
	copy %r5,%r28
.L243:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r9
	ldw 12(%r3),%r8
	ldw 16(%r3),%r7
	ldw 20(%r3),%r6
	ldw 24(%r3),%r5
	ldw 28(%r3),%r4
	ldo 32(%r3),%r1
	fldds,ma 8(%r1),%fr12
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
	comib,= 0,%r24,.L281
	ldi 0,%r28
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,> %r28,%r19,.L280
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L278
.L280:
	ldi -1,%r28
.L278:
.L281:
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
	b,n .L283
.L285:
	ldo 4(%r26),%r26
.L283:
	comib,=,n 0,%r24,.L284
	ldw 0(%r26),%r28
	comb,<>,n %r28,%r25,.L285
	ldo -1(%r24),%r24
.L284:
	comib,<> 0,%r24,.L286
	copy %r26,%r28
	ldi 0,%r28
.L286:
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
	b,n .L289
.L291:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L289:
	comib,=,n 0,%r24,.L290
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,=,n %r28,%r19,.L291
	ldo -1(%r24),%r24
.L290:
	comib,= 0,%r24,.L295
	ldi 0,%r28
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,> %r28,%r19,.L294
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L292
.L294:
	ldi -1,%r28
.L292:
.L295:
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
	b .L297
	ldi 0,%r19
.L298:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L297:
	comb,<>,n %r24,%r19,.L298
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
	comb,= %r25,%r26,.L300
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L301
	ldi 0,%r19
	b,n .L302
.L303:
	sh2addl %r24,%r28,%r19 
	stw %r20,0(%r19)
.L301:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L303
	ldwx,s %r24(%r25),%r20
	b,n .L300
.L304:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L302:
	comb,<>,n %r24,%r19,.L304
	ldwx,s %r19(%r25),%r21
.L300:
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
	b .L306
	ldi 0,%r19
.L307:
	stw %r25,0(%r20)
	ldo 1(%r19),%r19
.L306:
	comb,<> %r24,%r19,.L307
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
	comb,<<=,n %r25,%r26,.L309
	addl %r26,%r24,%r26
	addl %r25,%r24,%r25
	b .L310
	copy %r24,%r28
.L311:
	ldbx %r19(%r28),%r20
	uaddcm %r25,%r24,%r19
	addl %r19,%r28,%r19
	stb %r20,0(%r19)
	ldo -1(%r28),%r28
.L310:
	comib,<> 0,%r28,.L311
	uaddcm %r26,%r24,%r19
	b,n .L308
.L309:
	comclr,= %r25,%r26,%r0
	b,n .L315
	b,n .L308
.L314:
	addl %r25,%r28,%r19
	stb %r20,0(%r19)
	b .L313
	ldo 1(%r28),%r28
.L315:
	ldi 0,%r28
.L313:
	comb,<>,n %r24,%r28,.L314
	ldbx %r26(%r28),%r20
.L308:
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
	bb,>= %r24,26,.L317
	extru %r29,30,31,%r21
	subi 31,%r24,%r21
	mtsar %r21
	zvdep %r29,32,%r19
	b .L318
	ldi 0,%r20
.L317:
	uaddcm %r0,%r24,%r19
	mtsar %r19
	vshd %r0,%r21,%r21
	subi 31,%r24,%r22
	mtsar %r22
	zvdep %r28,32,%r19
	or %r21,%r19,%r19
	zvdep %r29,32,%r20
.L318:
	sub %r0,%r24,%r21
	bb,>= %r21,26,.L319
	zdep %r28,30,31,%r31
	mtsar %r21
	vshd %r0,%r28,%r22
	b .L320
	ldi 0,%r21
.L319:
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
.L320:
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
	bb,>= %r24,26,.L322
	copy %r28,%r21
	mtsar %r24
	vshd %r0,%r28,%r20
	b .L323
	ldi 0,%r19
.L322:
	zdep %r21,30,31,%r21
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r21,32,%r21
	mtsar %r24
	vshd %r0,%r29,%r20
	or %r21,%r20,%r20
	vshd %r0,%r28,%r19
.L323:
	sub %r0,%r24,%r21
	bb,>= %r21,26,.L324
	extru %r29,30,31,%r31
	extru %r21,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r29,32,%r21
	b .L325
	ldi 0,%r22
.L324:
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
.L325:
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
	b .L338
	ldi 0,%r28
.L341:
	mtsar %r19
	bvb,>= %r26,.L338
	ldo 1(%r28),%r28
	ldo -1(%r28),%r28
	b .L340
	ldo 1(%r28),%r28
.L338:
	ldi 32,%r19
	comb,<> %r19,%r28,.L341
	subi 31,%r28,%r19
	ldi 0,%r28
.L340:
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
	movb,= %r26,%r26,.L346
	ldi 1,%r28
	b .L347
	extru %r26,31,1,%r19
.L345:
	ldo 1(%r28),%r28
	extru %r26,31,1,%r19
.L347:
	comib,=,n 0,%r19,.L345
	extrs %r26,30,31,%r26
	b,n .L343
.L346:
	ldi 0,%r28
.L343:
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
	b .L355
	ldi 1,%r28
	ldil LR'.LC1,%r28
	ldo RR'.LC1(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L353
	ldi 0,%r28
	b,n .L354
.L353:
	ldi 1,%r28
.L354:
.L349:
.L355:
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
	b .L363
	ldi 1,%r28
	ldil LR'.LC5,%r28
	ldo RR'.LC5(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L361
	ldi 0,%r28
	b,n .L362
.L361:
	ldi 1,%r28
.L362:
.L357:
.L363:
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
	b .L371
	ldi 1,%r28
	ldil LR'.LC9,%r28
	ldo RR'.LC9(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L369
	ldi 0,%r28
	b,n .L370
.L369:
	ldi 1,%r28
.L370:
.L365:
.L371:
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
	b,n .L374
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr4L,%fr22L
	ftest
	b,n .L374
	comib,<= 0,%r25,.L378
	ldil LR'.LC13,%r28
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L377
	fldws 0(%r28),%fr22L
.L378:
	ldo RR'.LC13(%r28),%r28
	fldws 0(%r28),%fr22L
.L377:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L379
	extru %r25,0,1,%r28
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L379:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L374
	b .L377
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L374:
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
	b .L381
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L381
	comib,<= 0,%r24,.L385
	ldil LR'.LC17,%r28
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L384
	fldds 0(%r28),%fr22
.L385:
	ldo RR'.LC17(%r28),%r28
	fldds 0(%r28),%fr22
.L384:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L386
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L386:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L381
	b .L384
	fmpy,dbl %fr22,%fr22,%fr22
.L381:
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
	b .L388
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L388
	comib,<= 0,%r24,.L392
	ldil LR'.LC21,%r28
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L391
	fldds 0(%r28),%fr22
.L392:
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L391:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L393
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L393:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L388
	b .L391
	fmpy,dbl %fr22,%fr22,%fr22
.L388:
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
	b .L395
	ldi 0,%r19
.L396:
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	stb %r20,0(%r21)
	ldo 1(%r19),%r19
.L395:
	comb,<>,n %r24,%r19,.L396
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
	b .L398
	addl %r6,%r28,%r28
.L400:
	ldo 1(%r28),%r28
	ldo -1(%r4),%r4
.L398:
	comib,=,n 0,%r4,.L399
	ldb 0(%r5),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L400
	ldo 1(%r5),%r5
.L399:
	comiclr,<> 0,%r4,%r0
	stb %r0,0(%r28)
.L401:
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
.L405:
	comb,=,n %r25,%r28,.L404
	ldbx %r26(%r28),%r19
	comib,<>,n 0,%r19,.L405
	ldo 1(%r28),%r28
.L404:
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
	b .L413
	ldb 0(%r26),%r28
.L409:
	ldb -1(%r19),%r21
	extrs %r21,31,8,%r21
	ldb 0(%r26),%r20
	extrs %r20,31,8,%r20
	comb,= %r20,%r21,.L411
	copy %r26,%r28
.L412:
	ldb 0(%r19),%r20
	comib,<>,n 0,%r20,.L409
	ldo 1(%r19),%r19
	ldo 1(%r26),%r26
	ldb 0(%r26),%r28
.L413:
	comib,<>,n 0,%r28,.L412
	copy %r25,%r19
.L411:
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
.L418:
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
.L415:
	ldo 1(%r26),%r26
	ldb -1(%r26),%r19
	comib,<>,n 0,%r19,.L418
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
	movb,=,n %r28,%r6,.L423
	ldb 0(%r5),%r7
	b .L421
	extrs %r7,31,8,%r7
.L422:
	copy %r5,%r25
	bl strncmp,%r2
	copy %r4,%r26
	comib,=,n 0,%r28,.L424
	ldo 1(%r4),%r4
.L421:
	copy %r7,%r25
	bl strchr,%r2
	copy %r4,%r26
	movb,<> %r28,%r4,.L422
	copy %r6,%r24
	b .L425
	ldw -20(%r3),%r2
.L423:
	b .L420
	copy %r4,%r28
.L424:
	copy %r4,%r28
.L420:
	ldw -20(%r3),%r2
.L425:
	ldw 8(%r3),%r7
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
	b,n .L435
	b .L439
	fcmp,dbl,!> %fr5,%fr0
.L435:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L429
	fcmp,dbl,!> %fr5,%fr0
.L439:
	ftest
	b .L436
	fcpy,dbl %fr5,%fr4
	b,n .L430
.L436:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L429
	b .L438
	fcpy,dbl %fr5,%fr4
.L429:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L438:
.L430:
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
	copy %r24,%r5
	copy %r23,%r7
	sub %r25,%r23,%r6
	comib,= 0,%r23,.L445
	addl %r26,%r6,%r6
	comb,>> %r23,%r25,.L448
	ldi 0,%r28
	b,n .L442
.L444:
	extrs %r19,31,8,%r19
	ldb 0(%r5),%r28
	extrs %r28,31,8,%r28
	comb,<> %r28,%r19,.L443
	ldo -1(%r7),%r24
	ldo 1(%r5),%r25
	bl memcmp,%r2
	ldo 1(%r4),%r26
	comib,= 0,%r28,.L447
	copy %r4,%r28
.L443:
	ldo 1(%r4),%r4
.L442:
	comb,>>=,n %r6,%r4,.L444
	ldb 0(%r4),%r19
	b .L441
	ldi 0,%r28
.L445:
	copy %r26,%r28
.L447:
.L441:
.L448:
	ldw -20(%r3),%r2
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
	b .L465
	fcpy,dbl %fr5,%fr4
	b .L466
	ldi 0,%r20
.L465:
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
.L466:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L463
	ldi 0,%r19
	b .L467
	ldi 1,%r28
.L455:
	ldo 1(%r19),%r19
	ldo RR'.LC25(%r28),%r28
	fldds 0(%r28),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
.L463:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L455
	ldil LR'.LC25,%r28
	b .L468
	stw %r19,0(%r24)
.L467:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L457
	ldi 0,%r28
.L457:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L458
	ldi 1,%r21
	ldi 0,%r21
.L458:
	and %r28,%r21,%r28
	comib,<> 0,%r28,.L464
	ldi 0,%r19
	b .L468
	stw %r19,0(%r24)
.L460:
	ldo -1(%r19),%r19
	fadd,dbl %fr4,%fr4,%fr4
.L464:
	ldil LR'.LC25,%r28
	ldo RR'.LC25(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L460
	stw %r19,0(%r24)
.L468:
	comiclr,<> 0,%r20,%r0
	b,n .L461
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L461:
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
	.CALLINFO FRAME=64,NO_CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=3
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,64(%r30)
	copy %r25,%r28
	copy %r26,%r29
	ldi 0,%r25
	ldi 0,%r26
	b .L474
	or %r28,%r29,%r31
.L473:
	extru %r29,31,1,%r22
	or %r21,%r22,%r31
	comb,= %r21,%r31,.L475
	shd %r23,%r24,31,%r1
	add %r24,%r26,%r26
	addc %r23,%r25,%r25
.L475:
	zdep %r24,30,31,%r2
	copy %r1,%r23
	copy %r2,%r24
	zdep %r28,0,1,%r31
	extru %r29,30,31,%r20
	or %r31,%r20,%r20
	extru %r28,30,31,%r19
	copy %r19,%r28
	copy %r20,%r29
	or %r28,%r29,%r31
.L474:
	comib,<> 0,%r31,.L473
	ldi 0,%r21
	copy %r25,%r28
	copy %r26,%r29
	ldw -20(%r3),%r2
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
	b .L477
	ldi 1,%r19
.L479:
	zdep %r19,30,31,%r19
.L477:
	comclr,<<= %r26,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r28
	ldi 1,%r28
	and %r20,%r28,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L484
	comib,<=,n 0,%r25,.L479
	zdep %r25,30,31,%r25
	b .L481
	ldi 0,%r28
.L482:
	comb,>>,n %r25,%r26,.L480
	sub %r26,%r25,%r26
	or %r28,%r19,%r28
.L480:
	extru %r19,30,31,%r19
	b .L481
	extru %r25,30,31,%r25
.L484:
	ldi 0,%r28
.L481:
	comib,<> 0,%r19,.L482
	nop
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
.L483:
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
.L487:
	comiclr,<> 0,%r26,%r0
	b,n .L489
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	b .L488
	ldo -1(%r28),%r28
.L489:
	ldi 7,%r28
.L488:
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
	comib,<= 0,%r28,.L496
	or %r28,%r29,%r19
	uaddcm %r0,%r25,%r28
	uaddcm %r0,%r26,%r29
	or %r28,%r29,%r19
.L496:
	comiclr,<> 0,%r19,%r0
	b,n .L495
	copy %r28,%r25
	copy %r29,%r26
	bl __clzdi2,%r2
	nop
	b .L493
	ldo -1(%r28),%r28
.L495:
	ldi 63,%r28
.L493:
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
	b .L498
	ldi 0,%r28
.L500:
	comiclr,= 0,%r19,%r0
	addl %r28,%r25,%r28
.L499:
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L498:
	comib,<> 0,%r26,.L500
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
	extru %r24,28,29,%r21
	copy %r24,%r28
	comb,>> %r25,%r26,.L502
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L503
.L502:
	copy %r25,%r19
	copy %r26,%r20
	b .L504
	sh3addl %r21,%r25,%r21 
.L505:
	ldw 0(%r19),%r5
	ldw 4(%r19),%r6
	stw %r5,0(%r20)
	stw %r6,4(%r20)
	ldo 8(%r19),%r19
	ldo 8(%r20),%r20
.L504:
	comb,<> %r21,%r19,.L505
	nop
	b,n .L506
.L507:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L506:
	comb,<<,n %r28,%r24,.L507
	ldbx %r25(%r28),%r20
	b .L510
	ldw 8(%r3),%r6
.L509:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L503:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L509
	ldbx %r25(%r24),%r19
	ldw 8(%r3),%r6
.L510:
	ldw 12(%r3),%r5
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
	comb,>> %r25,%r26,.L512
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,>> %r26,%r28,%r0
	b,n .L513
.L512:
	zdep %r21,30,31,%r21
	b .L514
	ldi 0,%r28
.L515:
	addl %r26,%r28,%r19
	sth %r20,0(%r19)
	ldo 2(%r28),%r28
.L514:
	comb,<>,n %r21,%r28,.L515
	ldhx %r25(%r28),%r20
	extru %r24,31,1,%r28
	comib,=,n 0,%r28,.L511
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	b .L511
	stb %r28,0(%r26)
.L517:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L513:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L517
	ldbx %r25(%r24),%r19
.L511:
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
	extru %r24,29,30,%r22
	copy %r24,%r28
	comb,>> %r25,%r26,.L519
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L520
.L519:
	zdep %r22,29,30,%r22
	b .L521
	ldi 0,%r19
.L522:
	addl %r26,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
.L521:
	comb,<>,n %r22,%r19,.L522
	ldwx %r25(%r19),%r21
	b,n .L523
.L524:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L523:
	comb,<<,n %r28,%r24,.L524
	ldbx %r25(%r28),%r20
	b,n .L518
.L526:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L520:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L526
	ldbx %r25(%r24),%r19
.L518:
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
	comib,>= 0,%r28,.L532
	copy %r5,%r28
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	b .L531
	fcnvxf,dbl,dbl %fr22,%fr4
.L532:
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
.L531:
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
	comib,>= 0,%r28,.L535
	copy %r5,%r28
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	b .L534
	fcnvxf,dbl,sgl %fr22,%fr4L
.L535:
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
.L534:
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
	b .L538
	ldi 0,%r28
.L540:
	mtsar %r19
	bvb,<,n %r26,.L539
	ldo 1(%r28),%r28
.L538:
	ldi 16,%r19
	comb,<> %r19,%r28,.L540
	ldo 16(%r28),%r19
.L539:
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
	b .L542
	ldi 0,%r28
.L544:
	mtsar %r19
	bvb,<,n %r26,.L543
	ldo 1(%r28),%r28
.L542:
	ldi 16,%r19
	comb,<> %r19,%r28,.L544
	subi 31,%r28,%r19
.L543:
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
	b .L549
	ldil LR'.LC28,%r28
	b .L550
	fcnvfxt,sgl,sgl %fr4L,%fr4L
.L549:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L548
	addl %r28,%r19,%r28
.L550:
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L548:
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
	b .L552
	copy %r28,%r19
.L554:
	mtsar %r20
	vextrs,>= %r26,1,%r0
	ldo 1(%r28),%r28
.L553:
	ldo 1(%r19),%r19
.L552:
	ldi 16,%r20
	comb,<>,n %r20,%r19,.L554
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
	b .L556
	copy %r28,%r19
.L558:
	mtsar %r20
	vextrs,>= %r26,1,%r0
	ldo 1(%r28),%r28
.L557:
	ldo 1(%r19),%r19
.L556:
	ldi 16,%r20
	comb,<>,n %r20,%r19,.L558
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
	b .L560
	ldi 0,%r28
.L562:
	comiclr,= 0,%r19,%r0
	addl %r28,%r25,%r28
.L561:
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L560:
	comib,<> 0,%r26,.L562
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
	movb,= %r26,%r26,.L568
	ldi 0,%r28
	b,n .L565
.L567:
	comiclr,= 0,%r19,%r0
	addl %r28,%r26,%r28
.L566:
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L565:
	comib,<> 0,%r25,.L567
	extru %r25,31,1,%r19
.L568:
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
	b .L570
	ldi 1,%r19
.L572:
	zdep %r19,30,31,%r19
.L570:
	comclr,<<= %r26,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r28
	ldi 1,%r28
	and %r20,%r28,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L577
	comib,<=,n 0,%r25,.L572
	zdep %r25,30,31,%r25
	b .L574
	ldi 0,%r28
.L575:
	comb,>>,n %r25,%r26,.L573
	sub %r26,%r25,%r26
	or %r28,%r19,%r28
.L573:
	extru %r19,30,31,%r19
	b .L574
	extru %r25,30,31,%r25
.L577:
	ldi 0,%r28
.L574:
	comib,<> 0,%r19,.L575
	nop
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
.L576:
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
	b .L583
	ldi -1,%r28
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L582
	ldi 0,%r28
	b,n .L580
.L582:
	ldi 1,%r28
.L580:
.L583:
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
	b .L588
	ldi -1,%r28
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L587
	ldi 0,%r28
	b,n .L585
.L587:
	ldi 1,%r28
.L585:
.L588:
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
	copy %r26,%r22
	extrs %r26,0,1,%r26
	extrs %r25,0,1,%r28
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r26,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	stws %r28,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r22,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	stws %r25,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r22,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
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
	movb,>=,n %r25,%r25,.L597
	sub %r0,%r25,%r25
	b .L592
	ldi 1,%r22
.L597:
	ldi 0,%r22
.L592:
	ldi 0,%r28
	b .L593
	copy %r28,%r20
.L595:
	comiclr,= 0,%r19,%r0
	addl %r28,%r26,%r28
.L594:
	zdep %r26,30,31,%r26
	extrs %r25,30,31,%r25
	ldo 1(%r20),%r20
	extrs %r20,31,8,%r20
.L593:
	comiclr,= 0,%r25,%r21
	ldi 1,%r21
	extru %r20,31,8,%r19
	comiclr,<< 31,%r19,%r19
	ldi 1,%r19
	and %r19,%r21,%r19
	comib,<>,n 0,%r19,.L595
	extru %r25,31,1,%r19
	comiclr,= 0,%r22,%r0
	sub %r0,%r28,%r28
.L596:
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
	movb,>=,n %r26,%r26,.L603
	sub %r0,%r26,%r26
	b .L600
	ldi 1,%r4
.L603:
	ldi 0,%r4
.L600:
	comib,<=,n 0,%r25,.L601
	sub %r0,%r25,%r25
	comiclr,<> 0,%r4,%r4
	ldi 1,%r4
	extru %r4,31,8,%r4
.L601:
	bl __udivmodsi4,%r2
	ldi 0,%r24
	comiclr,= 0,%r4,%r0
	sub %r0,%r28,%r28
.L602:
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
	movb,>=,n %r26,%r26,.L608
	sub %r0,%r26,%r26
	b .L605
	ldi 1,%r4
.L608:
	ldi 0,%r4
.L605:
	comiclr,<= 0,%r25,%r0
	sub %r0,%r25,%r25
.L606:
	bl __udivmodsi4,%r2
	ldi 1,%r24
	comiclr,= 0,%r4,%r0
	sub %r0,%r28,%r28
.L607:
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
	extru %r26,31,16,%r26
	extru %r25,31,16,%r25
	b .L610
	ldi 1,%r19
.L612:
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
.L610:
	comclr,<<= %r26,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r28
	ldi 1,%r28
	and %r20,%r28,%r20
	comib,= 0,%r20,.L617
	extrs %r25,31,16,%r28
	comib,<=,n 0,%r28,.L612
	zdep %r25,30,31,%r25
	b .L614
	ldi 0,%r28
.L615:
	comb,>>,n %r25,%r26,.L613
	sub %r26,%r25,%r26
	extru %r26,31,16,%r26
	or %r28,%r19,%r28
.L613:
	extru %r19,30,31,%r19
	b .L614
	extru %r25,30,31,%r25
.L617:
	ldi 0,%r28
.L614:
	comib,<> 0,%r19,.L615
	nop
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
.L616:
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
	b .L620
	ldi 1,%r19
.L622:
	zdep %r19,30,31,%r19
.L620:
	comclr,<<= %r26,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r28
	ldi 1,%r28
	and %r20,%r28,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L627
	comib,<=,n 0,%r25,.L622
	zdep %r25,30,31,%r25
	b .L624
	ldi 0,%r28
.L625:
	comb,>>,n %r25,%r26,.L623
	sub %r26,%r25,%r26
	or %r28,%r19,%r28
.L623:
	extru %r19,30,31,%r19
	b .L624
	extru %r25,30,31,%r25
.L627:
	ldi 0,%r28
.L624:
	comib,<> 0,%r19,.L625
	nop
	comiclr,= 0,%r24,%r0
	copy %r26,%r28
.L626:
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
	bb,>=,n %r24,26,.L630
	subi 63,%r24,%r24
	ldi 0,%r28
	ldi 0,%r29
	mtsar %r24
	b .L632
	zvdep %r26,32,%r28
.L630:
	comib,= 0,%r24,.L633
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	zvdep %r25,32,%r19
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r20
	b .L632
	or %r20,%r19,%r28
.L633:
	copy %r25,%r28
	copy %r26,%r29
.L632:
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
	bb,>= %r24,26,.L635
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	b .L637
	vextrs %r25,32,%r29
.L635:
	comib,= 0,%r24,.L638
	subi 31,%r24,%r19
	mtsar %r19
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r20
	mtsar %r24
	vshd %r0,%r26,%r19
	b .L637
	or %r20,%r19,%r29
.L638:
	copy %r25,%r28
	copy %r26,%r29
.L637:
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
	comb,>>= %r28,%r26,.L642
	ldi 16,%r28
	ldi 0,%r28
.L642:
	subi 16,%r28,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	zdepi -1,23,8,%r19
	and %r26,%r19,%r19
	comib,= 0,%r19,.L643
	ldi 8,%r19
	ldi 0,%r19
.L643:
	subi 8,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 240,%r19
	and %r26,%r19,%r19
	comib,= 0,%r19,.L644
	ldi 4,%r19
	ldi 0,%r19
.L644:
	subi 4,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 12,%r19
	and %r26,%r19,%r19
	comib,= 0,%r19,.L645
	ldi 2,%r19
	ldi 0,%r19
.L645:
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
	b,n .L652
	comclr,<= %r28,%r23,%r0
	b,n .L653
	comclr,>>= %r29,%r24,%r0
	b,n .L654
	comb,>> %r29,%r24,.L655
	ldi 1,%r28
	b,n .L651
.L652:
	b .L651
	ldi 0,%r28
.L653:
	b .L651
	ldi 2,%r28
.L654:
	b .L651
	ldi 0,%r28
.L655:
	ldi 2,%r28
.L651:
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
	comib,= 0,%r28,.L658
	ldi 16,%r28
	ldi 0,%r28
.L658:
	mtsar %r28
	vshd %r0,%r26,%r26
	extru %r26,31,8,%r19
	comib,= 0,%r19,.L659
	ldi 8,%r19
	ldi 0,%r19
.L659:
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,4,%r19
	comib,= 0,%r19,.L660
	ldi 4,%r19
	ldi 0,%r19
.L660:
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,2,%r19
	comib,= 0,%r19,.L661
	ldi 2,%r19
	ldi 0,%r19
.L661:
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
	bb,>= %r24,26,.L667
	mtsar %r24
	ldi 0,%r28
	ldi 0,%r29
	b .L669
	vshd %r0,%r25,%r29
.L667:
	comib,= 0,%r24,.L670
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r20
	mtsar %r24
	vshd %r0,%r26,%r19
	b .L669
	or %r20,%r19,%r29
.L670:
	copy %r25,%r28
	copy %r26,%r29
.L669:
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
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	extru %r20,15,16,%r19
	extru %r20,31,16,%r20
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
	.CALLINFO FRAME=128,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=7
	.ENTRY
	stw %r2,-20(%r30)
	copy %r3,%r1
	copy %r30,%r3
	stwm %r1,128(%r30)
	stw %r8,8(%r3)
	stw %r7,12(%r3)
	stw %r6,16(%r3)
	stw %r5,20(%r3)
	copy %r25,%r7
	copy %r26,%r8
	copy %r23,%r5
	copy %r24,%r6
	copy %r6,%r25
	bl __muldsi3,%r2
	copy %r8,%r26
	copy %r28,%r19
	copy %r29,%r20
	stws %r7,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r21
	ldws -12(%sp),%r22
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r8,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r5
	ldws -12(%sp),%r6
	addl %r6,%r22,%r21
	addl %r21,%r28,%r19
	copy %r19,%r28
	copy %r20,%r29
	ldw -20(%r3),%r2
	ldw 8(%r3),%r8
	ldw 12(%r3),%r7
	ldw 16(%r3),%r6
	ldw 20(%r3),%r5
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
.L681:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L684
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr5,%fr4
.L684:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L680
	b .L681
	fmpy,dbl %fr5,%fr5,%fr5
.L680:
	comib,= 0,%r19,.L682
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr22
	fdiv,dbl %fr22,%fr4,%fr4
.L682:
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
.L688:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L691
	extru %r25,0,1,%r28
	fmpy,sgl %fr22L,%fr4L,%fr22L
.L691:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L687
	b .L688
	fmpy,sgl %fr4L,%fr4L,%fr4L
.L687:
	comib,= 0,%r19,.L690
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr4L
	b .L689
	fdiv,sgl %fr4L,%fr22L,%fr4L
.L690:
	fcpy,sgl %fr22L,%fr4L
.L689:
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
	b,n .L694
	comclr,<<= %r28,%r23,%r0
	b,n .L695
	comclr,>>= %r29,%r24,%r0
	b,n .L696
	comb,>> %r29,%r24,.L697
	ldi 1,%r28
	b,n .L693
.L694:
	b .L693
	ldi 0,%r28
.L695:
	b .L693
	ldi 2,%r28
.L696:
	b .L693
	ldi 0,%r28
.L697:
	ldi 2,%r28
.L693:
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
