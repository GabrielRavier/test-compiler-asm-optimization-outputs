	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	mov	r2, r4
	bgeu	r5, r4, .L2
	add	r5, r5, r6
	add	r3, r4, r6
	beq	r6, zero, .L3
.L4:
	addi	r5, r5, -1
	addi	r3, r3, -1
	ldbu	r4, 0(r5)
	stb	r4, 0(r3)
	bne	r2, r3, .L4
	ret
.L2:
	beq	r4, r5, .L3
	beq	r6, zero, .L3
	add	r6, r4, r6
	mov	r3, r4
.L5:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r4, -1(r5)
	stb	r4, -1(r3)
	bne	r3, r6, .L5
.L3:
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	andi	r6, r6, 0xff
	beq	r7, zero, .L10
.L9:
	ldbu	r3, 0(r5)
	stb	r3, 0(r4)
	andi	r3, r3, 0xff
	beq	r6, r3, .L10
	addi	r7, r7, -1
	addi	r5, r5, 1
	addi	r4, r4, 1
	bne	r7, zero, .L9
.L10:
	beq	r7, zero, .L14
	addi	r2, r4, 1
	ret
.L14:
	mov	r2, zero
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	andi	r5, r5, 0xff
	mov	r2, r4
	beq	r6, zero, .L17
.L16:
	ldbu	r3, 0(r2)
	beq	r5, r3, .L17
	addi	r2, r2, 1
	addi	r6, r6, -1
	bne	r6, zero, .L16
.L17:
	beq	r6, zero, .L23
.L19:
	ret
.L23:
	mov	r2, zero
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	beq	r6, zero, .L26
.L25:
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	bne	r3, r2, .L26
	addi	r6, r6, -1
	addi	r4, r4, 1
	addi	r5, r5, 1
	bne	r6, zero, .L25
.L26:
	beq	r6, zero, .L30
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L30:
	mov	r2, zero
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	mov	r2, r4
	beq	r6, zero, .L32
	add	r6, r4, r6
	mov	r3, r4
.L33:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r5)
	stb	r7, -1(r3)
	bne	r3, r6, .L33
.L32:
	ret
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	andi	r5, r5, 0xff
	addi	r6, r6, -1
.L36:
	cmpnei	r3, r6, -1
	beq	r3, zero, .L40
	add	r3, r4, r6
	ldbu	r3, 0(r3)
	addi	r7, r6, -1
	beq	r5, r3, .L41
	mov	r6, r7
	br	.L36
.L41:
	add	r2, r4, r6
	ret
.L40:
	mov	r2, zero
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	mov	r2, r4
	beq	r6, zero, .L43
	add	r6, r4, r6
	mov	r3, r4
.L44:
	stb	r5, 0(r3)
	addi	r3, r3, 1
	bne	r3, r6, .L44
.L43:
	ret
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	mov	r2, r4
	ldbu	r3, 0(r5)
	stb	r3, 0(r4)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L47
.L48:
	addi	r5, r5, 1
	addi	r2, r2, 1
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L48
.L47:
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	mov	r2, r4
	andi	r5, r5, 0xff
	ldb	r3, 0(r4)
	beq	r3, zero, .L55
.L51:
	ldbu	r3, 0(r2)
	beq	r5, r3, .L52
	addi	r2, r2, 1
	ldb	r3, 0(r2)
	bne	r3, zero, .L51
.L52:
	ret
.L55:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
.L58:
	ldb	r2, 0(r4)
	beq	r5, r2, .L59
	addi	r4, r4, 1
	ldb	r2, -1(r4)
	bne	r2, zero, .L58
	ret
.L59:
	mov	r2, r4
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb	r3, 0(r4)
	ldb	r2, 0(r5)
	bne	r3, r2, .L63
.L62:
	ldb	r2, 0(r4)
	beq	r2, zero, .L63
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldb	r3, 0(r4)
	ldb	r2, 0(r5)
	beq	r3, r2, .L62
.L63:
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	sub	r2, r3, r2
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L69
	mov	r2, r4
.L68:
	addi	r2, r2, 1
	ldb	r5, 0(r2)
	bne	r5, zero, .L68
.L67:
	sub	r2, r2, r4
	ret
.L69:
	mov	r2, r4
	br	.L67
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L76
	ldbu	r2, 0(r4)
	beq	r2, zero, .L73
	addi	r6, r6, -1
	add	r2, r4, r6
.L74:
	ldbu	r3, 0(r5)
	beq	r3, zero, .L73
	beq	r4, r2, .L73
	ldbu	r6, 0(r4)
	bne	r6, r3, .L73
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r3, 0(r4)
	bne	r3, zero, .L74
.L73:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L76:
	mov	r2, zero
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L78
	addi	r2, r6, -2
	srli	r2, r2, 1
	addi	r2, r2, 1
	add	r2, r2, r2
	add	r2, r4, r2
.L80:
	ldbu	r3, 1(r4)
	stb	r3, 0(r5)
	ldbu	r3, 0(r4)
	stb	r3, 1(r5)
	addi	r5, r5, 2
	addi	r4, r4, 2
	bne	r4, r2, .L80
.L78:
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
	bne	r2, zero, .L86
	cmpeqi	r2, r4, 9
	ret
.L86:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L89
	cmpeqi	r2, r4, 127
	ret
.L89:
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
	bne	r2, zero, .L96
	addi	r2, r4, -9
	cmpltui	r2, r2, 5
	andi	r2, r2, 0xff
	ret
.L96:
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
	bne	r2, zero, .L100
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L101
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L102
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r4, r2
	cmpltui	r2, r2, 3
	andi	r2, r2, 0xff
	ret
.L100:
	movi	r2, 1
	ret
.L101:
	movi	r2, 1
	ret
.L102:
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
	beq	r2, zero, .L111
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L107
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L108
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L109
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L110
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L111:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	ret
.L107:
	movi	r2, 1
	ret
.L108:
	movi	r2, 1
	ret
.L109:
	movi	r2, 1
	ret
.L110:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L114
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	andi	r2, r2, 0xff
	ret
.L114:
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
	bne	r2, zero, .L119
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L120
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L123
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
.L117:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L119:
	mov	r2, r17
	mov	r3, r16
	br	.L117
.L120:
	mov	r2, r19
	mov	r3, r18
	br	.L117
.L123:
	mov	r2, zero
	mov	r3, zero
	br	.L117
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
	bne	r2, zero, .L128
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L129
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L132
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L126:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L128:
	mov	r2, r16
	br	.L126
.L129:
	mov	r2, r17
	br	.L126
.L132:
	mov	r2, zero
	br	.L126
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
	bne	r2, zero, .L140
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L141
	andhi	r2, r16, 32768
	andhi	r3, r18, 32768
	beq	r2, r3, .L136
	bge	r16, zero, .L142
	mov	r2, r19
	mov	r3, r18
	br	.L135
.L136:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L139
	mov	r17, r19
	mov	r16, r18
.L139:
	mov	r2, r17
	mov	r3, r16
.L135:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L140:
	mov	r2, r19
	mov	r3, r18
	br	.L135
.L141:
	mov	r2, r17
	mov	r3, r16
	br	.L135
.L142:
	mov	r2, r17
	mov	r3, r16
	br	.L135
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
	bne	r2, zero, .L150
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L151
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L146
	bge	r16, zero, .L152
	mov	r2, r17
	br	.L145
.L146:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	bge	r2, zero, .L149
	mov	r16, r17
.L149:
	mov	r2, r16
.L145:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L150:
	mov	r2, r17
	br	.L145
.L151:
	mov	r2, r16
	br	.L145
.L152:
	mov	r2, r16
	br	.L145
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
	bne	r2, zero, .L160
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L161
	andhi	r2, r16, 32768
	andhi	r3, r18, 32768
	beq	r2, r3, .L156
	bge	r16, zero, .L162
	mov	r2, r19
	mov	r3, r18
	br	.L155
.L156:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L159
	mov	r17, r19
	mov	r16, r18
.L159:
	mov	r2, r17
	mov	r3, r16
.L155:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L160:
	mov	r2, r19
	mov	r3, r18
	br	.L155
.L161:
	mov	r2, r17
	mov	r3, r16
	br	.L155
.L162:
	mov	r2, r17
	mov	r3, r16
	br	.L155
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
	bne	r2, zero, .L170
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L171
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L166
	bge	r18, zero, .L172
	mov	r2, r19
	mov	r3, r18
	br	.L165
.L166:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L169
	mov	r17, r19
	mov	r16, r18
.L169:
	mov	r2, r17
	mov	r3, r16
.L165:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L170:
	mov	r2, r17
	mov	r3, r16
	br	.L165
.L171:
	mov	r2, r19
	mov	r3, r18
	br	.L165
.L172:
	mov	r2, r17
	mov	r3, r16
	br	.L165
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
	bne	r2, zero, .L180
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L181
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L176
	bge	r17, zero, .L182
	mov	r2, r17
	br	.L175
.L176:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	bge	r2, zero, .L179
	mov	r16, r17
.L179:
	mov	r2, r16
.L175:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L180:
	mov	r2, r16
	br	.L175
.L181:
	mov	r2, r17
	br	.L175
.L182:
	mov	r2, r16
	br	.L175
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
	bne	r2, zero, .L190
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L191
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L186
	bge	r18, zero, .L192
	mov	r2, r19
	mov	r3, r18
	br	.L185
.L186:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L189
	mov	r17, r19
	mov	r16, r18
.L189:
	mov	r2, r17
	mov	r3, r16
.L185:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L190:
	mov	r2, r17
	mov	r3, r16
	br	.L185
.L191:
	mov	r2, r19
	mov	r3, r18
	br	.L185
.L192:
	mov	r2, r17
	mov	r3, r16
	br	.L185
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
	beq	r4, zero, .L197
	addi	r3, gp, %gprel(s.0)
.L196:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
	bne	r4, zero, .L196
.L195:
	stb	zero, 0(r3)
	addi	r2, gp, %gprel(s.0)
	ret
.L197:
	addi	r3, gp, %gprel(s.0)
	br	.L195
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
	beq	r5, zero, .L205
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L202
	stw	r4, 4(r2)
.L202:
	ret
.L205:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L207
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L207:
	ldw	r2, 4(r4)
	beq	r2, zero, .L206
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L206:
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
	beq	r19, zero, .L210
	mov	r17, r5
	mov	r16, zero
.L213:
	mov	r5, r17
	mov	r4, r20
	callr	r21
	beq	r2, zero, .L216
	addi	r16, r16, 1
	add	r17, r17, r18
	bne	r16, r19, .L213
.L210:
	addi	r2, r19, 1
	stw	r2, 0(fp)
	mul	r4, r18, r19
	mov	r6, r18
	mov	r5, r20
	ldw	r2, 0(sp)
	add	r4, r2, r4
	call	memcpy
.L212:
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
.L216:
	mul	r16, r16, r18
	ldw	r2, 0(sp)
	add	r2, r2, r16
	br	.L212
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
	ldw	fp, 32(sp)
	ldw	r20, 0(r6)
	beq	r20, zero, .L221
	mov	r19, r4
	mov	r21, r5
	mov	r18, r7
	mov	r17, r5
	mov	r16, zero
.L220:
	mov	r5, r17
	mov	r4, r19
	callr	fp
	beq	r2, zero, .L224
	addi	r16, r16, 1
	add	r17, r17, r18
	bne	r16, r20, .L220
	mov	r2, zero
	br	.L218
.L224:
	mul	r7, r16, r18
	add	r2, r21, r7
.L218:
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
.L221:
	mov	r2, zero
	br	.L218
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	blt	r4, zero, .L227
.L226:
	ret
.L227:
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
	br	.L229
.L230:
	addi	r16, r16, 1
.L229:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L230
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L236
	cmpnei	r2, r2, 45
	bne	r2, zero, .L237
	movi	r4, 1
.L231:
	addi	r16, r16, 1
.L232:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L238
.L234:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L234
.L233:
	bne	r4, zero, .L235
	sub	r2, zero, r2
.L235:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L236:
	mov	r4, zero
	br	.L231
.L237:
	mov	r4, zero
	br	.L232
.L238:
	mov	r2, zero
	br	.L233
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L243
.L244:
	addi	r16, r16, 1
.L243:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L244
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L250
	cmpnei	r2, r2, 45
	bne	r2, zero, .L251
	movi	r4, 1
.L245:
	addi	r16, r16, 1
.L246:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L252
.L248:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L248
.L247:
	bne	r4, zero, .L249
	sub	r2, zero, r2
.L249:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L250:
	mov	r4, zero
	br	.L245
.L251:
	mov	r4, zero
	br	.L246
.L252:
	mov	r2, zero
	br	.L247
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
	br	.L257
.L258:
	addi	r16, r16, 1
.L257:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L258
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L264
	cmpnei	r2, r2, 45
	bne	r2, zero, .L265
	movi	r17, 1
.L259:
	addi	r16, r16, 1
.L260:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L266
	mov	r4, zero
	mov	r5, zero
.L262:
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
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L262
.L261:
	bne	r17, zero, .L267
	cmpne	r3, r4, zero
	sub	r5, zero, r5
	sub	r2, zero, r4
	sub	r3, r5, r3
.L263:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L264:
	mov	r17, zero
	br	.L259
.L265:
	mov	r17, zero
	br	.L260
.L266:
	mov	r4, zero
	mov	r5, zero
	br	.L261
.L267:
	mov	r2, r4
	mov	r3, r5
	br	.L263
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
	bne	r6, zero, .L274
	mov	r2, zero
	br	.L271
.L280:
	srli	r17, r17, 1
.L273:
	beq	r17, zero, .L279
.L274:
	srli	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r5, r16
	mov	r4, r20
	callr	r21
	blt	r2, zero, .L280
	bge	zero, r2, .L276
	add	r19, r16, r18
	srli	r2, r17, 1
	addi	r17, r17, -1
	sub	r17, r17, r2
	br	.L273
.L279:
	mov	r2, zero
.L271:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L276:
	mov	r2, r16
	br	.L271
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
	ldw	r21, 32(sp)
	ldw	fp, 36(sp)
	beq	r6, zero, .L285
	mov	r20, r4
	mov	r19, r7
	mov	r17, r6
	mov	r18, r5
	br	.L284
.L283:
	srai	r17, r17, 1
	beq	r17, zero, .L289
.L284:
	srai	r16, r17, 1
	mul	r16, r16, r19
	add	r16, r18, r16
	mov	r6, fp
	mov	r5, r16
	mov	r4, r20
	callr	r21
	beq	r2, zero, .L286
	bge	zero, r2, .L283
	add	r18, r16, r19
	addi	r17, r17, -1
	br	.L283
.L289:
	mov	r2, zero
	br	.L282
.L285:
	mov	r2, zero
	br	.L282
.L286:
	mov	r2, r16
.L282:
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
	blt	r5, zero, .L295
.L293:
	ret
.L295:
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
	blt	r4, zero, .L300
.L299:
	ret
.L300:
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
	blt	r5, zero, .L306
.L304:
	ret
.L306:
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
	ldw	r2, 0(r4)
	beq	r2, zero, .L311
.L310:
	ldw	r2, 0(r4)
	beq	r5, r2, .L311
	addi	r4, r4, 4
	ldw	r2, 0(r4)
	bne	r2, zero, .L310
.L311:
	ldw	r2, 0(r4)
	beq	r2, zero, .L313
	mov	r2, r4
.L313:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L318
.L317:
	ldw	r2, 0(r4)
	beq	r2, zero, .L318
	ldw	r2, 0(r5)
	beq	r2, zero, .L318
	addi	r4, r4, 4
	addi	r5, r5, 4
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L317
.L318:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L321
	cmplt	r2, r2, r3
	ret
.L321:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L324:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L324
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L329
	mov	r2, r4
.L328:
	addi	r2, r2, 4
	ldw	r3, 0(r2)
	bne	r3, zero, .L328
.L327:
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L329:
	mov	r2, r4
	br	.L327
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L333
.L332:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L333
	beq	r3, zero, .L333
	ldw	r2, 0(r5)
	beq	r2, zero, .L333
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L332
.L333:
	beq	r6, zero, .L336
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L337
	cmplt	r2, r2, r3
	ret
.L336:
	mov	r2, zero
	ret
.L337:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L341
.L340:
	ldw	r2, 0(r4)
	beq	r5, r2, .L341
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r6, zero, .L340
.L341:
	beq	r6, zero, .L346
	mov	r2, r4
	ret
.L346:
	mov	r2, zero
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L349
.L348:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L349
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L348
.L349:
	beq	r6, zero, .L352
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L353
	cmplt	r2, r2, r3
	ret
.L352:
	mov	r2, zero
	ret
.L353:
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L356
	mov	r6, r3
	mov	r3, r4
.L357:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r3)
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L357
.L356:
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov	r2, r4
	beq	r4, r5, .L360
	sub	r3, r4, r5
	slli	r4, r6, 2
	bltu	r3, r4, .L361
	addi	r3, r6, -1
	beq	r6, zero, .L367
	mov	r6, r3
	mov	r3, r2
.L362:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r3)
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L362
.L360:
	ret
.L367:
	ret
.L361:
	beq	r6, zero, .L360
	addi	r6, r6, -1
	slli	r6, r6, 2
	add	r3, r5, r6
	add	r6, r2, r6
	addi	r5, r5, -4
.L363:
	ldw	r7, 0(r3)
	stw	r7, 0(r6)
	addi	r3, r3, -4
	addi	r6, r6, -4
	bne	r3, r5, .L363
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L369
	mov	r6, r3
	mov	r3, r4
.L370:
	addi	r3, r3, 4
	stw	r5, -4(r3)
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L370
.L369:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L373
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L372
.L375:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
	bne	r4, r2, .L375
	ret
.L373:
	beq	r4, r5, .L372
	beq	r6, zero, .L372
	add	r6, r4, r6
	mov	r2, r4
.L376:
	addi	r2, r2, 1
	addi	r5, r5, 1
	ldbu	r3, -1(r2)
	stb	r3, -1(r5)
	bne	r2, r6, .L376
.L372:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r8, r6, -32
	blt	r8, zero, .L380
	sll	r8, r4, r8
	mov	r2, zero
.L381:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L382
	srl	r7, r5, r7
	mov	r3, zero
.L383:
	or	r2, r7, r2
	or	r3, r3, r8
	ret
.L380:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r8, r5, r6
	or	r8, r2, r8
	sll	r2, r4, r6
	br	.L381
.L382:
	slli	r3, r5, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	sll	r3, r3, r7
	srl	r7, r4, r6
	or	r7, r3, r7
	srl	r3, r5, r6
	br	.L383
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L385
	srl	r8, r5, r8
	mov	r3, zero
.L386:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L387
	sll	r7, r4, r7
	mov	r2, zero
.L388:
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L385:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	br	.L386
.L387:
	srli	r2, r4, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	br	.L388
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
.L403:
	srl	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L405
	addi	r2, r2, 1
	cmpnei	r3, r2, 32
	bne	r3, zero, .L403
	mov	r2, zero
	ret
.L405:
	addi	r2, r2, 1
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L409
	andi	r2, r4, 1
	bne	r2, zero, .L410
	movi	r2, 1
.L408:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L408
	ret
.L409:
	mov	r2, zero
	ret
.L410:
	movi	r2, 1
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
	blt	r2, zero, .L415
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L413:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L415:
	movi	r2, 1
	br	.L413
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
	blt	r2, zero, .L420
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L418:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L420:
	movi	r2, 1
	br	.L418
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
	blt	r2, zero, .L425
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L423:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L425:
	movi	r2, 1
	br	.L423
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
	bne	r2, zero, .L430
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r2
	mov	r4, r18
	call	__eqsf2
	beq	r2, zero, .L430
	blt	r16, zero, .L436
	movhi	r17, 16384
	br	.L433
.L436:
	movhi	r17, 16128
	br	.L433
.L432:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L430
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L433:
	andi	r2, r16, 1
	beq	r2, zero, .L432
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L432
.L430:
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
	bne	r2, zero, .L438
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
	beq	r2, zero, .L438
	blt	r16, zero, .L444
	mov	r18, zero
	movhi	r17, 16384
	br	.L441
.L444:
	mov	r18, zero
	movhi	r17, 16352
	br	.L441
.L440:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L438
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L441:
	andi	r2, r16, 1
	beq	r2, zero, .L440
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L440
.L438:
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
	bne	r2, zero, .L446
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
	beq	r2, zero, .L446
	blt	r16, zero, .L452
	mov	r18, zero
	movhi	r17, 16384
	br	.L449
.L452:
	mov	r18, zero
	movhi	r17, 16352
	br	.L449
.L448:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L446
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L449:
	andi	r2, r16, 1
	beq	r2, zero, .L448
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L448
.L446:
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
	beq	r6, zero, .L454
	add	r6, r5, r6
	mov	r3, r4
.L455:
	addi	r5, r5, 1
	ldbu	r8, -1(r5)
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r5, r6, .L455
.L454:
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
	beq	r16, zero, .L459
.L458:
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L459
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
	bne	r16, zero, .L458
.L459:
	bne	r16, zero, .L461
	stb	zero, 0(r2)
.L461:
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
	beq	r5, zero, .L470
.L465:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L467
.L466:
	ret
.L470:
	ret
.L467:
	addi	r2, r2, 1
	bne	r2, r5, .L465
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r2, 0(r4)
	beq	r2, zero, .L479
.L472:
	mov	r3, r5
.L475:
	ldb	r6, 0(r3)
	beq	r6, zero, .L480
	addi	r3, r3, 1
	ldb	r7, -1(r3)
	ldb	r6, 0(r4)
	bne	r7, r6, .L475
	mov	r2, r4
	ret
.L479:
	ret
.L480:
	addi	r4, r4, 1
	ldb	r2, 0(r4)
	bne	r2, zero, .L472
	mov	r2, zero
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L483
.L482:
	addi	r4, r4, 1
	ldb	r3, -1(r4)
	beq	r3, zero, .L486
.L483:
	ldb	r3, 0(r4)
	bne	r5, r3, .L482
	mov	r2, r4
	br	.L482
.L486:
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
	beq	r2, zero, .L491
	mov	r18, r2
	ldb	r19, 0(r17)
.L489:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	beq	r2, zero, .L494
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L492
	addi	r16, r16, 1
	br	.L489
.L494:
	mov	r2, zero
	br	.L488
.L491:
	mov	r2, r16
.L488:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L492:
	mov	r2, r16
	br	.L488
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
	blt	r2, zero, .L509
.L496:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L506
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L498
	mov	r2, r17
	mov	r3, r16
.L499:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L509:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L496
.L498:
	mov	r2, r17
	xorhi	r3, r16, 32768
	br	.L499
.L506:
	mov	r2, r17
	mov	r3, r16
	br	.L499
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
	sub	r17, r5, r7
	add	r17, r4, r17
	beq	r7, zero, .L514
	bltu	r5, r7, .L515
	bltu	r17, r4, .L516
	ldb	r19, 0(r6)
	addi	r20, r6, 1
	addi	r18, r7, -1
	br	.L513
.L512:
	addi	r16, r16, 1
	bltu	r17, r16, .L520
.L513:
	ldb	r2, 0(r16)
	bne	r2, r19, .L512
	mov	r6, r18
	mov	r5, r20
	addi	r4, r16, 1
	call	memcmp
	bne	r2, zero, .L512
	mov	r2, r16
	br	.L511
.L520:
	mov	r2, zero
.L511:
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L514:
	mov	r2, r4
	br	.L511
.L515:
	mov	r2, zero
	br	.L511
.L516:
	mov	r2, zero
	br	.L511
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
	mov	r20, r4
	mov	r19, r5
	mov	r17, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L545
	mov	r18, zero
.L524:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r20
	mov	r5, r19
	call	__gedf2
	blt	r2, zero, .L542
	mov	r16, zero
.L528:
	addi	r16, r16, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	mov	r20, r2
	mov	r19, r3
	mov	r6, zero
	movhi	r7, 16368
	call	__gedf2
	bge	r2, zero, .L528
.L529:
	stw	r16, 0(r17)
	beq	r18, zero, .L532
	xorhi	r19, r19, 32768
.L532:
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
.L545:
	xorhi	r19, r19, 32768
	movi	r18, 1
	br	.L524
.L542:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r20
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L543
	mov	r6, zero
	mov	r7, zero
	mov	r4, r20
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L535
	mov	r16, zero
.L531:
	addi	r16, r16, -1
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r4, r2
	mov	r5, r3
	mov	r20, r2
	mov	r19, r3
	mov	r6, zero
	movhi	r7, 16352
	call	__ltdf2
	blt	r2, zero, .L531
	br	.L529
.L543:
	mov	r16, zero
	br	.L529
.L535:
	mov	r16, zero
	br	.L529
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
	mov	r18, r4
	or	r4, r4, r5
	beq	r4, zero, .L550
	mov	r17, r6
	mov	r16, r7
	mov	r19, r5
	mov	r20, zero
	mov	r21, zero
	br	.L549
.L551:
	mov	r20, r2
	mov	r21, r4
.L549:
	andi	r6, r18, 1
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__muldi3
	add	r2, r20, r2
	cmpltu	r4, r2, r20
	add	r3, r21, r3
	add	r4, r4, r3
	srli	r3, r17, 31
	slli	r16, r16, 1
	or	r16, r3, r16
	slli	r17, r17, 1
	slli	r3, r19, 31
	srli	r8, r18, 1
	or	r8, r3, r8
	srli	r3, r19, 1
	mov	r18, r8
	mov	r19, r3
	or	r8, r8, r3
	bne	r8, zero, .L551
	mov	r20, r2
	mov	r21, r4
.L547:
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
.L550:
	mov	r20, zero
	mov	r21, zero
	br	.L547
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L555
	movi	r2, 32
	movi	r3, 1
.L554:
	blt	r5, zero, .L555
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L555
	addi	r2, r2, -1
	bne	r2, zero, .L554
.L555:
	mov	r2, zero
	bne	r3, zero, .L557
.L558:
	bne	r6, zero, .L567
.L561:
	ret
.L560:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L558
.L557:
	bltu	r4, r5, .L560
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L560
.L567:
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
	beq	r2, zero, .L570
	addi	sp, sp, -4
	stw	ra, 0(sp)
	slli	r4, r2, 8
	call	__clzsi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L570:
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
	beq	r2, zero, .L578
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L578:
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	beq	r4, zero, .L586
	mov	r2, zero
.L585:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L585
	ret
.L586:
	mov	r2, zero
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r10, r6, 3
	movi	r7, -8
	and	r7, r6, r7
	bltu	r4, r5, .L589
	add	r2, r5, r6
	bltu	r2, r4, .L589
	addi	r2, r6, -1
	beq	r6, zero, .L599
	mov	r6, r2
.L590:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L590
.L588:
	ret
.L599:
	ret
.L589:
	beq	r10, zero, .L592
	mov	r2, r5
	mov	r3, r4
	slli	r10, r10, 3
	add	r10, r10, r5
.L593:
	ldw	r9, 0(r2)
	ldw	r8, 4(r2)
	stw	r9, 0(r3)
	stw	r8, 4(r3)
	addi	r2, r2, 8
	addi	r3, r3, 8
	bne	r2, r10, .L593
.L592:
	bgeu	r7, r6, .L588
	add	r2, r5, r7
	add	r4, r4, r7
	add	r6, r6, r5
.L594:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r6, .L594
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bltu	r4, r5, .L601
	add	r2, r5, r6
	bltu	r2, r4, .L601
	addi	r2, r6, -1
	beq	r6, zero, .L609
	mov	r6, r2
.L602:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L602
.L600:
	ret
.L609:
	ret
.L601:
	beq	r8, zero, .L604
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
.L605:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
	bne	r2, r8, .L605
.L604:
	andi	r2, r6, 1
	beq	r2, zero, .L600
	addi	r6, r6, -1
	add	r5, r5, r6
	add	r4, r4, r6
	ldbu	r2, 0(r5)
	stb	r2, 0(r4)
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r8, r6, 2
	movi	r9, -4
	and	r9, r6, r9
	bltu	r4, r5, .L611
	add	r2, r5, r6
	bltu	r2, r4, .L611
	addi	r2, r6, -1
	beq	r6, zero, .L621
	mov	r6, r2
.L612:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L612
.L610:
	ret
.L621:
	ret
.L611:
	beq	r8, zero, .L614
	mov	r2, r5
	mov	r3, r4
	slli	r8, r8, 2
	add	r8, r8, r5
.L615:
	ldw	r7, 0(r2)
	stw	r7, 0(r3)
	addi	r2, r2, 4
	addi	r3, r3, 4
	bne	r2, r8, .L615
.L614:
	bgeu	r9, r6, .L610
	add	r2, r5, r9
	add	r4, r4, r9
	add	r6, r6, r5
.L616:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r6, .L616
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
.L636:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L635
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L636
.L635:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L640:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L639
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L640
.L639:
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
	bge	r2, zero, .L649
	mov	r4, r16
	call	__fixsfsi
.L645:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L649:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L645
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
.L651:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r5, r2
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L651
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
.L654:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r5, r2
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L654
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	beq	r4, zero, .L659
	mov	r2, zero
.L658:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L658
	ret
.L659:
	mov	r2, zero
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	beq	r4, zero, .L664
	beq	r5, zero, .L665
	mov	r2, zero
.L663:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srli	r5, r5, 1
	bne	r5, zero, .L663
	ret
.L664:
	mov	r2, zero
	ret
.L665:
	mov	r2, zero
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L669
	movi	r2, 32
	movi	r3, 1
.L668:
	blt	r5, zero, .L669
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L669
	addi	r2, r2, -1
	bne	r2, zero, .L668
.L669:
	mov	r2, zero
	bne	r3, zero, .L671
.L672:
	bne	r6, zero, .L681
.L675:
	ret
.L674:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L672
.L671:
	bltu	r4, r5, .L674
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L674
.L681:
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
	blt	r2, zero, .L685
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L683:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L685:
	movi	r2, -1
	br	.L683
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
	blt	r2, zero, .L690
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L688:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L690:
	movi	r2, -1
	br	.L688
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
	blt	r5, zero, .L706
	mov	r7, zero
.L697:
	beq	r5, zero, .L702
	movi	r6, 32
	mov	r2, zero
.L699:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srai	r5, r5, 1
	beq	r5, zero, .L698
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L699
.L698:
	beq	r7, zero, .L700
	sub	r2, zero, r2
.L700:
	ret
.L706:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L697
.L702:
	mov	r2, zero
	br	.L698
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L713
	mov	r16, zero
.L708:
	blt	r5, zero, .L714
.L709:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L710
	sub	r2, zero, r2
.L710:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L713:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L708
.L714:
	sub	r5, zero, r5
	xori	r16, r16, 1
	br	.L709
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r2, r5
	blt	r4, zero, .L721
	mov	r16, zero
.L716:
	mov	r5, r2
	blt	r2, zero, .L722
.L717:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L718
	sub	r2, zero, r2
.L718:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L721:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L716
.L722:
	sub	r5, zero, r2
	br	.L717
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov	r8, r4
	mov	r3, r5
	andi	r5, r5, 0xffff
	andi	r4, r4, 0xffff
	bgeu	r5, r4, .L737
	movi	r7, 16
	movi	r4, 1
	andi	r9, r8, 0xffff
.L724:
	andi	r2, r3, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L725
	add	r5, r3, r3
	mov	r3, r5
	add	r4, r4, r4
	andi	r5, r5, 0xffff
	bgeu	r5, r9, .L725
	addi	r7, r7, -1
	bne	r7, zero, .L724
.L725:
	andi	r5, r4, 0xffff
	mov	r2, zero
	bne	r5, zero, .L727
.L728:
	bne	r6, zero, .L738
.L731:
	ret
.L737:
	movi	r4, 1
	br	.L725
.L730:
	andi	r4, r4, 0xffff
	srli	r5, r4, 1
	mov	r4, r5
	slli	r3, r3, 16
	srli	r3, r3, 17
	beq	r5, zero, .L728
.L727:
	andi	r5, r8, 0xffff
	andi	r7, r3, 0xffff
	bltu	r5, r7, .L730
	sub	r8, r8, r3
	or	r2, r2, r4
	br	.L730
.L738:
	mov	r2, r8
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L741
	movi	r2, 32
	movi	r3, 1
.L740:
	blt	r5, zero, .L741
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L741
	addi	r2, r2, -1
	bne	r2, zero, .L740
.L741:
	mov	r2, zero
	bne	r3, zero, .L743
.L744:
	bne	r6, zero, .L753
.L747:
	ret
.L746:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L744
.L743:
	bltu	r4, r5, .L746
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L746
.L753:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L755
	mov	r2, zero
	addi	r6, r6, -32
	sll	r3, r4, r6
	ret
.L755:
	beq	r6, zero, .L758
	sll	r2, r4, r6
	sll	r3, r5, r6
	movi	r5, 32
	sub	r5, r5, r6
	srl	r4, r4, r5
	or	r3, r4, r3
	ret
.L758:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L760
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L760:
	beq	r6, zero, .L763
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L763:
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
	blt	r5, r7, .L769
	blt	r7, r5, .L770
	bltu	r4, r6, .L771
	bltu	r6, r4, .L772
	movi	r2, 1
	ret
.L769:
	mov	r2, zero
	ret
.L770:
	movi	r2, 2
	ret
.L771:
	mov	r2, zero
	ret
.L772:
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
	beq	r2, zero, .L777
	mov	r3, zero
	addi	r6, r6, -32
	srl	r2, r5, r6
	ret
.L777:
	beq	r6, zero, .L780
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L780:
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
	br	.L792
.L790:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L791
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L792:
	andi	r2, r16, 1
	beq	r2, zero, .L790
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L790
.L791:
	beq	r21, zero, .L794
	mov	r6, r20
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
.L793:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L794:
	mov	r2, r20
	mov	r3, r19
	br	.L793
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
	br	.L799
.L797:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L798
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L799:
	andi	r2, r16, 1
	beq	r2, zero, .L797
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L797
.L798:
	beq	r19, zero, .L801
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
.L800:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L801:
	mov	r2, r18
	br	.L800
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L805
	bltu	r7, r5, .L806
	bltu	r4, r6, .L807
	bltu	r6, r4, .L808
	movi	r2, 1
	ret
.L805:
	mov	r2, zero
	ret
.L806:
	movi	r2, 2
	ret
.L807:
	mov	r2, zero
	ret
.L808:
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
