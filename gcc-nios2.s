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
	beq	r6, zero, .L34
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	memcpy
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L34:
	mov	r2, r4
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
.L38:
	beq	r6, r4, .L41
	mov	r2, r6
	addi	r6, r6, -1
	ldbu	r3, 0(r2)
	bne	r3, r5, .L38
	ret
.L41:
	mov	r2, zero
.L37:
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
	bne	r6, r3, .L44
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
	andi	r5, r5, 0xff
	ldbu	r3, 0(r4)
	andi	r2, r3, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	beq	r2, zero, .L56
.L51:
	andi	r3, r3, 0xff
	beq	r3, r5, .L57
	addi	r4, r4, 1
	ldbu	r3, 0(r4)
	andi	r2, r3, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L51
	mov	r2, r4
	ret
.L56:
	mov	r2, r4
	ret
.L57:
	mov	r2, r4
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
.L60:
	ldbu	r3, 0(r2)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, r5, .L59
	addi	r2, r2, 1
	bne	r4, zero, .L60
	mov	r2, zero
.L59:
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
	bne	r7, r6, .L64
.L63:
	andi	r6, r2, 255
	xori	r6, r6, 128
	addi	r6, r6, -128
	beq	r6, zero, .L64
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
	beq	r7, r6, .L63
.L64:
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
	beq	r2, zero, .L70
	mov	r2, r4
.L69:
	addi	r2, r2, 1
	ldb	r5, 0(r2)
	bne	r5, zero, .L69
.L68:
	sub	r2, r2, r4
	ret
.L70:
	mov	r2, r4
	br	.L68
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L77
	ldbu	r2, 0(r4)
	andi	r3, r2, 0xff
	beq	r3, zero, .L74
	addi	r6, r6, -1
	add	r6, r4, r6
.L75:
	ldbu	r3, 0(r5)
	andi	r7, r3, 0xff
	beq	r7, zero, .L74
	beq	r4, r6, .L74
	mov	r3, r7
	andi	r7, r2, 0xff
	bne	r3, r7, .L74
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, 0(r4)
	andi	r3, r2, 0xff
	bne	r3, zero, .L75
.L74:
	andi	r2, r2, 0xff
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L77:
	mov	r2, zero
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L78
	movi	r2, -2
	and	r6, r6, r2
	add	r3, r4, r6
.L80:
	ldbu	r2, 1(r4)
	stb	r2, 0(r5)
	ldbu	r2, 0(r4)
	stb	r2, 1(r5)
	addi	r5, r5, 2
	addi	r4, r4, 2
	bne	r4, r3, .L80
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
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
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
	add	r4, r4, r2
	cmpltui	r2, r4, 3
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
.L116:
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
	br	.L116
.L120:
	mov	r2, r19
	mov	r3, r18
	br	.L116
.L123:
	mov	r2, zero
	mov	r3, zero
	br	.L116
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
.L125:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L128:
	mov	r2, r16
	br	.L125
.L129:
	mov	r2, r17
	br	.L125
.L132:
	mov	r2, zero
	br	.L125
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
	bne	r2, zero, .L140
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L141
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L136
	bne	r2, zero, .L142
	mov	r2, r19
	mov	r3, r18
	br	.L134
.L136:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L138
	mov	r17, r19
	mov	r16, r18
.L138:
	mov	r2, r17
	mov	r3, r16
.L134:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L140:
	mov	r2, r17
	mov	r3, r16
	br	.L134
.L141:
	mov	r2, r19
	mov	r3, r18
	br	.L134
.L142:
	mov	r2, r17
	mov	r3, r16
	br	.L134
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
	bne	r2, zero, .L150
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L151
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L146
	bne	r2, zero, .L152
	mov	r2, r17
	br	.L144
.L146:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	blt	r2, zero, .L148
	mov	r16, r17
.L148:
	mov	r2, r16
.L144:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L150:
	mov	r2, r16
	br	.L144
.L151:
	mov	r2, r17
	br	.L144
.L152:
	mov	r2, r16
	br	.L144
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
	bne	r2, zero, .L160
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L161
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L156
	bne	r2, zero, .L162
	mov	r2, r19
	mov	r3, r18
	br	.L154
.L156:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L158
	mov	r17, r19
	mov	r16, r18
.L158:
	mov	r2, r17
	mov	r3, r16
.L154:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L160:
	mov	r2, r17
	mov	r3, r16
	br	.L154
.L161:
	mov	r2, r19
	mov	r3, r18
	br	.L154
.L162:
	mov	r2, r17
	mov	r3, r16
	br	.L154
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
	bne	r2, zero, .L170
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L171
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L166
	bne	r2, zero, .L172
	mov	r2, r18
	mov	r3, r19
	br	.L164
.L166:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L168
	mov	r17, r18
	mov	r16, r19
.L168:
	mov	r2, r17
	mov	r3, r16
.L164:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L170:
	mov	r2, r18
	mov	r3, r19
	br	.L164
.L171:
	mov	r2, r17
	mov	r3, r16
	br	.L164
.L172:
	mov	r2, r17
	mov	r3, r16
	br	.L164
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
	bne	r2, zero, .L180
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L181
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L176
	bne	r2, zero, .L182
	mov	r2, r17
	br	.L174
.L176:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	blt	r2, zero, .L178
	mov	r16, r17
.L178:
	mov	r2, r16
.L174:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L180:
	mov	r2, r17
	br	.L174
.L181:
	mov	r2, r16
	br	.L174
.L182:
	mov	r2, r16
	br	.L174
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
	bne	r2, zero, .L190
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L191
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L186
	bne	r2, zero, .L192
	mov	r2, r18
	mov	r3, r19
	br	.L184
.L186:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L188
	mov	r17, r18
	mov	r16, r19
.L188:
	mov	r2, r17
	mov	r3, r16
.L184:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L190:
	mov	r2, r18
	mov	r3, r19
	br	.L184
.L191:
	mov	r2, r17
	mov	r3, r16
	br	.L184
.L192:
	mov	r2, r17
	mov	r3, r16
	br	.L184
	.size	fminl, .-fminl
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
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r20, 24(sp)
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	mov	r18, r4
	stw	r5, 0(sp)
	stw	r6, 4(sp)
	mov	r17, r7
	ldw	r20, 40(sp)
	ldw	r16, 0(r6)
	beq	r16, zero, .L210
	mov	r21, r5
	mov	fp, zero
.L212:
	mov	r19, r21
	mov	r5, r21
	mov	r4, r18
	callr	r20
	beq	r2, zero, .L209
	addi	fp, fp, 1
	add	r21, r21, r17
	bne	r16, fp, .L212
.L210:
	addi	r2, r16, 1
	ldw	r3, 4(sp)
	stw	r2, 0(r3)
	mul	r4, r17, r16
	mov	r6, r17
	mov	r5, r18
	ldw	r2, 0(sp)
	add	r4, r2, r4
	call	memcpy
	mov	r19, r2
.L209:
	mov	r2, r19
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
	ldw	r21, 32(sp)
	ldw	r20, 0(r6)
	beq	r20, zero, .L216
	mov	r18, r4
	mov	r19, r7
	mov	r16, r5
	mov	r17, zero
.L218:
	mov	fp, r16
	mov	r5, r16
	mov	r4, r18
	callr	r21
	beq	r2, zero, .L215
	addi	r17, r17, 1
	add	r16, r16, r19
	bne	r20, r17, .L218
.L216:
	mov	fp, zero
.L215:
	mov	r2, fp
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
	blt	r4, zero, .L223
.L222:
	ret
.L223:
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
	br	.L225
.L226:
	addi	r16, r16, 1
.L225:
	ldbu	r17, 0(r16)
	andi	r4, r17, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	bne	r2, zero, .L226
	andi	r3, r17, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	cmpeqi	r3, r3, 43
	bne	r3, zero, .L232
	andi	r17, r17, 255
	xori	r17, r17, 128
	addi	r17, r17, -128
	cmpnei	r17, r17, 45
	bne	r17, zero, .L233
	movi	r5, 1
.L227:
	addi	r16, r16, 1
.L228:
	ldbu	r3, 0(r16)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	addi	r4, r4, -48
	cmpltui	r4, r4, 10
	beq	r4, zero, .L230
.L229:
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
	bne	r4, zero, .L229
.L230:
	bne	r5, zero, .L224
	sub	r2, zero, r2
.L224:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L232:
	mov	r5, r2
	br	.L227
.L233:
	mov	r5, r2
	br	.L228
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
	br	.L238
.L239:
	addi	r16, r16, 1
.L238:
	ldbu	r17, 0(r16)
	andi	r4, r17, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	bne	r2, zero, .L239
	andi	r3, r17, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	cmpeqi	r3, r3, 43
	bne	r3, zero, .L245
	andi	r17, r17, 255
	xori	r17, r17, 128
	addi	r17, r17, -128
	cmpnei	r17, r17, 45
	bne	r17, zero, .L246
	movi	r5, 1
.L240:
	addi	r16, r16, 1
.L241:
	ldbu	r3, 0(r16)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	addi	r4, r4, -48
	cmpltui	r4, r4, 10
	beq	r4, zero, .L243
.L242:
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
	bne	r4, zero, .L242
.L243:
	bne	r5, zero, .L237
	sub	r2, zero, r2
.L237:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L245:
	mov	r5, r2
	br	.L240
.L246:
	mov	r5, r2
	br	.L241
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
	mov	r18, r4
	br	.L251
.L252:
	addi	r18, r18, 1
.L251:
	ldbu	r16, 0(r18)
	andi	r4, r16, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	mov	r17, r2
	bne	r2, zero, .L252
	andi	r2, r16, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r2, r2, 43
	bne	r2, zero, .L253
	andi	r16, r16, 255
	xori	r16, r16, 128
	addi	r16, r16, -128
	cmpnei	r16, r16, 45
	bne	r16, zero, .L254
	movi	r17, 1
.L253:
	addi	r18, r18, 1
.L254:
	ldbu	r16, 0(r18)
	andi	r2, r16, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L261
	mov	r4, zero
	mov	r5, zero
.L255:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	mov	r6, r2
	addi	r18, r18, 1
	addi	r16, r16, -48
	andi	r16, r16, 255
	xori	r16, r16, 128
	addi	r16, r16, -128
	srai	r2, r16, 31
	sub	r4, r6, r16
	cmpltu	r6, r6, r4
	sub	r5, r3, r2
	sub	r5, r5, r6
	ldbu	r16, 0(r18)
	andi	r3, r16, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L255
.L256:
	bne	r17, zero, .L250
	cmpne	r2, r4, zero
	sub	r5, zero, r5
	sub	r5, r5, r2
	sub	r4, zero, r4
.L250:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L261:
	mov	r4, zero
	mov	r5, zero
	br	.L256
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
	ldw	r21, 32(sp)
	beq	r6, zero, .L263
	mov	r20, r4
	mov	r19, r5
	mov	r16, r6
	mov	r18, r7
	br	.L266
.L267:
	mov	r16, fp
.L264:
	beq	r16, zero, .L263
.L266:
	srli	fp, r16, 1
	mul	r17, fp, r18
	add	r17, r19, r17
	mov	r5, r17
	mov	r4, r20
	callr	r21
	blt	r2, zero, .L267
	bge	zero, r2, .L262
	add	r19, r17, r18
	addi	r16, r16, -1
	sub	r16, r16, fp
	br	.L264
.L263:
	mov	r17, zero
.L262:
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
	ldw	r21, 32(sp)
	ldw	r20, 36(sp)
	beq	r6, zero, .L271
	mov	r19, r4
	mov	r18, r5
	mov	r17, r7
	mov	fp, r6
	br	.L274
.L273:
	srai	fp, fp, 1
	beq	fp, zero, .L271
.L274:
	srai	r16, fp, 1
	mul	r16, r16, r17
	add	r16, r18, r16
	mov	r6, r20
	mov	r5, r16
	mov	r4, r19
	callr	r21
	beq	r2, zero, .L270
	bge	zero, r2, .L273
	add	r18, r16, r17
	addi	fp, fp, -1
	br	.L273
.L271:
	mov	r16, zero
.L270:
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
	blt	r5, zero, .L282
.L280:
	ret
.L282:
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
	blt	r4, zero, .L287
.L286:
	ret
.L287:
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
	blt	r5, zero, .L293
.L291:
	ret
.L293:
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
	beq	r3, zero, .L298
.L297:
	beq	r5, r3, .L303
	addi	r4, r4, 4
	ldw	r3, 0(r4)
	bne	r3, zero, .L297
	mov	r2, r4
	br	.L298
.L303:
	mov	r2, r4
.L298:
	beq	r3, zero, .L304
.L296:
	ret
.L304:
	mov	r2, zero
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L307
.L306:
	beq	r3, zero, .L307
	beq	r2, zero, .L307
	addi	r4, r4, 4
	addi	r5, r5, 4
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L306
.L307:
	blt	r3, r2, .L310
	cmplt	r2, r2, r3
	ret
.L310:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L313:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L313
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L318
	mov	r2, r4
.L317:
	addi	r2, r2, 4
	ldw	r3, 0(r2)
	bne	r3, zero, .L317
.L316:
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L318:
	mov	r2, r4
	br	.L316
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L322
.L321:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	bne	r2, r3, .L322
	beq	r2, zero, .L322
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L321
.L322:
	beq	r6, zero, .L325
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L326
	cmplt	r2, r2, r3
	ret
.L325:
	mov	r2, zero
	ret
.L326:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	mov	r2, r4
	beq	r6, zero, .L330
.L329:
	ldw	r2, 0(r4)
	beq	r2, r5, .L335
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r6, zero, .L329
	mov	r2, r4
	br	.L330
.L335:
	mov	r2, r4
.L330:
	beq	r6, zero, .L336
.L328:
	ret
.L336:
	mov	r2, zero
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L339
.L338:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L339
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L338
.L339:
	beq	r6, zero, .L342
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L343
	cmplt	r2, r2, r3
	ret
.L342:
	mov	r2, zero
	ret
.L343:
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	beq	r6, zero, .L348
	addi	sp, sp, -4
	stw	ra, 0(sp)
	slli	r6, r6, 2
	call	memcpy
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L348:
	mov	r2, r4
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov	r2, r4
	beq	r4, r5, .L352
	mov	r4, r5
	addi	r3, r6, -1
	sub	r7, r2, r5
	slli	r8, r6, 2
	bltu	r7, r8, .L353
	mov	r7, r2
	beq	r6, zero, .L360
.L354:
	addi	r5, r5, 4
	addi	r7, r7, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r7)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	bne	r6, zero, .L354
.L352:
	ret
.L360:
	ret
.L353:
	beq	r6, zero, .L352
	slli	r3, r3, 2
	add	r5, r5, r3
	add	r3, r2, r3
.L355:
	ldw	r6, 0(r5)
	stw	r6, 0(r3)
	mov	r6, r5
	addi	r5, r5, -4
	addi	r3, r3, -4
	bne	r4, r6, .L355
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L362
	mov	r6, r4
.L363:
	addi	r6, r6, 4
	stw	r5, -4(r6)
	addi	r3, r3, -1
	cmpnei	r7, r3, -1
	bne	r7, zero, .L363
.L362:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L366
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L365
.L368:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
	bne	r4, r2, .L368
	ret
.L366:
	beq	r4, r5, .L365
	beq	r6, zero, .L365
	add	r6, r4, r6
.L369:
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, -1(r4)
	stb	r2, -1(r5)
	bne	r6, r4, .L369
.L365:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r8, r6, -32
	blt	r8, zero, .L373
	sll	r8, r4, r8
	mov	r2, zero
.L374:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L375
	srl	r7, r5, r7
	mov	r3, zero
.L376:
	or	r2, r7, r2
	or	r3, r3, r8
	ret
.L373:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r8, r5, r6
	or	r8, r2, r8
	sll	r2, r4, r6
	br	.L374
.L375:
	slli	r3, r5, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	sll	r3, r3, r7
	srl	r7, r4, r6
	or	r7, r3, r7
	srl	r3, r5, r6
	br	.L376
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L378
	srl	r8, r5, r8
	mov	r3, zero
.L379:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L380
	sll	r7, r4, r7
	mov	r2, zero
.L381:
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L378:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	br	.L379
.L380:
	srli	r2, r4, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	br	.L381
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
.L396:
	srl	r3, r4, r2
	andi	r3, r3, 1
	addi	r2, r2, 1
	bne	r3, zero, .L393
	cmpnei	r3, r2, 32
	bne	r3, zero, .L396
	mov	r2, zero
.L393:
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L401
	andi	r2, r4, 1
	bne	r2, zero, .L398
	movi	r2, 1
.L400:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L400
	ret
.L401:
	mov	r2, r4
.L398:
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
	blt	r2, zero, .L406
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L403:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L406:
	movi	r2, 1
	br	.L403
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
	blt	r2, zero, .L416
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L413:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L416:
	movi	r2, 1
	br	.L413
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
	bne	r2, zero, .L421
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L421
	blt	r16, zero, .L427
	movhi	r17, 16384
	br	.L424
.L427:
	movhi	r17, 16128
	br	.L424
.L423:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L421
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L424:
	andi	r2, r16, 1
	beq	r2, zero, .L423
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L423
.L421:
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
	mov	r19, r4
	mov	r18, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L429
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__adddf3
	mov	r6, r19
	mov	r7, r18
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L429
	blt	r16, zero, .L435
	mov	r20, zero
	movhi	r17, 16384
	br	.L432
.L435:
	mov	r20, zero
	movhi	r17, 16352
	br	.L432
.L431:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L429
	mov	r6, r20
	mov	r7, r17
	mov	r4, r20
	mov	r5, r17
	call	__muldf3
	mov	r20, r2
	mov	r17, r3
.L432:
	andi	r2, r16, 1
	beq	r2, zero, .L431
	mov	r6, r20
	mov	r7, r17
	mov	r4, r19
	mov	r5, r18
	call	__muldf3
	mov	r19, r2
	mov	r18, r3
	br	.L431
.L429:
	mov	r2, r19
	mov	r3, r18
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
	mov	r19, r4
	mov	r18, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L437
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__adddf3
	mov	r6, r19
	mov	r7, r18
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L437
	blt	r16, zero, .L443
	mov	r20, zero
	movhi	r17, 16384
	br	.L440
.L443:
	mov	r20, zero
	movhi	r17, 16352
	br	.L440
.L439:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L437
	mov	r6, r20
	mov	r7, r17
	mov	r4, r20
	mov	r5, r17
	call	__muldf3
	mov	r20, r2
	mov	r17, r3
.L440:
	andi	r2, r16, 1
	beq	r2, zero, .L439
	mov	r6, r20
	mov	r7, r17
	mov	r4, r19
	mov	r5, r18
	call	__muldf3
	mov	r19, r2
	mov	r18, r3
	br	.L439
.L437:
	mov	r2, r19
	mov	r3, r18
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
	beq	r6, zero, .L445
	add	r6, r5, r6
	mov	r3, r4
.L446:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	ldbu	r8, -1(r5)
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L446
.L445:
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
	mov	r17, r4
	mov	r18, r5
	mov	r16, r6
	call	strlen
	add	r2, r17, r2
	beq	r16, zero, .L450
.L449:
	ldbu	r3, 0(r18)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L450
	addi	r18, r18, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
	bne	r16, zero, .L449
.L450:
	bne	r16, zero, .L452
	stb	zero, 0(r2)
.L452:
	mov	r2, r17
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
	beq	r5, zero, .L462
.L456:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L463
.L455:
	ret
.L462:
	mov	r2, r5
	ret
.L463:
	addi	r2, r2, 1
	bne	r5, r2, .L456
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
	beq	r3, zero, .L471
.L465:
	mov	r6, r5
	andi	r8, r8, 255
	xori	r8, r8, 128
	addi	r8, r8, -128
.L468:
	ldbu	r3, 0(r6)
	andi	r7, r3, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L472
	addi	r6, r6, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, r8, .L468
.L466:
	ret
.L471:
	mov	r2, zero
	ret
.L472:
	addi	r2, r2, 1
	ldbu	r8, 0(r2)
	andi	r3, r8, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L465
	mov	r2, zero
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L475
.L474:
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L478
.L475:
	ldbu	r3, 0(r4)
	andi	r6, r3, 255
	xori	r6, r6, 128
	addi	r6, r6, -128
	bne	r6, r5, .L474
	mov	r2, r4
	br	.L474
.L478:
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
	beq	r2, zero, .L479
	mov	r18, r2
	ldb	r19, 0(r17)
.L481:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	beq	r2, zero, .L479
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L479
	addi	r16, r16, 1
	br	.L481
.L479:
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
	blt	r2, zero, .L495
.L486:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L489
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L488
.L489:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L495:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L486
.L488:
	xorhi	r16, r16, 32768
	br	.L489
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	beq	r7, zero, .L500
	bltu	r5, r7, .L501
	sub	r17, r5, r7
	add	r17, r4, r17
	bltu	r17, r4, .L502
	ldb	r21, 0(r6)
	addi	r19, r7, -1
	addi	r20, r6, 1
	br	.L499
.L498:
	bltu	r17, r16, .L505
.L499:
	ldbu	r2, 0(r16)
	mov	r18, r16
	addi	r16, r16, 1
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, r21, .L498
	mov	r6, r19
	mov	r5, r20
	mov	r4, r16
	call	memcmp
	bne	r2, zero, .L498
	br	.L496
.L505:
	mov	r18, zero
.L496:
	mov	r2, r18
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L500:
	mov	r18, r4
	br	.L496
.L501:
	mov	r18, zero
	br	.L496
.L502:
	mov	r18, zero
	br	.L496
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
	mov	r19, r4
	mov	r16, r5
	mov	r17, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L530
	mov	r18, zero
.L509:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r19
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L527
	mov	r20, zero
.L513:
	addi	r20, r20, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r19
	mov	r5, r16
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	mov	r19, r2
	mov	r16, r3
	mov	r6, zero
	movhi	r7, 16368
	call	__gedf2
	bge	r2, zero, .L513
.L514:
	stw	r20, 0(r17)
	beq	r18, zero, .L517
	xorhi	r16, r16, 32768
.L517:
	mov	r2, r19
	mov	r3, r16
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L530:
	xorhi	r16, r16, 32768
	movi	r18, 1
	br	.L509
.L527:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r19
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L528
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r16
	call	__eqdf2
	beq	r2, zero, .L520
	mov	r20, zero
.L516:
	addi	r20, r20, -1
	mov	r6, r19
	mov	r7, r16
	mov	r4, r19
	mov	r5, r16
	call	__adddf3
	mov	r4, r2
	mov	r5, r3
	mov	r19, r2
	mov	r16, r3
	mov	r6, zero
	movhi	r7, 16352
	call	__ltdf2
	blt	r2, zero, .L516
	br	.L514
.L528:
	mov	r20, zero
	br	.L514
.L520:
	mov	r20, zero
	br	.L514
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
	beq	r4, zero, .L535
	mov	r17, r6
	mov	r16, r7
	mov	r20, r5
	mov	r18, zero
	mov	r21, zero
.L534:
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
	bne	r2, zero, .L534
.L531:
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
.L535:
	mov	r18, zero
	mov	r21, zero
	br	.L531
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L540
	movi	r2, 32
	movi	r3, 1
.L539:
	blt	r5, zero, .L540
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L540
	addi	r2, r2, -1
	bne	r2, zero, .L539
	mov	r3, r2
.L540:
	mov	r2, zero
	bne	r3, zero, .L541
	mov	r2, r3
.L542:
	bne	r6, zero, .L552
.L538:
	ret
.L544:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L542
.L541:
	bltu	r4, r5, .L544
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L544
.L552:
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
	beq	r3, r2, .L555
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
.L555:
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
	beq	r3, r6, .L569
.L564:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L569:
	bne	r2, r6, .L564
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	beq	r4, zero, .L573
	mov	r2, zero
.L572:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L572
	ret
.L573:
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
	bgeu	r4, r5, .L576
.L579:
	beq	r9, zero, .L578
	mov	r2, r5
	mov	r3, r4
	slli	r9, r9, 3
	add	r9, r9, r5
.L582:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r2, r2, 8
	addi	r3, r3, 8
	bne	r2, r9, .L582
.L578:
	bgeu	r10, r6, .L575
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L583:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L583
	ret
.L576:
	add	r2, r5, r6
	bltu	r2, r4, .L579
	addi	r2, r6, -1
	beq	r6, zero, .L588
.L580:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L580
.L575:
	ret
.L588:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bgeu	r4, r5, .L590
.L593:
	beq	r8, zero, .L592
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
.L596:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
	bne	r2, r8, .L596
.L592:
	andi	r2, r6, 1
	beq	r2, zero, .L589
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L590:
	add	r2, r5, r6
	bltu	r2, r4, .L593
	addi	r2, r6, -1
	beq	r6, zero, .L600
.L594:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L594
.L589:
	ret
.L600:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r8, r6, 2
	movi	r9, -4
	and	r9, r6, r9
	bgeu	r4, r5, .L602
.L605:
	beq	r8, zero, .L604
	mov	r2, r5
	mov	r3, r4
	slli	r8, r8, 2
	add	r8, r8, r5
.L608:
	ldw	r7, 0(r2)
	stw	r7, 0(r3)
	addi	r2, r2, 4
	addi	r3, r3, 4
	bne	r2, r8, .L608
.L604:
	bgeu	r9, r6, .L601
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L609:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L609
	ret
.L602:
	add	r2, r5, r6
	bltu	r2, r4, .L605
	addi	r2, r6, -1
	beq	r6, zero, .L614
.L606:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L606
.L601:
	ret
.L614:
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
.L629:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L627
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L629
.L627:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L633:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L631
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L633
.L631:
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
	bge	r2, zero, .L642
	mov	r4, r16
	call	__fixsfsi
.L635:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L642:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L635
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
.L644:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L644
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
.L647:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L647
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	beq	r4, zero, .L652
	mov	r2, zero
.L651:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L651
	ret
.L652:
	mov	r2, r4
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	beq	r4, zero, .L657
	beq	r5, zero, .L658
	mov	r2, zero
.L656:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srli	r5, r5, 1
	bne	r5, zero, .L656
	ret
.L657:
	mov	r2, r4
	ret
.L658:
	mov	r2, r5
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L662
	movi	r2, 32
	movi	r3, 1
.L661:
	blt	r5, zero, .L662
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L662
	addi	r2, r2, -1
	bne	r2, zero, .L661
	mov	r3, r2
.L662:
	mov	r2, zero
	bne	r3, zero, .L663
	mov	r2, r3
.L664:
	bne	r6, zero, .L674
.L660:
	ret
.L666:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L664
.L663:
	bltu	r4, r5, .L666
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L666
.L674:
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
	blt	r2, zero, .L678
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L675:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L678:
	movi	r2, -1
	br	.L675
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
	blt	r2, zero, .L683
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L680:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L683:
	movi	r2, -1
	br	.L680
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
	blt	r5, zero, .L697
	mov	r7, zero
.L690:
	beq	r5, zero, .L695
	movi	r6, 32
	mov	r2, zero
.L692:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srai	r5, r5, 1
	beq	r5, zero, .L691
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L692
.L691:
	beq	r7, zero, .L689
	sub	r2, zero, r2
.L689:
	ret
.L697:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L690
.L695:
	mov	r2, r5
	br	.L691
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	blt	r4, zero, .L704
	mov	r16, zero
.L699:
	blt	r5, zero, .L705
.L700:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L698
	sub	r2, zero, r2
.L698:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L704:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L699
.L705:
	sub	r5, zero, r5
	xori	r16, r16, 1
	br	.L700
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r16, 0(sp)
	mov	r2, r5
	blt	r4, zero, .L712
	mov	r16, zero
.L707:
	mov	r5, r2
	blt	r2, zero, .L713
.L708:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L706
	sub	r2, zero, r2
.L706:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L712:
	sub	r4, zero, r4
	movi	r16, 1
	br	.L707
.L713:
	sub	r5, zero, r2
	br	.L708
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov	r7, r4
	mov	r3, r5
	andi	r5, r5, 0xffff
	andi	r4, r4, 0xffff
	bgeu	r5, r4, .L728
	movi	r5, 16
	movi	r4, 1
	andi	r8, r7, 0xffff
.L715:
	andi	r2, r3, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L716
	add	r2, r3, r3
	mov	r3, r2
	add	r4, r4, r4
	andi	r2, r2, 0xffff
	bgeu	r2, r8, .L716
	addi	r5, r5, -1
	bne	r5, zero, .L715
	mov	r4, zero
.L716:
	andi	r5, r4, 0xffff
	mov	r2, zero
	bne	r5, zero, .L717
	mov	r2, r4
.L718:
	bne	r6, zero, .L729
.L714:
	ret
.L728:
	movi	r4, 1
	br	.L716
.L720:
	andi	r4, r4, 0xffff
	srli	r5, r4, 1
	mov	r4, r5
	slli	r3, r3, 16
	srli	r3, r3, 17
	beq	r5, zero, .L718
.L717:
	andi	r5, r7, 0xffff
	andi	r8, r3, 0xffff
	bltu	r5, r8, .L720
	sub	r7, r7, r3
	or	r2, r4, r2
	br	.L720
.L729:
	mov	r2, r7
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L732
	movi	r2, 32
	movi	r3, 1
.L731:
	blt	r5, zero, .L732
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L732
	addi	r2, r2, -1
	bne	r2, zero, .L731
	mov	r3, r2
.L732:
	mov	r2, zero
	bne	r3, zero, .L733
	mov	r2, r3
.L734:
	bne	r6, zero, .L744
.L730:
	ret
.L736:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L734
.L733:
	bltu	r4, r5, .L736
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L736
.L744:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L746
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r2, zero
	ret
.L746:
	beq	r6, zero, .L749
	sll	r2, r4, r6
	movi	r3, 32
	sub	r3, r3, r6
	srl	r4, r4, r3
	sll	r3, r5, r6
	or	r3, r4, r3
	ret
.L749:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L751
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L751:
	beq	r6, zero, .L754
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L754:
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
	bne	r2, zero, .L758
	movi	r2, 2
	sub	r2, r2, r3
.L759:
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L758:
	mov	r2, zero
	br	.L759
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L762
	blt	r7, r5, .L763
	bltu	r4, r6, .L764
	bltu	r6, r4, .L765
	movi	r2, 1
	ret
.L762:
	mov	r2, zero
	ret
.L763:
	movi	r2, 2
	ret
.L764:
	mov	r2, zero
	ret
.L765:
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
	beq	r2, zero, .L770
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r3, zero
	ret
.L770:
	beq	r6, zero, .L773
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L773:
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
	mov	r21, r4
	mov	r17, r5
	mov	r20, r6
	mov	r16, r6
	mov	r19, zero
	movhi	r18, 16368
	br	.L785
.L783:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L784
	mov	r6, r21
	mov	r7, r17
	mov	r4, r21
	mov	r5, r17
	call	__muldf3
	mov	r21, r2
	mov	r17, r3
.L785:
	andi	r2, r16, 1
	beq	r2, zero, .L783
	mov	r6, r21
	mov	r7, r17
	mov	r4, r19
	mov	r5, r18
	call	__muldf3
	mov	r19, r2
	mov	r18, r3
	br	.L783
.L784:
	blt	r20, zero, .L788
.L782:
	mov	r2, r19
	mov	r3, r18
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L788:
	mov	r6, r19
	mov	r7, r18
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r19, r2
	mov	r18, r3
	br	.L782
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
	br	.L792
.L790:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L791
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L792:
	andi	r2, r16, 1
	beq	r2, zero, .L790
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L790
.L791:
	blt	r19, zero, .L795
.L789:
	mov	r2, r18
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L795:
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
	br	.L789
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L798
	bltu	r7, r5, .L799
	bltu	r4, r6, .L800
	bltu	r6, r4, .L801
	movi	r2, 1
	ret
.L798:
	mov	r2, zero
	ret
.L799:
	movi	r2, 2
	ret
.L800:
	mov	r2, zero
	ret
.L801:
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
