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
	custom	246, r2, r16, r17 # fcmpgts r2, r16, r17
	bne	r2, zero, .L193
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
	stw	r16, 0(sp)
	mov	r16, r5
	mov	r5, r4
	stw	r17, 4(sp)
	stw	ra, 8(sp)
	mov	r17, r4
	call	__unordsf2
	bne	r2, zero, .L213
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L212
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L208
	bne	r2, zero, .L213
.L212:
	mov	r2, r17
	br	.L206
.L208:
	custom	231, r4, r17, r16 # fcmplts r4, r17, r16
	bne	r4, zero, .L213
	mov	r16, r17
.L213:
	mov	r2, r16
.L206:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
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
	bne	r2, zero, .L223
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L222
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L217
	bne	r2, zero, .L223
.L222:
	mov	r2, r19
	mov	r3, r18
	br	.L215
.L217:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L223
	mov	r17, r19
	mov	r16, r18
.L223:
	mov	r2, r17
	mov	r3, r16
.L215:
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
	bne	r2, zero, .L233
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L235
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L229
	bne	r2, zero, .L235
.L233:
	mov	r2, r18
	mov	r3, r19
	br	.L227
.L229:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L235
	mov	r17, r18
	mov	r16, r19
.L235:
	mov	r2, r17
	mov	r3, r16
.L227:
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
	stw	r17, 4(sp)
	mov	r17, r5
	mov	r5, r4
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r16, r4
	call	__unordsf2
	bne	r2, zero, .L244
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L246
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L241
	bne	r2, zero, .L246
.L244:
	mov	r2, r17
	br	.L239
.L241:
	custom	231, r4, r16, r17 # fcmplts r4, r16, r17
	bne	r4, zero, .L246
	mov	r16, r17
.L246:
	mov	r2, r16
.L239:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
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
	bne	r2, zero, .L254
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L256
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L250
	bne	r2, zero, .L256
.L254:
	mov	r2, r18
	mov	r3, r19
	br	.L248
.L250:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L256
	mov	r17, r18
	mov	r16, r19
.L256:
	mov	r2, r17
	mov	r3, r16
.L248:
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
	beq	r4, zero, .L261
.L262:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r6, r5, r2
	ldbu	r7, %lo(digits)(r6)
	srli	r4, r4, 6
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r4, zero, .L262
.L261:
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
	beq	r5, zero, .L273
	ldw	r2, 0(r5)
	stw	r5, 4(r4)
	stw	r2, 0(r4)
	stw	r4, 0(r5)
	ldw	r3, 0(r4)
	beq	r3, zero, .L267
	stw	r4, 4(r3)
.L267:
	ret
.L273:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L275
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L275:
	ldw	r4, 4(r4)
	beq	r4, zero, .L274
	stw	r2, 0(r4)
.L274:
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
	beq	r17, zero, .L284
	mov	r21, r5
	mov	fp, zero
	br	.L286
.L299:
	add	r21, r21, r16
	beq	r17, fp, .L284
.L286:
	mov	r5, r21
	mov	r4, r18
	callr	r20
	mov	r19, r21
	addi	fp, fp, 1
	bne	r2, zero, .L299
.L283:
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
.L284:
	ldw	r2, 4(sp)
	mul	r19, r16, r17
	ldw	r4, 0(sp)
	addi	r3, r17, 1
	stw	r3, 0(r2)
	add	r19, r4, r19
	beq	r16, zero, .L283
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L283
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
	beq	r19, zero, .L301
	mov	r18, r4
	mov	r21, r7
	mov	r16, r5
	mov	r17, zero
	br	.L303
.L312:
	add	r16, r16, r21
	beq	r19, r17, .L301
.L303:
	mov	r5, r16
	mov	r4, r18
	callr	r20
	mov	fp, r16
	addi	r17, r17, 1
	bne	r2, zero, .L312
.L300:
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
.L301:
	mov	fp, zero
	br	.L300
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L314
	sub	r2, zero, r4
.L314:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
.L322:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L316
	bne	r6, zero, .L316
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L317
	cmpeqi	r8, r3, 45
	beq	r8, zero, .L337
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r10, r3, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L327
	movi	r13, 1
.L320:
	mov	r2, zero
.L324:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L324
	bne	r13, zero, .L315
	sub	r2, r14, r15
	ret
.L316:
	addi	r4, r4, 1
	br	.L322
.L337:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bne	r2, zero, .L320
	ret
.L327:
	mov	r2, zero
.L315:
	ret
.L317:
	ldb	r3, 1(r4)
	mov	r13, zero
	addi	r4, r4, 1
	addi	r9, r3, -48
	cmpltui	r2, r9, 10
	bne	r2, zero, .L320
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
.L343:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L339
	bne	r6, zero, .L339
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L340
	cmpeqi	r10, r3, 45
	beq	r10, zero, .L360
	ldb	r3, 1(r4)
	movi	r13, 1
	addi	r4, r4, 1
	addi	r11, r3, -48
	cmpltui	r2, r11, 10
	beq	r2, zero, .L361
.L344:
	mov	r2, zero
.L347:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L347
	bne	r13, zero, .L338
	sub	r2, r14, r15
	ret
.L339:
	addi	r4, r4, 1
	br	.L343
.L360:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	beq	r2, zero, .L362
.L351:
	mov	r13, zero
	br	.L344
.L340:
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r8, r3, -48
	cmpgeui	r9, r8, 10
	beq	r9, zero, .L351
	mov	r2, zero
.L338:
	ret
.L362:
	ret
.L361:
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
.L370:
	ldb	r5, 0(r4)
	addi	r2, r5, -9
	cmpeqi	r3, r5, 32
	cmpltui	r6, r2, 5
	bne	r3, zero, .L364
	bne	r6, zero, .L364
	cmpeqi	r7, r5, 43
	bne	r7, zero, .L365
	cmpeqi	r9, r5, 45
	beq	r9, zero, .L386
	ldb	r5, 1(r4)
	addi	r4, r4, 1
	addi	r10, r5, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L375
	movi	r13, 1
.L368:
	mov	r2, zero
	mov	r3, zero
	movi	r14, 10
.L372:
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
	bne	r6, zero, .L372
	bne	r13, zero, .L363
	sub	r2, r8, r15
	cmpltu	r4, r8, r2
	sub	r5, r9, r10
	sub	r3, r5, r4
	ret
.L364:
	addi	r4, r4, 1
	br	.L370
.L386:
	addi	r12, r5, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bne	r2, zero, .L368
.L385:
	mov	r3, zero
.L363:
	ret
.L365:
	ldb	r5, 1(r4)
	mov	r13, zero
	addi	r4, r4, 1
	addi	r8, r5, -48
	cmpltui	r2, r8, 10
	bne	r2, zero, .L368
	br	.L385
.L375:
	mov	r2, zero
	br	.L385
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
	beq	r6, zero, .L388
	mov	r16, r6
	mov	r20, r4
	mov	r18, r5
	mov	r19, r7
.L391:
	srli	fp, r16, 1
	mov	r4, r20
	addi	r16, r16, -1
	mul	r17, fp, r19
	add	r17, r18, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L392
	beq	r2, zero, .L387
	sub	r16, r16, fp
	add	r18, r17, r19
	bne	r16, zero, .L391
.L388:
	mov	r17, zero
.L387:
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
.L392:
	mov	r16, fp
	bne	r16, zero, .L391
	br	.L388
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
	beq	r6, zero, .L406
.L414:
	srai	r21, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r21, r18
	addi	r16, r16, -1
	srai	r16, r16, 1
	add	fp, r17, fp
	mov	r5, fp
	callr	r20
	beq	r2, zero, .L401
	bge	zero, r2, .L404
	add	r17, fp, r18
	bne	r16, zero, .L414
.L406:
	mov	fp, zero
.L401:
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
.L404:
	beq	r21, zero, .L406
	mov	r16, r21
	br	.L414
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
	bge	r5, zero, .L419
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L419:
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
	bge	r4, zero, .L424
	sub	r2, zero, r4
.L424:
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
	bge	r5, zero, .L427
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L427:
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
	beq	r2, zero, .L439
.L432:
	beq	r5, r2, .L440
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L432
	mov	r2, zero
	ret
.L440:
	mov	r2, r4
	ret
.L439:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L444:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L443
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r3, zero, .L444
.L443:
	blt	r3, r2, .L446
	cmplt	r2, r2, r3
	ret
.L446:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L451:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L451
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L456
	mov	r5, r4
.L455:
	ldw	r3, 4(r5)
	addi	r5, r5, 4
	bne	r3, zero, .L455
	sub	r4, r5, r4
	srai	r2, r4, 2
	ret
.L456:
	mov	r2, zero
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L464
.L470:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	addi	r6, r6, -1
	bne	r2, r3, .L461
	beq	r2, zero, .L461
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L470
.L464:
	mov	r2, zero
	ret
.L461:
	ldw	r4, 0(r4)
	ldw	r5, 0(r5)
	blt	r4, r5, .L471
	cmplt	r2, r5, r4
	ret
.L471:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L476
.L483:
	ldw	r2, 0(r4)
	addi	r6, r6, -1
	beq	r2, r5, .L482
	addi	r4, r4, 4
	bne	r6, zero, .L483
.L476:
	mov	r2, zero
	ret
.L482:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L490
.L499:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r3, r2, .L498
	addi	r5, r5, 4
	bne	r6, zero, .L499
.L490:
	mov	r2, zero
	ret
.L498:
	blt	r3, r2, .L500
	cmplt	r2, r2, r3
	ret
.L500:
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
	beq	r6, zero, .L502
	slli	r6, r6, 2
	call	memcpy
.L502:
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
	beq	r4, r5, .L515
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L522
	beq	r6, zero, .L515
	slli	r10, r3, 2
	add	r14, r5, r10
	add	r13, r2, r10
.L512:
	ldw	r11, 0(r14)
	mov	r12, r14
	addi	r13, r13, -4
	stw	r11, 4(r13)
	addi	r14, r14, -4
	bne	r5, r12, .L512
	ret
.L522:
	mov	r9, r2
	beq	r6, zero, .L515
.L510:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r9)
	addi	r5, r5, 4
	addi	r9, r9, 4
	bne	r6, zero, .L510
.L515:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L524
	mov	r6, r4
.L525:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L525
.L524:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L531
	add	r13, r4, r6
	add	r14, r5, r6
	beq	r6, zero, .L530
.L533:
	ldbu	r12, -1(r13)
	addi	r13, r13, -1
	addi	r14, r14, -1
	stb	r12, 0(r14)
	bne	r4, r13, .L533
	ret
.L531:
	bne	r4, r5, .L564
.L530:
	ret
.L564:
	beq	r6, zero, .L530
	addi	r2, r6, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L563
	or	r7, r5, r4
	andi	r8, r7, 3
	bne	r8, zero, .L563
	addi	r11, r4, 1
	sub	r9, r5, r11
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L534
	srli	r11, r6, 2
	mov	r15, r5
	slli	r12, r11, 2
	add	r13, r4, r12
.L535:
	ldw	r14, 0(r4)
	addi	r4, r4, 4
	addi	r15, r15, 4
	stw	r14, -4(r15)
	bne	r13, r4, .L535
	add	r5, r5, r12
	sub	r2, r6, r12
	beq	r6, r12, .L530
	ldbu	r4, 0(r13)
	cmpeqi	r6, r2, 1
	stb	r4, 0(r5)
	bne	r6, zero, .L530
	ldbu	r3, 1(r13)
	cmpeqi	r7, r2, 2
	stb	r3, 1(r5)
	bne	r7, zero, .L530
	ldbu	r8, 2(r13)
	stb	r8, 2(r5)
	ret
.L563:
	addi	r11, r4, 1
.L534:
	add	r9, r4, r6
	br	.L538
.L565:
	addi	r11, r11, 1
.L538:
	ldbu	r10, -1(r11)
	addi	r5, r5, 1
	stb	r10, -1(r5)
	bne	r11, r9, .L565
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L567
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	sll	r12, r4, r3
	mov	r11, zero
	blt	r14, zero, .L569
.L571:
	srl	r8, r5, r14
	mov	r5, zero
	or	r3, r5, r12
	or	r2, r8, r11
	ret
.L567:
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
	bge	r14, zero, .L571
.L569:
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
	blt	r2, zero, .L573
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	srl	r12, r5, r2
	mov	r11, zero
	blt	r14, zero, .L575
.L577:
	sll	r8, r4, r14
	mov	r4, zero
	or	r2, r4, r12
	or	r3, r8, r11
	ret
.L573:
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
	bge	r14, zero, .L577
.L575:
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
	br	.L592
.L595:
	beq	r5, zero, .L594
.L592:
	srl	r3, r4, r2
	addi	r2, r2, 1
	cmpnei	r5, r2, 32
	andi	r6, r3, 1
	beq	r6, zero, .L595
	ret
.L594:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L599
	andi	r2, r4, 1
	bne	r2, zero, .L596
	movi	r2, 1
.L598:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L598
	ret
.L599:
	mov	r2, zero
.L596:
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movhi	r3, 65408
	addi	r2, r3, -1
	custom	231, r5, r4, r2 # fcmplts r5, r4, r2
	bne	r5, zero, .L604
	movhi	r6, 32640
	addi	r7, r6, -1
	custom	246, r2, r4, r7 # fcmpgts r2, r4, r7
	ret
.L604:
	movi	r2, 1
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
	blt	r2, zero, .L608
	movhi	r2, 32752
	movi	r6, -1
	addi	r7, r2, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L605:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L608:
	movi	r2, 1
	br	.L605
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
	blt	r2, zero, .L613
	movhi	r2, 32752
	movi	r6, -1
	addi	r7, r2, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L610:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L613:
	movi	r2, 1
	br	.L610
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
	bne	r2, zero, .L618
	custom	253, r2, r17, r17 # fadds r2, r17, r17
	custom	250, r3, r2, r17 # fcmpeqs r3, r2, r17
	bne	r3, zero, .L618
	blt	r16, zero, .L631
	movhi	r8, 16384
.L619:
	andi	r4, r16, 1
	beq	r4, zero, .L620
.L621:
	custom	252, r17, r17, r8 # fmuls r17, r17, r8
.L620:
	movi	r5, 2
	div	r16, r16, r5
	beq	r16, zero, .L618
	andi	r7, r16, 1
	movi	r6, 2
	custom	252, r8, r8, r8 # fmuls r8, r8, r8
	bne	r7, zero, .L621
.L632:
	div	r16, r16, r6
	andi	r7, r16, 1
	custom	252, r8, r8, r8 # fmuls r8, r8, r8
	bne	r7, zero, .L621
	br	.L632
.L618:
	mov	r2, r17
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L631:
	movhi	r8, 16128
	br	.L619
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -28
	stw	r18, 16(sp)
	mov	r7, r5
	mov	r18, r6
	mov	r6, r4
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	stw	ra, 24(sp)
	stw	r19, 20(sp)
	mov	r16, r4
	mov	r17, r5
	call	__unorddf2
	bne	r2, zero, .L634
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r5, r16, r17 # faddd r4, r16, r16
	custom	4, r4, zero, zero # frdy r4
	mov	r6, r16
	mov	r7, r17
	call	__eqdf2
	beq	r2, zero, .L634
	mov	r6, zero
	blt	r18, zero, .L650
	movhi	r7, 16384
.L635:
	andi	r2, r18, 1
	beq	r2, zero, .L636
.L637:
	mov	r4, r16
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r16, r2
	mov	r17, r3
.L636:
	movi	r3, 2
	div	r18, r18, r3
	beq	r18, zero, .L634
	movi	r19, 2
.L638:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	andi	r8, r18, 1
	mov	r6, r2
	mov	r7, r3
	bne	r8, zero, .L637
	div	r18, r18, r19
	br	.L638
.L634:
	mov	r2, r16
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 28
	ret
.L650:
	movhi	r7, 16352
	br	.L635
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -28
	stw	r18, 16(sp)
	mov	r7, r5
	mov	r18, r6
	mov	r6, r4
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	stw	ra, 24(sp)
	stw	r19, 20(sp)
	mov	r16, r4
	mov	r17, r5
	call	__unorddf2
	bne	r2, zero, .L652
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r3, r16, r17 # faddd r2, r16, r16
	custom	4, r2, zero, zero # frdy r2
	mov	r6, r2
	mov	r7, r3
	mov	r4, r16
	mov	r5, r17
	call	__eqdf2
	beq	r2, zero, .L652
	mov	r6, zero
	blt	r18, zero, .L668
	movhi	r7, 16384
.L653:
	andi	r2, r18, 1
	beq	r2, zero, .L654
.L655:
	mov	r4, r16
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r16, r2
	mov	r17, r3
.L654:
	movi	r3, 2
	div	r18, r18, r3
	beq	r18, zero, .L652
	movi	r19, 2
.L656:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	andi	r4, r18, 1
	mov	r6, r2
	mov	r7, r3
	bne	r4, zero, .L655
	div	r18, r18, r19
	br	.L656
.L652:
	mov	r2, r16
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 28
	ret
.L668:
	movhi	r7, 16352
	br	.L653
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L670
	addi	r3, r6, -1
	cmpltui	r4, r3, 4
	bne	r4, zero, .L671
	or	r7, r2, r5
	andi	r8, r7, 3
	bne	r8, zero, .L671
	srli	r9, r6, 2
	mov	r14, r2
	slli	r10, r9, 2
	add	r11, r5, r10
.L672:
	ldw	r12, 0(r14)
	ldw	r13, 0(r5)
	addi	r14, r14, 4
	addi	r5, r5, 4
	xor	r15, r13, r12
	stw	r15, -4(r14)
	bne	r11, r5, .L672
	add	r3, r2, r10
	sub	r5, r6, r10
	beq	r6, r10, .L670
	ldbu	r6, 0(r3)
	ldbu	r7, 0(r11)
	cmpeqi	r4, r5, 1
	xor	r8, r6, r7
	stb	r8, 0(r3)
	bne	r4, zero, .L670
	ldbu	r9, 1(r3)
	ldbu	r10, 1(r11)
	cmpeqi	r12, r5, 2
	xor	r13, r10, r9
	stb	r13, 1(r3)
	bne	r12, zero, .L670
	ldbu	r14, 2(r3)
	ldbu	r11, 2(r11)
	xor	r15, r11, r14
	stb	r15, 2(r3)
	ret
.L671:
	add	r6, r5, r6
	mov	r3, r2
.L674:
	ldbu	r4, 0(r3)
	ldbu	r7, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r8, r7, r4
	stb	r8, -1(r3)
	bne	r6, r5, .L674
.L670:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L694
	mov	r11, r4
.L689:
	ldb	r7, 1(r11)
	addi	r11, r11, 1
	bne	r7, zero, .L689
.L702:
	beq	r6, zero, .L691
.L704:
	ldbu	r4, 0(r5)
	addi	r6, r6, -1
	addi	r5, r5, 1
	andi	r8, r4, 255
	xori	r9, r8, 128
	stb	r4, 0(r11)
	addi	r10, r9, -128
	beq	r10, zero, .L703
	addi	r11, r11, 1
	bne	r6, zero, .L704
.L691:
	stb	zero, 0(r11)
	ret
.L703:
	ret
.L694:
	mov	r11, r4
	br	.L702
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L705
.L706:
	add	r3, r4, r2
	ldb	r6, 0(r3)
	bne	r6, zero, .L708
.L705:
	ret
.L708:
	addi	r2, r2, 1
	bne	r5, r2, .L706
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L718
.L714:
	mov	r3, r5
	br	.L717
.L716:
	beq	r6, r7, .L715
.L717:
	ldb	r6, 0(r3)
	addi	r3, r3, 1
	bne	r6, zero, .L716
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L714
.L718:
	mov	r2, zero
.L715:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r6, zero
.L725:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, r5, .L724
	mov	r2, r6
.L724:
	mov	r6, r2
	addi	r4, r4, 1
	bne	r3, zero, .L725
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	beq	r8, zero, .L738
	mov	r2, r5
.L729:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L729
	sub	r10, r2, r5
	beq	r2, r5, .L738
	addi	r14, r10, -1
	br	.L747
.L749:
	addi	r4, r4, 1
	beq	r2, zero, .L748
.L747:
	ldbu	r7, 0(r4)
	andi	r6, r7, 255
	xori	r9, r6, 128
	addi	r2, r9, -128
	bne	r2, r8, .L749
	add	r13, r4, r14
	mov	r3, r5
	mov	r12, r4
	andi	r15, r7, 0xff
	br	.L731
.L750:
	beq	r12, r13, .L732
	addi	r12, r12, 1
	bne	r11, r15, .L732
	ldbu	r15, 0(r12)
	addi	r3, r3, 1
	beq	r15, zero, .L732
.L731:
	ldbu	r11, 0(r3)
	bne	r11, zero, .L750
.L732:
	ldbu	r2, 0(r3)
	beq	r15, r2, .L738
	addi	r4, r4, 1
	br	.L747
.L748:
	ret
.L738:
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
	blt	r2, zero, .L762
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L755
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L754
.L755:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L762:
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L755
.L754:
	xorhi	r16, r16, 32768
	br	.L755
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	mov	r2, r4
	beq	r7, zero, .L763
	bltu	r5, r7, .L774
	sub	r5, r5, r7
	add	r9, r4, r5
	bltu	r9, r4, .L774
	ldb	r12, 0(r6)
	addi	r7, r7, -1
	addi	r6, r6, 1
.L769:
	ldb	r3, 0(r2)
	addi	r10, r2, 1
	beq	r3, r12, .L779
	mov	r2, r10
.L765:
	bgeu	r9, r2, .L769
.L774:
	mov	r2, zero
.L763:
	ret
.L779:
	mov	r15, r6
	beq	r7, zero, .L763
.L768:
	mov	r14, r10
	add	r5, r10, r7
	br	.L766
.L767:
	beq	r14, r5, .L763
.L766:
	ldbu	r8, 0(r14)
	ldbu	r13, 0(r15)
	addi	r14, r14, 1
	addi	r15, r15, 1
	beq	r8, r13, .L767
	bltu	r9, r10, .L774
	ldb	r4, 0(r10)
	addi	r2, r10, 1
	bne	r12, r4, .L765
	mov	r11, r10
	mov	r15, r6
	mov	r10, r2
	mov	r2, r11
	br	.L768
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
	beq	r6, zero, .L781
	call	memmove
.L781:
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
	addi	sp, sp, -28
	stw	r19, 12(sp)
	mov	r7, zero
	mov	r19, r6
	mov	r6, zero
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r18, 8(sp)
	mov	r16, r4
	mov	r17, r5
	call	__ltdf2
	mov	r6, zero
	blt	r2, zero, .L809
	movhi	r7, 16368
	mov	r4, r16
	mov	r5, r17
	call	__gedf2
	blt	r2, zero, .L810
	mov	r20, zero
.L789:
	mov	r21, zero
.L795:
	mov	r4, r16
	mov	r5, r17
	mov	r6, zero
	movhi	r7, 16352
	call	__muldf3
	mov	r5, r3
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r2
	addi	r21, r21, 1
	mov	r16, r2
	mov	r17, r3
	call	__gedf2
	bge	r2, zero, .L795
.L796:
	stw	r21, 0(r19)
	mov	r2, r16
	beq	r20, zero, .L802
	xorhi	r3, r17, 32768
.L786:
	ldw	ra, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
.L810:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__ltdf2
	bge	r2, zero, .L792
	mov	r6, zero
	mov	r7, zero
	mov	r4, r16
	mov	r5, r17
	call	__nedf2
	bne	r2, zero, .L801
.L792:
	stw	zero, 0(r19)
	mov	r2, r16
	mov	r3, r17
	br	.L786
.L809:
	movhi	r7, 49136
	mov	r4, r16
	mov	r5, r17
	mov	r21, r16
	xorhi	r18, r17, 32768
	call	__ledf2
	bgt	r2, zero, .L811
	mov	r17, r18
	movi	r20, 1
	br	.L789
.L802:
	mov	r3, r17
	br	.L786
.L811:
	mov	r6, zero
	movhi	r7, 49120
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	ble	r2, zero, .L792
	movi	r20, 1
.L790:
	mov	r16, r21
	mov	r17, r18
	mov	r21, zero
.L797:
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r17, r16, r17 # faddd r16, r16, r16
	custom	4, r16, zero, zero # frdy r16
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	addi	r21, r21, -1
	call	__ltdf2
	blt	r2, zero, .L797
	br	.L796
.L801:
	mov	r21, r16
	mov	r18, r17
	mov	r20, zero
	br	.L790
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or	r2, r4, r5
	beq	r2, zero, .L816
	mov	r2, zero
	mov	r3, zero
.L815:
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
	bne	r10, zero, .L815
	ret
.L816:
	mov	r2, zero
	mov	r3, zero
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	bgeu	r5, r4, .L842
	movi	r2, 32
	movi	r10, 1
	br	.L819
.L823:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L821
	beq	r2, zero, .L822
.L819:
	addi	r2, r2, -1
	bge	r5, zero, .L823
.L824:
	mov	r2, zero
.L829:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L826
	mov	r4, r8
.L826:
	beq	r7, zero, .L827
	mov	r9, r10
.L828:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L829
.L822:
	bne	r6, zero, .L843
.L818:
	ret
.L827:
	mov	r9, zero
	br	.L828
.L821:
	bne	r10, zero, .L824
	mov	r2, zero
	beq	r6, zero, .L818
.L843:
	mov	r2, r4
	ret
.L842:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L822
	mov	r4, r3
	br	.L822
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
	beq	r5, r6, .L846
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
.L846:
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
	beq	r2, r6, .L860
.L855:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L860:
	bne	r3, r2, .L855
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L864
.L863:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L863
	ret
.L864:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	movi	r10, -8
	srli	r9, r6, 3
	and	r12, r6, r10
	bltu	r4, r5, .L867
	add	r2, r5, r6
	bgeu	r2, r4, .L896
.L867:
	beq	r9, zero, .L870
	slli	r13, r9, 3
	mov	r2, r4
	mov	r9, r5
	add	r14, r13, r5
.L871:
	ldw	r15, 0(r9)
	ldw	r10, 4(r9)
	addi	r9, r9, 8
	stw	r15, 0(r2)
	stw	r10, 4(r2)
	addi	r2, r2, 8
	bne	r9, r14, .L871
	bgeu	r12, r6, .L866
	sub	r11, r6, r12
	addi	r3, r11, -1
	cmpltui	r7, r3, 7
	bne	r7, zero, .L895
	addi	r8, r12, 1
	add	r3, r4, r12
	add	r13, r5, r8
	sub	r14, r3, r13
	cmpgeui	r15, r14, 3
	add	r2, r5, r12
	beq	r15, zero, .L873
	or	r10, r2, r3
	andi	r9, r10, 3
	bne	r9, zero, .L873
	srli	r7, r11, 2
	slli	r13, r7, 2
	add	r8, r2, r13
.L874:
	ldw	r14, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r14, -4(r3)
	bne	r2, r8, .L874
	add	r12, r12, r13
	beq	r11, r13, .L866
	add	r2, r5, r12
	ldbu	r11, 0(r2)
	add	r3, r4, r12
	addi	r15, r12, 1
	stb	r11, 0(r3)
	bgeu	r15, r6, .L866
	add	r10, r5, r15
	ldbu	r9, 0(r10)
	add	r7, r4, r15
	addi	r13, r12, 2
	stb	r9, 0(r7)
	bgeu	r13, r6, .L866
	add	r5, r5, r13
	ldbu	r6, 0(r5)
	add	r4, r4, r13
	stb	r6, 0(r4)
	ret
.L896:
	addi	r8, r6, -1
	beq	r6, zero, .L866
.L868:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r11, r8, -1
	bne	r11, zero, .L868
.L866:
	ret
.L870:
	beq	r6, zero, .L866
.L895:
	add	r3, r4, r12
	add	r2, r5, r12
.L873:
	add	r8, r5, r6
.L876:
	ldbu	r14, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r14, -1(r3)
	bne	r2, r8, .L876
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r10, r6, 1
	bltu	r4, r5, .L898
	add	r2, r5, r6
	bgeu	r2, r4, .L925
.L898:
	beq	r10, zero, .L901
	addi	r11, r10, -1
	cmpltui	r12, r11, 9
	bne	r12, zero, .L902
	or	r13, r5, r4
	andi	r14, r13, 3
	bne	r14, zero, .L902
	addi	r15, r5, 2
	beq	r4, r15, .L902
	srli	r9, r6, 2
	mov	r2, r5
	mov	r3, r4
	slli	r7, r9, 2
	add	r8, r7, r5
.L903:
	ldw	r11, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r11, -4(r3)
	bne	r2, r8, .L903
	add	r12, r9, r9
	beq	r10, r12, .L901
	add	r10, r12, r12
	add	r13, r5, r10
	ldhu	r14, 0(r13)
	add	r15, r4, r10
	sth	r14, 0(r15)
.L901:
	andi	r3, r6, 1
	beq	r3, zero, .L897
.L926:
	add	r5, r5, r6
	ldbu	r12, -1(r5)
	add	r4, r4, r6
	stb	r12, -1(r4)
	ret
.L925:
	addi	r8, r6, -1
	beq	r6, zero, .L897
.L899:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r9, r8, -1
	bne	r9, zero, .L899
.L897:
	ret
.L902:
	add	r9, r10, r10
	mov	r11, r5
	mov	r2, r4
	add	r8, r9, r5
.L905:
	ldhu	r7, 0(r11)
	addi	r11, r11, 2
	addi	r2, r2, 2
	sth	r7, -2(r2)
	bne	r8, r11, .L905
	andi	r3, r6, 1
	beq	r3, zero, .L897
	br	.L926
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	movi	r9, -4
	srli	r8, r6, 2
	and	r12, r6, r9
	bltu	r4, r5, .L928
	add	r2, r5, r6
	bgeu	r2, r4, .L957
.L928:
	beq	r8, zero, .L931
	slli	r13, r8, 2
	mov	r9, r5
	mov	r8, r4
	add	r14, r13, r5
.L932:
	ldw	r15, 0(r9)
	addi	r9, r9, 4
	addi	r8, r8, 4
	stw	r15, -4(r8)
	bne	r9, r14, .L932
	bgeu	r12, r6, .L927
	sub	r11, r6, r12
	addi	r2, r11, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L956
	addi	r7, r12, 1
	add	r3, r4, r12
	add	r10, r5, r7
	sub	r13, r3, r10
	cmpgeui	r14, r13, 3
	add	r2, r5, r12
	beq	r14, zero, .L934
	or	r15, r2, r3
	andi	r9, r15, 3
	bne	r9, zero, .L934
	srli	r8, r11, 2
	slli	r10, r8, 2
	add	r13, r2, r10
.L935:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r13, .L935
	add	r12, r12, r10
	beq	r11, r10, .L927
	add	r11, r5, r12
	ldbu	r14, 0(r11)
	add	r3, r4, r12
	addi	r2, r12, 1
	stb	r14, 0(r3)
	bgeu	r2, r6, .L927
	add	r15, r5, r2
	ldbu	r8, 0(r15)
	add	r10, r4, r2
	addi	r9, r12, 2
	stb	r8, 0(r10)
	bgeu	r9, r6, .L927
	add	r5, r5, r9
	ldbu	r6, 0(r5)
	add	r4, r4, r9
	stb	r6, 0(r4)
	ret
.L957:
	addi	r10, r6, -1
	beq	r6, zero, .L927
.L929:
	add	r3, r5, r10
	ldbu	r6, 0(r3)
	add	r7, r4, r10
	addi	r10, r10, -1
	stb	r6, 0(r7)
	cmpnei	r11, r10, -1
	bne	r11, zero, .L929
.L927:
	ret
.L931:
	beq	r6, zero, .L927
.L956:
	add	r3, r4, r12
	add	r2, r5, r12
.L934:
	add	r13, r5, r6
.L937:
	ldbu	r7, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r2, r13, .L937
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
	custom	243, r2, r4, zero # floatus r2, r4
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
	bne	r2, zero, .L970
	srai	r2, r4, 14
	bne	r2, zero, .L967
	srai	r3, r4, 13
	bne	r3, zero, .L971
	srai	r5, r4, 12
	bne	r5, zero, .L972
	srai	r6, r4, 11
	bne	r6, zero, .L973
	srai	r7, r4, 10
	bne	r7, zero, .L974
	srai	r8, r4, 9
	bne	r8, zero, .L975
	srai	r9, r4, 8
	bne	r9, zero, .L976
	srai	r10, r4, 7
	bne	r10, zero, .L977
	srai	r11, r4, 6
	bne	r11, zero, .L978
	srai	r12, r4, 5
	bne	r12, zero, .L979
	srai	r13, r4, 4
	bne	r13, zero, .L980
	srai	r14, r4, 3
	bne	r14, zero, .L981
	srai	r15, r4, 2
	bne	r15, zero, .L982
	srai	r2, r4, 1
	bne	r2, zero, .L983
	movi	r2, 16
	bne	r4, zero, .L986
.L967:
	ret
.L970:
	mov	r2, zero
	ret
.L981:
	movi	r2, 12
	ret
.L986:
	movi	r2, 15
	ret
.L971:
	movi	r2, 2
	ret
.L972:
	movi	r2, 3
	ret
.L973:
	movi	r2, 4
	ret
.L974:
	movi	r2, 5
	ret
.L975:
	movi	r2, 6
	ret
.L976:
	movi	r2, 7
	ret
.L977:
	movi	r2, 8
	ret
.L978:
	movi	r2, 9
	ret
.L979:
	movi	r2, 10
	ret
.L980:
	movi	r2, 11
	ret
.L982:
	movi	r2, 13
	ret
.L983:
	movi	r2, 14
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi	r2, r4, 1
	bne	r2, zero, .L990
	andi	r3, r4, 2
	bne	r3, zero, .L991
	andi	r5, r4, 4
	bne	r5, zero, .L992
	andi	r6, r4, 8
	bne	r6, zero, .L993
	andi	r7, r4, 16
	bne	r7, zero, .L994
	andi	r8, r4, 32
	bne	r8, zero, .L995
	andi	r9, r4, 64
	bne	r9, zero, .L996
	andi	r10, r4, 128
	bne	r10, zero, .L997
	andi	r11, r4, 256
	bne	r11, zero, .L998
	andi	r12, r4, 512
	bne	r12, zero, .L999
	andi	r13, r4, 1024
	bne	r13, zero, .L1000
	andi	r14, r4, 2048
	bne	r14, zero, .L1001
	andi	r15, r4, 4096
	bne	r15, zero, .L1002
	andi	r2, r4, 8192
	bne	r2, zero, .L1003
	andi	r3, r4, 16384
	bne	r3, zero, .L1004
	andi	r4, r4, 0xffff
	srai	r5, r4, 15
	movi	r2, 16
	bne	r5, zero, .L1007
.L987:
	ret
.L990:
	mov	r2, zero
	ret
.L991:
	movi	r2, 1
	ret
.L1002:
	movi	r2, 12
	ret
.L992:
	movi	r2, 2
	ret
.L993:
	movi	r2, 3
	ret
.L994:
	movi	r2, 4
	ret
.L995:
	movi	r2, 5
	ret
.L996:
	movi	r2, 6
	ret
.L997:
	movi	r2, 7
	ret
.L998:
	movi	r2, 8
	ret
.L999:
	movi	r2, 9
	ret
.L1000:
	movi	r2, 10
	ret
.L1001:
	movi	r2, 11
	ret
.L1003:
	movi	r2, 13
	ret
.L1004:
	movi	r2, 14
	ret
.L1007:
	movi	r2, 15
	ret
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	movhi	r2, 18176
	custom	228, r3, r4, r2 # fcmpges r3, r4, r2
	bne	r3, zero, .L1014
	custom	244, r2, r4, zero # fixsi r2, r4
	ret
.L1014:
	movhi	r5, 18176
	custom	254, r4, r4, r5 # fsubs r4, r4, r5
	custom	244, r6, r4, zero # fixsi r6, r4
	movui	r7, 32768
	add	r2, r6, r7
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
	beq	r4, zero, .L1020
.L1019:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L1019
	ret
.L1020:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L1025
	beq	r5, zero, .L1026
.L1024:
	andi	r3, r5, 1
	mul	r6, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r6
	bne	r5, zero, .L1024
	ret
.L1025:
	ret
.L1026:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	bgeu	r5, r4, .L1052
	movi	r2, 32
	movi	r10, 1
	br	.L1029
.L1033:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L1031
	beq	r2, zero, .L1032
.L1029:
	addi	r2, r2, -1
	bge	r5, zero, .L1033
.L1034:
	mov	r2, zero
.L1039:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1036
	mov	r4, r8
.L1036:
	beq	r7, zero, .L1037
	mov	r9, r10
.L1038:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L1039
.L1032:
	bne	r6, zero, .L1053
.L1028:
	ret
.L1037:
	mov	r9, zero
	br	.L1038
.L1031:
	bne	r10, zero, .L1034
	mov	r2, zero
	beq	r6, zero, .L1028
.L1053:
	mov	r2, r4
	ret
.L1052:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1032
	mov	r4, r3
	br	.L1032
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	custom	231, r2, r4, r5 # fcmplts r2, r4, r5
	bne	r2, zero, .L1056
	custom	246, r2, r4, r5 # fcmpgts r2, r4, r5
	ret
.L1056:
	movi	r2, -1
	ret
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
	blt	r2, zero, .L1060
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L1057:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L1060:
	movi	r2, -1
	br	.L1057
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
	blt	r5, zero, .L1078
	beq	r5, zero, .L1070
	mov	r8, zero
.L1066:
	movi	r3, 32
	mov	r2, zero
	br	.L1069
.L1079:
	beq	r7, zero, .L1068
.L1069:
	andi	r6, r5, 1
	mul	r9, r6, r4
	srai	r5, r5, 1
	addi	r3, r3, -1
	andi	r7, r3, 0xff
	add	r2, r2, r9
	add	r4, r4, r4
	bne	r5, zero, .L1079
.L1068:
	beq	r8, zero, .L1064
	sub	r2, zero, r2
	ret
.L1070:
	mov	r2, zero
.L1064:
	ret
.L1078:
	sub	r5, zero, r5
	movi	r8, 1
	br	.L1066
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L1108
	movi	r2, 1
	mov	r8, zero
.L1081:
	bge	r5, zero, .L1082
	sub	r5, zero, r5
	mov	r8, r2
.L1082:
	mov	r6, r4
	mov	r3, r5
	bgeu	r5, r4, .L1109
	movi	r7, 32
	movi	r5, 1
	br	.L1083
.L1087:
	beq	r7, zero, .L1088
.L1083:
	add	r3, r3, r3
	addi	r7, r7, -1
	add	r5, r5, r5
	bltu	r3, r4, .L1087
.L1088:
	mov	r2, zero
	beq	r5, zero, .L1086
.L1085:
	sub	r9, r6, r3
	cmpgeu	r4, r6, r3
	bltu	r6, r3, .L1090
	mov	r6, r9
.L1090:
	beq	r4, zero, .L1091
	mov	r10, r5
.L1092:
	srli	r5, r5, 1
	srli	r3, r3, 1
	or	r2, r2, r10
	bne	r5, zero, .L1085
.L1086:
	beq	r8, zero, .L1080
	sub	r2, zero, r2
	ret
.L1091:
	mov	r10, zero
	br	.L1092
.L1080:
	ret
.L1108:
	sub	r4, zero, r4
	mov	r2, zero
	movi	r8, 1
	br	.L1081
.L1109:
	cmpgeu	r2, r4, r5
	br	.L1086
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L1138
	mov	r7, zero
.L1111:
	mov	r2, r4
	bge	r5, zero, .L1112
	sub	r5, zero, r5
.L1112:
	mov	r3, r5
	bgeu	r5, r4, .L1139
	movi	r6, 32
	movi	r5, 1
	br	.L1113
.L1117:
	beq	r6, zero, .L1118
.L1113:
	add	r3, r3, r3
	addi	r6, r6, -1
	add	r5, r5, r5
	bltu	r3, r4, .L1117
.L1118:
	beq	r5, zero, .L1137
.L1115:
	sub	r4, r2, r3
	bltu	r2, r3, .L1120
	mov	r2, r4
.L1120:
	srli	r5, r5, 1
	srli	r3, r3, 1
	bne	r5, zero, .L1115
.L1116:
	beq	r7, zero, .L1110
	sub	r2, zero, r2
	ret
.L1110:
	ret
.L1138:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L1111
.L1139:
	sub	r2, r4, r5
	bgeu	r4, r5, .L1116
.L1137:
	mov	r2, r4
	br	.L1116
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r3, r5, 0xffff
	andi	r9, r4, 0xffff
	bgeu	r3, r9, .L1294
	andi	r2, r5, 65535
	xori	r7, r2, 32768
	addi	r8, r7, -32768
	blt	r8, zero, .L1145
	add	r10, r5, r5
	andi	r12, r10, 0xffff
	mov	r2, r10
	bgeu	r12, r9, .L1218
	andi	r13, r10, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1218
	slli	r3, r5, 2
	andi	r7, r3, 0xffff
	mov	r2, r3
	bgeu	r7, r9, .L1220
	andi	r8, r3, 65535
	xori	r11, r8, 32768
	addi	r10, r11, -32768
	blt	r10, zero, .L1220
	slli	r12, r5, 3
	andi	r13, r12, 0xffff
	mov	r2, r12
	bgeu	r13, r9, .L1222
	andi	r14, r12, 65535
	xori	r15, r14, 32768
	addi	r3, r15, -32768
	blt	r3, zero, .L1222
	slli	r8, r5, 4
	andi	r7, r8, 0xffff
	mov	r2, r8
	bgeu	r7, r9, .L1224
	andi	r11, r8, 65535
	xori	r10, r11, 32768
	addi	r12, r10, -32768
	blt	r12, zero, .L1224
	slli	r13, r5, 5
	andi	r14, r13, 0xffff
	mov	r2, r13
	bgeu	r14, r9, .L1226
	andi	r15, r13, 65535
	xori	r3, r15, 32768
	addi	r8, r3, -32768
	blt	r8, zero, .L1226
	slli	r11, r5, 6
	andi	r7, r11, 0xffff
	mov	r2, r11
	bgeu	r7, r9, .L1228
	andi	r10, r11, 65535
	xori	r12, r10, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1228
	slli	r14, r5, 7
	andi	r15, r14, 0xffff
	mov	r2, r14
	bgeu	r15, r9, .L1230
	andi	r3, r14, 65535
	xori	r8, r3, 32768
	addi	r11, r8, -32768
	blt	r11, zero, .L1230
	slli	r10, r5, 8
	andi	r7, r10, 0xffff
	mov	r2, r10
	bgeu	r7, r9, .L1232
	andi	r12, r10, 65535
	xori	r13, r12, 32768
	addi	r14, r13, -32768
	blt	r14, zero, .L1232
	slli	r15, r5, 9
	andi	r3, r15, 0xffff
	mov	r2, r15
	bgeu	r3, r9, .L1234
	andi	r8, r15, 65535
	xori	r11, r8, 32768
	addi	r10, r11, -32768
	blt	r10, zero, .L1234
	slli	r12, r5, 10
	andi	r7, r12, 0xffff
	mov	r2, r12
	bgeu	r7, r9, .L1236
	andi	r13, r12, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1236
	slli	r3, r5, 11
	andi	r8, r3, 0xffff
	mov	r2, r3
	bgeu	r8, r9, .L1238
	andi	r11, r3, 65535
	xori	r10, r11, 32768
	addi	r12, r10, -32768
	blt	r12, zero, .L1238
	slli	r13, r5, 12
	andi	r7, r13, 0xffff
	mov	r2, r13
	bgeu	r7, r9, .L1240
	andi	r14, r13, 65535
	xori	r15, r14, 32768
	addi	r3, r15, -32768
	blt	r3, zero, .L1240
	slli	r8, r5, 13
	andi	r11, r8, 0xffff
	mov	r2, r8
	bgeu	r11, r9, .L1242
	andi	r10, r8, 65535
	xori	r12, r10, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1242
	slli	r14, r5, 14
	andi	r7, r14, 0xffff
	mov	r2, r14
	bgeu	r7, r9, .L1244
	andi	r15, r14, 65535
	xori	r3, r15, 32768
	addi	r8, r3, -32768
	blt	r8, zero, .L1244
	slli	r7, r5, 15
	andi	r5, r7, 0xffff
	mov	r11, r7
	bgeu	r5, r9, .L1245
	mov	r2, r4
	bne	r5, zero, .L1295
.L1148:
	bne	r6, zero, .L1140
	mov	r2, r11
	ret
.L1140:
	ret
.L1218:
	movi	r12, 2
.L1147:
	andi	r13, r2, 0xffff
	sub	r11, r4, r2
	bltu	r9, r13, .L1213
	mov	r14, r11
.L1214:
	bltu	r9, r13, .L1215
	mov	r10, r12
.L1216:
	srli	r2, r13, 1
	andi	r9, r14, 0xffff
	srli	r4, r12, 1
	andi	r15, r2, 0xffff
	sub	r3, r14, r2
	bltu	r9, r15, .L1150
	mov	r14, r3
.L1150:
	mov	r2, r14
	bgeu	r9, r15, .L1152
	mov	r4, zero
.L1152:
	srli	r9, r12, 2
	or	r8, r4, r10
	srli	r5, r13, 2
	mov	r11, r8
	beq	r9, zero, .L1148
	andi	r10, r14, 0xffff
	sub	r11, r14, r5
	cmpgeu	r7, r10, r5
	bltu	r10, r5, .L1154
	mov	r14, r11
.L1154:
	mov	r2, r14
	bne	r7, zero, .L1156
	mov	r9, zero
.L1156:
	srli	r5, r12, 3
	or	r4, r8, r9
	srli	r15, r13, 3
	mov	r11, r4
	beq	r5, zero, .L1148
	andi	r2, r14, 0xffff
	sub	r3, r14, r15
	cmpgeu	r8, r2, r15
	bltu	r2, r15, .L1158
	mov	r14, r3
.L1158:
	mov	r2, r14
	bne	r8, zero, .L1160
	mov	r5, zero
.L1160:
	srli	r9, r12, 4
	or	r4, r4, r5
	srli	r10, r13, 4
	mov	r11, r4
	beq	r9, zero, .L1148
	andi	r15, r14, 0xffff
	sub	r11, r14, r10
	cmpgeu	r7, r15, r10
	bltu	r15, r10, .L1162
	mov	r14, r11
.L1162:
	mov	r2, r14
	bne	r7, zero, .L1164
	mov	r9, zero
.L1164:
	srli	r10, r12, 5
	or	r3, r4, r9
	srli	r8, r13, 5
	mov	r11, r3
	beq	r10, zero, .L1148
	andi	r2, r14, 0xffff
	sub	r5, r14, r8
	cmpgeu	r4, r2, r8
	bltu	r2, r8, .L1166
	mov	r14, r5
.L1166:
	mov	r2, r14
	bne	r4, zero, .L1168
	mov	r10, zero
.L1168:
	srli	r9, r12, 6
	or	r15, r3, r10
	mov	r11, r15
	srli	r3, r13, 6
	beq	r9, zero, .L1148
	andi	r8, r14, 0xffff
	sub	r11, r14, r3
	cmpgeu	r7, r8, r3
	bltu	r8, r3, .L1170
	mov	r14, r11
.L1170:
	mov	r2, r14
	bne	r7, zero, .L1172
	mov	r9, zero
.L1172:
	srli	r10, r12, 7
	or	r5, r15, r9
	srli	r4, r13, 7
	mov	r11, r5
	beq	r10, zero, .L1148
	andi	r2, r14, 0xffff
	sub	r15, r14, r4
	cmpgeu	r3, r2, r4
	bltu	r2, r4, .L1174
	mov	r14, r15
.L1174:
	mov	r2, r14
	bne	r3, zero, .L1176
	mov	r10, zero
.L1176:
	srli	r9, r12, 8
	or	r8, r5, r10
	mov	r11, r8
	srli	r5, r13, 8
	beq	r9, zero, .L1148
	andi	r4, r14, 0xffff
	sub	r11, r14, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1178
	mov	r14, r11
.L1178:
	mov	r2, r14
	bne	r7, zero, .L1180
	mov	r9, zero
.L1180:
	srli	r10, r12, 9
	or	r15, r8, r9
	srli	r3, r13, 9
	mov	r11, r15
	beq	r10, zero, .L1148
	andi	r2, r14, 0xffff
	sub	r8, r14, r3
	cmpgeu	r5, r2, r3
	bltu	r2, r3, .L1182
	mov	r14, r8
.L1182:
	mov	r2, r14
	bne	r5, zero, .L1184
	mov	r10, zero
.L1184:
	srli	r9, r12, 10
	or	r4, r15, r10
	mov	r11, r4
	srli	r15, r13, 10
	beq	r9, zero, .L1148
	andi	r3, r14, 0xffff
	sub	r11, r14, r15
	cmpgeu	r7, r3, r15
	bltu	r3, r15, .L1186
	mov	r14, r11
.L1186:
	mov	r2, r14
	bne	r7, zero, .L1188
	mov	r9, zero
.L1188:
	srli	r10, r12, 11
	or	r8, r4, r9
	srli	r5, r13, 11
	mov	r11, r8
	beq	r10, zero, .L1148
	andi	r2, r14, 0xffff
	sub	r4, r14, r5
	cmpgeu	r15, r2, r5
	bltu	r2, r5, .L1190
	mov	r14, r4
.L1190:
	mov	r2, r14
	bne	r15, zero, .L1192
	mov	r10, zero
.L1192:
	srli	r9, r12, 12
	or	r3, r8, r10
	mov	r11, r3
	srli	r8, r13, 12
	beq	r9, zero, .L1148
	andi	r5, r14, 0xffff
	sub	r11, r14, r8
	cmpgeu	r7, r5, r8
	bltu	r5, r8, .L1194
	mov	r14, r11
.L1194:
	mov	r2, r14
	bne	r7, zero, .L1196
	mov	r9, zero
.L1196:
	srli	r10, r12, 13
	or	r4, r3, r9
	srli	r15, r13, 13
	mov	r11, r4
	beq	r10, zero, .L1148
	andi	r2, r14, 0xffff
	sub	r3, r14, r15
	cmpgeu	r8, r2, r15
	bltu	r2, r15, .L1198
	mov	r14, r3
.L1198:
	mov	r2, r14
	bne	r8, zero, .L1200
	mov	r10, zero
.L1200:
	srli	r9, r12, 14
	or	r5, r4, r10
	mov	r11, r5
	srli	r4, r13, 14
	beq	r9, zero, .L1148
	andi	r15, r14, 0xffff
	sub	r11, r14, r4
	cmpgeu	r7, r15, r4
	bltu	r15, r4, .L1202
	mov	r14, r11
.L1202:
	mov	r2, r14
	bne	r7, zero, .L1204
	mov	r9, zero
.L1204:
	or	r3, r5, r9
	cmpeqi	r12, r12, 16384
	srli	r13, r13, 15
	mov	r11, r3
	bne	r12, zero, .L1148
	andi	r2, r14, 0xffff
	sub	r8, r14, r13
	cmpgeu	r10, r2, r13
	bltu	r2, r13, .L1206
	mov	r14, r8
.L1206:
	mov	r2, r14
	or	r11, r3, r10
	br	.L1148
.L1215:
	mov	r10, zero
	br	.L1216
.L1213:
	mov	r14, r4
	br	.L1214
.L1220:
	movi	r12, 4
	br	.L1147
.L1222:
	movi	r12, 8
	br	.L1147
.L1224:
	movi	r12, 16
	br	.L1147
.L1234:
	movi	r12, 512
	br	.L1147
.L1295:
	movui	r12, 32768
	movi	r2, -32768
	br	.L1147
.L1226:
	movi	r12, 32
	br	.L1147
.L1228:
	movi	r12, 64
	br	.L1147
.L1230:
	movi	r12, 128
	br	.L1147
.L1232:
	movi	r12, 256
	br	.L1147
.L1294:
	sub	r2, r4, r5
	beq	r3, r9, .L1143
	mov	r2, r4
.L1143:
	cmpeq	r11, r3, r9
	br	.L1148
.L1236:
	movi	r12, 1024
	br	.L1147
.L1238:
	movi	r12, 2048
	br	.L1147
.L1240:
	movi	r12, 4096
	br	.L1147
.L1242:
	movi	r12, 8192
	br	.L1147
.L1244:
	movi	r12, 16384
	br	.L1147
.L1245:
	movi	r2, -32768
	movui	r12, 32768
	br	.L1147
.L1145:
	sub	r2, r4, r5
	movi	r11, 1
	br	.L1148
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	bgeu	r5, r4, .L1320
	movi	r2, 32
	movi	r10, 1
	br	.L1297
.L1301:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L1299
	beq	r2, zero, .L1300
.L1297:
	addi	r2, r2, -1
	bge	r5, zero, .L1301
.L1302:
	mov	r2, zero
.L1307:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1304
	mov	r4, r8
.L1304:
	beq	r7, zero, .L1305
	mov	r9, r10
.L1306:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L1307
.L1300:
	bne	r6, zero, .L1321
.L1296:
	ret
.L1305:
	mov	r9, zero
	br	.L1306
.L1299:
	bne	r10, zero, .L1302
	mov	r2, zero
	beq	r6, zero, .L1296
.L1321:
	mov	r2, r4
	ret
.L1320:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1300
	mov	r4, r3
	br	.L1300
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1323
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L1323:
	beq	r6, zero, .L1326
	movi	r3, 32
	sub	r7, r3, r6
	srl	r8, r4, r7
	sll	r5, r5, r6
	sll	r4, r4, r6
	or	r3, r8, r5
	mov	r2, r4
	ret
.L1326:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1328
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L1328:
	beq	r6, zero, .L1331
	movi	r7, 32
	sub	r3, r7, r6
	sll	r8, r5, r3
	srl	r4, r4, r6
	sra	r3, r5, r6
	or	r2, r8, r4
	ret
.L1331:
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
	bne	r5, zero, .L1335
	sub	r11, r11, r14
	add	r2, r12, r10
	add	r2, r11, r2
	ret
.L1335:
	mov	r11, zero
	add	r2, r12, r10
	add	r2, r11, r2
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1341
	blt	r7, r5, .L1342
	bltu	r4, r6, .L1341
	bltu	r6, r4, .L1342
	movi	r2, 1
	ret
.L1341:
	mov	r2, zero
	ret
.L1342:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1347
	blt	r7, r5, .L1346
	bltu	r4, r6, .L1347
	cmpltu	r2, r6, r4
	ret
.L1347:
	movi	r2, -1
	ret
.L1346:
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
	beq	r2, zero, .L1350
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1350:
	beq	r6, zero, .L1353
	movi	r3, 32
	sub	r7, r3, r6
	sll	r8, r5, r7
	srl	r4, r4, r6
	srl	r5, r5, r6
	or	r2, r8, r4
	mov	r3, r5
	ret
.L1353:
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
	beq	r2, zero, .L1363
.L1365:
	mov	r4, r17
	mov	r5, r16
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r7, 0(sp)
	ldw	r6, 4(sp)
	mov	r17, r2
	mov	r16, r3
.L1363:
	movi	r3, 2
	div	r20, r20, r3
	beq	r20, zero, .L1364
	movi	r19, 2
.L1366:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	andi	r4, r20, 1
	mov	r6, r2
	mov	r7, r3
	bne	r4, zero, .L1365
	div	r20, r20, r19
	br	.L1366
.L1364:
	bge	r18, zero, .L1362
	mov	r6, r17
	mov	r7, r16
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r17, r2
	mov	r16, r3
.L1362:
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
	beq	r2, zero, .L1376
	movhi	r2, 16256
.L1373:
	custom	252, r2, r2, r4 # fmuls r2, r2, r4
.L1371:
	movi	r3, 2
	div	r6, r6, r3
	beq	r6, zero, .L1372
	andi	r8, r6, 1
	movi	r7, 2
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1373
.L1377:
	div	r6, r6, r7
	andi	r8, r6, 1
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1373
	br	.L1377
.L1372:
	bge	r5, zero, .L1370
	movhi	r4, 16256
	custom	255, r2, r4, r2 # fdivs r2, r4, r2
.L1370:
	ret
.L1376:
	movhi	r2, 16256
	br	.L1371
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L1382
	bltu	r7, r5, .L1383
	bltu	r4, r6, .L1382
	bltu	r6, r4, .L1383
	movi	r2, 1
	ret
.L1382:
	mov	r2, zero
	ret
.L1383:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1388
	bltu	r7, r5, .L1387
	bltu	r4, r6, .L1388
	cmpltu	r2, r6, r4
	ret
.L1388:
	movi	r2, -1
	ret
.L1387:
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
	.global	__divdf3
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__nedf2
	.global	__gedf2
	.global	__ledf2
	.global	__muldf3
	.global	__eqdf2
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__ltdf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
