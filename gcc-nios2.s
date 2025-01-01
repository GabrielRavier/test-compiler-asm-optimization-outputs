	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
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
	ret
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
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
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
	ret
.L13:
	mov	r2, zero
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
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
	ret
.L19:
	mov	r2, zero
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
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
	ret
.L25:
	mov	r2, zero
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
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
	ret
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	andi	r5, r5, 0xff
	addi	r6, r6, -1
.L30:
	cmpnei	r3, r6, -1
	beq	r3, zero, .L34
	add	r3, r4, r6
	ldbu	r3, 0(r3)
	addi	r7, r6, -1
	beq	r5, r3, .L35
	mov	r6, r7
	br	.L30
.L35:
	add	r2, r4, r6
	ret
.L34:
	mov	r2, zero
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L37
.L38:
	stb	r5, 0(r3)
	addi	r3, r3, 1
.L37:
	bne	r3, r6, .L38
	ret
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	mov	r2, r4
	br	.L40
.L41:
	addi	r5, r5, 1
	addi	r2, r2, 1
.L40:
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L41
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	mov	r2, r4
	andi	r5, r5, 0xff
	br	.L43
.L45:
	addi	r2, r2, 1
.L43:
	ldb	r3, 0(r2)
	beq	r3, zero, .L44
	ldbu	r3, 0(r2)
	bne	r5, r3, .L45
.L44:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
.L48:
	ldb	r2, 0(r4)
	beq	r5, r2, .L49
	addi	r4, r4, 1
	ldb	r2, -1(r4)
	bne	r2, zero, .L48
	ret
.L49:
	mov	r2, r4
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	br	.L52
.L54:
	addi	r4, r4, 1
	addi	r5, r5, 1
.L52:
	ldb	r3, 0(r4)
	ldb	r2, 0(r5)
	bne	r3, r2, .L53
	bne	r3, zero, .L54
.L53:
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	sub	r2, r3, r2
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	mov	r2, r4
	br	.L56
.L57:
	addi	r2, r2, 1
.L56:
	ldb	r5, 0(r2)
	bne	r5, zero, .L57
	sub	r2, r2, r4
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L63
	addi	r6, r6, -1
	add	r2, r4, r6
.L60:
	ldbu	r3, 0(r4)
	beq	r3, zero, .L61
	ldbu	r3, 0(r5)
	beq	r3, zero, .L61
	beq	r4, r2, .L61
	ldbu	r6, 0(r4)
	bne	r6, r3, .L61
	addi	r4, r4, 1
	addi	r5, r5, 1
	br	.L60
.L61:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L63:
	mov	r2, zero
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	mov	r2, r4
	add	r6, r4, r6
	br	.L65
.L66:
	ldbu	r3, 1(r2)
	stb	r3, 0(r5)
	ldbu	r3, 0(r2)
	stb	r3, 1(r5)
	addi	r5, r5, 2
	addi	r2, r2, 2
.L65:
	sub	r3, r6, r2
	cmpgei	r3, r3, 2
	bne	r3, zero, .L66
	ret
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 26
	ret
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
	cmpltui	r2, r4, 128
	ret
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
	cmpeqi	r2, r4, 32
	bne	r2, zero, .L71
	cmpeqi	r2, r4, 9
	ret
.L71:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L74
	cmpeqi	r2, r4, 127
	ret
.L74:
	movi	r2, 1
	ret
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	ret
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
	addi	r2, r4, -33
	cmpltui	r2, r2, 94
	ret
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
	addi	r2, r4, -97
	cmpltui	r2, r2, 26
	ret
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
	addi	r2, r4, -32
	cmpltui	r2, r2, 95
	ret
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
	cmpeqi	r2, r4, 32
	bne	r2, zero, .L81
	addi	r2, r4, -9
	cmpltui	r2, r2, 5
	andi	r2, r2, 0xff
	ret
.L81:
	movi	r2, 1
	ret
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
	addi	r2, r4, -65
	cmpltui	r2, r2, 26
	ret
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L85
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L86
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L87
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r4, r2
	cmpltui	r2, r2, 3
	andi	r2, r2, 0xff
	ret
.L85:
	movi	r2, 1
	ret
.L86:
	movi	r2, 1
	ret
.L87:
	movi	r2, 1
	ret
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	ret
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
	cmpgeui	r2, r4, 255
	beq	r2, zero, .L96
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L92
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L93
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L94
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L95
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L96:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	ret
.L92:
	movi	r2, 1
	ret
.L93:
	movi	r2, 1
	ret
.L94:
	movi	r2, 1
	ret
.L95:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L99
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	andi	r2, r2, 0xff
	ret
.L99:
	movi	r2, 1
	ret
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
	andi	r2, r4, 127
	ret
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r18, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L104
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L105
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L108
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
.L102:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L104:
	mov	r2, r17
	mov	r3, r16
	br	.L102
.L105:
	mov	r2, r19
	mov	r3, r18
	br	.L102
.L108:
	mov	r2, zero
	mov	r3, zero
	br	.L102
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L113
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L114
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L117
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L111:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L113:
	mov	r2, r16
	br	.L111
.L114:
	mov	r2, r17
	br	.L111
.L117:
	mov	r2, zero
	br	.L111
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r18, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L125
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L126
	andhi	r2, r16, 32768
	andhi	r3, r18, 32768
	beq	r2, r3, .L121
	bge	r16, zero, .L127
	mov	r2, r19
	mov	r3, r18
	br	.L120
.L121:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L124
	mov	r17, r19
	mov	r16, r18
.L124:
	mov	r2, r17
	mov	r3, r16
.L120:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L125:
	mov	r2, r19
	mov	r3, r18
	br	.L120
.L126:
	mov	r2, r17
	mov	r3, r16
	br	.L120
.L127:
	mov	r2, r17
	mov	r3, r16
	br	.L120
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L135
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L136
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L131
	bge	r16, zero, .L137
	mov	r2, r17
	br	.L130
.L131:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	bge	r2, zero, .L134
	mov	r16, r17
.L134:
	mov	r2, r16
.L130:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L135:
	mov	r2, r17
	br	.L130
.L136:
	mov	r2, r16
	br	.L130
.L137:
	mov	r2, r16
	br	.L130
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r18, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L145
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L146
	andhi	r2, r16, 32768
	andhi	r3, r18, 32768
	beq	r2, r3, .L141
	bge	r16, zero, .L147
	mov	r2, r19
	mov	r3, r18
	br	.L140
.L141:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L144
	mov	r17, r19
	mov	r16, r18
.L144:
	mov	r2, r17
	mov	r3, r16
.L140:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L145:
	mov	r2, r19
	mov	r3, r18
	br	.L140
.L146:
	mov	r2, r17
	mov	r3, r16
	br	.L140
.L147:
	mov	r2, r17
	mov	r3, r16
	br	.L140
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r19, r4
	mov	r18, r5
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L155
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L156
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L151
	bge	r18, zero, .L157
	mov	r2, r19
	mov	r3, r18
	br	.L150
.L151:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L154
	mov	r17, r19
	mov	r16, r18
.L154:
	mov	r2, r17
	mov	r3, r16
.L150:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L155:
	mov	r2, r17
	mov	r3, r16
	br	.L150
.L156:
	mov	r2, r19
	mov	r3, r18
	br	.L150
.L157:
	mov	r2, r17
	mov	r3, r16
	br	.L150
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L165
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L166
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L161
	bge	r17, zero, .L167
	mov	r2, r17
	br	.L160
.L161:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	bge	r2, zero, .L164
	mov	r16, r17
.L164:
	mov	r2, r16
.L160:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L165:
	mov	r2, r16
	br	.L160
.L166:
	mov	r2, r17
	br	.L160
.L167:
	mov	r2, r16
	br	.L160
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r19, r4
	mov	r18, r5
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L175
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L176
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L171
	bge	r18, zero, .L177
	mov	r2, r19
	mov	r3, r18
	br	.L170
.L171:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L174
	mov	r17, r19
	mov	r16, r18
.L174:
	mov	r2, r17
	mov	r3, r16
.L170:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L175:
	mov	r2, r17
	mov	r3, r16
	br	.L170
.L176:
	mov	r2, r19
	mov	r3, r18
	br	.L170
.L177:
	mov	r2, r17
	mov	r3, r16
	br	.L170
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
	addi	r3, gp, %gprel(s.0)
	br	.L180
.L181:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
.L180:
	bne	r4, zero, .L181
	stb	zero, 0(r3)
	addi	r2, gp, %gprel(s.0)
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
	addi	r4, r4, -1
	stw	r4, %gprel(seed)(gp)
	stw	zero, %gprel(seed+4)(gp)
	ret
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	movhi	r6, 19605
	addi	r6, r6, 32557
	movhi	r7, 22610
	addi	r7, r7, -3027
	ldw	r4, %gprel(seed)(gp)
	ldw	r5, %gprel(seed+4)(gp)
	call	__muldi3
	addi	r4, r2, 1
	cmpltu	r2, r4, r2
	add	r2, r2, r3
	stw	r4, %gprel(seed)(gp)
	stw	r2, %gprel(seed+4)(gp)
	srli	r2, r2, 1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	beq	r5, zero, .L188
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L185
	stw	r4, 4(r2)
.L185:
	ret
.L188:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L190
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L190:
	ldw	r2, 4(r4)
	beq	r2, zero, .L189
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L189:
	ret
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	addi	sp, sp, -36
	stw	ra, 32(sp)
	stw	fp, 28(sp)
	stw	r21, 24(sp)
	stw	r20, 20(sp)
	stw	r19, 16(sp)
	stw	r18, 12(sp)
	stw	r17, 8(sp)
	stw	r16, 4(sp)
	mov	r20, r4
	stw	r5, 0(sp)
	mov	fp, r6
	mov	r18, r7
	ldw	r21, 36(sp)
	ldw	r19, 0(r6)
	mov	r17, r5
	mov	r16, zero
	br	.L193
.L194:
	addi	r16, r16, 1
.L193:
	beq	r16, r19, .L198
	mov	r5, r17
	mov	r4, r20
	callr	r21
	add	r17, r17, r18
	bne	r2, zero, .L194
	mul	r16, r16, r18
	ldw	r2, 0(sp)
	add	r2, r2, r16
	br	.L195
.L198:
	addi	r2, r19, 1
	stw	r2, 0(fp)
	mul	r4, r18, r19
	mov	r6, r18
	mov	r5, r20
	ldw	r2, 0(sp)
	add	r4, r2, r4
	call	memcpy
.L195:
	ldw	ra, 32(sp)
	ldw	fp, 28(sp)
	ldw	r21, 24(sp)
	ldw	r20, 20(sp)
	ldw	r19, 16(sp)
	ldw	r18, 12(sp)
	ldw	r17, 8(sp)
	ldw	r16, 4(sp)
	addi	sp, sp, 36
	ret
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r19, r4
	mov	r21, r5
	mov	r18, r7
	ldw	fp, 32(sp)
	ldw	r20, 0(r6)
	mov	r17, r5
	mov	r16, zero
	br	.L200
.L201:
	addi	r16, r16, 1
.L200:
	beq	r16, r20, .L205
	mov	r5, r17
	mov	r4, r19
	callr	fp
	add	r17, r17, r18
	bne	r2, zero, .L201
	mul	r7, r16, r18
	add	r2, r21, r7
	br	.L202
.L205:
	mov	r2, zero
.L202:
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
	mov	r2, r4
	blt	r4, zero, .L208
.L207:
	ret
.L208:
	sub	r2, zero, r4
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L210
.L211:
	addi	r16, r16, 1
.L210:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L211
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L217
	cmpnei	r2, r2, 45
	bne	r2, zero, .L218
	movi	r4, 1
.L212:
	addi	r16, r16, 1
.L213:
	mov	r2, zero
	br	.L214
.L217:
	mov	r4, zero
	br	.L212
.L218:
	mov	r4, zero
	br	.L213
.L215:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L214:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L215
	bne	r4, zero, .L216
	sub	r2, zero, r2
.L216:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L222
.L223:
	addi	r16, r16, 1
.L222:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L223
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L229
	cmpnei	r2, r2, 45
	bne	r2, zero, .L230
	movi	r4, 1
.L224:
	addi	r16, r16, 1
.L225:
	mov	r2, zero
	br	.L226
.L229:
	mov	r4, zero
	br	.L224
.L230:
	mov	r4, zero
	br	.L225
.L227:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L226:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L227
	bne	r4, zero, .L228
	sub	r2, zero, r2
.L228:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L234
.L235:
	addi	r16, r16, 1
.L234:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L235
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L241
	cmpnei	r2, r2, 45
	bne	r2, zero, .L242
	movi	r17, 1
.L236:
	addi	r16, r16, 1
.L237:
	mov	r4, zero
	mov	r5, zero
	br	.L238
.L241:
	mov	r17, zero
	br	.L236
.L242:
	mov	r17, zero
	br	.L237
.L239:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	addi	r16, r16, 1
	ldb	r4, -1(r16)
	addi	r4, r4, -48
	srai	r5, r4, 31
	sub	r4, r2, r4
	cmpltu	r2, r2, r4
	sub	r5, r3, r5
	sub	r5, r5, r2
.L238:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L239
	bne	r17, zero, .L243
	cmpne	r3, r4, zero
	sub	r5, zero, r5
	sub	r2, zero, r4
	sub	r3, r5, r3
.L240:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L243:
	mov	r2, r4
	mov	r3, r5
	br	.L240
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r20, r4
	mov	r19, r5
	mov	r17, r6
	mov	r18, r7
	ldw	r21, 28(sp)
	br	.L246
.L254:
	srli	r17, r17, 1
.L246:
	beq	r17, zero, .L253
	srli	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r5, r16
	mov	r4, r20
	callr	r21
	blt	r2, zero, .L254
	bge	zero, r2, .L251
	add	r19, r16, r18
	srli	r2, r17, 1
	addi	r17, r17, -1
	sub	r17, r17, r2
	br	.L246
.L253:
	mov	r2, zero
.L249:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L251:
	mov	r2, r16
	br	.L249
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
	mov	r20, r4
	mov	r19, r7
	ldw	fp, 32(sp)
	ldw	r21, 36(sp)
	mov	r17, r6
	mov	r18, r5
	br	.L256
.L258:
	srai	r17, r17, 1
.L256:
	beq	r17, zero, .L262
	srai	r16, r17, 1
	mul	r16, r16, r19
	add	r16, r18, r16
	mov	r6, r21
	mov	r5, r16
	mov	r4, r20
	callr	fp
	beq	r2, zero, .L260
	bge	zero, r2, .L258
	add	r18, r16, r19
	addi	r17, r17, -1
	br	.L258
.L262:
	mov	r2, zero
.L257:
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
.L260:
	mov	r2, r16
	br	.L257
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r18, r5
	call	__divsi3
	mov	r16, r2
	mov	r5, r18
	mov	r4, r17
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	mov	r2, r4
	mov	r3, r5
	blt	r5, zero, .L268
.L266:
	ret
.L268:
	cmpne	r3, r4, zero
	sub	r5, zero, r5
	sub	r2, zero, r4
	sub	r3, r5, r3
	ret
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi	sp, sp, -36
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r18, r5
	mov	r17, r6
	mov	r19, r7
	ldw	fp, 36(sp)
	mov	r6, r7
	mov	r7, fp
	mov	r4, r5
	mov	r5, r17
	call	__divdi3
	mov	r21, r2
	mov	r20, r3
	mov	r6, r19
	mov	r7, fp
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r21, 0(r16)
	stw	r20, 4(r16)
	stw	r2, 8(r16)
	stw	r3, 12(r16)
	mov	r2, r16
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 36
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	mov	r2, r4
	blt	r4, zero, .L273
.L272:
	ret
.L273:
	sub	r2, zero, r4
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r18, r5
	call	__divsi3
	mov	r16, r2
	mov	r5, r18
	mov	r4, r17
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	mov	r2, r4
	mov	r3, r5
	blt	r5, zero, .L279
.L277:
	ret
.L279:
	cmpne	r3, r4, zero
	sub	r5, zero, r5
	sub	r2, zero, r4
	sub	r3, r5, r3
	ret
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
	addi	sp, sp, -36
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r18, r5
	mov	r17, r6
	mov	r19, r7
	ldw	fp, 36(sp)
	mov	r6, r7
	mov	r7, fp
	mov	r4, r5
	mov	r5, r17
	call	__divdi3
	mov	r21, r2
	mov	r20, r3
	mov	r6, r19
	mov	r7, fp
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r21, 0(r16)
	stw	r20, 4(r16)
	stw	r2, 8(r16)
	stw	r3, 12(r16)
	mov	r2, r16
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 36
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	br	.L283
.L285:
	addi	r4, r4, 4
.L283:
	ldw	r2, 0(r4)
	beq	r2, zero, .L284
	bne	r5, r2, .L285
.L284:
	ldw	r2, 0(r4)
	beq	r2, zero, .L287
	mov	r2, r4
	ret
.L287:
	mov	r2, zero
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	br	.L289
.L291:
	addi	r4, r4, 4
	addi	r5, r5, 4
.L289:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L290
	beq	r3, zero, .L290
	ldw	r2, 0(r5)
	bne	r2, zero, .L291
.L290:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L293
	cmplt	r2, r2, r3
	ret
.L293:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L295:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L295
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	mov	r2, r4
	br	.L298
.L299:
	addi	r2, r2, 4
.L298:
	ldw	r3, 0(r2)
	bne	r3, zero, .L299
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.L301:
	beq	r6, zero, .L302
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L302
	beq	r3, zero, .L302
	ldw	r2, 0(r5)
	beq	r2, zero, .L302
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	br	.L301
.L302:
	beq	r6, zero, .L305
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L306
	cmplt	r2, r2, r3
	ret
.L305:
	mov	r2, zero
	ret
.L306:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	br	.L308
.L310:
	addi	r6, r6, -1
	addi	r4, r4, 4
.L308:
	beq	r6, zero, .L309
	ldw	r2, 0(r4)
	bne	r5, r2, .L310
.L309:
	beq	r6, zero, .L312
	mov	r2, r4
	ret
.L312:
	mov	r2, zero
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	br	.L314
.L316:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L314:
	beq	r6, zero, .L315
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L316
.L315:
	beq	r6, zero, .L318
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L319
	cmplt	r2, r2, r3
	ret
.L318:
	mov	r2, zero
	ret
.L319:
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov	r2, r4
	mov	r3, r4
	br	.L321
.L322:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r3)
.L321:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L322
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov	r2, r4
	beq	r4, r5, .L324
	sub	r3, r4, r5
	slli	r4, r6, 2
	bgeu	r3, r4, .L329
	mov	r6, r4
	br	.L326
.L327:
	add	r3, r5, r6
	ldw	r4, 0(r3)
	add	r3, r2, r6
	stw	r4, 0(r3)
.L326:
	addi	r6, r6, -4
	cmpnei	r3, r6, -4
	bne	r3, zero, .L327
	ret
.L328:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r4, -4(r5)
	stw	r4, -4(r3)
.L325:
	addi	r6, r6, -1
	cmpnei	r4, r6, -1
	bne	r4, zero, .L328
.L324:
	ret
.L329:
	mov	r3, r2
	br	.L325
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	mov	r3, r4
	br	.L331
.L332:
	addi	r3, r3, 4
	stw	r5, -4(r3)
.L331:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L332
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L334
	add	r2, r4, r6
	add	r5, r5, r6
	br	.L335
.L336:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
.L335:
	bne	r2, r4, .L336
	ret
.L334:
	beq	r4, r5, .L333
	add	r6, r5, r6
	mov	r2, r4
	br	.L338
.L339:
	addi	r2, r2, 1
	addi	r5, r5, 1
	ldbu	r3, -1(r2)
	stb	r3, -1(r5)
.L338:
	bne	r5, r6, .L339
.L333:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r8, r6, -32
	blt	r8, zero, .L341
	sll	r8, r4, r8
	mov	r2, zero
.L342:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L343
	srl	r7, r5, r7
	mov	r3, zero
.L344:
	or	r2, r7, r2
	or	r3, r3, r8
	ret
.L341:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r8, r5, r6
	or	r8, r2, r8
	sll	r2, r4, r6
	br	.L342
.L343:
	slli	r3, r5, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	sll	r3, r3, r7
	srl	r7, r4, r6
	or	r7, r3, r7
	srl	r3, r5, r6
	br	.L344
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L346
	srl	r8, r5, r8
	mov	r3, zero
.L347:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L348
	sll	r7, r4, r7
	mov	r2, zero
.L349:
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L346:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	br	.L347
.L348:
	srli	r2, r4, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	br	.L349
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
	rol	r2, r4, r5
	ret
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
	ror	r2, r4, r5
	ret
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	rol	r2, r4, r5
	ret
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	ror	r2, r4, r5
	ret
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
	andi	r4, r4, 0xffff
	sll	r2, r4, r5
	movi	r3, 16
	sub	r3, r3, r5
	srl	r4, r4, r3
	or	r2, r2, r4
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	andi	r4, r4, 0xffff
	srl	r2, r4, r5
	movi	r3, 16
	sub	r3, r3, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	andi	r4, r4, 0xff
	sll	r2, r4, r5
	movi	r3, 8
	sub	r3, r3, r5
	srl	r4, r4, r3
	or	r2, r2, r4
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	andi	r4, r4, 0xff
	srl	r2, r4, r5
	movi	r3, 8
	sub	r3, r3, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	andi	r2, r4, 65280
	srli	r2, r2, 8
	andi	r4, r4, 255
	slli	r4, r4, 8
	or	r2, r2, r4
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	srli	r3, r4, 24
	andhi	r2, r4, 255
	srli	r2, r2, 8
	or	r2, r2, r3
	andi	r3, r4, 65280
	slli	r3, r3, 8
	or	r2, r2, r3
	slli	r4, r4, 24
	or	r2, r2, r4
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	srli	r3, r5, 24
	andhi	r2, r5, 255
	srli	r2, r2, 8
	or	r2, r2, r3
	andi	r3, r5, 65280
	slli	r3, r3, 8
	or	r2, r2, r3
	slli	r5, r5, 24
	srli	r3, r4, 24
	andhi	r6, r4, 255
	srli	r6, r6, 8
	or	r3, r3, r6
	andi	r6, r4, 65280
	slli	r6, r6, 8
	or	r3, r3, r6
	slli	r4, r4, 24
	or	r2, r2, r5
	or	r3, r3, r4
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	mov	r2, zero
.L362:
	cmpnei	r3, r2, 32
	beq	r3, zero, .L366
	srl	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L367
	addi	r2, r2, 1
	br	.L362
.L367:
	addi	r2, r2, 1
	ret
.L366:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L372
	movi	r2, 1
	br	.L370
.L371:
	srai	r4, r4, 1
	addi	r2, r2, 1
.L370:
	andi	r3, r4, 1
	beq	r3, zero, .L371
	ret
.L372:
	mov	r2, zero
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	movhi	r5, 65408
	addi	r5, r5, -1
	call	__ltsf2
	blt	r2, zero, .L376
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L374:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L376:
	movi	r2, 1
	br	.L374
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L381
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L379:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L381:
	movi	r2, 1
	br	.L379
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L386
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L384:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L386:
	movi	r2, 1
	br	.L384
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r4, r5
	call	__floatsidf
	stw	r2, 0(r16)
	stw	r3, 4(r16)
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r18, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L391
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r2
	mov	r4, r18
	call	__eqsf2
	beq	r2, zero, .L391
	blt	r16, zero, .L397
	movhi	r17, 16384
	br	.L394
.L397:
	movhi	r17, 16128
	br	.L394
.L393:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L391
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L394:
	andi	r2, r16, 1
	beq	r2, zero, .L393
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L393
.L391:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r20, r4
	mov	r19, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L399
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r20
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L399
	blt	r16, zero, .L405
	mov	r18, zero
	movhi	r17, 16384
	br	.L402
.L405:
	mov	r18, zero
	movhi	r17, 16352
	br	.L402
.L401:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L399
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L402:
	andi	r2, r16, 1
	beq	r2, zero, .L401
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L401
.L399:
	mov	r2, r20
	mov	r3, r19
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r20, r4
	mov	r19, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L407
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r20
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L407
	blt	r16, zero, .L413
	mov	r18, zero
	movhi	r17, 16384
	br	.L410
.L413:
	mov	r18, zero
	movhi	r17, 16352
	br	.L410
.L409:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L407
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L410:
	andi	r2, r16, 1
	beq	r2, zero, .L409
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L409
.L407:
	mov	r2, r20
	mov	r3, r19
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L415
.L416:
	addi	r5, r5, 1
	ldbu	r8, -1(r5)
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	xor	r7, r7, r8
	stb	r7, -1(r3)
.L415:
	bne	r3, r6, .L416
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r18, r4
	mov	r17, r5
	mov	r16, r6
	call	strlen
	add	r2, r18, r2
	br	.L418
.L420:
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
.L418:
	beq	r16, zero, .L419
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L420
.L419:
	bne	r16, zero, .L421
	stb	zero, 0(r2)
.L421:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
.L424:
	beq	r2, r5, .L425
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L426
.L425:
	ret
.L426:
	addi	r2, r2, 1
	br	.L424
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L428:
	ldb	r2, 0(r4)
	beq	r2, zero, .L434
	mov	r3, r5
.L431:
	ldb	r6, 0(r3)
	beq	r6, zero, .L435
	addi	r3, r3, 1
	ldb	r7, -1(r3)
	ldb	r6, 0(r4)
	bne	r7, r6, .L431
	mov	r2, r4
	ret
.L435:
	addi	r4, r4, 1
	br	.L428
.L434:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L438
.L437:
	addi	r4, r4, 1
	ldb	r3, -1(r4)
	beq	r3, zero, .L441
.L438:
	ldb	r3, 0(r4)
	bne	r5, r3, .L437
	mov	r2, r4
	br	.L437
.L441:
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	mov	r4, r5
	call	strlen
	beq	r2, zero, .L446
	mov	r18, r2
	ldb	r19, 0(r17)
.L444:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	beq	r2, zero, .L449
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L447
	addi	r16, r16, 1
	br	.L444
.L449:
	mov	r2, zero
	br	.L443
.L446:
	mov	r2, r16
.L443:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L447:
	mov	r2, r16
	br	.L443
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r18, r7
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L464
.L451:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L461
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L453
	mov	r2, r17
	mov	r3, r16
.L454:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L464:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L451
.L453:
	mov	r2, r17
	xorhi	r3, r16, 32768
	br	.L454
.L461:
	mov	r2, r17
	mov	r3, r16
	br	.L454
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	sub	r18, r5, r7
	add	r18, r4, r18
	beq	r7, zero, .L470
	mov	r17, r6
	bltu	r5, r7, .L471
	addi	r19, r6, 1
	addi	r20, r7, -1
	br	.L467
.L468:
	addi	r16, r16, 1
.L467:
	bltu	r18, r16, .L474
	ldb	r3, 0(r16)
	ldb	r2, 0(r17)
	bne	r3, r2, .L468
	mov	r6, r20
	mov	r5, r19
	addi	r4, r16, 1
	call	memcmp
	bne	r2, zero, .L468
	mov	r2, r16
	br	.L466
.L474:
	mov	r2, zero
.L466:
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L470:
	mov	r2, r4
	br	.L466
.L471:
	mov	r2, zero
	br	.L466
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r6
	call	memcpy
	add	r2, r2, r16
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L498
	mov	r20, zero
.L478:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r17
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L499
	mov	r18, zero
	br	.L480
.L498:
	xorhi	r16, r16, 32768
	movi	r20, 1
	br	.L478
.L482:
	addi	r18, r18, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__muldf3
	mov	r17, r2
	mov	r16, r3
.L480:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r17
	mov	r5, r16
	call	__gedf2
	bge	r2, zero, .L482
.L483:
	stw	r18, 0(r19)
	beq	r20, zero, .L487
	xorhi	r16, r16, 32768
.L487:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L499:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L496
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__nedf2
	bne	r2, zero, .L491
	mov	r18, zero
	br	.L483
.L486:
	addi	r18, r18, -1
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__adddf3
	mov	r17, r2
	mov	r16, r3
.L485:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L486
	br	.L483
.L491:
	mov	r18, zero
	br	.L485
.L496:
	mov	r18, zero
	br	.L483
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r19, r6
	mov	r17, r7
	mov	r16, r4
	mov	r18, r5
	mov	r20, zero
	mov	r21, zero
	br	.L501
.L502:
	andi	r6, r16, 1
	mov	r7, zero
	mov	r4, r19
	mov	r5, r17
	call	__muldi3
	add	r2, r20, r2
	cmpltu	r5, r2, r20
	add	r3, r21, r3
	srli	r4, r19, 31
	slli	r17, r17, 1
	or	r17, r4, r17
	slli	r19, r19, 1
	slli	r4, r18, 31
	srli	r16, r16, 1
	or	r16, r4, r16
	srli	r18, r18, 1
	mov	r20, r2
	add	r21, r5, r3
.L501:
	or	r2, r16, r18
	bne	r2, zero, .L502
	mov	r2, r20
	mov	r3, r21
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r7, 33
	movi	r3, 1
	br	.L505
.L507:
	add	r5, r5, r5
	add	r3, r3, r3
.L505:
	bgeu	r5, r4, .L512
	addi	r7, r7, -1
	beq	r7, zero, .L513
	bge	r5, zero, .L507
	mov	r2, zero
	br	.L508
.L512:
	mov	r2, zero
	br	.L508
.L513:
	mov	r2, zero
	br	.L508
.L509:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L508:
	beq	r3, zero, .L515
	bltu	r4, r5, .L509
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L509
.L515:
	bne	r6, zero, .L516
.L511:
	ret
.L516:
	mov	r2, r4
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	andi	r2, r4, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	srai	r2, r2, 7
	xor	r4, r2, r4
	andi	r2, r4, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	beq	r2, zero, .L519
	addi	sp, sp, -4
	stw	ra, 0(sp)
	slli	r4, r2, 8
	call	__clzsi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L519:
	movi	r2, 7
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	srai	r2, r5, 31
	xor	r4, r2, r4
	xor	r5, r2, r5
	or	r2, r4, r5
	beq	r2, zero, .L527
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L527:
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	br	.L533
.L534:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r3, r2
.L533:
	bne	r4, zero, .L534
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r11, r6, 3
	movi	r2, -8
	and	r2, r6, r2
	bgeu	r4, r5, .L536
.L538:
	mov	r7, r5
	mov	r3, r4
	mov	r8, zero
	br	.L537
.L536:
	add	r3, r5, r6
	bltu	r3, r4, .L538
	br	.L539
.L540:
	ldw	r10, 0(r7)
	ldw	r9, 4(r7)
	stw	r10, 0(r3)
	stw	r9, 4(r3)
	addi	r8, r8, 1
	addi	r7, r7, 8
	addi	r3, r3, 8
.L537:
	bne	r8, r11, .L540
	br	.L541
.L542:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L541:
	bltu	r2, r6, .L542
	ret
.L544:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L539:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L544
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bgeu	r4, r5, .L546
.L548:
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
	br	.L547
.L546:
	add	r2, r5, r6
	bltu	r2, r4, .L548
	br	.L549
.L550:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
.L547:
	bne	r2, r8, .L550
	andi	r2, r6, 1
	beq	r2, zero, .L545
	addi	r6, r6, -1
	add	r5, r5, r6
	add	r4, r4, r6
	ldbu	r2, 0(r5)
	stb	r2, 0(r4)
	ret
.L552:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L549:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L552
.L545:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r9, r6, 2
	movi	r2, -4
	and	r2, r6, r2
	bgeu	r4, r5, .L554
.L556:
	mov	r3, r5
	mov	r7, r4
	slli	r9, r9, 2
	add	r9, r9, r5
	br	.L555
.L554:
	add	r3, r5, r6
	bltu	r3, r4, .L556
	br	.L557
.L558:
	ldw	r8, 0(r3)
	stw	r8, 0(r7)
	addi	r3, r3, 4
	addi	r7, r7, 4
.L555:
	bne	r3, r9, .L558
	br	.L559
.L560:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L559:
	bltu	r2, r6, .L560
	ret
.L562:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L557:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L562
	ret
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__modsi3
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__floatunsidf
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__floatunsisf
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__floatundidf
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__floatundisf
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__umodsi3
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
	movi	r5, 15
.L576:
	cmpnei	r3, r2, 16
	beq	r3, zero, .L577
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L577
	addi	r2, r2, 1
	br	.L576
.L577:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L580:
	cmpnei	r3, r2, 16
	beq	r3, zero, .L581
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L581
	addi	r2, r2, 1
	br	.L580
.L581:
	ret
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	movhi	r5, 18176
	call	__gesf2
	bge	r2, zero, .L590
	mov	r4, r16
	call	__fixsfsi
.L586:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L590:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L586
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
	br	.L592
.L593:
	sra	r5, r4, r3
	andi	r5, r5, 1
	addi	r3, r3, 1
	add	r2, r5, r2
.L592:
	cmpnei	r5, r3, 16
	bne	r5, zero, .L593
	andi	r2, r2, 1
	ret
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
	br	.L595
.L596:
	sra	r5, r4, r3
	andi	r5, r5, 1
	addi	r3, r3, 1
	add	r2, r5, r2
.L595:
	cmpnei	r5, r3, 16
	bne	r5, zero, .L596
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	br	.L598
.L599:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r3, r2
.L598:
	bne	r4, zero, .L599
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	beq	r4, zero, .L604
	mov	r2, zero
	br	.L602
.L603:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r4, r4, r4
	srli	r5, r5, 1
	add	r2, r3, r2
.L602:
	bne	r5, zero, .L603
	ret
.L604:
	mov	r2, zero
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r7, 33
	movi	r3, 1
	br	.L606
.L608:
	add	r5, r5, r5
	add	r3, r3, r3
.L606:
	bgeu	r5, r4, .L613
	addi	r7, r7, -1
	beq	r7, zero, .L614
	bge	r5, zero, .L608
	mov	r2, zero
	br	.L609
.L613:
	mov	r2, zero
	br	.L609
.L614:
	mov	r2, zero
	br	.L609
.L610:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L609:
	beq	r3, zero, .L616
	bltu	r4, r5, .L610
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L610
.L616:
	bne	r6, zero, .L617
.L612:
	ret
.L617:
	mov	r2, r4
	ret
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	call	__ltsf2
	blt	r2, zero, .L621
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L619:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L621:
	movi	r2, -1
	br	.L619
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r18, r7
	call	__ltdf2
	blt	r2, zero, .L626
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L624:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L626:
	movi	r2, -1
	br	.L624
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	mov	r6, r5
	srai	r7, r5, 31
	srai	r5, r4, 31
	call	__muldi3
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	mov	r6, r5
	mov	r7, zero
	mov	r5, zero
	call	__muldi3
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	blt	r5, zero, .L640
	mov	r7, zero
.L633:
	movi	r6, 33
	mov	r2, zero
	br	.L634
.L640:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L633
.L636:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r4, r4, r4
	srai	r5, r5, 1
	add	r2, r2, r3
.L634:
	beq	r5, zero, .L635
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L636
.L635:
	beq	r7, zero, .L637
	sub	r2, zero, r2
.L637:
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L647
	mov	r16, zero
.L642:
	blt	r5, zero, .L648
.L643:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L644
	sub	r2, zero, r2
.L644:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L647:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L642
.L648:
	sub	r5, zero, r5
	xori	r16, r16, 1
	br	.L643
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r2, r5
	blt	r4, zero, .L655
	mov	r16, zero
.L650:
	mov	r5, r2
	blt	r2, zero, .L656
.L651:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L652
	sub	r2, zero, r2
.L652:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L655:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L650
.L656:
	sub	r5, zero, r2
	br	.L651
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movi	r7, 17
	movi	r3, 1
	andi	r8, r4, 0xffff
.L658:
	andi	r2, r5, 0xffff
	bgeu	r2, r8, .L665
	addi	r7, r7, -1
	beq	r7, zero, .L666
	andi	r2, r5, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L668
	add	r5, r5, r5
	add	r3, r3, r3
	br	.L658
.L668:
	mov	r2, zero
	br	.L661
.L665:
	mov	r2, zero
	br	.L661
.L666:
	mov	r2, zero
	br	.L661
.L662:
	slli	r3, r3, 16
	srli	r3, r3, 17
	slli	r5, r5, 16
	srli	r5, r5, 17
.L661:
	andi	r7, r3, 0xffff
	beq	r7, zero, .L669
	andi	r7, r4, 0xffff
	andi	r8, r5, 0xffff
	bltu	r7, r8, .L662
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L662
.L669:
	bne	r6, zero, .L670
.L664:
	ret
.L670:
	mov	r2, r4
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r7, 33
	movi	r3, 1
	br	.L672
.L674:
	add	r5, r5, r5
	add	r3, r3, r3
.L672:
	bgeu	r5, r4, .L679
	addi	r7, r7, -1
	beq	r7, zero, .L680
	bge	r5, zero, .L674
	mov	r2, zero
	br	.L675
.L679:
	mov	r2, zero
	br	.L675
.L680:
	mov	r2, zero
	br	.L675
.L676:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L675:
	beq	r3, zero, .L682
	bltu	r4, r5, .L676
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L676
.L682:
	bne	r6, zero, .L683
.L678:
	ret
.L683:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L685
	mov	r2, zero
	addi	r6, r6, -32
	sll	r3, r4, r6
	ret
.L685:
	beq	r6, zero, .L688
	sll	r2, r4, r6
	sll	r3, r5, r6
	movi	r5, 32
	sub	r5, r5, r6
	srl	r4, r4, r5
	or	r3, r4, r3
	ret
.L688:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L690
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L690:
	beq	r6, zero, .L693
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L693:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli	r2, r5, 24
	srli	r8, r5, 8
	andi	r8, r8, 65280
	slli	r7, r5, 8
	andhi	r7, r7, 255
	slli	r5, r5, 24
	slli	r3, r4, 8
	srli	r9, r4, 24
	srli	r6, r4, 8
	slli	r4, r4, 24
	andi	r6, r6, 65280
	andhi	r3, r3, 255
	or	r2, r2, r8
	or	r2, r2, r7
	or	r4, r4, r9
	or	r4, r4, r6
	or	r2, r2, r5
	or	r3, r4, r3
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli	r5, r4, 24
	srli	r3, r4, 8
	andi	r3, r3, 65280
	slli	r2, r4, 8
	andhi	r2, r2, 255
	slli	r4, r4, 24
	or	r4, r4, r5
	or	r4, r4, r3
	or	r2, r4, r2
	ret
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	movui	r3, 65535
	cmpgeu	r3, r3, r4
	slli	r3, r3, 4
	movi	r2, 16
	sub	r2, r2, r3
	srl	r4, r4, r2
	andi	r2, r4, 65280
	cmpeq	r2, r2, zero
	slli	r2, r2, 3
	movi	r5, 8
	sub	r5, r5, r2
	srl	r4, r4, r5
	add	r3, r3, r2
	andi	r2, r4, 240
	cmpeq	r2, r2, zero
	slli	r2, r2, 2
	movi	r5, 4
	sub	r5, r5, r2
	srl	r4, r4, r5
	add	r3, r3, r2
	andi	r2, r4, 12
	cmpeq	r2, r2, zero
	add	r2, r2, r2
	movi	r5, 2
	sub	r6, r5, r2
	srl	r4, r4, r6
	add	r3, r3, r2
	andi	r2, r4, 2
	cmpeq	r2, r2, zero
	sub	r5, r5, r4
	mul	r2, r2, r5
	add	r2, r3, r2
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L699
	blt	r7, r5, .L700
	bltu	r4, r6, .L701
	bltu	r6, r4, .L702
	movi	r2, 1
	ret
.L699:
	mov	r2, zero
	ret
.L700:
	movi	r2, 2
	ret
.L701:
	mov	r2, zero
	ret
.L702:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__cmpdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	andi	r3, r4, 65535
	cmpeq	r3, r3, zero
	slli	r3, r3, 4
	srl	r4, r4, r3
	andi	r2, r4, 255
	cmpeq	r2, r2, zero
	slli	r2, r2, 3
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 15
	cmpeq	r2, r2, zero
	slli	r2, r2, 2
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 3
	cmpeq	r2, r2, zero
	add	r2, r2, r2
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
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L707
	mov	r3, zero
	addi	r6, r6, -32
	srl	r2, r5, r6
	ret
.L707:
	beq	r6, zero, .L710
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L710:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	andi	r3, r4, 65535
	andi	r7, r5, 65535
	mul	r2, r3, r7
	srli	r6, r2, 16
	srli	r4, r4, 16
	mul	r7, r4, r7
	add	r6, r6, r7
	srli	r7, r6, 16
	andi	r6, r6, 0xffff
	andi	r2, r2, 0xffff
	srli	r5, r5, 16
	mul	r3, r3, r5
	add	r6, r6, r3
	slli	r3, r6, 16
	srli	r6, r6, 16
	add	r6, r6, r7
	mul	r4, r4, r5
	add	r2, r3, r2
	add	r3, r4, r6
	ret
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r19, r4
	mov	r16, r5
	mov	r18, r6
	mov	r17, r7
	mov	r5, r6
	call	__muldsi3
	mul	r16, r16, r18
	mul	r17, r17, r19
	add	r16, r16, r17
	add	r3, r16, r3
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	cmpne	r3, r4, zero
	sub	r5, zero, r5
	sub	r2, zero, r4
	sub	r3, r5, r3
	ret
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	xor	r5, r5, r4
	srli	r2, r5, 16
	xor	r5, r5, r2
	srli	r2, r5, 8
	xor	r5, r5, r2
	srli	r2, r5, 4
	xor	r5, r5, r2
	andi	r5, r5, 15
	movi	r2, 27030
	sra	r2, r2, r5
	andi	r2, r2, 1
	ret
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
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
	ret
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli	r3, r5, 31
	srli	r2, r4, 1
	or	r2, r3, r2
	srli	r6, r5, 1
	movhi	r3, 21845
	addi	r3, r3, 21845
	and	r2, r2, r3
	and	r3, r6, r3
	sub	r2, r4, r2
	cmpltu	r4, r4, r2
	sub	r5, r5, r3
	sub	r5, r5, r4
	slli	r3, r5, 30
	srli	r4, r2, 2
	or	r4, r3, r4
	srli	r6, r5, 2
	movhi	r3, 13107
	addi	r3, r3, 13107
	and	r4, r4, r3
	and	r6, r6, r3
	and	r2, r2, r3
	and	r5, r5, r3
	add	r2, r4, r2
	cmpltu	r4, r2, r4
	add	r3, r6, r5
	add	r4, r4, r3
	slli	r5, r4, 28
	srli	r3, r2, 4
	or	r3, r5, r3
	srli	r5, r4, 4
	add	r2, r3, r2
	cmpltu	r3, r2, r3
	add	r4, r5, r4
	add	r3, r3, r4
	movhi	r4, 3855
	addi	r4, r4, 3855
	and	r2, r2, r4
	and	r3, r3, r4
	add	r3, r3, r2
	srli	r2, r3, 16
	add	r3, r3, r2
	srli	r2, r3, 8
	add	r2, r2, r3
	andi	r2, r2, 127
	ret
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
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
	ret
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r18, r4
	mov	r17, r5
	mov	r16, r6
	srli	r21, r6, 31
	mov	r20, zero
	movhi	r19, 16368
	br	.L722
.L720:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L721
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L722:
	andi	r2, r16, 1
	beq	r2, zero, .L720
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L720
.L721:
	beq	r21, zero, .L724
	mov	r6, r20
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
.L723:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L724:
	mov	r2, r20
	mov	r3, r19
	br	.L723
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	srli	r19, r5, 31
	movhi	r18, 16256
	br	.L729
.L727:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L728
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L729:
	andi	r2, r16, 1
	beq	r2, zero, .L727
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L727
.L728:
	beq	r19, zero, .L731
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
.L730:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L731:
	mov	r2, r18
	br	.L730
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L735
	bltu	r7, r5, .L736
	bltu	r4, r6, .L737
	bltu	r6, r4, .L738
	movi	r2, 1
	ret
.L735:
	mov	r2, zero
	ret
.L736:
	movi	r2, 2
	ret
.L737:
	mov	r2, zero
	ret
.L738:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__ucmpdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
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
