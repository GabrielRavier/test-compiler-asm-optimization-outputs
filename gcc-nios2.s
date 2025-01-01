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
	bne	r6, r3, .L5
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
	beq	r3, r6, .L10
	addi	r7, r7, -1
	addi	r5, r5, 1
	addi	r4, r4, 1
	bne	r7, zero, .L9
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
	mov	r2, r4
	beq	r6, zero, .L17
.L16:
	ldbu	r2, 0(r4)
	beq	r2, r5, .L22
	addi	r4, r4, 1
	addi	r6, r6, -1
	bne	r6, zero, .L16
	mov	r2, r4
	br	.L17
.L22:
	mov	r2, r4
.L17:
	beq	r6, zero, .L23
.L15:
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
	beq	r6, zero, .L29
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L29:
	mov	r2, zero
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	beq	r6, zero, .L32
	call	memcpy
.L32:
	mov	r2, r16
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	andi	r5, r5, 0xff
	addi	r6, r6, -1
	add	r6, r4, r6
	addi	r4, r4, -1
.L35:
	beq	r6, r4, .L38
	mov	r2, r6
	addi	r6, r6, -1
	ldbu	r3, 0(r2)
	bne	r3, r5, .L35
	ret
.L38:
	mov	r2, zero
.L34:
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	mov	r2, r4
	beq	r6, zero, .L40
	add	r6, r4, r6
	mov	r3, r4
.L41:
	stb	r5, 0(r3)
	addi	r3, r3, 1
	bne	r6, r3, .L41
.L40:
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
	beq	r3, zero, .L44
.L45:
	addi	r5, r5, 1
	addi	r2, r2, 1
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L45
.L44:
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	andi	r5, r5, 0xff
	ldbu	r3, 0(r4)
	andi	r2, r3, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	beq	r2, zero, .L53
.L48:
	andi	r3, r3, 0xff
	beq	r3, r5, .L54
	addi	r4, r4, 1
	ldbu	r3, 0(r4)
	andi	r2, r3, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L48
	mov	r2, r4
	ret
.L53:
	mov	r2, r4
	ret
.L54:
	mov	r2, r4
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
.L57:
	ldbu	r3, 0(r2)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, r5, .L56
	addi	r2, r2, 1
	bne	r4, zero, .L57
	mov	r2, zero
.L56:
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	andi	r7, r2, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	andi	r6, r3, 255
	xori	r6, r6, 128
	addi	r6, r6, -128
	bne	r7, r6, .L61
.L60:
	andi	r6, r2, 255
	xori	r6, r6, 128
	addi	r6, r6, -128
	beq	r6, zero, .L61
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	andi	r7, r2, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	andi	r6, r3, 255
	xori	r6, r6, 128
	addi	r6, r6, -128
	beq	r7, r6, .L60
.L61:
	andi	r2, r2, 0xff
	andi	r3, r3, 0xff
	sub	r2, r2, r3
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L67
	mov	r2, r4
.L66:
	addi	r2, r2, 1
	ldb	r5, 0(r2)
	bne	r5, zero, .L66
.L65:
	sub	r2, r2, r4
	ret
.L67:
	mov	r2, r4
	br	.L65
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L74
	ldbu	r2, 0(r4)
	andi	r3, r2, 0xff
	beq	r3, zero, .L71
	addi	r6, r6, -1
	add	r6, r4, r6
.L72:
	ldbu	r3, 0(r5)
	andi	r7, r3, 0xff
	beq	r7, zero, .L71
	beq	r4, r6, .L71
	mov	r3, r7
	andi	r7, r2, 0xff
	bne	r3, r7, .L71
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, 0(r4)
	andi	r3, r2, 0xff
	bne	r3, zero, .L72
.L71:
	andi	r2, r2, 0xff
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L74:
	mov	r2, zero
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L75
	movi	r2, -2
	and	r6, r6, r2
	add	r3, r4, r6
.L77:
	ldbu	r2, 1(r4)
	stb	r2, 0(r5)
	ldbu	r2, 0(r4)
	stb	r2, 1(r5)
	addi	r5, r5, 2
	addi	r4, r4, 2
	bne	r4, r3, .L77
.L75:
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
	bne	r2, zero, .L83
	cmpeqi	r2, r4, 9
	ret
.L83:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L86
	cmpeqi	r2, r4, 127
	ret
.L86:
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
	bne	r2, zero, .L93
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
	ret
.L93:
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
	bne	r2, zero, .L97
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L98
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L99
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r4, r4, r2
	cmpltui	r2, r4, 3
	ret
.L97:
	movi	r2, 1
	ret
.L98:
	movi	r2, 1
	ret
.L99:
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
	beq	r2, zero, .L108
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L104
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L105
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L106
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L107
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L108:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	ret
.L104:
	movi	r2, 1
	ret
.L105:
	movi	r2, 1
	ret
.L106:
	movi	r2, 1
	ret
.L107:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L111
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	ret
.L111:
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
	bne	r2, zero, .L116
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L117
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L120
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
.L113:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L116:
	mov	r2, r17
	mov	r3, r16
	br	.L113
.L117:
	mov	r2, r19
	mov	r3, r18
	br	.L113
.L120:
	mov	r2, zero
	mov	r3, zero
	br	.L113
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
	bne	r2, zero, .L125
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L126
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L129
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L122:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L125:
	mov	r2, r16
	br	.L122
.L126:
	mov	r2, r17
	br	.L122
.L129:
	mov	r2, zero
	br	.L122
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
	mov	r19, r4
	mov	r18, r5
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L137
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L138
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L133
	bne	r2, zero, .L139
	mov	r2, r19
	mov	r3, r18
	br	.L131
.L133:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L135
	mov	r17, r19
	mov	r16, r18
.L135:
	mov	r2, r17
	mov	r3, r16
.L131:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L137:
	mov	r2, r17
	mov	r3, r16
	br	.L131
.L138:
	mov	r2, r19
	mov	r3, r18
	br	.L131
.L139:
	mov	r2, r17
	mov	r3, r16
	br	.L131
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L147
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L148
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L143
	bne	r2, zero, .L149
	mov	r2, r17
	br	.L141
.L143:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	blt	r2, zero, .L145
	mov	r16, r17
.L145:
	mov	r2, r16
.L141:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L147:
	mov	r2, r16
	br	.L141
.L148:
	mov	r2, r17
	br	.L141
.L149:
	mov	r2, r16
	br	.L141
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
	mov	r19, r4
	mov	r18, r5
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L157
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L158
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L153
	bne	r2, zero, .L159
	mov	r2, r19
	mov	r3, r18
	br	.L151
.L153:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L155
	mov	r17, r19
	mov	r16, r18
.L155:
	mov	r2, r17
	mov	r3, r16
.L151:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L157:
	mov	r2, r17
	mov	r3, r16
	br	.L151
.L158:
	mov	r2, r19
	mov	r3, r18
	br	.L151
.L159:
	mov	r2, r17
	mov	r3, r16
	br	.L151
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
	mov	r17, r4
	mov	r16, r5
	mov	r18, r6
	mov	r19, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L167
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L168
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L163
	bne	r2, zero, .L169
	mov	r2, r18
	mov	r3, r19
	br	.L161
.L163:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L165
	mov	r17, r18
	mov	r16, r19
.L165:
	mov	r2, r17
	mov	r3, r16
.L161:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L167:
	mov	r2, r18
	mov	r3, r19
	br	.L161
.L168:
	mov	r2, r17
	mov	r3, r16
	br	.L161
.L169:
	mov	r2, r17
	mov	r3, r16
	br	.L161
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L177
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L178
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L173
	bne	r2, zero, .L179
	mov	r2, r17
	br	.L171
.L173:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	blt	r2, zero, .L175
	mov	r16, r17
.L175:
	mov	r2, r16
.L171:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L177:
	mov	r2, r17
	br	.L171
.L178:
	mov	r2, r16
	br	.L171
.L179:
	mov	r2, r16
	br	.L171
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
	mov	r17, r4
	mov	r16, r5
	mov	r18, r6
	mov	r19, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L187
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L188
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L183
	bne	r2, zero, .L189
	mov	r2, r18
	mov	r3, r19
	br	.L181
.L183:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L185
	mov	r17, r18
	mov	r16, r19
.L185:
	mov	r2, r17
	mov	r3, r16
.L181:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L187:
	mov	r2, r18
	mov	r3, r19
	br	.L181
.L188:
	mov	r2, r17
	mov	r3, r16
	br	.L181
.L189:
	mov	r2, r17
	mov	r3, r16
	br	.L181
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
	beq	r4, zero, .L194
	addi	r3, gp, %gprel(s.0)
.L193:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
	bne	r4, zero, .L193
.L192:
	stb	zero, 0(r3)
	addi	r2, gp, %gprel(s.0)
	ret
.L194:
	addi	r3, gp, %gprel(s.0)
	br	.L192
	.size	l64a, .-l64a
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
	beq	r5, zero, .L202
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L199
	stw	r4, 4(r2)
.L199:
	ret
.L202:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L204
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L204:
	ldw	r2, 4(r4)
	beq	r2, zero, .L203
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L203:
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
	mov	r20, r4
	stw	r5, 0(sp)
	stw	r6, 4(sp)
	mov	r19, r7
	ldw	fp, 40(sp)
	ldw	r18, 0(r6)
	beq	r18, zero, .L207
	mov	r16, r5
	mov	r17, zero
.L209:
	mov	r21, r16
	mov	r5, r16
	mov	r4, r20
	callr	fp
	beq	r2, zero, .L206
	addi	r17, r17, 1
	add	r16, r16, r19
	bne	r18, r17, .L209
.L207:
	addi	r2, r18, 1
	ldw	r3, 4(sp)
	stw	r2, 0(r3)
	mul	r4, r19, r18
	mov	r6, r19
	mov	r5, r20
	ldw	r2, 0(sp)
	add	r4, r2, r4
	call	memcpy
	mov	r21, r2
.L206:
	mov	r2, r21
	ldw	ra, 36(sp)
	ldw	fp, 32(sp)
	ldw	r21, 28(sp)
	ldw	r20, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 40
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
	ldw	fp, 32(sp)
	ldw	r20, 0(r6)
	beq	r20, zero, .L213
	mov	r18, r4
	mov	r19, r7
	mov	r16, r5
	mov	r17, zero
.L215:
	mov	r21, r16
	mov	r5, r16
	mov	r4, r18
	callr	fp
	beq	r2, zero, .L212
	addi	r17, r17, 1
	add	r16, r16, r19
	bne	r20, r17, .L215
.L213:
	mov	r21, zero
.L212:
	mov	r2, r21
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
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L222
.L223:
	addi	r16, r16, 1
.L222:
	ldbu	r17, 0(r16)
	andi	r4, r17, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	bne	r2, zero, .L223
	andi	r3, r17, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	cmpeqi	r3, r3, 43
	bne	r3, zero, .L229
	andi	r17, r17, 255
	xori	r17, r17, 128
	addi	r17, r17, -128
	cmpnei	r17, r17, 45
	bne	r17, zero, .L230
	movi	r5, 1
.L224:
	addi	r16, r16, 1
.L225:
	ldbu	r3, 0(r16)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	addi	r4, r4, -48
	cmpltui	r4, r4, 10
	beq	r4, zero, .L227
.L226:
	muli	r2, r2, 10
	addi	r16, r16, 1
	addi	r3, r3, -48
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	sub	r2, r2, r3
	ldbu	r3, 0(r16)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	addi	r4, r4, -48
	cmpltui	r4, r4, 10
	bne	r4, zero, .L226
.L227:
	bne	r5, zero, .L221
	sub	r2, zero, r2
.L221:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L229:
	mov	r5, r2
	br	.L224
.L230:
	mov	r5, r2
	br	.L225
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L235
.L236:
	addi	r16, r16, 1
.L235:
	ldbu	r17, 0(r16)
	andi	r4, r17, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	bne	r2, zero, .L236
	andi	r3, r17, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	cmpeqi	r3, r3, 43
	bne	r3, zero, .L242
	andi	r17, r17, 255
	xori	r17, r17, 128
	addi	r17, r17, -128
	cmpnei	r17, r17, 45
	bne	r17, zero, .L243
	movi	r5, 1
.L237:
	addi	r16, r16, 1
.L238:
	ldbu	r3, 0(r16)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	addi	r4, r4, -48
	cmpltui	r4, r4, 10
	beq	r4, zero, .L240
.L239:
	muli	r2, r2, 10
	addi	r16, r16, 1
	addi	r3, r3, -48
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	sub	r2, r2, r3
	ldbu	r3, 0(r16)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	addi	r4, r4, -48
	cmpltui	r4, r4, 10
	bne	r4, zero, .L239
.L240:
	bne	r5, zero, .L234
	sub	r2, zero, r2
.L234:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L242:
	mov	r5, r2
	br	.L237
.L243:
	mov	r5, r2
	br	.L238
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	br	.L248
.L249:
	addi	r16, r16, 1
.L248:
	ldbu	r18, 0(r16)
	andi	r4, r18, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	mov	r17, r2
	bne	r2, zero, .L249
	andi	r2, r18, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r2, r2, 43
	bne	r2, zero, .L250
	andi	r18, r18, 255
	xori	r18, r18, 128
	addi	r18, r18, -128
	cmpnei	r18, r18, 45
	bne	r18, zero, .L251
	movi	r17, 1
.L250:
	addi	r16, r16, 1
.L251:
	ldbu	r18, 0(r16)
	andi	r2, r18, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L258
	mov	r4, zero
	mov	r5, zero
.L252:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	addi	r16, r16, 1
	addi	r4, r18, -48
	andi	r4, r4, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	srai	r5, r4, 31
	sub	r4, r2, r4
	cmpltu	r2, r2, r4
	sub	r5, r3, r5
	sub	r5, r5, r2
	ldbu	r18, 0(r16)
	andi	r2, r18, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L252
.L253:
	bne	r17, zero, .L247
	cmpne	r2, r4, zero
	sub	r5, zero, r5
	sub	r5, r5, r2
	sub	r4, zero, r4
.L247:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L258:
	mov	r4, zero
	mov	r5, zero
	br	.L253
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
	ldw	fp, 32(sp)
	beq	r6, zero, .L260
	mov	r21, r4
	mov	r20, r5
	mov	r16, r6
	mov	r19, r7
	br	.L263
.L264:
	mov	r16, r18
.L261:
	beq	r16, zero, .L260
.L263:
	srli	r18, r16, 1
	mul	r17, r18, r19
	add	r17, r20, r17
	mov	r5, r17
	mov	r4, r21
	callr	fp
	blt	r2, zero, .L264
	bge	zero, r2, .L259
	add	r20, r17, r19
	addi	r16, r16, -1
	sub	r16, r16, r18
	br	.L261
.L260:
	mov	r17, zero
.L259:
	mov	r2, r17
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
	ldw	fp, 32(sp)
	ldw	r21, 36(sp)
	beq	r6, zero, .L268
	mov	r20, r4
	mov	r19, r5
	mov	r18, r7
	mov	r17, r6
	br	.L271
.L270:
	srai	r17, r17, 1
	beq	r17, zero, .L268
.L271:
	srai	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r6, r21
	mov	r5, r16
	mov	r4, r20
	callr	fp
	beq	r2, zero, .L267
	bge	zero, r2, .L270
	add	r19, r16, r18
	addi	r17, r17, -1
	br	.L270
.L268:
	mov	r16, zero
.L267:
	mov	r2, r16
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
	blt	r5, zero, .L279
.L277:
	ret
.L279:
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
	addi	sp, sp, -28
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r18, r5
	mov	r17, r6
	mov	r19, r7
	ldw	r20, 28(sp)
	mov	r6, r7
	mov	r7, r20
	mov	r4, r5
	mov	r5, r17
	call	__divdi3
	stw	r2, 0(r16)
	stw	r3, 4(r16)
	mov	r6, r19
	mov	r7, r20
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r2, 8(r16)
	stw	r3, 12(r16)
	mov	r2, r16
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	mov	r2, r4
	blt	r4, zero, .L284
.L283:
	ret
.L284:
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
	blt	r5, zero, .L290
.L288:
	ret
.L290:
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
	addi	sp, sp, -28
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r18, r5
	mov	r17, r6
	mov	r19, r7
	ldw	r20, 28(sp)
	mov	r6, r7
	mov	r7, r20
	mov	r4, r5
	mov	r5, r17
	call	__divdi3
	stw	r2, 0(r16)
	stw	r3, 4(r16)
	mov	r6, r19
	mov	r7, r20
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r2, 8(r16)
	stw	r3, 12(r16)
	mov	r2, r16
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	ldw	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L295
.L294:
	beq	r5, r3, .L300
	addi	r4, r4, 4
	ldw	r3, 0(r4)
	bne	r3, zero, .L294
	mov	r2, r4
	br	.L295
.L300:
	mov	r2, r4
.L295:
	beq	r3, zero, .L301
.L293:
	ret
.L301:
	mov	r2, zero
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L304
.L303:
	beq	r3, zero, .L304
	beq	r2, zero, .L304
	addi	r4, r4, 4
	addi	r5, r5, 4
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L303
.L304:
	blt	r3, r2, .L307
	cmplt	r2, r2, r3
	ret
.L307:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L310:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L310
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L315
	mov	r2, r4
.L314:
	addi	r2, r2, 4
	ldw	r3, 0(r2)
	bne	r3, zero, .L314
.L313:
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L315:
	mov	r2, r4
	br	.L313
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L319
.L318:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	bne	r2, r3, .L319
	beq	r2, zero, .L319
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L318
.L319:
	beq	r6, zero, .L322
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L323
	cmplt	r2, r2, r3
	ret
.L322:
	mov	r2, zero
	ret
.L323:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	mov	r2, r4
	beq	r6, zero, .L327
.L326:
	ldw	r2, 0(r4)
	beq	r2, r5, .L332
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r6, zero, .L326
	mov	r2, r4
	br	.L327
.L332:
	mov	r2, r4
.L327:
	beq	r6, zero, .L333
.L325:
	ret
.L333:
	mov	r2, zero
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L336
.L335:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L336
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L335
.L336:
	beq	r6, zero, .L339
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L340
	cmplt	r2, r2, r3
	ret
.L339:
	mov	r2, zero
	ret
.L340:
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	beq	r6, zero, .L343
	slli	r6, r6, 2
	call	memcpy
.L343:
	mov	r2, r16
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov	r2, r4
	beq	r4, r5, .L346
	mov	r4, r5
	sub	r3, r2, r5
	slli	r7, r6, 2
	bltu	r3, r7, .L347
	addi	r7, r6, -1
	mov	r3, r2
	beq	r6, zero, .L354
.L348:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	addi	r7, r7, -1
	cmpnei	r6, r7, -1
	bne	r6, zero, .L348
.L346:
	ret
.L354:
	ret
.L347:
	addi	r3, r6, -1
	beq	r6, zero, .L346
	slli	r3, r3, 2
	add	r5, r5, r3
	add	r3, r2, r3
.L349:
	ldw	r6, 0(r5)
	stw	r6, 0(r3)
	mov	r6, r5
	addi	r5, r5, -4
	addi	r3, r3, -4
	bne	r4, r6, .L349
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L356
	mov	r6, r4
.L357:
	addi	r6, r6, 4
	stw	r5, -4(r6)
	addi	r3, r3, -1
	cmpnei	r7, r3, -1
	bne	r7, zero, .L357
.L356:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L360
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L359
.L362:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
	bne	r4, r2, .L362
	ret
.L360:
	beq	r4, r5, .L359
	beq	r6, zero, .L359
	add	r6, r4, r6
.L363:
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, -1(r4)
	stb	r2, -1(r5)
	bne	r6, r4, .L363
.L359:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r8, r6, -32
	blt	r8, zero, .L367
	sll	r8, r4, r8
	mov	r2, zero
.L368:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L369
	srl	r7, r5, r7
	mov	r3, zero
.L370:
	or	r2, r7, r2
	or	r3, r3, r8
	ret
.L367:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r8, r5, r6
	or	r8, r2, r8
	sll	r2, r4, r6
	br	.L368
.L369:
	slli	r3, r5, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	sll	r3, r3, r7
	srl	r7, r4, r6
	or	r7, r3, r7
	srl	r3, r5, r6
	br	.L370
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L372
	srl	r8, r5, r8
	mov	r3, zero
.L373:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L374
	sll	r7, r4, r7
	mov	r2, zero
.L375:
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L372:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	br	.L373
.L374:
	srli	r2, r4, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	br	.L375
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
	andi	r5, r5, 15
	sll	r2, r4, r5
	andi	r4, r4, 0xffff
	sub	r5, zero, r5
	andi	r5, r5, 15
	srl	r4, r4, r5
	or	r2, r2, r4
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	andi	r5, r5, 15
	andi	r2, r4, 0xffff
	srl	r2, r2, r5
	sub	r5, zero, r5
	andi	r5, r5, 15
	sll	r4, r4, r5
	or	r2, r2, r4
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	andi	r5, r5, 7
	sll	r2, r4, r5
	andi	r4, r4, 0xff
	sub	r5, zero, r5
	andi	r5, r5, 7
	srl	r4, r4, r5
	or	r2, r2, r4
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	andi	r5, r5, 7
	andi	r2, r4, 0xff
	srl	r2, r2, r5
	sub	r5, zero, r5
	andi	r5, r5, 7
	sll	r4, r4, r5
	or	r2, r2, r4
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	andi	r2, r4, 65280
	srli	r2, r2, 8
	slli	r4, r4, 8
	or	r2, r2, r4
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	slli	r2, r4, 24
	srli	r3, r4, 24
	or	r2, r2, r3
	srli	r3, r4, 8
	andi	r3, r3, 65280
	or	r2, r2, r3
	slli	r4, r4, 8
	andhi	r4, r4, 255
	or	r2, r2, r4
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	slli	r6, r4, 24
	srli	r2, r5, 24
	srli	r3, r5, 8
	andi	r3, r3, 65280
	or	r2, r2, r3
	slli	r3, r5, 8
	andhi	r3, r3, 255
	or	r2, r2, r3
	slli	r5, r5, 24
	slli	r3, r4, 8
	srli	r7, r4, 24
	or	r6, r6, r7
	srli	r4, r4, 8
	andi	r4, r4, 65280
	or	r4, r6, r4
	andhi	r3, r3, 255
	or	r2, r2, r5
	or	r3, r4, r3
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	mov	r2, zero
.L390:
	srl	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L392
	addi	r2, r2, 1
	cmpnei	r3, r2, 32
	bne	r3, zero, .L390
	mov	r2, zero
	ret
.L392:
	addi	r2, r2, 1
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L396
	andi	r2, r4, 1
	bne	r2, zero, .L393
	movi	r2, 1
.L395:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L395
	ret
.L396:
	mov	r2, r4
.L393:
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
	blt	r2, zero, .L401
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L398:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L401:
	movi	r2, 1
	br	.L398
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
	blt	r2, zero, .L406
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L403:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L406:
	movi	r2, 1
	br	.L403
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
	blt	r2, zero, .L411
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L408:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L411:
	movi	r2, 1
	br	.L408
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
	bne	r2, zero, .L416
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L416
	blt	r16, zero, .L422
	movhi	r17, 16384
	br	.L419
.L422:
	movhi	r17, 16128
	br	.L419
.L418:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L416
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L419:
	andi	r2, r16, 1
	beq	r2, zero, .L418
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L418
.L416:
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
	bne	r2, zero, .L424
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r6, r20
	mov	r7, r19
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L424
	blt	r16, zero, .L430
	mov	r18, zero
	movhi	r17, 16384
	br	.L427
.L430:
	mov	r18, zero
	movhi	r17, 16352
	br	.L427
.L426:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L424
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L427:
	andi	r2, r16, 1
	beq	r2, zero, .L426
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L426
.L424:
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
	bne	r2, zero, .L432
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r6, r20
	mov	r7, r19
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L432
	blt	r16, zero, .L438
	mov	r18, zero
	movhi	r17, 16384
	br	.L435
.L438:
	mov	r18, zero
	movhi	r17, 16352
	br	.L435
.L434:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L432
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L435:
	andi	r2, r16, 1
	beq	r2, zero, .L434
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L434
.L432:
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
	beq	r6, zero, .L440
	add	r6, r5, r6
	mov	r3, r4
.L441:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	ldbu	r8, -1(r5)
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L441
.L440:
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
	beq	r16, zero, .L445
.L444:
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L445
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
	bne	r16, zero, .L444
.L445:
	bne	r16, zero, .L447
	stb	zero, 0(r2)
.L447:
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
	beq	r5, zero, .L457
.L451:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L458
.L450:
	ret
.L457:
	mov	r2, r5
	ret
.L458:
	addi	r2, r2, 1
	bne	r5, r2, .L451
	mov	r2, r5
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	mov	r2, r4
	ldbu	r8, 0(r4)
	andi	r3, r8, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L466
.L460:
	mov	r6, r5
	andi	r8, r8, 255
	xori	r8, r8, 128
	addi	r8, r8, -128
.L463:
	ldbu	r3, 0(r6)
	andi	r7, r3, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L467
	addi	r6, r6, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, r8, .L463
.L461:
	ret
.L466:
	mov	r2, zero
	ret
.L467:
	addi	r2, r2, 1
	ldbu	r8, 0(r2)
	andi	r3, r8, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L460
	mov	r2, zero
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L470
.L469:
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L473
.L470:
	ldbu	r3, 0(r4)
	andi	r6, r3, 255
	xori	r6, r6, 128
	addi	r6, r6, -128
	bne	r6, r5, .L469
	mov	r2, r4
	br	.L469
.L473:
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
	beq	r2, zero, .L474
	mov	r18, r2
	ldb	r19, 0(r17)
.L476:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	beq	r2, zero, .L474
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L474
	addi	r16, r16, 1
	br	.L476
.L474:
	mov	r2, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
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
	blt	r2, zero, .L490
.L481:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L484
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L483
.L484:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L490:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L481
.L483:
	xorhi	r16, r16, 32768
	br	.L484
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
	beq	r7, zero, .L495
	bltu	r5, r7, .L496
	sub	r5, r5, r7
	add	r17, r4, r5
	bltu	r17, r4, .L497
	ldb	r19, 0(r6)
	addi	r20, r7, -1
	addi	r18, r6, 1
	br	.L494
.L493:
	addi	r16, r16, 1
	bltu	r17, r16, .L501
.L494:
	ldb	r2, 0(r16)
	bne	r2, r19, .L493
	mov	r6, r20
	mov	r5, r18
	addi	r4, r16, 1
	call	memcmp
	bne	r2, zero, .L493
	mov	r2, r16
	br	.L491
.L501:
	mov	r2, zero
.L491:
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L495:
	mov	r2, r4
	br	.L491
.L496:
	mov	r2, zero
	br	.L491
.L497:
	mov	r2, zero
	br	.L491
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
	blt	r2, zero, .L526
	mov	r18, zero
.L505:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r20
	mov	r5, r19
	call	__gedf2
	blt	r2, zero, .L523
	mov	r16, zero
.L509:
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
	bge	r2, zero, .L509
.L510:
	stw	r16, 0(r17)
	beq	r18, zero, .L513
	xorhi	r19, r19, 32768
.L513:
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
.L526:
	xorhi	r19, r19, 32768
	movi	r18, 1
	br	.L505
.L523:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r20
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L524
	mov	r6, zero
	mov	r7, zero
	mov	r4, r20
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L516
	mov	r16, zero
.L512:
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
	blt	r2, zero, .L512
	br	.L510
.L524:
	mov	r16, zero
	br	.L510
.L516:
	mov	r16, zero
	br	.L510
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
	mov	r19, r4
	or	r4, r4, r5
	beq	r4, zero, .L531
	mov	r17, r6
	mov	r16, r7
	mov	r20, r5
	mov	r18, zero
	mov	r21, zero
.L530:
	mov	r6, r17
	mov	r7, r16
	andi	r4, r19, 1
	mov	r5, zero
	call	__muldi3
	add	r2, r18, r2
	cmpltu	r4, r2, r18
	add	r3, r21, r3
	mov	r18, r2
	add	r21, r4, r3
	srli	r2, r17, 31
	slli	r16, r16, 1
	or	r16, r2, r16
	slli	r17, r17, 1
	slli	r3, r20, 31
	srli	r2, r19, 1
	or	r2, r3, r2
	srli	r3, r20, 1
	mov	r19, r2
	mov	r20, r3
	or	r2, r2, r3
	bne	r2, zero, .L530
.L527:
	mov	r2, r18
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
.L531:
	mov	r18, zero
	mov	r21, zero
	br	.L527
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L536
	movi	r2, 32
	movi	r3, 1
.L535:
	blt	r5, zero, .L536
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L536
	addi	r2, r2, -1
	bne	r2, zero, .L535
	mov	r3, r2
.L536:
	mov	r2, zero
	bne	r3, zero, .L537
	mov	r2, r3
.L538:
	bne	r6, zero, .L548
.L534:
	ret
.L540:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L538
.L537:
	bltu	r4, r5, .L540
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L540
.L548:
	mov	r2, r4
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	andi	r3, r4, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	srai	r2, r3, 7
	xor	r4, r2, r4
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	beq	r3, r2, .L551
	addi	sp, sp, -4
	stw	ra, 0(sp)
	andi	r4, r4, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	slli	r4, r4, 8
	call	__clzsi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L551:
	movi	r2, 7
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	mov	r3, r4
	mov	r2, r5
	srai	r6, r5, 31
	xor	r4, r4, r6
	xor	r5, r5, r6
	beq	r3, r6, .L565
.L560:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L565:
	bne	r2, r6, .L560
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	beq	r4, zero, .L569
	mov	r2, zero
.L568:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L568
	ret
.L569:
	mov	r2, r4
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r9, r6, 3
	movi	r10, -8
	and	r10, r6, r10
	bgeu	r4, r5, .L572
.L575:
	beq	r9, zero, .L574
	mov	r2, r5
	mov	r3, r4
	slli	r9, r9, 3
	add	r9, r9, r5
.L578:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r2, r2, 8
	addi	r3, r3, 8
	bne	r2, r9, .L578
.L574:
	bgeu	r10, r6, .L571
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L579:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L579
	ret
.L572:
	add	r2, r5, r6
	bltu	r2, r4, .L575
	addi	r2, r6, -1
	beq	r6, zero, .L584
.L576:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L576
.L571:
	ret
.L584:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bgeu	r4, r5, .L586
.L589:
	beq	r8, zero, .L588
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
.L592:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
	bne	r2, r8, .L592
.L588:
	andi	r2, r6, 1
	beq	r2, zero, .L585
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L586:
	add	r2, r5, r6
	bltu	r2, r4, .L589
	addi	r2, r6, -1
	beq	r6, zero, .L596
.L590:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L590
.L585:
	ret
.L596:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r8, r6, 2
	movi	r9, -4
	and	r9, r6, r9
	bgeu	r4, r5, .L598
.L601:
	beq	r8, zero, .L600
	mov	r2, r5
	mov	r3, r4
	slli	r8, r8, 2
	add	r8, r8, r5
.L604:
	ldw	r7, 0(r2)
	stw	r7, 0(r3)
	addi	r2, r2, 4
	addi	r3, r3, 4
	bne	r2, r8, .L604
.L600:
	bgeu	r9, r6, .L597
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L605:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L605
	ret
.L598:
	add	r2, r5, r6
	bltu	r2, r4, .L601
	addi	r2, r6, -1
	beq	r6, zero, .L610
.L602:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L602
.L597:
	ret
.L610:
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
.L625:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L623
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L625
.L623:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L629:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L627
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L629
.L627:
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
	bge	r2, zero, .L638
	mov	r4, r16
	call	__fixsfsi
.L631:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L638:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L631
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
.L640:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L640
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
.L643:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L643
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	beq	r4, zero, .L648
	mov	r2, zero
.L647:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L647
	ret
.L648:
	mov	r2, r4
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	beq	r4, zero, .L653
	beq	r5, zero, .L654
	mov	r2, zero
.L652:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srli	r5, r5, 1
	bne	r5, zero, .L652
	ret
.L653:
	mov	r2, r4
	ret
.L654:
	mov	r2, r5
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L658
	movi	r2, 32
	movi	r3, 1
.L657:
	blt	r5, zero, .L658
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L658
	addi	r2, r2, -1
	bne	r2, zero, .L657
	mov	r3, r2
.L658:
	mov	r2, zero
	bne	r3, zero, .L659
	mov	r2, r3
.L660:
	bne	r6, zero, .L670
.L656:
	ret
.L662:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L660
.L659:
	bltu	r4, r5, .L662
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L662
.L670:
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
	blt	r2, zero, .L674
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L671:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L674:
	movi	r2, -1
	br	.L671
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
	blt	r2, zero, .L679
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L676:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L679:
	movi	r2, -1
	br	.L676
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
	blt	r5, zero, .L693
	mov	r7, zero
.L686:
	beq	r5, zero, .L691
	movi	r6, 32
	mov	r2, zero
.L688:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srai	r5, r5, 1
	beq	r5, zero, .L687
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L688
.L687:
	beq	r7, zero, .L685
	sub	r2, zero, r2
.L685:
	ret
.L693:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L686
.L691:
	mov	r2, r5
	br	.L687
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L700
	mov	r16, zero
.L695:
	blt	r5, zero, .L701
.L696:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L694
	sub	r2, zero, r2
.L694:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L700:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L695
.L701:
	sub	r5, zero, r5
	xori	r16, r16, 1
	br	.L696
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r2, r5
	blt	r4, zero, .L708
	mov	r16, zero
.L703:
	mov	r5, r2
	blt	r2, zero, .L709
.L704:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L702
	sub	r2, zero, r2
.L702:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L708:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L703
.L709:
	sub	r5, zero, r2
	br	.L704
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov	r7, r4
	mov	r3, r5
	andi	r5, r5, 0xffff
	andi	r4, r4, 0xffff
	bgeu	r5, r4, .L724
	movi	r5, 16
	movi	r4, 1
	andi	r8, r7, 0xffff
.L711:
	andi	r2, r3, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L712
	add	r2, r3, r3
	mov	r3, r2
	add	r4, r4, r4
	andi	r2, r2, 0xffff
	bgeu	r2, r8, .L712
	addi	r5, r5, -1
	bne	r5, zero, .L711
	mov	r4, zero
.L712:
	andi	r5, r4, 0xffff
	mov	r2, zero
	bne	r5, zero, .L713
	mov	r2, r4
.L714:
	bne	r6, zero, .L725
.L710:
	ret
.L724:
	movi	r4, 1
	br	.L712
.L716:
	andi	r4, r4, 0xffff
	srli	r5, r4, 1
	mov	r4, r5
	slli	r3, r3, 16
	srli	r3, r3, 17
	beq	r5, zero, .L714
.L713:
	andi	r5, r7, 0xffff
	andi	r8, r3, 0xffff
	bltu	r5, r8, .L716
	sub	r7, r7, r3
	or	r2, r4, r2
	br	.L716
.L725:
	mov	r2, r7
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L728
	movi	r2, 32
	movi	r3, 1
.L727:
	blt	r5, zero, .L728
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L728
	addi	r2, r2, -1
	bne	r2, zero, .L727
	mov	r3, r2
.L728:
	mov	r2, zero
	bne	r3, zero, .L729
	mov	r2, r3
.L730:
	bne	r6, zero, .L740
.L726:
	ret
.L732:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L730
.L729:
	bltu	r4, r5, .L732
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L732
.L740:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L742
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r2, zero
	ret
.L742:
	beq	r6, zero, .L745
	sll	r2, r4, r6
	movi	r3, 32
	sub	r3, r3, r6
	srl	r4, r4, r3
	sll	r3, r5, r6
	or	r3, r4, r3
	ret
.L745:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L747
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L747:
	beq	r6, zero, .L750
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L750:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli	r2, r5, 24
	slli	r6, r4, 24
	srli	r3, r5, 8
	andi	r3, r3, 65280
	or	r2, r2, r3
	slli	r3, r5, 8
	andhi	r3, r3, 255
	or	r2, r2, r3
	slli	r5, r5, 24
	slli	r3, r4, 8
	srli	r7, r4, 24
	or	r6, r6, r7
	srli	r4, r4, 8
	andi	r4, r4, 65280
	or	r4, r6, r4
	andhi	r3, r3, 255
	or	r2, r2, r5
	or	r3, r4, r3
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli	r2, r4, 24
	slli	r3, r4, 24
	or	r2, r2, r3
	srli	r3, r4, 8
	andi	r3, r3, 65280
	or	r2, r2, r3
	slli	r4, r4, 8
	andhi	r4, r4, 255
	or	r2, r2, r4
	ret
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	movui	r5, 65535
	cmpgeu	r5, r5, r4
	slli	r5, r5, 4
	movi	r2, 16
	sub	r2, r2, r5
	srl	r3, r4, r2
	andi	r2, r3, 65280
	cmpeq	r2, r2, zero
	slli	r2, r2, 3
	movi	r4, 8
	sub	r4, r4, r2
	srl	r3, r3, r4
	add	r4, r2, r5
	andi	r2, r3, 240
	cmpeq	r2, r2, zero
	slli	r2, r2, 2
	movi	r5, 4
	sub	r5, r5, r2
	srl	r3, r3, r5
	add	r5, r2, r4
	andi	r4, r3, 12
	cmpeq	r4, r4, zero
	add	r4, r4, r4
	movi	r2, 2
	sub	r2, r2, r4
	srl	r3, r3, r2
	srli	r2, r3, 1
	andi	r2, r2, 1
	bne	r2, zero, .L754
	movi	r2, 2
	sub	r2, r2, r3
.L755:
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L754:
	mov	r2, zero
	br	.L755
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L758
	blt	r7, r5, .L759
	bltu	r4, r6, .L760
	bltu	r6, r4, .L761
	movi	r2, 1
	ret
.L758:
	mov	r2, zero
	ret
.L759:
	movi	r2, 2
	ret
.L760:
	mov	r2, zero
	ret
.L761:
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
	andi	r5, r4, 65535
	cmpeq	r5, r5, zero
	slli	r5, r5, 4
	srl	r3, r4, r5
	andi	r2, r3, 255
	cmpeq	r2, r2, zero
	slli	r2, r2, 3
	srl	r3, r3, r2
	add	r4, r2, r5
	andi	r2, r3, 15
	cmpeq	r2, r2, zero
	slli	r2, r2, 2
	srl	r3, r3, r2
	add	r5, r2, r4
	andi	r4, r3, 3
	cmpeq	r4, r4, zero
	add	r4, r4, r4
	srl	r3, r3, r4
	andi	r3, r3, 3
	nor	r2, zero, r3
	andi	r2, r2, 1
	srli	r3, r3, 1
	movi	r6, 2
	sub	r3, r6, r3
	mul	r2, r2, r3
	add	r4, r4, r5
	add	r2, r2, r4
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L766
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r3, zero
	ret
.L766:
	beq	r6, zero, .L769
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L769:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	andi	r3, r4, 65535
	andi	r6, r5, 65535
	mul	r2, r3, r6
	srli	r7, r2, 16
	srli	r4, r4, 16
	mul	r6, r6, r4
	add	r6, r6, r7
	andi	r7, r6, 0xffff
	srli	r5, r5, 16
	mul	r3, r3, r5
	add	r3, r3, r7
	andi	r2, r2, 0xffff
	slli	r7, r3, 16
	srli	r6, r6, 16
	mul	r4, r4, r5
	add	r6, r6, r4
	srli	r3, r3, 16
	add	r2, r2, r7
	add	r3, r6, r3
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
	mov	r17, r4
	mov	r19, r5
	mov	r16, r6
	mov	r18, r7
	mov	r5, r6
	call	__muldsi3
	mul	r16, r16, r19
	mul	r17, r17, r18
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
	srli	r3, r5, 16
	xor	r3, r3, r5
	srli	r2, r3, 8
	xor	r2, r2, r3
	srli	r3, r2, 4
	xor	r3, r3, r2
	andi	r3, r3, 15
	movi	r2, 27030
	sra	r2, r2, r3
	andi	r2, r2, 1
	ret
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	srli	r2, r4, 16
	xor	r2, r2, r4
	srli	r4, r2, 8
	xor	r4, r4, r2
	srli	r3, r4, 4
	xor	r3, r3, r4
	andi	r3, r3, 15
	movi	r2, 27030
	sra	r2, r2, r3
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
	add	r3, r2, r3
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
	add	r3, r3, r4
	srli	r2, r3, 4
	add	r2, r2, r3
	movhi	r3, 3855
	addi	r3, r3, 3855
	and	r2, r2, r3
	srli	r3, r2, 16
	add	r3, r3, r2
	srli	r2, r3, 8
	add	r2, r2, r3
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
	mov	r17, r4
	mov	r16, r5
	mov	r21, r6
	mov	r18, r6
	mov	r20, zero
	movhi	r19, 16368
	br	.L781
.L779:
	srli	r8, r18, 31
	add	r8, r8, r18
	srai	r18, r8, 1
	beq	r18, zero, .L780
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__muldf3
	mov	r17, r2
	mov	r16, r3
.L781:
	andi	r2, r18, 1
	beq	r2, zero, .L779
	mov	r6, r17
	mov	r7, r16
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L779
.L780:
	blt	r21, zero, .L784
.L778:
	mov	r2, r20
	mov	r3, r19
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L784:
	mov	r6, r20
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r20, r2
	mov	r19, r3
	br	.L778
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
	mov	r19, r5
	mov	r16, r5
	movhi	r18, 16256
	br	.L788
.L786:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L787
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L788:
	andi	r2, r16, 1
	beq	r2, zero, .L786
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L786
.L787:
	blt	r19, zero, .L791
.L785:
	mov	r2, r18
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L791:
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
	br	.L785
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L794
	bltu	r7, r5, .L795
	bltu	r4, r6, .L796
	bltu	r6, r4, .L797
	movi	r2, 1
	ret
.L794:
	mov	r2, zero
	ret
.L795:
	movi	r2, 2
	ret
.L796:
	mov	r2, zero
	ret
.L797:
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
	.type	seed, @object
	.size	seed, 8
	.align	2
seed:
	.zero	8
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
