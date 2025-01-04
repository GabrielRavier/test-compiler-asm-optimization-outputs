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
	custom	254, r2, r16, r17 # fsubs r2, r16, r17
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
	ldw	r3, %gprel(seed+4)(gp)
	movhi	r6, 19605
	movhi	r5, 22610
	addi	r7, r6, 32557
	addi	r8, r5, -3027
	mul	r2, r4, r7
	mul	r10, r4, r8
	mul	r9, r3, r7
	mulxuu	r11, r4, r7
	addi	r12, r2, 1
	add	r13, r9, r10
	cmpltu	r15, r12, r2
	add	r14, r13, r11
	add	r4, r15, r14
	srli	r2, r4, 1
	stw	r12, %gprel(seed)(gp)
	stw	r4, %gprel(seed+4)(gp)
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	beq	r5, zero, .L281
	ldw	r2, 0(r5)
	stw	r5, 4(r4)
	stw	r2, 0(r4)
	stw	r4, 0(r5)
	ldw	r3, 0(r4)
	beq	r3, zero, .L275
	stw	r4, 4(r3)
.L275:
	ret
.L281:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L283
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L283:
	ldw	r4, 4(r4)
	beq	r4, zero, .L282
	stw	r2, 0(r4)
.L282:
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
	beq	r17, zero, .L292
	mov	r21, r5
	mov	fp, zero
	br	.L294
.L307:
	add	r21, r21, r16
	beq	r17, fp, .L292
.L294:
	mov	r5, r21
	mov	r4, r18
	callr	r20
	mov	r19, r21
	addi	fp, fp, 1
	bne	r2, zero, .L307
.L291:
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
.L292:
	ldw	r2, 4(sp)
	mul	r19, r16, r17
	ldw	r4, 0(sp)
	addi	r3, r17, 1
	stw	r3, 0(r2)
	add	r19, r4, r19
	beq	r16, zero, .L291
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L291
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
	beq	r19, zero, .L309
	mov	r18, r4
	mov	r21, r7
	mov	r16, r5
	mov	r17, zero
	br	.L311
.L320:
	add	r16, r16, r21
	beq	r19, r17, .L309
.L311:
	mov	r5, r16
	mov	r4, r18
	callr	r20
	mov	fp, r16
	addi	r17, r17, 1
	bne	r2, zero, .L320
.L308:
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
.L309:
	mov	fp, zero
	br	.L308
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L322
	sub	r2, zero, r4
.L322:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
.L330:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L324
	bne	r6, zero, .L324
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L325
	cmpeqi	r8, r3, 45
	beq	r8, zero, .L345
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r10, r3, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L335
	movi	r13, 1
.L328:
	mov	r2, zero
.L332:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L332
	bne	r13, zero, .L323
	sub	r2, r14, r15
	ret
.L324:
	addi	r4, r4, 1
	br	.L330
.L345:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bne	r2, zero, .L328
	ret
.L335:
	mov	r2, zero
.L323:
	ret
.L325:
	ldb	r3, 1(r4)
	mov	r13, zero
	addi	r4, r4, 1
	addi	r9, r3, -48
	cmpltui	r2, r9, 10
	bne	r2, zero, .L328
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
.L351:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L347
	bne	r6, zero, .L347
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L348
	cmpeqi	r10, r3, 45
	beq	r10, zero, .L368
	ldb	r3, 1(r4)
	movi	r13, 1
	addi	r4, r4, 1
	addi	r11, r3, -48
	cmpltui	r2, r11, 10
	beq	r2, zero, .L369
.L352:
	mov	r2, zero
.L355:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L355
	bne	r13, zero, .L346
	sub	r2, r14, r15
	ret
.L347:
	addi	r4, r4, 1
	br	.L351
.L368:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	beq	r2, zero, .L370
.L359:
	mov	r13, zero
	br	.L352
.L348:
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r8, r3, -48
	cmpgeui	r9, r8, 10
	beq	r9, zero, .L359
	mov	r2, zero
.L346:
	ret
.L370:
	ret
.L369:
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
.L378:
	ldb	r5, 0(r4)
	addi	r2, r5, -9
	cmpeqi	r3, r5, 32
	cmpltui	r6, r2, 5
	bne	r3, zero, .L372
	bne	r6, zero, .L372
	cmpeqi	r7, r5, 43
	bne	r7, zero, .L373
	cmpeqi	r9, r5, 45
	beq	r9, zero, .L394
	ldb	r5, 1(r4)
	addi	r4, r4, 1
	addi	r10, r5, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L383
	movi	r13, 1
.L376:
	mov	r2, zero
	mov	r3, zero
	movi	r14, 10
.L380:
	addi	r4, r4, 1
	mulxuu	r6, r2, r14
	addi	r8, r5, -48
	muli	r15, r2, 10
	muli	r3, r3, 10
	ldb	r5, 0(r4)
	srai	r9, r8, 31
	add	r10, r3, r6
	sub	r2, r15, r8
	addi	r7, r5, -48
	cmpltu	r11, r15, r2
	sub	r12, r10, r9
	cmpltui	r6, r7, 10
	sub	r3, r12, r11
	bne	r6, zero, .L380
	bne	r13, zero, .L371
	sub	r2, r8, r15
	cmpltu	r4, r8, r2
	sub	r5, r9, r10
	sub	r3, r5, r4
	ret
.L372:
	addi	r4, r4, 1
	br	.L378
.L394:
	addi	r12, r5, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bne	r2, zero, .L376
.L393:
	mov	r3, zero
.L371:
	ret
.L373:
	ldb	r5, 1(r4)
	mov	r13, zero
	addi	r4, r4, 1
	addi	r8, r5, -48
	cmpltui	r2, r8, 10
	bne	r2, zero, .L376
	br	.L393
.L383:
	mov	r2, zero
	br	.L393
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
	beq	r6, zero, .L396
	mov	r16, r6
	mov	r20, r4
	mov	r18, r5
	mov	r19, r7
.L399:
	srli	fp, r16, 1
	mov	r4, r20
	addi	r16, r16, -1
	mul	r17, fp, r19
	add	r17, r18, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L400
	beq	r2, zero, .L395
	sub	r16, r16, fp
	add	r18, r17, r19
	bne	r16, zero, .L399
.L396:
	mov	r17, zero
.L395:
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
.L400:
	mov	r16, fp
	bne	r16, zero, .L399
	br	.L396
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
	beq	r6, zero, .L414
.L422:
	srai	r21, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r21, r18
	addi	r16, r16, -1
	srai	r16, r16, 1
	add	fp, r17, fp
	mov	r5, fp
	callr	r20
	beq	r2, zero, .L409
	bge	zero, r2, .L412
	add	r17, fp, r18
	bne	r16, zero, .L422
.L414:
	mov	fp, zero
.L409:
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
.L412:
	beq	r21, zero, .L414
	mov	r16, r21
	br	.L422
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	div	r2, r4, r5
	mul	r5, r2, r5
	sub	r3, r4, r5
	ret
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L427
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L427:
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
	bge	r4, zero, .L432
	sub	r2, zero, r4
.L432:
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	div	r2, r4, r5
	mul	r5, r2, r5
	sub	r3, r4, r5
	ret
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L435
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L435:
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
	beq	r2, zero, .L447
.L440:
	beq	r5, r2, .L448
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L440
	mov	r2, zero
	ret
.L448:
	mov	r2, r4
	ret
.L447:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L452:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L451
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r3, zero, .L452
.L451:
	blt	r3, r2, .L454
	cmplt	r2, r2, r3
	ret
.L454:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L459:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L459
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L464
	mov	r5, r4
.L463:
	ldw	r3, 4(r5)
	addi	r5, r5, 4
	bne	r3, zero, .L463
	sub	r4, r5, r4
	srai	r2, r4, 2
	ret
.L464:
	mov	r2, zero
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L472
.L478:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	addi	r6, r6, -1
	bne	r2, r3, .L469
	beq	r2, zero, .L469
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L478
.L472:
	mov	r2, zero
	ret
.L469:
	ldw	r4, 0(r4)
	ldw	r5, 0(r5)
	blt	r4, r5, .L479
	cmplt	r2, r5, r4
	ret
.L479:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L484
.L491:
	ldw	r2, 0(r4)
	addi	r6, r6, -1
	beq	r2, r5, .L490
	addi	r4, r4, 4
	bne	r6, zero, .L491
.L484:
	mov	r2, zero
	ret
.L490:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L498
.L507:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r3, r2, .L506
	addi	r5, r5, 4
	bne	r6, zero, .L507
.L498:
	mov	r2, zero
	ret
.L506:
	blt	r3, r2, .L508
	cmplt	r2, r2, r3
	ret
.L508:
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
	beq	r6, zero, .L510
	slli	r6, r6, 2
	call	memcpy
.L510:
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
	beq	r4, r5, .L523
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L530
	beq	r6, zero, .L523
	slli	r10, r3, 2
	add	r14, r5, r10
	add	r13, r2, r10
.L520:
	ldw	r11, 0(r14)
	mov	r12, r14
	addi	r13, r13, -4
	stw	r11, 4(r13)
	addi	r14, r14, -4
	bne	r5, r12, .L520
	ret
.L530:
	mov	r9, r2
	beq	r6, zero, .L523
.L518:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r9)
	addi	r5, r5, 4
	addi	r9, r9, 4
	bne	r6, zero, .L518
.L523:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L532
	mov	r6, r4
.L533:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L533
.L532:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L539
	add	r13, r4, r6
	add	r14, r5, r6
	beq	r6, zero, .L538
.L541:
	ldbu	r12, -1(r13)
	addi	r13, r13, -1
	addi	r14, r14, -1
	stb	r12, 0(r14)
	bne	r4, r13, .L541
	ret
.L539:
	bne	r4, r5, .L572
.L538:
	ret
.L572:
	beq	r6, zero, .L538
	addi	r2, r6, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L571
	or	r7, r5, r4
	andi	r8, r7, 3
	bne	r8, zero, .L571
	addi	r11, r4, 1
	sub	r9, r5, r11
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L542
	srli	r11, r6, 2
	mov	r15, r5
	slli	r12, r11, 2
	add	r13, r4, r12
.L543:
	ldw	r14, 0(r4)
	addi	r4, r4, 4
	addi	r15, r15, 4
	stw	r14, -4(r15)
	bne	r13, r4, .L543
	add	r5, r5, r12
	sub	r2, r6, r12
	beq	r6, r12, .L538
	ldbu	r4, 0(r13)
	cmpeqi	r6, r2, 1
	stb	r4, 0(r5)
	bne	r6, zero, .L538
	ldbu	r3, 1(r13)
	cmpeqi	r7, r2, 2
	stb	r3, 1(r5)
	bne	r7, zero, .L538
	ldbu	r8, 2(r13)
	stb	r8, 2(r5)
	ret
.L571:
	addi	r11, r4, 1
.L542:
	add	r9, r4, r6
	br	.L546
.L573:
	addi	r11, r11, 1
.L546:
	ldbu	r10, -1(r11)
	addi	r5, r5, 1
	stb	r10, -1(r5)
	bne	r11, r9, .L573
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L575
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	sll	r12, r4, r3
	mov	r11, zero
	blt	r14, zero, .L577
.L579:
	srl	r8, r5, r14
	mov	r5, zero
	or	r3, r5, r12
	or	r2, r8, r11
	ret
.L575:
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
	bge	r14, zero, .L579
.L577:
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
	blt	r2, zero, .L581
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	srl	r12, r5, r2
	mov	r11, zero
	blt	r14, zero, .L583
.L585:
	sll	r8, r4, r14
	mov	r4, zero
	or	r2, r4, r12
	or	r3, r8, r11
	ret
.L581:
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
	bge	r14, zero, .L585
.L583:
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
	br	.L600
.L603:
	beq	r5, zero, .L602
.L600:
	srl	r3, r4, r2
	addi	r2, r2, 1
	cmpnei	r5, r2, 32
	andi	r6, r3, 1
	beq	r6, zero, .L603
	ret
.L602:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L607
	andi	r2, r4, 1
	bne	r2, zero, .L604
	movi	r2, 1
.L606:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L606
	ret
.L607:
	mov	r2, zero
.L604:
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
	blt	r2, zero, .L613
	movhi	r2, 32640
	addi	r5, r2, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L613:
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
	blt	r2, zero, .L618
	movhi	r2, 32752
	movi	r6, -1
	addi	r7, r2, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L615:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L618:
	movi	r2, 1
	br	.L615
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
	blt	r2, zero, .L623
	movhi	r2, 32752
	movi	r6, -1
	addi	r7, r2, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L620:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L623:
	movi	r2, 1
	br	.L620
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
	addi	sp, sp, -12
	stw	r16, 0(sp)
	mov	r16, r5
	mov	r5, r4
	stw	r17, 4(sp)
	stw	ra, 8(sp)
	mov	r17, r4
	call	__unordsf2
	bne	r2, zero, .L628
	mov	r5, r17
	custom	253, r4, r17, r17 # fadds r4, r17, r17
	call	__eqsf2
	beq	r2, zero, .L628
	blt	r16, zero, .L644
	movhi	r3, 16384
.L629:
	andi	r2, r16, 1
	beq	r2, zero, .L630
.L631:
	custom	252, r17, r17, r3 # fmuls r17, r17, r3
.L630:
	movi	r4, 2
	div	r16, r16, r4
	beq	r16, zero, .L628
	andi	r6, r16, 1
	movi	r5, 2
	custom	252, r3, r3, r3 # fmuls r3, r3, r3
	bne	r6, zero, .L631
.L645:
	div	r16, r16, r5
	andi	r6, r16, 1
	custom	252, r3, r3, r3 # fmuls r3, r3, r3
	bne	r6, zero, .L631
	br	.L645
.L628:
	mov	r2, r17
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L644:
	movhi	r3, 16128
	br	.L629
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -28
	stw	r16, 8(sp)
	mov	r7, r5
	mov	r16, r6
	mov	r6, r4
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	ra, 24(sp)
	stw	r19, 20(sp)
	mov	r18, r4
	mov	r17, r5
	call	__unorddf2
	bne	r2, zero, .L647
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
	beq	r2, zero, .L647
	mov	r6, zero
	blt	r16, zero, .L663
	movhi	r7, 16384
.L648:
	andi	r2, r16, 1
	beq	r2, zero, .L649
.L650:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L649:
	movi	r3, 2
	div	r16, r16, r3
	beq	r16, zero, .L647
	movi	r19, 2
.L651:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	andi	r4, r16, 1
	mov	r6, r2
	mov	r7, r3
	bne	r4, zero, .L650
	div	r16, r16, r19
	br	.L651
.L647:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 28
	ret
.L663:
	movhi	r7, 16352
	br	.L648
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -28
	stw	r16, 8(sp)
	mov	r7, r5
	mov	r16, r6
	mov	r6, r4
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	ra, 24(sp)
	stw	r19, 20(sp)
	mov	r18, r4
	mov	r17, r5
	call	__unorddf2
	bne	r2, zero, .L665
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
	beq	r2, zero, .L665
	mov	r6, zero
	blt	r16, zero, .L681
	movhi	r7, 16384
.L666:
	andi	r2, r16, 1
	beq	r2, zero, .L667
.L668:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L667:
	movi	r3, 2
	div	r16, r16, r3
	beq	r16, zero, .L665
	movi	r19, 2
.L669:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	andi	r4, r16, 1
	mov	r6, r2
	mov	r7, r3
	bne	r4, zero, .L668
	div	r16, r16, r19
	br	.L669
.L665:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 28
	ret
.L681:
	movhi	r7, 16352
	br	.L666
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L683
	addi	r3, r6, -1
	cmpltui	r4, r3, 4
	bne	r4, zero, .L684
	or	r7, r2, r5
	andi	r8, r7, 3
	bne	r8, zero, .L684
	srli	r9, r6, 2
	mov	r14, r2
	slli	r10, r9, 2
	add	r11, r5, r10
.L685:
	ldw	r12, 0(r14)
	ldw	r13, 0(r5)
	addi	r14, r14, 4
	addi	r5, r5, 4
	xor	r15, r13, r12
	stw	r15, -4(r14)
	bne	r11, r5, .L685
	add	r3, r2, r10
	sub	r5, r6, r10
	beq	r6, r10, .L683
	ldbu	r6, 0(r3)
	ldbu	r7, 0(r11)
	cmpeqi	r4, r5, 1
	xor	r8, r6, r7
	stb	r8, 0(r3)
	bne	r4, zero, .L683
	ldbu	r9, 1(r3)
	ldbu	r10, 1(r11)
	cmpeqi	r12, r5, 2
	xor	r13, r10, r9
	stb	r13, 1(r3)
	bne	r12, zero, .L683
	ldbu	r14, 2(r3)
	ldbu	r11, 2(r11)
	xor	r15, r11, r14
	stb	r15, 2(r3)
	ret
.L684:
	add	r6, r5, r6
	mov	r3, r2
.L687:
	ldbu	r4, 0(r3)
	ldbu	r7, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r8, r7, r4
	stb	r8, -1(r3)
	bne	r6, r5, .L687
.L683:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L707
	mov	r11, r4
.L702:
	ldb	r7, 1(r11)
	addi	r11, r11, 1
	bne	r7, zero, .L702
.L715:
	beq	r6, zero, .L704
.L717:
	ldbu	r4, 0(r5)
	addi	r6, r6, -1
	addi	r5, r5, 1
	andi	r8, r4, 255
	xori	r9, r8, 128
	stb	r4, 0(r11)
	addi	r10, r9, -128
	beq	r10, zero, .L716
	addi	r11, r11, 1
	bne	r6, zero, .L717
.L704:
	stb	zero, 0(r11)
	ret
.L716:
	ret
.L707:
	mov	r11, r4
	br	.L715
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L718
.L719:
	add	r3, r4, r2
	ldb	r6, 0(r3)
	bne	r6, zero, .L721
.L718:
	ret
.L721:
	addi	r2, r2, 1
	bne	r5, r2, .L719
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L731
.L727:
	mov	r3, r5
	br	.L730
.L729:
	beq	r6, r7, .L728
.L730:
	ldb	r6, 0(r3)
	addi	r3, r3, 1
	bne	r6, zero, .L729
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L727
.L731:
	mov	r2, zero
.L728:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r6, zero
.L738:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, r5, .L737
	mov	r2, r6
.L737:
	mov	r6, r2
	addi	r4, r4, 1
	bne	r3, zero, .L738
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	beq	r8, zero, .L751
	mov	r2, r5
.L742:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L742
	sub	r10, r2, r5
	beq	r2, r5, .L751
	addi	r14, r10, -1
	br	.L760
.L762:
	addi	r4, r4, 1
	beq	r2, zero, .L761
.L760:
	ldbu	r7, 0(r4)
	andi	r6, r7, 255
	xori	r9, r6, 128
	addi	r2, r9, -128
	bne	r2, r8, .L762
	add	r13, r4, r14
	mov	r3, r5
	mov	r12, r4
	andi	r15, r7, 0xff
	br	.L744
.L763:
	beq	r12, r13, .L745
	addi	r12, r12, 1
	bne	r11, r15, .L745
	ldbu	r15, 0(r12)
	addi	r3, r3, 1
	beq	r15, zero, .L745
.L744:
	ldbu	r11, 0(r3)
	bne	r11, zero, .L763
.L745:
	ldbu	r2, 0(r3)
	beq	r15, r2, .L751
	addi	r4, r4, 1
	br	.L760
.L761:
	ret
.L751:
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
	blt	r2, zero, .L775
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L768
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L767
.L768:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L775:
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L768
.L767:
	xorhi	r16, r16, 32768
	br	.L768
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	mov	r2, r4
	beq	r7, zero, .L776
	bltu	r5, r7, .L787
	sub	r5, r5, r7
	add	r9, r4, r5
	bltu	r9, r4, .L787
	ldb	r12, 0(r6)
	addi	r7, r7, -1
	addi	r6, r6, 1
.L782:
	ldb	r3, 0(r2)
	addi	r10, r2, 1
	beq	r3, r12, .L792
	mov	r2, r10
.L778:
	bgeu	r9, r2, .L782
.L787:
	mov	r2, zero
.L776:
	ret
.L792:
	mov	r15, r6
	beq	r7, zero, .L776
.L781:
	mov	r14, r10
	add	r5, r10, r7
	br	.L779
.L780:
	beq	r14, r5, .L776
.L779:
	ldbu	r8, 0(r14)
	ldbu	r13, 0(r15)
	addi	r14, r14, 1
	addi	r15, r15, 1
	beq	r8, r13, .L780
	bltu	r9, r10, .L787
	ldb	r4, 0(r10)
	addi	r2, r10, 1
	bne	r12, r4, .L778
	mov	r11, r10
	mov	r15, r6
	mov	r10, r2
	mov	r2, r11
	br	.L781
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
	beq	r6, zero, .L794
	call	memmove
.L794:
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
	blt	r2, zero, .L822
	movhi	r7, 16368
	mov	r4, r18
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L823
	mov	r20, zero
.L802:
	mov	r17, zero
.L808:
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
	bge	r2, zero, .L808
.L809:
	stw	r17, 0(r19)
	beq	r20, zero, .L815
	xorhi	r3, r16, 32768
.L799:
	mov	r2, r18
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L823:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r18
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L805
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r16
	call	__nedf2
	bne	r2, zero, .L814
.L805:
	stw	zero, 0(r19)
	mov	r3, r16
	br	.L799
.L822:
	movhi	r7, 49136
	mov	r4, r18
	mov	r5, r16
	xorhi	r17, r16, 32768
	call	__ledf2
	bgt	r2, zero, .L824
	mov	r16, r17
	movi	r20, 1
	br	.L802
.L815:
	mov	r3, r16
	br	.L799
.L824:
	mov	r6, zero
	movhi	r7, 49120
	mov	r4, r18
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L805
	movi	r20, 1
.L803:
	mov	r16, r17
	mov	r17, zero
.L810:
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
	blt	r2, zero, .L810
	br	.L809
.L814:
	mov	r17, r16
	mov	r20, zero
	br	.L803
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or	r2, r4, r5
	beq	r2, zero, .L829
	mov	r2, zero
	mov	r3, zero
.L828:
	andi	r8, r4, 1
	mul	r10, r7, r8
	mulxuu	r12, r8, r6
	mul	r13, r8, r6
	slli	r11, r5, 31
	srli	r4, r4, 1
	srli	r5, r5, 1
	srli	r9, r6, 31
	slli	r7, r7, 1
	add	r14, r2, r13
	add	r15, r10, r12
	or	r4, r11, r4
	cmpltu	r8, r14, r2
	add	r3, r3, r15
	or	r10, r4, r5
	slli	r6, r6, 1
	mov	r2, r14
	add	r3, r8, r3
	or	r7, r9, r7
	bne	r10, zero, .L828
	ret
.L829:
	mov	r2, zero
	mov	r3, zero
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	bgeu	r5, r4, .L855
	movi	r2, 32
	movi	r10, 1
	br	.L832
.L836:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L834
	beq	r2, zero, .L835
.L832:
	addi	r2, r2, -1
	bge	r5, zero, .L836
.L837:
	mov	r2, zero
.L842:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L839
	mov	r4, r8
.L839:
	beq	r7, zero, .L840
	mov	r9, r10
.L841:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L842
.L835:
	bne	r6, zero, .L856
.L831:
	ret
.L840:
	mov	r9, zero
	br	.L841
.L834:
	bne	r10, zero, .L837
	mov	r2, zero
	beq	r6, zero, .L831
.L856:
	mov	r2, r4
	ret
.L855:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L835
	mov	r4, r3
	br	.L835
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
	beq	r5, r6, .L859
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
.L859:
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
	beq	r2, r6, .L873
.L868:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L873:
	bne	r3, r2, .L868
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L877
.L876:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L876
	ret
.L877:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	movi	r10, -8
	srli	r9, r6, 3
	and	r12, r6, r10
	bltu	r4, r5, .L880
	add	r2, r5, r6
	bgeu	r2, r4, .L909
.L880:
	beq	r9, zero, .L883
	slli	r13, r9, 3
	mov	r2, r4
	mov	r9, r5
	add	r14, r13, r5
.L884:
	ldw	r15, 0(r9)
	ldw	r10, 4(r9)
	addi	r9, r9, 8
	stw	r15, 0(r2)
	stw	r10, 4(r2)
	addi	r2, r2, 8
	bne	r9, r14, .L884
	bgeu	r12, r6, .L879
	sub	r11, r6, r12
	addi	r3, r11, -1
	cmpltui	r7, r3, 7
	bne	r7, zero, .L908
	addi	r8, r12, 1
	add	r3, r4, r12
	add	r13, r5, r8
	sub	r14, r3, r13
	cmpgeui	r15, r14, 3
	add	r2, r5, r12
	beq	r15, zero, .L886
	or	r10, r2, r3
	andi	r9, r10, 3
	bne	r9, zero, .L886
	srli	r7, r11, 2
	slli	r13, r7, 2
	add	r8, r2, r13
.L887:
	ldw	r14, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r14, -4(r3)
	bne	r2, r8, .L887
	add	r12, r12, r13
	beq	r11, r13, .L879
	add	r2, r5, r12
	ldbu	r11, 0(r2)
	add	r3, r4, r12
	addi	r15, r12, 1
	stb	r11, 0(r3)
	bgeu	r15, r6, .L879
	add	r10, r5, r15
	ldbu	r9, 0(r10)
	add	r7, r4, r15
	addi	r13, r12, 2
	stb	r9, 0(r7)
	bgeu	r13, r6, .L879
	add	r5, r5, r13
	ldbu	r6, 0(r5)
	add	r4, r4, r13
	stb	r6, 0(r4)
	ret
.L909:
	addi	r8, r6, -1
	beq	r6, zero, .L879
.L881:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r11, r8, -1
	bne	r11, zero, .L881
.L879:
	ret
.L883:
	beq	r6, zero, .L879
.L908:
	add	r3, r4, r12
	add	r2, r5, r12
.L886:
	add	r8, r5, r6
.L889:
	ldbu	r14, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r14, -1(r3)
	bne	r2, r8, .L889
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r10, r6, 1
	bltu	r4, r5, .L911
	add	r2, r5, r6
	bgeu	r2, r4, .L938
.L911:
	beq	r10, zero, .L914
	addi	r11, r10, -1
	cmpltui	r12, r11, 9
	bne	r12, zero, .L915
	or	r13, r5, r4
	andi	r14, r13, 3
	bne	r14, zero, .L915
	addi	r15, r5, 2
	beq	r4, r15, .L915
	srli	r9, r6, 2
	mov	r2, r5
	mov	r3, r4
	slli	r7, r9, 2
	add	r8, r7, r5
.L916:
	ldw	r11, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r11, -4(r3)
	bne	r2, r8, .L916
	add	r12, r9, r9
	beq	r10, r12, .L914
	add	r10, r12, r12
	add	r13, r5, r10
	ldhu	r14, 0(r13)
	add	r15, r4, r10
	sth	r14, 0(r15)
.L914:
	andi	r3, r6, 1
	beq	r3, zero, .L910
.L939:
	add	r5, r5, r6
	ldbu	r12, -1(r5)
	add	r4, r4, r6
	stb	r12, -1(r4)
	ret
.L938:
	addi	r8, r6, -1
	beq	r6, zero, .L910
.L912:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r9, r8, -1
	bne	r9, zero, .L912
.L910:
	ret
.L915:
	add	r9, r10, r10
	mov	r11, r5
	mov	r2, r4
	add	r8, r9, r5
.L918:
	ldhu	r7, 0(r11)
	addi	r11, r11, 2
	addi	r2, r2, 2
	sth	r7, -2(r2)
	bne	r8, r11, .L918
	andi	r3, r6, 1
	beq	r3, zero, .L910
	br	.L939
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	movi	r9, -4
	srli	r8, r6, 2
	and	r12, r6, r9
	bltu	r4, r5, .L941
	add	r2, r5, r6
	bgeu	r2, r4, .L970
.L941:
	beq	r8, zero, .L944
	slli	r13, r8, 2
	mov	r9, r5
	mov	r8, r4
	add	r14, r13, r5
.L945:
	ldw	r15, 0(r9)
	addi	r9, r9, 4
	addi	r8, r8, 4
	stw	r15, -4(r8)
	bne	r9, r14, .L945
	bgeu	r12, r6, .L940
	sub	r11, r6, r12
	addi	r2, r11, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L969
	addi	r7, r12, 1
	add	r3, r4, r12
	add	r10, r5, r7
	sub	r13, r3, r10
	cmpgeui	r14, r13, 3
	add	r2, r5, r12
	beq	r14, zero, .L947
	or	r15, r2, r3
	andi	r9, r15, 3
	bne	r9, zero, .L947
	srli	r8, r11, 2
	slli	r10, r8, 2
	add	r13, r2, r10
.L948:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r13, .L948
	add	r12, r12, r10
	beq	r11, r10, .L940
	add	r11, r5, r12
	ldbu	r14, 0(r11)
	add	r3, r4, r12
	addi	r2, r12, 1
	stb	r14, 0(r3)
	bgeu	r2, r6, .L940
	add	r15, r5, r2
	ldbu	r8, 0(r15)
	add	r10, r4, r2
	addi	r9, r12, 2
	stb	r8, 0(r10)
	bgeu	r9, r6, .L940
	add	r5, r5, r9
	ldbu	r6, 0(r5)
	add	r4, r4, r9
	stb	r6, 0(r4)
	ret
.L970:
	addi	r10, r6, -1
	beq	r6, zero, .L940
.L942:
	add	r3, r5, r10
	ldbu	r6, 0(r3)
	add	r7, r4, r10
	addi	r10, r10, -1
	stb	r6, 0(r7)
	cmpnei	r11, r10, -1
	bne	r11, zero, .L942
.L940:
	ret
.L944:
	beq	r6, zero, .L940
.L969:
	add	r3, r4, r12
	add	r2, r5, r12
.L947:
	add	r13, r5, r6
.L950:
	ldbu	r7, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r2, r13, .L950
	ret
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	div	r2, r4, r5
	mul	r3, r2, r5
	sub	r2, r4, r3
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
	divu	r2, r4, r5
	mul	r3, r2, r5
	sub	r2, r4, r3
	ret
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	andi	r4, r4, 0xffff
	srai	r2, r4, 15
	bne	r2, zero, .L984
	srai	r2, r4, 14
	bne	r2, zero, .L981
	srai	r3, r4, 13
	bne	r3, zero, .L985
	srai	r5, r4, 12
	bne	r5, zero, .L986
	srai	r6, r4, 11
	bne	r6, zero, .L987
	srai	r7, r4, 10
	bne	r7, zero, .L988
	srai	r8, r4, 9
	bne	r8, zero, .L989
	srai	r9, r4, 8
	bne	r9, zero, .L990
	srai	r10, r4, 7
	bne	r10, zero, .L991
	srai	r11, r4, 6
	bne	r11, zero, .L992
	srai	r12, r4, 5
	bne	r12, zero, .L993
	srai	r13, r4, 4
	bne	r13, zero, .L994
	srai	r14, r4, 3
	bne	r14, zero, .L995
	srai	r15, r4, 2
	bne	r15, zero, .L996
	srai	r2, r4, 1
	bne	r2, zero, .L997
	movi	r2, 16
	bne	r4, zero, .L1000
.L981:
	ret
.L984:
	mov	r2, zero
	ret
.L995:
	movi	r2, 12
	ret
.L1000:
	movi	r2, 15
	ret
.L985:
	movi	r2, 2
	ret
.L986:
	movi	r2, 3
	ret
.L987:
	movi	r2, 4
	ret
.L988:
	movi	r2, 5
	ret
.L989:
	movi	r2, 6
	ret
.L990:
	movi	r2, 7
	ret
.L991:
	movi	r2, 8
	ret
.L992:
	movi	r2, 9
	ret
.L993:
	movi	r2, 10
	ret
.L994:
	movi	r2, 11
	ret
.L996:
	movi	r2, 13
	ret
.L997:
	movi	r2, 14
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi	r2, r4, 1
	bne	r2, zero, .L1004
	andi	r3, r4, 2
	bne	r3, zero, .L1005
	andi	r5, r4, 4
	bne	r5, zero, .L1006
	andi	r6, r4, 8
	bne	r6, zero, .L1007
	andi	r7, r4, 16
	bne	r7, zero, .L1008
	andi	r8, r4, 32
	bne	r8, zero, .L1009
	andi	r9, r4, 64
	bne	r9, zero, .L1010
	andi	r10, r4, 128
	bne	r10, zero, .L1011
	andi	r11, r4, 256
	bne	r11, zero, .L1012
	andi	r12, r4, 512
	bne	r12, zero, .L1013
	andi	r13, r4, 1024
	bne	r13, zero, .L1014
	andi	r14, r4, 2048
	bne	r14, zero, .L1015
	andi	r15, r4, 4096
	bne	r15, zero, .L1016
	andi	r2, r4, 8192
	bne	r2, zero, .L1017
	andi	r3, r4, 16384
	bne	r3, zero, .L1018
	andi	r4, r4, 0xffff
	srai	r5, r4, 15
	movi	r2, 16
	bne	r5, zero, .L1021
.L1001:
	ret
.L1004:
	mov	r2, zero
	ret
.L1005:
	movi	r2, 1
	ret
.L1016:
	movi	r2, 12
	ret
.L1006:
	movi	r2, 2
	ret
.L1007:
	movi	r2, 3
	ret
.L1008:
	movi	r2, 4
	ret
.L1009:
	movi	r2, 5
	ret
.L1010:
	movi	r2, 6
	ret
.L1011:
	movi	r2, 7
	ret
.L1012:
	movi	r2, 8
	ret
.L1013:
	movi	r2, 9
	ret
.L1014:
	movi	r2, 10
	ret
.L1015:
	movi	r2, 11
	ret
.L1017:
	movi	r2, 13
	ret
.L1018:
	movi	r2, 14
	ret
.L1021:
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
	bge	r2, zero, .L1029
	mov	r4, r16
	call	__fixsfsi
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L1029:
	movhi	r4, 18176
	custom	254, r4, r16, r4 # fsubs r4, r16, r4
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
	beq	r4, zero, .L1035
.L1034:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L1034
	ret
.L1035:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L1040
	beq	r5, zero, .L1041
.L1039:
	andi	r3, r5, 1
	mul	r6, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r6
	bne	r5, zero, .L1039
	ret
.L1040:
	ret
.L1041:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	bgeu	r5, r4, .L1067
	movi	r2, 32
	movi	r10, 1
	br	.L1044
.L1048:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L1046
	beq	r2, zero, .L1047
.L1044:
	addi	r2, r2, -1
	bge	r5, zero, .L1048
.L1049:
	mov	r2, zero
.L1054:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1051
	mov	r4, r8
.L1051:
	beq	r7, zero, .L1052
	mov	r9, r10
.L1053:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L1054
.L1047:
	bne	r6, zero, .L1068
.L1043:
	ret
.L1052:
	mov	r9, zero
	br	.L1053
.L1046:
	bne	r10, zero, .L1049
	mov	r2, zero
	beq	r6, zero, .L1043
.L1068:
	mov	r2, r4
	ret
.L1067:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1047
	mov	r4, r3
	br	.L1047
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
	blt	r2, zero, .L1072
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L1069:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L1072:
	movi	r2, -1
	br	.L1069
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
	blt	r2, zero, .L1077
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L1074:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L1077:
	movi	r2, -1
	br	.L1074
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	mulxss	r3, r4, r5
	mul	r2, r4, r5
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	mulxuu	r3, r4, r5
	mul	r2, r4, r5
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	blt	r5, zero, .L1095
	beq	r5, zero, .L1087
	mov	r8, zero
.L1083:
	movi	r3, 32
	mov	r2, zero
	br	.L1086
.L1096:
	beq	r7, zero, .L1085
.L1086:
	andi	r6, r5, 1
	mul	r9, r6, r4
	srai	r5, r5, 1
	addi	r3, r3, -1
	andi	r7, r3, 0xff
	add	r2, r2, r9
	add	r4, r4, r4
	bne	r5, zero, .L1096
.L1085:
	beq	r8, zero, .L1081
	sub	r2, zero, r2
	ret
.L1087:
	mov	r2, zero
.L1081:
	ret
.L1095:
	sub	r5, zero, r5
	movi	r8, 1
	br	.L1083
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L1125
	movi	r2, 1
	mov	r8, zero
.L1098:
	bge	r5, zero, .L1099
	sub	r5, zero, r5
	mov	r8, r2
.L1099:
	mov	r6, r4
	mov	r3, r5
	bgeu	r5, r4, .L1126
	movi	r7, 32
	movi	r5, 1
	br	.L1100
.L1104:
	beq	r7, zero, .L1105
.L1100:
	add	r3, r3, r3
	addi	r7, r7, -1
	add	r5, r5, r5
	bltu	r3, r4, .L1104
.L1105:
	mov	r2, zero
	beq	r5, zero, .L1103
.L1102:
	sub	r9, r6, r3
	cmpgeu	r4, r6, r3
	bltu	r6, r3, .L1107
	mov	r6, r9
.L1107:
	beq	r4, zero, .L1108
	mov	r10, r5
.L1109:
	srli	r5, r5, 1
	srli	r3, r3, 1
	or	r2, r2, r10
	bne	r5, zero, .L1102
.L1103:
	beq	r8, zero, .L1097
	sub	r2, zero, r2
	ret
.L1108:
	mov	r10, zero
	br	.L1109
.L1097:
	ret
.L1125:
	sub	r4, zero, r4
	mov	r2, zero
	movi	r8, 1
	br	.L1098
.L1126:
	cmpgeu	r2, r4, r5
	br	.L1103
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L1155
	mov	r7, zero
.L1128:
	mov	r2, r4
	bge	r5, zero, .L1129
	sub	r5, zero, r5
.L1129:
	mov	r3, r5
	bgeu	r5, r4, .L1156
	movi	r6, 32
	movi	r5, 1
	br	.L1130
.L1134:
	beq	r6, zero, .L1135
.L1130:
	add	r3, r3, r3
	addi	r6, r6, -1
	add	r5, r5, r5
	bltu	r3, r4, .L1134
.L1135:
	beq	r5, zero, .L1154
.L1132:
	sub	r4, r2, r3
	bltu	r2, r3, .L1137
	mov	r2, r4
.L1137:
	srli	r5, r5, 1
	srli	r3, r3, 1
	bne	r5, zero, .L1132
.L1133:
	beq	r7, zero, .L1127
	sub	r2, zero, r2
	ret
.L1127:
	ret
.L1155:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L1128
.L1156:
	sub	r2, r4, r5
	bgeu	r4, r5, .L1133
.L1154:
	mov	r2, r4
	br	.L1133
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r3, r5, 0xffff
	andi	r9, r4, 0xffff
	bgeu	r3, r9, .L1311
	andi	r2, r5, 65535
	xori	r7, r2, 32768
	addi	r8, r7, -32768
	blt	r8, zero, .L1162
	add	r10, r5, r5
	andi	r12, r10, 0xffff
	mov	r2, r10
	bgeu	r12, r9, .L1235
	andi	r13, r10, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1235
	slli	r3, r5, 2
	andi	r7, r3, 0xffff
	mov	r2, r3
	bgeu	r7, r9, .L1237
	andi	r8, r3, 65535
	xori	r11, r8, 32768
	addi	r10, r11, -32768
	blt	r10, zero, .L1237
	slli	r12, r5, 3
	andi	r13, r12, 0xffff
	mov	r2, r12
	bgeu	r13, r9, .L1239
	andi	r14, r12, 65535
	xori	r15, r14, 32768
	addi	r3, r15, -32768
	blt	r3, zero, .L1239
	slli	r8, r5, 4
	andi	r7, r8, 0xffff
	mov	r2, r8
	bgeu	r7, r9, .L1241
	andi	r11, r8, 65535
	xori	r10, r11, 32768
	addi	r12, r10, -32768
	blt	r12, zero, .L1241
	slli	r13, r5, 5
	andi	r14, r13, 0xffff
	mov	r2, r13
	bgeu	r14, r9, .L1243
	andi	r15, r13, 65535
	xori	r3, r15, 32768
	addi	r8, r3, -32768
	blt	r8, zero, .L1243
	slli	r11, r5, 6
	andi	r7, r11, 0xffff
	mov	r2, r11
	bgeu	r7, r9, .L1245
	andi	r10, r11, 65535
	xori	r12, r10, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1245
	slli	r14, r5, 7
	andi	r15, r14, 0xffff
	mov	r2, r14
	bgeu	r15, r9, .L1247
	andi	r3, r14, 65535
	xori	r8, r3, 32768
	addi	r11, r8, -32768
	blt	r11, zero, .L1247
	slli	r10, r5, 8
	andi	r7, r10, 0xffff
	mov	r2, r10
	bgeu	r7, r9, .L1249
	andi	r12, r10, 65535
	xori	r13, r12, 32768
	addi	r14, r13, -32768
	blt	r14, zero, .L1249
	slli	r15, r5, 9
	andi	r3, r15, 0xffff
	mov	r2, r15
	bgeu	r3, r9, .L1251
	andi	r8, r15, 65535
	xori	r11, r8, 32768
	addi	r10, r11, -32768
	blt	r10, zero, .L1251
	slli	r12, r5, 10
	andi	r7, r12, 0xffff
	mov	r2, r12
	bgeu	r7, r9, .L1253
	andi	r13, r12, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1253
	slli	r3, r5, 11
	andi	r8, r3, 0xffff
	mov	r2, r3
	bgeu	r8, r9, .L1255
	andi	r11, r3, 65535
	xori	r10, r11, 32768
	addi	r12, r10, -32768
	blt	r12, zero, .L1255
	slli	r13, r5, 12
	andi	r7, r13, 0xffff
	mov	r2, r13
	bgeu	r7, r9, .L1257
	andi	r14, r13, 65535
	xori	r15, r14, 32768
	addi	r3, r15, -32768
	blt	r3, zero, .L1257
	slli	r8, r5, 13
	andi	r11, r8, 0xffff
	mov	r2, r8
	bgeu	r11, r9, .L1259
	andi	r10, r8, 65535
	xori	r12, r10, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1259
	slli	r14, r5, 14
	andi	r7, r14, 0xffff
	mov	r2, r14
	bgeu	r7, r9, .L1261
	andi	r15, r14, 65535
	xori	r3, r15, 32768
	addi	r8, r3, -32768
	blt	r8, zero, .L1261
	slli	r7, r5, 15
	andi	r5, r7, 0xffff
	mov	r11, r7
	bgeu	r5, r9, .L1262
	mov	r2, r4
	bne	r5, zero, .L1312
.L1165:
	bne	r6, zero, .L1157
	mov	r2, r11
	ret
.L1157:
	ret
.L1235:
	movi	r12, 2
.L1164:
	andi	r13, r2, 0xffff
	sub	r11, r4, r2
	bltu	r9, r13, .L1230
	mov	r14, r11
.L1231:
	bltu	r9, r13, .L1232
	mov	r10, r12
.L1233:
	srli	r2, r13, 1
	andi	r9, r14, 0xffff
	srli	r4, r12, 1
	andi	r15, r2, 0xffff
	sub	r3, r14, r2
	bltu	r9, r15, .L1167
	mov	r14, r3
.L1167:
	mov	r2, r14
	bgeu	r9, r15, .L1169
	mov	r4, zero
.L1169:
	srli	r9, r12, 2
	or	r8, r4, r10
	srli	r5, r13, 2
	mov	r11, r8
	beq	r9, zero, .L1165
	andi	r10, r14, 0xffff
	sub	r11, r14, r5
	cmpgeu	r7, r10, r5
	bltu	r10, r5, .L1171
	mov	r14, r11
.L1171:
	mov	r2, r14
	bne	r7, zero, .L1173
	mov	r9, zero
.L1173:
	srli	r5, r12, 3
	or	r4, r8, r9
	srli	r15, r13, 3
	mov	r11, r4
	beq	r5, zero, .L1165
	andi	r2, r14, 0xffff
	sub	r3, r14, r15
	cmpgeu	r8, r2, r15
	bltu	r2, r15, .L1175
	mov	r14, r3
.L1175:
	mov	r2, r14
	bne	r8, zero, .L1177
	mov	r5, zero
.L1177:
	srli	r9, r12, 4
	or	r4, r4, r5
	srli	r10, r13, 4
	mov	r11, r4
	beq	r9, zero, .L1165
	andi	r15, r14, 0xffff
	sub	r11, r14, r10
	cmpgeu	r7, r15, r10
	bltu	r15, r10, .L1179
	mov	r14, r11
.L1179:
	mov	r2, r14
	bne	r7, zero, .L1181
	mov	r9, zero
.L1181:
	srli	r10, r12, 5
	or	r3, r4, r9
	srli	r8, r13, 5
	mov	r11, r3
	beq	r10, zero, .L1165
	andi	r2, r14, 0xffff
	sub	r5, r14, r8
	cmpgeu	r4, r2, r8
	bltu	r2, r8, .L1183
	mov	r14, r5
.L1183:
	mov	r2, r14
	bne	r4, zero, .L1185
	mov	r10, zero
.L1185:
	srli	r9, r12, 6
	or	r15, r3, r10
	mov	r11, r15
	srli	r3, r13, 6
	beq	r9, zero, .L1165
	andi	r8, r14, 0xffff
	sub	r11, r14, r3
	cmpgeu	r7, r8, r3
	bltu	r8, r3, .L1187
	mov	r14, r11
.L1187:
	mov	r2, r14
	bne	r7, zero, .L1189
	mov	r9, zero
.L1189:
	srli	r10, r12, 7
	or	r5, r15, r9
	srli	r4, r13, 7
	mov	r11, r5
	beq	r10, zero, .L1165
	andi	r2, r14, 0xffff
	sub	r15, r14, r4
	cmpgeu	r3, r2, r4
	bltu	r2, r4, .L1191
	mov	r14, r15
.L1191:
	mov	r2, r14
	bne	r3, zero, .L1193
	mov	r10, zero
.L1193:
	srli	r9, r12, 8
	or	r8, r5, r10
	mov	r11, r8
	srli	r5, r13, 8
	beq	r9, zero, .L1165
	andi	r4, r14, 0xffff
	sub	r11, r14, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1195
	mov	r14, r11
.L1195:
	mov	r2, r14
	bne	r7, zero, .L1197
	mov	r9, zero
.L1197:
	srli	r10, r12, 9
	or	r15, r8, r9
	srli	r3, r13, 9
	mov	r11, r15
	beq	r10, zero, .L1165
	andi	r2, r14, 0xffff
	sub	r8, r14, r3
	cmpgeu	r5, r2, r3
	bltu	r2, r3, .L1199
	mov	r14, r8
.L1199:
	mov	r2, r14
	bne	r5, zero, .L1201
	mov	r10, zero
.L1201:
	srli	r9, r12, 10
	or	r4, r15, r10
	mov	r11, r4
	srli	r15, r13, 10
	beq	r9, zero, .L1165
	andi	r3, r14, 0xffff
	sub	r11, r14, r15
	cmpgeu	r7, r3, r15
	bltu	r3, r15, .L1203
	mov	r14, r11
.L1203:
	mov	r2, r14
	bne	r7, zero, .L1205
	mov	r9, zero
.L1205:
	srli	r10, r12, 11
	or	r8, r4, r9
	srli	r5, r13, 11
	mov	r11, r8
	beq	r10, zero, .L1165
	andi	r2, r14, 0xffff
	sub	r4, r14, r5
	cmpgeu	r15, r2, r5
	bltu	r2, r5, .L1207
	mov	r14, r4
.L1207:
	mov	r2, r14
	bne	r15, zero, .L1209
	mov	r10, zero
.L1209:
	srli	r9, r12, 12
	or	r3, r8, r10
	mov	r11, r3
	srli	r8, r13, 12
	beq	r9, zero, .L1165
	andi	r5, r14, 0xffff
	sub	r11, r14, r8
	cmpgeu	r7, r5, r8
	bltu	r5, r8, .L1211
	mov	r14, r11
.L1211:
	mov	r2, r14
	bne	r7, zero, .L1213
	mov	r9, zero
.L1213:
	srli	r10, r12, 13
	or	r4, r3, r9
	srli	r15, r13, 13
	mov	r11, r4
	beq	r10, zero, .L1165
	andi	r2, r14, 0xffff
	sub	r3, r14, r15
	cmpgeu	r8, r2, r15
	bltu	r2, r15, .L1215
	mov	r14, r3
.L1215:
	mov	r2, r14
	bne	r8, zero, .L1217
	mov	r10, zero
.L1217:
	srli	r9, r12, 14
	or	r5, r4, r10
	mov	r11, r5
	srli	r4, r13, 14
	beq	r9, zero, .L1165
	andi	r15, r14, 0xffff
	sub	r11, r14, r4
	cmpgeu	r7, r15, r4
	bltu	r15, r4, .L1219
	mov	r14, r11
.L1219:
	mov	r2, r14
	bne	r7, zero, .L1221
	mov	r9, zero
.L1221:
	or	r3, r5, r9
	cmpeqi	r12, r12, 16384
	srli	r13, r13, 15
	mov	r11, r3
	bne	r12, zero, .L1165
	andi	r2, r14, 0xffff
	sub	r8, r14, r13
	cmpgeu	r10, r2, r13
	bltu	r2, r13, .L1223
	mov	r14, r8
.L1223:
	mov	r2, r14
	or	r11, r3, r10
	br	.L1165
.L1232:
	mov	r10, zero
	br	.L1233
.L1230:
	mov	r14, r4
	br	.L1231
.L1237:
	movi	r12, 4
	br	.L1164
.L1239:
	movi	r12, 8
	br	.L1164
.L1241:
	movi	r12, 16
	br	.L1164
.L1251:
	movi	r12, 512
	br	.L1164
.L1312:
	movui	r12, 32768
	movi	r2, -32768
	br	.L1164
.L1243:
	movi	r12, 32
	br	.L1164
.L1245:
	movi	r12, 64
	br	.L1164
.L1247:
	movi	r12, 128
	br	.L1164
.L1249:
	movi	r12, 256
	br	.L1164
.L1311:
	sub	r2, r4, r5
	beq	r3, r9, .L1160
	mov	r2, r4
.L1160:
	cmpeq	r11, r3, r9
	br	.L1165
.L1253:
	movi	r12, 1024
	br	.L1164
.L1255:
	movi	r12, 2048
	br	.L1164
.L1257:
	movi	r12, 4096
	br	.L1164
.L1259:
	movi	r12, 8192
	br	.L1164
.L1261:
	movi	r12, 16384
	br	.L1164
.L1262:
	movi	r2, -32768
	movui	r12, 32768
	br	.L1164
.L1162:
	sub	r2, r4, r5
	movi	r11, 1
	br	.L1165
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	bgeu	r5, r4, .L1337
	movi	r2, 32
	movi	r10, 1
	br	.L1314
.L1318:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L1316
	beq	r2, zero, .L1317
.L1314:
	addi	r2, r2, -1
	bge	r5, zero, .L1318
.L1319:
	mov	r2, zero
.L1324:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1321
	mov	r4, r8
.L1321:
	beq	r7, zero, .L1322
	mov	r9, r10
.L1323:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L1324
.L1317:
	bne	r6, zero, .L1338
.L1313:
	ret
.L1322:
	mov	r9, zero
	br	.L1323
.L1316:
	bne	r10, zero, .L1319
	mov	r2, zero
	beq	r6, zero, .L1313
.L1338:
	mov	r2, r4
	ret
.L1337:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1317
	mov	r4, r3
	br	.L1317
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1340
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L1340:
	beq	r6, zero, .L1343
	movi	r3, 32
	sub	r7, r3, r6
	srl	r8, r4, r7
	sll	r5, r5, r6
	sll	r4, r4, r6
	or	r3, r8, r5
	mov	r2, r4
	ret
.L1343:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1345
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L1345:
	beq	r6, zero, .L1348
	movi	r7, 32
	sub	r3, r7, r6
	sll	r8, r5, r3
	srl	r4, r4, r6
	sra	r3, r5, r6
	or	r2, r8, r4
	ret
.L1348:
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
	bne	r5, zero, .L1352
	sub	r11, r11, r14
	add	r2, r12, r10
	add	r2, r11, r2
	ret
.L1352:
	mov	r11, zero
	add	r2, r12, r10
	add	r2, r11, r2
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1358
	blt	r7, r5, .L1359
	bltu	r4, r6, .L1358
	bltu	r6, r4, .L1359
	movi	r2, 1
	ret
.L1358:
	mov	r2, zero
	ret
.L1359:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1364
	blt	r7, r5, .L1363
	bltu	r4, r6, .L1364
	cmpltu	r2, r6, r4
	ret
.L1364:
	movi	r2, -1
	ret
.L1363:
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
	beq	r2, zero, .L1367
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1367:
	beq	r6, zero, .L1370
	movi	r3, 32
	sub	r7, r3, r6
	sll	r8, r5, r7
	srl	r4, r4, r6
	srl	r5, r5, r6
	or	r2, r8, r4
	mov	r3, r5
	ret
.L1370:
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
	addi	sp, sp, -32
	stw	r20, 24(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	mov	r18, r6
	stw	r16, 8(sp)
	andi	r2, r6, 1
	stw	ra, 28(sp)
	stw	r19, 20(sp)
	mov	r6, r4
	mov	r7, r5
	mov	r20, r18
	mov	r17, zero
	movhi	r16, 16368
	beq	r2, zero, .L1380
.L1382:
	mov	r4, r17
	mov	r5, r16
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r7, 0(sp)
	ldw	r6, 4(sp)
	mov	r17, r2
	mov	r16, r3
.L1380:
	movi	r3, 2
	div	r20, r20, r3
	beq	r20, zero, .L1381
	movi	r19, 2
.L1383:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	andi	r4, r20, 1
	mov	r6, r2
	mov	r7, r3
	bne	r4, zero, .L1382
	div	r20, r20, r19
	br	.L1383
.L1381:
	bge	r18, zero, .L1379
	mov	r6, r17
	mov	r7, r16
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r17, r2
	mov	r16, r3
.L1379:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 28(sp)
	ldw	r20, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 32
	ret
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	andi	r2, r5, 1
	mov	r6, r5
	beq	r2, zero, .L1393
	movhi	r2, 16256
.L1390:
	custom	252, r2, r2, r4 # fmuls r2, r2, r4
.L1388:
	movi	r3, 2
	div	r6, r6, r3
	beq	r6, zero, .L1389
	andi	r8, r6, 1
	movi	r7, 2
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1390
.L1398:
	div	r6, r6, r7
	andi	r8, r6, 1
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1390
	br	.L1398
.L1389:
	blt	r5, zero, .L1399
	ret
.L1393:
	movhi	r2, 16256
	br	.L1388
.L1399:
	addi	sp, sp, -4
	mov	r5, r2
	movhi	r4, 16256
	stw	ra, 0(sp)
	call	__divsf3
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L1404
	bltu	r7, r5, .L1405
	bltu	r4, r6, .L1404
	bltu	r6, r4, .L1405
	movi	r2, 1
	ret
.L1404:
	mov	r2, zero
	ret
.L1405:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1410
	bltu	r7, r5, .L1409
	bltu	r4, r6, .L1410
	cmpltu	r2, r6, r4
	ret
.L1410:
	movi	r2, -1
	ret
.L1409:
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
	.global	__eqsf2
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__ltsf2
	.global	__ltdf2
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
