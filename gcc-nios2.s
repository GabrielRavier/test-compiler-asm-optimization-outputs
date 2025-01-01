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
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L110
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L111
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	ble	r2, zero, .L114
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__subdf3
	mov	r4, r2
	mov	r5, r3
.L108:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L110:
	mov	r4, r18
	mov	r5, r19
	br	.L108
.L111:
	mov	r4, r16
	mov	r5, r17
	br	.L108
.L114:
	mov	r4, zero
	mov	r5, zero
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
	bne	r2, zero, .L118
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L119
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L122
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L116:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L118:
	mov	r2, r16
	br	.L116
.L119:
	mov	r2, r17
	br	.L116
.L122:
	mov	r2, zero
	br	.L116
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
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L127
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L128
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L125
	bge	r19, zero, .L129
	mov	r4, r16
	mov	r5, r17
.L124:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L125:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L132
	mov	r4, r16
	mov	r5, r17
	br	.L124
.L127:
	mov	r4, r16
	mov	r5, r17
	br	.L124
.L128:
	mov	r4, r18
	mov	r5, r19
	br	.L124
.L129:
	mov	r4, r18
	mov	r5, r19
	br	.L124
.L132:
	mov	r4, r18
	mov	r5, r19
	br	.L124
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
	bne	r2, zero, .L137
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L138
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L135
	bge	r16, zero, .L139
	mov	r2, r17
.L134:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L135:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	bge	r2, zero, .L142
	mov	r2, r17
	br	.L134
.L137:
	mov	r2, r17
	br	.L134
.L138:
	mov	r2, r16
	br	.L134
.L139:
	mov	r2, r16
	br	.L134
.L142:
	mov	r2, r16
	br	.L134
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
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L147
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L148
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L145
	bge	r19, zero, .L149
	mov	r4, r16
	mov	r5, r17
.L144:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L145:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L152
	mov	r4, r16
	mov	r5, r17
	br	.L144
.L147:
	mov	r4, r16
	mov	r5, r17
	br	.L144
.L148:
	mov	r4, r18
	mov	r5, r19
	br	.L144
.L149:
	mov	r4, r18
	mov	r5, r19
	br	.L144
.L152:
	mov	r4, r18
	mov	r5, r19
	br	.L144
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
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L157
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L158
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L155
	bge	r19, zero, .L159
	mov	r4, r18
	mov	r5, r19
.L154:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L155:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L162
	mov	r4, r18
	mov	r5, r19
	br	.L154
.L157:
	mov	r4, r16
	mov	r5, r17
	br	.L154
.L158:
	mov	r4, r18
	mov	r5, r19
	br	.L154
.L159:
	mov	r4, r16
	mov	r5, r17
	br	.L154
.L162:
	mov	r4, r16
	mov	r5, r17
	br	.L154
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
	bne	r2, zero, .L167
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L168
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L165
	bge	r17, zero, .L169
	mov	r2, r17
.L164:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L165:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	bge	r2, zero, .L172
	mov	r2, r17
	br	.L164
.L167:
	mov	r2, r16
	br	.L164
.L168:
	mov	r2, r17
	br	.L164
.L169:
	mov	r2, r16
	br	.L164
.L172:
	mov	r2, r16
	br	.L164
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
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L177
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L178
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L175
	bge	r19, zero, .L179
	mov	r4, r18
	mov	r5, r19
.L174:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L175:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L182
	mov	r4, r18
	mov	r5, r19
	br	.L174
.L177:
	mov	r4, r16
	mov	r5, r17
	br	.L174
.L178:
	mov	r4, r18
	mov	r5, r19
	br	.L174
.L179:
	mov	r4, r16
	mov	r5, r17
	br	.L174
.L182:
	mov	r4, r16
	mov	r5, r17
	br	.L174
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
	br	.L184
.L185:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
.L184:
	bne	r4, zero, .L185
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
	addi	r2, r4, -1
	stw	r2, %gprel(seed)(gp)
	stw	zero, %gprel(seed+4)(gp)
	ret
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
	addi	sp, sp, -4
	stw	ra, 0(sp)
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
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	beq	r5, zero, .L191
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L188
	stw	r4, 4(r2)
.L188:
	ret
.L191:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L193
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L193:
	ldw	r2, 4(r4)
	beq	r2, zero, .L192
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L192:
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
	br	.L196
.L197:
	addi	r16, r16, 1
.L196:
	beq	r16, r19, .L200
	mov	r5, r17
	mov	r4, r20
	callr	r21
	add	r17, r17, r18
	bne	r2, zero, .L197
	mul	r16, r16, r18
	ldw	r2, 0(sp)
	add	r2, r2, r16
	br	.L198
.L200:
	addi	r2, r19, 1
	stw	r2, 0(fp)
	mul	r4, r18, r19
	mov	r6, r18
	mov	r5, r20
	ldw	r2, 0(sp)
	add	r4, r2, r4
	call	memcpy
.L198:
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
	br	.L202
.L203:
	addi	r16, r16, 1
.L202:
	beq	r16, r20, .L206
	mov	r5, r17
	mov	r4, r19
	callr	fp
	add	r17, r17, r18
	bne	r2, zero, .L203
	mul	r7, r16, r18
	add	r2, r21, r7
	br	.L204
.L206:
	mov	r2, zero
.L204:
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
	blt	r4, zero, .L209
.L208:
	ret
.L209:
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
	br	.L211
.L212:
	addi	r16, r16, 1
.L211:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L212
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L218
	cmpnei	r2, r2, 45
	bne	r2, zero, .L219
	movi	r4, 1
.L213:
	addi	r16, r16, 1
.L214:
	mov	r2, zero
	br	.L215
.L218:
	mov	r4, zero
	br	.L213
.L219:
	mov	r4, zero
	br	.L214
.L216:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L215:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L216
	bne	r4, zero, .L217
	sub	r2, zero, r2
.L217:
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
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L233
.L234:
	addi	r16, r16, 1
.L233:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L234
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L240
	cmpnei	r2, r2, 45
	bne	r2, zero, .L241
	movi	r17, 1
.L235:
	addi	r16, r16, 1
.L236:
	mov	r8, zero
	mov	r9, zero
	br	.L237
.L240:
	mov	r17, zero
	br	.L235
.L241:
	mov	r17, zero
	br	.L236
.L238:
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
.L237:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L238
	bne	r17, zero, .L242
	mov	r2, zero
	sub	r6, r2, r8
	cmpltu	r2, r2, r6
	sub	r7, zero, r9
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
.L239:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L242:
	mov	r4, r8
	mov	r5, r9
	br	.L239
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
	br	.L244
.L251:
	srli	r17, r17, 1
.L244:
	beq	r17, zero, .L250
	srli	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r5, r16
	mov	r4, r20
	callr	r21
	blt	r2, zero, .L251
	bge	zero, r2, .L249
	add	r19, r16, r18
	srli	r2, r17, 1
	addi	r17, r17, -1
	sub	r17, r17, r2
	br	.L244
.L250:
	mov	r2, zero
.L247:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L249:
	mov	r2, r16
	br	.L247
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
	br	.L253
.L255:
	srai	r17, r17, 1
.L253:
	beq	r17, zero, .L258
	srai	r16, r17, 1
	mul	r16, r16, r19
	add	r16, r18, r16
	mov	r6, r21
	mov	r5, r16
	mov	r4, r20
	callr	fp
	beq	r2, zero, .L257
	bge	zero, r2, .L255
	add	r18, r16, r19
	addi	r17, r17, -1
	br	.L255
.L258:
	mov	r2, zero
.L254:
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
.L257:
	mov	r2, r16
	br	.L254
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
	mov	r4, r2
	mov	r5, r3
	blt	r3, zero, .L263
.L261:
	mov	r2, r4
	mov	r3, r5
	ret
.L263:
	mov	r2, zero
	sub	r6, r2, r4
	cmpltu	r2, r2, r6
	sub	r7, zero, r5
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
	br	.L261
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi	sp, sp, -44
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r20, 24(sp)
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	mov	fp, r4
	mov	r20, r5
	mov	r21, r6
	mov	r16, r7
	ldw	r17, 44(sp)
	mov	r6, r7
	mov	r7, r17
	mov	r4, r5
	mov	r5, r21
	call	__divdi3
	mov	r18, r2
	mov	r19, r3
	stw	r2, 0(sp)
	stw	r3, 4(sp)
	mov	r6, r16
	mov	r7, r17
	mov	r4, r20
	mov	r5, r21
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	stw	r18, 0(fp)
	stw	r19, 4(fp)
	stw	r4, 8(fp)
	stw	r5, 12(fp)
	mov	r2, fp
	ldw	ra, 36(sp)
	ldw	fp, 32(sp)
	ldw	r21, 28(sp)
	ldw	r20, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 44
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	mov	r2, r4
	blt	r4, zero, .L267
.L266:
	ret
.L267:
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
	mov	r4, r2
	mov	r5, r3
	blt	r3, zero, .L272
.L270:
	mov	r2, r4
	mov	r3, r5
	ret
.L272:
	mov	r2, zero
	sub	r6, r2, r4
	cmpltu	r2, r2, r6
	sub	r7, zero, r5
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
	br	.L270
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
	addi	sp, sp, -44
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r20, 24(sp)
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	mov	fp, r4
	mov	r20, r5
	mov	r21, r6
	mov	r16, r7
	ldw	r17, 44(sp)
	mov	r6, r7
	mov	r7, r17
	mov	r4, r5
	mov	r5, r21
	call	__divdi3
	mov	r18, r2
	mov	r19, r3
	stw	r2, 0(sp)
	stw	r3, 4(sp)
	mov	r6, r16
	mov	r7, r17
	mov	r4, r20
	mov	r5, r21
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	stw	r18, 0(fp)
	stw	r19, 4(fp)
	stw	r4, 8(fp)
	stw	r5, 12(fp)
	mov	r2, fp
	ldw	ra, 36(sp)
	ldw	fp, 32(sp)
	ldw	r21, 28(sp)
	ldw	r20, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 44
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	br	.L275
.L277:
	addi	r4, r4, 4
.L275:
	ldw	r2, 0(r4)
	beq	r2, zero, .L276
	bne	r5, r2, .L277
.L276:
	ldw	r2, 0(r4)
	beq	r2, zero, .L279
	mov	r2, r4
	ret
.L279:
	mov	r2, zero
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	br	.L281
.L283:
	addi	r4, r4, 4
	addi	r5, r5, 4
.L281:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L282
	beq	r3, zero, .L282
	ldw	r2, 0(r5)
	bne	r2, zero, .L283
.L282:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L285
	cmplt	r2, r2, r3
	ret
.L285:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L287:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L287
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	mov	r2, r4
	br	.L290
.L291:
	addi	r2, r2, 4
.L290:
	ldw	r3, 0(r2)
	bne	r3, zero, .L291
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.L293:
	beq	r6, zero, .L294
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L294
	beq	r3, zero, .L294
	ldw	r2, 0(r5)
	beq	r2, zero, .L294
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	br	.L293
.L294:
	beq	r6, zero, .L297
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L298
	cmplt	r2, r2, r3
	ret
.L297:
	mov	r2, zero
	ret
.L298:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	br	.L300
.L302:
	addi	r6, r6, -1
	addi	r4, r4, 4
.L300:
	beq	r6, zero, .L301
	ldw	r2, 0(r4)
	bne	r5, r2, .L302
.L301:
	beq	r6, zero, .L304
	mov	r2, r4
	ret
.L304:
	mov	r2, zero
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	br	.L306
.L308:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L306:
	beq	r6, zero, .L307
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L308
.L307:
	beq	r6, zero, .L310
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L311
	cmplt	r2, r2, r3
	ret
.L310:
	mov	r2, zero
	ret
.L311:
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov	r2, r4
	mov	r3, r4
	br	.L313
.L314:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r3)
.L313:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L314
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov	r2, r4
	beq	r4, r5, .L316
	sub	r3, r4, r5
	slli	r4, r6, 2
	bgeu	r3, r4, .L321
	mov	r6, r4
	br	.L318
.L319:
	add	r3, r5, r6
	ldw	r4, 0(r3)
	add	r3, r2, r6
	stw	r4, 0(r3)
.L318:
	addi	r6, r6, -4
	cmpnei	r3, r6, -4
	bne	r3, zero, .L319
	ret
.L320:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r4, -4(r5)
	stw	r4, -4(r3)
.L317:
	addi	r6, r6, -1
	cmpnei	r4, r6, -1
	bne	r4, zero, .L320
.L316:
	ret
.L321:
	mov	r3, r2
	br	.L317
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	mov	r3, r4
	br	.L323
.L324:
	addi	r3, r3, 4
	stw	r5, -4(r3)
.L323:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L324
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L326
	add	r2, r4, r6
	add	r5, r5, r6
	br	.L327
.L328:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
.L327:
	bne	r2, r4, .L328
	ret
.L326:
	beq	r4, r5, .L325
	add	r6, r5, r6
	mov	r2, r4
	br	.L330
.L331:
	addi	r2, r2, 1
	addi	r5, r5, 1
	ldbu	r3, -1(r2)
	stb	r3, -1(r5)
.L330:
	bne	r5, r6, .L331
.L325:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	mov	r8, r4
	mov	r9, r5
	addi	r4, r6, -32
	blt	r4, zero, .L333
	mov	r2, zero
	sll	r3, r8, r4
.L334:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L335
	mov	r5, zero
	srl	r4, r9, r7
.L336:
	or	r6, r4, r2
	or	r7, r5, r3
	mov	r2, r6
	mov	r3, r7
	ret
.L333:
	srli	r4, r8, 1
	movi	r2, 31
	sub	r2, r2, r6
	srl	r4, r4, r2
	sll	r3, r5, r6
	or	r3, r4, r3
	sll	r2, r8, r6
	br	.L334
.L335:
	slli	r7, r9, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r4, 31
	sub	r4, r4, r6
	sll	r7, r7, r4
	srl	r4, r8, r6
	or	r4, r7, r4
	srl	r5, r9, r6
	br	.L336
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	mov	r8, r4
	mov	r9, r5
	addi	r4, r6, -32
	blt	r4, zero, .L338
	mov	r3, zero
	srl	r2, r5, r4
.L339:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L340
	mov	r4, zero
	sll	r5, r8, r7
.L341:
	or	r6, r4, r2
	or	r7, r5, r3
	mov	r2, r6
	mov	r3, r7
	ret
.L338:
	slli	r4, r5, 1
	movi	r2, 31
	sub	r2, r2, r6
	sll	r4, r4, r2
	srl	r2, r8, r6
	or	r2, r4, r2
	srl	r3, r5, r6
	br	.L339
.L340:
	srli	r7, r8, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r4, 31
	sub	r4, r4, r6
	srl	r7, r7, r4
	sll	r5, r9, r6
	or	r5, r7, r5
	sll	r4, r8, r6
	br	.L341
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
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	mov	r2, zero
.L354:
	cmpnei	r3, r2, 32
	beq	r3, zero, .L358
	srl	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L359
	addi	r2, r2, 1
	br	.L354
.L359:
	addi	r2, r2, 1
	ret
.L358:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L364
	movi	r2, 1
	br	.L362
.L363:
	srai	r4, r4, 1
	addi	r2, r2, 1
.L362:
	andi	r3, r4, 1
	beq	r3, zero, .L363
	ret
.L364:
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
	blt	r2, zero, .L368
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L366:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L368:
	movi	r2, 1
	br	.L366
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L374
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	cmplt	r2, zero, r2
.L372:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L374:
	movi	r2, 1
	br	.L372
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L380
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	cmplt	r2, zero, r2
.L378:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L380:
	movi	r2, 1
	br	.L378
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
	bne	r2, zero, .L385
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r2
	mov	r4, r18
	call	__eqsf2
	beq	r2, zero, .L385
	blt	r16, zero, .L390
	movhi	r17, 16384
	br	.L388
.L390:
	movhi	r17, 16128
	br	.L388
.L387:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L385
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L388:
	andi	r2, r16, 1
	beq	r2, zero, .L387
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L387
.L385:
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
	mov	r18, r4
	mov	r19, r5
	mov	r20, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L392
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
	beq	r2, zero, .L392
	blt	r20, zero, .L397
	mov	r16, zero
	movhi	r17, 16384
	br	.L395
.L397:
	mov	r16, zero
	movhi	r17, 16352
	br	.L395
.L394:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L392
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
.L395:
	andi	r2, r20, 1
	beq	r2, zero, .L394
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
	br	.L394
.L392:
	mov	r2, r18
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
	mov	r18, r4
	mov	r19, r5
	mov	r20, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L399
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
	beq	r2, zero, .L399
	blt	r20, zero, .L404
	mov	r16, zero
	movhi	r17, 16384
	br	.L402
.L404:
	mov	r16, zero
	movhi	r17, 16352
	br	.L402
.L401:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L399
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
.L402:
	andi	r2, r20, 1
	beq	r2, zero, .L401
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
	br	.L401
.L399:
	mov	r2, r18
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
	br	.L406
.L407:
	addi	r5, r5, 1
	ldbu	r8, -1(r5)
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	xor	r7, r7, r8
	stb	r7, -1(r3)
.L406:
	bne	r3, r6, .L407
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
	br	.L409
.L411:
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
.L409:
	beq	r16, zero, .L410
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L411
.L410:
	bne	r16, zero, .L412
	stb	zero, 0(r2)
.L412:
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
.L414:
	beq	r2, r5, .L415
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L416
.L415:
	ret
.L416:
	addi	r2, r2, 1
	br	.L414
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
.L418:
	ldb	r2, 0(r4)
	beq	r2, zero, .L424
	mov	r3, r5
.L421:
	ldb	r6, 0(r3)
	beq	r6, zero, .L425
	addi	r3, r3, 1
	ldb	r7, -1(r3)
	ldb	r6, 0(r4)
	bne	r7, r6, .L421
	mov	r2, r4
	ret
.L425:
	addi	r4, r4, 1
	br	.L418
.L424:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L428
.L427:
	addi	r4, r4, 1
	ldb	r3, -1(r4)
	beq	r3, zero, .L431
.L428:
	ldb	r3, 0(r4)
	bne	r5, r3, .L427
	mov	r2, r4
	br	.L427
.L431:
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
	mov	r18, r2
	beq	r2, zero, .L436
	ldb	r19, 0(r17)
.L434:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	beq	r2, zero, .L438
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L437
	addi	r16, r16, 1
	br	.L434
.L438:
	mov	r2, zero
	br	.L433
.L436:
	mov	r2, r16
.L433:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L437:
	mov	r2, r16
	br	.L433
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
	mov	r16, r4
	mov	r17, r5
	mov	r18, r6
	mov	r19, r7
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L452
.L440:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	ble	r2, zero, .L450
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	blt	r2, zero, .L442
	mov	r4, r16
	mov	r5, r17
.L443:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L452:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	ble	r2, zero, .L440
.L442:
	mov	r4, r16
	xorhi	r5, r17, 32768
	br	.L443
.L450:
	mov	r4, r16
	mov	r5, r17
	br	.L443
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
	mov	r17, r6
	sub	r18, r5, r7
	add	r18, r4, r18
	beq	r7, zero, .L458
	bltu	r5, r7, .L459
	addi	r19, r6, 1
	addi	r20, r7, -1
	br	.L455
.L456:
	addi	r16, r16, 1
.L455:
	bltu	r18, r16, .L461
	ldb	r3, 0(r16)
	ldb	r2, 0(r17)
	bne	r3, r2, .L456
	mov	r6, r20
	mov	r5, r19
	addi	r4, r16, 1
	call	memcmp
	bne	r2, zero, .L456
	mov	r2, r16
	br	.L454
.L461:
	mov	r2, zero
.L454:
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L458:
	mov	r2, r4
	br	.L454
.L459:
	mov	r2, zero
	br	.L454
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
	mov	r16, r4
	mov	r17, r5
	mov	r19, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L483
	mov	r20, zero
.L464:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r16
	mov	r5, r17
	call	__gedf2
	blt	r2, zero, .L484
	mov	r18, zero
	br	.L466
.L483:
	mov	r2, r16
	xorhi	r3, r17, 32768
	mov	r16, r2
	mov	r17, r3
	movi	r20, 1
	br	.L464
.L468:
	addi	r18, r18, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
.L466:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r16
	mov	r5, r17
	call	__gedf2
	bge	r2, zero, .L468
.L469:
	stw	r18, 0(r19)
	beq	r20, zero, .L473
	mov	r2, r16
	xorhi	r3, r17, 32768
	mov	r16, r2
	mov	r17, r3
.L473:
	mov	r2, r16
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L484:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__ltdf2
	bge	r2, zero, .L482
	mov	r6, zero
	mov	r7, zero
	mov	r4, r16
	mov	r5, r17
	call	__nedf2
	bne	r2, zero, .L477
	mov	r18, zero
	br	.L469
.L472:
	addi	r18, r18, -1
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__adddf3
	mov	r16, r2
	mov	r17, r3
.L471:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__ltdf2
	blt	r2, zero, .L472
	br	.L469
.L477:
	mov	r18, zero
	br	.L471
.L482:
	mov	r18, zero
	br	.L469
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	mov	r8, r4
	mov	r9, r5
	mov	r4, r6
	mov	r5, r7
	mov	r2, r8
	mov	r3, r9
	mov	r6, zero
	mov	r7, zero
	br	.L486
.L487:
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
.L486:
	or	r8, r2, r3
	beq	r8, zero, .L490
	andi	r14, r2, 1
	beq	r14, zero, .L487
	add	r8, r6, r4
	cmpltu	ra, r8, r6
	add	r9, r7, r5
	add	ra, ra, r9
	mov	r6, r8
	mov	r7, ra
	br	.L487
.L490:
	mov	r2, r6
	mov	r3, r7
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r7, 33
	movi	r3, 1
	br	.L492
.L494:
	add	r5, r5, r5
	add	r3, r3, r3
.L492:
	bgeu	r5, r4, .L499
	addi	r7, r7, -1
	beq	r7, zero, .L500
	bge	r5, zero, .L494
	mov	r2, zero
	br	.L495
.L499:
	mov	r2, zero
	br	.L495
.L500:
	mov	r2, zero
	br	.L495
.L496:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L495:
	beq	r3, zero, .L502
	bltu	r4, r5, .L496
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L496
.L502:
	bne	r6, zero, .L503
.L498:
	ret
.L503:
	mov	r2, r4
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	mov	r2, r4
	andi	r3, r4, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	blt	r3, zero, .L508
.L505:
	andi	r3, r2, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L507
	slli	r4, r3, 8
	call	__clzsi2
	addi	r2, r2, -1
.L506:
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L508:
	nor	r2, zero, r4
	br	.L505
.L507:
	movi	r2, 7
	br	.L506
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	mov	r2, r4
	mov	r3, r5
	blt	r5, zero, .L515
.L510:
	or	r4, r2, r3
	beq	r4, zero, .L514
	mov	r4, r2
	mov	r5, r3
	call	__clzdi2
	addi	r2, r2, -1
.L512:
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L515:
	nor	r4, zero, r2
	nor	r5, zero, r3
	mov	r2, r4
	mov	r3, r5
	br	.L510
.L514:
	movi	r2, 63
	br	.L512
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	br	.L517
.L518:
	srli	r4, r4, 1
	add	r5, r5, r5
.L517:
	beq	r4, zero, .L520
	andi	r3, r4, 1
	beq	r3, zero, .L518
	add	r2, r2, r5
	br	.L518
.L520:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r11, r6, 3
	movi	r2, -8
	and	r2, r6, r2
	bgeu	r4, r5, .L522
.L524:
	mov	r7, r5
	mov	r3, r4
	mov	r10, zero
	br	.L523
.L522:
	add	r3, r5, r6
	bltu	r3, r4, .L524
	br	.L525
.L526:
	ldw	r8, 0(r7)
	ldw	r9, 4(r7)
	stw	r8, 0(r3)
	stw	r9, 4(r3)
	addi	r10, r10, 1
	addi	r7, r7, 8
	addi	r3, r3, 8
.L523:
	bne	r10, r11, .L526
	br	.L527
.L528:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L527:
	bltu	r2, r6, .L528
	ret
.L530:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L525:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L530
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bgeu	r4, r5, .L532
.L534:
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
	br	.L533
.L532:
	add	r2, r5, r6
	bltu	r2, r4, .L534
	br	.L535
.L536:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
.L533:
	bne	r2, r8, .L536
	andi	r2, r6, 1
	beq	r2, zero, .L531
	addi	r6, r6, -1
	add	r5, r5, r6
	add	r4, r4, r6
	ldbu	r2, 0(r5)
	stb	r2, 0(r4)
	ret
.L538:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L535:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L538
.L531:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r9, r6, 2
	movi	r2, -4
	and	r2, r6, r2
	bgeu	r4, r5, .L540
.L542:
	mov	r3, r5
	mov	r7, r4
	slli	r9, r9, 2
	add	r9, r9, r5
	br	.L541
.L540:
	add	r3, r5, r6
	bltu	r3, r4, .L542
	br	.L543
.L544:
	ldw	r8, 0(r3)
	stw	r8, 0(r7)
	addi	r3, r3, 4
	addi	r7, r7, 4
.L541:
	bne	r3, r9, .L544
	br	.L545
.L546:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L545:
	bltu	r2, r6, .L546
	ret
.L548:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L543:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L548
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
.L556:
	cmpnei	r3, r2, 16
	beq	r3, zero, .L557
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L557
	addi	r2, r2, 1
	br	.L556
.L557:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L560:
	cmpnei	r3, r2, 16
	beq	r3, zero, .L561
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L561
	addi	r2, r2, 1
	br	.L560
.L561:
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
	bge	r2, zero, .L569
	mov	r4, r16
	call	__fixsfsi
.L566:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L569:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L566
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
	br	.L571
.L572:
	addi	r3, r3, 1
.L571:
	cmpnei	r5, r3, 16
	beq	r5, zero, .L574
	sra	r5, r4, r3
	andi	r5, r5, 1
	beq	r5, zero, .L572
	addi	r2, r2, 1
	br	.L572
.L574:
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
	br	.L576
.L577:
	addi	r3, r3, 1
.L576:
	cmpnei	r5, r3, 16
	beq	r5, zero, .L579
	sra	r5, r4, r3
	andi	r5, r5, 1
	beq	r5, zero, .L577
	addi	r2, r2, 1
	br	.L577
.L579:
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	br	.L581
.L582:
	srli	r4, r4, 1
	add	r5, r5, r5
.L581:
	beq	r4, zero, .L584
	andi	r3, r4, 1
	beq	r3, zero, .L582
	add	r2, r2, r5
	br	.L582
.L584:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	beq	r4, zero, .L590
	mov	r2, zero
	br	.L587
.L588:
	add	r4, r4, r4
	srli	r5, r5, 1
.L587:
	beq	r5, zero, .L591
	andi	r3, r5, 1
	beq	r3, zero, .L588
	add	r2, r2, r4
	br	.L588
.L591:
	ret
.L590:
	mov	r2, zero
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r7, 33
	movi	r3, 1
	br	.L593
.L595:
	add	r5, r5, r5
	add	r3, r3, r3
.L593:
	bgeu	r5, r4, .L600
	addi	r7, r7, -1
	beq	r7, zero, .L601
	bge	r5, zero, .L595
	mov	r2, zero
	br	.L596
.L600:
	mov	r2, zero
	br	.L596
.L601:
	mov	r2, zero
	br	.L596
.L597:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L596:
	beq	r3, zero, .L603
	bltu	r4, r5, .L597
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L597
.L603:
	bne	r6, zero, .L604
.L599:
	ret
.L604:
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
	blt	r2, zero, .L607
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L606:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L607:
	movi	r2, -1
	br	.L606
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
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	call	__ltdf2
	blt	r2, zero, .L611
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	cmplt	r2, zero, r2
.L610:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L611:
	movi	r2, -1
	br	.L610
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	mov	r7, r5
	srai	r5, r4, 31
	mov	r2, r7
	srai	r7, r7, 31
	mov	r6, r2
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
	mov	r7, zero
	mov	r6, r5
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
	blt	r5, zero, .L624
	mov	r7, zero
.L616:
	movi	r6, 33
	mov	r2, zero
	br	.L617
.L624:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L616
.L618:
	add	r4, r4, r4
	srai	r5, r5, 1
.L617:
	beq	r5, zero, .L619
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	beq	r3, zero, .L619
	andi	r3, r5, 1
	beq	r3, zero, .L618
	add	r2, r2, r4
	br	.L618
.L619:
	beq	r7, zero, .L621
	sub	r2, zero, r2
.L621:
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L630
	mov	r16, zero
.L626:
	blt	r5, zero, .L631
.L627:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L628
	sub	r2, zero, r2
.L628:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L630:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L626
.L631:
	sub	r5, zero, r5
	xori	r16, r16, 1
	br	.L627
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L637
	mov	r16, zero
.L633:
	blt	r5, zero, .L638
.L634:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L635
	sub	r2, zero, r2
.L635:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L637:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L633
.L638:
	sub	r5, zero, r5
	br	.L634
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	movi	r7, 17
	movi	r3, 1
	andi	r8, r4, 0xffff
.L640:
	andi	r2, r5, 0xffff
	bgeu	r2, r8, .L647
	addi	r7, r7, -1
	beq	r7, zero, .L648
	andi	r2, r5, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L650
	add	r5, r5, r5
	add	r3, r3, r3
	br	.L640
.L650:
	mov	r2, zero
	br	.L643
.L647:
	mov	r2, zero
	br	.L643
.L648:
	mov	r2, zero
	br	.L643
.L644:
	slli	r3, r3, 16
	srli	r3, r3, 17
	slli	r5, r5, 16
	srli	r5, r5, 17
.L643:
	andi	r7, r3, 0xffff
	beq	r7, zero, .L651
	andi	r7, r4, 0xffff
	andi	r8, r5, 0xffff
	bltu	r7, r8, .L644
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L644
.L651:
	bne	r6, zero, .L652
.L646:
	ret
.L652:
	mov	r2, r4
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r7, 33
	movi	r3, 1
	br	.L654
.L656:
	add	r5, r5, r5
	add	r3, r3, r3
.L654:
	bgeu	r5, r4, .L661
	addi	r7, r7, -1
	beq	r7, zero, .L662
	bge	r5, zero, .L656
	mov	r2, zero
	br	.L657
.L661:
	mov	r2, zero
	br	.L657
.L662:
	mov	r2, zero
	br	.L657
.L658:
	srli	r3, r3, 1
	srli	r5, r5, 1
.L657:
	beq	r3, zero, .L664
	bltu	r4, r5, .L658
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L658
.L664:
	bne	r6, zero, .L665
.L660:
	ret
.L665:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L667
	mov	r2, zero
	addi	r6, r6, -32
	sll	r3, r4, r6
.L668:
	mov	r4, r2
	mov	r5, r3
.L669:
	mov	r2, r4
	mov	r3, r5
	ret
.L667:
	beq	r6, zero, .L670
	sll	r2, r4, r6
	sll	r7, r5, r6
	movi	r5, 32
	sub	r5, r5, r6
	srl	r4, r4, r5
	or	r3, r4, r7
	br	.L668
.L670:
	mov	r4, r2
	mov	r5, r3
	br	.L669
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L672
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
.L673:
	mov	r4, r2
	mov	r5, r3
.L674:
	mov	r2, r4
	mov	r3, r5
	ret
.L672:
	beq	r6, zero, .L675
	sra	r3, r5, r6
	movi	r7, 32
	sub	r7, r7, r6
	sll	r5, r5, r7
	srl	r4, r4, r6
	or	r2, r5, r4
	br	.L673
.L675:
	mov	r4, r2
	mov	r5, r3
	br	.L674
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	addi	sp, sp, -24
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r20, r4
	mov	r21, r5
	srli	r16, r5, 24
	srli	r4, r21, 8
	andi	r14, r4, 65280
	slli	r9, r21, 8
	srli	r4, r20, 24
	or	r4, r9, r4
	andhi	r12, r4, 255
	slli	r8, r21, 24
	srli	r4, r20, 8
	or	r4, r8, r4
	andhi	r18, r4, 65280
	srli	r3, r20, 24
	or	r7, r3, r9
	slli	r6, r20, 8
	mov	r10, zero
	andi	r11, r7, 255
	srli	r3, r20, 8
	or	r5, r3, r8
	slli	r4, r20, 24
	mov	r8, zero
	andi	r9, r5, 65280
	mov	r2, zero
	andhi	r3, r6, 255
	mov	r7, r4
	mov	r5, r7
	or	r6, r16, r14
	mov	r7, r5
	or	r4, r6, r12
	mov	r5, r7
	or	r6, r4, r18
	mov	r7, r5
	or	r4, r6, r10
	or	r5, r7, r11
	or	r6, r4, r8
	or	r7, r5, r9
	or	r4, r6, r2
	or	r5, r7, r3
	mov	r2, r4
	mov	r3, r5
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
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
	bltu	r2, r4, .L683
	movi	r3, 16
.L679:
	movi	r2, 16
	sub	r2, r2, r3
	srl	r4, r4, r2
	andi	r2, r4, 65280
	bne	r2, zero, .L684
	movi	r5, 8
.L680:
	movi	r2, 8
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 240
	bne	r2, zero, .L685
	movi	r5, 4
.L681:
	movi	r2, 4
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 12
	bne	r2, zero, .L686
	movi	r2, 2
.L682:
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
.L683:
	mov	r3, zero
	br	.L679
.L684:
	mov	r5, zero
	br	.L680
.L685:
	mov	r5, zero
	br	.L681
.L686:
	mov	r2, zero
	br	.L682
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	mov	r2, r4
	mov	r3, r5
	mov	r4, r6
	mov	r5, r7
	bgt	r5, r3, .L689
	blt	r5, r3, .L690
	bgtu	r4, r2, .L691
	bltu	r4, r2, .L692
	movi	r2, 1
	ret
.L689:
	mov	r2, zero
	ret
.L690:
	movi	r2, 2
	ret
.L691:
	mov	r2, zero
	ret
.L692:
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
	bne	r2, zero, .L699
	movi	r3, 16
.L695:
	srl	r4, r4, r3
	andi	r2, r4, 255
	bne	r2, zero, .L700
	movi	r2, 8
.L696:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 15
	bne	r2, zero, .L701
	movi	r2, 4
.L697:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 3
	bne	r2, zero, .L702
	movi	r2, 2
.L698:
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
.L699:
	mov	r3, zero
	br	.L695
.L700:
	mov	r2, zero
	br	.L696
.L701:
	mov	r2, zero
	br	.L697
.L702:
	mov	r2, zero
	br	.L698
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L704
	mov	r3, zero
	addi	r6, r6, -32
	srl	r2, r5, r6
.L705:
	mov	r4, r2
	mov	r5, r3
.L706:
	mov	r2, r4
	mov	r3, r5
	ret
.L704:
	beq	r6, zero, .L707
	srl	r3, r5, r6
	movi	r7, 32
	sub	r7, r7, r6
	sll	r5, r5, r7
	srl	r4, r4, r6
	or	r2, r5, r4
	br	.L705
.L707:
	mov	r4, r2
	mov	r5, r3
	br	.L706
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
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
	ret
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi	sp, sp, -36
	stw	ra, 32(sp)
	stw	r21, 28(sp)
	stw	r20, 24(sp)
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	mov	r20, r4
	mov	r21, r5
	mov	r18, r6
	mov	r19, r7
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	mov	r5, r6
	call	__muldsi3
	mov	r7, r3
	mov	r4, r2
	mul	r3, r21, r18
	mul	r2, r19, r20
	add	r3, r3, r2
	add	r3, r3, r7
	mov	r6, r4
	mov	r2, r6
	ldw	ra, 32(sp)
	ldw	r21, 28(sp)
	ldw	r20, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 36
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	mov	r6, r4
	mov	r7, r5
	mov	r2, zero
	sub	r4, r2, r6
	cmpltu	r3, r2, r4
	sub	r5, zero, r7
	sub	r3, r5, r3
	mov	r8, r4
	mov	r2, r8
	ret
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
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
	mov	r16, r4
	mov	r17, r5
	mov	r20, r6
	srli	r21, r6, 31
	mov	r18, zero
	movhi	r19, 16368
	br	.L718
.L716:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L717
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
.L718:
	andi	r2, r20, 1
	beq	r2, zero, .L716
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
	br	.L716
.L717:
	beq	r21, zero, .L720
	mov	r6, r18
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r4, r2
	mov	r5, r3
.L719:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L720:
	mov	r4, r18
	mov	r5, r19
	br	.L719
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
	br	.L724
.L722:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L723
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L724:
	andi	r2, r16, 1
	beq	r2, zero, .L722
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L722
.L723:
	beq	r19, zero, .L726
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
.L725:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L726:
	mov	r2, r18
	br	.L725
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	mov	r2, r4
	mov	r3, r5
	mov	r4, r6
	mov	r5, r7
	bgtu	r5, r3, .L729
	bltu	r5, r3, .L730
	bgtu	r4, r2, .L731
	bltu	r4, r2, .L732
	movi	r2, 1
	ret
.L729:
	mov	r2, zero
	ret
.L730:
	movi	r2, 2
	ret
.L731:
	mov	r2, zero
	ret
.L732:
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
