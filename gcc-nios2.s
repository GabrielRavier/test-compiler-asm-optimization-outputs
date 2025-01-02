	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	mov	r2, r4
	bgeu	r5, r4, .L2
	add	r5, r5, r6
	add	r15, r4, r6
	beq	r6, zero, .L3
.L4:
	ldbu	r14, -1(r5)
	addi	r15, r15, -1
	addi	r5, r5, -1
	stb	r14, 0(r15)
	bne	r2, r15, .L4
	ret
.L2:
	bne	r4, r5, .L35
.L3:
	ret
.L35:
	beq	r6, zero, .L3
	addi	r3, r6, -1
	cmpltui	r7, r3, 7
	addi	r13, r5, 1
	bne	r7, zero, .L5
	or	r4, r5, r4
	andi	r8, r4, 3
	addi	r13, r5, 1
	bne	r8, zero, .L5
	sub	r9, r2, r13
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L5
	srli	r11, r6, 2
	mov	r15, r2
	slli	r12, r11, 2
	add	r13, r5, r12
.L6:
	ldw	r14, 0(r5)
	addi	r5, r5, 4
	addi	r15, r15, 4
	stw	r14, -4(r15)
	bne	r13, r5, .L6
	add	r5, r2, r12
	sub	r3, r6, r12
	beq	r6, r12, .L3
	ldbu	r6, 0(r13)
	cmpeqi	r7, r3, 1
	stb	r6, 0(r5)
	bne	r7, zero, .L3
	ldbu	r4, 1(r13)
	cmpeqi	r8, r3, 2
	stb	r4, 1(r5)
	bne	r8, zero, .L3
	ldbu	r9, 2(r13)
	stb	r9, 2(r5)
	ret
.L5:
	add	r10, r2, r6
	mov	r12, r2
.L9:
	ldbu	r11, -1(r13)
	addi	r12, r12, 1
	addi	r13, r13, 1
	stb	r11, -1(r12)
	bne	r12, r10, .L9
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	andi	r6, r6, 0xff
	bne	r7, zero, .L37
	br	.L39
.L40:
	addi	r4, r4, 1
	beq	r7, zero, .L39
.L37:
	ldbu	r3, 0(r5)
	addi	r7, r7, -1
	addi	r5, r5, 1
	stb	r3, 0(r4)
	andi	r2, r3, 0xff
	bne	r2, r6, .L40
	addi	r2, r4, 1
	ret
.L39:
	mov	r2, zero
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	andi	r5, r5, 0xff
	bne	r6, zero, .L48
	br	.L51
.L50:
	addi	r4, r4, 1
	beq	r6, zero, .L51
.L48:
	ldbu	r2, 0(r4)
	addi	r6, r6, -1
	bne	r2, r5, .L50
	mov	r2, r4
	ret
.L51:
	mov	r2, zero
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	beq	r6, zero, .L60
.L69:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 1
	bne	r2, r3, .L68
	addi	r5, r5, 1
	bne	r6, zero, .L69
.L60:
	mov	r2, zero
	ret
.L68:
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
	beq	r6, zero, .L71
	call	memcpy
.L71:
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
	add	r7, r4, r6
	andi	r5, r5, 0xff
	addi	r4, r4, -1
	br	.L77
.L79:
	ldbu	r3, 0(r2)
	addi	r7, r7, -1
	beq	r3, r5, .L76
.L77:
	mov	r2, r7
	bne	r7, r4, .L79
	mov	r2, zero
.L76:
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
	beq	r6, zero, .L83
	andi	r5, r5, 0xff
	call	memset
.L83:
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
	andi	r4, r3, 255
	xori	r6, r4, 128
	addi	r7, r6, -128
	beq	r7, zero, .L86
.L87:
	ldbu	r8, 1(r5)
	addi	r2, r2, 1
	addi	r5, r5, 1
	andi	r9, r8, 255
	xori	r10, r9, 128
	addi	r11, r10, -128
	stb	r8, 0(r2)
	bne	r11, zero, .L87
.L86:
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	ldbu	r8, 0(r4)
	mov	r2, r4
	andi	r5, r5, 0xff
	andi	r4, r8, 255
	xori	r6, r4, 128
	addi	r7, r6, -128
	bne	r7, zero, .L93
	ret
.L95:
	ldbu	r8, 1(r2)
	addi	r2, r2, 1
	andi	r9, r8, 255
	xori	r10, r9, 128
	addi	r11, r10, -128
	beq	r11, zero, .L92
.L93:
	andi	r3, r8, 0xff
	bne	r3, r5, .L95
.L92:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
	br	.L102
.L105:
	addi	r2, r2, 1
	beq	r3, zero, .L104
.L102:
	ldb	r3, 0(r2)
	bne	r3, r5, .L105
	ret
.L104:
	mov	r2, zero
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L109:
	ldbu	r2, 0(r4)
	ldbu	r6, 0(r5)
	andi	r3, r2, 255
	andi	r9, r6, 255
	xori	r7, r3, 128
	xori	r10, r9, 128
	addi	r8, r7, -128
	addi	r11, r10, -128
	bne	r8, r11, .L116
	addi	r4, r4, 1
	addi	r5, r5, 1
	bne	r8, zero, .L109
	mov	r4, zero
.L108:
	andi	r5, r6, 0xff
	sub	r2, r4, r5
	ret
.L116:
	andi	r4, r2, 0xff
	br	.L108
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L120
	mov	r5, r4
.L119:
	ldb	r3, 1(r5)
	addi	r5, r5, 1
	bne	r3, zero, .L119
	sub	r2, r5, r4
	ret
.L120:
	mov	r2, zero
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L130
	ldbu	r2, 0(r4)
	beq	r2, zero, .L132
	addi	r6, r6, -1
	add	r8, r4, r6
	br	.L126
.L134:
	beq	r4, r8, .L125
	addi	r4, r4, 1
	bne	r3, r2, .L125
	ldbu	r2, 0(r4)
	beq	r2, zero, .L133
	mov	r5, r7
.L126:
	ldbu	r3, 0(r5)
	addi	r7, r5, 1
	bne	r3, zero, .L134
.L125:
	sub	r2, r2, r3
	ret
.L130:
	mov	r2, zero
	ret
.L133:
	ldbu	r3, 1(r5)
	sub	r2, r2, r3
	ret
.L132:
	ldbu	r3, 0(r5)
	br	.L125
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L135
	srli	r6, r6, 1
	add	r3, r6, r6
	add	r7, r4, r3
.L137:
	ldbu	r8, 1(r4)
	ldbu	r9, 0(r4)
	addi	r4, r4, 2
	stb	r8, 0(r5)
	stb	r9, 1(r5)
	addi	r5, r5, 2
	bne	r4, r7, .L137
.L135:
	ret
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
	ori	r2, r4, 32
	addi	r3, r2, -97
	cmpltui	r2, r3, 26
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
	bne	r2, zero, .L143
	cmpeqi	r2, r4, 9
	ret
.L143:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L146
	cmpeqi	r2, r4, 127
	ret
.L146:
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
	bne	r2, zero, .L153
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
	ret
.L153:
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
	bne	r2, zero, .L159
	addi	r3, r4, -127
	cmpltui	r5, r3, 33
	beq	r5, zero, .L160
.L159:
	movi	r2, 1
	ret
.L160:
	addi	r6, r4, -8232
	cmpltui	r7, r6, 2
	bne	r7, zero, .L159
	movhi	r8, 65535
	addi	r9, r8, 7
	add	r4, r4, r9
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
	beq	r2, zero, .L169
	cmpltui	r3, r4, 8232
	bne	r3, zero, .L167
	addi	r5, r4, -8234
	cmpltui	r6, r5, 47062
	bne	r6, zero, .L167
	movhi	r7, 65535
	addi	r8, r7, 8192
	add	r9, r4, r8
	cmpltui	r10, r9, 8185
	bne	r10, zero, .L167
	movhi	r11, 65535
	addi	r12, r11, 4
	movhi	r13, 16
	add	r14, r4, r12
	addi	r15, r13, 3
	bltu	r15, r14, .L168
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L167:
	movi	r2, 1
	ret
.L169:
	addi	r3, r4, 1
	andi	r5, r3, 127
	cmpgeui	r2, r5, 33
	ret
.L168:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r3, r2, 10
	bne	r3, zero, .L172
	ori	r4, r4, 32
	addi	r5, r4, -97
	cmpltui	r2, r5, 6
	ret
.L172:
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
	bne	r2, zero, .L177
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L178
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	bgt	r2, zero, .L183
	mov	r2, zero
	mov	r3, zero
.L174:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L183:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
	br	.L174
.L177:
	mov	r2, r17
	mov	r3, r16
	br	.L174
.L178:
	mov	r2, r19
	mov	r3, r18
	br	.L174
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
	bne	r2, zero, .L187
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L188
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	bgt	r2, zero, .L193
	mov	r2, zero
.L184:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L193:
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
	br	.L184
.L187:
	mov	r2, r16
	br	.L184
.L188:
	mov	r2, r17
	br	.L184
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
	bne	r2, zero, .L202
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L201
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L196
	bne	r2, zero, .L202
.L201:
	mov	r2, r19
	mov	r3, r18
	br	.L194
.L196:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L202
	mov	r17, r19
	mov	r16, r18
.L202:
	mov	r2, r17
	mov	r3, r16
.L194:
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
	bne	r2, zero, .L214
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L213
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L208
	beq	r2, zero, .L213
.L214:
	mov	r2, r17
	br	.L206
.L208:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	blt	r2, zero, .L218
.L213:
	mov	r2, r16
.L206:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L218:
	mov	r16, r17
	br	.L213
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
	bne	r2, zero, .L227
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L226
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L221
	bne	r2, zero, .L227
.L226:
	mov	r2, r19
	mov	r3, r18
	br	.L219
.L221:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L227
	mov	r17, r19
	mov	r16, r18
.L227:
	mov	r2, r17
	mov	r3, r16
.L219:
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
	bne	r2, zero, .L237
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L239
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L233
	bne	r2, zero, .L239
.L237:
	mov	r2, r18
	mov	r3, r19
	br	.L231
.L233:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L239
	mov	r17, r18
	mov	r16, r19
.L239:
	mov	r2, r17
	mov	r3, r16
.L231:
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
	bne	r2, zero, .L249
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L251
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L245
	beq	r2, zero, .L249
.L251:
	mov	r2, r17
	br	.L243
.L245:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	blt	r2, zero, .L255
.L249:
	mov	r2, r16
.L243:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L255:
	mov	r16, r17
	br	.L249
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
	bne	r2, zero, .L262
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L264
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L258
	bne	r2, zero, .L264
.L262:
	mov	r2, r18
	mov	r3, r19
	br	.L256
.L258:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L264
	mov	r17, r18
	mov	r16, r19
.L264:
	mov	r2, r17
	mov	r3, r16
.L256:
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
	beq	r4, zero, .L269
.L270:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r6, r5, r2
	ldbu	r7, %lo(digits)(r6)
	srli	r4, r4, 6
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r4, zero, .L270
.L269:
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
	add	r3, r2, r3
	srli	r2, r3, 1
	stw	r4, %gprel(seed)(gp)
	stw	r3, %gprel(seed+4)(gp)
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	beq	r5, zero, .L282
	ldw	r2, 0(r5)
	stw	r5, 4(r4)
	stw	r2, 0(r4)
	stw	r4, 0(r5)
	ldw	r3, 0(r4)
	beq	r3, zero, .L276
	stw	r4, 4(r3)
.L276:
	ret
.L282:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L284
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L284:
	ldw	r4, 4(r4)
	beq	r4, zero, .L283
	stw	r2, 0(r4)
.L283:
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
	beq	r17, zero, .L293
	mov	r21, r5
	mov	fp, zero
	br	.L295
.L308:
	add	r21, r21, r16
	beq	r17, fp, .L293
.L295:
	mov	r5, r21
	mov	r4, r18
	callr	r20
	mov	r19, r21
	addi	fp, fp, 1
	bne	r2, zero, .L308
.L292:
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
.L293:
	ldw	r2, 4(sp)
	mul	r19, r16, r17
	ldw	r4, 0(sp)
	addi	r3, r17, 1
	stw	r3, 0(r2)
	add	r19, r4, r19
	beq	r16, zero, .L292
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L292
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
	beq	r19, zero, .L310
	mov	r18, r4
	mov	r21, r7
	mov	r16, r5
	mov	r17, zero
	br	.L312
.L321:
	add	r16, r16, r21
	beq	r19, r17, .L310
.L312:
	mov	r5, r16
	mov	r4, r18
	callr	r20
	mov	fp, r16
	addi	r17, r17, 1
	bne	r2, zero, .L321
.L309:
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
.L310:
	mov	fp, zero
	br	.L309
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L323
	sub	r2, zero, r4
.L323:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
.L331:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L325
	bne	r6, zero, .L325
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L326
	cmpeqi	r8, r3, 45
	beq	r8, zero, .L346
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r10, r3, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L336
	movi	r13, 1
.L329:
	mov	r2, zero
.L333:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L333
	bne	r13, zero, .L324
	sub	r2, r14, r15
	ret
.L325:
	addi	r4, r4, 1
	br	.L331
.L346:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bne	r2, zero, .L329
	ret
.L336:
	mov	r2, zero
.L324:
	ret
.L326:
	ldb	r3, 1(r4)
	mov	r13, zero
	addi	r4, r4, 1
	addi	r9, r3, -48
	cmpltui	r2, r9, 10
	bne	r2, zero, .L329
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
.L352:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L348
	bne	r6, zero, .L348
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L349
	cmpeqi	r10, r3, 45
	beq	r10, zero, .L369
	ldb	r3, 1(r4)
	movi	r13, 1
	addi	r4, r4, 1
	addi	r11, r3, -48
	cmpltui	r2, r11, 10
	beq	r2, zero, .L370
.L353:
	mov	r2, zero
.L356:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L356
	bne	r13, zero, .L347
	sub	r2, r14, r15
	ret
.L348:
	addi	r4, r4, 1
	br	.L352
.L369:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	beq	r2, zero, .L371
.L360:
	mov	r13, zero
	br	.L353
.L349:
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r8, r3, -48
	cmpgeui	r9, r8, 10
	beq	r9, zero, .L360
	mov	r2, zero
.L347:
	ret
.L371:
	ret
.L370:
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
.L379:
	ldb	r17, 0(r4)
	cmpeqi	r3, r17, 32
	bne	r3, zero, .L373
	addi	r2, r17, -9
	cmpltui	r5, r2, 5
	bne	r5, zero, .L373
	cmpeqi	r6, r17, 43
	bne	r6, zero, .L374
	cmpeqi	r8, r17, 45
	beq	r8, zero, .L395
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	addi	r9, r17, -48
	cmpgeui	r10, r9, 10
	bne	r10, zero, .L384
	movi	r18, 1
.L377:
	mov	r4, zero
	mov	r5, zero
.L381:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	addi	r16, r16, 1
	addi	r13, r17, -48
	ldb	r17, 0(r16)
	srai	r14, r13, 31
	sub	r4, r2, r13
	addi	r15, r17, -48
	cmpltu	r7, r2, r4
	sub	r5, r3, r14
	cmpltui	r6, r15, 10
	sub	r5, r5, r7
	bne	r6, zero, .L381
	bne	r18, zero, .L372
	sub	r4, r13, r2
	cmpltu	ra, r13, r4
	sub	r17, r14, r3
	sub	r5, r17, ra
.L372:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L373:
	addi	r4, r4, 1
	br	.L379
.L395:
	addi	r11, r17, -48
	cmpltui	r12, r11, 10
	beq	r12, zero, .L384
	mov	r16, r4
	mov	r18, zero
	br	.L377
.L374:
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	mov	r18, zero
	addi	r4, r17, -48
	cmpltui	r7, r4, 10
	bne	r7, zero, .L377
.L384:
	mov	r4, zero
	mov	r5, zero
	br	.L372
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
	beq	r6, zero, .L397
	mov	r16, r6
	mov	r20, r4
	mov	r18, r5
	mov	r19, r7
.L400:
	srli	fp, r16, 1
	mov	r4, r20
	addi	r16, r16, -1
	mul	r17, fp, r19
	add	r17, r18, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L401
	beq	r2, zero, .L396
	sub	r16, r16, fp
	add	r18, r17, r19
	bne	r16, zero, .L400
.L397:
	mov	r17, zero
.L396:
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
.L401:
	mov	r16, fp
	bne	r16, zero, .L400
	br	.L397
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi	sp, sp, -32
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	ldw	r20, 32(sp)
	mov	r16, r6
	mov	r19, r4
	mov	r17, r5
	mov	r18, r7
	beq	r6, zero, .L415
.L423:
	srai	r21, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r21, r18
	addi	r16, r16, -1
	srai	r16, r16, 1
	add	fp, r17, fp
	mov	r5, fp
	callr	r20
	beq	r2, zero, .L410
	bge	zero, r2, .L413
	add	r17, fp, r18
	bne	r16, zero, .L423
.L415:
	mov	fp, zero
.L410:
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
.L413:
	beq	r21, zero, .L415
	mov	r16, r21
	br	.L423
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
	bne	r2, zero, .L428
	slli	r4, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	cmpgeui	r7, r18, 16
	or	r5, r4, r5
	add	r6, r5, r3
	ldbu	r19, %lo(__divsi3_table)(r6)
	bne	r7, zero, .L430
.L432:
	slli	r8, r16, 4
	movhi	r9, %hiadj(__divsi3_table)
	or	r10, r8, r17
	add	r11, r10, r9
	ldbu	r12, %lo(__divsi3_table)(r11)
.L429:
	mul	r13, r12, r17
	mov	r2, r19
	sub	r3, r16, r13
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L428:
	call	__divsi3
	cmpgeui	r7, r18, 16
	mov	r19, r2
	beq	r7, zero, .L432
.L430:
	mov	r5, r17
	mov	r4, r16
	call	__divsi3
	mov	r12, r2
	br	.L429
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L434
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L434:
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
	bge	r4, zero, .L439
	sub	r2, zero, r4
.L439:
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
	bne	r2, zero, .L442
	slli	r4, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	cmpgeui	r7, r18, 16
	or	r5, r4, r5
	add	r6, r5, r3
	ldbu	r19, %lo(__divsi3_table)(r6)
	bne	r7, zero, .L444
.L446:
	slli	r8, r16, 4
	movhi	r9, %hiadj(__divsi3_table)
	or	r10, r8, r17
	add	r11, r10, r9
	ldbu	r12, %lo(__divsi3_table)(r11)
.L443:
	mul	r13, r12, r17
	mov	r2, r19
	sub	r3, r16, r13
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L442:
	call	__divsi3
	cmpgeui	r7, r18, 16
	mov	r19, r2
	beq	r7, zero, .L446
.L444:
	mov	r5, r17
	mov	r4, r16
	call	__divsi3
	mov	r12, r2
	br	.L443
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L448
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L448:
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
	beq	r2, zero, .L460
.L453:
	beq	r5, r2, .L461
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L453
	mov	r2, zero
	ret
.L461:
	mov	r2, r4
	ret
.L460:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L465:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L464
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r3, zero, .L465
.L464:
	blt	r3, r2, .L467
	cmplt	r2, r2, r3
	ret
.L467:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L472:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L472
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L477
	mov	r5, r4
.L476:
	ldw	r3, 4(r5)
	addi	r5, r5, 4
	bne	r3, zero, .L476
	sub	r4, r5, r4
	srai	r2, r4, 2
	ret
.L477:
	mov	r2, zero
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L485
.L491:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	addi	r6, r6, -1
	bne	r2, r3, .L482
	beq	r2, zero, .L482
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L491
.L485:
	mov	r2, zero
	ret
.L482:
	ldw	r4, 0(r4)
	ldw	r5, 0(r5)
	blt	r4, r5, .L492
	cmplt	r2, r5, r4
	ret
.L492:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L497
.L504:
	ldw	r2, 0(r4)
	addi	r6, r6, -1
	beq	r2, r5, .L503
	addi	r4, r4, 4
	bne	r6, zero, .L504
.L497:
	mov	r2, zero
	ret
.L503:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L511
.L520:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r3, r2, .L519
	addi	r5, r5, 4
	bne	r6, zero, .L520
.L511:
	mov	r2, zero
	ret
.L519:
	blt	r3, r2, .L521
	cmplt	r2, r2, r3
	ret
.L521:
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
	beq	r6, zero, .L523
	slli	r6, r6, 2
	call	memcpy
.L523:
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
	beq	r4, r5, .L536
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L543
	beq	r6, zero, .L536
	slli	r10, r3, 2
	add	r14, r5, r10
	add	r13, r2, r10
.L533:
	ldw	r11, 0(r14)
	mov	r12, r14
	addi	r13, r13, -4
	stw	r11, 4(r13)
	addi	r14, r14, -4
	bne	r5, r12, .L533
	ret
.L543:
	mov	r9, r2
	beq	r6, zero, .L536
.L531:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r9)
	addi	r5, r5, 4
	addi	r9, r9, 4
	bne	r6, zero, .L531
.L536:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L545
	mov	r6, r4
.L546:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L546
.L545:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L552
	add	r13, r4, r6
	add	r14, r5, r6
	beq	r6, zero, .L551
.L554:
	ldbu	r12, -1(r13)
	addi	r13, r13, -1
	addi	r14, r14, -1
	stb	r12, 0(r14)
	bne	r4, r13, .L554
	ret
.L552:
	bne	r4, r5, .L585
.L551:
	ret
.L585:
	beq	r6, zero, .L551
	addi	r2, r6, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L584
	or	r7, r5, r4
	andi	r8, r7, 3
	bne	r8, zero, .L584
	addi	r11, r4, 1
	sub	r9, r5, r11
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L555
	srli	r11, r6, 2
	mov	r15, r5
	slli	r12, r11, 2
	add	r13, r4, r12
.L556:
	ldw	r14, 0(r4)
	addi	r4, r4, 4
	addi	r15, r15, 4
	stw	r14, -4(r15)
	bne	r13, r4, .L556
	add	r5, r5, r12
	sub	r2, r6, r12
	beq	r6, r12, .L551
	ldbu	r4, 0(r13)
	cmpeqi	r6, r2, 1
	stb	r4, 0(r5)
	bne	r6, zero, .L551
	ldbu	r3, 1(r13)
	cmpeqi	r7, r2, 2
	stb	r3, 1(r5)
	bne	r7, zero, .L551
	ldbu	r8, 2(r13)
	stb	r8, 2(r5)
	ret
.L584:
	addi	r11, r4, 1
.L555:
	add	r9, r4, r6
	br	.L559
.L586:
	addi	r11, r11, 1
.L559:
	ldbu	r10, -1(r11)
	addi	r5, r5, 1
	stb	r10, -1(r5)
	bne	r11, r9, .L586
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L588
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	sll	r12, r4, r3
	mov	r11, zero
	blt	r14, zero, .L590
.L592:
	srl	r8, r5, r14
	mov	r5, zero
	or	r3, r5, r12
	or	r2, r8, r11
	ret
.L588:
	srli	r7, r4, 1
	movi	r2, 31
	sub	r8, r2, r6
	sll	r10, r5, r6
	srl	r9, r7, r8
	sll	r11, r4, r6
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	or	r12, r9, r10
	bge	r14, zero, .L592
.L590:
	slli	r15, r5, 1
	movi	r3, 31
	sub	r7, r3, r13
	sll	r2, r15, r7
	srl	r4, r4, r13
	srl	r5, r5, r13
	or	r8, r2, r4
	or	r2, r8, r11
	or	r3, r5, r12
	ret
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r2, r6, -32
	blt	r2, zero, .L594
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	srl	r12, r5, r2
	mov	r11, zero
	blt	r14, zero, .L596
.L598:
	sll	r8, r4, r14
	mov	r4, zero
	or	r2, r4, r12
	or	r3, r8, r11
	ret
.L594:
	slli	r7, r5, 1
	movi	r3, 31
	sub	r8, r3, r6
	srl	r10, r4, r6
	sll	r9, r7, r8
	srl	r11, r5, r6
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	or	r12, r9, r10
	bge	r14, zero, .L598
.L596:
	srli	r15, r4, 1
	movi	r2, 31
	sub	r7, r2, r13
	srl	r3, r15, r7
	sll	r5, r5, r13
	sll	r4, r4, r13
	or	r8, r3, r5
	or	r2, r4, r12
	or	r3, r8, r11
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
	andi	r6, r3, 15
	sll	r4, r4, r5
	srl	r7, r2, r6
	or	r2, r4, r7
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	andi	r5, r5, 15
	sub	r3, zero, r5
	andi	r2, r4, 0xffff
	andi	r6, r3, 15
	srl	r7, r2, r5
	sll	r4, r4, r6
	or	r2, r7, r4
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	andi	r5, r5, 7
	sub	r3, zero, r5
	andi	r2, r4, 0xff
	andi	r6, r3, 7
	sll	r4, r4, r5
	srl	r7, r2, r6
	or	r2, r4, r7
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	andi	r5, r5, 7
	sub	r3, zero, r5
	andi	r2, r4, 0xff
	andi	r6, r3, 7
	srl	r7, r2, r5
	sll	r4, r4, r6
	or	r2, r7, r4
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	andi	r2, r4, 0xffff
	srli	r3, r2, 8
	slli	r4, r4, 8
	or	r2, r3, r4
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	slli	r2, r4, 24
	srli	r5, r4, 24
	srli	r3, r4, 8
	slli	r4, r4, 8
	or	r6, r2, r5
	andi	r7, r3, 65280
	or	r8, r6, r7
	andhi	r9, r4, 255
	or	r2, r8, r9
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	srli	r8, r5, 8
	slli	r3, r4, 24
	srli	r2, r5, 24
	slli	r7, r5, 8
	srli	r6, r4, 8
	srli	r9, r4, 24
	slli	r4, r4, 8
	andi	r10, r8, 65280
	slli	r5, r5, 24
	or	r11, r2, r10
	or	r13, r3, r9
	andhi	r12, r7, 255
	andi	r14, r6, 65280
	or	r15, r11, r12
	or	r8, r13, r14
	andhi	r3, r4, 255
	or	r2, r15, r5
	or	r3, r8, r3
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	mov	r2, zero
	br	.L613
.L616:
	beq	r5, zero, .L615
.L613:
	srl	r3, r4, r2
	addi	r2, r2, 1
	cmpnei	r5, r2, 32
	andi	r6, r3, 1
	beq	r6, zero, .L616
	ret
.L615:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L620
	andi	r2, r4, 1
	bne	r2, zero, .L617
	movi	r2, 1
.L619:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L619
	ret
.L620:
	mov	r2, zero
.L617:
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
	blt	r2, zero, .L626
	movhi	r2, 32640
	addi	r5, r2, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L626:
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
	blt	r2, zero, .L631
	movhi	r2, 32752
	movi	r6, -1
	addi	r7, r2, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L628:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L631:
	movi	r2, 1
	br	.L628
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
	blt	r2, zero, .L636
	movhi	r2, 32752
	movi	r6, -1
	addi	r7, r2, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L633:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L636:
	movi	r2, 1
	br	.L633
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
	bne	r2, zero, .L641
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L641
	blt	r16, zero, .L657
	movhi	r17, 16384
.L642:
	andi	r2, r16, 1
	beq	r2, zero, .L643
.L644:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L643:
	srli	r3, r16, 31
	add	r16, r3, r16
	srai	r16, r16, 1
	beq	r16, zero, .L641
.L645:
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	srli	r5, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r6, r5, r16
	bne	r4, zero, .L644
	srai	r16, r6, 1
	br	.L645
.L641:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L657:
	movhi	r17, 16128
	br	.L642
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
	bne	r2, zero, .L659
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
	beq	r2, zero, .L659
	mov	r6, zero
	blt	r16, zero, .L675
	movhi	r7, 16384
.L660:
	andi	r2, r16, 1
	beq	r2, zero, .L661
.L662:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L661:
	srli	r3, r16, 31
	add	r4, r3, r16
	srai	r16, r4, 1
	beq	r16, zero, .L659
.L663:
	mov	r5, r7
	mov	r4, r6
	call	__muldf3
	srli	r8, r16, 31
	andi	r5, r16, 1
	mov	r6, r2
	add	r9, r8, r16
	mov	r7, r3
	bne	r5, zero, .L662
	srai	r16, r9, 1
	br	.L663
.L659:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L675:
	movhi	r7, 16352
	br	.L660
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
	bne	r2, zero, .L677
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
	beq	r2, zero, .L677
	mov	r6, zero
	blt	r16, zero, .L693
	movhi	r7, 16384
.L678:
	andi	r2, r16, 1
	beq	r2, zero, .L679
.L680:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L679:
	srli	r3, r16, 31
	add	r4, r3, r16
	srai	r16, r4, 1
	beq	r16, zero, .L677
.L681:
	mov	r5, r7
	mov	r4, r6
	call	__muldf3
	srli	r8, r16, 31
	andi	r5, r16, 1
	mov	r6, r2
	add	r9, r8, r16
	mov	r7, r3
	bne	r5, zero, .L680
	srai	r16, r9, 1
	br	.L681
.L677:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L693:
	movhi	r7, 16352
	br	.L678
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L695
	addi	r3, r6, -1
	cmpltui	r4, r3, 4
	bne	r4, zero, .L696
	or	r7, r2, r5
	andi	r8, r7, 3
	bne	r8, zero, .L696
	srli	r9, r6, 2
	mov	r14, r2
	slli	r10, r9, 2
	add	r11, r5, r10
.L697:
	ldw	r12, 0(r14)
	ldw	r13, 0(r5)
	addi	r14, r14, 4
	addi	r5, r5, 4
	xor	r15, r13, r12
	stw	r15, -4(r14)
	bne	r11, r5, .L697
	add	r3, r2, r10
	sub	r5, r6, r10
	beq	r6, r10, .L695
	ldbu	r6, 0(r3)
	ldbu	r7, 0(r11)
	cmpeqi	r4, r5, 1
	xor	r8, r6, r7
	stb	r8, 0(r3)
	bne	r4, zero, .L695
	ldbu	r9, 1(r3)
	ldbu	r10, 1(r11)
	cmpeqi	r12, r5, 2
	xor	r13, r10, r9
	stb	r13, 1(r3)
	bne	r12, zero, .L695
	ldbu	r14, 2(r3)
	ldbu	r11, 2(r11)
	xor	r15, r11, r14
	stb	r15, 2(r3)
	ret
.L696:
	add	r6, r5, r6
	mov	r3, r2
.L699:
	ldbu	r4, 0(r3)
	ldbu	r7, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r8, r7, r4
	stb	r8, -1(r3)
	bne	r6, r5, .L699
.L695:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L719
	mov	r11, r4
.L714:
	ldb	r7, 1(r11)
	addi	r11, r11, 1
	bne	r7, zero, .L714
.L727:
	beq	r6, zero, .L716
.L729:
	ldbu	r4, 0(r5)
	addi	r6, r6, -1
	addi	r5, r5, 1
	andi	r8, r4, 255
	xori	r9, r8, 128
	stb	r4, 0(r11)
	addi	r10, r9, -128
	beq	r10, zero, .L728
	addi	r11, r11, 1
	bne	r6, zero, .L729
.L716:
	stb	zero, 0(r11)
	ret
.L728:
	ret
.L719:
	mov	r11, r4
	br	.L727
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L730
.L731:
	add	r3, r4, r2
	ldb	r6, 0(r3)
	bne	r6, zero, .L733
.L730:
	ret
.L733:
	addi	r2, r2, 1
	bne	r5, r2, .L731
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L743
.L739:
	mov	r3, r5
	br	.L742
.L741:
	beq	r6, r7, .L740
.L742:
	ldb	r6, 0(r3)
	addi	r3, r3, 1
	bne	r6, zero, .L741
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L739
.L743:
	mov	r2, zero
.L740:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
.L749:
	ldb	r3, 0(r4)
	bne	r5, r3, .L748
	mov	r2, r4
.L748:
	addi	r4, r4, 1
	bne	r3, zero, .L749
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	beq	r8, zero, .L762
	mov	r2, r5
.L753:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L753
	sub	r10, r2, r5
	beq	r2, r5, .L762
	addi	r14, r10, -1
	br	.L771
.L773:
	addi	r4, r4, 1
	beq	r2, zero, .L772
.L771:
	ldbu	r7, 0(r4)
	andi	r6, r7, 255
	xori	r9, r6, 128
	addi	r2, r9, -128
	bne	r2, r8, .L773
	add	r13, r4, r14
	mov	r3, r5
	mov	r12, r4
	andi	r15, r7, 0xff
	br	.L755
.L774:
	beq	r12, r13, .L756
	addi	r12, r12, 1
	bne	r11, r15, .L756
	ldbu	r15, 0(r12)
	addi	r3, r3, 1
	beq	r15, zero, .L756
.L755:
	ldbu	r11, 0(r3)
	bne	r11, zero, .L774
.L756:
	ldbu	r2, 0(r3)
	beq	r15, r2, .L762
	addi	r4, r4, 1
	br	.L771
.L772:
	ret
.L762:
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
	blt	r2, zero, .L786
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L779
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L778
.L779:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L786:
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L779
.L778:
	xorhi	r16, r16, 32768
	br	.L779
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	mov	r2, r4
	beq	r7, zero, .L787
	bltu	r5, r7, .L798
	sub	r5, r5, r7
	add	r9, r4, r5
	bltu	r9, r4, .L798
	ldb	r12, 0(r6)
	addi	r7, r7, -1
	addi	r6, r6, 1
.L793:
	ldb	r3, 0(r2)
	addi	r10, r2, 1
	beq	r3, r12, .L803
	mov	r2, r10
.L789:
	bgeu	r9, r2, .L793
.L798:
	mov	r2, zero
.L787:
	ret
.L803:
	mov	r15, r6
	beq	r7, zero, .L787
.L792:
	mov	r14, r10
	add	r5, r10, r7
	br	.L790
.L791:
	beq	r14, r5, .L787
.L790:
	ldbu	r8, 0(r14)
	ldbu	r13, 0(r15)
	addi	r14, r14, 1
	addi	r15, r15, 1
	beq	r8, r13, .L791
	bltu	r9, r10, .L798
	ldb	r4, 0(r10)
	addi	r2, r10, 1
	bne	r12, r4, .L789
	mov	r11, r10
	mov	r15, r6
	mov	r10, r2
	mov	r2, r11
	br	.L792
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
	beq	r6, zero, .L805
	call	memmove
.L805:
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
	blt	r2, zero, .L833
	movhi	r7, 16368
	mov	r4, r18
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L834
	mov	r20, zero
.L813:
	mov	r17, zero
.L819:
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
	bge	r2, zero, .L819
.L820:
	stw	r17, 0(r19)
	beq	r20, zero, .L826
	xorhi	r3, r16, 32768
.L810:
	mov	r2, r18
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L834:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r18
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L816
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r16
	call	__nedf2
	bne	r2, zero, .L825
.L816:
	stw	zero, 0(r19)
	mov	r3, r16
	br	.L810
.L833:
	movhi	r7, 49136
	mov	r4, r18
	mov	r5, r16
	xorhi	r17, r16, 32768
	call	__ledf2
	bgt	r2, zero, .L835
	mov	r16, r17
	movi	r20, 1
	br	.L813
.L826:
	mov	r3, r16
	br	.L810
.L835:
	mov	r6, zero
	movhi	r7, 49120
	mov	r4, r18
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L816
	movi	r20, 1
.L814:
	mov	r16, r17
	mov	r17, zero
.L821:
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
	blt	r2, zero, .L821
	br	.L820
.L825:
	mov	r17, r16
	mov	r20, zero
	br	.L814
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
	beq	r2, zero, .L840
	mov	r16, r4
	mov	r18, r5
	mov	r19, r6
	mov	r17, r7
	mov	r20, zero
	mov	r21, zero
.L839:
	mov	r6, r19
	mov	r7, r17
	andi	r4, r16, 1
	mov	r5, zero
	call	__muldi3
	slli	r5, r18, 31
	srli	r16, r16, 1
	srli	r18, r18, 1
	srli	r4, r19, 31
	slli	r17, r17, 1
	add	r7, r20, r2
	or	r16, r5, r16
	cmpltu	r6, r7, r20
	add	r3, r21, r3
	or	r8, r16, r18
	slli	r19, r19, 1
	mov	r20, r7
	add	r21, r6, r3
	or	r17, r4, r17
	bne	r8, zero, .L839
.L836:
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
.L840:
	mov	r20, zero
	mov	r21, zero
	br	.L836
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L845
	movi	r2, 32
	movi	r3, 1
	br	.L844
.L848:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L846
	beq	r2, zero, .L847
.L844:
	addi	r2, r2, -1
	bge	r5, zero, .L848
.L845:
	mov	r2, zero
.L850:
	bltu	r4, r5, .L849
	sub	r4, r4, r5
	or	r2, r2, r3
.L849:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L850
.L847:
	beq	r6, zero, .L843
	mov	r2, r4
.L843:
	ret
.L846:
	bne	r3, zero, .L845
	mov	r2, zero
	br	.L847
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	andi	r3, r4, 255
	xori	r2, r3, 128
	addi	r5, r2, -128
	srai	r6, r5, 7
	xor	r4, r6, r4
	beq	r5, r6, .L861
	andi	r7, r4, 255
	xori	r8, r7, 128
	addi	r9, r8, -128
	slli	r4, r9, 8
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzsi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L861:
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
	beq	r2, r6, .L875
.L870:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L875:
	bne	r3, r2, .L870
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L879
.L878:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L878
	ret
.L879:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	movi	r10, -8
	srli	r9, r6, 3
	and	r12, r6, r10
	bltu	r4, r5, .L882
	add	r2, r5, r6
	bgeu	r2, r4, .L911
.L882:
	beq	r9, zero, .L885
	slli	r13, r9, 3
	mov	r2, r4
	mov	r9, r5
	add	r14, r13, r5
.L886:
	ldw	r15, 0(r9)
	ldw	r10, 4(r9)
	addi	r9, r9, 8
	stw	r15, 0(r2)
	stw	r10, 4(r2)
	addi	r2, r2, 8
	bne	r9, r14, .L886
	bgeu	r12, r6, .L881
	sub	r11, r6, r12
	addi	r3, r11, -1
	cmpltui	r7, r3, 7
	bne	r7, zero, .L910
	addi	r8, r12, 1
	add	r3, r4, r12
	add	r13, r5, r8
	sub	r14, r3, r13
	cmpgeui	r15, r14, 3
	add	r2, r5, r12
	beq	r15, zero, .L888
	or	r10, r2, r3
	andi	r9, r10, 3
	bne	r9, zero, .L888
	srli	r7, r11, 2
	slli	r13, r7, 2
	add	r8, r2, r13
.L889:
	ldw	r14, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r14, -4(r3)
	bne	r2, r8, .L889
	add	r12, r12, r13
	beq	r11, r13, .L881
	add	r2, r5, r12
	ldbu	r11, 0(r2)
	add	r3, r4, r12
	addi	r15, r12, 1
	stb	r11, 0(r3)
	bgeu	r15, r6, .L881
	add	r10, r5, r15
	ldbu	r9, 0(r10)
	add	r7, r4, r15
	addi	r13, r12, 2
	stb	r9, 0(r7)
	bgeu	r13, r6, .L881
	add	r5, r5, r13
	ldbu	r6, 0(r5)
	add	r4, r4, r13
	stb	r6, 0(r4)
	ret
.L911:
	addi	r8, r6, -1
	beq	r6, zero, .L881
.L883:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r11, r8, -1
	bne	r11, zero, .L883
.L881:
	ret
.L885:
	beq	r6, zero, .L881
.L910:
	add	r3, r4, r12
	add	r2, r5, r12
.L888:
	add	r8, r5, r6
.L891:
	ldbu	r14, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r14, -1(r3)
	bne	r2, r8, .L891
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r10, r6, 1
	bltu	r4, r5, .L913
	add	r2, r5, r6
	bgeu	r2, r4, .L940
.L913:
	beq	r10, zero, .L916
	addi	r11, r10, -1
	cmpltui	r12, r11, 9
	bne	r12, zero, .L917
	or	r13, r5, r4
	andi	r14, r13, 3
	bne	r14, zero, .L917
	addi	r15, r5, 2
	beq	r4, r15, .L917
	srli	r9, r6, 2
	mov	r2, r5
	mov	r3, r4
	slli	r7, r9, 2
	add	r8, r7, r5
.L918:
	ldw	r11, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r11, -4(r3)
	bne	r2, r8, .L918
	add	r12, r9, r9
	beq	r10, r12, .L916
	add	r10, r12, r12
	add	r13, r5, r10
	ldhu	r14, 0(r13)
	add	r15, r4, r10
	sth	r14, 0(r15)
.L916:
	andi	r3, r6, 1
	beq	r3, zero, .L912
.L941:
	add	r5, r5, r6
	ldbu	r12, -1(r5)
	add	r4, r4, r6
	stb	r12, -1(r4)
	ret
.L940:
	addi	r8, r6, -1
	beq	r6, zero, .L912
.L914:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r9, r8, -1
	bne	r9, zero, .L914
.L912:
	ret
.L917:
	add	r9, r10, r10
	mov	r11, r5
	mov	r2, r4
	add	r8, r9, r5
.L920:
	ldhu	r7, 0(r11)
	addi	r11, r11, 2
	addi	r2, r2, 2
	sth	r7, -2(r2)
	bne	r8, r11, .L920
	andi	r3, r6, 1
	beq	r3, zero, .L912
	br	.L941
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	movi	r9, -4
	srli	r8, r6, 2
	and	r12, r6, r9
	bltu	r4, r5, .L943
	add	r2, r5, r6
	bgeu	r2, r4, .L972
.L943:
	beq	r8, zero, .L946
	slli	r13, r8, 2
	mov	r9, r5
	mov	r8, r4
	add	r14, r13, r5
.L947:
	ldw	r15, 0(r9)
	addi	r9, r9, 4
	addi	r8, r8, 4
	stw	r15, -4(r8)
	bne	r9, r14, .L947
	bgeu	r12, r6, .L942
	sub	r11, r6, r12
	addi	r2, r11, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L971
	addi	r7, r12, 1
	add	r3, r4, r12
	add	r10, r5, r7
	sub	r13, r3, r10
	cmpgeui	r14, r13, 3
	add	r2, r5, r12
	beq	r14, zero, .L949
	or	r15, r2, r3
	andi	r9, r15, 3
	bne	r9, zero, .L949
	srli	r8, r11, 2
	slli	r10, r8, 2
	add	r13, r2, r10
.L950:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r13, .L950
	add	r12, r12, r10
	beq	r11, r10, .L942
	add	r11, r5, r12
	ldbu	r14, 0(r11)
	add	r3, r4, r12
	addi	r2, r12, 1
	stb	r14, 0(r3)
	bgeu	r2, r6, .L942
	add	r15, r5, r2
	ldbu	r8, 0(r15)
	add	r10, r4, r2
	addi	r9, r12, 2
	stb	r8, 0(r10)
	bgeu	r9, r6, .L942
	add	r5, r5, r9
	ldbu	r6, 0(r5)
	add	r4, r4, r9
	stb	r6, 0(r4)
	ret
.L972:
	addi	r10, r6, -1
	beq	r6, zero, .L942
.L944:
	add	r3, r5, r10
	ldbu	r6, 0(r3)
	add	r7, r4, r10
	addi	r10, r10, -1
	stb	r6, 0(r7)
	cmpnei	r11, r10, -1
	bne	r11, zero, .L944
.L942:
	ret
.L946:
	beq	r6, zero, .L942
.L971:
	add	r3, r4, r12
	add	r2, r5, r12
.L949:
	add	r13, r5, r6
.L952:
	ldbu	r7, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r2, r13, .L952
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
	cmpgeui	r3, r2, 16
	mov	r16, r4
	mov	r17, r5
	bne	r3, zero, .L975
	slli	r4, r4, 4
	movhi	r5, %hiadj(__divsi3_table)
	or	r6, r4, r17
	add	r7, r6, r5
	ldbu	r2, %lo(__divsi3_table)(r7)
.L974:
	mul	r8, r2, r17
	sub	r2, r16, r8
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L975:
	call	__divsi3
	br	.L974
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
	bne	r2, zero, .L990
	srai	r2, r4, 14
	bne	r2, zero, .L987
	srai	r3, r4, 13
	bne	r3, zero, .L991
	srai	r5, r4, 12
	bne	r5, zero, .L992
	srai	r6, r4, 11
	bne	r6, zero, .L993
	srai	r7, r4, 10
	bne	r7, zero, .L994
	srai	r8, r4, 9
	bne	r8, zero, .L995
	srai	r9, r4, 8
	bne	r9, zero, .L996
	srai	r10, r4, 7
	bne	r10, zero, .L997
	srai	r11, r4, 6
	bne	r11, zero, .L998
	srai	r12, r4, 5
	bne	r12, zero, .L999
	srai	r13, r4, 4
	bne	r13, zero, .L1000
	srai	r14, r4, 3
	bne	r14, zero, .L1001
	srai	r15, r4, 2
	bne	r15, zero, .L1002
	srai	r2, r4, 1
	bne	r2, zero, .L1003
	movi	r2, 16
	bne	r4, zero, .L1006
.L987:
	ret
.L990:
	mov	r2, zero
	ret
.L1001:
	movi	r2, 12
	ret
.L1006:
	movi	r2, 15
	ret
.L991:
	movi	r2, 2
	ret
.L992:
	movi	r2, 3
	ret
.L993:
	movi	r2, 4
	ret
.L994:
	movi	r2, 5
	ret
.L995:
	movi	r2, 6
	ret
.L996:
	movi	r2, 7
	ret
.L997:
	movi	r2, 8
	ret
.L998:
	movi	r2, 9
	ret
.L999:
	movi	r2, 10
	ret
.L1000:
	movi	r2, 11
	ret
.L1002:
	movi	r2, 13
	ret
.L1003:
	movi	r2, 14
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi	r2, r4, 1
	bne	r2, zero, .L1010
	andi	r3, r4, 2
	bne	r3, zero, .L1011
	andi	r5, r4, 4
	bne	r5, zero, .L1012
	andi	r6, r4, 8
	bne	r6, zero, .L1013
	andi	r7, r4, 16
	bne	r7, zero, .L1014
	andi	r8, r4, 32
	bne	r8, zero, .L1015
	andi	r9, r4, 64
	bne	r9, zero, .L1016
	andi	r10, r4, 128
	bne	r10, zero, .L1017
	andi	r11, r4, 256
	bne	r11, zero, .L1018
	andi	r12, r4, 512
	bne	r12, zero, .L1019
	andi	r13, r4, 1024
	bne	r13, zero, .L1020
	andi	r14, r4, 2048
	bne	r14, zero, .L1021
	andi	r15, r4, 4096
	bne	r15, zero, .L1022
	andi	r2, r4, 8192
	bne	r2, zero, .L1023
	andi	r3, r4, 16384
	bne	r3, zero, .L1024
	andi	r4, r4, 0xffff
	srai	r5, r4, 15
	movi	r2, 16
	bne	r5, zero, .L1027
.L1007:
	ret
.L1010:
	mov	r2, zero
	ret
.L1011:
	movi	r2, 1
	ret
.L1022:
	movi	r2, 12
	ret
.L1012:
	movi	r2, 2
	ret
.L1013:
	movi	r2, 3
	ret
.L1014:
	movi	r2, 4
	ret
.L1015:
	movi	r2, 5
	ret
.L1016:
	movi	r2, 6
	ret
.L1017:
	movi	r2, 7
	ret
.L1018:
	movi	r2, 8
	ret
.L1019:
	movi	r2, 9
	ret
.L1020:
	movi	r2, 10
	ret
.L1021:
	movi	r2, 11
	ret
.L1023:
	movi	r2, 13
	ret
.L1024:
	movi	r2, 14
	ret
.L1027:
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
	bge	r2, zero, .L1035
	mov	r4, r16
	call	__fixsfsi
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L1035:
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
	andi	r9, r2, 1
	andi	r4, r4, 1
	add	r10, r9, r4
	srai	r8, r3, 5
	andi	r11, r7, 1
	add	r13, r10, r11
	srai	r12, r3, 6
	andi	r14, r6, 1
	add	r2, r13, r14
	srai	r15, r3, 7
	andi	r7, r5, 1
	add	r6, r2, r7
	srai	r5, r3, 8
	andi	r9, r8, 1
	add	r10, r6, r9
	srai	r4, r3, 9
	andi	r11, r12, 1
	add	r12, r10, r11
	srai	r8, r3, 10
	andi	r13, r15, 1
	add	r15, r12, r13
	srai	r14, r3, 11
	andi	r2, r5, 1
	add	r7, r15, r2
	srai	r6, r3, 12
	andi	r9, r4, 1
	add	r10, r7, r9
	srai	r5, r3, 13
	andi	r11, r8, 1
	srai	r4, r3, 14
	andi	r12, r14, 1
	add	r8, r10, r11
	andi	r14, r6, 1
	add	r13, r8, r12
	andi	r2, r5, 1
	srai	r3, r3, 15
	add	r15, r13, r14
	add	r6, r15, r2
	andi	r7, r4, 1
	add	r9, r6, r7
	add	r5, r9, r3
	andi	r2, r5, 1
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
	andi	r9, r2, 1
	andi	r4, r4, 1
	add	r10, r9, r4
	srai	r8, r3, 5
	andi	r11, r7, 1
	add	r13, r10, r11
	srai	r12, r3, 6
	andi	r14, r6, 1
	add	r2, r13, r14
	srai	r15, r3, 7
	andi	r7, r5, 1
	add	r6, r2, r7
	srai	r5, r3, 8
	andi	r9, r8, 1
	add	r10, r6, r9
	srai	r4, r3, 9
	andi	r11, r12, 1
	add	r12, r10, r11
	srai	r8, r3, 10
	andi	r13, r15, 1
	add	r15, r12, r13
	srai	r14, r3, 11
	andi	r2, r5, 1
	add	r7, r15, r2
	srai	r6, r3, 12
	andi	r9, r4, 1
	add	r10, r7, r9
	srai	r5, r3, 13
	andi	r11, r8, 1
	srai	r4, r3, 14
	andi	r12, r14, 1
	add	r8, r10, r11
	andi	r14, r6, 1
	add	r13, r8, r12
	andi	r2, r5, 1
	srai	r3, r3, 15
	add	r15, r13, r14
	add	r6, r15, r2
	andi	r7, r4, 1
	add	r9, r6, r7
	add	r2, r9, r3
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	beq	r4, zero, .L1041
.L1040:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L1040
	ret
.L1041:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L1046
	beq	r5, zero, .L1047
.L1045:
	andi	r3, r5, 1
	mul	r6, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r6
	bne	r5, zero, .L1045
	ret
.L1046:
	ret
.L1047:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L1051
	movi	r2, 32
	movi	r3, 1
	br	.L1050
.L1054:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L1052
	beq	r2, zero, .L1053
.L1050:
	addi	r2, r2, -1
	bge	r5, zero, .L1054
.L1051:
	mov	r2, zero
.L1056:
	bltu	r4, r5, .L1055
	sub	r4, r4, r5
	or	r2, r2, r3
.L1055:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L1056
.L1053:
	beq	r6, zero, .L1049
	mov	r2, r4
.L1049:
	ret
.L1052:
	bne	r3, zero, .L1051
	mov	r2, zero
	br	.L1053
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
	blt	r2, zero, .L1068
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L1065:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L1068:
	movi	r2, -1
	br	.L1065
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
	blt	r2, zero, .L1073
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L1070:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L1073:
	movi	r2, -1
	br	.L1070
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
	blt	r5, zero, .L1093
	beq	r5, zero, .L1085
	mov	r8, zero
.L1081:
	movi	r3, 32
	mov	r2, zero
	br	.L1084
.L1094:
	beq	r7, zero, .L1083
.L1084:
	andi	r6, r5, 1
	mul	r9, r6, r4
	srai	r5, r5, 1
	addi	r3, r3, -1
	andi	r7, r3, 0xff
	add	r2, r2, r9
	add	r4, r4, r4
	bne	r5, zero, .L1094
.L1083:
	beq	r8, zero, .L1079
	sub	r2, zero, r2
	ret
.L1085:
	mov	r2, zero
.L1079:
	ret
.L1093:
	sub	r5, zero, r5
	movi	r8, 1
	br	.L1081
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L1113
	movi	r2, 1
	mov	r7, zero
.L1096:
	bge	r5, zero, .L1097
	sub	r5, zero, r5
	mov	r7, r2
.L1097:
	mov	r6, r4
	movi	r3, 1
	bgeu	r5, r4, .L1099
	movi	r8, 32
	movi	r3, 1
	br	.L1098
.L1101:
	beq	r8, zero, .L1102
.L1098:
	add	r5, r5, r5
	addi	r8, r8, -1
	add	r3, r3, r3
	bltu	r5, r4, .L1101
.L1102:
	mov	r2, zero
	beq	r3, zero, .L1100
.L1099:
	mov	r2, zero
.L1104:
	bltu	r6, r5, .L1103
	sub	r6, r6, r5
	or	r2, r2, r3
.L1103:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L1104
.L1100:
	beq	r7, zero, .L1095
	sub	r2, zero, r2
.L1095:
	ret
.L1113:
	sub	r4, zero, r4
	mov	r2, zero
	movi	r7, 1
	br	.L1096
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L1133
	mov	r7, zero
.L1115:
	mov	r2, r4
	bge	r5, zero, .L1116
	sub	r5, zero, r5
.L1116:
	movi	r3, 1
	bgeu	r5, r4, .L1132
	movi	r6, 32
	movi	r3, 1
	br	.L1117
.L1120:
	beq	r6, zero, .L1121
.L1117:
	add	r5, r5, r5
	addi	r6, r6, -1
	add	r3, r3, r3
	bltu	r5, r4, .L1120
.L1121:
	beq	r3, zero, .L1134
.L1132:
	srli	r3, r3, 1
	bltu	r2, r5, .L1122
	sub	r2, r2, r5
.L1122:
	srli	r5, r5, 1
	bne	r3, zero, .L1132
.L1119:
	beq	r7, zero, .L1114
	sub	r2, zero, r2
.L1114:
	ret
.L1133:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L1115
.L1134:
	mov	r2, r4
	br	.L1119
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r2, r5, 0xffff
	andi	r8, r4, 0xffff
	bgeu	r2, r8, .L1249
	andi	r3, r5, 65535
	xori	r7, r3, 32768
	addi	r9, r7, -32768
	blt	r9, zero, .L1138
	add	r10, r5, r5
	andi	r11, r10, 0xffff
	andi	r7, r10, 0xffff
	bgeu	r11, r8, .L1139
	andi	r12, r10, 65535
	xori	r13, r12, 32768
	addi	r14, r13, -32768
	blt	r14, zero, .L1140
	slli	r15, r5, 2
	andi	r2, r15, 0xffff
	andi	r7, r15, 0xffff
	bgeu	r2, r8, .L1141
	andi	r3, r15, 65535
	xori	r9, r3, 32768
	addi	r10, r9, -32768
	blt	r10, zero, .L1142
	slli	r11, r5, 3
	andi	r12, r11, 0xffff
	andi	r7, r11, 0xffff
	bgeu	r12, r8, .L1143
	andi	r13, r11, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1144
	slli	r2, r5, 4
	andi	r3, r2, 0xffff
	andi	r7, r2, 0xffff
	bgeu	r3, r8, .L1145
	andi	r9, r2, 65535
	xori	r10, r9, 32768
	addi	r11, r10, -32768
	blt	r11, zero, .L1146
	slli	r12, r5, 5
	andi	r13, r12, 0xffff
	andi	r7, r12, 0xffff
	bgeu	r13, r8, .L1147
	andi	r14, r12, 65535
	xori	r15, r14, 32768
	addi	r2, r15, -32768
	blt	r2, zero, .L1148
	slli	r10, r5, 6
	andi	r3, r10, 0xffff
	andi	r7, r10, 0xffff
	bgeu	r3, r8, .L1149
	andi	r9, r10, 65535
	xori	r11, r9, 32768
	addi	r12, r11, -32768
	blt	r12, zero, .L1150
	slli	r13, r5, 7
	andi	r14, r13, 0xffff
	andi	r7, r13, 0xffff
	bgeu	r14, r8, .L1151
	andi	r15, r13, 65535
	xori	r2, r15, 32768
	addi	r10, r2, -32768
	blt	r10, zero, .L1152
	slli	r11, r5, 8
	andi	r3, r11, 0xffff
	andi	r7, r11, 0xffff
	bgeu	r3, r8, .L1153
	andi	r9, r11, 65535
	xori	r12, r9, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1154
	slli	r14, r5, 9
	andi	r15, r14, 0xffff
	andi	r7, r14, 0xffff
	bgeu	r15, r8, .L1155
	andi	r2, r14, 65535
	xori	r10, r2, 32768
	addi	r11, r10, -32768
	blt	r11, zero, .L1156
	slli	r12, r5, 10
	andi	r3, r12, 0xffff
	andi	r7, r12, 0xffff
	bgeu	r3, r8, .L1157
	andi	r9, r12, 65535
	xori	r13, r9, 32768
	addi	r14, r13, -32768
	blt	r14, zero, .L1158
	slli	r15, r5, 11
	andi	r2, r15, 0xffff
	andi	r7, r15, 0xffff
	bgeu	r2, r8, .L1159
	andi	r10, r15, 65535
	xori	r11, r10, 32768
	addi	r12, r11, -32768
	blt	r12, zero, .L1160
	slli	r13, r5, 12
	andi	r3, r13, 0xffff
	andi	r7, r13, 0xffff
	bgeu	r3, r8, .L1161
	andi	r9, r13, 65535
	xori	r14, r9, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1162
	slli	r2, r5, 13
	andi	r10, r2, 0xffff
	andi	r7, r2, 0xffff
	bgeu	r10, r8, .L1163
	andi	r11, r2, 65535
	xori	r12, r11, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1164
	slli	r14, r5, 14
	andi	r3, r14, 0xffff
	andi	r7, r14, 0xffff
	bgeu	r3, r8, .L1165
	andi	r9, r14, 65535
	xori	r15, r9, 32768
	addi	r2, r15, -32768
	blt	r2, zero, .L1166
	slli	r5, r5, 15
	andi	r7, r5, 0xffff
	bgeu	r7, r8, .L1167
	mov	r2, r4
	bne	r7, zero, .L1250
.L1168:
	bne	r6, zero, .L1135
	mov	r2, r5
	ret
.L1135:
	ret
.L1155:
	bltu	r8, r15, .L1201
	sub	r2, r4, r14
	movi	r5, 512
	movi	r8, 512
.L1170:
	srli	r15, r8, 2
	srli	r3, r7, 2
	beq	r15, zero, .L1168
	andi	r4, r2, 0xffff
	bltu	r4, r3, .L1171
	sub	r2, r2, r3
	or	r5, r15, r5
.L1171:
	srli	r10, r8, 3
	srli	r11, r7, 3
	beq	r10, zero, .L1168
	andi	r12, r2, 0xffff
	bltu	r12, r11, .L1172
	sub	r2, r2, r11
	or	r5, r10, r5
.L1172:
	srli	r13, r8, 4
	srli	r14, r7, 4
	beq	r13, zero, .L1168
	andi	r9, r2, 0xffff
	bltu	r9, r14, .L1173
	sub	r2, r2, r14
	or	r5, r13, r5
.L1173:
	srli	r15, r8, 5
	srli	r3, r7, 5
	beq	r15, zero, .L1168
	andi	r4, r2, 0xffff
	bltu	r4, r3, .L1174
	sub	r2, r2, r3
	or	r5, r15, r5
.L1174:
	srli	r10, r8, 6
	srli	r11, r7, 6
	beq	r10, zero, .L1168
	andi	r12, r2, 0xffff
	bltu	r12, r11, .L1175
	sub	r2, r2, r11
	or	r5, r10, r5
.L1175:
	srli	r13, r8, 7
	srli	r14, r7, 7
	beq	r13, zero, .L1168
	andi	r9, r2, 0xffff
	bltu	r9, r14, .L1176
	sub	r2, r2, r14
	or	r5, r13, r5
.L1176:
	srli	r15, r8, 8
	srli	r3, r7, 8
	beq	r15, zero, .L1168
	andi	r4, r2, 0xffff
	bltu	r4, r3, .L1177
	sub	r2, r2, r3
	or	r5, r15, r5
.L1177:
	srli	r10, r8, 9
	srli	r11, r7, 9
	beq	r10, zero, .L1168
	andi	r12, r2, 0xffff
	bltu	r12, r11, .L1178
	sub	r2, r2, r11
	or	r5, r10, r5
.L1178:
	srli	r13, r8, 10
	srli	r14, r7, 10
	beq	r13, zero, .L1168
	andi	r9, r2, 0xffff
	bltu	r9, r14, .L1179
	sub	r2, r2, r14
	or	r5, r13, r5
.L1179:
	srli	r15, r8, 11
	srli	r3, r7, 11
	beq	r15, zero, .L1168
	andi	r4, r2, 0xffff
	bltu	r4, r3, .L1180
	sub	r2, r2, r3
	or	r5, r15, r5
.L1180:
	srli	r10, r8, 12
	srli	r11, r7, 12
	beq	r10, zero, .L1168
	andi	r12, r2, 0xffff
	bltu	r12, r11, .L1181
	sub	r2, r2, r11
	or	r5, r10, r5
.L1181:
	srli	r13, r8, 13
	srli	r14, r7, 13
	beq	r13, zero, .L1168
	andi	r9, r2, 0xffff
	bltu	r9, r14, .L1182
	sub	r2, r2, r14
	or	r5, r13, r5
.L1182:
	srli	r15, r8, 14
	srli	r3, r7, 14
	beq	r15, zero, .L1168
	andi	r4, r2, 0xffff
	bltu	r4, r3, .L1183
	sub	r2, r2, r3
	or	r5, r15, r5
.L1183:
	cmpnei	r8, r8, 16384
	srli	r7, r7, 15
	beq	r8, zero, .L1168
	andi	r10, r2, 0xffff
	bltu	r10, r7, .L1191
	sub	r2, r2, r7
	ori	r5, r5, 1
	br	.L1168
.L1250:
	addi	r2, r4, -32768
	movi	r3, 16384
	movi	r4, 16384
	movi	r5, -32768
	movui	r8, 32768
	movui	r7, 32768
.L1188:
	andi	r14, r2, 0xffff
	andi	r9, r3, 0xffff
	bltu	r14, r9, .L1170
	sub	r2, r2, r3
	or	r5, r5, r4
	br	.L1170
.L1191:
	mov	r2, zero
	br	.L1168
.L1249:
	beq	r2, r8, .L1189
	mov	r2, r4
	mov	r5, zero
	br	.L1168
.L1138:
	sub	r2, r4, r5
	movi	r5, 1
	br	.L1168
.L1139:
	bltu	r8, r11, .L1193
	sub	r2, r4, r10
	movi	r5, 2
	movi	r8, 2
	br	.L1170
.L1140:
	sub	r2, r4, r10
	andi	r3, r5, 32767
	movi	r4, 1
	movi	r5, 2
	movi	r8, 2
	br	.L1188
.L1141:
	bltu	r8, r2, .L1194
	sub	r2, r4, r15
	movi	r5, 4
	movi	r8, 4
	br	.L1170
.L1142:
	srli	r3, r2, 1
	movi	r5, 4
	sub	r2, r4, r15
	movi	r8, 4
	movi	r4, 2
	br	.L1188
.L1143:
	bltu	r8, r12, .L1195
	sub	r2, r4, r11
	movi	r5, 8
	movi	r8, 8
	br	.L1170
.L1144:
	sub	r2, r4, r11
	srli	r3, r12, 1
	movi	r4, 4
	movi	r5, 8
	movi	r8, 8
	br	.L1188
.L1145:
	bltu	r8, r3, .L1196
	sub	r2, r4, r2
	movi	r5, 16
	movi	r8, 16
	br	.L1170
.L1146:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 8
	movi	r5, 16
	movi	r8, 16
	br	.L1188
.L1147:
	bltu	r8, r13, .L1197
	sub	r2, r4, r12
	movi	r5, 32
	movi	r8, 32
	br	.L1170
.L1148:
	sub	r2, r4, r12
	srli	r3, r13, 1
	movi	r4, 16
	movi	r5, 32
	movi	r8, 32
	br	.L1188
.L1149:
	bltu	r8, r3, .L1198
	sub	r2, r4, r10
	movi	r5, 64
	movi	r8, 64
	br	.L1170
.L1150:
	sub	r2, r4, r10
	srli	r3, r3, 1
	movi	r4, 32
	movi	r5, 64
	movi	r8, 64
	br	.L1188
.L1151:
	bltu	r8, r14, .L1199
	sub	r2, r4, r13
	movi	r5, 128
	movi	r8, 128
	br	.L1170
.L1152:
	sub	r2, r4, r13
	srli	r3, r14, 1
	movi	r4, 64
	movi	r5, 128
	movi	r8, 128
	br	.L1188
.L1154:
	sub	r2, r4, r11
	srli	r3, r3, 1
	movi	r4, 128
	movi	r5, 256
	movi	r8, 256
	br	.L1188
.L1189:
	movi	r5, 1
	mov	r2, zero
	br	.L1168
.L1156:
	sub	r2, r4, r14
	srli	r3, r15, 1
	movi	r4, 256
	movi	r5, 512
	movi	r8, 512
	br	.L1188
.L1193:
	movi	r8, 2
.L1187:
	srli	r13, r8, 1
	mov	r2, r4
	srli	r3, r7, 1
	mov	r4, r13
	mov	r5, zero
	br	.L1188
.L1158:
	sub	r2, r4, r12
	srli	r3, r3, 1
	movi	r4, 512
	movi	r5, 1024
	movi	r8, 1024
	br	.L1188
.L1194:
	movi	r8, 4
	br	.L1187
.L1160:
	srli	r3, r2, 1
	movi	r5, 2048
	sub	r2, r4, r15
	movi	r8, 2048
	movi	r4, 1024
	br	.L1188
.L1195:
	movi	r8, 8
	br	.L1187
.L1162:
	sub	r2, r4, r13
	srli	r3, r3, 1
	movi	r4, 2048
	movi	r5, 4096
	movi	r8, 4096
	br	.L1188
.L1164:
	sub	r2, r4, r2
	srli	r3, r10, 1
	movi	r4, 4096
	movi	r5, 8192
	movi	r8, 8192
	br	.L1188
.L1196:
	movi	r8, 16
	br	.L1187
.L1166:
	sub	r2, r4, r14
	srli	r3, r3, 1
	movi	r4, 8192
	movi	r5, 16384
	movi	r8, 16384
	br	.L1188
.L1197:
	movi	r8, 32
	br	.L1187
.L1198:
	movi	r8, 64
	br	.L1187
.L1167:
	andi	r10, r4, 65535
	xori	r11, r10, 32768
	addi	r12, r11, -32768
	blt	r12, zero, .L1192
	movui	r7, 32768
	movui	r8, 32768
	br	.L1187
.L1199:
	movi	r8, 128
	br	.L1187
.L1153:
	bltu	r8, r3, .L1200
	sub	r2, r4, r11
	movi	r5, 256
	movi	r8, 256
	br	.L1170
.L1192:
	movi	r5, -32768
	mov	r2, zero
	movui	r8, 32768
	movui	r7, 32768
	br	.L1170
.L1200:
	movi	r8, 256
	br	.L1187
.L1163:
	bltu	r8, r10, .L1205
	sub	r2, r4, r2
	movi	r5, 8192
	movi	r8, 8192
	br	.L1170
.L1157:
	bltu	r8, r3, .L1202
	sub	r2, r4, r12
	movi	r5, 1024
	movi	r8, 1024
	br	.L1170
.L1205:
	movi	r8, 8192
	br	.L1187
.L1202:
	movi	r8, 1024
	br	.L1187
.L1201:
	movi	r8, 512
	br	.L1187
.L1161:
	bltu	r8, r3, .L1204
	sub	r2, r4, r13
	movi	r5, 4096
	movi	r8, 4096
	br	.L1170
.L1159:
	bltu	r8, r2, .L1203
	sub	r2, r4, r15
	movi	r5, 2048
	movi	r8, 2048
	br	.L1170
.L1165:
	bltu	r8, r3, .L1206
	sub	r2, r4, r14
	movi	r5, 16384
	movi	r8, 16384
	br	.L1170
.L1204:
	movi	r8, 4096
	br	.L1187
.L1203:
	movi	r8, 2048
	br	.L1187
.L1206:
	movi	r8, 16384
	br	.L1187
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L1253
	movi	r2, 32
	movi	r3, 1
	br	.L1252
.L1256:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L1254
	beq	r2, zero, .L1255
.L1252:
	addi	r2, r2, -1
	bge	r5, zero, .L1256
.L1253:
	mov	r2, zero
.L1258:
	bltu	r4, r5, .L1257
	sub	r4, r4, r5
	or	r2, r2, r3
.L1257:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L1258
.L1255:
	beq	r6, zero, .L1251
	mov	r2, r4
.L1251:
	ret
.L1254:
	bne	r3, zero, .L1253
	mov	r2, zero
	br	.L1255
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1268
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L1268:
	beq	r6, zero, .L1271
	movi	r3, 32
	sub	r7, r3, r6
	srl	r8, r4, r7
	sll	r5, r5, r6
	sll	r4, r4, r6
	or	r3, r8, r5
	mov	r2, r4
	ret
.L1271:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1273
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L1273:
	beq	r6, zero, .L1276
	movi	r7, 32
	sub	r3, r7, r6
	sll	r8, r5, r3
	srl	r4, r4, r6
	sra	r3, r5, r6
	or	r2, r8, r4
	ret
.L1276:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli	r8, r5, 8
	srli	r2, r5, 24
	slli	r3, r4, 24
	slli	r7, r5, 8
	srli	r6, r4, 8
	srli	r9, r4, 24
	slli	r4, r4, 8
	andi	r10, r8, 65280
	slli	r5, r5, 24
	or	r11, r2, r10
	or	r13, r3, r9
	andhi	r12, r7, 255
	andi	r14, r6, 65280
	or	r15, r11, r12
	or	r8, r13, r14
	andhi	r3, r4, 255
	or	r2, r15, r5
	or	r3, r8, r3
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli	r2, r4, 24
	slli	r5, r4, 24
	srli	r3, r4, 8
	slli	r4, r4, 8
	or	r6, r2, r5
	andi	r7, r3, 65280
	or	r8, r6, r7
	andhi	r9, r4, 255
	or	r2, r8, r9
	ret
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	movui	r5, 65535
	cmpgeu	r2, r5, r4
	slli	r8, r2, 4
	movi	r3, 16
	movi	r7, 8
	sub	r6, r3, r8
	srl	r9, r4, r6
	movi	r10, 4
	movi	r11, 2
	andi	r4, r9, 65280
	cmpeq	r12, r4, zero
	slli	r13, r12, 3
	sub	r14, r7, r13
	srl	r15, r9, r14
	add	r5, r13, r8
	andi	r2, r15, 240
	cmpeq	r8, r2, zero
	slli	r7, r8, 2
	sub	r3, r10, r7
	srl	r9, r15, r3
	add	r10, r7, r5
	andi	r6, r9, 12
	cmpeq	r4, r6, zero
	add	r12, r4, r4
	sub	r13, r11, r12
	srl	r14, r9, r13
	srli	r15, r14, 1
	andi	r5, r15, 1
	bne	r5, zero, .L1280
	sub	r11, r11, r14
	add	r2, r12, r10
	add	r2, r11, r2
	ret
.L1280:
	mov	r11, zero
	add	r2, r12, r10
	add	r2, r11, r2
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1286
	blt	r7, r5, .L1287
	bltu	r4, r6, .L1286
	bltu	r6, r4, .L1287
	movi	r2, 1
	ret
.L1286:
	mov	r2, zero
	ret
.L1287:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1292
	blt	r7, r5, .L1291
	bltu	r4, r6, .L1292
	cmpltu	r2, r6, r4
	ret
.L1292:
	movi	r2, -1
	ret
.L1291:
	movi	r2, 1
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	andi	r5, r4, 65535
	cmpeq	r2, r5, zero
	slli	r7, r2, 4
	movi	r6, 2
	srl	r3, r4, r7
	andi	r4, r3, 255
	cmpeq	r8, r4, zero
	slli	r9, r8, 3
	srl	r10, r3, r9
	add	r11, r9, r7
	andi	r12, r10, 15
	cmpeq	r13, r12, zero
	slli	r14, r13, 2
	srl	r15, r10, r14
	add	r5, r14, r11
	andi	r2, r15, 3
	cmpeq	r7, r2, zero
	add	r4, r7, r7
	srl	r3, r15, r4
	add	r8, r4, r5
	andi	r9, r3, 3
	srli	r10, r9, 1
	nor	r11, zero, r9
	andi	r12, r11, 1
	sub	r6, r6, r10
	mul	r13, r12, r6
	add	r2, r13, r8
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1295
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1295:
	beq	r6, zero, .L1298
	movi	r3, 32
	sub	r7, r3, r6
	sll	r8, r5, r7
	srl	r4, r4, r6
	srl	r5, r5, r6
	or	r2, r8, r4
	mov	r3, r5
	ret
.L1298:
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
	mul	r8, r3, r4
	mul	r9, r6, r5
	mul	r10, r4, r5
	add	r11, r8, r2
	andi	r12, r11, 0xffff
	add	r13, r9, r12
	srli	r14, r11, 16
	slli	r15, r13, 16
	srli	r6, r13, 16
	andi	r3, r7, 0xffff
	add	r7, r14, r10
	add	r2, r3, r15
	add	r3, r7, r6
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
	mul	r12, r8, r9
	mul	r13, r2, r10
	mul	r14, r9, r10
	add	r15, r12, r11
	andi	r2, r15, 0xffff
	add	r9, r13, r2
	srli	r8, r15, 16
	srli	r10, r9, 16
	mul	r4, r4, r7
	mul	r6, r6, r5
	slli	r7, r9, 16
	add	r5, r8, r14
	add	r11, r5, r10
	andi	r3, r3, 0xffff
	add	r12, r4, r11
	add	r2, r3, r7
	add	r3, r12, r6
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
	movi	r2, 27030
	xor	r6, r3, r5
	srli	r4, r6, 8
	xor	r7, r4, r6
	srli	r8, r7, 4
	xor	r9, r8, r7
	andi	r10, r9, 15
	sra	r11, r2, r10
	andi	r2, r11, 1
	ret
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	srli	r3, r4, 16
	movi	r2, 27030
	xor	r5, r3, r4
	srli	r4, r5, 8
	xor	r6, r4, r5
	srli	r7, r6, 4
	xor	r8, r7, r6
	andi	r9, r8, 15
	sra	r10, r2, r9
	andi	r2, r10, 1
	ret
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	slli	r2, r5, 31
	srli	r7, r4, 1
	srli	r6, r5, 1
	movhi	r3, 21845
	addi	r8, r3, 21845
	or	r9, r2, r7
	and	r10, r9, r8
	sub	r11, r4, r10
	and	r12, r6, r8
	cmpltu	r4, r4, r11
	sub	r5, r5, r12
	sub	r13, r5, r4
	slli	r14, r13, 30
	srli	r15, r11, 2
	srli	r7, r13, 2
	movhi	r2, 13107
	addi	r3, r2, 13107
	or	r6, r14, r15
	and	r8, r6, r3
	and	r9, r11, r3
	add	r10, r8, r9
	and	r11, r7, r3
	and	r12, r13, r3
	cmpltu	r4, r10, r8
	add	r5, r11, r12
	add	r13, r4, r5
	slli	r14, r13, 28
	srli	r15, r10, 4
	srli	r7, r13, 4
	movhi	r6, 3855
	or	r3, r14, r15
	add	r2, r3, r10
	add	r9, r7, r13
	cmpltu	r8, r2, r3
	addi	r10, r6, 3855
	add	r11, r8, r9
	and	r12, r2, r10
	and	r4, r11, r10
	add	r5, r4, r12
	srli	r13, r5, 16
	add	r14, r13, r5
	srli	r15, r14, 8
	add	r7, r15, r14
	andi	r2, r7, 127
	ret
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	srli	r2, r4, 1
	movhi	r3, 21845
	addi	r5, r3, 21845
	and	r6, r2, r5
	sub	r4, r4, r6
	srli	r7, r4, 2
	movhi	r8, 13107
	addi	r9, r8, 13107
	and	r10, r7, r9
	and	r11, r4, r9
	add	r12, r10, r11
	srli	r13, r12, 4
	movhi	r14, 3855
	addi	r15, r14, 3855
	add	r2, r13, r12
	and	r5, r2, r15
	srli	r3, r5, 16
	add	r6, r3, r5
	srli	r4, r6, 8
	add	r7, r4, r6
	andi	r2, r7, 63
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
	beq	r2, zero, .L1308
.L1310:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r7, 0(sp)
	ldw	r6, 4(sp)
	mov	r18, r2
	mov	r17, r3
.L1308:
	srli	r3, r16, 31
	add	r4, r3, r16
	srai	r16, r4, 1
	beq	r16, zero, .L1309
.L1311:
	mov	r5, r7
	mov	r4, r6
	call	__muldf3
	srli	r8, r16, 31
	andi	r5, r16, 1
	mov	r6, r2
	add	r9, r8, r16
	mov	r7, r3
	bne	r5, zero, .L1310
	srai	r16, r9, 1
	br	.L1311
.L1309:
	bge	r19, zero, .L1307
	mov	r6, r18
	mov	r7, r17
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r18, r2
	mov	r17, r3
.L1307:
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
	beq	r2, zero, .L1316
.L1318:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L1316:
	srli	r3, r16, 31
	add	r16, r3, r16
	srai	r16, r16, 1
	beq	r16, zero, .L1317
.L1319:
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	srli	r5, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r6, r5, r16
	bne	r4, zero, .L1318
	srai	r16, r6, 1
	br	.L1319
.L1317:
	bge	r19, zero, .L1315
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
.L1315:
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
	bltu	r5, r7, .L1327
	bltu	r7, r5, .L1328
	bltu	r4, r6, .L1327
	bltu	r6, r4, .L1328
	movi	r2, 1
	ret
.L1327:
	mov	r2, zero
	ret
.L1328:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1333
	bltu	r7, r5, .L1332
	bltu	r4, r6, .L1333
	cmpltu	r2, r6, r4
	ret
.L1333:
	movi	r2, -1
	ret
.L1332:
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
