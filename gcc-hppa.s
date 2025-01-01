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
	comb,<> %r25,%r26,.L6
	ldi 0,%r19
	b,n .L5
.L7:
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	ldo 1(%r19),%r19
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
	ldo 1(%r26),%r28
	comiclr,<> 0,%r23,%r0
	ldi 0,%r28
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
	extru %r25,31,8,%r25
	b .L16
	copy %r26,%r28
.L18:
	ldo -1(%r24),%r24
.L16:
	comib,=,n 0,%r24,.L17
	ldb 0(%r28),%r19
	comb,<>,n %r19,%r25,.L18
	ldo 1(%r28),%r28
.L17:
	comiclr,<> 0,%r24,%r0
	ldi 0,%r28
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
	ldi 0,%r28
	comb,=,n %r28,%r24,.L25
	ldb 0(%r26),%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
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
	ldo -127(%r26),%r19
	comiclr,>>= 32,%r19,%r0
	comiclr,<< 31,%r26,%r19
	ldi 1,%r19
	comib,<> 0,%r19,.L80
	ldi 1,%r28
	ldo -40(%r26),%r19
	ldo -8192(%r19),%r19
	comb,>>=,n %r28,%r19,.L80
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,<< 2,%r26,%r28
	ldi 1,%r28
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
	ldil L'16384,%r19
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
	b,n .L87
.L86:
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
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
	comb,<< %r28,%r19,.L90
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,= %r28,%r26,%r28
	ldi 1,%r28
	b,n .L87
.L88:
	b .L87
	ldi 1,%r28
.L89:
	b .L87
	ldi 1,%r28
.L90:
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
	ldo -48(%r26),%r19
	comib,>>= 9,%r19,.L93
	ldi 1,%r28
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,<< 5,%r26,%r28
	ldi 1,%r28
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
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L105
	fcpy,dbl %fr7,%fr4
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
.L105:
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
	b .L107
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L110
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L112
	b .L113
	fcpy,sgl %fr0,%fr4L
.L112:
	b .L107
	fsub,sgl %fr4L,%fr5L,%fr4L
.L110:
	fcpy,sgl %fr5L,%fr4L
.L113:
.L107:
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
	b .L118
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L119
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L116
	comib,<= 0,%r28,.L115
	fcpy,dbl %fr5,%fr4
	b .L115
	fcpy,dbl %fr7,%fr4
.L116:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L115
	fcpy,dbl %fr7,%fr4
	b .L123
	fcpy,dbl %fr5,%fr4
.L118:
	b .L115
	fcpy,dbl %fr7,%fr4
.L119:
	fcpy,dbl %fr5,%fr4
.L123:
.L115:
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
	b .L128
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L125
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L126
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L125
	b .L125
	fcpy,sgl %fr5L,%fr4L
.L126:
	fcmp,sgl,!< %fr22L,%fr5L
	ftest
	b .L125
	fcpy,sgl %fr5L,%fr4L
	b .L133
	fcpy,sgl %fr22L,%fr4L
.L128:
	fcpy,sgl %fr5L,%fr4L
.L133:
.L125:
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
	b .L138
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L139
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L136
	comib,<= 0,%r28,.L135
	fcpy,dbl %fr5,%fr4
	b .L135
	fcpy,dbl %fr7,%fr4
.L136:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L135
	fcpy,dbl %fr7,%fr4
	b .L143
	fcpy,dbl %fr5,%fr4
.L138:
	b .L135
	fcpy,dbl %fr7,%fr4
.L139:
	fcpy,dbl %fr5,%fr4
.L143:
.L135:
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
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L148
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L149
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L146
	comib,<= 0,%r28,.L145
	fcpy,dbl %fr7,%fr4
	b .L145
	fcpy,dbl %fr5,%fr4
.L146:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L145
	fcpy,dbl %fr5,%fr4
	b .L153
	fcpy,dbl %fr7,%fr4
.L148:
	b .L145
	fcpy,dbl %fr7,%fr4
.L149:
	fcpy,dbl %fr5,%fr4
.L153:
.L145:
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
	b .L158
	fcpy,sgl %fr4L,%fr22L
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L155
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L156
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comib,<= 0,%r28,.L155
	fcpy,sgl %fr5L,%fr4L
	b .L155
	fcpy,sgl %fr22L,%fr4L
.L156:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L155
	b .L163
	fcpy,sgl %fr5L,%fr4L
.L158:
	fcpy,sgl %fr5L,%fr4L
.L163:
.L155:
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
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	fstds %fr7,-16(%sp)
	ldws -16(%sp),%r19
	ldws -12(%sp),%r20
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b .L168
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b .L169
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L166
	comib,<= 0,%r28,.L165
	fcpy,dbl %fr7,%fr4
	b .L165
	fcpy,dbl %fr5,%fr4
.L166:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b .L165
	fcpy,dbl %fr5,%fr4
	b .L173
	fcpy,dbl %fr7,%fr4
.L168:
	b .L165
	fcpy,dbl %fr7,%fr4
.L169:
	fcpy,dbl %fr5,%fr4
.L173:
.L165:
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
	b .L175
	ldo RR's.0-$global$(%r1),%r1
.L176:
	ldil LR'digits,%r28
	ldo RR'digits(%r28),%r28
	ldbx %r28(%r19),%r28
	stb %r28,0(%r1)
	ldo 1(%r1),%r1
	extru %r26,25,26,%r26
.L175:
	comib,<> 0,%r26,.L176
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
	movb,<>,n %r25,%r25,.L180
	stw %r0,4(%r26)
	b .L179
	stw %r0,0(%r26)
.L180:
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,= 0,%r28,%r0
	stw %r26,4(%r28)
.L179:
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
	comib,=,n 0,%r28,.L183
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L183:
	ldw 4(%r26),%r28
	comib,=,n 0,%r28,.L182
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L182:
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
	b .L186
	ldi 0,%r4
.L189:
	copy %r8,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L187
	addl %r5,%r6,%r5
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L188
	addl %r10,%r29,%r28
.L187:
	ldo 1(%r4),%r4
.L186:
	comb,<> %r7,%r4,.L189
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
.L188:
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
	b .L191
	ldi 0,%r4
.L194:
	copy %r7,%r26
	copy %r9,%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	comib,<> 0,%r28,.L192
	addl %r5,%r6,%r5
	stws %r4,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	b .L193
	addl %r10,%r29,%r28
.L192:
	ldo 1(%r4),%r4
.L191:
	comb,<> %r8,%r4,.L194
	copy %r5,%r25
	ldi 0,%r28
.L193:
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
.L198:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L198
	ldo 1(%r4),%r4
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L204
	ldi 45,%r19
	comb,<> %r19,%r28,.L200
	ldi 0,%r20
	b .L199
	ldi 1,%r20
.L204:
	ldi 0,%r20
.L199:
	ldo 1(%r4),%r4
.L200:
	b .L201
	ldi 0,%r28
.L202:
	zdep %r28,30,31,%r28
	ldo 1(%r4),%r4
	ldb -1(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L201:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>=,n 9,%r19,.L202
	sh2addl %r28,%r28,%r28 
	sub %r0,%r28,%r19
	comiclr,<> 0,%r20,%r0
	copy %r19,%r28
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
.L209:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L209
	ldo 1(%r4),%r4
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,= %r19,%r28,.L215
	ldi 45,%r19
	comb,<> %r19,%r28,.L211
	ldi 0,%r20
	b .L210
	ldi 1,%r20
.L215:
	ldi 0,%r20
.L210:
	ldo 1(%r4),%r4
.L211:
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
	sub %r0,%r28,%r19
	comiclr,<> 0,%r20,%r0
	copy %r19,%r28
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
.L220:
	ldb 0(%r4),%r26
	bl isspace,%r2
	extrs %r26,31,8,%r26
	comib,<>,n 0,%r28,.L220
	ldo 1(%r4),%r4
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comb,=,n %r19,%r28,.L226
	ldi 45,%r19
	comb,<> %r19,%r28,.L222
	ldi 0,%r21
	b .L221
	ldi 1,%r21
.L226:
	ldi 0,%r21
.L221:
	ldo 1(%r4),%r4
.L222:
	ldi 0,%r28
	ldi 0,%r29
	b .L229
	ldb 0(%r4),%r19
.L224:
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
.L229:
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L224
	shd %r28,%r29,30,%r7
	copy %r28,%r19
	copy %r29,%r20
	comiclr,= 0,%r21,%r0
	b,n .L225
	sub %r0,%r29,%r20
	subb %r0,%r28,%r19
.L225:
	copy %r19,%r28
	copy %r20,%r29
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
	b .L231
	ldw -52(%r3),%r8
.L235:
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
	movb,>=,n %r28,%r28,.L232
	extru %r4,30,31,%r4
	b,n .L231
.L232:
	comib,>= 0,%r28,.L236
	copy %r5,%r28
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
	extru %r4,30,31,%r28
	uaddcm %r4,%r28,%r4
.L231:
	comib,<>,n 0,%r4,.L235
	extru %r4,30,31,%r28
	ldi 0,%r28
.L236:
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
	b .L238
	copy %r25,%r6
.L241:
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
	b,n .L242
	comib,>=,n 0,%r28,.L240
	ldo -1(%r4),%r4
	fstws %fr12L,-16(%sp)
	ldws -16(%sp),%r28
	addl %r5,%r28,%r6
.L240:
	extrs %r4,30,31,%r4
.L238:
	comib,<>,n 0,%r4,.L241
	extrs %r4,30,31,%r28
	b .L239
	ldi 0,%r28
.L242:
	copy %r5,%r28
.L239:
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
	copy %r26,%r28
.L253:
	ldw 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L256
	comb,<>,n %r19,%r25,.L253
	ldo 4(%r28),%r28
	ldw 0(%r28),%r19
.L256:
	comiclr,<> 0,%r19,%r0
	ldi 0,%r28
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
	b .L263
	ldw 0(%r26),%r19
.L260:
	ldo 4(%r25),%r25
	ldw 0(%r26),%r19
.L263:
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L259
	comiclr,<> 0,%r19,%r0
	b,n .L259
	comib,<>,n 0,%r28,.L260
	ldo 4(%r26),%r26
.L259:
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L261
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L261:
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
.L266:
	addl %r28,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
	ldo -4(%r28),%r20
	ldwx %r20(%r19),%r20
	comib,<>,n 0,%r20,.L266
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
.L269:
	ldw 0(%r28),%r19
	comib,<>,n 0,%r19,.L269
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
	b,n .L271
.L273:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L271:
	comib,=,n 0,%r24,.L272
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,<> %r28,%r19,.L277
	ldi 0,%r28
	comib,=,n 0,%r19,.L272
	ldw 0(%r25),%r28
	comib,<>,n 0,%r28,.L273
	ldo -1(%r24),%r24
.L272:
	ldi 0,%r28
.L277:
	comb,=,n %r28,%r24,.L274
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L274
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L274:
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
	b .L279
	copy %r26,%r28
.L281:
	ldo 4(%r28),%r28
.L279:
	comib,=,n 0,%r24,.L280
	ldw 0(%r28),%r19
	comb,<>,n %r19,%r25,.L281
	ldo -1(%r24),%r24
.L280:
	comiclr,<> 0,%r24,%r0
	ldi 0,%r28
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
	b,n .L285
.L287:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L285:
	comib,=,n 0,%r24,.L286
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,=,n %r28,%r19,.L287
	ldo -1(%r24),%r24
.L286:
	ldi 0,%r28
	comb,=,n %r28,%r24,.L288
	ldw 0(%r26),%r20
	ldw 0(%r25),%r19
	comb,> %r19,%r20,.L288
	ldi -1,%r28
	comclr,>= %r19,%r20,%r28
	ldi 1,%r28
.L288:
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
	b .L292
	ldi 0,%r19
.L293:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L292:
	comb,<>,n %r24,%r19,.L293
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
	comb,= %r25,%r26,.L295
	copy %r26,%r28
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comb,>> %r19,%r20,.L296
	ldi 0,%r19
	b,n .L297
.L298:
	sh2addl %r24,%r28,%r19 
	stw %r20,0(%r19)
.L296:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L298
	ldwx,s %r24(%r25),%r20
	b,n .L295
.L299:
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L297:
	comb,<>,n %r24,%r19,.L299
	ldwx,s %r19(%r25),%r21
.L295:
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
	b .L301
	ldi 0,%r19
.L302:
	stw %r25,0(%r20)
	ldo 1(%r19),%r19
.L301:
	comb,<> %r24,%r19,.L302
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
	comb,<<=,n %r25,%r26,.L304
	addl %r26,%r24,%r26
	addl %r25,%r24,%r25
	b .L305
	copy %r24,%r28
.L306:
	ldbx %r19(%r28),%r20
	uaddcm %r25,%r24,%r19
	addl %r19,%r28,%r19
	stb %r20,0(%r19)
	ldo -1(%r28),%r28
.L305:
	comib,<> 0,%r28,.L306
	uaddcm %r26,%r24,%r19
	b,n .L303
.L304:
	comb,<> %r25,%r26,.L308
	ldi 0,%r28
	b,n .L303
.L309:
	addl %r25,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L308:
	comb,<>,n %r24,%r28,.L309
	ldbx %r26(%r28),%r20
.L303:
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
	bb,>= %r24,26,.L312
	extru %r29,30,31,%r21
	subi 31,%r24,%r21
	mtsar %r21
	zvdep %r29,32,%r19
	b .L313
	ldi 0,%r20
.L312:
	uaddcm %r0,%r24,%r19
	mtsar %r19
	vshd %r0,%r21,%r21
	subi 31,%r24,%r22
	mtsar %r22
	zvdep %r28,32,%r19
	or %r21,%r19,%r19
	zvdep %r29,32,%r20
.L313:
	sub %r0,%r24,%r21
	bb,>= %r21,26,.L314
	zdep %r28,30,31,%r31
	mtsar %r21
	vshd %r0,%r28,%r22
	b .L315
	ldi 0,%r21
.L314:
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
.L315:
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
	bb,>= %r24,26,.L317
	copy %r28,%r21
	mtsar %r24
	vshd %r0,%r28,%r20
	b .L318
	ldi 0,%r19
.L317:
	zdep %r21,30,31,%r21
	uaddcm %r0,%r24,%r19
	subi 31,%r19,%r19
	mtsar %r19
	zvdep %r21,32,%r21
	mtsar %r24
	vshd %r0,%r29,%r20
	or %r21,%r20,%r20
	vshd %r0,%r28,%r19
.L318:
	sub %r0,%r24,%r21
	bb,>= %r21,26,.L319
	extru %r29,30,31,%r31
	extru %r21,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r29,32,%r21
	b .L320
	ldi 0,%r22
.L319:
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
.L320:
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
	b .L333
	ldi 0,%r28
.L336:
	mtsar %r19
	bvb,>= %r26,.L333
	ldo 1(%r28),%r28
	ldo -1(%r28),%r28
	b .L335
	ldo 1(%r28),%r28
.L333:
	ldi 32,%r19
	comb,<> %r19,%r28,.L336
	subi 31,%r28,%r19
	ldi 0,%r28
.L335:
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
	movb,= %r26,%r26,.L341
	ldi 1,%r28
	b .L342
	extru %r26,31,1,%r19
.L340:
	ldo 1(%r28),%r28
	extru %r26,31,1,%r19
.L342:
	comib,=,n 0,%r19,.L340
	extrs %r26,30,31,%r26
	b,n .L338
.L341:
	ldi 0,%r28
.L338:
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
	ldil LR'.LC0,%r19
	ldo RR'.LC0(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!< %fr4L,%fr22L
	ftest
	b .L344
	ldi 1,%r28
	ldil LR'.LC1,%r19
	ldo RR'.LC1(%r19),%r19
	fldws 0(%r19),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L344
	ldi 0,%r28
.L344:
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
	ldil LR'.LC4,%r19
	ldo RR'.LC4(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L350
	ldi 1,%r28
	ldil LR'.LC5,%r19
	ldo RR'.LC5(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L350
	ldi 0,%r28
.L350:
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
	ldil LR'.LC8,%r19
	ldo RR'.LC8(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr5,%fr22
	ftest
	b .L356
	ldi 1,%r28
	ldil LR'.LC9,%r19
	ldo RR'.LC9(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L356
	ldi 0,%r28
.L356:
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
	b,n .L363
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr4L,%fr22L
	ftest
	b,n .L363
	comib,<= 0,%r25,.L367
	ldil LR'.LC13,%r28
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	b .L366
	fldws 0(%r28),%fr22L
.L367:
	ldo RR'.LC13(%r28),%r28
	fldws 0(%r28),%fr22L
.L366:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L368
	extru %r25,0,1,%r28
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L368:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L363
	b .L366
	fmpy,sgl %fr22L,%fr22L,%fr22L
.L363:
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
	b .L370
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L370
	comib,<= 0,%r24,.L374
	ldil LR'.LC17,%r28
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	b .L373
	fldds 0(%r28),%fr22
.L374:
	ldo RR'.LC17(%r28),%r28
	fldds 0(%r28),%fr22
.L373:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L375
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L375:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L370
	b .L373
	fmpy,dbl %fr22,%fr22,%fr22
.L370:
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
	b .L377
	fcpy,dbl %fr5,%fr4
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L377
	comib,<= 0,%r24,.L381
	ldil LR'.LC21,%r28
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	b .L380
	fldds 0(%r28),%fr22
.L381:
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L380:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L382
	extru %r24,0,1,%r28
	fmpy,dbl %fr4,%fr22,%fr4
.L382:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L377
	b .L380
	fmpy,dbl %fr22,%fr22,%fr22
.L377:
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
	b .L384
	ldi 0,%r19
.L385:
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	stb %r20,0(%r21)
	ldo 1(%r19),%r19
.L384:
	comb,<>,n %r24,%r19,.L385
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
	b .L387
	addl %r6,%r28,%r28
.L389:
	ldo 1(%r28),%r28
	ldo -1(%r4),%r4
.L387:
	comib,=,n 0,%r4,.L388
	ldb 0(%r5),%r19
	stb %r19,0(%r28)
	extrs %r19,31,8,%r19
	comib,<> 0,%r19,.L389
	ldo 1(%r5),%r5
.L388:
	comiclr,<> 0,%r4,%r0
	stb %r0,0(%r28)
.L390:
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
.L394:
	comb,=,n %r25,%r28,.L393
	ldbx %r26(%r28),%r19
	comib,<>,n 0,%r19,.L394
	ldo 1(%r28),%r28
.L393:
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
	b .L402
	ldb 0(%r26),%r28
.L398:
	ldb -1(%r19),%r21
	extrs %r21,31,8,%r21
	ldb 0(%r26),%r20
	extrs %r20,31,8,%r20
	comb,= %r20,%r21,.L400
	copy %r26,%r28
.L401:
	ldb 0(%r19),%r20
	comib,<>,n 0,%r20,.L398
	ldo 1(%r19),%r19
	ldo 1(%r26),%r26
	ldb 0(%r26),%r28
.L402:
	comib,<>,n 0,%r28,.L401
	copy %r25,%r19
.L400:
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
.L407:
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r25,%r0
	copy %r26,%r28
	ldo 1(%r26),%r26
	ldb -1(%r26),%r19
	comib,<>,n 0,%r19,.L407
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
	movb,=,n %r28,%r6,.L412
	ldb 0(%r5),%r7
	b .L410
	extrs %r7,31,8,%r7
.L411:
	copy %r5,%r25
	bl strncmp,%r2
	copy %r4,%r26
	comib,=,n 0,%r28,.L413
	ldo 1(%r4),%r4
.L410:
	copy %r7,%r25
	bl strchr,%r2
	copy %r4,%r26
	movb,<> %r28,%r4,.L411
	copy %r6,%r24
	b .L414
	ldw -20(%r3),%r2
.L412:
	b .L409
	copy %r4,%r28
.L413:
	copy %r4,%r28
.L409:
	ldw -20(%r3),%r2
.L414:
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
	b,n .L424
	b .L428
	fcmp,dbl,!> %fr5,%fr0
.L424:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L418
	fcmp,dbl,!> %fr5,%fr0
.L428:
	ftest
	b .L425
	fcpy,dbl %fr5,%fr4
	b,n .L419
.L425:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L418
	b .L427
	fcpy,dbl %fr5,%fr4
.L418:
	fstds %fr5,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L427:
.L419:
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
	comib,= 0,%r23,.L434
	addl %r26,%r6,%r6
	comb,>> %r23,%r25,.L437
	ldi 0,%r28
	b,n .L431
.L433:
	extrs %r19,31,8,%r19
	ldb 0(%r5),%r28
	extrs %r28,31,8,%r28
	comb,<> %r28,%r19,.L432
	ldo -1(%r7),%r24
	ldo 1(%r5),%r25
	bl memcmp,%r2
	ldo 1(%r4),%r26
	comib,= 0,%r28,.L436
	copy %r4,%r28
.L432:
	ldo 1(%r4),%r4
.L431:
	comb,>>=,n %r6,%r4,.L433
	ldb 0(%r4),%r19
	b .L430
	ldi 0,%r28
.L434:
	copy %r26,%r28
.L436:
.L430:
.L437:
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
	b .L454
	fcpy,dbl %fr5,%fr4
	b .L455
	ldi 0,%r20
.L454:
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
.L455:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L442
	ldi 0,%r19
	b .L456
	ldi 1,%r28
.L444:
	ldo 1(%r19),%r19
	ldo RR'.LC25(%r28),%r28
	fldds 0(%r28),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
.L442:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b .L444
	ldil LR'.LC25,%r28
	b .L457
	stw %r19,0(%r24)
.L456:
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L446
	ldi 0,%r28
.L446:
	extru %r28,31,8,%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b .L447
	ldi 1,%r21
	ldi 0,%r21
.L447:
	and %r28,%r21,%r28
	comib,<> 0,%r28,.L453
	ldi 0,%r19
	b .L457
	stw %r19,0(%r24)
.L449:
	ldo -1(%r19),%r19
	fadd,dbl %fr4,%fr4,%fr4
.L453:
	ldil LR'.LC25,%r28
	ldo RR'.LC25(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L449
	stw %r19,0(%r24)
.L457:
	comiclr,<> 0,%r20,%r0
	b,n .L450
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L450:
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
	b .L463
	or %r28,%r29,%r31
.L462:
	extru %r29,31,1,%r22
	or %r21,%r22,%r31
	comb,= %r21,%r31,.L464
	shd %r23,%r24,31,%r1
	add %r24,%r26,%r26
	addc %r23,%r25,%r25
.L464:
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
.L463:
	comib,<> 0,%r31,.L462
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
	copy %r26,%r28
	b .L466
	ldi 1,%r19
.L468:
	zdep %r19,30,31,%r19
.L466:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L473
	comib,<=,n 0,%r25,.L468
	zdep %r25,30,31,%r25
	b .L470
	ldi 0,%r20
.L471:
	comb,>>,n %r25,%r28,.L469
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L469:
	extru %r19,30,31,%r19
	b .L470
	extru %r25,30,31,%r25
.L473:
	ldi 0,%r20
.L470:
	comib,<> 0,%r19,.L471
	nop
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
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
	uaddcm %r0,%r26,%r28
	comclr,< %r28,%r26,%r0
	copy %r28,%r26
	comiclr,<> 0,%r26,%r0
	b,n .L478
	bl __clzsi2,%r2
	zdep %r26,23,24,%r26
	b .L477
	ldo -1(%r28),%r28
.L478:
	ldi 7,%r28
.L477:
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
	comib,<= 0,%r28,.L485
	or %r28,%r29,%r19
	uaddcm %r0,%r25,%r28
	uaddcm %r0,%r26,%r29
	or %r28,%r29,%r19
.L485:
	comiclr,<> 0,%r19,%r0
	b,n .L484
	copy %r28,%r25
	copy %r29,%r26
	bl __clzdi2,%r2
	nop
	b .L482
	ldo -1(%r28),%r28
.L484:
	ldi 63,%r28
.L482:
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
	b .L487
	ldi 0,%r28
.L489:
	ldi 0,%r19
	comclr,= %r19,%r20,%r0
	copy %r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L487:
	comib,<> 0,%r26,.L489
	extru %r26,31,1,%r20
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
	comb,>> %r25,%r26,.L491
	depi 0,31,3,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L492
.L491:
	copy %r25,%r19
	copy %r26,%r20
	b .L493
	sh3addl %r21,%r25,%r21 
.L494:
	ldw 0(%r19),%r5
	ldw 4(%r19),%r6
	stw %r5,0(%r20)
	stw %r6,4(%r20)
	ldo 8(%r19),%r19
	ldo 8(%r20),%r20
.L493:
	comb,<> %r21,%r19,.L494
	nop
	b,n .L495
.L496:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L495:
	comb,<<,n %r28,%r24,.L496
	ldbx %r25(%r28),%r20
	b .L499
	ldw 8(%r3),%r6
.L498:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L492:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L498
	ldbx %r25(%r24),%r19
	ldw 8(%r3),%r6
.L499:
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
	comb,>> %r25,%r26,.L501
	extru %r24,30,31,%r21
	addl %r25,%r24,%r28
	comclr,>> %r26,%r28,%r0
	b,n .L502
.L501:
	zdep %r21,30,31,%r21
	b .L503
	ldi 0,%r28
.L504:
	addl %r26,%r28,%r19
	sth %r20,0(%r19)
	ldo 2(%r28),%r28
.L503:
	comb,<>,n %r21,%r28,.L504
	ldhx %r25(%r28),%r20
	extru %r24,31,1,%r28
	comib,=,n 0,%r28,.L500
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	b .L500
	stb %r28,0(%r26)
.L506:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L502:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L506
	ldbx %r25(%r24),%r19
.L500:
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
	comb,>> %r25,%r26,.L508
	depi 0,31,2,%r28
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L509
.L508:
	zdep %r22,29,30,%r22
	b .L510
	ldi 0,%r19
.L511:
	addl %r26,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
.L510:
	comb,<>,n %r22,%r19,.L511
	ldwx %r25(%r19),%r21
	b,n .L512
.L513:
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L512:
	comb,<<,n %r28,%r24,.L513
	ldbx %r25(%r28),%r20
	b,n .L507
.L515:
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L509:
	ldo -1(%r24),%r24
	comib,<>,n -1,%r24,.L515
	ldbx %r25(%r24),%r19
.L507:
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
	comib,>= 0,%r28,.L521
	copy %r5,%r28
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	b .L520
	fcnvxf,dbl,dbl %fr22,%fr4
.L521:
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
.L520:
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
	comib,>= 0,%r28,.L524
	copy %r5,%r28
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	b .L523
	fcnvxf,dbl,sgl %fr22,%fr4L
.L524:
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
.L523:
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
	b .L527
	ldi 0,%r28
.L529:
	mtsar %r19
	bvb,<,n %r26,.L528
	ldo 1(%r28),%r28
.L527:
	ldi 16,%r19
	comb,<> %r19,%r28,.L529
	ldo 16(%r28),%r19
.L528:
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
	b .L531
	ldi 0,%r28
.L533:
	mtsar %r19
	bvb,<,n %r26,.L532
	ldo 1(%r28),%r28
.L531:
	ldi 16,%r19
	comb,<> %r19,%r28,.L533
	subi 31,%r28,%r19
.L532:
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
	b .L538
	ldil LR'.LC28,%r28
	b .L539
	fcnvfxt,sgl,sgl %fr4L,%fr4L
.L538:
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	b .L537
	addl %r28,%r19,%r28
.L539:
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L537:
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
	b .L541
	copy %r28,%r19
.L543:
	mtsar %r20
	vextru %r26,1,%r20
	addl %r28,%r20,%r28
	ldo 1(%r19),%r19
.L541:
	ldi 16,%r20
	comb,<>,n %r20,%r19,.L543
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
	b .L545
	copy %r28,%r19
.L547:
	mtsar %r20
	vextru %r26,1,%r20
	addl %r28,%r20,%r28
	ldo 1(%r19),%r19
.L545:
	ldi 16,%r20
	comb,<>,n %r20,%r19,.L547
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
	b .L549
	ldi 0,%r28
.L551:
	ldi 0,%r19
	comclr,= %r19,%r20,%r0
	copy %r25,%r19
	addl %r28,%r19,%r28
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L549:
	comib,<> 0,%r26,.L551
	extru %r26,31,1,%r20
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
	movb,= %r26,%r26,.L557
	ldi 0,%r28
	b,n .L554
.L556:
	ldi 0,%r19
	comclr,= %r19,%r20,%r0
	copy %r26,%r19
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L554:
	comib,<> 0,%r25,.L556
	extru %r25,31,1,%r20
.L557:
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
	copy %r26,%r28
	b .L559
	ldi 1,%r19
.L561:
	zdep %r19,30,31,%r19
.L559:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L566
	comib,<=,n 0,%r25,.L561
	zdep %r25,30,31,%r25
	b .L563
	ldi 0,%r20
.L564:
	comb,>>,n %r25,%r28,.L562
	sub %r28,%r25,%r28
	or %r20,%r19,%r20
.L562:
	extru %r19,30,31,%r19
	b .L563
	extru %r25,30,31,%r25
.L566:
	ldi 0,%r20
.L563:
	comib,<> 0,%r19,.L564
	nop
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
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
	b .L572
	ldi -1,%r28
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b .L571
	ldi 0,%r28
	b,n .L569
.L571:
	ldi 1,%r28
.L569:
.L572:
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
	b .L577
	ldi -1,%r28
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b .L576
	ldi 0,%r28
	b,n .L574
.L576:
	ldi 1,%r28
.L574:
.L577:
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
	movb,>= %r25,%r25,.L581
	ldi 0,%r22
	sub %r0,%r25,%r25
	ldi 1,%r22
.L581:
	ldi 0,%r28
	b .L582
	copy %r28,%r20
.L584:
	ldi 0,%r19
	comclr,= %r19,%r21,%r0
	copy %r26,%r19
	addl %r28,%r19,%r28
	zdep %r26,30,31,%r26
	extrs %r25,30,31,%r25
	ldo 1(%r20),%r20
	extrs %r20,31,8,%r20
.L582:
	comiclr,= 0,%r25,%r21
	ldi 1,%r21
	extru %r20,31,8,%r19
	comiclr,<< 31,%r19,%r19
	ldi 1,%r19
	and %r19,%r21,%r19
	comib,<>,n 0,%r19,.L584
	extru %r25,31,1,%r21
	sub %r0,%r28,%r19
	comiclr,= 0,%r22,%r0
	copy %r19,%r28
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
	movb,>= %r26,%r26,.L589
	ldi 0,%r4
	sub %r0,%r26,%r26
	ldi 1,%r4
.L589:
	comib,<=,n 0,%r25,.L590
	sub %r0,%r25,%r25
	comiclr,<> 0,%r4,%r4
	ldi 1,%r4
	extru %r4,31,8,%r4
.L590:
	bl __udivmodsi4,%r2
	ldi 0,%r24
	sub %r0,%r28,%r19
	comiclr,= 0,%r4,%r0
	copy %r19,%r28
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
	movb,>= %r26,%r26,.L594
	ldi 0,%r4
	sub %r0,%r26,%r26
	ldi 1,%r4
.L594:
	or,>= %r0,%r25,%r25
	subi 0,%r25,%r25
	bl __udivmodsi4,%r2
	ldi 1,%r24
	sub %r0,%r28,%r19
	comiclr,= 0,%r4,%r0
	copy %r19,%r28
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
	b .L599
	ldi 1,%r19
.L601:
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
.L599:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comib,= 0,%r20,.L606
	extrs %r25,31,16,%r20
	comib,<=,n 0,%r20,.L601
	zdep %r25,30,31,%r25
	b .L603
	ldi 0,%r20
.L604:
	comb,>>,n %r25,%r28,.L602
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r20,%r19,%r20
.L602:
	extru %r19,30,31,%r19
	b .L603
	extru %r25,30,31,%r25
.L606:
	ldi 0,%r20
.L603:
	comib,<> 0,%r19,.L604
	nop
	comiclr,<> 0,%r24,%r0
	copy %r20,%r28
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
	copy %r26,%r28
	b .L609
	ldi 1,%r19
.L611:
	zdep %r19,30,31,%r19
.L609:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L616
	comib,<=,n 0,%r25,.L611
	zdep %r25,30,31,%r25
	b .L613
	ldi 0,%r20
.L614:
	comb,>>,n %r25,%r28,.L612
	sub %r28,%r25,%r28
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
	bb,>=,n %r24,26,.L619
	subi 63,%r24,%r24
	ldi 0,%r28
	ldi 0,%r29
	mtsar %r24
	b .L621
	zvdep %r26,32,%r28
.L619:
	comib,= 0,%r24,.L622
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r26,32,%r29
	zvdep %r25,32,%r19
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r26,%r20
	b .L621
	or %r20,%r19,%r28
.L622:
	copy %r25,%r28
	copy %r26,%r29
.L621:
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
	bb,>= %r24,26,.L624
	extrs %r25,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	b .L626
	vextrs %r25,32,%r29
.L624:
	comib,= 0,%r24,.L627
	subi 31,%r24,%r19
	mtsar %r19
	vextrs %r25,32,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r20
	mtsar %r24
	vshd %r0,%r26,%r19
	b .L626
	or %r20,%r19,%r29
.L627:
	copy %r25,%r28
	copy %r26,%r29
.L626:
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
	comclr,<< %r28,%r26,%r28
	ldi 1,%r28
	zdep %r28,27,28,%r28
	subi 16,%r28,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	zdepi -1,23,8,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,28,29,%r19
	subi 8,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 240,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,29,30,%r19
	subi 4,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 12,%r19
	and %r26,%r19,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,30,31,%r19
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
	b,n .L641
	comclr,<= %r28,%r23,%r0
	b,n .L642
	comclr,>>= %r29,%r24,%r0
	b,n .L643
	comclr,<<= %r29,%r24,%r28
	ldi 1,%r28
	b .L640
	ldo 1(%r28),%r28
.L641:
	b .L640
	ldi 0,%r28
.L642:
	b .L640
	ldi 2,%r28
.L643:
	ldi 0,%r28
.L640:
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
	comiclr,<> 0,%r28,%r28
	ldi 1,%r28
	zdep %r28,27,28,%r28
	mtsar %r28
	vshd %r0,%r26,%r26
	extru %r26,31,8,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,28,29,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,4,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,29,30,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,2,%r19
	comiclr,<> 0,%r19,%r19
	ldi 1,%r19
	zdep %r19,30,31,%r19
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
	bb,>= %r24,26,.L656
	mtsar %r24
	ldi 0,%r28
	ldi 0,%r29
	b .L658
	vshd %r0,%r25,%r29
.L656:
	comib,= 0,%r24,.L659
	vshd %r0,%r25,%r28
	ldo -1(%r24),%r19
	mtsar %r19
	zvdep %r25,32,%r20
	mtsar %r24
	vshd %r0,%r26,%r19
	b .L658
	or %r20,%r19,%r29
.L659:
	copy %r25,%r28
	copy %r26,%r29
.L658:
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
	fldds 0(%r28),%fr22
.L670:
	extru %r24,31,1,%r28
	comib,= 0,%r28,.L673
	extru %r24,0,1,%r28
	fmpy,dbl %fr22,%fr5,%fr22
.L673:
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L669
	b .L670
	fmpy,dbl %fr5,%fr5,%fr5
.L669:
	comib,= 0,%r19,.L671
	fcpy,dbl %fr22,%fr4
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr4
	fdiv,dbl %fr4,%fr22,%fr4
.L671:
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
.L677:
	extru %r25,31,1,%r28
	comib,= 0,%r28,.L680
	extru %r25,0,1,%r28
	fmpy,sgl %fr22L,%fr4L,%fr22L
.L680:
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L676
	b .L677
	fmpy,sgl %fr4L,%fr4L,%fr4L
.L676:
	comib,= 0,%r19,.L678
	fcpy,sgl %fr22L,%fr4L
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr4L
	fdiv,sgl %fr4L,%fr22L,%fr4L
.L678:
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
	b,n .L683
	comclr,<<= %r28,%r23,%r0
	b,n .L684
	comclr,>>= %r29,%r24,%r0
	b,n .L685
	comclr,<<= %r29,%r24,%r28
	ldi 1,%r28
	b .L682
	ldo 1(%r28),%r28
.L683:
	b .L682
	ldi 0,%r28
.L684:
	b .L682
	ldi 2,%r28
.L685:
	ldi 0,%r28
.L682:
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
