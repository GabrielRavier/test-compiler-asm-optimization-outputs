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
	ldbu	r4, -1(r5)
	addi	r3, r3, -1
	addi	r5, r5, -1
	stb	r4, 0(r3)
	bne	r2, r3, .L4
	ret
.L2:
	beq	r4, r5, .L3
	beq	r6, zero, .L3
	add	r6, r4, r6
	mov	r3, r4
.L5:
	ldbu	r4, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
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
	bne	r7, zero, .L16
	br	.L18
.L19:
	addi	r4, r4, 1
	beq	r7, zero, .L18
.L16:
	ldbu	r3, 0(r5)
	addi	r7, r7, -1
	addi	r5, r5, 1
	stb	r3, 0(r4)
	andi	r3, r3, 0xff
	bne	r3, r6, .L19
	addi	r2, r4, 1
	ret
.L18:
	mov	r2, zero
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	andi	r5, r5, 0xff
	bne	r6, zero, .L26
	br	.L29
.L28:
	addi	r4, r4, 1
	beq	r6, zero, .L29
.L26:
	ldbu	r2, 0(r4)
	addi	r6, r6, -1
	bne	r2, r5, .L28
	mov	r2, r4
	ret
.L29:
	mov	r2, zero
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	beq	r6, zero, .L36
.L42:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 1
	bne	r2, r3, .L41
	addi	r5, r5, 1
	bne	r6, zero, .L42
.L36:
	mov	r2, zero
	ret
.L41:
	sub	r2, r2, r3
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	addi	sp, sp, -8
	stw	r16, 0(sp)
	stw	ra, 4(sp)
	mov	r16, r4
	beq	r6, zero, .L44
	call	memcpy
.L44:
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
	addi	r6, r6, -1
	add	r6, r4, r6
	andi	r5, r5, 0xff
	addi	r4, r4, -1
	br	.L50
.L52:
	ldbu	r3, 0(r2)
	addi	r6, r6, -1
	beq	r3, r5, .L49
.L50:
	mov	r2, r6
	bne	r6, r4, .L52
	mov	r2, zero
.L49:
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	addi	sp, sp, -8
	stw	r16, 0(sp)
	stw	ra, 4(sp)
	mov	r16, r4
	beq	r6, zero, .L56
	andi	r5, r5, 0xff
	call	memset
.L56:
	mov	r2, r16
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	ldbu	r3, 0(r5)
	mov	r2, r4
	stb	r3, 0(r4)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L59
.L60:
	ldbu	r3, 1(r5)
	addi	r2, r2, 1
	addi	r5, r5, 1
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	stb	r3, 0(r2)
	bne	r4, zero, .L60
.L59:
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	ldbu	r3, 0(r4)
	mov	r2, r4
	andi	r5, r5, 0xff
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	bne	r4, zero, .L66
	ret
.L68:
	ldbu	r3, 1(r2)
	addi	r2, r2, 1
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, zero, .L65
.L66:
	andi	r3, r3, 0xff
	bne	r3, r5, .L68
.L65:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
	br	.L74
.L77:
	addi	r2, r2, 1
	beq	r3, zero, .L76
.L74:
	ldb	r3, 0(r2)
	bne	r3, r5, .L77
	ret
.L76:
	mov	r2, zero
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L81:
	ldbu	r2, 0(r4)
	ldbu	r6, 0(r5)
	andi	r3, r2, 255
	andi	r7, r6, 255
	xori	r3, r3, 128
	xori	r7, r7, 128
	addi	r3, r3, -128
	addi	r7, r7, -128
	bne	r3, r7, .L86
	addi	r4, r4, 1
	addi	r5, r5, 1
	bne	r3, zero, .L81
	mov	r2, zero
.L80:
	andi	r6, r6, 0xff
	sub	r2, r2, r6
	ret
.L86:
	andi	r2, r2, 0xff
	br	.L80
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L90
	mov	r2, r4
.L89:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L89
	sub	r2, r2, r4
	ret
.L90:
	mov	r2, zero
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L100
	ldbu	r2, 0(r4)
	beq	r2, zero, .L102
	addi	r6, r6, -1
	add	r6, r4, r6
	br	.L96
.L104:
	beq	r6, r4, .L95
	addi	r4, r4, 1
	bne	r3, r2, .L95
	ldbu	r2, 0(r4)
	beq	r2, zero, .L103
	mov	r5, r7
.L96:
	ldbu	r3, 0(r5)
	addi	r7, r5, 1
	bne	r3, zero, .L104
.L95:
	sub	r2, r2, r3
	ret
.L100:
	mov	r2, zero
	ret
.L103:
	ldbu	r3, 1(r5)
	sub	r2, r2, r3
	ret
.L102:
	ldbu	r3, 0(r5)
	br	.L95
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L105
	srli	r6, r6, 1
	add	r6, r6, r6
	add	r2, r4, r6
.L107:
	ldbu	r6, 1(r4)
	ldbu	r3, 0(r4)
	addi	r4, r4, 2
	stb	r6, 0(r5)
	stb	r3, 1(r5)
	addi	r5, r5, 2
	bne	r4, r2, .L107
.L105:
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
	bne	r2, zero, .L113
	cmpeqi	r2, r4, 9
	ret
.L113:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L116
	cmpeqi	r2, r4, 127
	ret
.L116:
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
	bne	r2, zero, .L123
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
	ret
.L123:
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
	bne	r2, zero, .L129
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	beq	r2, zero, .L130
.L129:
	movi	r2, 1
	ret
.L130:
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L129
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r4, r4, r2
	cmpltui	r2, r4, 3
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
	beq	r2, zero, .L139
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L137
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L137
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L137
	movhi	r2, 65535
	addi	r2, r2, 4
	movhi	r3, 16
	add	r2, r4, r2
	addi	r3, r3, 3
	bltu	r3, r2, .L138
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L137:
	movi	r2, 1
	ret
.L139:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	ret
.L138:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L142
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	ret
.L142:
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
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	mov	r19, r6
	mov	r18, r7
	mov	r6, r4
	mov	r7, r5
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	mov	r17, r4
	mov	r16, r5
	call	__unorddf2
	bne	r2, zero, .L147
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L148
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	bgt	r2, zero, .L153
	mov	r2, zero
	mov	r3, zero
.L144:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L153:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
	br	.L144
.L147:
	mov	r2, r17
	mov	r3, r16
	br	.L144
.L148:
	mov	r2, r19
	mov	r3, r18
	br	.L144
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	addi	sp, sp, -12
	stw	r17, 4(sp)
	mov	r17, r5
	mov	r5, r4
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r16, r4
	call	__unordsf2
	bne	r2, zero, .L157
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L158
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	bgt	r2, zero, .L163
	mov	r2, zero
.L154:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L163:
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
	br	.L154
.L157:
	mov	r2, r16
	br	.L154
.L158:
	mov	r2, r17
	br	.L154
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	addi	sp, sp, -20
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	ra, 16(sp)
	mov	r19, r4
	mov	r18, r5
	call	__unorddf2
	bne	r2, zero, .L172
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L171
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L166
	bne	r2, zero, .L172
.L171:
	mov	r2, r19
	mov	r3, r18
	br	.L164
.L166:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L172
	mov	r17, r19
	mov	r16, r18
.L172:
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
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -12
	stw	r17, 4(sp)
	mov	r17, r5
	mov	r5, r4
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r16, r4
	call	__unordsf2
	bne	r2, zero, .L184
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L183
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L178
	beq	r2, zero, .L183
.L184:
	mov	r2, r17
	br	.L176
.L178:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	blt	r2, zero, .L188
.L183:
	mov	r2, r16
.L176:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L188:
	mov	r16, r17
	br	.L183
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	addi	sp, sp, -20
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	ra, 16(sp)
	mov	r19, r4
	mov	r18, r5
	call	__unorddf2
	bne	r2, zero, .L197
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L196
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L191
	bne	r2, zero, .L197
.L196:
	mov	r2, r19
	mov	r3, r18
	br	.L189
.L191:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L197
	mov	r17, r19
	mov	r16, r18
.L197:
	mov	r2, r17
	mov	r3, r16
.L189:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	mov	r19, r7
	mov	r18, r6
	mov	r7, r5
	mov	r6, r4
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	mov	r17, r4
	mov	r16, r5
	call	__unorddf2
	bne	r2, zero, .L207
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L209
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L203
	bne	r2, zero, .L209
.L207:
	mov	r2, r18
	mov	r3, r19
	br	.L201
.L203:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L209
	mov	r17, r18
	mov	r16, r19
.L209:
	mov	r2, r17
	mov	r3, r16
.L201:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -12
	stw	r16, 0(sp)
	mov	r16, r5
	mov	r5, r4
	stw	r17, 4(sp)
	stw	ra, 8(sp)
	mov	r17, r4
	call	__unordsf2
	bne	r2, zero, .L219
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L221
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L215
	beq	r2, zero, .L219
.L221:
	mov	r2, r17
	br	.L213
.L215:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	blt	r2, zero, .L225
.L219:
	mov	r2, r16
.L213:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L225:
	mov	r16, r17
	br	.L219
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	mov	r19, r7
	mov	r18, r6
	mov	r7, r5
	mov	r6, r4
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	mov	r17, r4
	mov	r16, r5
	call	__unorddf2
	bne	r2, zero, .L232
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L234
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L228
	bne	r2, zero, .L234
.L232:
	mov	r2, r18
	mov	r3, r19
	br	.L226
.L228:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L234
	mov	r17, r18
	mov	r16, r19
.L234:
	mov	r2, r17
	mov	r3, r16
.L226:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
	addi	r3, gp, %gprel(s.0)
	beq	r4, zero, .L239
.L240:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	srli	r4, r4, 6
	addi	r3, r3, 1
	stb	r2, -1(r3)
	bne	r4, zero, .L240
.L239:
	stb	zero, 0(r3)
	addi	r2, gp, %gprel(s.0)
	ret
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
	ldw	r4, %gprel(seed)(gp)
	ldw	r5, %gprel(seed+4)(gp)
	movhi	r6, 19605
	movhi	r7, 22610
	addi	sp, sp, -4
	addi	r6, r6, 32557
	addi	r7, r7, -3027
	stw	ra, 0(sp)
	call	__muldi3
	addi	r4, r2, 1
	cmpltu	r2, r4, r2
	add	r2, r2, r3
	stw	r2, %gprel(seed+4)(gp)
	srli	r2, r2, 1
	stw	r4, %gprel(seed)(gp)
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	beq	r5, zero, .L252
	ldw	r2, 0(r5)
	stw	r5, 4(r4)
	stw	r2, 0(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L246
	stw	r4, 4(r2)
.L246:
	ret
.L252:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L254
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L254:
	ldw	r3, 4(r4)
	beq	r3, zero, .L253
	stw	r2, 0(r3)
.L253:
	ret
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	addi	sp, sp, -40
	stw	r17, 12(sp)
	ldw	r17, 0(r6)
	stw	r20, 24(sp)
	stw	r18, 16(sp)
	stw	r16, 8(sp)
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r19, 20(sp)
	stw	r6, 4(sp)
	stw	r5, 0(sp)
	ldw	r20, 40(sp)
	mov	r18, r4
	mov	r16, r7
	beq	r17, zero, .L263
	mov	r21, r5
	mov	fp, zero
	br	.L265
.L278:
	add	r21, r21, r16
	beq	r17, fp, .L263
.L265:
	mov	r5, r21
	mov	r4, r18
	callr	r20
	mov	r19, r21
	addi	fp, fp, 1
	bne	r2, zero, .L278
.L262:
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
.L263:
	ldw	r2, 4(sp)
	mul	r19, r16, r17
	addi	r17, r17, 1
	stw	r17, 0(r2)
	ldw	r2, 0(sp)
	add	r19, r2, r19
	beq	r16, zero, .L262
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L262
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	addi	sp, sp, -32
	stw	r19, 12(sp)
	ldw	r19, 0(r6)
	stw	r20, 16(sp)
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	ldw	r20, 32(sp)
	beq	r19, zero, .L280
	mov	r18, r4
	mov	r21, r7
	mov	r16, r5
	mov	r17, zero
	br	.L282
.L291:
	add	r16, r16, r21
	beq	r19, r17, .L280
.L282:
	mov	r5, r16
	mov	r4, r18
	callr	r20
	mov	fp, r16
	addi	r17, r17, 1
	bne	r2, zero, .L291
.L279:
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
.L280:
	mov	fp, zero
	br	.L279
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L293
	sub	r2, zero, r4
.L293:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
.L301:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r2, r2, 5
	bne	r5, zero, .L295
	bne	r2, zero, .L295
	cmpeqi	r2, r3, 43
	bne	r2, zero, .L296
	cmpeqi	r2, r3, 45
	beq	r2, zero, .L314
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L306
	movi	r8, 1
.L299:
	mov	r2, zero
.L303:
	addi	r4, r4, 1
	addi	r7, r3, -48
	ldb	r3, 0(r4)
	muli	r6, r2, 10
	addi	r5, r3, -48
	cmpltui	r5, r5, 10
	sub	r2, r6, r7
	bne	r5, zero, .L303
	bne	r8, zero, .L294
	sub	r2, r7, r6
	ret
.L295:
	addi	r4, r4, 1
	br	.L301
.L314:
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	mov	r8, zero
	bne	r2, zero, .L299
	ret
.L306:
	mov	r2, zero
.L294:
	ret
.L296:
	ldb	r3, 1(r4)
	mov	r8, zero
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L299
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	jmpi	atoi
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
.L323:
	ldb	r17, 0(r4)
	cmpeqi	r3, r17, 32
	bne	r3, zero, .L317
	addi	r2, r17, -9
	cmpltui	r2, r2, 5
	bne	r2, zero, .L317
	cmpeqi	r2, r17, 43
	bne	r2, zero, .L318
	cmpeqi	r2, r17, 45
	beq	r2, zero, .L337
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	addi	r2, r17, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L328
	movi	r18, 1
.L321:
	mov	r4, zero
	mov	r5, zero
.L325:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	addi	r16, r16, 1
	addi	r7, r17, -48
	ldb	r17, 0(r16)
	srai	r8, r7, 31
	sub	r4, r2, r7
	addi	r6, r17, -48
	cmpltu	r9, r2, r4
	sub	r5, r3, r8
	cmpltui	r6, r6, 10
	sub	r5, r5, r9
	bne	r6, zero, .L325
	bne	r18, zero, .L316
	sub	r4, r7, r2
	cmpltu	r7, r7, r4
	sub	r8, r8, r3
	sub	r5, r8, r7
.L316:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L317:
	addi	r4, r4, 1
	br	.L323
.L337:
	addi	r2, r17, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L328
	mov	r16, r4
	mov	r18, zero
	br	.L321
.L318:
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	mov	r18, zero
	addi	r2, r17, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L321
.L328:
	mov	r4, zero
	mov	r5, zero
	br	.L316
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
	addi	sp, sp, -32
	stw	r21, 20(sp)
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	ldw	r21, 32(sp)
	beq	r6, zero, .L339
	mov	r16, r6
	mov	r20, r4
	mov	r19, r5
	mov	r18, r7
.L342:
	srli	fp, r16, 1
	mov	r4, r20
	addi	r16, r16, -1
	mul	r17, fp, r18
	add	r17, r19, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L343
	beq	r2, zero, .L338
	sub	r16, r16, fp
	add	r19, r17, r18
	bne	r16, zero, .L342
.L339:
	mov	r17, zero
.L338:
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
.L343:
	mov	r16, fp
	bne	r16, zero, .L342
	br	.L339
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi	sp, sp, -32
	stw	r21, 20(sp)
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	ldw	r21, 32(sp)
	beq	r6, zero, .L356
	mov	r16, r6
	mov	r19, r4
	mov	r18, r5
	mov	r17, r7
.L353:
	srai	r20, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r20, r17
	addi	r16, r16, -1
	add	fp, r18, fp
	mov	r5, fp
	callr	r21
	beq	r2, zero, .L352
	bge	zero, r2, .L357
	srai	r16, r16, 1
	add	r18, fp, r17
	bne	r16, zero, .L353
.L356:
	mov	fp, zero
.L352:
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
.L357:
	mov	r16, r20
	bne	r16, zero, .L353
	br	.L356
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r5
	mov	r16, r4
	call	__divsi3
	mov	r4, r16
	mov	r5, r17
	mov	r16, r2
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L368
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L368:
	ret
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi	sp, sp, -28
	stw	r20, 16(sp)
	ldw	r20, 28(sp)
	stw	r17, 4(sp)
	mov	r17, r6
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r16, 0(sp)
	mov	r18, r5
	mov	r16, r4
	mov	r19, r7
	mov	r6, r7
	mov	r4, r5
	mov	r7, r20
	mov	r5, r17
	stw	ra, 20(sp)
	call	__divdi3
	stw	r2, 0(r16)
	stw	r3, 4(r16)
	mov	r6, r19
	mov	r7, r20
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r2, 8(r16)
	mov	r2, r16
	stw	r3, 12(r16)
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
	bge	r4, zero, .L373
	sub	r2, zero, r4
.L373:
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r5
	mov	r16, r4
	call	__divsi3
	mov	r4, r16
	mov	r5, r17
	mov	r16, r2
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L377
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L377:
	ret
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
	addi	sp, sp, -28
	stw	r20, 16(sp)
	ldw	r20, 28(sp)
	stw	r17, 4(sp)
	mov	r17, r6
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r16, 0(sp)
	mov	r18, r5
	mov	r16, r4
	mov	r19, r7
	mov	r6, r7
	mov	r4, r5
	mov	r7, r20
	mov	r5, r17
	stw	ra, 20(sp)
	call	__divdi3
	stw	r2, 0(r16)
	stw	r3, 4(r16)
	mov	r6, r19
	mov	r7, r20
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r2, 8(r16)
	mov	r2, r16
	stw	r3, 12(r16)
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
	ldw	r2, 0(r4)
	beq	r2, zero, .L387
.L382:
	beq	r5, r2, .L388
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L382
	mov	r2, zero
	ret
.L388:
	mov	r2, r4
	ret
.L387:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L392:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L391
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r3, zero, .L392
.L391:
	blt	r3, r2, .L394
	cmplt	r2, r2, r3
	ret
.L394:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L397:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L397
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L402
	mov	r2, r4
.L401:
	ldw	r3, 4(r2)
	addi	r2, r2, 4
	bne	r3, zero, .L401
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L402:
	mov	r2, zero
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L410
.L414:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	addi	r6, r6, -1
	bne	r2, r3, .L407
	beq	r2, zero, .L407
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L414
.L410:
	mov	r2, zero
	ret
.L407:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L415
	cmplt	r2, r2, r3
	ret
.L415:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L420
.L425:
	ldw	r2, 0(r4)
	addi	r6, r6, -1
	beq	r2, r5, .L424
	addi	r4, r4, 4
	bne	r6, zero, .L425
.L420:
	mov	r2, zero
	ret
.L424:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L432
.L438:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r3, r2, .L437
	addi	r5, r5, 4
	bne	r6, zero, .L438
.L432:
	mov	r2, zero
	ret
.L437:
	blt	r3, r2, .L439
	cmplt	r2, r2, r3
	ret
.L439:
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi	sp, sp, -8
	stw	r16, 0(sp)
	stw	ra, 4(sp)
	mov	r16, r4
	beq	r6, zero, .L441
	slli	r6, r6, 2
	call	memcpy
.L441:
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
	beq	r4, r5, .L454
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L460
	beq	r6, zero, .L454
	slli	r3, r3, 2
	add	r6, r5, r3
	add	r3, r2, r3
.L451:
	ldw	r8, 0(r6)
	mov	r7, r6
	addi	r3, r3, -4
	stw	r8, 4(r3)
	addi	r6, r6, -4
	bne	r5, r7, .L451
	ret
.L460:
	mov	r7, r2
	beq	r6, zero, .L461
.L449:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r7)
	addi	r5, r5, 4
	addi	r7, r7, 4
	bne	r6, zero, .L449
.L454:
	ret
.L461:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L463
	mov	r6, r4
.L464:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L464
.L463:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L470
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L469
.L472:
	ldbu	r3, -1(r2)
	addi	r2, r2, -1
	addi	r5, r5, -1
	stb	r3, 0(r5)
	bne	r4, r2, .L472
	ret
.L470:
	beq	r4, r5, .L469
	beq	r6, zero, .L469
	add	r6, r4, r6
.L473:
	ldbu	r2, 0(r4)
	addi	r4, r4, 1
	addi	r5, r5, 1
	stb	r2, -1(r5)
	bne	r6, r4, .L473
.L469:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L483
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	sll	r3, r4, r3
	mov	r2, zero
	blt	r7, zero, .L485
.L487:
	srl	r4, r5, r7
	mov	r5, zero
	or	r3, r5, r3
	or	r2, r4, r2
	ret
.L483:
	srli	r7, r4, 1
	movi	r2, 31
	sub	r2, r2, r6
	srl	r7, r7, r2
	sll	r3, r5, r6
	sll	r2, r4, r6
	sub	r6, zero, r6
	andi	r6, r6, 63
	or	r3, r7, r3
	addi	r7, r6, -32
	bge	r7, zero, .L487
.L485:
	slli	r7, r5, 1
	movi	r8, 31
	sub	r8, r8, r6
	sll	r7, r7, r8
	srl	r4, r4, r6
	srl	r5, r5, r6
	or	r4, r7, r4
	or	r2, r4, r2
	or	r3, r5, r3
	ret
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r2, r6, -32
	blt	r2, zero, .L489
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	srl	r2, r5, r2
	mov	r3, zero
	blt	r7, zero, .L491
.L493:
	sll	r5, r4, r7
	mov	r4, zero
	or	r2, r4, r2
	or	r3, r5, r3
	ret
.L489:
	slli	r7, r5, 1
	movi	r2, 31
	sub	r2, r2, r6
	sll	r7, r7, r2
	srl	r2, r4, r6
	srl	r3, r5, r6
	sub	r6, zero, r6
	andi	r6, r6, 63
	or	r2, r7, r2
	addi	r7, r6, -32
	bge	r7, zero, .L493
.L491:
	srli	r7, r4, 1
	movi	r8, 31
	sub	r8, r8, r6
	srl	r7, r7, r8
	sll	r5, r5, r6
	sll	r4, r4, r6
	or	r5, r7, r5
	or	r2, r4, r2
	or	r3, r5, r3
	ret
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
	sub	r3, zero, r5
	andi	r2, r4, 0xffff
	andi	r3, r3, 15
	sll	r4, r4, r5
	srl	r2, r2, r3
	or	r2, r4, r2
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	andi	r5, r5, 15
	sub	r3, zero, r5
	andi	r2, r4, 0xffff
	andi	r3, r3, 15
	srl	r2, r2, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	andi	r5, r5, 7
	sub	r3, zero, r5
	andi	r2, r4, 0xff
	andi	r3, r3, 7
	sll	r4, r4, r5
	srl	r2, r2, r3
	or	r2, r4, r2
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	andi	r5, r5, 7
	sub	r3, zero, r5
	andi	r2, r4, 0xff
	andi	r3, r3, 7
	srl	r2, r2, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	andi	r2, r4, 0xffff
	srli	r2, r2, 8
	slli	r4, r4, 8
	or	r2, r2, r4
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	srli	r5, r4, 24
	slli	r2, r4, 24
	srli	r3, r4, 8
	slli	r4, r4, 8
	or	r2, r2, r5
	andi	r3, r3, 65280
	or	r2, r2, r3
	andhi	r4, r4, 255
	or	r2, r2, r4
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	srli	r8, r5, 8
	srli	r9, r4, 24
	slli	r3, r4, 24
	srli	r2, r5, 24
	slli	r7, r5, 8
	srli	r6, r4, 8
	slli	r4, r4, 8
	slli	r5, r5, 24
	andi	r8, r8, 65280
	or	r2, r2, r8
	andhi	r7, r7, 255
	or	r3, r3, r9
	andi	r6, r6, 65280
	or	r2, r2, r7
	or	r3, r3, r6
	andhi	r4, r4, 255
	or	r2, r2, r5
	or	r3, r3, r4
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	mov	r2, zero
	br	.L508
.L511:
	beq	r5, zero, .L510
.L508:
	srl	r3, r4, r2
	addi	r2, r2, 1
	cmpnei	r5, r2, 32
	andi	r3, r3, 1
	beq	r3, zero, .L511
	ret
.L510:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L515
	andi	r2, r4, 1
	bne	r2, zero, .L512
	movi	r2, 1
.L514:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L514
	ret
.L515:
	mov	r2, zero
.L512:
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movhi	r5, 65408
	addi	sp, sp, -8
	addi	r5, r5, -1
	stw	r16, 0(sp)
	stw	ra, 4(sp)
	mov	r16, r4
	call	__ltsf2
	blt	r2, zero, .L521
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L521:
	movi	r2, 1
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movhi	r7, 65520
	addi	sp, sp, -12
	movi	r6, -1
	addi	r7, r7, -1
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r17, r4
	mov	r16, r5
	call	__ltdf2
	blt	r2, zero, .L526
	movhi	r7, 32752
	movi	r6, -1
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L523:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L526:
	movi	r2, 1
	br	.L523
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movhi	r7, 65520
	addi	sp, sp, -12
	movi	r6, -1
	addi	r7, r7, -1
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r17, r4
	mov	r16, r5
	call	__ltdf2
	blt	r2, zero, .L531
	movhi	r7, 32752
	movi	r6, -1
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L528:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L531:
	movi	r2, 1
	br	.L528
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi	sp, sp, -8
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r4, r5
	stw	ra, 4(sp)
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
	stw	r16, 0(sp)
	mov	r16, r5
	mov	r5, r4
	stw	r18, 8(sp)
	stw	ra, 12(sp)
	stw	r17, 4(sp)
	mov	r18, r4
	call	__unordsf2
	bne	r2, zero, .L536
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L536
	blt	r16, zero, .L552
	movhi	r17, 16384
.L537:
	andi	r2, r16, 1
	beq	r2, zero, .L538
.L539:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L538:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L536
.L540:
	mov	r4, r17
	mov	r5, r17
	call	__mulsf3
	srli	r3, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r3, r3, r16
	bne	r4, zero, .L539
	srai	r16, r3, 1
	br	.L540
.L536:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L552:
	movhi	r17, 16128
	br	.L537
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -24
	stw	r16, 8(sp)
	mov	r7, r5
	mov	r16, r6
	mov	r6, r4
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	ra, 20(sp)
	mov	r18, r4
	mov	r17, r5
	call	__unorddf2
	bne	r2, zero, .L554
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__adddf3
	mov	r6, r18
	mov	r7, r17
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L554
	mov	r6, zero
	blt	r16, zero, .L570
	movhi	r7, 16384
.L555:
	andi	r2, r16, 1
	beq	r2, zero, .L556
.L557:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L556:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L554
.L558:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L557
	srai	r16, r8, 1
	br	.L558
.L554:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L570:
	movhi	r7, 16352
	br	.L555
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -24
	stw	r16, 8(sp)
	mov	r7, r5
	mov	r16, r6
	mov	r6, r4
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	ra, 20(sp)
	mov	r18, r4
	mov	r17, r5
	call	__unorddf2
	bne	r2, zero, .L572
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r18
	mov	r5, r17
	call	__eqdf2
	beq	r2, zero, .L572
	mov	r6, zero
	blt	r16, zero, .L588
	movhi	r7, 16384
.L573:
	andi	r2, r16, 1
	beq	r2, zero, .L574
.L575:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L574:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L572
.L576:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L575
	srai	r16, r8, 1
	br	.L576
.L572:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L588:
	movhi	r7, 16352
	br	.L573
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L590
	add	r6, r5, r6
	mov	r3, r4
.L591:
	ldbu	r7, 0(r3)
	ldbu	r8, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L591
.L590:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L603
	mov	r3, r4
.L598:
	ldb	r7, 1(r3)
	addi	r3, r3, 1
	bne	r7, zero, .L598
.L609:
	beq	r6, zero, .L600
.L611:
	ldbu	r7, 0(r5)
	addi	r6, r6, -1
	addi	r5, r5, 1
	stb	r7, 0(r3)
	andi	r7, r7, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L610
	addi	r3, r3, 1
	bne	r6, zero, .L611
.L600:
	stb	zero, 0(r3)
	ret
.L610:
	ret
.L603:
	mov	r3, r4
	br	.L609
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L619
.L613:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L615
.L612:
	ret
.L615:
	addi	r2, r2, 1
	bne	r5, r2, .L613
	ret
.L619:
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L625
.L621:
	mov	r3, r5
	br	.L624
.L623:
	beq	r6, r7, .L622
.L624:
	ldb	r6, 0(r3)
	addi	r3, r3, 1
	bne	r6, zero, .L623
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L621
.L625:
	mov	r2, zero
.L622:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
.L629:
	ldb	r3, 0(r4)
	bne	r5, r3, .L628
	mov	r2, r4
.L628:
	addi	r4, r4, 1
	bne	r3, zero, .L629
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	beq	r8, zero, .L642
	mov	r2, r5
.L633:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L633
	sub	r10, r2, r5
	beq	r2, r5, .L642
	addi	r10, r10, -1
	br	.L639
.L652:
	addi	r4, r4, 1
	beq	r2, zero, .L651
.L639:
	ldbu	r3, 0(r4)
	andi	r2, r3, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r8, r2, .L652
	add	r9, r4, r10
	mov	r6, r5
	mov	r2, r4
	andi	r3, r3, 0xff
	br	.L635
.L653:
	beq	r2, r9, .L636
	addi	r2, r2, 1
	bne	r7, r3, .L636
	ldbu	r3, 0(r2)
	addi	r6, r6, 1
	beq	r3, zero, .L636
.L635:
	ldbu	r7, 0(r6)
	bne	r7, zero, .L653
.L636:
	ldbu	r2, 0(r6)
	beq	r3, r2, .L642
	addi	r4, r4, 1
	br	.L639
.L651:
	ret
.L642:
	mov	r2, r4
	ret
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	mov	r19, r6
	mov	r18, r7
	mov	r6, zero
	mov	r7, zero
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	mov	r17, r4
	mov	r16, r5
	call	__ltdf2
	mov	r6, zero
	mov	r7, zero
	blt	r2, zero, .L665
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L658
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L657
.L658:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L665:
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L658
.L657:
	xorhi	r16, r16, 32768
	br	.L658
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	beq	r7, zero, .L672
	bltu	r5, r7, .L674
	sub	r5, r5, r7
	add	r10, r4, r5
	bltu	r10, r4, .L674
	ldb	r11, 0(r6)
	cmpnei	r12, r7, 1
	add	r9, r6, r7
.L671:
	ldbu	r3, 0(r4)
	mov	r2, r4
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, r11, .L677
.L668:
	bgeu	r10, r4, .L671
.L674:
	mov	r2, zero
	ret
.L677:
	addi	r3, r6, 1
	beq	r12, zero, .L678
	mov	r5, r4
	br	.L669
.L670:
	beq	r3, r9, .L679
.L669:
	ldbu	r8, 0(r5)
	ldbu	r7, 0(r3)
	addi	r5, r5, 1
	addi	r3, r3, 1
	beq	r8, r7, .L670
	br	.L668
.L679:
	ret
.L672:
	mov	r2, r4
	ret
.L678:
	ret
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	addi	sp, sp, -12
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r16, r6
	mov	r17, r4
	beq	r6, zero, .L681
	call	memmove
.L681:
	add	r2, r17, r16
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
	addi	sp, sp, -24
	stw	r19, 12(sp)
	mov	r7, zero
	mov	r19, r6
	mov	r6, zero
	stw	r18, 8(sp)
	stw	r16, 0(sp)
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r17, 4(sp)
	mov	r18, r4
	mov	r16, r5
	call	__ltdf2
	mov	r6, zero
	blt	r2, zero, .L709
	movhi	r7, 16368
	mov	r4, r18
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L710
	mov	r20, zero
.L689:
	mov	r17, zero
.L695:
	mov	r4, r18
	mov	r5, r16
	mov	r6, zero
	movhi	r7, 16352
	call	__muldf3
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r2
	mov	r5, r3
	addi	r17, r17, 1
	mov	r18, r2
	mov	r16, r3
	call	__gedf2
	bge	r2, zero, .L695
.L696:
	stw	r17, 0(r19)
	beq	r20, zero, .L702
	xorhi	r3, r16, 32768
.L686:
	mov	r2, r18
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L710:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r18
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L692
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r16
	call	__nedf2
	bne	r2, zero, .L701
.L692:
	stw	zero, 0(r19)
	mov	r3, r16
	br	.L686
.L709:
	movhi	r7, 49136
	mov	r4, r18
	mov	r5, r16
	xorhi	r17, r16, 32768
	call	__ledf2
	bgt	r2, zero, .L711
	mov	r16, r17
	movi	r20, 1
	br	.L689
.L702:
	mov	r3, r16
	br	.L686
.L711:
	mov	r6, zero
	movhi	r7, 49120
	mov	r4, r18
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L692
	movi	r20, 1
.L690:
	mov	r16, r17
	mov	r17, zero
.L697:
	mov	r6, r18
	mov	r7, r16
	mov	r4, r18
	mov	r5, r16
	call	__adddf3
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r2
	mov	r5, r3
	addi	r17, r17, -1
	mov	r18, r2
	mov	r16, r3
	call	__ltdf2
	blt	r2, zero, .L697
	br	.L696
.L701:
	mov	r17, r16
	mov	r20, zero
	br	.L690
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
	or	r2, r4, r5
	beq	r2, zero, .L716
	mov	r16, r4
	mov	r18, r5
	mov	r19, r6
	mov	r17, r7
	mov	r20, zero
	mov	r21, zero
.L715:
	mov	r6, r19
	andi	r4, r16, 1
	mov	r7, r17
	mov	r5, zero
	call	__muldi3
	slli	r5, r18, 31
	srli	r16, r16, 1
	srli	r18, r18, 1
	srli	r4, r19, 31
	slli	r17, r17, 1
	add	r2, r20, r2
	or	r16, r5, r16
	cmpltu	r6, r2, r20
	add	r3, r21, r3
	or	r5, r16, r18
	slli	r19, r19, 1
	mov	r20, r2
	add	r21, r6, r3
	or	r17, r4, r17
	bne	r5, zero, .L715
.L712:
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
.L716:
	mov	r20, zero
	mov	r21, zero
	br	.L712
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L721
	movi	r2, 32
	movi	r3, 1
	br	.L720
.L724:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L722
	beq	r2, zero, .L723
.L720:
	addi	r2, r2, -1
	bge	r5, zero, .L724
.L721:
	mov	r2, zero
.L726:
	bltu	r4, r5, .L725
	sub	r4, r4, r5
	or	r2, r2, r3
.L725:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L726
.L723:
	beq	r6, zero, .L719
	mov	r2, r4
.L719:
	ret
.L722:
	bne	r3, zero, .L721
	mov	r2, zero
	br	.L723
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
	beq	r3, r2, .L737
	andi	r4, r4, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	slli	r4, r4, 8
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzsi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L737:
	movi	r2, 7
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	srai	r6, r5, 31
	mov	r2, r4
	mov	r3, r5
	xor	r4, r4, r6
	xor	r5, r5, r6
	beq	r2, r6, .L751
.L746:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L751:
	bne	r3, r2, .L746
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L755
.L754:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L754
	ret
.L755:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	movi	r10, -8
	srli	r9, r6, 3
	and	r10, r6, r10
	bltu	r4, r5, .L758
	add	r2, r5, r6
	bgeu	r2, r4, .L771
.L758:
	beq	r9, zero, .L761
	slli	r9, r9, 3
	mov	r2, r5
	mov	r3, r4
	add	r9, r9, r5
.L762:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	addi	r2, r2, 8
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r3, r3, 8
	bne	r2, r9, .L762
.L761:
	bgeu	r10, r6, .L757
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L763:
	ldbu	r3, 0(r2)
	addi	r2, r2, 1
	addi	r4, r4, 1
	stb	r3, -1(r4)
	bne	r2, r5, .L763
	ret
.L771:
	addi	r2, r6, -1
	beq	r6, zero, .L772
.L759:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L759
.L757:
	ret
.L772:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bltu	r4, r5, .L774
	add	r2, r5, r6
	bgeu	r2, r4, .L789
.L774:
	beq	r8, zero, .L777
	add	r8, r8, r8
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r5
.L778:
	ldhu	r7, 0(r2)
	addi	r2, r2, 2
	addi	r3, r3, 2
	sth	r7, -2(r3)
	bne	r2, r8, .L778
.L777:
	andi	r2, r6, 1
	beq	r2, zero, .L773
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L789:
	addi	r2, r6, -1
	beq	r6, zero, .L790
.L775:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L775
.L773:
	ret
.L790:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	movi	r9, -4
	srli	r8, r6, 2
	and	r9, r6, r9
	bltu	r4, r5, .L792
	add	r2, r5, r6
	bgeu	r2, r4, .L805
.L792:
	beq	r8, zero, .L795
	slli	r8, r8, 2
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r5
.L796:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L796
.L795:
	bgeu	r9, r6, .L791
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L797:
	ldbu	r3, 0(r2)
	addi	r2, r2, 1
	addi	r4, r4, 1
	stb	r3, -1(r4)
	bne	r2, r5, .L797
	ret
.L805:
	addi	r2, r6, -1
	beq	r6, zero, .L806
.L793:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L793
.L791:
	ret
.L806:
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
	andi	r4, r4, 0xffff
	mov	r2, zero
	movi	r5, 15
.L821:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L819
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L821
.L819:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi	r4, r4, 0xffff
	mov	r2, zero
.L825:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L823
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L825
.L823:
	ret
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi	sp, sp, -8
	movhi	r5, 18176
	stw	r16, 0(sp)
	stw	ra, 4(sp)
	mov	r16, r4
	call	__gesf2
	bge	r2, zero, .L834
	mov	r4, r16
	call	__fixsfsi
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L834:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	andi	r4, r4, 0xffff
	mov	r2, zero
	mov	r3, zero
.L836:
	sra	r5, r4, r3
	addi	r3, r3, 1
	cmpnei	r6, r3, 16
	andi	r5, r5, 1
	add	r2, r2, r5
	bne	r6, zero, .L836
	andi	r2, r2, 1
	ret
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	andi	r4, r4, 0xffff
	mov	r2, zero
	mov	r3, zero
.L839:
	sra	r5, r4, r3
	addi	r3, r3, 1
	cmpnei	r6, r3, 16
	andi	r5, r5, 1
	add	r2, r2, r5
	bne	r6, zero, .L839
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	beq	r4, zero, .L844
.L843:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L843
	ret
.L844:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L849
	beq	r5, zero, .L850
.L848:
	andi	r3, r5, 1
	mul	r3, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r3
	bne	r5, zero, .L848
	ret
.L849:
	ret
.L850:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L854
	movi	r2, 32
	movi	r3, 1
	br	.L853
.L857:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L855
	beq	r2, zero, .L856
.L853:
	addi	r2, r2, -1
	bge	r5, zero, .L857
.L854:
	mov	r2, zero
.L859:
	bltu	r4, r5, .L858
	sub	r4, r4, r5
	or	r2, r2, r3
.L858:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L859
.L856:
	beq	r6, zero, .L852
	mov	r2, r4
.L852:
	ret
.L855:
	bne	r3, zero, .L854
	mov	r2, zero
	br	.L856
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi	sp, sp, -12
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r16, r4
	mov	r17, r5
	call	__ltsf2
	blt	r2, zero, .L871
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L868:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L871:
	movi	r2, -1
	br	.L868
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r18, r7
	call	__ltdf2
	blt	r2, zero, .L876
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L873:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L876:
	movi	r2, -1
	br	.L873
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	srai	r7, r5, 31
	mov	r6, r5
	srai	r5, r4, 31
	addi	sp, sp, -4
	stw	ra, 0(sp)
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
	mov	r6, r5
	mov	r7, zero
	mov	r5, zero
	stw	ra, 0(sp)
	call	__muldi3
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	blt	r5, zero, .L896
	beq	r5, zero, .L888
	mov	r8, zero
.L884:
	movi	r3, 32
	mov	r2, zero
	br	.L887
.L897:
	beq	r7, zero, .L886
.L887:
	andi	r6, r5, 1
	mul	r6, r6, r4
	srai	r5, r5, 1
	addi	r3, r3, -1
	andi	r7, r3, 0xff
	add	r2, r2, r6
	add	r4, r4, r4
	bne	r5, zero, .L897
.L886:
	beq	r8, zero, .L882
	sub	r2, zero, r2
	ret
.L888:
	mov	r2, zero
.L882:
	ret
.L896:
	sub	r5, zero, r5
	movi	r8, 1
	br	.L884
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L918
	mov	r7, zero
.L899:
	bge	r5, zero, .L900
	sub	r5, zero, r5
	xori	r7, r7, 1
.L900:
	mov	r6, r4
	movi	r3, 1
	bgeu	r5, r4, .L902
	movi	r2, 32
	movi	r3, 1
	br	.L901
.L905:
	beq	r2, zero, .L904
.L901:
	add	r5, r5, r5
	addi	r2, r2, -1
	add	r3, r3, r3
	bltu	r5, r4, .L905
.L904:
	mov	r2, zero
	beq	r3, zero, .L903
.L902:
	mov	r2, zero
.L907:
	bltu	r6, r5, .L906
	sub	r6, r6, r5
	or	r2, r2, r3
.L906:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L907
.L903:
	beq	r7, zero, .L898
	sub	r2, zero, r2
.L898:
	ret
.L918:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L899
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L939
	mov	r7, zero
.L920:
	mov	r2, r4
	bge	r5, zero, .L921
	sub	r5, zero, r5
.L921:
	movi	r3, 1
	bgeu	r5, r4, .L928
	movi	r6, 32
	movi	r3, 1
	br	.L922
.L926:
	beq	r6, zero, .L925
.L922:
	add	r5, r5, r5
	addi	r6, r6, -1
	add	r3, r3, r3
	bltu	r5, r4, .L926
.L925:
	beq	r3, zero, .L940
.L928:
	srli	r3, r3, 1
	bltu	r2, r5, .L927
	sub	r2, r2, r5
.L927:
	srli	r5, r5, 1
	bne	r3, zero, .L928
.L924:
	beq	r7, zero, .L919
	sub	r2, zero, r2
.L919:
	ret
.L939:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L920
.L940:
	mov	r2, r4
	br	.L924
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r3, r5, 0xffff
	andi	r2, r4, 0xffff
	bgeu	r3, r2, .L955
	movi	r8, 16
	movi	r3, 1
	andi	r9, r4, 0xffff
.L942:
	andi	r2, r5, 65535
	xori	r2, r2, 32768
	add	r10, r5, r5
	addi	r2, r2, -32768
	add	r7, r3, r3
	andi	r11, r10, 0xffff
	addi	r8, r8, -1
	blt	r2, zero, .L943
	mov	r5, r10
	mov	r3, r7
	bgeu	r11, r9, .L944
	bne	r8, zero, .L942
	mov	r2, zero
.L945:
	beq	r6, zero, .L941
	mov	r2, r4
.L941:
	ret
.L944:
	andi	r2, r7, 0xffff
	beq	r2, zero, .L952
.L943:
	mov	r2, zero
	br	.L948
.L956:
	andi	r9, r4, 0xffff
.L948:
	andi	r7, r3, 0xffff
	andi	r8, r5, 0xffff
	srli	r7, r7, 1
	srli	r10, r8, 1
	bltu	r9, r8, .L947
	sub	r4, r4, r5
	or	r2, r3, r2
.L947:
	mov	r3, r7
	mov	r5, r10
	bne	r7, zero, .L956
	br	.L945
.L955:
	movi	r3, 1
	mov	r9, r2
	br	.L943
.L952:
	mov	r2, r7
	br	.L945
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L959
	movi	r2, 32
	movi	r3, 1
	br	.L958
.L962:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L960
	beq	r2, zero, .L961
.L958:
	addi	r2, r2, -1
	bge	r5, zero, .L962
.L959:
	mov	r2, zero
.L964:
	bltu	r4, r5, .L963
	sub	r4, r4, r5
	or	r2, r2, r3
.L963:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L964
.L961:
	beq	r6, zero, .L957
	mov	r2, r4
.L957:
	ret
.L960:
	bne	r3, zero, .L959
	mov	r2, zero
	br	.L961
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L974
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L974:
	beq	r6, zero, .L977
	movi	r2, 32
	sub	r2, r2, r6
	srl	r2, r4, r2
	sll	r3, r5, r6
	sll	r4, r4, r6
	or	r3, r2, r3
	mov	r2, r4
	ret
.L977:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L979
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L979:
	beq	r6, zero, .L982
	movi	r7, 32
	sub	r7, r7, r6
	sll	r7, r5, r7
	srl	r2, r4, r6
	sra	r3, r5, r6
	or	r2, r7, r2
	ret
.L982:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli	r8, r5, 8
	srli	r9, r4, 24
	srli	r2, r5, 24
	slli	r3, r4, 24
	slli	r7, r5, 8
	srli	r6, r4, 8
	slli	r4, r4, 8
	slli	r5, r5, 24
	andi	r8, r8, 65280
	or	r2, r2, r8
	andhi	r7, r7, 255
	or	r3, r3, r9
	andi	r6, r6, 65280
	or	r2, r2, r7
	or	r3, r3, r6
	andhi	r4, r4, 255
	or	r2, r2, r5
	or	r3, r3, r4
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	slli	r5, r4, 24
	srli	r2, r4, 24
	srli	r3, r4, 8
	slli	r4, r4, 8
	or	r2, r2, r5
	andi	r3, r3, 65280
	or	r2, r2, r3
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
	movi	r6, 8
	sub	r2, r2, r5
	srl	r3, r4, r2
	movi	r2, 2
	andi	r4, r3, 65280
	cmpeq	r4, r4, zero
	slli	r4, r4, 3
	sub	r6, r6, r4
	srl	r3, r3, r6
	add	r5, r4, r5
	movi	r6, 4
	andi	r4, r3, 240
	cmpeq	r4, r4, zero
	slli	r4, r4, 2
	sub	r6, r6, r4
	srl	r3, r3, r6
	add	r5, r4, r5
	andi	r4, r3, 12
	cmpeq	r4, r4, zero
	add	r4, r4, r4
	sub	r6, r2, r4
	srl	r3, r3, r6
	srli	r6, r3, 1
	andi	r6, r6, 1
	bne	r6, zero, .L986
	sub	r2, r2, r3
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L986:
	add	r4, r4, r5
	mov	r2, zero
	add	r2, r2, r4
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L992
	blt	r7, r5, .L993
	bltu	r4, r6, .L992
	bltu	r6, r4, .L993
	movi	r2, 1
	ret
.L992:
	mov	r2, zero
	ret
.L993:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L998
	blt	r7, r5, .L997
	bltu	r4, r6, .L998
	cmpltu	r2, r6, r4
	ret
.L998:
	movi	r2, -1
	ret
.L997:
	movi	r2, 1
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
	add	r4, r2, r4
	andi	r2, r3, 3
	cmpeq	r2, r2, zero
	add	r2, r2, r2
	srl	r3, r3, r2
	add	r2, r2, r4
	movi	r4, 2
	andi	r3, r3, 3
	srli	r5, r3, 1
	nor	r3, zero, r3
	andi	r3, r3, 1
	sub	r4, r4, r5
	mul	r3, r3, r4
	add	r2, r3, r2
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1001
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1001:
	beq	r6, zero, .L1004
	movi	r3, 32
	sub	r3, r3, r6
	sll	r3, r5, r3
	srl	r2, r4, r6
	srl	r5, r5, r6
	or	r2, r3, r2
	mov	r3, r5
	ret
.L1004:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	andi	r6, r4, 65535
	andi	r3, r5, 65535
	mul	r7, r6, r3
	srli	r4, r4, 16
	srli	r5, r5, 16
	srli	r2, r7, 16
	mul	r3, r3, r4
	mul	r6, r6, r5
	mul	r4, r4, r5
	add	r5, r3, r2
	andi	r2, r5, 0xffff
	add	r3, r6, r2
	srli	r5, r5, 16
	slli	r2, r3, 16
	srli	r3, r3, 16
	andi	r7, r7, 0xffff
	add	r5, r5, r4
	add	r2, r7, r2
	add	r3, r5, r3
	ret
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	andi	r2, r4, 65535
	andi	r8, r6, 65535
	mul	r3, r2, r8
	srli	r9, r4, 16
	srli	r10, r6, 16
	srli	r11, r3, 16
	mul	r8, r8, r9
	mul	r2, r2, r10
	mul	r9, r9, r10
	add	r8, r8, r11
	andi	r10, r8, 0xffff
	add	r2, r2, r10
	srli	r8, r8, 16
	srli	r10, r2, 16
	mul	r4, r4, r7
	mul	r6, r6, r5
	add	r8, r8, r9
	slli	r2, r2, 16
	add	r8, r8, r10
	andi	r3, r3, 0xffff
	add	r4, r4, r8
	add	r2, r3, r2
	add	r3, r4, r6
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
	movi	r2, 27030
	xor	r3, r3, r4
	andi	r3, r3, 15
	sra	r2, r2, r3
	andi	r2, r2, 1
	ret
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli	r7, r5, 31
	srli	r2, r4, 1
	srli	r6, r5, 1
	movhi	r3, 21845
	addi	r3, r3, 21845
	or	r2, r7, r2
	and	r2, r2, r3
	sub	r2, r4, r2
	and	r3, r6, r3
	cmpltu	r4, r4, r2
	sub	r5, r5, r3
	sub	r5, r5, r4
	slli	r7, r5, 30
	srli	r4, r2, 2
	srli	r6, r5, 2
	movhi	r3, 13107
	addi	r3, r3, 13107
	or	r4, r7, r4
	and	r4, r4, r3
	and	r2, r2, r3
	add	r2, r4, r2
	and	r6, r6, r3
	and	r5, r5, r3
	add	r3, r6, r5
	cmpltu	r4, r2, r4
	add	r4, r4, r3
	slli	r7, r4, 28
	srli	r3, r2, 4
	srli	r6, r4, 4
	movhi	r5, 3855
	or	r3, r7, r3
	add	r2, r3, r2
	cmpltu	r3, r2, r3
	add	r4, r6, r4
	addi	r5, r5, 3855
	add	r3, r3, r4
	and	r2, r2, r5
	and	r3, r3, r5
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
	and	r4, r4, r2
	and	r3, r3, r2
	add	r3, r3, r4
	srli	r2, r3, 4
	movhi	r4, 3855
	addi	r4, r4, 3855
	add	r2, r2, r3
	and	r2, r2, r4
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
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	mov	r19, r6
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	andi	r2, r6, 1
	stw	ra, 24(sp)
	mov	r6, r4
	mov	r7, r5
	mov	r16, r19
	mov	r18, zero
	movhi	r17, 16368
	beq	r2, zero, .L1014
.L1016:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r7, 0(sp)
	ldw	r6, 4(sp)
	mov	r18, r2
	mov	r17, r3
.L1014:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L1015
.L1017:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L1016
	srai	r16, r8, 1
	br	.L1017
.L1015:
	bge	r19, zero, .L1013
	mov	r6, r18
	mov	r7, r17
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r18, r2
	mov	r17, r3
.L1013:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 28
	ret
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	andi	r2, r5, 1
	mov	r19, r5
	mov	r17, r4
	mov	r16, r5
	movhi	r18, 16256
	beq	r2, zero, .L1022
.L1024:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L1022:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L1023
.L1025:
	mov	r4, r17
	mov	r5, r17
	call	__mulsf3
	srli	r3, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r3, r3, r16
	bne	r4, zero, .L1024
	srai	r16, r3, 1
	br	.L1025
.L1023:
	bge	r19, zero, .L1021
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
.L1021:
	mov	r2, r18
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L1033
	bltu	r7, r5, .L1034
	bltu	r4, r6, .L1033
	bltu	r6, r4, .L1034
	movi	r2, 1
	ret
.L1033:
	mov	r2, zero
	ret
.L1034:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1039
	bltu	r7, r5, .L1038
	bltu	r4, r6, .L1039
	cmpltu	r2, r6, r4
	ret
.L1039:
	movi	r2, -1
	ret
.L1038:
	movi	r2, 1
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
	.global	__nedf2
	.global	__gedf2
	.global	__ledf2
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
