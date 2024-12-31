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
	copy %r26,%r28
	comclr,<< %r25,%r26,%r0
	b,n .L2
	addl %r25,%r24,%r25
	addl %r26,%r24,%r21
	copy %r24,%r19
	b,n .L3
.L4:
	uaddcm %r25,%r24,%r20
	ldbx %r20(%r19),%r22
	uaddcm %r21,%r24,%r20
	addl %r20,%r19,%r20
	stb %r22,0(%r20)
	ldo -1(%r19),%r19
.L3:
	comib,<> 0,%r19,.L4
	nop
	b,n .L5
.L2:
	comclr,= %r25,%r26,%r0
	b,n .L8
	b,n .L5
.L7:
	ldbx %r25(%r19),%r21
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	ldo 1(%r19),%r19
	b,n .L6
.L8:
	ldi 0,%r19
.L6:
	comb,<> %r24,%r19,.L7
	nop
.L5:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	extru %r24,31,8,%r24
	b,n .L10
.L12:
	ldo -1(%r23),%r23
	ldo 1(%r25),%r25
	ldo 1(%r26),%r26
.L10:
	comiclr,<> 0,%r23,%r0
	b,n .L11
	ldb 0(%r25),%r28
	stb %r28,0(%r26)
	comb,<> %r28,%r24,.L12
	nop
.L11:
	comiclr,<> 0,%r23,%r0
	b,n .L14
	ldo 1(%r26),%r28
	b,n .L13
.L14:
	ldi 0,%r28
.L13:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L16
.L18:
	ldo 1(%r26),%r26
	ldo -1(%r24),%r24
.L16:
	comiclr,<> 0,%r24,%r0
	b,n .L17
	ldb 0(%r26),%r28
	comb,<> %r28,%r25,.L18
	nop
.L17:
	comiclr,<> 0,%r24,%r0
	b,n .L20
	copy %r26,%r28
	b,n .L19
.L20:
	ldi 0,%r28
.L19:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldo -1(%r24),%r24
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L22:
	comiclr,<> 0,%r24,%r0
	b,n .L23
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	comb,= %r28,%r19,.L24
	nop
.L23:
	comiclr,<> 0,%r24,%r0
	b,n .L26
	ldb 0(%r26),%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
	b,n .L25
.L26:
	ldi 0,%r28
.L25:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r19
	b,n .L28
.L29:
	ldbx %r25(%r19),%r21
	addl %r28,%r19,%r20
	stb %r21,0(%r20)
	ldo 1(%r19),%r19
.L28:
	comb,<> %r24,%r19,.L29
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldo -1(%r24),%r24
	b,n .L31
.L33:
	ldbx %r26(%r24),%r19
	ldo -1(%r24),%r28
	comclr,= %r19,%r25,%r0
	b,n .L34
	addl %r26,%r24,%r28
	b,n .L32
.L34:
	copy %r28,%r24
.L31:
	comib,<> -1,%r24,.L33
	nop
	ldi 0,%r28
.L32:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r26,%r19
	b,n .L36
.L37:
	stb %r25,0(%r19)
	ldo 1(%r19),%r19
.L36:
	comb,<> %r24,%r19,.L37
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r26,%r28
	b,n .L39
.L40:
	ldo 1(%r25),%r25
	ldo 1(%r28),%r28
.L39:
	ldb 0(%r25),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	comib,<> 0,%r19,.L40
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L42
.L44:
	ldo 1(%r28),%r28
.L42:
	ldb 0(%r28),%r19
	comiclr,<> 0,%r19,%r0
	b,n .L43
	comb,<> %r19,%r25,.L44
	nop
.L43:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
.L47:
	ldb 0(%r26),%r28
	extrs %r28,31,8,%r28
	comclr,<> %r28,%r25,%r0
	b,n .L48
	ldo 1(%r26),%r26
	ldb -1(%r26),%r28
	comib,<> 0,%r28,.L47
	nop
	b,n .L46
.L48:
	copy %r26,%r28
.L46:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L50
.L52:
	ldo 1(%r26),%r26
	ldo 1(%r25),%r25
.L50:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	ldb 0(%r25),%r28
	extrs %r28,31,8,%r28
	comclr,= %r28,%r19,%r0
	b,n .L51
	ldb 0(%r26),%r28
	comib,<> 0,%r28,.L52
	nop
.L51:
	ldb 0(%r26),%r19
	ldb 0(%r25),%r28
	sub %r19,%r28,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L54
.L55:
	ldo 1(%r28),%r28
.L54:
	ldb 0(%r28),%r19
	comib,<> 0,%r19,.L55
	nop
	sub %r28,%r26,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	or,<> %r24,%r0,%r24
	b,n .L61
	copy %r26,%r19
	b,n .L58
.L60:
	ldo 1(%r19),%r19
	ldo 1(%r25),%r25
.L58:
	ldb 0(%r19),%r28
	comiclr,<> 0,%r28,%r0
	b,n .L59
	ldb 0(%r25),%r20
	ldo -1(%r24),%r28
	addl %r26,%r28,%r28
	comclr,= %r28,%r19,%r28
	ldi 1,%r28
	comiclr,= 0,%r20,%r20
	ldi 1,%r20
	and %r28,%r20,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L59
	ldb 0(%r19),%r20
	ldb 0(%r25),%r28
	comb,= %r28,%r20,.L60
	nop
.L59:
	ldb 0(%r19),%r28
	ldb 0(%r25),%r19
	sub %r28,%r19,%r28
	b,n .L57
.L61:
	ldi 0,%r28
.L57:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r26,%r28
	b,n .L63
.L64:
	ldb 1(%r28),%r19
	stb %r19,0(%r25)
	ldb 0(%r28),%r19
	stb %r19,1(%r25)
	ldo 2(%r25),%r25
	ldo 2(%r28),%r28
.L63:
	addl %r26,%r24,%r19
	sub %r19,%r28,%r19
	comib,< 1,%r19,.L64
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,= 0,%r28,%r0
	b,n .L77
	ldo -40(%r26),%r28
	ldo -8192(%r28),%r28
	comiclr,<< 1,%r28,%r0
	b,n .L78
	zdepi -7,31,16,%r28
	sub %r26,%r28,%r26
	comiclr,>>= 2,%r26,%r0
	b,n .L79
	ldi 1,%r28
	b,n .L76
.L77:
	ldi 1,%r28
	b,n .L76
.L78:
	ldi 1,%r28
	b,n .L76
.L79:
	ldi 0,%r28
.L76:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comclr,>>= %r28,%r26,%r0
	b,n .L82
	ldo 1(%r26),%r28
	extru %r28,31,7,%r26
	comiclr,>>= 32,%r26,%r28
	ldi 1,%r28
	b,n .L83
.L82:
	ldo -42(%r26),%r28
	ldo -8192(%r28),%r28
	ldil L'16384,%r19
	ldo -8153(%r19),%r19
	ldil L'49152,%r20
	ldo -2091(%r20),%r20
	comclr,>>= %r20,%r28,%r0
	comclr,<< %r19,%r26,%r28
	ldi 1,%r28
	comiclr,= 0,%r28,%r0
	b,n .L84
	ldil L'-57344,%r28
	addl %r26,%r28,%r28
	ldi 8184,%r19
	comclr,<< %r19,%r28,%r0
	b,n .L85
	zdepi -1,29,14,%r19
	sub %r26,%r19,%r19
	ldil L'1048576,%r28
	ldo 3(%r28),%r28
	comclr,>>= %r28,%r19,%r0
	b,n .L86
	zdepi -1,30,15,%r28
	and %r26,%r28,%r26
	comclr,<> %r28,%r26,%r0
	b,n .L87
	ldi 1,%r28
	b,n .L83
.L84:
	ldi 1,%r28
	b,n .L83
.L85:
	ldi 1,%r28
	b,n .L83
.L86:
	ldi 0,%r28
	b,n .L83
.L87:
	ldi 0,%r28
.L83:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,<< 9,%r28,%r0
	b,n .L90
	depi -1,26,1,%r26
	ldo -97(%r26),%r26
	comiclr,>>= 5,%r26,%r0
	b,n .L91
	ldi 1,%r28
	b,n .L89
.L90:
	ldi 1,%r28
	b,n .L89
.L91:
	ldi 0,%r28
.L89:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	fcpy,dbl %fr7,%fr4
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L96
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L94
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L99
	b,n .L100
.L99:
	fsub,dbl %fr5,%fr7,%fr4
	b,n .L94
.L96:
	fcpy,dbl %fr5,%fr4
	b,n .L94
.L100:
	fcpy,dbl %fr0,%fr4
.L94:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L102
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L105
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L107
	b,n .L108
.L107:
	fsub,sgl %fr4L,%fr5L,%fr4L
	b,n .L102
.L105:
	fcpy,sgl %fr5L,%fr4L
	b,n .L102
.L108:
	fcpy,sgl %fr0,%fr4L
.L102:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L113
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L114
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L111
	copy %r28,%r21
	comiclr,> 0,%r21,%r0
	b,n .L115
	fcpy,dbl %fr7,%fr4
	b,n .L110
.L111:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L117
	b,n .L118
.L117:
	fcpy,dbl %fr7,%fr4
	b,n .L110
.L113:
	fcpy,dbl %fr7,%fr4
	b,n .L110
.L114:
	fcpy,dbl %fr5,%fr4
	b,n .L110
.L115:
	fcpy,dbl %fr5,%fr4
	b,n .L110
.L118:
	fcpy,dbl %fr5,%fr4
.L110:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L123
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L120
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L121
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L120
	fcpy,sgl %fr5L,%fr4L
	b,n .L120
.L121:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L127
	b,n .L120
.L127:
	fcpy,sgl %fr5L,%fr4L
	b,n .L120
.L123:
	fcpy,sgl %fr5L,%fr4L
.L120:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L133
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L134
	copy %r28,%r22
	depi 0,31,31,%r22
	copy %r19,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L131
	copy %r28,%r21
	comiclr,> 0,%r21,%r0
	b,n .L135
	fcpy,dbl %fr7,%fr4
	b,n .L130
.L131:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L137
	b,n .L138
.L137:
	fcpy,dbl %fr7,%fr4
	b,n .L130
.L133:
	fcpy,dbl %fr7,%fr4
	b,n .L130
.L134:
	fcpy,dbl %fr5,%fr4
	b,n .L130
.L135:
	fcpy,dbl %fr5,%fr4
	b,n .L130
.L138:
	fcpy,dbl %fr5,%fr4
.L130:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L143
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L144
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L141
	copy %r19,%r21
	comiclr,> 0,%r21,%r0
	b,n .L145
	fcpy,dbl %fr5,%fr4
	b,n .L140
.L141:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L147
	b,n .L148
.L147:
	fcpy,dbl %fr5,%fr4
	b,n .L140
.L143:
	fcpy,dbl %fr7,%fr4
	b,n .L140
.L144:
	fcpy,dbl %fr5,%fr4
	b,n .L140
.L145:
	fcpy,dbl %fr7,%fr4
	b,n .L140
.L148:
	fcpy,dbl %fr7,%fr4
.L140:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L153
	fcmp,sgl,!? %fr5L,%fr5L
	ftest
	b,n .L150
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r19
	depi 0,31,31,%r19
	fstws %fr5L,-16(%sp)
	ldws -16(%sp),%r28
	depi 0,31,31,%r28
	comclr,<> %r28,%r19,%r0
	b,n .L151
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	comiclr,> 0,%r28,%r0
	b,n .L155
	b,n .L150
.L151:
	fcmp,sgl,!< %fr4L,%fr5L
	ftest
	b,n .L150
	b,n .L158
.L153:
	fcpy,sgl %fr5L,%fr4L
	b,n .L150
.L155:
	fcpy,sgl %fr5L,%fr4L
	b,n .L150
.L158:
	fcpy,sgl %fr5L,%fr4L
.L150:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L163
	fcmp,dbl,!? %fr7,%fr7
	ftest
	b,n .L164
	copy %r19,%r22
	depi 0,31,31,%r22
	copy %r28,%r21
	depi 0,31,31,%r21
	comclr,<> %r21,%r22,%r0
	b,n .L161
	copy %r19,%r21
	comiclr,> 0,%r21,%r0
	b,n .L165
	fcpy,dbl %fr5,%fr4
	b,n .L160
.L161:
	fcmp,dbl,!< %fr5,%fr7
	ftest
	b,n .L167
	b,n .L168
.L167:
	fcpy,dbl %fr5,%fr4
	b,n .L160
.L163:
	fcpy,dbl %fr7,%fr4
	b,n .L160
.L164:
	fcpy,dbl %fr5,%fr4
	b,n .L160
.L165:
	fcpy,dbl %fr7,%fr4
	b,n .L160
.L168:
	fcpy,dbl %fr7,%fr4
.L160:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldo RR's.0-$global$(%r1),%r1
	b,n .L170
.L171:
	extru %r26,31,6,%r19
	ldil LR'digits,%r28
	ldo RR'digits(%r28),%r28
	ldbx %r28(%r19),%r28
	stb %r28,0(%r1)
	ldo 1(%r1),%r1
	extru %r26,25,26,%r26
.L170:
	comib,<> 0,%r26,.L171
	nop
	stb %r0,0(%r1)
	addil LR's.0-$global$,%r27
	ldo RR's.0-$global$(%r1),%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	or,= %r25,%r0,%r25
	b,n .L175
	stw %r0,4(%r26)
	stw %r0,0(%r26)
	b,n .L174
.L175:
	ldw 0(%r25),%r28
	stw %r28,0(%r26)
	stw %r25,4(%r26)
	stw %r26,0(%r25)
	ldw 0(%r26),%r28
	comiclr,<> 0,%r28,%r0
	b,n .L174
	stw %r26,4(%r28)
.L174:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,<> 0,%r28,%r0
	b,n .L178
	ldw 4(%r26),%r19
	stw %r19,4(%r28)
.L178:
	ldw 4(%r26),%r28
	comiclr,<> 0,%r28,%r0
	b,n .L177
	ldw 0(%r26),%r19
	stw %r19,0(%r28)
.L177:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r6
	b,n .L181
.L184:
	copy %r10,%r25
	copy %r8,%r26
	ldw 8(%r3),%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	addl %r10,%r5,%r10
	comiclr,= 0,%r28,%r0
	b,n .L182
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r4,%r29,%r28
	b,n .L183
.L182:
	ldo 1(%r6),%r6
.L181:
	comb,<> %r7,%r6,.L184
	nop
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
	addl %r4,%r29,%r26
	bl memcpy,%r2
	nop
.L183:
	ldw -20(%r3),%r2
	ldw 12(%r3),%r10
	ldw 16(%r3),%r9
	ldw 20(%r3),%r8
	ldw 24(%r3),%r7
	ldw 28(%r3),%r6
	ldw 32(%r3),%r5
	ldw 36(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r5
	b,n .L186
.L189:
	copy %r7,%r25
	copy %r8,%r26
	ldw 8(%r3),%r22
	bl $$dyncall,%r31
	copy %r31,%r2
	addl %r7,%r6,%r7
	comiclr,= 0,%r28,%r0
	b,n .L187
	stws %r5,-16(%sp)
	fldws -16(%sp),%fr22R
	stws %r6,-16(%sp)
	fldws -16(%sp),%fr22L
	xmpyu %fr22R,%fr22L,%fr22
	fstds %fr22,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	addl %r4,%r29,%r28
	b,n .L188
.L187:
	ldo 1(%r5),%r5
.L186:
	comb,<> %r9,%r5,.L189
	nop
	ldi 0,%r28
.L188:
	ldw -20(%r3),%r2
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L192
.L193:
	ldo 1(%r4),%r4
.L192:
	ldb 0(%r4),%r26
	extrs %r26,31,8,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L193
	nop
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L199
	ldi 45,%r19
	comclr,= %r19,%r28,%r0
	b,n .L200
	ldi 1,%r20
	b,n .L194
.L199:
	ldi 0,%r20
.L194:
	ldo 1(%r4),%r4
	b,n .L195
.L200:
	ldi 0,%r20
.L195:
	ldi 0,%r28
	b,n .L196
.L197:
	sh2addl %r28,%r28,%r28 
	zdep %r28,30,31,%r28
	ldo 1(%r4),%r4
	ldb -1(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L196:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L197
	nop
	comiclr,= 0,%r20,%r0
	b,n .L198
	sub %r0,%r28,%r28
.L198:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L203
.L204:
	ldo 1(%r4),%r4
.L203:
	ldb 0(%r4),%r26
	extrs %r26,31,8,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L204
	nop
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L210
	ldi 45,%r19
	comclr,= %r19,%r28,%r0
	b,n .L211
	ldi 1,%r20
	b,n .L205
.L210:
	ldi 0,%r20
.L205:
	ldo 1(%r4),%r4
	b,n .L206
.L211:
	ldi 0,%r20
.L206:
	ldi 0,%r28
	b,n .L207
.L208:
	sh2addl %r28,%r28,%r28 
	zdep %r28,30,31,%r28
	ldo 1(%r4),%r4
	ldb -1(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	sub %r28,%r19,%r28
.L207:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L208
	nop
	comiclr,= 0,%r20,%r0
	b,n .L209
	sub %r0,%r28,%r28
.L209:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L214
.L215:
	ldo 1(%r4),%r4
.L214:
	ldb 0(%r4),%r26
	extrs %r26,31,8,%r26
	bl isspace,%r2
	nop
	comib,<> 0,%r28,.L215
	nop
	ldb 0(%r4),%r28
	extrs %r28,31,8,%r28
	ldi 43,%r19
	comclr,<> %r19,%r28,%r0
	b,n .L221
	ldi 45,%r19
	comclr,= %r19,%r28,%r0
	b,n .L222
	ldi 1,%r20
	b,n .L216
.L221:
	ldi 0,%r20
.L216:
	ldo 1(%r4),%r4
	b,n .L217
.L222:
	ldi 0,%r20
.L217:
	ldi 0,%r28
	ldi 0,%r29
	b,n .L218
.L219:
	shd %r28,%r29,30,%r7
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
.L218:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldo -48(%r19),%r19
	comib,>>= 9,%r19,.L219
	nop
	comiclr,= 0,%r20,%r0
	b,n .L220
	sub %r0,%r29,%r29
	subb %r0,%r28,%r28
.L220:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r10
	ldw 12(%r3),%r9
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	stw %r28,8(%r3)
	b,n .L225
.L229:
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
	or,< %r28,%r0,%r28
	b,n .L226
	extru %r4,30,31,%r4
	b,n .L225
.L226:
	comiclr,< 0,%r28,%r0
	b,n .L230
	addl %r5,%r6,%r7
	extru %r4,30,31,%r28
	uaddcm %r4,%r28,%r4
.L225:
	comib,<> 0,%r4,.L229
	nop
	ldi 0,%r28
	b,n .L228
.L230:
	copy %r5,%r28
.L228:
	ldw -20(%r3),%r2
	ldw 12(%r3),%r8
	ldw 16(%r3),%r7
	ldw 20(%r3),%r6
	ldw 24(%r3),%r5
	ldw 28(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r25,%r6
	b,n .L232
.L235:
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
	or,<> %r28,%r0,%r28
	b,n .L236
	comiclr,< 0,%r28,%r0
	b,n .L234
	addl %r5,%r7,%r6
	ldo -1(%r4),%r4
.L234:
	extrs %r4,30,31,%r4
.L232:
	comib,<> 0,%r4,.L235
	nop
	ldi 0,%r28
	b,n .L233
.L236:
	copy %r5,%r28
.L233:
	ldw -20(%r3),%r2
	ldw 16(%r3),%r8
	ldw 20(%r3),%r7
	ldw 24(%r3),%r6
	ldw 28(%r3),%r5
	ldw 32(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r26,%r20
	copy %r25,%r28
	.IMPORT $$divI,MILLICODE
	bl $$divI,%r31
	nop
	copy %r29,%r19
	copy %r20,%r26
	copy %r28,%r25
	.IMPORT $$remI,MILLICODE
	bl $$remI,%r31
	nop
	stw %r19,8(%r3)
	stw %r29,12(%r3)
	copy %r19,%r21
	copy %r29,%r22
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r28,%r4
	copy %r25,%r7
	copy %r26,%r8
	copy %r23,%r9
	copy %r24,%r10
	bl __divdi3,%r2
	nop
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r26,%r20
	copy %r25,%r28
	bl $$divI,%r31
	nop
	copy %r29,%r19
	copy %r20,%r26
	copy %r28,%r25
	bl $$remI,%r31
	nop
	stw %r19,8(%r3)
	stw %r29,12(%r3)
	copy %r19,%r21
	copy %r29,%r22
	copy %r21,%r28
	copy %r22,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r28,%r4
	copy %r25,%r7
	copy %r26,%r8
	copy %r23,%r9
	copy %r24,%r10
	bl __divdi3,%r2
	nop
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L245
.L247:
	ldo 4(%r26),%r26
.L245:
	ldw 0(%r26),%r28
	comiclr,<> 0,%r28,%r0
	b,n .L246
	comb,<> %r28,%r25,.L247
	nop
.L246:
	ldw 0(%r26),%r28
	comiclr,<> 0,%r28,%r0
	b,n .L249
	copy %r26,%r28
	b,n .L248
.L249:
	ldi 0,%r28
.L248:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L251
.L253:
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L251:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L252
	comiclr,<> 0,%r19,%r0
	b,n .L252
	ldw 0(%r25),%r28
	comib,<> 0,%r28,.L253
	nop
.L252:
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comclr,<= %r28,%r19,%r0
	b,n .L255
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L254
.L255:
	ldi -1,%r28
.L254:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
.L257:
	ldwx %r25(%r19),%r21
	addl %r28,%r19,%r20
	stw %r21,0(%r20)
	ldo 4(%r19),%r19
	ldo -4(%r28),%r20
	ldwx %r20(%r19),%r20
	comib,<> 0,%r20,.L257
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L259
.L260:
	ldo 4(%r28),%r28
.L259:
	ldw 0(%r28),%r19
	comib,<> 0,%r19,.L260
	nop
	sub %r28,%r26,%r28
	extrs %r28,29,30,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L262
.L264:
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L262:
	comiclr,<> 0,%r24,%r0
	b,n .L263
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comclr,= %r28,%r19,%r0
	b,n .L263
	comiclr,<> 0,%r19,%r0
	b,n .L263
	ldw 0(%r25),%r28
	comib,<> 0,%r28,.L264
	nop
.L263:
	comiclr,<> 0,%r24,%r0
	b,n .L266
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comclr,<= %r28,%r19,%r0
	b,n .L267
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L265
.L266:
	ldi 0,%r28
	b,n .L265
.L267:
	ldi -1,%r28
.L265:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L269
.L271:
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
.L269:
	comiclr,<> 0,%r24,%r0
	b,n .L270
	ldw 0(%r26),%r28
	comb,<> %r28,%r25,.L271
	nop
.L270:
	comiclr,<> 0,%r24,%r0
	b,n .L273
	copy %r26,%r28
	b,n .L272
.L273:
	ldi 0,%r28
.L272:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L275
.L277:
	ldo -1(%r24),%r24
	ldo 4(%r26),%r26
	ldo 4(%r25),%r25
.L275:
	comiclr,<> 0,%r24,%r0
	b,n .L276
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comb,= %r28,%r19,.L277
	nop
.L276:
	comiclr,<> 0,%r24,%r0
	b,n .L279
	ldw 0(%r26),%r19
	ldw 0(%r25),%r28
	comclr,<= %r28,%r19,%r0
	b,n .L280
	copy %r19,%r28
	ldw 0(%r25),%r19
	comclr,>= %r19,%r28,%r28
	ldi 1,%r28
	b,n .L278
.L279:
	ldi 0,%r28
	b,n .L278
.L280:
	ldi -1,%r28
.L278:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r19
	b,n .L282
.L283:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L282:
	comb,<> %r24,%r19,.L283
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r26,%r28
	comclr,<> %r25,%r26,%r0
	b,n .L285
	sub %r26,%r25,%r20
	zdep %r24,29,30,%r19
	comclr,<<= %r19,%r20,%r0
	b,n .L286
	ldi 0,%r19
	b,n .L287
.L288:
	ldwx,s %r24(%r25),%r20
	sh2addl %r24,%r28,%r19 
	stw %r20,0(%r19)
.L286:
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L288
	nop
	b,n .L285
.L289:
	ldwx,s %r19(%r25),%r21
	sh2addl %r19,%r28,%r20 
	stw %r21,0(%r20)
	ldo 1(%r19),%r19
.L287:
	comb,<> %r24,%r19,.L289
	nop
.L285:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r19
	b,n .L291
.L292:
	sh2addl %r19,%r28,%r20 
	stw %r25,0(%r20)
	ldo 1(%r19),%r19
.L291:
	comb,<> %r24,%r19,.L292
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comclr,>> %r25,%r26,%r0
	b,n .L294
	addl %r26,%r24,%r26
	addl %r25,%r24,%r25
	copy %r24,%r28
	b,n .L295
.L296:
	uaddcm %r26,%r24,%r19
	ldbx %r19(%r28),%r20
	uaddcm %r25,%r24,%r19
	addl %r19,%r28,%r19
	stb %r20,0(%r19)
	ldo -1(%r28),%r28
.L295:
	comib,<> 0,%r28,.L296
	nop
	b,n .L293
.L294:
	comclr,= %r25,%r26,%r0
	b,n .L300
	b,n .L293
.L299:
	ldbx %r26(%r28),%r20
	addl %r25,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
	b,n .L298
.L300:
	ldi 0,%r28
.L298:
	comb,<> %r24,%r28,.L299
	nop
.L293:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	extrs,< %r24,26,1,%r0
	b,n .L302
	subi 31,%r24,%r21
	mtsar %r21
	zvdep %r29,32,%r19
	ldi 0,%r20
	b,n .L303
.L302:
	extru %r29,30,31,%r21
	uaddcm %r0,%r24,%r19
	mtsar %r19
	vshd %r0,%r21,%r21
	subi 31,%r24,%r22
	mtsar %r22
	zvdep %r28,32,%r19
	or %r21,%r19,%r19
	zvdep %r29,32,%r20
.L303:
	sub %r0,%r24,%r21
	extrs,< %r21,26,1,%r0
	b,n .L304
	mtsar %r21
	vshd %r0,%r28,%r22
	ldi 0,%r21
	b,n .L305
.L304:
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
.L305:
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	extrs,< %r24,26,1,%r0
	b,n .L307
	mtsar %r24
	vshd %r0,%r28,%r20
	ldi 0,%r19
	b,n .L308
.L307:
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
.L308:
	sub %r0,%r24,%r21
	extrs,< %r21,26,1,%r0
	b,n .L309
	extru %r21,31,6,%r24
	subi 31,%r24,%r24
	mtsar %r24
	zvdep %r29,32,%r21
	ldi 0,%r22
	b,n .L310
.L309:
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
.L310:
	or %r21,%r19,%r28
	or %r22,%r20,%r29
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r28
	b,n .L323
.L326:
	subi 31,%r28,%r19
	mtsar %r19
	vextrs,< %r26,1,%r0
	b,n .L324
	ldo 1(%r28),%r28
	b,n .L325
.L324:
	ldo 1(%r28),%r28
.L323:
	ldi 32,%r19
	comb,<> %r19,%r28,.L326
	nop
	ldi 0,%r28
.L325:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	or,<> %r26,%r0,%r26
	b,n .L331
	ldi 1,%r28
	b,n .L329
.L330:
	extrs %r26,30,31,%r26
	ldo 1(%r28),%r28
.L329:
	extru %r26,31,1,%r19
	comib,= 0,%r19,.L330
	nop
	b,n .L328
.L331:
	ldi 0,%r28
.L328:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L335
	ldil LR'.LC1,%r28
	ldo RR'.LC1(%r28),%r28
	fldws 0(%r28),%fr22L
	fcmp,sgl,!> %fr4L,%fr22L
	ftest
	b,n .L337
	b,n .L338
.L337:
	ldi 1,%r28
	b,n .L333
.L335:
	ldi 1,%r28
	b,n .L333
.L338:
	ldi 0,%r28
.L333:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L342
	ldil LR'.LC5,%r28
	ldo RR'.LC5(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L344
	b,n .L345
.L344:
	ldi 1,%r28
	b,n .L340
.L342:
	ldi 1,%r28
	b,n .L340
.L345:
	ldi 0,%r28
.L340:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L349
	ldil LR'.LC9,%r28
	ldo RR'.LC9(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!> %fr5,%fr22
	ftest
	b,n .L351
	b,n .L352
.L351:
	ldi 1,%r28
	b,n .L347
.L349:
	ldi 1,%r28
	b,n .L347
.L352:
	ldi 0,%r28
.L347:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L355
	fadd,sgl %fr4L,%fr4L,%fr22L
	fcmp,sgl,!= %fr4L,%fr22L
	ftest
	b,n .L355
	comiclr,> 0,%r25,%r0
	b,n .L359
	ldil LR'.LC12,%r28
	ldo RR'.LC12(%r28),%r28
	fldws 0(%r28),%fr22L
	b,n .L358
.L359:
	ldil LR'.LC13,%r28
	ldo RR'.LC13(%r28),%r28
	fldws 0(%r28),%fr22L
.L358:
	extru %r25,31,1,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L357
	fmpy,sgl %fr4L,%fr22L,%fr4L
.L357:
	extru %r25,0,1,%r28
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L355
	fmpy,sgl %fr22L,%fr22L,%fr22L
	b,n .L358
.L355:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L361
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L361
	comiclr,> 0,%r24,%r0
	b,n .L365
	ldil LR'.LC16,%r28
	ldo RR'.LC16(%r28),%r28
	fldds 0(%r28),%fr22
	b,n .L364
.L365:
	ldil LR'.LC17,%r28
	ldo RR'.LC17(%r28),%r28
	fldds 0(%r28),%fr22
.L364:
	extru %r24,31,1,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L363
	fmpy,dbl %fr4,%fr22,%fr4
.L363:
	extru %r24,0,1,%r28
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L361
	fmpy,dbl %fr22,%fr22,%fr22
	b,n .L364
.L361:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!? %fr5,%fr5
	ftest
	b,n .L367
	fadd,dbl %fr5,%fr5,%fr22
	fcmp,dbl,!= %fr5,%fr22
	ftest
	b,n .L367
	comiclr,> 0,%r24,%r0
	b,n .L371
	ldil LR'.LC20,%r28
	ldo RR'.LC20(%r28),%r28
	fldds 0(%r28),%fr22
	b,n .L370
.L371:
	ldil LR'.LC21,%r28
	ldo RR'.LC21(%r28),%r28
	fldds 0(%r28),%fr22
.L370:
	extru %r24,31,1,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L369
	fmpy,dbl %fr4,%fr22,%fr4
.L369:
	extru %r24,0,1,%r28
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L367
	fmpy,dbl %fr22,%fr22,%fr22
	b,n .L370
.L367:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r19
	b,n .L373
.L374:
	ldbx %r25(%r19),%r21
	ldbx %r28(%r19),%r20
	xor %r20,%r21,%r20
	addl %r28,%r19,%r21
	stb %r20,0(%r21)
	ldo 1(%r19),%r19
.L373:
	comb,<> %r24,%r19,.L374
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r24,%r4
	bl strlen,%r2
	nop
	addl %r6,%r28,%r28
	b,n .L376
.L378:
	ldo 1(%r5),%r5
	ldo 1(%r28),%r28
	ldo -1(%r4),%r4
.L376:
	comiclr,<> 0,%r4,%r0
	b,n .L377
	ldb 0(%r5),%r19
	extrs %r19,31,8,%r19
	stb %r19,0(%r28)
	comib,<> 0,%r19,.L378
	nop
.L377:
	comiclr,= 0,%r4,%r0
	b,n .L379
	stb %r0,0(%r28)
.L379:
	copy %r6,%r28
	ldw -20(%r3),%r2
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldw 16(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L381
.L383:
	ldo 1(%r28),%r28
.L381:
	comclr,<> %r25,%r28,%r0
	b,n .L382
	ldbx %r26(%r28),%r19
	comib,<> 0,%r19,.L383
	nop
.L382:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L385
.L387:
	ldo 1(%r28),%r28
	ldb -1(%r28),%r20
	extrs %r20,31,8,%r20
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,<> %r19,%r20,%r0
	b,n .L389
	b,n .L388
.L390:
	copy %r25,%r28
.L388:
	ldb 0(%r28),%r19
	comib,<> 0,%r19,.L387
	nop
	ldo 1(%r26),%r26
.L385:
	ldb 0(%r26),%r28
	comib,<> 0,%r28,.L390
	nop
	b,n .L386
.L389:
	copy %r26,%r28
.L386:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
.L393:
	ldb 0(%r26),%r19
	extrs %r19,31,8,%r19
	comclr,= %r19,%r25,%r0
	b,n .L392
	copy %r26,%r28
.L392:
	ldo 1(%r26),%r26
	ldb -1(%r26),%r19
	comib,<> 0,%r19,.L393
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r25,%r26
	bl strlen,%r2
	nop
	or,<> %r28,%r0,%r6
	b,n .L399
	ldb 0(%r5),%r7
	extrs %r7,31,8,%r7
	b,n .L397
.L398:
	copy %r6,%r24
	copy %r5,%r25
	copy %r4,%r26
	bl strncmp,%r2
	nop
	comiclr,<> 0,%r28,%r0
	b,n .L400
	ldo 1(%r4),%r4
.L397:
	copy %r7,%r25
	copy %r4,%r26
	bl strchr,%r2
	nop
	movb,<> %r28,%r4,.L398
	nop
	b,n .L396
.L399:
	copy %r4,%r28
	b,n .L396
.L400:
	copy %r4,%r28
.L396:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r7
	ldw 12(%r3),%r6
	ldw 16(%r3),%r5
	ldw 20(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L410
	b,n .L402
.L410:
	fcmp,dbl,!> %fr7,%fr0
	ftest
	b,n .L404
.L402:
	fcmp,dbl,!> %fr4,%fr0
	ftest
	b,n .L411
	b,n .L405
.L411:
	fcmp,dbl,!< %fr7,%fr0
	ftest
	b,n .L404
	b,n .L405
.L404:
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L405:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	addl %r26,%r7,%r7
	comiclr,<> 0,%r23,%r0
	b,n .L419
	comclr,<<= %r23,%r25,%r0
	b,n .L420
	b,n .L416
.L418:
	ldb 0(%r4),%r19
	extrs %r19,31,8,%r19
	ldb 0(%r6),%r28
	extrs %r28,31,8,%r28
	comclr,= %r28,%r19,%r0
	b,n .L417
	ldo -1(%r5),%r24
	ldo 1(%r6),%r25
	ldo 1(%r4),%r26
	bl memcmp,%r2
	nop
	comiclr,<> 0,%r28,%r0
	b,n .L421
.L417:
	ldo 1(%r4),%r4
.L416:
	comb,>>= %r7,%r4,.L418
	nop
	ldi 0,%r28
	b,n .L415
.L419:
	copy %r26,%r28
	b,n .L415
.L420:
	ldi 0,%r28
	b,n .L415
.L421:
	copy %r4,%r28
.L415:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r7
	ldw 12(%r3),%r6
	ldw 16(%r3),%r5
	ldw 20(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r24,%r4
	bl memcpy,%r2
	nop
	addl %r28,%r4,%r28
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	fcpy,dbl %fr5,%fr4
	fcmp,dbl,!< %fr5,%fr0
	ftest
	b,n .L438
	b,n .L439
.L438:
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
	b,n .L424
.L439:
	ldi 0,%r20
.L424:
	ldil LR'.LC24,%r28
	ldo RR'.LC24(%r28),%r28
	fldds 0(%r28),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b,n .L436
	b,n .L440
.L428:
	ldo 1(%r28),%r28
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fmpy,dbl %fr4,%fr22,%fr4
	b,n .L426
.L436:
	ldi 0,%r28
.L426:
	ldil LR'.LC24,%r19
	ldo RR'.LC24(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!>= %fr4,%fr22
	ftest
	b,n .L428
	b,n .L429
.L440:
	ldi 1,%r28
	fcmp,dbl,= %fr4,%fr0
	ftest
	b,n .L430
	ldi 0,%r28
.L430:
	extru %r28,31,8,%r28
	ldi 1,%r21
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L431
	ldi 0,%r21
.L431:
	and %r28,%r21,%r28
	comiclr,= 0,%r28,%r0
	b,n .L437
	b,n .L429
.L433:
	ldo -1(%r28),%r28
	fadd,dbl %fr4,%fr4,%fr4
	b,n .L432
.L437:
	ldi 0,%r28
.L432:
	ldil LR'.LC25,%r19
	ldo RR'.LC25(%r19),%r19
	fldds 0(%r19),%fr22
	fcmp,dbl,!< %fr4,%fr22
	ftest
	b,n .L433
.L429:
	stw %r28,0(%r24)
	comiclr,<> 0,%r20,%r0
	b,n .L434
	fstds %fr4,-16(%sp)
	ldws -16(%sp),%r28
	ldws -12(%sp),%r29
	and,< %r28,%r28,%r28
	depi,tr 1,0,1,%r28
	depi 0,0,1,%r28
	stws %r28,-16(%sp)
	stws %r29,-12(%sp)
	fldds -16(%sp),%fr4
.L434:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L442
.L445:
	ldi 0,%r5
	extru %r29,31,1,%r6
	or %r5,%r6,%r21
	comclr,<> %r5,%r21,%r0
	b,n .L443
	add %r24,%r20,%r20
	addc %r23,%r19,%r19
.L443:
	shd %r23,%r24,31,%r7
	zdep %r24,30,31,%r8
	copy %r7,%r23
	copy %r8,%r24
	zdep %r28,0,1,%r21
	extru %r29,30,31,%r2
	or %r21,%r2,%r2
	extru %r28,30,31,%r1
	copy %r1,%r28
	copy %r2,%r29
.L442:
	or %r28,%r29,%r21
	comib,<> 0,%r21,.L445
	nop
	copy %r19,%r28
	copy %r20,%r29
	ldw -20(%r3),%r2
	ldw 8(%r3),%r8
	ldw 12(%r3),%r7
	ldw 16(%r3),%r6
	ldw 20(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 1,%r28
	b,n .L447
.L449:
	zdep %r25,30,31,%r25
	zdep %r28,30,31,%r28
.L447:
	comclr,<<= %r26,%r25,%r19
	ldi 1,%r19
	comiclr,= 0,%r28,%r20
	ldi 1,%r20
	and %r19,%r20,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L454
	comib,<= 0,%r25,.L449
	nop
	ldi 0,%r19
	b,n .L451
.L452:
	comclr,<<= %r25,%r26,%r0
	b,n .L450
	sub %r26,%r25,%r26
	or %r19,%r28,%r19
.L450:
	extru %r28,30,31,%r28
	extru %r25,30,31,%r25
	b,n .L451
.L454:
	ldi 0,%r19
.L451:
	comib,<> 0,%r28,.L452
	nop
	comiclr,= 0,%r24,%r0
	b,n .L455
	copy %r19,%r28
	b,n .L453
.L455:
	copy %r26,%r28
.L453:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,> 0,%r26,%r0
	b,n .L457
	uaddcm %r0,%r26,%r26
.L457:
	comiclr,<> 0,%r26,%r0
	b,n .L459
	zdep %r26,23,24,%r26
	bl __clzsi2,%r2
	nop
	ldo -1(%r28),%r28
	b,n .L458
.L459:
	ldi 7,%r28
.L458:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,> 0,%r28,%r0
	b,n .L461
	uaddcm %r0,%r25,%r28
	uaddcm %r0,%r26,%r29
.L461:
	or %r28,%r29,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L465
	copy %r28,%r25
	copy %r29,%r26
	bl __clzdi2,%r2
	nop
	ldo -1(%r28),%r28
	b,n .L463
.L465:
	ldi 63,%r28
.L463:
	ldw -20(%r3),%r2
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r28
	b,n .L467
.L469:
	extru %r26,31,1,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L468
	addl %r28,%r25,%r28
.L468:
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L467:
	comib,<> 0,%r26,.L469
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	depi 0,31,3,%r28
	comclr,<<= %r25,%r26,%r0
	b,n .L471
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L472
.L471:
	copy %r25,%r19
	copy %r26,%r21
	sh3addl %r20,%r25,%r20 
	b,n .L473
.L474:
	ldw 0(%r19),%r5
	ldw 4(%r19),%r6
	stw %r5,0(%r21)
	stw %r6,4(%r21)
	ldo 8(%r19),%r19
	ldo 8(%r21),%r21
.L473:
	comb,<> %r20,%r19,.L474
	nop
	b,n .L475
.L476:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L475:
	comb,<< %r28,%r24,.L476
	nop
	b,n .L470
.L478:
	ldbx %r25(%r24),%r19
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L472:
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L478
	nop
.L470:
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	extru %r24,30,31,%r19
	comclr,<<= %r25,%r26,%r0
	b,n .L480
	addl %r25,%r24,%r28
	comclr,>> %r26,%r28,%r0
	b,n .L481
.L480:
	zdep %r19,30,31,%r19
	ldi 0,%r28
	b,n .L482
.L483:
	ldhx %r25(%r28),%r21
	addl %r26,%r28,%r20
	sth %r21,0(%r20)
	ldo 2(%r28),%r28
.L482:
	comb,<> %r19,%r28,.L483
	nop
	extru %r24,31,1,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L479
	ldo -1(%r24),%r24
	addl %r26,%r24,%r26
	ldbx %r25(%r24),%r28
	stb %r28,0(%r26)
	b,n .L479
.L485:
	ldbx %r25(%r24),%r19
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L481:
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L485
	nop
.L479:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	depi 0,31,2,%r28
	comclr,<<= %r25,%r26,%r0
	b,n .L487
	addl %r25,%r24,%r19
	comclr,>> %r26,%r19,%r0
	b,n .L488
.L487:
	zdep %r20,29,30,%r20
	ldi 0,%r19
	b,n .L489
.L490:
	ldwx %r25(%r19),%r22
	addl %r26,%r19,%r21
	stw %r22,0(%r21)
	ldo 4(%r19),%r19
.L489:
	comb,<> %r20,%r19,.L490
	nop
	b,n .L491
.L492:
	ldbx %r25(%r28),%r20
	addl %r26,%r28,%r19
	stb %r20,0(%r19)
	ldo 1(%r28),%r28
.L491:
	comb,<< %r28,%r24,.L492
	nop
	b,n .L486
.L494:
	ldbx %r25(%r24),%r19
	addl %r26,%r24,%r28
	stb %r19,0(%r28)
.L488:
	ldo -1(%r24),%r24
	comib,<> -1,%r24,.L494
	nop
.L486:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,< 0,%r28,%r0
	b,n .L500
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,dbl %fr22,%fr4
	b,n .L499
.L500:
	ldi 0,%r21
	ldi 0,%r22
	extru %r6,31,1,%r22
	copy %r5,%r28
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
.L499:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,< 0,%r28,%r0
	b,n .L503
	stws %r5,-16(%sp)
	stws %r6,-12(%sp)
	fldds -16(%sp),%fr22
	fcnvxf,dbl,sgl %fr22,%fr4L
	b,n .L502
.L503:
	ldi 0,%r21
	ldi 0,%r22
	extru %r6,31,1,%r22
	copy %r5,%r28
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
.L502:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r6
	ldw 12(%r3),%r5
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r28
	b,n .L506
.L508:
	ldo 16(%r28),%r19
	mtsar %r19
	vextrs,>= %r26,1,%r0
	b,n .L507
	ldo 1(%r28),%r28
.L506:
	ldi 16,%r19
	comb,<> %r19,%r28,.L508
	nop
.L507:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r28
	b,n .L510
.L512:
	subi 31,%r28,%r19
	mtsar %r19
	vextrs,>= %r26,1,%r0
	b,n .L511
	ldo 1(%r28),%r28
.L510:
	ldi 16,%r19
	comb,<> %r19,%r28,.L512
	nop
.L511:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L517
	b,n .L518
.L517:
	ldil LR'.LC28,%r28
	ldo RR'.LC28(%r28),%r28
	fldws 0(%r28),%fr22L
	fsub,sgl %fr4L,%fr22L,%fr4L
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
	ldil L'32768,%r19
	addl %r28,%r19,%r28
	b,n .L516
.L518:
	fcnvfxt,sgl,sgl %fr4L,%fr4L
	fstws %fr4L,-16(%sp)
	ldws -16(%sp),%r28
.L516:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r28,%r19
	b,n .L520
.L522:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs,< %r26,1,%r0
	b,n .L521
	ldo 1(%r28),%r28
.L521:
	ldo 1(%r19),%r19
.L520:
	ldi 16,%r20
	comb,<> %r20,%r19,.L522
	nop
	extru %r28,31,1,%r28
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r28,%r19
	b,n .L524
.L526:
	subi 31,%r19,%r20
	mtsar %r20
	vextrs,< %r26,1,%r0
	b,n .L525
	ldo 1(%r28),%r28
.L525:
	ldo 1(%r19),%r19
.L524:
	ldi 16,%r20
	comb,<> %r20,%r19,.L526
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 0,%r28
	b,n .L528
.L530:
	extru %r26,31,1,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L529
	addl %r28,%r25,%r28
.L529:
	extru %r26,30,31,%r26
	zdep %r25,30,31,%r25
.L528:
	comib,<> 0,%r26,.L530
	nop
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	or,<> %r26,%r0,%r26
	b,n .L536
	ldi 0,%r28
	b,n .L533
.L535:
	extru %r25,31,1,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L534
	addl %r28,%r26,%r28
.L534:
	zdep %r26,30,31,%r26
	extru %r25,30,31,%r25
.L533:
	comib,<> 0,%r25,.L535
	nop
	b,n .L532
.L536:
	ldi 0,%r28
.L532:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 1,%r28
	b,n .L538
.L540:
	zdep %r25,30,31,%r25
	zdep %r28,30,31,%r28
.L538:
	comclr,<<= %r26,%r25,%r19
	ldi 1,%r19
	comiclr,= 0,%r28,%r20
	ldi 1,%r20
	and %r19,%r20,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L545
	comib,<= 0,%r25,.L540
	nop
	ldi 0,%r19
	b,n .L542
.L543:
	comclr,<<= %r25,%r26,%r0
	b,n .L541
	sub %r26,%r25,%r26
	or %r19,%r28,%r19
.L541:
	extru %r28,30,31,%r28
	extru %r25,30,31,%r25
	b,n .L542
.L545:
	ldi 0,%r19
.L542:
	comib,<> 0,%r28,.L543
	nop
	comiclr,= 0,%r24,%r0
	b,n .L546
	copy %r19,%r28
	b,n .L544
.L546:
	copy %r26,%r28
.L544:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L549
	fcmp,sgl,!> %fr4L,%fr5L
	ftest
	b,n .L550
	ldi 0,%r28
	b,n .L548
.L549:
	ldi -1,%r28
	b,n .L548
.L550:
	ldi 1,%r28
.L548:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L553
	fcmp,dbl,!> %fr5,%fr7
	ftest
	b,n .L554
	ldi 0,%r28
	b,n .L552
.L553:
	ldi -1,%r28
	b,n .L552
.L554:
	ldi 1,%r28
.L552:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	or,< %r25,%r0,%r25
	b,n .L563
	sub %r0,%r25,%r25
	ldi 1,%r22
	b,n .L558
.L563:
	ldi 0,%r22
.L558:
	ldi 0,%r28
	copy %r28,%r19
	b,n .L559
.L561:
	extru %r25,31,1,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L560
	addl %r28,%r26,%r28
.L560:
	zdep %r26,30,31,%r26
	extrs %r25,30,31,%r25
	ldo 1(%r19),%r19
	extrs %r19,31,8,%r19
.L559:
	comiclr,= 0,%r25,%r21
	ldi 1,%r21
	extru %r19,31,8,%r20
	comiclr,<< 31,%r20,%r20
	ldi 1,%r20
	and %r20,%r21,%r20
	comib,<> 0,%r20,.L561
	nop
	comiclr,<> 0,%r22,%r0
	b,n .L562
	sub %r0,%r28,%r28
.L562:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	or,< %r26,%r0,%r26
	b,n .L569
	sub %r0,%r26,%r26
	ldi 1,%r4
	b,n .L566
.L569:
	ldi 0,%r4
.L566:
	comiclr,> 0,%r25,%r0
	b,n .L567
	sub %r0,%r25,%r25
	comiclr,<> 0,%r4,%r4
	ldi 1,%r4
.L567:
	ldi 0,%r24
	bl __udivmodsi4,%r2
	nop
	comiclr,<> 0,%r4,%r0
	b,n .L568
	sub %r0,%r28,%r28
.L568:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	or,< %r26,%r0,%r26
	b,n .L574
	sub %r0,%r26,%r26
	ldi 1,%r4
	b,n .L571
.L574:
	ldi 0,%r4
.L571:
	comiclr,> 0,%r25,%r0
	b,n .L572
	sub %r0,%r25,%r25
.L572:
	ldi 1,%r24
	bl __udivmodsi4,%r2
	nop
	comiclr,<> 0,%r4,%r0
	b,n .L573
	sub %r0,%r28,%r28
.L573:
	ldw -20(%r3),%r2
	ldw 8(%r3),%r4
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 1,%r19
	b,n .L576
.L578:
	zdep %r25,30,31,%r25
	extru %r25,31,16,%r25
	zdep %r19,30,31,%r19
	extru %r19,31,16,%r19
.L576:
	comclr,<<= %r28,%r25,%r20
	ldi 1,%r20
	comiclr,= 0,%r19,%r21
	ldi 1,%r21
	and %r20,%r21,%r20
	comiclr,<> 0,%r20,%r0
	b,n .L583
	extrs %r25,31,16,%r20
	comib,<= 0,%r20,.L578
	nop
	ldi 0,%r20
	b,n .L580
.L581:
	comclr,<<= %r25,%r28,%r0
	b,n .L579
	sub %r28,%r25,%r28
	extru %r28,31,16,%r28
	or %r20,%r19,%r20
.L579:
	extru %r19,30,31,%r19
	extru %r25,30,31,%r25
	b,n .L580
.L583:
	ldi 0,%r20
.L580:
	comib,<> 0,%r19,.L581
	nop
	comiclr,= 0,%r24,%r0
	b,n .L582
	copy %r20,%r28
.L582:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldi 1,%r28
	b,n .L586
.L588:
	zdep %r25,30,31,%r25
	zdep %r28,30,31,%r28
.L586:
	comclr,<<= %r26,%r25,%r19
	ldi 1,%r19
	comiclr,= 0,%r28,%r20
	ldi 1,%r20
	and %r19,%r20,%r19
	comiclr,<> 0,%r19,%r0
	b,n .L593
	comib,<= 0,%r25,.L588
	nop
	ldi 0,%r19
	b,n .L590
.L591:
	comclr,<<= %r25,%r26,%r0
	b,n .L589
	sub %r26,%r25,%r26
	or %r19,%r28,%r19
.L589:
	extru %r28,30,31,%r28
	extru %r25,30,31,%r25
	b,n .L590
.L593:
	ldi 0,%r19
.L590:
	comib,<> 0,%r28,.L591
	nop
	comiclr,= 0,%r24,%r0
	b,n .L594
	copy %r19,%r28
	b,n .L592
.L594:
	copy %r26,%r28
.L592:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	extrs,< %r24,26,1,%r0
	b,n .L596
	ldi 0,%r28
	ldi 0,%r29
	subi 63,%r24,%r24
	mtsar %r24
	zvdep %r20,32,%r28
	b,n .L598
.L596:
	comiclr,<> 0,%r24,%r0
	b,n .L598
	subi 31,%r24,%r28
	mtsar %r28
	zvdep %r20,32,%r29
	zvdep %r19,32,%r19
	subi 32,%r24,%r24
	mtsar %r24
	vshd %r0,%r20,%r20
	or %r20,%r19,%r28
.L598:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	extrs,< %r24,26,1,%r0
	b,n .L601
	extrs %r19,0,1,%r28
	subi 63,%r24,%r24
	mtsar %r24
	vextrs %r19,32,%r29
	b,n .L603
.L601:
	comiclr,<> 0,%r24,%r0
	b,n .L603
	subi 31,%r24,%r21
	mtsar %r21
	vextrs %r19,32,%r28
	ldo -1(%r24),%r21
	mtsar %r21
	zvdep %r19,32,%r19
	mtsar %r24
	vshd %r0,%r20,%r20
	or %r19,%r20,%r29
.L603:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comclr,>>= %r28,%r26,%r0
	b,n .L612
	ldi 16,%r28
	b,n .L608
.L612:
	ldi 0,%r28
.L608:
	subi 16,%r28,%r19
	mtsar %r19
	vshd %r0,%r26,%r26
	zdepi -1,23,8,%r19
	and %r26,%r19,%r19
	comiclr,= 0,%r19,%r0
	b,n .L613
	ldi 8,%r19
	b,n .L609
.L613:
	ldi 0,%r19
.L609:
	subi 8,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 240,%r19
	and %r26,%r19,%r19
	comiclr,= 0,%r19,%r0
	b,n .L614
	ldi 4,%r19
	b,n .L610
.L614:
	ldi 0,%r19
.L610:
	subi 4,%r19,%r20
	mtsar %r20
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	ldi 12,%r19
	and %r26,%r19,%r19
	comiclr,= 0,%r19,%r0
	b,n .L615
	ldi 2,%r19
	b,n .L611
.L615:
	ldi 0,%r19
.L611:
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L618
	comclr,<= %r28,%r23,%r0
	b,n .L619
	comclr,>>= %r29,%r24,%r0
	b,n .L620
	comclr,<<= %r29,%r24,%r0
	b,n .L621
	ldi 1,%r28
	b,n .L617
.L618:
	ldi 0,%r28
	b,n .L617
.L619:
	ldi 2,%r28
	b,n .L617
.L620:
	ldi 0,%r28
	b,n .L617
.L621:
	ldi 2,%r28
.L617:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	comiclr,= 0,%r28,%r0
	b,n .L628
	ldi 16,%r28
	b,n .L624
.L628:
	ldi 0,%r28
.L624:
	mtsar %r28
	vshd %r0,%r26,%r26
	extru %r26,31,8,%r19
	comiclr,= 0,%r19,%r0
	b,n .L629
	ldi 8,%r19
	b,n .L625
.L629:
	ldi 0,%r19
.L625:
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,4,%r19
	comiclr,= 0,%r19,%r0
	b,n .L630
	ldi 4,%r19
	b,n .L626
.L630:
	ldi 0,%r19
.L626:
	mtsar %r19
	vshd %r0,%r26,%r26
	addl %r28,%r19,%r28
	extru %r26,31,2,%r19
	comiclr,= 0,%r19,%r0
	b,n .L631
	ldi 2,%r19
	b,n .L627
.L631:
	ldi 0,%r19
.L627:
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	extrs,< %r24,26,1,%r0
	b,n .L633
	ldi 0,%r28
	ldi 0,%r29
	mtsar %r24
	vshd %r0,%r19,%r29
	b,n .L635
.L633:
	comiclr,<> 0,%r24,%r0
	b,n .L635
	mtsar %r24
	vshd %r0,%r19,%r28
	ldo -1(%r24),%r21
	mtsar %r21
	zvdep %r19,32,%r19
	mtsar %r24
	vshd %r0,%r20,%r20
	or %r19,%r20,%r29
.L635:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	copy %r6,%r26
	bl __muldsi3,%r2
	nop
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
.L647:
	extru %r24,31,1,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L645
	fmpy,dbl %fr4,%fr5,%fr4
.L645:
	extru %r24,0,1,%r28
	addl %r28,%r24,%r24
	extrs %r24,30,31,%r24
	comiclr,<> 0,%r24,%r0
	b,n .L646
	fmpy,dbl %fr5,%fr5,%fr5
	b,n .L647
.L646:
	comiclr,<> 0,%r19,%r0
	b,n .L648
	ldil LR'.LC30,%r28
	ldo RR'.LC30(%r28),%r28
	fldds 0(%r28),%fr22
	fdiv,dbl %fr22,%fr4,%fr4
.L648:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
.L653:
	extru %r25,31,1,%r28
	comiclr,<> 0,%r28,%r0
	b,n .L651
	fmpy,sgl %fr22L,%fr4L,%fr22L
.L651:
	extru %r25,0,1,%r28
	addl %r28,%r25,%r25
	extrs %r25,30,31,%r25
	comiclr,<> 0,%r25,%r0
	b,n .L652
	fmpy,sgl %fr4L,%fr4L,%fr4L
	b,n .L653
.L652:
	comiclr,<> 0,%r19,%r0
	b,n .L655
	ldil LR'.LC32,%r28
	ldo RR'.LC32(%r28),%r28
	fldws 0(%r28),%fr4L
	fdiv,sgl %fr4L,%fr22L,%fr4L
	b,n .L654
.L655:
	fcpy,sgl %fr22L,%fr4L
.L654:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	b,n .L658
	comclr,<<= %r28,%r23,%r0
	b,n .L659
	comclr,>>= %r29,%r24,%r0
	b,n .L660
	comclr,<<= %r29,%r24,%r0
	b,n .L661
	ldi 1,%r28
	b,n .L657
.L658:
	ldi 0,%r28
	b,n .L657
.L659:
	ldi 2,%r28
	b,n .L657
.L660:
	ldi 0,%r28
	b,n .L657
.L661:
	ldi 2,%r28
.L657:
	ldo 64(%r3),%r30
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
	ldwm -64(%r30),%r3
	bv,n %r0(%r2)
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
