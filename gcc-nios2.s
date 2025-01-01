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
	bne	r2, zero, .L75
	cmpeqi	r2, r4, 127
	ret
.L75:
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
	bne	r2, zero, .L83
	addi	r2, r4, -9
	cmpgeui	r2, r2, 5
	cmpeq	r2, r2, zero
	ret
.L83:
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
	bne	r2, zero, .L88
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L89
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L90
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r4, r2
	cmpgeui	r2, r2, 3
	cmpeq	r2, r2, zero
	ret
.L88:
	movi	r2, 1
	ret
.L89:
	movi	r2, 1
	ret
.L90:
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
	beq	r2, zero, .L101
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L96
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L97
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L98
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L99
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L101:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	ret
.L96:
	movi	r2, 1
	ret
.L97:
	movi	r2, 1
	ret
.L98:
	movi	r2, 1
	ret
.L99:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L104
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpgeui	r2, r2, 6
	cmpeq	r2, r2, zero
	ret
.L104:
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
	bne	r2, zero, .L110
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L111
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L114
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
.L108:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L110:
	mov	r2, r17
	mov	r3, r16
	br	.L108
.L111:
	mov	r2, r19
	mov	r3, r18
	br	.L108
.L114:
	mov	r2, zero
	mov	r3, zero
	br	.L108
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
	bne	r2, zero, .L119
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L120
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L123
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L117:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L119:
	mov	r2, r16
	br	.L117
.L120:
	mov	r2, r17
	br	.L117
.L123:
	mov	r2, zero
	br	.L117
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
	bne	r2, zero, .L129
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L130
	andhi	r2, r16, 32768
	andhi	r3, r18, 32768
	beq	r2, r3, .L127
	bge	r16, zero, .L131
	mov	r2, r19
	mov	r3, r18
.L126:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L127:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L134
	mov	r2, r19
	mov	r3, r18
	br	.L126
.L129:
	mov	r2, r19
	mov	r3, r18
	br	.L126
.L130:
	mov	r2, r17
	mov	r3, r16
	br	.L126
.L131:
	mov	r2, r17
	mov	r3, r16
	br	.L126
.L134:
	mov	r2, r17
	mov	r3, r16
	br	.L126
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
	bne	r2, zero, .L140
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L141
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L138
	bge	r16, zero, .L142
	mov	r2, r17
.L137:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L138:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	bge	r2, zero, .L145
	mov	r2, r17
	br	.L137
.L140:
	mov	r2, r17
	br	.L137
.L141:
	mov	r2, r16
	br	.L137
.L142:
	mov	r2, r16
	br	.L137
.L145:
	mov	r2, r16
	br	.L137
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
	bne	r2, zero, .L151
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L152
	andhi	r2, r16, 32768
	andhi	r3, r18, 32768
	beq	r2, r3, .L149
	bge	r16, zero, .L153
	mov	r2, r19
	mov	r3, r18
.L148:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L149:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L156
	mov	r2, r19
	mov	r3, r18
	br	.L148
.L151:
	mov	r2, r19
	mov	r3, r18
	br	.L148
.L152:
	mov	r2, r17
	mov	r3, r16
	br	.L148
.L153:
	mov	r2, r17
	mov	r3, r16
	br	.L148
.L156:
	mov	r2, r17
	mov	r3, r16
	br	.L148
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
	bne	r2, zero, .L162
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L163
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L160
	bge	r18, zero, .L164
	mov	r2, r19
	mov	r3, r18
.L159:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L160:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L167
	mov	r2, r19
	mov	r3, r18
	br	.L159
.L162:
	mov	r2, r17
	mov	r3, r16
	br	.L159
.L163:
	mov	r2, r19
	mov	r3, r18
	br	.L159
.L164:
	mov	r2, r17
	mov	r3, r16
	br	.L159
.L167:
	mov	r2, r17
	mov	r3, r16
	br	.L159
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
	bne	r2, zero, .L173
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L174
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L171
	bge	r17, zero, .L175
	mov	r2, r17
.L170:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L171:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	bge	r2, zero, .L178
	mov	r2, r17
	br	.L170
.L173:
	mov	r2, r16
	br	.L170
.L174:
	mov	r2, r17
	br	.L170
.L175:
	mov	r2, r16
	br	.L170
.L178:
	mov	r2, r16
	br	.L170
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
	bne	r2, zero, .L184
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L185
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L182
	bge	r18, zero, .L186
	mov	r2, r19
	mov	r3, r18
.L181:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L182:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L189
	mov	r2, r19
	mov	r3, r18
	br	.L181
.L184:
	mov	r2, r17
	mov	r3, r16
	br	.L181
.L185:
	mov	r2, r19
	mov	r3, r18
	br	.L181
.L186:
	mov	r2, r17
	mov	r3, r16
	br	.L181
.L189:
	mov	r2, r17
	mov	r3, r16
	br	.L181
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
	br	.L192
.L193:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
.L192:
	bne	r4, zero, .L193
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
	beq	r5, zero, .L200
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L197
	stw	r4, 4(r2)
.L197:
	ret
.L200:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L202
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L202:
	ldw	r2, 4(r4)
	beq	r2, zero, .L201
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L201:
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
	br	.L205
.L206:
	addi	r16, r16, 1
.L205:
	beq	r16, r19, .L210
	mov	r5, r17
	mov	r4, r20
	callr	r21
	add	r17, r17, r18
	bne	r2, zero, .L206
	mul	r16, r16, r18
	ldw	r2, 0(sp)
	add	r2, r2, r16
	br	.L207
.L210:
	addi	r2, r19, 1
	stw	r2, 0(fp)
	mul	r4, r18, r19
	mov	r6, r18
	mov	r5, r20
	ldw	r2, 0(sp)
	add	r4, r2, r4
	call	memcpy
.L207:
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
	br	.L212
.L213:
	addi	r16, r16, 1
.L212:
	beq	r16, r20, .L217
	mov	r5, r17
	mov	r4, r19
	callr	fp
	add	r17, r17, r18
	bne	r2, zero, .L213
	mul	r7, r16, r18
	add	r2, r21, r7
	br	.L214
.L217:
	mov	r2, zero
.L214:
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
	blt	r4, zero, .L220
.L219:
	ret
.L220:
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
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -8
	stw	ra, 4(sp)
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
	movi	r4, 1
.L236:
	addi	r16, r16, 1
.L237:
	mov	r2, zero
	br	.L238
.L241:
	mov	r4, zero
	br	.L236
.L242:
	mov	r4, zero
	br	.L237
.L239:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L238:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L239
	bne	r4, zero, .L240
	sub	r2, zero, r2
.L240:
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
	br	.L246
.L247:
	addi	r16, r16, 1
.L246:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L247
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L253
	cmpnei	r2, r2, 45
	bne	r2, zero, .L254
	movi	r17, 1
.L248:
	addi	r16, r16, 1
.L249:
	mov	r4, zero
	mov	r5, zero
	br	.L250
.L253:
	mov	r17, zero
	br	.L248
.L254:
	mov	r17, zero
	br	.L249
.L251:
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
.L250:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L251
	bne	r17, zero, .L255
	cmpne	r3, r4, zero
	sub	r5, zero, r5
	sub	r2, zero, r4
	sub	r3, r5, r3
.L252:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L255:
	mov	r2, r4
	mov	r3, r5
	br	.L252
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
	br	.L258
.L266:
	srli	r17, r17, 1
.L258:
	beq	r17, zero, .L265
	srli	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r5, r16
	mov	r4, r20
	callr	r21
	blt	r2, zero, .L266
	bge	zero, r2, .L263
	add	r19, r16, r18
	srli	r2, r17, 1
	addi	r17, r17, -1
	sub	r17, r17, r2
	br	.L258
.L265:
	mov	r2, zero
.L261:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L263:
	mov	r2, r16
	br	.L261
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
	br	.L268
.L270:
	srai	r17, r17, 1
.L268:
	beq	r17, zero, .L274
	srai	r16, r17, 1
	mul	r16, r16, r19
	add	r16, r18, r16
	mov	r6, r21
	mov	r5, r16
	mov	r4, r20
	callr	fp
	beq	r2, zero, .L272
	bge	zero, r2, .L270
	add	r18, r16, r19
	addi	r17, r17, -1
	br	.L270
.L274:
	mov	r2, zero
.L269:
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
.L272:
	mov	r2, r16
	br	.L269
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
	blt	r5, zero, .L280
.L278:
	ret
.L280:
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
	blt	r4, zero, .L285
.L284:
	ret
.L285:
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
	blt	r5, zero, .L291
.L289:
	ret
.L291:
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
	br	.L295
.L297:
	addi	r4, r4, 4
.L295:
	ldw	r2, 0(r4)
	beq	r2, zero, .L296
	bne	r5, r2, .L297
.L296:
	ldw	r2, 0(r4)
	beq	r2, zero, .L299
	mov	r2, r4
	ret
.L299:
	mov	r2, zero
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	br	.L301
.L303:
	addi	r4, r4, 4
	addi	r5, r5, 4
.L301:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L302
	beq	r3, zero, .L302
	ldw	r2, 0(r5)
	bne	r2, zero, .L303
.L302:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L305
	cmplt	r2, r2, r3
	ret
.L305:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L307:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L307
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	mov	r2, r4
	br	.L310
.L311:
	addi	r2, r2, 4
.L310:
	ldw	r3, 0(r2)
	bne	r3, zero, .L311
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.L313:
	beq	r6, zero, .L314
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L314
	beq	r3, zero, .L314
	ldw	r2, 0(r5)
	beq	r2, zero, .L314
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	br	.L313
.L314:
	beq	r6, zero, .L317
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L318
	cmplt	r2, r2, r3
	ret
.L317:
	mov	r2, zero
	ret
.L318:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	br	.L320
.L322:
	addi	r6, r6, -1
	addi	r4, r4, 4
.L320:
	beq	r6, zero, .L321
	ldw	r2, 0(r4)
	bne	r5, r2, .L322
.L321:
	beq	r6, zero, .L324
	mov	r2, r4
	ret
.L324:
	mov	r2, zero
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	br	.L326
.L328:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L326:
	beq	r6, zero, .L327
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L328
.L327:
	beq	r6, zero, .L330
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L331
	cmplt	r2, r2, r3
	ret
.L330:
	mov	r2, zero
	ret
.L331:
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov	r2, r4
	mov	r3, r4
	br	.L333
.L334:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r3)
.L333:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L334
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov	r2, r4
	beq	r4, r5, .L336
	sub	r3, r4, r5
	slli	r4, r6, 2
	bgeu	r3, r4, .L341
	mov	r6, r4
	br	.L338
.L339:
	add	r3, r5, r6
	ldw	r4, 0(r3)
	add	r3, r2, r6
	stw	r4, 0(r3)
.L338:
	addi	r6, r6, -4
	cmpnei	r3, r6, -4
	bne	r3, zero, .L339
	ret
.L340:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r4, -4(r5)
	stw	r4, -4(r3)
.L337:
	addi	r6, r6, -1
	cmpnei	r4, r6, -1
	bne	r4, zero, .L340
.L336:
	ret
.L341:
	mov	r3, r2
	br	.L337
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	mov	r3, r4
	br	.L343
.L344:
	addi	r3, r3, 4
	stw	r5, -4(r3)
.L343:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L344
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L346
	add	r2, r4, r6
	add	r5, r5, r6
	br	.L347
.L348:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
.L347:
	bne	r2, r4, .L348
	ret
.L346:
	beq	r4, r5, .L345
	add	r6, r5, r6
	mov	r2, r4
	br	.L350
.L351:
	addi	r2, r2, 1
	addi	r5, r5, 1
	ldbu	r3, -1(r2)
	stb	r3, -1(r5)
.L350:
	bne	r5, r6, .L351
.L345:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r8, r6, -32
	blt	r8, zero, .L353
	sll	r8, r4, r8
	mov	r2, zero
.L354:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L355
	srl	r7, r5, r7
	mov	r3, zero
.L356:
	or	r2, r7, r2
	or	r3, r3, r8
	ret
.L353:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r8, r5, r6
	or	r8, r2, r8
	sll	r2, r4, r6
	br	.L354
.L355:
	slli	r3, r5, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	sll	r3, r3, r7
	srl	r7, r4, r6
	or	r7, r3, r7
	srl	r3, r5, r6
	br	.L356
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L358
	srl	r8, r5, r8
	mov	r3, zero
.L359:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L360
	sll	r7, r4, r7
	mov	r2, zero
.L361:
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L358:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	br	.L359
.L360:
	srli	r2, r4, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	br	.L361
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
.L374:
	cmpnei	r3, r2, 32
	beq	r3, zero, .L378
	srl	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L379
	addi	r2, r2, 1
	br	.L374
.L379:
	addi	r2, r2, 1
	ret
.L378:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L384
	movi	r2, 1
	br	.L382
.L383:
	srai	r4, r4, 1
	addi	r2, r2, 1
.L382:
	andi	r3, r4, 1
	beq	r3, zero, .L383
	ret
.L384:
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
	blt	r2, zero, .L388
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L386:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L388:
	movi	r2, 1
	br	.L386
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
	blt	r2, zero, .L395
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L393:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L395:
	movi	r2, 1
	br	.L393
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
	blt	r2, zero, .L402
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L400:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L402:
	movi	r2, 1
	br	.L400
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
	bne	r2, zero, .L409
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r2
	mov	r4, r18
	call	__eqsf2
	beq	r2, zero, .L409
	blt	r16, zero, .L415
	movhi	r17, 16384
	br	.L412
.L415:
	movhi	r17, 16128
	br	.L412
.L411:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L409
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L412:
	andi	r2, r16, 1
	beq	r2, zero, .L411
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L411
.L409:
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
	bne	r2, zero, .L417
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
	beq	r2, zero, .L417
	blt	r16, zero, .L423
	mov	r18, zero
	movhi	r17, 16384
	br	.L420
.L423:
	mov	r18, zero
	movhi	r17, 16352
	br	.L420
.L419:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L417
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L420:
	andi	r2, r16, 1
	beq	r2, zero, .L419
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L419
.L417:
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
	bne	r2, zero, .L425
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
	beq	r2, zero, .L425
	blt	r16, zero, .L431
	mov	r18, zero
	movhi	r17, 16384
	br	.L428
.L431:
	mov	r18, zero
	movhi	r17, 16352
	br	.L428
.L427:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L425
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L428:
	andi	r2, r16, 1
	beq	r2, zero, .L427
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L427
.L425:
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
	br	.L433
.L434:
	addi	r5, r5, 1
	ldbu	r8, -1(r5)
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	xor	r7, r7, r8
	stb	r7, -1(r3)
.L433:
	bne	r3, r6, .L434
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
	br	.L436
.L438:
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
.L436:
	beq	r16, zero, .L437
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L438
.L437:
	bne	r16, zero, .L439
	stb	zero, 0(r2)
.L439:
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
.L442:
	beq	r2, r5, .L443
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L444
.L443:
	ret
.L444:
	addi	r2, r2, 1
	br	.L442
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L446:
	ldb	r2, 0(r4)
	beq	r2, zero, .L452
	mov	r3, r5
.L449:
	ldb	r6, 0(r3)
	beq	r6, zero, .L453
	addi	r3, r3, 1
	ldb	r7, -1(r3)
	ldb	r6, 0(r4)
	bne	r7, r6, .L449
	mov	r2, r4
	ret
.L453:
	addi	r4, r4, 1
	br	.L446
.L452:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L456
.L455:
	addi	r4, r4, 1
	ldb	r3, -1(r4)
	beq	r3, zero, .L459
.L456:
	ldb	r3, 0(r4)
	bne	r5, r3, .L455
	mov	r2, r4
	br	.L455
.L459:
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
	beq	r2, zero, .L464
	mov	r18, r2
	ldb	r19, 0(r17)
.L462:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	beq	r2, zero, .L467
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L465
	addi	r16, r16, 1
	br	.L462
.L467:
	mov	r2, zero
	br	.L461
.L464:
	mov	r2, r16
.L461:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L465:
	mov	r2, r16
	br	.L461
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
	blt	r2, zero, .L482
.L469:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L479
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L471
	mov	r2, r17
	mov	r3, r16
.L472:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L482:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L469
.L471:
	mov	r2, r17
	xorhi	r3, r16, 32768
	br	.L472
.L479:
	mov	r2, r17
	mov	r3, r16
	br	.L472
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
	beq	r7, zero, .L488
	mov	r17, r6
	bltu	r5, r7, .L489
	addi	r19, r6, 1
	addi	r20, r7, -1
	br	.L485
.L486:
	addi	r16, r16, 1
.L485:
	bltu	r18, r16, .L492
	ldb	r3, 0(r16)
	ldb	r2, 0(r17)
	bne	r3, r2, .L486
	mov	r6, r20
	mov	r5, r19
	addi	r4, r16, 1
	call	memcmp
	bne	r2, zero, .L486
	mov	r2, r16
	br	.L484
.L492:
	mov	r2, zero
.L484:
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L488:
	mov	r2, r4
	br	.L484
.L489:
	mov	r2, zero
	br	.L484
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
	blt	r2, zero, .L516
	mov	r20, zero
.L496:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r17
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L517
	mov	r18, zero
	br	.L498
.L516:
	xorhi	r16, r16, 32768
	movi	r20, 1
	br	.L496
.L500:
	addi	r18, r18, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__muldf3
	mov	r17, r2
	mov	r16, r3
.L498:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r17
	mov	r5, r16
	call	__gedf2
	bge	r2, zero, .L500
.L501:
	stw	r18, 0(r19)
	beq	r20, zero, .L505
	xorhi	r16, r16, 32768
.L505:
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
.L517:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L514
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__nedf2
	bne	r2, zero, .L509
	mov	r18, zero
	br	.L501
.L504:
	addi	r18, r18, -1
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__adddf3
	mov	r17, r2
	mov	r16, r3
.L503:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L504
	br	.L501
.L509:
	mov	r18, zero
	br	.L503
.L514:
	mov	r18, zero
	br	.L501
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	mov	r2, zero
	mov	r3, zero
	br	.L519
.L520:
	srli	r8, r6, 31
	slli	r7, r7, 1
	or	r7, r8, r7
	slli	r6, r6, 1
	slli	r8, r5, 31
	srli	r4, r4, 1
	or	r4, r8, r4
	srli	r5, r5, 1
.L519:
	or	r8, r4, r5
	beq	r8, zero, .L523
	andi	r8, r4, 1
	beq	r8, zero, .L520
	add	r8, r2, r6
	cmpltu	r9, r8, r2
	add	r3, r3, r7
	mov	r2, r8
	add	r3, r9, r3
	br	.L520
.L523:
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r7, 33
	movi	r3, 1
	br	.L525
.L527:
	add	r5, r5, r5
	add	r3, r3, r3
.L525:
	bgeu	r5, r4, .L532
	addi	r7, r7, -1
	beq	r7, zero, .L533
	bge	r5, zero, .L527
	mov	r2, zero
	br	.L528
.L532:
	mov	r2, zero
	br	.L528
.L533:
	mov	r2, zero
	br	.L528
.L529:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L528:
	beq	r3, zero, .L535
	bltu	r4, r5, .L529
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L529
.L535:
	bne	r6, zero, .L536
.L531:
	ret
.L536:
	mov	r2, r4
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	mov	r2, r4
	andi	r3, r4, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	blt	r3, zero, .L545
.L538:
	andi	r3, r2, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L540
	addi	sp, sp, -4
	stw	ra, 0(sp)
	slli	r4, r3, 8
	call	__clzsi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L545:
	nor	r2, zero, r4
	br	.L538
.L540:
	movi	r2, 7
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	blt	r5, zero, .L556
.L547:
	or	r2, r4, r5
	beq	r2, zero, .L551
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L556:
	nor	r4, zero, r4
	nor	r5, zero, r5
	br	.L547
.L551:
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	br	.L558
.L559:
	srli	r4, r4, 1
	add	r5, r5, r5
.L558:
	beq	r4, zero, .L561
	andi	r3, r4, 1
	beq	r3, zero, .L559
	add	r2, r2, r5
	br	.L559
.L561:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r11, r6, 3
	movi	r2, -8
	and	r2, r6, r2
	bgeu	r4, r5, .L563
.L565:
	mov	r7, r5
	mov	r3, r4
	mov	r8, zero
	br	.L564
.L563:
	add	r3, r5, r6
	bltu	r3, r4, .L565
	br	.L566
.L567:
	ldw	r10, 0(r7)
	ldw	r9, 4(r7)
	stw	r10, 0(r3)
	stw	r9, 4(r3)
	addi	r8, r8, 1
	addi	r7, r7, 8
	addi	r3, r3, 8
.L564:
	bne	r8, r11, .L567
	br	.L568
.L569:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L568:
	bltu	r2, r6, .L569
	ret
.L571:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L566:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L571
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bgeu	r4, r5, .L573
.L575:
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
	br	.L574
.L573:
	add	r2, r5, r6
	bltu	r2, r4, .L575
	br	.L576
.L577:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
.L574:
	bne	r2, r8, .L577
	andi	r2, r6, 1
	beq	r2, zero, .L572
	addi	r6, r6, -1
	add	r5, r5, r6
	add	r4, r4, r6
	ldbu	r2, 0(r5)
	stb	r2, 0(r4)
	ret
.L579:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L576:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L579
.L572:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r9, r6, 2
	movi	r2, -4
	and	r2, r6, r2
	bgeu	r4, r5, .L581
.L583:
	mov	r3, r5
	mov	r7, r4
	slli	r9, r9, 2
	add	r9, r9, r5
	br	.L582
.L581:
	add	r3, r5, r6
	bltu	r3, r4, .L583
	br	.L584
.L585:
	ldw	r8, 0(r3)
	stw	r8, 0(r7)
	addi	r3, r3, 4
	addi	r7, r7, 4
.L582:
	bne	r3, r9, .L585
	br	.L586
.L587:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L586:
	bltu	r2, r6, .L587
	ret
.L589:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L584:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L589
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
.L603:
	cmpnei	r3, r2, 16
	beq	r3, zero, .L604
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L604
	addi	r2, r2, 1
	br	.L603
.L604:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L607:
	cmpnei	r3, r2, 16
	beq	r3, zero, .L608
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L608
	addi	r2, r2, 1
	br	.L607
.L608:
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
	bge	r2, zero, .L617
	mov	r4, r16
	call	__fixsfsi
.L613:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L617:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L613
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
	br	.L619
.L620:
	addi	r3, r3, 1
.L619:
	cmpnei	r5, r3, 16
	beq	r5, zero, .L622
	sra	r5, r4, r3
	andi	r5, r5, 1
	beq	r5, zero, .L620
	addi	r2, r2, 1
	br	.L620
.L622:
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
	br	.L624
.L625:
	addi	r3, r3, 1
.L624:
	cmpnei	r5, r3, 16
	beq	r5, zero, .L627
	sra	r5, r4, r3
	andi	r5, r5, 1
	beq	r5, zero, .L625
	addi	r2, r2, 1
	br	.L625
.L627:
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	br	.L629
.L630:
	srli	r4, r4, 1
	add	r5, r5, r5
.L629:
	beq	r4, zero, .L632
	andi	r3, r4, 1
	beq	r3, zero, .L630
	add	r2, r2, r5
	br	.L630
.L632:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	beq	r4, zero, .L638
	mov	r2, zero
	br	.L635
.L636:
	add	r4, r4, r4
	srli	r5, r5, 1
.L635:
	beq	r5, zero, .L639
	andi	r3, r5, 1
	beq	r3, zero, .L636
	add	r2, r2, r4
	br	.L636
.L639:
	ret
.L638:
	mov	r2, zero
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r7, 33
	movi	r3, 1
	br	.L641
.L643:
	add	r5, r5, r5
	add	r3, r3, r3
.L641:
	bgeu	r5, r4, .L648
	addi	r7, r7, -1
	beq	r7, zero, .L649
	bge	r5, zero, .L643
	mov	r2, zero
	br	.L644
.L648:
	mov	r2, zero
	br	.L644
.L649:
	mov	r2, zero
	br	.L644
.L645:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L644:
	beq	r3, zero, .L651
	bltu	r4, r5, .L645
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L645
.L651:
	bne	r6, zero, .L652
.L647:
	ret
.L652:
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
	blt	r2, zero, .L655
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L654:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L655:
	movi	r2, -1
	br	.L654
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
	blt	r2, zero, .L660
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L659:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L660:
	movi	r2, -1
	br	.L659
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
	blt	r5, zero, .L676
	mov	r7, zero
.L668:
	movi	r6, 33
	mov	r2, zero
	br	.L669
.L676:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L668
.L670:
	add	r4, r4, r4
	srai	r5, r5, 1
.L669:
	beq	r5, zero, .L671
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	beq	r3, zero, .L671
	andi	r3, r5, 1
	beq	r3, zero, .L670
	add	r2, r2, r4
	br	.L670
.L671:
	beq	r7, zero, .L673
	sub	r2, zero, r2
.L673:
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L683
	mov	r16, zero
.L678:
	blt	r5, zero, .L684
.L679:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L680
	sub	r2, zero, r2
.L680:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L683:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L678
.L684:
	sub	r5, zero, r5
	xori	r16, r16, 1
	br	.L679
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L691
	mov	r16, zero
.L686:
	blt	r5, zero, .L692
.L687:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L688
	sub	r2, zero, r2
.L688:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L691:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L686
.L692:
	sub	r5, zero, r5
	br	.L687
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movi	r7, 17
	movi	r3, 1
	andi	r8, r4, 0xffff
.L694:
	andi	r2, r5, 0xffff
	bgeu	r2, r8, .L701
	addi	r7, r7, -1
	beq	r7, zero, .L702
	andi	r2, r5, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L704
	add	r5, r5, r5
	add	r3, r3, r3
	br	.L694
.L704:
	mov	r2, zero
	br	.L697
.L701:
	mov	r2, zero
	br	.L697
.L702:
	mov	r2, zero
	br	.L697
.L698:
	slli	r3, r3, 16
	srli	r3, r3, 17
	slli	r5, r5, 16
	srli	r5, r5, 17
.L697:
	andi	r7, r3, 0xffff
	beq	r7, zero, .L705
	andi	r7, r4, 0xffff
	andi	r8, r5, 0xffff
	bltu	r7, r8, .L698
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L698
.L705:
	bne	r6, zero, .L706
.L700:
	ret
.L706:
	mov	r2, r4
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r7, 33
	movi	r3, 1
	br	.L708
.L710:
	add	r5, r5, r5
	add	r3, r3, r3
.L708:
	bgeu	r5, r4, .L715
	addi	r7, r7, -1
	beq	r7, zero, .L716
	bge	r5, zero, .L710
	mov	r2, zero
	br	.L711
.L715:
	mov	r2, zero
	br	.L711
.L716:
	mov	r2, zero
	br	.L711
.L712:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L711:
	beq	r3, zero, .L718
	bltu	r4, r5, .L712
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L712
.L718:
	bne	r6, zero, .L719
.L714:
	ret
.L719:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L721
	mov	r2, zero
	addi	r6, r6, -32
	sll	r3, r4, r6
	ret
.L721:
	beq	r6, zero, .L724
	sll	r2, r4, r6
	sll	r3, r5, r6
	movi	r5, 32
	sub	r5, r5, r6
	srl	r4, r4, r5
	or	r3, r4, r3
	ret
.L724:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L726
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L726:
	beq	r6, zero, .L729
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L729:
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
	movui	r2, 65535
	bltu	r2, r4, .L737
	movi	r3, 16
.L733:
	movi	r2, 16
	sub	r2, r2, r3
	srl	r4, r4, r2
	andi	r2, r4, 65280
	bne	r2, zero, .L738
	movi	r5, 8
.L734:
	movi	r2, 8
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 240
	bne	r2, zero, .L739
	movi	r5, 4
.L735:
	movi	r2, 4
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 12
	bne	r2, zero, .L740
	movi	r2, 2
.L736:
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
.L737:
	mov	r3, zero
	br	.L733
.L738:
	mov	r5, zero
	br	.L734
.L739:
	mov	r5, zero
	br	.L735
.L740:
	mov	r2, zero
	br	.L736
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L743
	blt	r7, r5, .L744
	bltu	r4, r6, .L745
	bltu	r6, r4, .L746
	movi	r2, 1
	ret
.L743:
	mov	r2, zero
	ret
.L744:
	movi	r2, 2
	ret
.L745:
	mov	r2, zero
	ret
.L746:
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
	andi	r2, r4, 65535
	bne	r2, zero, .L754
	movi	r3, 16
.L750:
	srl	r4, r4, r3
	andi	r2, r4, 255
	bne	r2, zero, .L755
	movi	r2, 8
.L751:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 15
	bne	r2, zero, .L756
	movi	r2, 4
.L752:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 3
	bne	r2, zero, .L757
	movi	r2, 2
.L753:
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
.L754:
	mov	r3, zero
	br	.L750
.L755:
	mov	r2, zero
	br	.L751
.L756:
	mov	r2, zero
	br	.L752
.L757:
	mov	r2, zero
	br	.L753
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L759
	mov	r3, zero
	addi	r6, r6, -32
	srl	r2, r5, r6
	ret
.L759:
	beq	r6, zero, .L762
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L762:
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
	br	.L774
.L772:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L773
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L774:
	andi	r2, r16, 1
	beq	r2, zero, .L772
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L772
.L773:
	beq	r21, zero, .L776
	mov	r6, r20
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
.L775:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L776:
	mov	r2, r20
	mov	r3, r19
	br	.L775
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
	br	.L781
.L779:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L780
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L781:
	andi	r2, r16, 1
	beq	r2, zero, .L779
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L779
.L780:
	beq	r19, zero, .L783
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
.L782:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L783:
	mov	r2, r18
	br	.L782
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L787
	bltu	r7, r5, .L788
	bltu	r4, r6, .L789
	bltu	r6, r4, .L790
	movi	r2, 1
	ret
.L787:
	mov	r2, zero
	ret
.L788:
	movi	r2, 2
	ret
.L789:
	mov	r2, zero
	ret
.L790:
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
