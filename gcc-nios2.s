	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	bgeu	r5, r4, .L2
	add	r3, r5, r6
	add	r6, r4, r6
	br	.L3
.L4:
	addi	r3, r3, -1
	addi	r6, r6, -1
	ldbu	r7, 0(r3)
	stb	r7, 0(r6)
.L3:
	bne	r3, r5, .L4
	br	.L5
.L2:
	beq	r4, r5, .L5
	add	r7, r4, r6
	mov	r3, r5
	mov	r6, r4
	br	.L6
.L7:
	addi	r3, r3, 1
	addi	r6, r6, 1
	ldbu	r4, -1(r3)
	stb	r4, -1(r6)
.L6:
	bne	r6, r7, .L7
.L5:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r6, r6, 0xff
	br	.L9
.L11:
	addi	r7, r7, -1
	addi	r5, r5, 1
	addi	r4, r4, 1
.L9:
	beq	r7, zero, .L10
	ldbu	r3, 0(r5)
	stb	r3, 0(r4)
	andi	r3, r3, 0xff
	bne	r6, r3, .L11
.L10:
	beq	r7, zero, .L13
	addi	r2, r4, 1
	br	.L12
.L13:
	mov	r2, zero
.L12:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r5, r5, 0xff
	br	.L15
.L17:
	addi	r4, r4, 1
	addi	r6, r6, -1
.L15:
	beq	r6, zero, .L16
	ldbu	r2, 0(r4)
	bne	r5, r2, .L17
.L16:
	beq	r6, zero, .L19
	mov	r2, r4
	br	.L18
.L19:
	mov	r2, zero
.L18:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L21
.L23:
	addi	r6, r6, -1
	addi	r4, r4, 1
	addi	r5, r5, 1
.L21:
	beq	r6, zero, .L22
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	beq	r3, r2, .L23
.L22:
	beq	r6, zero, .L25
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	br	.L24
.L25:
	mov	r2, zero
.L24:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L27
.L28:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r5)
	stb	r7, -1(r3)
.L27:
	bne	r3, r6, .L28
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r5, r5, 0xff
	addi	r6, r6, -1
	br	.L30
.L32:
	add	r3, r4, r6
	ldbu	r3, 0(r3)
	addi	r7, r6, -1
	bne	r5, r3, .L33
	add	r2, r4, r6
	br	.L31
.L33:
	mov	r6, r7
.L30:
	cmpnei	r3, r6, -1
	bne	r3, zero, .L32
	mov	r2, zero
.L31:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L35
.L36:
	stb	r5, 0(r3)
	addi	r3, r3, 1
.L35:
	bne	r3, r6, .L36
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	br	.L38
.L39:
	addi	r5, r5, 1
	addi	r2, r2, 1
.L38:
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L39
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	andi	r5, r5, 0xff
	br	.L41
.L43:
	addi	r2, r2, 1
.L41:
	ldb	r3, 0(r2)
	beq	r3, zero, .L42
	ldbu	r3, 0(r2)
	bne	r5, r3, .L43
.L42:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
.L46:
	ldb	r2, 0(r4)
	beq	r5, r2, .L47
	addi	r4, r4, 1
	ldb	r2, -1(r4)
	bne	r2, zero, .L46
	br	.L45
.L47:
	mov	r2, r4
.L45:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L50
.L52:
	addi	r4, r4, 1
	addi	r5, r5, 1
.L50:
	ldb	r3, 0(r4)
	ldb	r2, 0(r5)
	bne	r3, r2, .L51
	bne	r3, zero, .L52
.L51:
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	sub	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	br	.L54
.L55:
	addi	r2, r2, 1
.L54:
	ldb	r5, 0(r2)
	bne	r5, zero, .L55
	sub	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	beq	r6, zero, .L61
	addi	r6, r6, -1
	add	r2, r4, r6
	br	.L58
.L60:
	addi	r4, r4, 1
	addi	r5, r5, 1
.L58:
	ldbu	r3, 0(r4)
	beq	r3, zero, .L59
	ldbu	r3, 0(r5)
	beq	r3, zero, .L59
	beq	r4, r2, .L59
	ldbu	r6, 0(r4)
	beq	r6, r3, .L60
.L59:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	br	.L57
.L61:
	mov	r2, zero
.L57:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	add	r6, r4, r6
	br	.L63
.L64:
	ldbu	r3, 1(r2)
	stb	r3, 0(r5)
	ldbu	r3, 0(r2)
	stb	r3, 1(r5)
	addi	r5, r5, 2
	addi	r2, r2, 2
.L63:
	sub	r3, r6, r2
	cmpgei	r3, r3, 2
	bne	r3, zero, .L64
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 26
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpltui	r2, r4, 128
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpeqi	r2, r4, 32
	bne	r2, zero, .L69
	cmpeqi	r2, r4, 9
	br	.L68
.L69:
	movi	r2, 1
.L68:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpltui	r2, r4, 32
	bne	r2, zero, .L73
	cmpeqi	r2, r4, 127
	br	.L72
.L73:
	movi	r2, 1
.L72:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -33
	cmpltui	r2, r2, 94
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -97
	cmpltui	r2, r2, 26
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -32
	cmpltui	r2, r2, 95
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpeqi	r2, r4, 32
	bne	r2, zero, .L81
	addi	r2, r4, -9
	cmpgeui	r2, r2, 5
	cmpeq	r2, r2, zero
	br	.L80
.L81:
	movi	r2, 1
.L80:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -65
	cmpltui	r2, r2, 26
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpltui	r2, r4, 32
	bne	r2, zero, .L86
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L87
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L88
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r4, r2
	cmpgeui	r2, r2, 3
	cmpeq	r2, r2, zero
	br	.L85
.L86:
	movi	r2, 1
	br	.L85
.L87:
	movi	r2, 1
	br	.L85
.L88:
	movi	r2, 1
.L85:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpgeui	r2, r4, 255
	bne	r2, zero, .L92
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	br	.L93
.L92:
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L94
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L95
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L96
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L97
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	br	.L93
.L94:
	movi	r2, 1
	br	.L93
.L95:
	movi	r2, 1
	br	.L93
.L96:
	movi	r2, 1
	br	.L93
.L97:
	mov	r2, zero
.L93:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L101
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpgeui	r2, r2, 6
	cmpeq	r2, r2, zero
	br	.L100
.L101:
	movi	r2, 1
.L100:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r2, r4, 127
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L107
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L108
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	ble	r2, zero, .L111
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__subdf3
	mov	r4, r2
	mov	r5, r3
	br	.L105
.L107:
	mov	r4, r18
	mov	r5, r19
	br	.L105
.L108:
	mov	r4, r16
	mov	r5, r17
	br	.L105
.L111:
	mov	r4, zero
	mov	r5, zero
.L105:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L115
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L116
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L119
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
	br	.L113
.L115:
	mov	r2, r16
	br	.L113
.L116:
	mov	r2, r17
	br	.L113
.L119:
	mov	r2, zero
.L113:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L124
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L125
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L122
	bge	r19, zero, .L126
	mov	r4, r16
	mov	r5, r17
	br	.L121
.L122:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L129
	mov	r4, r16
	mov	r5, r17
	br	.L121
.L124:
	mov	r4, r16
	mov	r5, r17
	br	.L121
.L125:
	mov	r4, r18
	mov	r5, r19
	br	.L121
.L126:
	mov	r4, r18
	mov	r5, r19
	br	.L121
.L129:
	mov	r4, r18
	mov	r5, r19
.L121:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L134
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L135
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L132
	bge	r16, zero, .L136
	mov	r2, r17
	br	.L131
.L132:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	bge	r2, zero, .L139
	mov	r2, r17
	br	.L131
.L134:
	mov	r2, r17
	br	.L131
.L135:
	mov	r2, r16
	br	.L131
.L136:
	mov	r2, r16
	br	.L131
.L139:
	mov	r2, r16
.L131:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L144
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L145
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L142
	bge	r19, zero, .L146
	mov	r4, r16
	mov	r5, r17
	br	.L141
.L142:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L149
	mov	r4, r16
	mov	r5, r17
	br	.L141
.L144:
	mov	r4, r16
	mov	r5, r17
	br	.L141
.L145:
	mov	r4, r18
	mov	r5, r19
	br	.L141
.L146:
	mov	r4, r18
	mov	r5, r19
	br	.L141
.L149:
	mov	r4, r18
	mov	r5, r19
.L141:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L154
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L155
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L152
	bge	r19, zero, .L156
	mov	r4, r18
	mov	r5, r19
	br	.L151
.L152:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L159
	mov	r4, r18
	mov	r5, r19
	br	.L151
.L154:
	mov	r4, r16
	mov	r5, r17
	br	.L151
.L155:
	mov	r4, r18
	mov	r5, r19
	br	.L151
.L156:
	mov	r4, r16
	mov	r5, r17
	br	.L151
.L159:
	mov	r4, r16
	mov	r5, r17
.L151:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r17, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L164
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L165
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L162
	bge	r17, zero, .L166
	mov	r2, r17
	br	.L161
.L162:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	bge	r2, zero, .L169
	mov	r2, r17
	br	.L161
.L164:
	mov	r2, r16
	br	.L161
.L165:
	mov	r2, r17
	br	.L161
.L166:
	mov	r2, r16
	br	.L161
.L169:
	mov	r2, r16
.L161:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L174
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L175
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L172
	bge	r19, zero, .L176
	mov	r4, r18
	mov	r5, r19
	br	.L171
.L172:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L179
	mov	r4, r18
	mov	r5, r19
	br	.L171
.L174:
	mov	r4, r16
	mov	r5, r17
	br	.L171
.L175:
	mov	r4, r18
	mov	r5, r19
	br	.L171
.L176:
	mov	r4, r16
	mov	r5, r17
	br	.L171
.L179:
	mov	r4, r16
	mov	r5, r17
.L171:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r3, gp, %gprel(s.0)
	br	.L181
.L182:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
.L181:
	bne	r4, zero, .L182
	stb	zero, 0(r3)
	addi	r2, gp, %gprel(s.0)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	l64a, .-l64a
	.section	.sbss
	.type	seed, @object
	.size	seed, 8
	.align	2
seed:
	.zero	8
	.section	.text
	.align	2
	.global	srand
	.type	srand, @function
srand:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -1
	stw	r2, %gprel(seed)(gp)
	stw	zero, %gprel(seed+4)(gp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	ldw	r2, %gprel(seed)(gp)
	ldw	r3, %gprel(seed+4)(gp)
	movhi	r6, 19605
	addi	r6, r6, 32557
	movhi	r7, 22610
	addi	r7, r7, -3027
	mov	r4, r2
	mov	r5, r3
	call	__muldi3
	movi	r6, 1
	add	r4, r2, r6
	cmpltu	r2, r4, r2
	add	r2, r2, r3
	stw	r4, %gprel(seed)(gp)
	stw	r2, %gprel(seed+4)(gp)
	mov	r5, r2
	srli	r2, r5, 1
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	bne	r5, zero, .L186
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	br	.L185
.L186:
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L185
	stw	r4, 4(r2)
.L185:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ldw	r2, 0(r4)
	beq	r2, zero, .L189
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L189:
	ldw	r2, 4(r4)
	beq	r2, zero, .L188
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L188:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r20, 24(sp)
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	addi	fp, sp, 32
	mov	r20, r4
	stw	r5, -28(fp)
	stw	r6, -32(fp)
	mov	r18, r7
	ldw	r21, 8(fp)
	ldw	r19, 0(r6)
	mov	r17, r5
	mov	r16, zero
	br	.L192
.L195:
	mov	r5, r17
	mov	r4, r20
	callr	r21
	add	r17, r17, r18
	bne	r2, zero, .L193
	mul	r16, r16, r18
	ldw	r2, -28(fp)
	add	r2, r2, r16
	br	.L194
.L193:
	addi	r16, r16, 1
.L192:
	bne	r16, r19, .L195
	addi	r2, r19, 1
	ldw	r3, -32(fp)
	stw	r2, 0(r3)
	mul	r4, r18, r19
	mov	r6, r18
	mov	r5, r20
	ldw	r2, -28(fp)
	add	r4, r2, r4
	call	memcpy
.L194:
	addi	sp, fp, -24
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	addi	sp, sp, -36
	stw	ra, 32(sp)
	stw	fp, 28(sp)
	stw	r21, 24(sp)
	stw	r20, 20(sp)
	stw	r19, 16(sp)
	stw	r18, 12(sp)
	stw	r17, 8(sp)
	stw	r16, 4(sp)
	addi	fp, sp, 28
	mov	r19, r4
	stw	r5, -28(fp)
	mov	r18, r7
	ldw	r21, 8(fp)
	ldw	r20, 0(r6)
	mov	r17, r5
	mov	r16, zero
	br	.L197
.L200:
	mov	r5, r17
	mov	r4, r19
	callr	r21
	add	r17, r17, r18
	bne	r2, zero, .L198
	mul	r16, r16, r18
	ldw	r2, -28(fp)
	add	r2, r2, r16
	br	.L199
.L198:
	addi	r16, r16, 1
.L197:
	bne	r16, r20, .L200
	mov	r2, zero
.L199:
	addi	sp, fp, -24
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	bge	r4, zero, .L202
	sub	r2, zero, r4
.L202:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	br	.L204
.L205:
	addi	r16, r16, 1
.L204:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L205
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L211
	cmpnei	r2, r2, 45
	bne	r2, zero, .L212
	movi	r4, 1
	br	.L206
.L211:
	mov	r4, zero
.L206:
	addi	r16, r16, 1
	br	.L207
.L212:
	mov	r4, zero
.L207:
	mov	r2, zero
	br	.L208
.L209:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L208:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L209
	bne	r4, zero, .L210
	sub	r2, zero, r2
.L210:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	br	.L215
.L216:
	addi	r16, r16, 1
.L215:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L216
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L222
	cmpnei	r2, r2, 45
	bne	r2, zero, .L223
	movi	r4, 1
	br	.L217
.L222:
	mov	r4, zero
.L217:
	addi	r16, r16, 1
	br	.L218
.L223:
	mov	r4, zero
.L218:
	mov	r2, zero
	br	.L219
.L220:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L219:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L220
	bne	r4, zero, .L221
	sub	r2, zero, r2
.L221:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r16, r4
	br	.L226
.L227:
	addi	r16, r16, 1
.L226:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L227
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L233
	cmpnei	r2, r2, 45
	bne	r2, zero, .L234
	movi	r17, 1
	br	.L228
.L233:
	mov	r17, zero
.L228:
	addi	r16, r16, 1
	br	.L229
.L234:
	mov	r17, zero
.L229:
	mov	r8, zero
	mov	r9, zero
	br	.L230
.L231:
	movi	r6, 10
	mov	r7, zero
	mov	r4, r8
	mov	r5, r9
	call	__muldi3
	mov	r6, r2
	mov	r7, r3
	addi	r16, r16, 1
	ldb	r2, -1(r16)
	addi	r2, r2, -48
	mov	r18, r2
	srai	r19, r2, 31
	sub	r2, r6, r18
	cmpltu	r4, r6, r2
	sub	r3, r7, r19
	sub	r4, r3, r4
	mov	r8, r2
	mov	r9, r4
.L230:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L231
	bne	r17, zero, .L235
	mov	r2, zero
	sub	r6, r2, r8
	cmpltu	r2, r2, r6
	sub	r7, zero, r9
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
	br	.L232
.L235:
	mov	r4, r8
	mov	r5, r9
.L232:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 24
	mov	r20, r4
	mov	r19, r5
	mov	r17, r6
	mov	r18, r7
	ldw	r21, 8(fp)
	br	.L237
.L241:
	srli	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r5, r16
	mov	r4, r20
	callr	r21
	bge	r2, zero, .L238
	srli	r17, r17, 1
	br	.L237
.L238:
	bge	zero, r2, .L242
	add	r19, r16, r18
	srli	r2, r17, 1
	addi	r17, r17, -1
	sub	r17, r17, r2
.L237:
	bne	r17, zero, .L241
	mov	r2, zero
	br	.L240
.L242:
	mov	r2, r16
.L240:
	addi	sp, fp, -24
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 24
	mov	r20, r4
	mov	r19, r7
	ldw	r21, 8(fp)
	mov	r17, r6
	mov	r18, r5
	br	.L244
.L247:
	srai	r16, r17, 1
	mul	r16, r16, r19
	add	r16, r18, r16
	ldw	r6, 12(fp)
	mov	r5, r16
	mov	r4, r20
	callr	r21
	beq	r2, zero, .L248
	bge	zero, r2, .L246
	add	r18, r16, r19
	addi	r17, r17, -1
.L246:
	srai	r17, r17, 1
.L244:
	bne	r17, zero, .L247
	mov	r2, zero
	br	.L245
.L248:
	mov	r2, r16
.L245:
	addi	sp, fp, -24
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r17, r4
	mov	r18, r5
	call	__divsi3
	mov	r16, r2
	mov	r5, r18
	mov	r4, r17
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r2
	mov	r5, r3
	bge	r3, zero, .L251
	mov	r2, zero
	sub	r6, r2, r4
	cmpltu	r2, r2, r6
	sub	r7, zero, r5
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
.L251:
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi	sp, sp, -48
	stw	ra, 40(sp)
	stw	fp, 36(sp)
	stw	r20, 32(sp)
	stw	r19, 28(sp)
	stw	r18, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	addi	fp, sp, 36
	mov	r20, r4
	stw	r5, -28(fp)
	stw	r6, -24(fp)
	mov	r16, r7
	ldw	r17, 12(fp)
	mov	r6, r7
	mov	r7, r17
	mov	r4, r5
	ldw	r5, -24(fp)
	call	__divdi3
	mov	r18, r2
	mov	r19, r3
	stw	r2, -36(fp)
	stw	r3, -32(fp)
	mov	r6, r16
	mov	r7, r17
	ldw	r4, -28(fp)
	ldw	r5, -24(fp)
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	stw	r18, 0(r20)
	stw	r19, 4(r20)
	stw	r4, 8(r20)
	stw	r5, 12(r20)
	mov	r2, r20
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	bge	r4, zero, .L255
	sub	r2, zero, r4
.L255:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r17, r4
	mov	r18, r5
	call	__divsi3
	mov	r16, r2
	mov	r5, r18
	mov	r4, r17
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r2
	mov	r5, r3
	bge	r3, zero, .L258
	mov	r2, zero
	sub	r6, r2, r4
	cmpltu	r2, r2, r6
	sub	r7, zero, r5
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
.L258:
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
	addi	sp, sp, -48
	stw	ra, 40(sp)
	stw	fp, 36(sp)
	stw	r20, 32(sp)
	stw	r19, 28(sp)
	stw	r18, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	addi	fp, sp, 36
	mov	r20, r4
	stw	r5, -28(fp)
	stw	r6, -24(fp)
	mov	r16, r7
	ldw	r17, 12(fp)
	mov	r6, r7
	mov	r7, r17
	mov	r4, r5
	ldw	r5, -24(fp)
	call	__divdi3
	mov	r18, r2
	mov	r19, r3
	stw	r2, -36(fp)
	stw	r3, -32(fp)
	mov	r6, r16
	mov	r7, r17
	ldw	r4, -28(fp)
	ldw	r5, -24(fp)
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	stw	r18, 0(r20)
	stw	r19, 4(r20)
	stw	r4, 8(r20)
	stw	r5, 12(r20)
	mov	r2, r20
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L262
.L264:
	addi	r4, r4, 4
.L262:
	ldw	r2, 0(r4)
	beq	r2, zero, .L263
	bne	r5, r2, .L264
.L263:
	ldw	r2, 0(r4)
	beq	r2, zero, .L266
	mov	r2, r4
	br	.L265
.L266:
	mov	r2, zero
.L265:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L268
.L270:
	addi	r4, r4, 4
	addi	r5, r5, 4
.L268:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L269
	beq	r3, zero, .L269
	ldw	r2, 0(r5)
	bne	r2, zero, .L270
.L269:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L272
	cmplt	r2, r2, r3
	br	.L271
.L272:
	movi	r2, -1
.L271:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r4
.L274:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L274
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	br	.L277
.L278:
	addi	r2, r2, 4
.L277:
	ldw	r3, 0(r2)
	bne	r3, zero, .L278
	sub	r2, r2, r4
	srai	r2, r2, 2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L280
.L282:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L280:
	beq	r6, zero, .L281
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L281
	beq	r3, zero, .L281
	ldw	r2, 0(r5)
	bne	r2, zero, .L282
.L281:
	beq	r6, zero, .L284
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L285
	cmplt	r2, r2, r3
	br	.L283
.L284:
	mov	r2, zero
	br	.L283
.L285:
	movi	r2, -1
.L283:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L287
.L289:
	addi	r6, r6, -1
	addi	r4, r4, 4
.L287:
	beq	r6, zero, .L288
	ldw	r2, 0(r4)
	bne	r5, r2, .L289
.L288:
	beq	r6, zero, .L291
	mov	r2, r4
	br	.L290
.L291:
	mov	r2, zero
.L290:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L293
.L295:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L293:
	beq	r6, zero, .L294
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L295
.L294:
	beq	r6, zero, .L297
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L298
	cmplt	r2, r2, r3
	br	.L296
.L297:
	mov	r2, zero
	br	.L296
.L298:
	movi	r2, -1
.L296:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r4
	br	.L300
.L301:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r3)
.L300:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L301
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	beq	r4, r5, .L303
	sub	r3, r4, r5
	slli	r4, r6, 2
	bgeu	r3, r4, .L308
	mov	r6, r4
	br	.L305
.L306:
	add	r3, r5, r6
	ldw	r4, 0(r3)
	add	r3, r2, r6
	stw	r4, 0(r3)
.L305:
	addi	r6, r6, -4
	cmpnei	r3, r6, -4
	bne	r3, zero, .L306
	br	.L303
.L307:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r4, -4(r5)
	stw	r4, -4(r3)
	br	.L304
.L308:
	mov	r3, r2
.L304:
	addi	r6, r6, -1
	cmpnei	r4, r6, -1
	bne	r4, zero, .L307
.L303:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r4
	br	.L310
.L311:
	addi	r3, r3, 4
	stw	r5, -4(r3)
.L310:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L311
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	bgeu	r4, r5, .L313
	add	r2, r4, r6
	add	r5, r5, r6
	br	.L314
.L315:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
.L314:
	bne	r2, r4, .L315
	br	.L312
.L313:
	beq	r4, r5, .L312
	add	r6, r5, r6
	mov	r2, r4
	br	.L317
.L318:
	addi	r2, r2, 1
	addi	r5, r5, 1
	ldbu	r3, -1(r2)
	stb	r3, -1(r5)
.L317:
	bne	r5, r6, .L318
.L312:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r8, r4
	mov	r9, r5
	addi	r4, r6, -32
	blt	r4, zero, .L320
	mov	r2, zero
	sll	r3, r8, r4
	br	.L321
.L320:
	srli	r4, r8, 1
	movi	r2, 31
	sub	r2, r2, r6
	srl	r4, r4, r2
	sll	r3, r5, r6
	or	r3, r4, r3
	sll	r2, r8, r6
.L321:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L322
	mov	r5, zero
	srl	r4, r9, r7
	br	.L323
.L322:
	slli	r7, r9, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r4, 31
	sub	r4, r4, r6
	sll	r7, r7, r4
	srl	r4, r8, r6
	or	r4, r7, r4
	srl	r5, r9, r6
.L323:
	or	r6, r4, r2
	or	r7, r5, r3
	mov	r2, r6
	mov	r3, r7
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r8, r4
	mov	r9, r5
	addi	r4, r6, -32
	blt	r4, zero, .L325
	mov	r3, zero
	srl	r2, r5, r4
	br	.L326
.L325:
	slli	r4, r5, 1
	movi	r2, 31
	sub	r2, r2, r6
	sll	r4, r4, r2
	srl	r2, r8, r6
	or	r2, r4, r2
	srl	r3, r5, r6
.L326:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L327
	mov	r4, zero
	sll	r5, r8, r7
	br	.L328
.L327:
	srli	r7, r8, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r4, 31
	sub	r4, r4, r6
	srl	r7, r7, r4
	sll	r5, r9, r6
	or	r5, r7, r5
	sll	r4, r8, r6
.L328:
	or	r6, r4, r2
	or	r7, r5, r3
	mov	r2, r6
	mov	r3, r7
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	rol	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ror	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	rol	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ror	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xffff
	sll	r2, r4, r5
	movi	r3, 16
	sub	r3, r3, r5
	srl	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xffff
	srl	r2, r4, r5
	movi	r3, 16
	sub	r3, r3, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xff
	sll	r2, r4, r5
	movi	r3, 8
	sub	r3, r3, r5
	srl	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xff
	srl	r2, r4, r5
	movi	r3, 8
	sub	r3, r3, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r2, r4, 65280
	srli	r2, r2, 8
	andi	r4, r4, 255
	slli	r4, r4, 8
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r3, r4, 24
	andhi	r2, r4, 255
	srli	r2, r2, 8
	or	r2, r2, r3
	andi	r3, r4, 65280
	slli	r3, r3, 8
	or	r2, r2, r3
	slli	r4, r4, 24
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r12, r4
	mov	r13, r5
	andhi	r7, r5, 65280
	srli	r4, r7, 24
	andhi	r9, r13, 255
	srli	r6, r9, 8
	or	r2, r6, r4
	mov	r6, zero
	andi	r7, r13, 65280
	slli	r9, r7, 8
	srli	r4, r6, 24
	or	r4, r9, r4
	srli	r5, r7, 24
	or	r10, r2, r4
	mov	r11, r5
	mov	r6, zero
	andi	r7, r13, 255
	slli	r3, r7, 24
	srli	r4, r6, 8
	or	r4, r3, r4
	srli	r5, r7, 8
	or	r8, r10, r4
	or	r9, r11, r5
	andhi	r6, r12, 65280
	srli	r5, r6, 24
	slli	r4, r6, 8
	or	r6, r8, r4
	or	r7, r9, r5
	andhi	r8, r12, 255
	srli	r5, r8, 8
	slli	r4, r8, 24
	or	r8, r6, r4
	or	r9, r7, r5
	andi	r6, r12, 65280
	slli	r5, r6, 8
	or	r7, r9, r5
	andi	r4, r12, 255
	slli	r3, r4, 24
	or	r5, r7, r3
	mov	r2, r8
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L341
.L344:
	srl	r3, r4, r2
	andi	r3, r3, 1
	beq	r3, zero, .L342
	addi	r2, r2, 1
	br	.L343
.L342:
	addi	r2, r2, 1
.L341:
	cmpnei	r3, r2, 32
	bne	r3, zero, .L344
	mov	r2, zero
.L343:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	beq	r4, zero, .L349
	movi	r2, 1
	br	.L347
.L348:
	srai	r4, r4, 1
	addi	r2, r2, 1
.L347:
	andi	r3, r4, 1
	beq	r3, zero, .L348
	br	.L346
.L349:
	mov	r2, zero
.L346:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	movhi	r5, 65408
	addi	r5, r5, -1
	call	__ltsf2
	blt	r2, zero, .L353
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	br	.L351
.L353:
	movi	r2, 1
.L351:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L359
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	cmplt	r2, zero, r2
	br	.L357
.L359:
	movi	r2, 1
.L357:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L365
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	cmplt	r2, zero, r2
	br	.L363
.L365:
	movi	r2, 1
.L363:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	mov	r4, r5
	call	__floatsidf
	stw	r2, 0(r16)
	stw	r3, 4(r16)
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r18, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L370
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r2
	mov	r4, r18
	call	__eqsf2
	beq	r2, zero, .L370
	bge	r16, zero, .L374
	movhi	r17, 16128
	br	.L373
.L374:
	movhi	r17, 16384
.L373:
	andi	r2, r16, 1
	beq	r2, zero, .L372
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
.L372:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L370
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
	br	.L373
.L370:
	mov	r2, r18
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 20
	mov	r18, r4
	mov	r19, r5
	mov	r20, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L376
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r18
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L376
	bge	r20, zero, .L380
	mov	r16, zero
	movhi	r17, 16352
	br	.L379
.L380:
	mov	r16, zero
	movhi	r17, 16384
.L379:
	andi	r2, r20, 1
	beq	r2, zero, .L378
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
.L378:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L376
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L379
.L376:
	mov	r2, r18
	mov	r3, r19
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 20
	mov	r18, r4
	mov	r19, r5
	mov	r20, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L382
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r18
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L382
	bge	r20, zero, .L386
	mov	r16, zero
	movhi	r17, 16352
	br	.L385
.L386:
	mov	r16, zero
	movhi	r17, 16384
.L385:
	andi	r2, r20, 1
	beq	r2, zero, .L384
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
.L384:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L382
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L385
.L382:
	mov	r2, r18
	mov	r3, r19
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L388
.L389:
	addi	r5, r5, 1
	ldbu	r8, -1(r5)
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	xor	r7, r7, r8
	stb	r7, -1(r3)
.L388:
	bne	r3, r6, .L389
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r18, r4
	mov	r17, r5
	mov	r16, r6
	call	strlen
	add	r2, r18, r2
	br	.L391
.L393:
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
.L391:
	beq	r16, zero, .L392
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L393
.L392:
	bne	r16, zero, .L394
	stb	zero, 0(r2)
.L394:
	mov	r2, r18
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L396
.L398:
	addi	r2, r2, 1
.L396:
	beq	r2, r5, .L397
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L398
.L397:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L400
.L402:
	addi	r3, r3, 1
	ldb	r7, -1(r3)
	ldb	r6, 0(r4)
	bne	r7, r6, .L403
	br	.L404
.L405:
	mov	r3, r5
.L403:
	ldb	r6, 0(r3)
	bne	r6, zero, .L402
	addi	r4, r4, 1
.L400:
	ldb	r2, 0(r4)
	bne	r2, zero, .L405
	br	.L401
.L404:
	mov	r2, r4
.L401:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
.L408:
	ldb	r3, 0(r4)
	bne	r5, r3, .L407
	mov	r2, r4
.L407:
	addi	r4, r4, 1
	ldb	r3, -1(r4)
	bne	r3, zero, .L408
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r16, r4
	mov	r17, r5
	mov	r4, r5
	call	strlen
	mov	r18, r2
	beq	r2, zero, .L415
	ldb	r19, 0(r17)
	br	.L413
.L414:
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L416
	addi	r16, r16, 1
.L413:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	bne	r2, zero, .L414
	mov	r2, zero
	br	.L412
.L415:
	mov	r2, r16
	br	.L412
.L416:
	mov	r2, r16
.L412:
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r16, r4
	mov	r17, r5
	mov	r18, r6
	mov	r19, r7
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	bge	r2, zero, .L418
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	bgt	r2, zero, .L420
.L418:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	ble	r2, zero, .L428
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L429
.L420:
	mov	r4, r16
	xorhi	r5, r17, 32768
	br	.L421
.L428:
	mov	r4, r16
	mov	r5, r17
	br	.L421
.L429:
	mov	r4, r16
	mov	r5, r17
.L421:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 20
	mov	r16, r4
	mov	r17, r6
	sub	r18, r5, r7
	add	r18, r4, r18
	beq	r7, zero, .L435
	bltu	r5, r7, .L436
	addi	r20, r6, 1
	addi	r19, r7, -1
	br	.L432
.L434:
	ldb	r3, 0(r16)
	ldb	r2, 0(r17)
	bne	r3, r2, .L433
	mov	r6, r19
	mov	r5, r20
	addi	r4, r16, 1
	call	memcmp
	beq	r2, zero, .L437
.L433:
	addi	r16, r16, 1
.L432:
	bgeu	r18, r16, .L434
	mov	r2, zero
	br	.L431
.L435:
	mov	r2, r4
	br	.L431
.L436:
	mov	r2, zero
	br	.L431
.L437:
	mov	r2, r16
.L431:
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r6
	call	memcpy
	add	r2, r2, r16
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 20
	mov	r16, r4
	mov	r17, r5
	mov	r19, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	bge	r2, zero, .L456
	mov	r2, r16
	xorhi	r3, r17, 32768
	mov	r16, r2
	mov	r17, r3
	movi	r20, 1
	br	.L440
.L456:
	mov	r20, zero
.L440:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r16
	mov	r5, r17
	call	__gedf2
	bge	r2, zero, .L451
	br	.L457
.L444:
	addi	r18, r18, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L442
.L451:
	mov	r18, zero
.L442:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r16
	mov	r5, r17
	call	__gedf2
	bge	r2, zero, .L444
	br	.L445
.L457:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__ltdf2
	bge	r2, zero, .L458
	mov	r6, zero
	mov	r7, zero
	mov	r4, r16
	mov	r5, r17
	call	__nedf2
	bne	r2, zero, .L453
	mov	r18, zero
	br	.L445
.L448:
	addi	r18, r18, -1
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__adddf3
	mov	r16, r2
	mov	r17, r3
	br	.L447
.L453:
	mov	r18, zero
.L447:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__ltdf2
	blt	r2, zero, .L448
	br	.L445
.L458:
	mov	r18, zero
.L445:
	stw	r18, 0(r19)
	beq	r20, zero, .L449
	mov	r2, r16
	xorhi	r3, r17, 32768
	mov	r16, r2
	mov	r17, r3
.L449:
	mov	r2, r16
	mov	r3, r17
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r8, r4
	mov	r9, r5
	mov	r4, r6
	mov	r5, r7
	mov	r2, r8
	mov	r3, r9
	mov	r6, zero
	mov	r7, zero
	br	.L460
.L463:
	andi	r14, r2, 1
	beq	r14, zero, .L461
	add	r8, r6, r4
	cmpltu	ra, r8, r6
	add	r9, r7, r5
	add	ra, ra, r9
	mov	r6, r8
	mov	r7, ra
.L461:
	srli	r8, r4, 31
	slli	r11, r5, 1
	or	r11, r8, r11
	slli	r10, r4, 1
	mov	r4, r10
	mov	r5, r11
	slli	r8, r3, 31
	srli	r12, r2, 1
	or	r12, r8, r12
	srli	r13, r3, 1
	mov	r2, r12
	mov	r3, r13
.L460:
	or	r8, r2, r3
	bne	r8, zero, .L463
	mov	r2, r6
	mov	r3, r7
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r7, 33
	movi	r3, 1
	br	.L465
.L467:
	add	r5, r5, r5
	add	r3, r3, r3
.L465:
	bgeu	r5, r4, .L472
	addi	r7, r7, -1
	beq	r7, zero, .L473
	bge	r5, zero, .L467
	mov	r2, zero
	br	.L468
.L472:
	mov	r2, zero
	br	.L468
.L473:
	mov	r2, zero
	br	.L468
.L470:
	bltu	r4, r5, .L469
	sub	r4, r4, r5
	or	r2, r2, r3
.L469:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L468:
	bne	r3, zero, .L470
	beq	r6, zero, .L471
	mov	r2, r4
.L471:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	andi	r3, r4, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bge	r3, zero, .L476
	nor	r2, zero, r4
.L476:
	andi	r3, r2, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L478
	slli	r4, r3, 8
	call	__clzsi2
	addi	r2, r2, -1
	br	.L477
.L478:
	movi	r2, 7
.L477:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	bge	r5, zero, .L480
	nor	r4, zero, r2
	nor	r5, zero, r3
	mov	r2, r4
	mov	r3, r5
.L480:
	or	r4, r2, r3
	beq	r4, zero, .L484
	mov	r4, r2
	mov	r5, r3
	call	__clzdi2
	addi	r2, r2, -1
	br	.L482
.L484:
	movi	r2, 63
.L482:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L486
.L488:
	andi	r3, r4, 1
	beq	r3, zero, .L487
	add	r2, r2, r5
.L487:
	srli	r4, r4, 1
	add	r5, r5, r5
.L486:
	bne	r4, zero, .L488
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r11, r6, 3
	movi	r2, -8
	and	r2, r6, r2
	bgeu	r4, r5, .L490
.L492:
	mov	r7, r5
	mov	r3, r4
	mov	r10, zero
	br	.L491
.L490:
	add	r3, r5, r6
	bltu	r3, r4, .L492
	br	.L493
.L494:
	ldw	r8, 0(r7)
	ldw	r9, 4(r7)
	stw	r8, 0(r3)
	stw	r9, 4(r3)
	addi	r10, r10, 1
	addi	r7, r7, 8
	addi	r3, r3, 8
.L491:
	bne	r10, r11, .L494
	br	.L495
.L496:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L495:
	bltu	r2, r6, .L496
	br	.L489
.L498:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L493:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L498
.L489:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r8, r6, 1
	bgeu	r4, r5, .L500
.L502:
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
	br	.L501
.L500:
	add	r2, r5, r6
	bltu	r2, r4, .L502
	br	.L503
.L504:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
.L501:
	bne	r2, r8, .L504
	andi	r2, r6, 1
	beq	r2, zero, .L499
	addi	r6, r6, -1
	add	r5, r5, r6
	add	r4, r4, r6
	ldbu	r2, 0(r5)
	stb	r2, 0(r4)
	br	.L499
.L506:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L503:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L506
.L499:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r9, r6, 2
	movi	r2, -4
	and	r2, r6, r2
	bgeu	r4, r5, .L508
.L510:
	mov	r3, r5
	mov	r7, r4
	slli	r9, r9, 2
	add	r9, r9, r5
	br	.L509
.L508:
	add	r3, r5, r6
	bltu	r3, r4, .L510
	br	.L511
.L512:
	ldw	r8, 0(r3)
	stw	r8, 0(r7)
	addi	r3, r3, 4
	addi	r7, r7, 4
.L509:
	bne	r3, r9, .L512
	br	.L513
.L514:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L513:
	bltu	r2, r6, .L514
	br	.L507
.L516:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L511:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L516
.L507:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__modsi3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatunsidf
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatunsisf
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatundidf
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatundisf
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__umodsi3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	andi	r4, r4, 0xffff
	movi	r5, 15
	br	.L524
.L526:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L525
	addi	r2, r2, 1
.L524:
	cmpnei	r3, r2, 16
	bne	r3, zero, .L526
.L525:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	andi	r4, r4, 0xffff
	br	.L528
.L530:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L529
	addi	r2, r2, 1
.L528:
	cmpnei	r3, r2, 16
	bne	r3, zero, .L530
.L529:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	movhi	r5, 18176
	call	__gesf2
	blt	r2, zero, .L536
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L534
.L536:
	mov	r4, r16
	call	__fixsfsi
.L534:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
	br	.L538
.L540:
	sra	r5, r4, r3
	andi	r5, r5, 1
	beq	r5, zero, .L539
	addi	r2, r2, 1
.L539:
	addi	r3, r3, 1
.L538:
	cmpnei	r5, r3, 16
	bne	r5, zero, .L540
	andi	r2, r2, 1
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
	br	.L542
.L544:
	sra	r5, r4, r3
	andi	r5, r5, 1
	beq	r5, zero, .L543
	addi	r2, r2, 1
.L543:
	addi	r3, r3, 1
.L542:
	cmpnei	r5, r3, 16
	bne	r5, zero, .L544
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L546
.L548:
	andi	r3, r4, 1
	beq	r3, zero, .L547
	add	r2, r2, r5
.L547:
	srli	r4, r4, 1
	add	r5, r5, r5
.L546:
	bne	r4, zero, .L548
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	beq	r4, zero, .L554
	mov	r2, zero
	br	.L551
.L553:
	andi	r3, r5, 1
	beq	r3, zero, .L552
	add	r2, r2, r4
.L552:
	add	r4, r4, r4
	srli	r5, r5, 1
.L551:
	bne	r5, zero, .L553
	br	.L550
.L554:
	mov	r2, zero
.L550:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r7, 33
	movi	r3, 1
	br	.L556
.L558:
	add	r5, r5, r5
	add	r3, r3, r3
.L556:
	bgeu	r5, r4, .L563
	addi	r7, r7, -1
	beq	r7, zero, .L564
	bge	r5, zero, .L558
	mov	r2, zero
	br	.L559
.L563:
	mov	r2, zero
	br	.L559
.L564:
	mov	r2, zero
	br	.L559
.L561:
	bltu	r4, r5, .L560
	sub	r4, r4, r5
	or	r2, r2, r3
.L560:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L559:
	bne	r3, zero, .L561
	beq	r6, zero, .L562
	mov	r2, r4
.L562:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	call	__ltsf2
	blt	r2, zero, .L568
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	br	.L567
.L568:
	movi	r2, -1
.L567:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	call	__ltdf2
	blt	r2, zero, .L572
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	cmplt	r2, zero, r2
	br	.L571
.L572:
	movi	r2, -1
.L571:
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r7, r5
	srai	r5, r4, 31
	mov	r2, r7
	srai	r7, r7, 31
	mov	r6, r2
	call	__muldi3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r7, zero
	mov	r6, r5
	mov	r5, zero
	call	__muldi3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	bge	r5, zero, .L583
	sub	r5, zero, r5
	movi	r7, 1
	br	.L577
.L583:
	mov	r7, zero
.L577:
	movi	r6, 33
	mov	r2, zero
	br	.L578
.L581:
	andi	r3, r5, 1
	beq	r3, zero, .L579
	add	r2, r2, r4
.L579:
	add	r4, r4, r4
	srai	r5, r5, 1
.L578:
	beq	r5, zero, .L580
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L581
.L580:
	beq	r7, zero, .L582
	sub	r2, zero, r2
.L582:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	bge	r4, zero, .L589
	sub	r4, zero, r4
	movi	r16, 1
	br	.L586
.L589:
	mov	r16, zero
.L586:
	bge	r5, zero, .L587
	sub	r5, zero, r5
	xori	r16, r16, 1
.L587:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L588
	sub	r2, zero, r2
.L588:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	bge	r4, zero, .L594
	sub	r4, zero, r4
	movi	r16, 1
	br	.L591
.L594:
	mov	r16, zero
.L591:
	bge	r5, zero, .L592
	sub	r5, zero, r5
.L592:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L593
	sub	r2, zero, r2
.L593:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r7, 17
	movi	r3, 1
	andi	r8, r4, 0xffff
	br	.L596
.L598:
	add	r5, r5, r5
	add	r3, r3, r3
.L596:
	andi	r2, r5, 0xffff
	bgeu	r2, r8, .L603
	addi	r7, r7, -1
	beq	r7, zero, .L604
	andi	r2, r5, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	bge	r2, zero, .L598
	mov	r2, zero
	br	.L599
.L603:
	mov	r2, zero
	br	.L599
.L604:
	mov	r2, zero
	br	.L599
.L601:
	andi	r7, r4, 0xffff
	andi	r8, r5, 0xffff
	bltu	r7, r8, .L600
	sub	r4, r4, r5
	or	r2, r2, r3
.L600:
	slli	r3, r3, 16
	srli	r3, r3, 17
	slli	r5, r5, 16
	srli	r5, r5, 17
.L599:
	andi	r7, r3, 0xffff
	bne	r7, zero, .L601
	beq	r6, zero, .L602
	mov	r2, r4
.L602:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r7, 33
	movi	r3, 1
	br	.L607
.L609:
	add	r5, r5, r5
	add	r3, r3, r3
.L607:
	bgeu	r5, r4, .L614
	addi	r7, r7, -1
	beq	r7, zero, .L615
	bge	r5, zero, .L609
	mov	r2, zero
	br	.L610
.L614:
	mov	r2, zero
	br	.L610
.L615:
	mov	r2, zero
	br	.L610
.L612:
	bltu	r4, r5, .L611
	sub	r4, r4, r5
	or	r2, r2, r3
.L611:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L610:
	bne	r3, zero, .L612
	beq	r6, zero, .L613
	mov	r2, r4
.L613:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L618
	mov	r2, zero
	addi	r6, r6, -32
	sll	r3, r4, r6
	br	.L619
.L618:
	beq	r6, zero, .L621
	sll	r2, r4, r6
	sll	r7, r5, r6
	movi	r5, 32
	sub	r5, r5, r6
	srl	r4, r4, r5
	or	r3, r4, r7
.L619:
	mov	r4, r2
	mov	r5, r3
	br	.L620
.L621:
	mov	r4, r2
	mov	r5, r3
.L620:
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L623
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	br	.L624
.L623:
	beq	r6, zero, .L626
	sra	r3, r5, r6
	movi	r7, 32
	sub	r7, r7, r6
	sll	r5, r5, r7
	srl	r4, r4, r6
	or	r2, r5, r4
.L624:
	mov	r4, r2
	mov	r5, r3
	br	.L625
.L626:
	mov	r4, r2
	mov	r5, r3
.L625:
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	addi	sp, sp, -28
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 24
	mov	r8, r4
	mov	r9, r5
	srli	r18, r5, 24
	srli	r4, r9, 8
	andi	r16, r4, 65280
	slli	r7, r9, 8
	srli	r4, r8, 24
	or	r4, r7, r4
	andhi	r14, r4, 255
	slli	r6, r9, 24
	srli	r4, r8, 8
	or	r4, r6, r4
	andhi	r12, r4, 65280
	srli	r3, r8, 24
	or	r21, r3, r7
	slli	r20, r8, 8
	mov	r10, zero
	andi	r11, r21, 255
	srli	r3, r8, 8
	or	r5, r3, r6
	slli	r4, r8, 24
	mov	r6, zero
	andi	r7, r5, 65280
	mov	r2, zero
	andhi	r3, r20, 255
	mov	r9, r4
	mov	r5, r9
	or	r8, r18, r16
	mov	r9, r5
	or	r4, r8, r14
	mov	r5, r9
	or	r8, r4, r12
	mov	r9, r5
	or	r4, r8, r10
	or	r5, r9, r11
	or	r8, r4, r6
	or	r9, r5, r7
	or	r4, r8, r2
	or	r5, r9, r3
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -24
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r5, r4, 24
	srli	r3, r4, 8
	andi	r3, r3, 65280
	slli	r2, r4, 8
	andhi	r2, r2, 255
	slli	r4, r4, 24
	or	r4, r4, r5
	or	r4, r4, r3
	or	r2, r4, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movui	r2, 65535
	bltu	r2, r4, .L634
	movi	r3, 16
	br	.L630
.L634:
	mov	r3, zero
.L630:
	movi	r2, 16
	sub	r2, r2, r3
	srl	r4, r4, r2
	andi	r2, r4, 65280
	bne	r2, zero, .L635
	movi	r5, 8
	br	.L631
.L635:
	mov	r5, zero
.L631:
	movi	r2, 8
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 240
	bne	r2, zero, .L636
	movi	r5, 4
	br	.L632
.L636:
	mov	r5, zero
.L632:
	movi	r2, 4
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 12
	bne	r2, zero, .L637
	movi	r2, 2
	br	.L633
.L637:
	mov	r2, zero
.L633:
	movi	r5, 2
	sub	r6, r5, r2
	srl	r4, r4, r6
	add	r3, r3, r2
	andi	r2, r4, 2
	cmpeq	r2, r2, zero
	sub	r5, r5, r4
	mul	r2, r2, r5
	add	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r6
	mov	r5, r7
	bgt	r5, r3, .L640
	blt	r5, r3, .L641
	bgtu	r4, r2, .L642
	bltu	r4, r2, .L643
	movi	r2, 1
	br	.L639
.L640:
	mov	r2, zero
	br	.L639
.L641:
	movi	r2, 2
	br	.L639
.L642:
	mov	r2, zero
	br	.L639
.L643:
	movi	r2, 2
.L639:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__cmpdi2
	addi	r2, r2, -1
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r2, r4, 65535
	bne	r2, zero, .L650
	movi	r3, 16
	br	.L646
.L650:
	mov	r3, zero
.L646:
	srl	r4, r4, r3
	andi	r2, r4, 255
	bne	r2, zero, .L651
	movi	r2, 8
	br	.L647
.L651:
	mov	r2, zero
.L647:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 15
	bne	r2, zero, .L652
	movi	r2, 4
	br	.L648
.L652:
	mov	r2, zero
.L648:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 3
	bne	r2, zero, .L653
	movi	r2, 2
	br	.L649
.L653:
	mov	r2, zero
.L649:
	srl	r4, r4, r2
	andi	r4, r4, 3
	add	r3, r3, r2
	nor	r5, zero, r4
	andi	r5, r5, 1
	srli	r4, r4, 1
	movi	r2, 2
	sub	r2, r2, r4
	mul	r2, r2, r5
	add	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L655
	mov	r3, zero
	addi	r6, r6, -32
	srl	r2, r5, r6
	br	.L656
.L655:
	beq	r6, zero, .L658
	srl	r3, r5, r6
	movi	r7, 32
	sub	r7, r7, r6
	sll	r5, r5, r7
	srl	r4, r4, r6
	or	r2, r5, r4
.L656:
	mov	r4, r2
	mov	r5, r3
	br	.L657
.L658:
	mov	r4, r2
	mov	r5, r3
.L657:
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r8, r4, 65535
	andi	r9, r5, 65535
	mul	r3, r8, r9
	srli	r2, r3, 16
	andi	r3, r3, 65535
	srli	r4, r4, 16
	mul	r9, r4, r9
	add	r2, r2, r9
	slli	r9, r2, 16
	add	r6, r9, r3
	srli	r7, r2, 16
	srli	r2, r6, 16
	andi	r3, r6, 65535
	srli	r5, r5, 16
	mul	r8, r8, r5
	add	r2, r2, r8
	slli	r8, r2, 16
	add	r6, r8, r3
	srli	r2, r2, 16
	add	r2, r2, r7
	mul	r4, r4, r5
	add	r3, r4, r2
	mov	r2, r6
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r20, 24(sp)
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	addi	fp, sp, 32
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	stw	r4, -32(fp)
	stw	r5, -28(fp)
	mov	r5, r6
	call	__muldsi3
	mov	r7, r3
	mov	r4, r2
	mul	r3, r19, r16
	mul	r2, r17, r18
	add	r3, r3, r2
	add	r3, r3, r7
	mov	r6, r4
	mov	r2, r6
	addi	sp, fp, -24
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r6, r4
	mov	r7, r5
	mov	r2, zero
	sub	r4, r2, r6
	cmpltu	r3, r2, r4
	sub	r5, zero, r7
	sub	r3, r5, r3
	mov	r8, r4
	mov	r2, r8
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	xor	r2, r4, r5
	srli	r3, r2, 16
	xor	r2, r2, r3
	srli	r3, r2, 8
	xor	r2, r2, r3
	srli	r3, r2, 4
	xor	r2, r2, r3
	andi	r2, r2, 15
	movi	r3, 27030
	sra	r2, r3, r2
	andi	r2, r2, 1
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r2, r4, 16
	xor	r4, r2, r4
	srli	r2, r4, 8
	xor	r4, r4, r2
	srli	r2, r4, 4
	xor	r4, r4, r2
	andi	r4, r4, 15
	movi	r2, 27030
	sra	r2, r2, r4
	andi	r2, r2, 1
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r7, r5
	mov	r2, r4
	slli	r6, r5, 31
	srli	r4, r2, 1
	or	r4, r6, r4
	srli	r5, r7, 1
	movhi	r8, 21845
	addi	r8, r8, 21845
	and	r9, r4, r8
	and	r10, r5, r8
	sub	r4, r2, r9
	cmpltu	r6, r2, r4
	sub	r5, r7, r10
	sub	r6, r5, r6
	mov	r2, r4
	mov	r3, r6
	slli	r6, r6, 30
	srli	r4, r2, 2
	or	r4, r6, r4
	srli	r5, r3, 2
	movhi	r10, 13107
	addi	r10, r10, 13107
	and	r11, r4, r10
	and	r12, r5, r10
	and	r8, r2, r10
	and	r9, r3, r10
	add	r4, r11, r8
	cmpltu	r6, r4, r11
	add	r5, r12, r9
	add	r6, r6, r5
	mov	r3, r6
	slli	r6, r6, 28
	srli	r8, r4, 4
	or	r8, r6, r8
	srli	r9, r3, 4
	add	r6, r8, r4
	cmpltu	r4, r6, r8
	add	r7, r9, r3
	add	r4, r4, r7
	mov	r9, r4
	movhi	r4, 3855
	addi	r4, r4, 3855
	and	r2, r6, r4
	and	r3, r9, r4
	add	r4, r3, r2
	srli	r2, r4, 16
	add	r4, r4, r2
	srli	r2, r4, 8
	add	r2, r2, r4
	andi	r2, r2, 127
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r2, r4, 1
	movhi	r3, 21845
	addi	r3, r3, 21845
	and	r2, r2, r3
	sub	r4, r4, r2
	srli	r3, r4, 2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r3, r3, r2
	and	r4, r4, r2
	add	r4, r3, r4
	srli	r2, r4, 4
	add	r4, r2, r4
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r4, r4, r2
	srli	r2, r4, 16
	add	r4, r4, r2
	srli	r2, r4, 8
	add	r2, r2, r4
	andi	r2, r2, 63
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 24
	mov	r16, r4
	mov	r17, r5
	mov	r20, r6
	srli	r21, r6, 31
	mov	r18, zero
	movhi	r19, 16368
.L669:
	andi	r2, r20, 1
	beq	r2, zero, .L667
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
.L667:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L668
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L669
.L668:
	beq	r21, zero, .L671
	mov	r6, r18
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r4, r2
	mov	r5, r3
	br	.L670
.L671:
	mov	r4, r18
	mov	r5, r19
.L670:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -24
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r17, r4
	mov	r16, r5
	srli	r19, r5, 31
	movhi	r18, 16256
.L675:
	andi	r2, r16, 1
	beq	r2, zero, .L673
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
.L673:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L674
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
	br	.L675
.L674:
	beq	r19, zero, .L677
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	br	.L676
.L677:
	mov	r2, r18
.L676:
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r6
	mov	r5, r7
	bgtu	r5, r3, .L680
	bltu	r5, r3, .L681
	bgtu	r4, r2, .L682
	bltu	r4, r2, .L683
	movi	r2, 1
	br	.L679
.L680:
	mov	r2, zero
	br	.L679
.L681:
	movi	r2, 2
	br	.L679
.L682:
	mov	r2, zero
	br	.L679
.L683:
	movi	r2, 2
.L679:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__ucmpdi2
	addi	r2, r2, -1
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.sbss
	.type	s.0, @object
	.size	s.0, 7
	.align	0
s.0:
	.zero	7
	.global	__divsf3
	.global	__divdf3
	.global	__fixsfsi
	.global	__gesf2
	.global	__umodsi3
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__nedf2
	.global	__gedf2
	.global	__muldf3
	.global	__eqdf2
	.global	__adddf3
	.global	__mulsf3
	.global	__eqsf2
	.global	__addsf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__modsi3
	.global	__divsi3
	.global	__muldi3
	.global	__ltsf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
