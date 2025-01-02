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
.L320:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r2, r2, 5
	bne	r5, zero, .L316
	bne	r2, zero, .L316
	cmpeqi	r2, r3, 43
	bne	r2, zero, .L317
	cmpeqi	r2, r3, 45
	beq	r2, zero, .L335
	ldb	r3, 1(r4)
	movi	r8, 1
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L336
.L321:
	mov	r2, zero
.L324:
	addi	r4, r4, 1
	addi	r7, r3, -48
	ldb	r3, 0(r4)
	muli	r6, r2, 10
	addi	r5, r3, -48
	cmpltui	r5, r5, 10
	sub	r2, r6, r7
	bne	r5, zero, .L324
	bne	r8, zero, .L315
	sub	r2, r7, r6
	ret
.L316:
	addi	r4, r4, 1
	br	.L320
.L335:
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L337
.L328:
	mov	r8, zero
	br	.L321
.L317:
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpgeui	r2, r2, 10
	beq	r2, zero, .L328
	mov	r2, zero
.L315:
	ret
.L337:
	ret
.L336:
	ret
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
.L345:
	ldb	r17, 0(r4)
	cmpeqi	r3, r17, 32
	bne	r3, zero, .L339
	addi	r2, r17, -9
	cmpltui	r2, r2, 5
	bne	r2, zero, .L339
	cmpeqi	r2, r17, 43
	bne	r2, zero, .L340
	cmpeqi	r2, r17, 45
	beq	r2, zero, .L359
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	addi	r2, r17, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L350
	movi	r18, 1
.L343:
	mov	r4, zero
	mov	r5, zero
.L347:
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
	bne	r6, zero, .L347
	bne	r18, zero, .L338
	sub	r4, r7, r2
	cmpltu	r7, r7, r4
	sub	r8, r8, r3
	sub	r5, r8, r7
.L338:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L339:
	addi	r4, r4, 1
	br	.L345
.L359:
	addi	r2, r17, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L350
	mov	r16, r4
	mov	r18, zero
	br	.L343
.L340:
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	mov	r18, zero
	addi	r2, r17, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L343
.L350:
	mov	r4, zero
	mov	r5, zero
	br	.L338
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
	beq	r6, zero, .L361
	mov	r16, r6
	mov	r20, r4
	mov	r19, r5
	mov	r18, r7
.L364:
	srli	fp, r16, 1
	mov	r4, r20
	addi	r16, r16, -1
	mul	r17, fp, r18
	add	r17, r19, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L365
	beq	r2, zero, .L360
	sub	r16, r16, fp
	add	r19, r17, r18
	bne	r16, zero, .L364
.L361:
	mov	r17, zero
.L360:
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
.L365:
	mov	r16, fp
	bne	r16, zero, .L364
	br	.L361
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
	beq	r6, zero, .L378
	mov	r16, r6
	mov	r19, r4
	mov	r18, r5
	mov	r17, r7
.L375:
	srai	r20, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r20, r17
	addi	r16, r16, -1
	add	fp, r18, fp
	mov	r5, fp
	callr	r21
	beq	r2, zero, .L374
	bge	zero, r2, .L379
	srai	r16, r16, 1
	add	r18, fp, r17
	bne	r16, zero, .L375
.L378:
	mov	fp, zero
.L374:
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
.L379:
	mov	r16, r20
	bne	r16, zero, .L375
	br	.L378
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	addi	sp, sp, -20
	stw	r18, 8(sp)
	or	r18, r4, r5
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	cmpgeui	r2, r18, 16
	mov	r16, r4
	mov	r17, r5
	bne	r2, zero, .L389
	slli	r2, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	cmpgeui	r18, r18, 16
	or	r2, r2, r5
	add	r3, r2, r3
	ldbu	r19, %lo(__divsi3_table)(r3)
	bne	r18, zero, .L391
.L393:
	slli	r2, r16, 4
	movhi	r3, %hiadj(__divsi3_table)
	or	r2, r2, r17
	add	r3, r2, r3
	ldbu	r3, %lo(__divsi3_table)(r3)
.L390:
	mul	r3, r3, r17
	mov	r2, r19
	sub	r3, r16, r3
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L389:
	call	__divsi3
	cmpgeui	r18, r18, 16
	mov	r19, r2
	beq	r18, zero, .L393
.L391:
	mov	r5, r17
	mov	r4, r16
	call	__divsi3
	mov	r3, r2
	br	.L390
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L395
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L395:
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
	bge	r4, zero, .L400
	sub	r2, zero, r4
.L400:
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -20
	stw	r18, 8(sp)
	or	r18, r4, r5
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	stw	r19, 12(sp)
	cmpgeui	r2, r18, 16
	mov	r16, r4
	mov	r17, r5
	bne	r2, zero, .L403
	slli	r2, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	cmpgeui	r18, r18, 16
	or	r2, r2, r5
	add	r3, r2, r3
	ldbu	r19, %lo(__divsi3_table)(r3)
	bne	r18, zero, .L405
.L407:
	slli	r2, r16, 4
	movhi	r3, %hiadj(__divsi3_table)
	or	r2, r2, r17
	add	r3, r2, r3
	ldbu	r3, %lo(__divsi3_table)(r3)
.L404:
	mul	r3, r3, r17
	mov	r2, r19
	sub	r3, r16, r3
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L403:
	call	__divsi3
	cmpgeui	r18, r18, 16
	mov	r19, r2
	beq	r18, zero, .L407
.L405:
	mov	r5, r17
	mov	r4, r16
	call	__divsi3
	mov	r3, r2
	br	.L404
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L409
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L409:
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
	beq	r2, zero, .L419
.L414:
	beq	r5, r2, .L420
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L414
	mov	r2, zero
	ret
.L420:
	mov	r2, r4
	ret
.L419:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L424:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L423
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r3, zero, .L424
.L423:
	blt	r3, r2, .L426
	cmplt	r2, r2, r3
	ret
.L426:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L429:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L429
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L434
	mov	r2, r4
.L433:
	ldw	r3, 4(r2)
	addi	r2, r2, 4
	bne	r3, zero, .L433
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L434:
	mov	r2, zero
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L442
.L446:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	addi	r6, r6, -1
	bne	r2, r3, .L439
	beq	r2, zero, .L439
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L446
.L442:
	mov	r2, zero
	ret
.L439:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L447
	cmplt	r2, r2, r3
	ret
.L447:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L452
.L457:
	ldw	r2, 0(r4)
	addi	r6, r6, -1
	beq	r2, r5, .L456
	addi	r4, r4, 4
	bne	r6, zero, .L457
.L452:
	mov	r2, zero
	ret
.L456:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L464
.L470:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r3, r2, .L469
	addi	r5, r5, 4
	bne	r6, zero, .L470
.L464:
	mov	r2, zero
	ret
.L469:
	blt	r3, r2, .L471
	cmplt	r2, r2, r3
	ret
.L471:
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
	beq	r6, zero, .L473
	slli	r6, r6, 2
	call	memcpy
.L473:
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
	beq	r4, r5, .L486
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L492
	beq	r6, zero, .L486
	slli	r3, r3, 2
	add	r6, r5, r3
	add	r3, r2, r3
.L483:
	ldw	r8, 0(r6)
	mov	r7, r6
	addi	r3, r3, -4
	stw	r8, 4(r3)
	addi	r6, r6, -4
	bne	r5, r7, .L483
	ret
.L492:
	mov	r7, r2
	beq	r6, zero, .L493
.L481:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r7)
	addi	r5, r5, 4
	addi	r7, r7, 4
	bne	r6, zero, .L481
.L486:
	ret
.L493:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L495
	mov	r6, r4
.L496:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L496
.L495:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L502
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L501
.L504:
	ldbu	r3, -1(r2)
	addi	r2, r2, -1
	addi	r5, r5, -1
	stb	r3, 0(r5)
	bne	r4, r2, .L504
	ret
.L502:
	beq	r4, r5, .L501
	beq	r6, zero, .L501
	add	r6, r4, r6
.L505:
	ldbu	r2, 0(r4)
	addi	r4, r4, 1
	addi	r5, r5, 1
	stb	r2, -1(r5)
	bne	r6, r4, .L505
.L501:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L515
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	sll	r3, r4, r3
	mov	r2, zero
	blt	r7, zero, .L517
.L519:
	srl	r4, r5, r7
	mov	r5, zero
	or	r3, r5, r3
	or	r2, r4, r2
	ret
.L515:
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
	bge	r7, zero, .L519
.L517:
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
	blt	r2, zero, .L521
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	srl	r2, r5, r2
	mov	r3, zero
	blt	r7, zero, .L523
.L525:
	sll	r5, r4, r7
	mov	r4, zero
	or	r2, r4, r2
	or	r3, r5, r3
	ret
.L521:
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
	bge	r7, zero, .L525
.L523:
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
	br	.L540
.L543:
	beq	r5, zero, .L542
.L540:
	srl	r3, r4, r2
	addi	r2, r2, 1
	cmpnei	r5, r2, 32
	andi	r3, r3, 1
	beq	r3, zero, .L543
	ret
.L542:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L547
	andi	r2, r4, 1
	bne	r2, zero, .L544
	movi	r2, 1
.L546:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L546
	ret
.L547:
	mov	r2, zero
.L544:
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
	blt	r2, zero, .L553
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L553:
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
	blt	r2, zero, .L558
	movhi	r7, 32752
	movi	r6, -1
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L555:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L558:
	movi	r2, 1
	br	.L555
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
	blt	r2, zero, .L563
	movhi	r7, 32752
	movi	r6, -1
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L560:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L563:
	movi	r2, 1
	br	.L560
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
	bne	r2, zero, .L568
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L568
	blt	r16, zero, .L584
	movhi	r17, 16384
.L569:
	andi	r2, r16, 1
	beq	r2, zero, .L570
.L571:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L570:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L568
.L572:
	mov	r4, r17
	mov	r5, r17
	call	__mulsf3
	srli	r3, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r3, r3, r16
	bne	r4, zero, .L571
	srai	r16, r3, 1
	br	.L572
.L568:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L584:
	movhi	r17, 16128
	br	.L569
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
	bne	r2, zero, .L586
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
	beq	r2, zero, .L586
	mov	r6, zero
	blt	r16, zero, .L602
	movhi	r7, 16384
.L587:
	andi	r2, r16, 1
	beq	r2, zero, .L588
.L589:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L588:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L586
.L590:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L589
	srai	r16, r8, 1
	br	.L590
.L586:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L602:
	movhi	r7, 16352
	br	.L587
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
	bne	r2, zero, .L604
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
	beq	r2, zero, .L604
	mov	r6, zero
	blt	r16, zero, .L620
	movhi	r7, 16384
.L605:
	andi	r2, r16, 1
	beq	r2, zero, .L606
.L607:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L606:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L604
.L608:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L607
	srai	r16, r8, 1
	br	.L608
.L604:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L620:
	movhi	r7, 16352
	br	.L605
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L622
	add	r6, r5, r6
	mov	r3, r4
.L623:
	ldbu	r7, 0(r3)
	ldbu	r8, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L623
.L622:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L635
	mov	r3, r4
.L630:
	ldb	r7, 1(r3)
	addi	r3, r3, 1
	bne	r7, zero, .L630
.L641:
	beq	r6, zero, .L632
.L643:
	ldbu	r7, 0(r5)
	addi	r6, r6, -1
	addi	r5, r5, 1
	stb	r7, 0(r3)
	andi	r7, r7, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L642
	addi	r3, r3, 1
	bne	r6, zero, .L643
.L632:
	stb	zero, 0(r3)
	ret
.L642:
	ret
.L635:
	mov	r3, r4
	br	.L641
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L651
.L645:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L647
.L644:
	ret
.L647:
	addi	r2, r2, 1
	bne	r5, r2, .L645
	ret
.L651:
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L657
.L653:
	mov	r3, r5
	br	.L656
.L655:
	beq	r6, r7, .L654
.L656:
	ldb	r6, 0(r3)
	addi	r3, r3, 1
	bne	r6, zero, .L655
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L653
.L657:
	mov	r2, zero
.L654:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
.L661:
	ldb	r3, 0(r4)
	bne	r5, r3, .L660
	mov	r2, r4
.L660:
	addi	r4, r4, 1
	bne	r3, zero, .L661
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	beq	r8, zero, .L674
	mov	r2, r5
.L665:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L665
	sub	r10, r2, r5
	beq	r2, r5, .L674
	addi	r10, r10, -1
	br	.L671
.L684:
	addi	r4, r4, 1
	beq	r2, zero, .L683
.L671:
	ldbu	r3, 0(r4)
	andi	r2, r3, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r8, r2, .L684
	add	r9, r4, r10
	mov	r6, r5
	mov	r2, r4
	andi	r3, r3, 0xff
	br	.L667
.L685:
	beq	r2, r9, .L668
	addi	r2, r2, 1
	bne	r7, r3, .L668
	ldbu	r3, 0(r2)
	addi	r6, r6, 1
	beq	r3, zero, .L668
.L667:
	ldbu	r7, 0(r6)
	bne	r7, zero, .L685
.L668:
	ldbu	r2, 0(r6)
	beq	r3, r2, .L674
	addi	r4, r4, 1
	br	.L671
.L683:
	ret
.L674:
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
	blt	r2, zero, .L697
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L690
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L689
.L690:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L697:
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L690
.L689:
	xorhi	r16, r16, 32768
	br	.L690
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	beq	r7, zero, .L704
	bltu	r5, r7, .L706
	sub	r5, r5, r7
	add	r10, r4, r5
	bltu	r10, r4, .L706
	ldb	r12, 0(r6)
	addi	r7, r7, -1
.L703:
	ldbu	r3, 0(r4)
	mov	r2, r4
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, r12, .L709
.L700:
	bgeu	r10, r4, .L703
.L706:
	mov	r2, zero
	ret
.L709:
	addi	r5, r6, 1
	beq	r7, zero, .L710
	mov	r3, r4
	add	r11, r4, r7
	br	.L701
.L702:
	beq	r3, r11, .L711
.L701:
	ldbu	r9, 0(r3)
	ldbu	r8, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	beq	r9, r8, .L702
	br	.L700
.L711:
	ret
.L704:
	mov	r2, r4
	ret
.L710:
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
	beq	r6, zero, .L713
	call	memmove
.L713:
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
	blt	r2, zero, .L741
	movhi	r7, 16368
	mov	r4, r18
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L742
	mov	r20, zero
.L721:
	mov	r17, zero
.L727:
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
	bge	r2, zero, .L727
.L728:
	stw	r17, 0(r19)
	beq	r20, zero, .L734
	xorhi	r3, r16, 32768
.L718:
	mov	r2, r18
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L742:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r18
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L724
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r16
	call	__nedf2
	bne	r2, zero, .L733
.L724:
	stw	zero, 0(r19)
	mov	r3, r16
	br	.L718
.L741:
	movhi	r7, 49136
	mov	r4, r18
	mov	r5, r16
	xorhi	r17, r16, 32768
	call	__ledf2
	bgt	r2, zero, .L743
	mov	r16, r17
	movi	r20, 1
	br	.L721
.L734:
	mov	r3, r16
	br	.L718
.L743:
	mov	r6, zero
	movhi	r7, 49120
	mov	r4, r18
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L724
	movi	r20, 1
.L722:
	mov	r16, r17
	mov	r17, zero
.L729:
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
	blt	r2, zero, .L729
	br	.L728
.L733:
	mov	r17, r16
	mov	r20, zero
	br	.L722
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
	beq	r2, zero, .L748
	mov	r16, r4
	mov	r18, r5
	mov	r19, r6
	mov	r17, r7
	mov	r20, zero
	mov	r21, zero
.L747:
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
	bne	r5, zero, .L747
.L744:
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
.L748:
	mov	r20, zero
	mov	r21, zero
	br	.L744
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L753
	movi	r2, 32
	movi	r3, 1
	br	.L752
.L756:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L754
	beq	r2, zero, .L755
.L752:
	addi	r2, r2, -1
	bge	r5, zero, .L756
.L753:
	mov	r2, zero
.L758:
	bltu	r4, r5, .L757
	sub	r4, r4, r5
	or	r2, r2, r3
.L757:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L758
.L755:
	beq	r6, zero, .L751
	mov	r2, r4
.L751:
	ret
.L754:
	bne	r3, zero, .L753
	mov	r2, zero
	br	.L755
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
	beq	r3, r2, .L769
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
.L769:
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
	beq	r2, r6, .L783
.L778:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L783:
	bne	r3, r2, .L778
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L787
.L786:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L786
	ret
.L787:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	movi	r10, -8
	srli	r9, r6, 3
	and	r10, r6, r10
	bltu	r4, r5, .L790
	add	r2, r5, r6
	bgeu	r2, r4, .L803
.L790:
	beq	r9, zero, .L793
	slli	r9, r9, 3
	mov	r2, r5
	mov	r3, r4
	add	r9, r9, r5
.L794:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	addi	r2, r2, 8
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r3, r3, 8
	bne	r2, r9, .L794
.L793:
	bgeu	r10, r6, .L789
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L795:
	ldbu	r3, 0(r2)
	addi	r2, r2, 1
	addi	r4, r4, 1
	stb	r3, -1(r4)
	bne	r2, r5, .L795
	ret
.L803:
	addi	r2, r6, -1
	beq	r6, zero, .L804
.L791:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L791
.L789:
	ret
.L804:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bltu	r4, r5, .L806
	add	r2, r5, r6
	bgeu	r2, r4, .L821
.L806:
	beq	r8, zero, .L809
	add	r8, r8, r8
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r5
.L810:
	ldhu	r7, 0(r2)
	addi	r2, r2, 2
	addi	r3, r3, 2
	sth	r7, -2(r3)
	bne	r2, r8, .L810
.L809:
	andi	r2, r6, 1
	beq	r2, zero, .L805
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L821:
	addi	r2, r6, -1
	beq	r6, zero, .L822
.L807:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L807
.L805:
	ret
.L822:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	movi	r9, -4
	srli	r8, r6, 2
	and	r9, r6, r9
	bltu	r4, r5, .L824
	add	r2, r5, r6
	bgeu	r2, r4, .L837
.L824:
	beq	r8, zero, .L827
	slli	r8, r8, 2
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r5
.L828:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L828
.L827:
	bgeu	r9, r6, .L823
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L829:
	ldbu	r3, 0(r2)
	addi	r2, r2, 1
	addi	r4, r4, 1
	stb	r3, -1(r4)
	bne	r2, r5, .L829
	ret
.L837:
	addi	r2, r6, -1
	beq	r6, zero, .L838
.L825:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L825
.L823:
	ret
.L838:
	ret
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	addi	sp, sp, -12
	or	r2, r4, r5
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	cmpgeui	r2, r2, 16
	mov	r16, r4
	mov	r17, r5
	bne	r2, zero, .L841
	slli	r2, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	or	r2, r2, r5
	add	r3, r2, r3
	ldbu	r2, %lo(__divsi3_table)(r3)
.L840:
	mul	r2, r2, r17
	sub	r2, r16, r2
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L841:
	call	__divsi3
	br	.L840
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
	srai	r2, r4, 15
	bne	r2, zero, .L856
	srai	r2, r4, 14
	bne	r2, zero, .L853
	srai	r2, r4, 13
	bne	r2, zero, .L857
	srai	r2, r4, 12
	bne	r2, zero, .L858
	srai	r2, r4, 11
	bne	r2, zero, .L859
	srai	r2, r4, 10
	bne	r2, zero, .L860
	srai	r2, r4, 9
	bne	r2, zero, .L861
	srai	r2, r4, 8
	bne	r2, zero, .L862
	srai	r2, r4, 7
	bne	r2, zero, .L863
	srai	r2, r4, 6
	bne	r2, zero, .L864
	srai	r2, r4, 5
	bne	r2, zero, .L865
	srai	r2, r4, 4
	bne	r2, zero, .L866
	srai	r2, r4, 3
	bne	r2, zero, .L867
	srai	r2, r4, 2
	bne	r2, zero, .L868
	srai	r2, r4, 1
	bne	r2, zero, .L869
	movi	r2, 16
	bne	r4, zero, .L872
.L853:
	ret
.L856:
	mov	r2, zero
	ret
.L867:
	movi	r2, 12
	ret
.L872:
	movi	r2, 15
	ret
.L857:
	movi	r2, 2
	ret
.L858:
	movi	r2, 3
	ret
.L859:
	movi	r2, 4
	ret
.L860:
	movi	r2, 5
	ret
.L861:
	movi	r2, 6
	ret
.L862:
	movi	r2, 7
	ret
.L863:
	movi	r2, 8
	ret
.L864:
	movi	r2, 9
	ret
.L865:
	movi	r2, 10
	ret
.L866:
	movi	r2, 11
	ret
.L868:
	movi	r2, 13
	ret
.L869:
	movi	r2, 14
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi	r2, r4, 1
	bne	r2, zero, .L876
	andi	r2, r4, 2
	bne	r2, zero, .L877
	andi	r2, r4, 4
	bne	r2, zero, .L878
	andi	r2, r4, 8
	bne	r2, zero, .L879
	andi	r2, r4, 16
	bne	r2, zero, .L880
	andi	r2, r4, 32
	bne	r2, zero, .L881
	andi	r2, r4, 64
	bne	r2, zero, .L882
	andi	r2, r4, 128
	bne	r2, zero, .L883
	andi	r2, r4, 256
	bne	r2, zero, .L884
	andi	r2, r4, 512
	bne	r2, zero, .L885
	andi	r2, r4, 1024
	bne	r2, zero, .L886
	andi	r2, r4, 2048
	bne	r2, zero, .L887
	andi	r2, r4, 4096
	bne	r2, zero, .L888
	andi	r2, r4, 8192
	bne	r2, zero, .L889
	andi	r2, r4, 16384
	bne	r2, zero, .L890
	andi	r4, r4, 0xffff
	srai	r4, r4, 15
	movi	r2, 16
	bne	r4, zero, .L893
.L873:
	ret
.L876:
	mov	r2, zero
	ret
.L877:
	movi	r2, 1
	ret
.L888:
	movi	r2, 12
	ret
.L878:
	movi	r2, 2
	ret
.L879:
	movi	r2, 3
	ret
.L880:
	movi	r2, 4
	ret
.L881:
	movi	r2, 5
	ret
.L882:
	movi	r2, 6
	ret
.L883:
	movi	r2, 7
	ret
.L884:
	movi	r2, 8
	ret
.L885:
	movi	r2, 9
	ret
.L886:
	movi	r2, 10
	ret
.L887:
	movi	r2, 11
	ret
.L889:
	movi	r2, 13
	ret
.L890:
	movi	r2, 14
	ret
.L893:
	movi	r2, 15
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
	bge	r2, zero, .L901
	mov	r4, r16
	call	__fixsfsi
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L901:
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
	andi	r3, r4, 0xffff
	srai	r2, r3, 1
	srai	r7, r3, 2
	srai	r6, r3, 3
	srai	r5, r3, 4
	andi	r4, r4, 1
	andi	r2, r2, 1
	srai	r8, r3, 5
	add	r2, r2, r4
	andi	r4, r7, 1
	add	r2, r2, r4
	srai	r7, r3, 6
	andi	r4, r6, 1
	add	r2, r2, r4
	srai	r6, r3, 7
	andi	r4, r5, 1
	add	r2, r2, r4
	srai	r5, r3, 8
	andi	r8, r8, 1
	srai	r4, r3, 9
	add	r2, r2, r8
	andi	r7, r7, 1
	srai	r8, r3, 10
	add	r2, r2, r7
	andi	r6, r6, 1
	srai	r7, r3, 11
	add	r2, r2, r6
	andi	r5, r5, 1
	srai	r6, r3, 12
	add	r2, r2, r5
	andi	r4, r4, 1
	srai	r5, r3, 13
	add	r2, r2, r4
	andi	r8, r8, 1
	srai	r4, r3, 14
	add	r2, r2, r8
	andi	r7, r7, 1
	add	r2, r2, r7
	andi	r6, r6, 1
	srai	r3, r3, 15
	add	r2, r2, r6
	andi	r5, r5, 1
	add	r2, r2, r5
	andi	r4, r4, 1
	add	r2, r2, r4
	add	r2, r2, r3
	andi	r2, r2, 1
	ret
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	andi	r3, r4, 0xffff
	srai	r2, r3, 1
	srai	r7, r3, 2
	srai	r6, r3, 3
	srai	r5, r3, 4
	andi	r4, r4, 1
	andi	r2, r2, 1
	srai	r8, r3, 5
	add	r2, r2, r4
	andi	r4, r7, 1
	add	r2, r2, r4
	srai	r7, r3, 6
	andi	r4, r6, 1
	add	r2, r2, r4
	srai	r6, r3, 7
	andi	r4, r5, 1
	add	r2, r2, r4
	srai	r5, r3, 8
	andi	r8, r8, 1
	srai	r4, r3, 9
	add	r2, r2, r8
	andi	r7, r7, 1
	srai	r8, r3, 10
	add	r2, r2, r7
	andi	r6, r6, 1
	srai	r7, r3, 11
	add	r2, r2, r6
	andi	r5, r5, 1
	srai	r6, r3, 12
	add	r2, r2, r5
	andi	r4, r4, 1
	srai	r5, r3, 13
	add	r2, r2, r4
	andi	r8, r8, 1
	srai	r4, r3, 14
	add	r2, r2, r8
	andi	r7, r7, 1
	add	r2, r2, r7
	andi	r6, r6, 1
	srai	r3, r3, 15
	add	r2, r2, r6
	andi	r5, r5, 1
	add	r2, r2, r5
	andi	r4, r4, 1
	add	r2, r2, r4
	add	r2, r2, r3
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	beq	r4, zero, .L907
.L906:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L906
	ret
.L907:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L912
	beq	r5, zero, .L913
.L911:
	andi	r3, r5, 1
	mul	r3, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r3
	bne	r5, zero, .L911
	ret
.L912:
	ret
.L913:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L917
	movi	r2, 32
	movi	r3, 1
	br	.L916
.L920:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L918
	beq	r2, zero, .L919
.L916:
	addi	r2, r2, -1
	bge	r5, zero, .L920
.L917:
	mov	r2, zero
.L922:
	bltu	r4, r5, .L921
	sub	r4, r4, r5
	or	r2, r2, r3
.L921:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L922
.L919:
	beq	r6, zero, .L915
	mov	r2, r4
.L915:
	ret
.L918:
	bne	r3, zero, .L917
	mov	r2, zero
	br	.L919
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
	blt	r2, zero, .L934
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L931:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L934:
	movi	r2, -1
	br	.L931
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
	blt	r2, zero, .L939
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L936:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L939:
	movi	r2, -1
	br	.L936
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
	blt	r5, zero, .L959
	beq	r5, zero, .L951
	mov	r8, zero
.L947:
	movi	r3, 32
	mov	r2, zero
	br	.L950
.L960:
	beq	r7, zero, .L949
.L950:
	andi	r6, r5, 1
	mul	r6, r6, r4
	srai	r5, r5, 1
	addi	r3, r3, -1
	andi	r7, r3, 0xff
	add	r2, r2, r6
	add	r4, r4, r4
	bne	r5, zero, .L960
.L949:
	beq	r8, zero, .L945
	sub	r2, zero, r2
	ret
.L951:
	mov	r2, zero
.L945:
	ret
.L959:
	sub	r5, zero, r5
	movi	r8, 1
	br	.L947
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L979
	mov	r7, zero
.L962:
	bge	r5, zero, .L963
	sub	r5, zero, r5
	xori	r7, r7, 1
.L963:
	mov	r6, r4
	movi	r3, 1
	bgeu	r5, r4, .L965
	movi	r2, 32
	movi	r3, 1
	br	.L964
.L967:
	beq	r2, zero, .L968
.L964:
	add	r5, r5, r5
	addi	r2, r2, -1
	add	r3, r3, r3
	bltu	r5, r4, .L967
.L968:
	mov	r2, zero
	beq	r3, zero, .L966
.L965:
	mov	r2, zero
.L970:
	bltu	r6, r5, .L969
	sub	r6, r6, r5
	or	r2, r2, r3
.L969:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L970
.L966:
	beq	r7, zero, .L961
	sub	r2, zero, r2
.L961:
	ret
.L979:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L962
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L998
	mov	r7, zero
.L981:
	mov	r2, r4
	bge	r5, zero, .L982
	sub	r5, zero, r5
.L982:
	movi	r3, 1
	bgeu	r5, r4, .L989
	movi	r6, 32
	movi	r3, 1
	br	.L983
.L986:
	beq	r6, zero, .L987
.L983:
	add	r5, r5, r5
	addi	r6, r6, -1
	add	r3, r3, r3
	bltu	r5, r4, .L986
.L987:
	beq	r3, zero, .L999
.L989:
	srli	r3, r3, 1
	bltu	r2, r5, .L988
	sub	r2, r2, r5
.L988:
	srli	r5, r5, 1
	bne	r3, zero, .L989
.L985:
	beq	r7, zero, .L980
	sub	r2, zero, r2
.L980:
	ret
.L998:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L981
.L999:
	mov	r2, r4
	br	.L985
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r2, r5, 0xffff
	andi	r8, r4, 0xffff
	bgeu	r2, r8, .L1113
	andi	r2, r5, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L1003
	add	r2, r5, r5
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1004
	andi	r3, r2, 65535
	xori	r3, r3, 32768
	addi	r3, r3, -32768
	blt	r3, zero, .L1005
	slli	r2, r5, 2
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1006
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1007
	slli	r2, r5, 3
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1008
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1009
	slli	r2, r5, 4
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1010
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1011
	slli	r2, r5, 5
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1012
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1013
	slli	r2, r5, 6
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1014
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1015
	slli	r2, r5, 7
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1016
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1017
	slli	r2, r5, 8
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1018
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1019
	slli	r2, r5, 9
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1020
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1021
	slli	r2, r5, 10
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1022
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1023
	slli	r2, r5, 11
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1024
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1025
	slli	r2, r5, 12
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1026
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1027
	slli	r2, r5, 13
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1028
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1029
	slli	r2, r5, 14
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1030
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1031
	slli	r5, r5, 15
	andi	r3, r5, 0xffff
	bgeu	r3, r8, .L1032
	mov	r2, r4
	bne	r3, zero, .L1114
.L1033:
	bne	r6, zero, .L1000
	mov	r2, r5
	ret
.L1000:
	ret
.L1020:
	bltu	r8, r3, .L1066
	sub	r2, r4, r2
	movi	r5, 512
	movi	r8, 512
	andi	r7, r7, 0xffff
.L1035:
	srli	r3, r8, 2
	srli	r4, r7, 2
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1036
	sub	r2, r2, r4
	or	r5, r3, r5
.L1036:
	srli	r3, r8, 3
	srli	r4, r7, 3
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1037
	sub	r2, r2, r4
	or	r5, r3, r5
.L1037:
	srli	r3, r8, 4
	srli	r4, r7, 4
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1038
	sub	r2, r2, r4
	or	r5, r3, r5
.L1038:
	srli	r3, r8, 5
	srli	r4, r7, 5
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1039
	sub	r2, r2, r4
	or	r5, r3, r5
.L1039:
	srli	r3, r8, 6
	srli	r4, r7, 6
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1040
	sub	r2, r2, r4
	or	r5, r3, r5
.L1040:
	srli	r3, r8, 7
	srli	r4, r7, 7
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1041
	sub	r2, r2, r4
	or	r5, r3, r5
.L1041:
	srli	r3, r8, 8
	srli	r4, r7, 8
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1042
	sub	r2, r2, r4
	or	r5, r3, r5
.L1042:
	srli	r3, r8, 9
	srli	r4, r7, 9
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1043
	sub	r2, r2, r4
	or	r5, r3, r5
.L1043:
	srli	r3, r8, 10
	srli	r4, r7, 10
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1044
	sub	r2, r2, r4
	or	r5, r3, r5
.L1044:
	srli	r3, r8, 11
	srli	r4, r7, 11
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1045
	sub	r2, r2, r4
	or	r5, r3, r5
.L1045:
	srli	r3, r8, 12
	srli	r4, r7, 12
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1046
	sub	r2, r2, r4
	or	r5, r3, r5
.L1046:
	srli	r3, r8, 13
	srli	r4, r7, 13
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1047
	sub	r2, r2, r4
	or	r5, r3, r5
.L1047:
	srli	r3, r8, 14
	srli	r4, r7, 14
	beq	r3, zero, .L1033
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1048
	sub	r2, r2, r4
	or	r5, r3, r5
.L1048:
	cmpnei	r8, r8, 16384
	srli	r7, r7, 15
	beq	r8, zero, .L1033
	andi	r3, r2, 0xffff
	bltu	r3, r7, .L1056
	sub	r2, r2, r7
	ori	r5, r5, 1
	br	.L1033
.L1114:
	addi	r2, r4, -32768
	movi	r3, 16384
	movi	r4, 16384
	movi	r5, -32768
	movui	r8, 32768
	movui	r7, 32768
.L1053:
	andi	r9, r2, 0xffff
	andi	r10, r3, 0xffff
	bltu	r9, r10, .L1035
	sub	r2, r2, r3
	or	r5, r5, r4
	br	.L1035
.L1056:
	mov	r2, zero
	br	.L1033
.L1113:
	beq	r2, r8, .L1054
	mov	r2, r4
	mov	r5, zero
	br	.L1033
.L1003:
	sub	r2, r4, r5
	movi	r5, 1
	br	.L1033
.L1004:
	bltu	r8, r3, .L1058
	sub	r2, r4, r2
	movi	r5, 2
	movi	r8, 2
	andi	r7, r7, 0xffff
	br	.L1035
.L1005:
	sub	r2, r4, r2
	andi	r3, r5, 32767
	movi	r4, 1
	movi	r5, 2
	movi	r8, 2
	andi	r7, r7, 0xffff
	br	.L1053
.L1006:
	bltu	r8, r3, .L1059
	sub	r2, r4, r2
	movi	r5, 4
	movi	r8, 4
	andi	r7, r7, 0xffff
	br	.L1035
.L1007:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 2
	movi	r5, 4
	movi	r8, 4
	andi	r7, r7, 0xffff
	br	.L1053
.L1008:
	bltu	r8, r3, .L1060
	sub	r2, r4, r2
	movi	r5, 8
	movi	r8, 8
	andi	r7, r7, 0xffff
	br	.L1035
.L1009:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 4
	movi	r5, 8
	movi	r8, 8
	andi	r7, r7, 0xffff
	br	.L1053
.L1010:
	bltu	r8, r3, .L1061
	sub	r2, r4, r2
	movi	r5, 16
	movi	r8, 16
	andi	r7, r7, 0xffff
	br	.L1035
.L1011:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 8
	movi	r5, 16
	movi	r8, 16
	andi	r7, r7, 0xffff
	br	.L1053
.L1012:
	bltu	r8, r3, .L1062
	sub	r2, r4, r2
	movi	r5, 32
	movi	r8, 32
	andi	r7, r7, 0xffff
	br	.L1035
.L1013:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 16
	movi	r5, 32
	movi	r8, 32
	andi	r7, r7, 0xffff
	br	.L1053
.L1014:
	bltu	r8, r3, .L1063
	sub	r2, r4, r2
	movi	r5, 64
	movi	r8, 64
	andi	r7, r7, 0xffff
	br	.L1035
.L1015:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 32
	movi	r5, 64
	movi	r8, 64
	andi	r7, r7, 0xffff
	br	.L1053
.L1016:
	bltu	r8, r3, .L1064
	sub	r2, r4, r2
	movi	r5, 128
	movi	r8, 128
	andi	r7, r7, 0xffff
	br	.L1035
.L1017:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 64
	movi	r5, 128
	movi	r8, 128
	andi	r7, r7, 0xffff
	br	.L1053
.L1019:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 128
	movi	r5, 256
	movi	r8, 256
	andi	r7, r7, 0xffff
	br	.L1053
.L1054:
	movi	r5, 1
	mov	r2, zero
	br	.L1033
.L1021:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 256
	movi	r5, 512
	movi	r8, 512
	andi	r7, r7, 0xffff
	br	.L1053
.L1058:
	movi	r8, 2
.L1052:
	andi	r8, r8, 0xffff
	srli	r5, r8, 1
	andi	r7, r7, 0xffff
	mov	r2, r4
	srli	r3, r7, 1
	mov	r4, r5
	mov	r5, zero
	br	.L1053
.L1023:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 512
	movi	r5, 1024
	movi	r8, 1024
	andi	r7, r7, 0xffff
	br	.L1053
.L1059:
	movi	r8, 4
	br	.L1052
.L1025:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 1024
	movi	r5, 2048
	movi	r8, 2048
	andi	r7, r7, 0xffff
	br	.L1053
.L1060:
	movi	r8, 8
	br	.L1052
.L1027:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 2048
	movi	r5, 4096
	movi	r8, 4096
	andi	r7, r7, 0xffff
	br	.L1053
.L1029:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 4096
	movi	r5, 8192
	movi	r8, 8192
	andi	r7, r7, 0xffff
	br	.L1053
.L1061:
	movi	r8, 16
	br	.L1052
.L1031:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 8192
	movi	r5, 16384
	movi	r8, 16384
	andi	r7, r7, 0xffff
	br	.L1053
.L1062:
	movi	r8, 32
	br	.L1052
.L1063:
	movi	r8, 64
	br	.L1052
.L1032:
	andi	r2, r4, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L1057
	movi	r7, -32768
	movi	r8, -32768
	br	.L1052
.L1064:
	movi	r8, 128
	br	.L1052
.L1018:
	bltu	r8, r3, .L1065
	sub	r2, r4, r2
	movi	r5, 256
	movi	r8, 256
	andi	r7, r7, 0xffff
	br	.L1035
.L1057:
	movi	r5, -32768
	mov	r2, zero
	movui	r8, 32768
	movui	r7, 32768
	br	.L1035
.L1065:
	movi	r8, 256
	br	.L1052
.L1028:
	bltu	r8, r3, .L1070
	sub	r2, r4, r2
	movi	r5, 8192
	movi	r8, 8192
	andi	r7, r7, 0xffff
	br	.L1035
.L1022:
	bltu	r8, r3, .L1067
	sub	r2, r4, r2
	movi	r5, 1024
	movi	r8, 1024
	andi	r7, r7, 0xffff
	br	.L1035
.L1070:
	movi	r8, 8192
	br	.L1052
.L1067:
	movi	r8, 1024
	br	.L1052
.L1066:
	movi	r8, 512
	br	.L1052
.L1026:
	bltu	r8, r3, .L1069
	sub	r2, r4, r2
	movi	r5, 4096
	movi	r8, 4096
	andi	r7, r7, 0xffff
	br	.L1035
.L1024:
	bltu	r8, r3, .L1068
	sub	r2, r4, r2
	movi	r5, 2048
	movi	r8, 2048
	andi	r7, r7, 0xffff
	br	.L1035
.L1030:
	bltu	r8, r3, .L1071
	sub	r2, r4, r2
	movi	r5, 16384
	movi	r8, 16384
	andi	r7, r7, 0xffff
	br	.L1035
.L1069:
	movi	r8, 4096
	br	.L1052
.L1068:
	movi	r8, 2048
	br	.L1052
.L1071:
	movi	r8, 16384
	br	.L1052
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L1117
	movi	r2, 32
	movi	r3, 1
	br	.L1116
.L1120:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L1118
	beq	r2, zero, .L1119
.L1116:
	addi	r2, r2, -1
	bge	r5, zero, .L1120
.L1117:
	mov	r2, zero
.L1122:
	bltu	r4, r5, .L1121
	sub	r4, r4, r5
	or	r2, r2, r3
.L1121:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L1122
.L1119:
	beq	r6, zero, .L1115
	mov	r2, r4
.L1115:
	ret
.L1118:
	bne	r3, zero, .L1117
	mov	r2, zero
	br	.L1119
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1132
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L1132:
	beq	r6, zero, .L1135
	movi	r2, 32
	sub	r2, r2, r6
	srl	r2, r4, r2
	sll	r3, r5, r6
	sll	r4, r4, r6
	or	r3, r2, r3
	mov	r2, r4
	ret
.L1135:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1137
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L1137:
	beq	r6, zero, .L1140
	movi	r7, 32
	sub	r7, r7, r6
	sll	r7, r5, r7
	srl	r2, r4, r6
	sra	r3, r5, r6
	or	r2, r7, r2
	ret
.L1140:
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
	bne	r6, zero, .L1144
	sub	r2, r2, r3
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L1144:
	add	r4, r4, r5
	mov	r2, zero
	add	r2, r2, r4
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1150
	blt	r7, r5, .L1151
	bltu	r4, r6, .L1150
	bltu	r6, r4, .L1151
	movi	r2, 1
	ret
.L1150:
	mov	r2, zero
	ret
.L1151:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1156
	blt	r7, r5, .L1155
	bltu	r4, r6, .L1156
	cmpltu	r2, r6, r4
	ret
.L1156:
	movi	r2, -1
	ret
.L1155:
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
	beq	r2, zero, .L1159
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1159:
	beq	r6, zero, .L1162
	movi	r3, 32
	sub	r3, r3, r6
	sll	r3, r5, r3
	srl	r2, r4, r6
	srl	r5, r5, r6
	or	r2, r3, r2
	mov	r3, r5
	ret
.L1162:
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
	beq	r2, zero, .L1172
.L1174:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r7, 0(sp)
	ldw	r6, 4(sp)
	mov	r18, r2
	mov	r17, r3
.L1172:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L1173
.L1175:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L1174
	srai	r16, r8, 1
	br	.L1175
.L1173:
	bge	r19, zero, .L1171
	mov	r6, r18
	mov	r7, r17
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r18, r2
	mov	r17, r3
.L1171:
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
	beq	r2, zero, .L1180
.L1182:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L1180:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L1181
.L1183:
	mov	r4, r17
	mov	r5, r17
	call	__mulsf3
	srli	r3, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r3, r3, r16
	bne	r4, zero, .L1182
	srai	r16, r3, 1
	br	.L1183
.L1181:
	bge	r19, zero, .L1179
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
.L1179:
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
	bltu	r5, r7, .L1191
	bltu	r7, r5, .L1192
	bltu	r4, r6, .L1191
	bltu	r6, r4, .L1192
	movi	r2, 1
	ret
.L1191:
	mov	r2, zero
	ret
.L1192:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1197
	bltu	r7, r5, .L1196
	bltu	r4, r6, .L1197
	cmpltu	r2, r6, r4
	ret
.L1197:
	movi	r2, -1
	ret
.L1196:
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
