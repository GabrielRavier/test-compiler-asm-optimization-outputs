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
	br	.L20
.L18:
	addi	r7, r7, -1
	addi	r5, r5, 1
	addi	r4, r4, 1
	beq	r7, zero, .L20
.L16:
	ldbu	r3, 0(r5)
	stb	r3, 0(r4)
	andi	r3, r3, 0xff
	bne	r3, r6, .L18
	beq	r7, zero, .L20
	addi	r2, r4, 1
	ret
.L20:
	mov	r2, zero
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	andi	r5, r5, 0xff
	bne	r6, zero, .L28
	br	.L33
.L30:
	addi	r6, r6, -1
	addi	r4, r4, 1
	beq	r6, zero, .L33
.L28:
	ldbu	r2, 0(r4)
	bne	r2, r5, .L30
	mov	r2, r4
	beq	r6, zero, .L33
	ret
.L33:
	mov	r2, zero
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	beq	r6, zero, .L41
.L50:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	bne	r2, r3, .L49
	addi	r6, r6, -1
	addi	r4, r4, 1
	addi	r5, r5, 1
	bne	r6, zero, .L50
.L41:
	mov	r2, zero
	ret
.L49:
	beq	r6, zero, .L41
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
	beq	r6, zero, .L52
	call	memcpy
.L52:
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
.L58:
	beq	r6, r4, .L61
	ldbu	r3, 0(r6)
	mov	r2, r6
	addi	r6, r6, -1
	bne	r3, r5, .L58
	ret
.L61:
	mov	r2, zero
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	mov	r2, r4
	beq	r6, zero, .L63
	add	r6, r4, r6
	mov	r3, r4
.L64:
	stb	r5, 0(r3)
	addi	r3, r3, 1
	bne	r6, r3, .L64
.L63:
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
	beq	r3, zero, .L70
.L71:
	ldbu	r3, 1(r5)
	addi	r2, r2, 1
	addi	r5, r5, 1
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	stb	r3, 0(r2)
	bne	r4, zero, .L71
.L70:
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
	bne	r4, zero, .L77
	ret
.L79:
	ldbu	r3, 1(r2)
	addi	r2, r2, 1
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, zero, .L76
.L77:
	andi	r3, r3, 0xff
	bne	r3, r5, .L79
.L76:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
	br	.L85
.L88:
	addi	r2, r2, 1
	beq	r3, zero, .L87
.L85:
	ldb	r3, 0(r2)
	bne	r3, r5, .L88
	ret
.L87:
	mov	r2, zero
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldbu	r2, 0(r4)
	ldbu	r6, 0(r5)
	andi	r3, r2, 255
	andi	r7, r6, 255
	xori	r3, r3, 128
	xori	r7, r7, 128
	addi	r3, r3, -128
	addi	r7, r7, -128
	bne	r3, r7, .L91
.L90:
	beq	r3, zero, .L91
	ldbu	r2, 1(r4)
	ldbu	r6, 1(r5)
	addi	r4, r4, 1
	andi	r3, r2, 255
	andi	r7, r6, 255
	xori	r3, r3, 128
	xori	r7, r7, 128
	addi	r3, r3, -128
	addi	r7, r7, -128
	addi	r5, r5, 1
	beq	r3, r7, .L90
.L91:
	andi	r6, r6, 0xff
	andi	r2, r2, 0xff
	sub	r2, r2, r6
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L97
	mov	r2, r4
.L96:
	ldb	r5, 1(r2)
	addi	r2, r2, 1
	bne	r5, zero, .L96
	sub	r2, r2, r4
	ret
.L97:
	mov	r2, r4
	sub	r2, r2, r4
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L104
	ldbu	r2, 0(r4)
	beq	r2, zero, .L101
	addi	r6, r6, -1
	add	r6, r4, r6
	br	.L102
.L114:
	beq	r4, r6, .L101
	bne	r3, r2, .L101
	ldbu	r2, 1(r4)
	addi	r5, r5, 1
	addi	r4, r4, 1
	beq	r2, zero, .L101
.L102:
	ldbu	r3, 0(r5)
	bne	r3, zero, .L114
.L101:
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L104:
	mov	r2, zero
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L115
	movi	r2, -2
	and	r6, r6, r2
	add	r6, r4, r6
.L117:
	ldbu	r3, 1(r4)
	ldbu	r2, 0(r4)
	addi	r4, r4, 2
	stb	r3, 0(r5)
	stb	r2, 1(r5)
	addi	r5, r5, 2
	bne	r4, r6, .L117
.L115:
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
	bne	r2, zero, .L123
	cmpeqi	r2, r4, 9
	ret
.L123:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L126
	cmpeqi	r2, r4, 127
	ret
.L126:
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
	bne	r2, zero, .L133
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
	ret
.L133:
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
	bne	r2, zero, .L139
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	beq	r2, zero, .L140
.L139:
	movi	r2, 1
	ret
.L140:
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L139
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
	beq	r2, zero, .L149
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L147
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L147
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L147
	movhi	r2, 65535
	addi	r2, r2, 4
	movhi	r3, 16
	add	r2, r4, r2
	addi	r3, r3, 3
	bltu	r3, r2, .L148
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L147:
	movi	r2, 1
	ret
.L149:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	ret
.L148:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L152
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	ret
.L152:
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
	bne	r2, zero, .L157
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L158
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	bgt	r2, zero, .L163
	mov	r2, zero
	mov	r3, zero
.L154:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L163:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
	br	.L154
.L157:
	mov	r2, r17
	mov	r3, r16
	br	.L154
.L158:
	mov	r2, r19
	mov	r3, r18
	br	.L154
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
	bne	r2, zero, .L167
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L168
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	bgt	r2, zero, .L173
	mov	r2, zero
.L164:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L173:
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
	br	.L164
.L167:
	mov	r2, r16
	br	.L164
.L168:
	mov	r2, r17
	br	.L164
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
	bne	r2, zero, .L182
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L181
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L176
	bne	r2, zero, .L182
.L181:
	mov	r2, r19
	mov	r3, r18
	br	.L174
.L176:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L182
	mov	r17, r19
	mov	r16, r18
.L182:
	mov	r2, r17
	mov	r3, r16
.L174:
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
	bne	r2, zero, .L194
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L193
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L188
	beq	r2, zero, .L193
.L194:
	mov	r2, r17
	br	.L186
.L188:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	blt	r2, zero, .L198
.L193:
	mov	r2, r16
.L186:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L198:
	mov	r16, r17
	br	.L193
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
	bne	r2, zero, .L207
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L206
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L201
	bne	r2, zero, .L207
.L206:
	mov	r2, r19
	mov	r3, r18
	br	.L199
.L201:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L207
	mov	r17, r19
	mov	r16, r18
.L207:
	mov	r2, r17
	mov	r3, r16
.L199:
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
	bne	r2, zero, .L217
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L219
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L213
	bne	r2, zero, .L219
.L217:
	mov	r2, r18
	mov	r3, r19
	br	.L211
.L213:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L219
	mov	r17, r18
	mov	r16, r19
.L219:
	mov	r2, r17
	mov	r3, r16
.L211:
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
	bne	r2, zero, .L229
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L231
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L225
	beq	r2, zero, .L229
.L231:
	mov	r2, r17
	br	.L223
.L225:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	blt	r2, zero, .L235
.L229:
	mov	r2, r16
.L223:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L235:
	mov	r16, r17
	br	.L229
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
	bne	r2, zero, .L242
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L244
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L238
	bne	r2, zero, .L244
.L242:
	mov	r2, r18
	mov	r3, r19
	br	.L236
.L238:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L244
	mov	r17, r18
	mov	r16, r19
.L244:
	mov	r2, r17
	mov	r3, r16
.L236:
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
	beq	r4, zero, .L249
.L250:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	srli	r4, r4, 6
	addi	r3, r3, 1
	stb	r2, -1(r3)
	bne	r4, zero, .L250
.L249:
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
	beq	r5, zero, .L262
	ldw	r2, 0(r5)
	stw	r5, 4(r4)
	stw	r2, 0(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L256
	stw	r4, 4(r2)
.L256:
	ret
.L262:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L264
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L264:
	ldw	r2, 4(r4)
	beq	r2, zero, .L263
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L263:
	ret
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	addi	sp, sp, -40
	stw	r20, 24(sp)
	stw	r18, 16(sp)
	stw	r16, 8(sp)
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r19, 20(sp)
	stw	r17, 12(sp)
	ldw	r17, 0(r6)
	stw	r6, 4(sp)
	stw	r5, 0(sp)
	ldw	r20, 40(sp)
	mov	r18, r4
	mov	r16, r7
	beq	r17, zero, .L273
	mov	r21, r5
	mov	fp, zero
	br	.L275
.L288:
	addi	fp, fp, 1
	add	r21, r21, r16
	beq	r17, fp, .L273
.L275:
	mov	r5, r21
	mov	r4, r18
	mov	r19, r21
	callr	r20
	bne	r2, zero, .L288
.L272:
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
.L273:
	ldw	r2, 4(sp)
	mul	r19, r16, r17
	addi	r17, r17, 1
	stw	r17, 0(r2)
	ldw	r2, 0(sp)
	add	r19, r2, r19
	beq	r16, zero, .L272
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L272
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
	beq	r19, zero, .L290
	mov	r18, r4
	mov	r21, r7
	mov	r16, r5
	mov	r17, zero
	br	.L292
.L301:
	addi	r17, r17, 1
	add	r16, r16, r21
	beq	r19, r17, .L290
.L292:
	mov	r5, r16
	mov	r4, r18
	mov	fp, r16
	callr	r20
	bne	r2, zero, .L301
.L289:
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
.L290:
	mov	fp, zero
	br	.L289
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L303
	sub	r2, zero, r4
.L303:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	br	.L305
.L307:
	addi	r4, r4, 1
.L305:
	ldb	r3, 0(r4)
	cmpeqi	r2, r3, 32
	bne	r2, zero, .L307
	addi	r2, r3, -9
	cmpltui	r2, r2, 5
	bne	r2, zero, .L307
	cmpeqi	r5, r3, 43
	bne	r5, zero, .L314
	cmpnei	r3, r3, 45
	bne	r3, zero, .L315
	movi	r7, 1
.L308:
	addi	r4, r4, 1
.L309:
	ldbu	r6, 0(r4)
	andi	r3, r6, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	beq	r3, zero, .L311
.L310:
	addi	r4, r4, 1
	addi	r3, r6, -48
	ldbu	r6, 0(r4)
	andi	r5, r3, 255
	muli	r2, r2, 10
	andi	r3, r6, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	xori	r5, r5, 128
	addi	r3, r3, -48
	addi	r5, r5, -128
	cmpltui	r3, r3, 10
	sub	r2, r2, r5
	bne	r3, zero, .L310
.L311:
	bne	r7, zero, .L304
	sub	r2, zero, r2
.L304:
	ret
.L315:
	mov	r7, zero
	br	.L309
.L314:
	mov	r7, zero
	br	.L308
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
	stw	r17, 4(sp)
	stw	ra, 12(sp)
	stw	r18, 8(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	br	.L321
.L323:
	addi	r17, r17, 1
.L321:
	ldb	r2, 0(r17)
	cmpeqi	r3, r2, 32
	bne	r3, zero, .L323
	addi	r16, r2, -9
	cmpltui	r16, r16, 5
	bne	r16, zero, .L323
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L324
	cmpnei	r2, r2, 45
	beq	r2, zero, .L337
.L325:
	ldbu	r18, 0(r17)
	mov	r4, zero
	mov	r5, zero
	andi	r2, r18, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L327
.L326:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	addi	r17, r17, 1
	addi	r4, r18, -48
	ldbu	r18, 0(r17)
	andi	r4, r4, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	andi	r5, r18, 255
	srai	r7, r4, 31
	xori	r5, r5, 128
	addi	r5, r5, -128
	addi	r6, r5, -48
	sub	r4, r2, r4
	sub	r5, r3, r7
	cmpltu	r2, r2, r4
	cmpltui	r3, r6, 10
	sub	r5, r5, r2
	bne	r3, zero, .L326
.L327:
	bne	r16, zero, .L320
	cmpne	r2, r4, zero
	sub	r5, zero, r5
	sub	r5, r5, r2
	sub	r4, zero, r4
.L320:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L337:
	movi	r16, 1
.L324:
	addi	r17, r17, 1
	br	.L325
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
	mul	r17, fp, r18
	add	r17, r19, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L343
	bge	zero, r2, .L338
	addi	r16, r16, -1
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
	beq	r6, zero, .L350
	mov	r16, r6
	mov	r19, r4
	mov	r18, r5
	mov	r17, r7
	br	.L353
.L362:
	bge	zero, r2, .L352
	addi	r16, r16, -1
	srai	r20, r16, 1
	add	r18, fp, r17
.L352:
	mov	r16, r20
	beq	r20, zero, .L350
.L353:
	srai	r20, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r20, r17
	add	fp, r18, fp
	mov	r5, fp
	callr	r21
	bne	r2, zero, .L362
.L349:
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
.L350:
	mov	fp, zero
	br	.L349
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
	bge	r5, zero, .L366
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L366:
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
	bge	r4, zero, .L371
	sub	r2, zero, r4
.L371:
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
	bge	r5, zero, .L375
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L375:
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
	beq	r2, zero, .L385
.L380:
	beq	r5, r2, .L389
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L380
.L385:
	mov	r2, zero
	ret
.L389:
	mov	r2, r4
	beq	r5, zero, .L385
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L392
.L391:
	beq	r3, zero, .L392
	beq	r2, zero, .L392
	ldw	r3, 4(r4)
	ldw	r2, 4(r5)
	addi	r4, r4, 4
	addi	r5, r5, 4
	beq	r3, r2, .L391
.L392:
	blt	r3, r2, .L395
	cmplt	r2, r2, r3
	ret
.L395:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L401:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L401
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L406
	mov	r2, r4
.L405:
	ldw	r3, 4(r2)
	addi	r2, r2, 4
	bne	r3, zero, .L405
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L406:
	mov	r2, r4
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L413
.L422:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	bne	r2, r3, .L410
	beq	r2, zero, .L410
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L422
.L413:
	mov	r2, zero
	ret
.L410:
	beq	r6, zero, .L413
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L414
	cmplt	r2, r2, r3
	ret
.L414:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L429
.L434:
	ldw	r2, 0(r4)
	beq	r2, r5, .L433
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r6, zero, .L434
.L429:
	mov	r2, zero
	ret
.L433:
	mov	r2, r4
	beq	r6, zero, .L429
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L440
.L450:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L449
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L450
.L440:
	mov	r2, zero
	ret
.L449:
	beq	r6, zero, .L440
	blt	r3, r2, .L441
	cmplt	r2, r2, r3
	ret
.L441:
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
	beq	r6, zero, .L452
	slli	r6, r6, 2
	call	memcpy
.L452:
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
	beq	r4, r5, .L458
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L469
	beq	r6, zero, .L458
	slli	r3, r3, 2
	add	r6, r5, r3
	add	r3, r2, r3
.L461:
	ldw	r8, 0(r6)
	mov	r7, r6
	addi	r3, r3, -4
	stw	r8, 4(r3)
	addi	r6, r6, -4
	bne	r5, r7, .L461
	ret
.L469:
	mov	r7, r2
	beq	r6, zero, .L470
.L460:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r7)
	addi	r5, r5, 4
	addi	r7, r7, 4
	bne	r6, zero, .L460
.L458:
	ret
.L470:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L472
	mov	r6, r4
.L473:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L473
.L472:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L479
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L478
.L481:
	ldbu	r3, -1(r2)
	addi	r2, r2, -1
	addi	r5, r5, -1
	stb	r3, 0(r5)
	bne	r4, r2, .L481
	ret
.L479:
	beq	r4, r5, .L478
	beq	r6, zero, .L478
	add	r6, r4, r6
.L482:
	ldbu	r2, 0(r4)
	addi	r4, r4, 1
	addi	r5, r5, 1
	stb	r2, -1(r5)
	bne	r6, r4, .L482
.L478:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L492
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	sll	r3, r4, r3
	mov	r2, zero
	blt	r7, zero, .L494
.L496:
	srl	r4, r5, r7
	mov	r5, zero
	or	r3, r5, r3
	or	r2, r4, r2
	ret
.L492:
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
	bge	r7, zero, .L496
.L494:
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
	blt	r2, zero, .L498
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	srl	r2, r5, r2
	mov	r3, zero
	blt	r7, zero, .L500
.L502:
	sll	r5, r4, r7
	mov	r4, zero
	or	r2, r4, r2
	or	r3, r5, r3
	ret
.L498:
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
	bge	r7, zero, .L502
.L500:
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
	br	.L517
.L520:
	cmpnei	r3, r2, 32
	beq	r3, zero, .L519
.L517:
	srl	r3, r4, r2
	addi	r2, r2, 1
	andi	r3, r3, 1
	beq	r3, zero, .L520
	ret
.L519:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L524
	andi	r2, r4, 1
	bne	r2, zero, .L521
	movi	r2, 1
.L523:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L523
	ret
.L524:
	mov	r2, zero
.L521:
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
	blt	r2, zero, .L530
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L530:
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
	blt	r2, zero, .L535
	movhi	r7, 32752
	movi	r6, -1
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L532:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L535:
	movi	r2, 1
	br	.L532
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
	blt	r2, zero, .L540
	movhi	r7, 32752
	movi	r6, -1
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L537:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L540:
	movi	r2, 1
	br	.L537
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
	bne	r2, zero, .L545
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L545
	blt	r16, zero, .L560
	movhi	r17, 16384
	br	.L548
.L561:
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L548:
	andi	r2, r16, 1
	beq	r2, zero, .L547
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L547:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L561
.L545:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L560:
	movhi	r17, 16128
	br	.L548
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
	bne	r2, zero, .L563
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
	beq	r2, zero, .L563
	mov	r6, zero
	blt	r16, zero, .L578
	movhi	r7, 16384
	br	.L566
.L579:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	mov	r6, r2
	mov	r7, r3
.L566:
	andi	r2, r16, 1
	beq	r2, zero, .L565
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L565:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L579
.L563:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L578:
	movhi	r7, 16352
	br	.L566
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
	bne	r2, zero, .L581
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
	beq	r2, zero, .L581
	mov	r6, zero
	blt	r16, zero, .L596
	movhi	r7, 16384
	br	.L584
.L597:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	mov	r6, r2
	mov	r7, r3
.L584:
	andi	r2, r16, 1
	beq	r2, zero, .L583
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L583:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L597
.L581:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L596:
	movhi	r7, 16352
	br	.L584
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L599
	add	r6, r5, r6
	mov	r3, r4
.L600:
	ldbu	r7, 0(r3)
	ldbu	r8, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L600
.L599:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L612
	mov	r3, r4
.L607:
	ldb	r7, 1(r3)
	addi	r3, r3, 1
	bne	r7, zero, .L607
.L619:
	beq	r6, zero, .L614
	ldbu	r7, 0(r5)
	stb	r7, 0(r3)
	andi	r7, r7, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L620
	addi	r6, r6, -1
	addi	r5, r5, 1
	addi	r3, r3, 1
	br	.L619
.L620:
	bne	r6, zero, .L611
.L614:
	stb	zero, 0(r3)
.L611:
	ret
.L612:
	mov	r3, r4
	br	.L619
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L628
.L622:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L624
.L621:
	ret
.L624:
	addi	r2, r2, 1
	bne	r5, r2, .L622
	ret
.L628:
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L634
.L630:
	mov	r3, r5
	br	.L633
.L632:
	addi	r3, r3, 1
	beq	r6, r7, .L631
.L633:
	ldb	r6, 0(r3)
	bne	r6, zero, .L632
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L630
.L634:
	mov	r2, zero
.L631:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
.L638:
	ldb	r3, 0(r4)
	bne	r3, r5, .L637
	mov	r2, r4
.L637:
	addi	r4, r4, 1
	bne	r3, zero, .L638
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	mov	r2, r4
	mov	r3, r5
	beq	r8, zero, .L642
.L643:
	ldb	r4, 1(r3)
	addi	r3, r3, 1
	bne	r4, zero, .L643
.L642:
	sub	r10, r3, r5
	beq	r3, r5, .L644
	addi	r10, r10, -1
	br	.L650
.L666:
	addi	r2, r2, 1
	beq	r4, zero, .L665
.L650:
	ldbu	r3, 0(r2)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	bne	r4, r8, .L666
	beq	r2, zero, .L644
	andi	r3, r3, 0xff
	beq	r3, zero, .L653
	add	r9, r2, r10
	mov	r6, r5
	mov	r4, r2
	br	.L647
.L667:
	beq	r4, r9, .L646
	bne	r7, r3, .L646
	ldbu	r3, 1(r4)
	addi	r6, r6, 1
	addi	r4, r4, 1
	beq	r3, zero, .L646
.L647:
	ldbu	r7, 0(r6)
	bne	r7, zero, .L667
.L646:
	ldbu	r4, 0(r6)
	beq	r4, r3, .L644
	addi	r2, r2, 1
	br	.L650
.L665:
	mov	r2, zero
	ret
.L644:
	ret
.L653:
	mov	r6, r5
	br	.L646
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
	blt	r2, zero, .L678
.L669:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L672
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L671
.L672:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L678:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L669
.L671:
	xorhi	r16, r16, 32768
	br	.L672
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	beq	r7, zero, .L687
	bltu	r5, r7, .L689
	sub	r5, r5, r7
	add	r11, r4, r5
	bltu	r11, r4, .L689
	ldb	r12, 0(r6)
.L686:
	ldbu	r3, 0(r4)
	mov	r2, r4
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, r12, .L701
	bgeu	r11, r4, .L686
.L689:
	mov	r2, zero
.L679:
	ret
.L701:
	addi	r3, r7, -1
	addi	r5, r6, 1
	beq	r3, zero, .L702
	mov	r8, r4
	br	.L682
.L684:
	addi	r3, r3, -1
	addi	r8, r8, 1
	addi	r5, r5, 1
	beq	r3, zero, .L703
.L682:
	ldbu	r10, 0(r8)
	ldbu	r9, 0(r5)
	beq	r10, r9, .L684
	beq	r3, zero, .L679
	beq	r10, r9, .L679
	bgeu	r11, r4, .L686
	br	.L689
.L703:
	ret
.L687:
	mov	r2, r4
	ret
.L702:
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
	beq	r6, zero, .L705
	call	memmove
.L705:
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
	blt	r2, zero, .L735
	mov	r20, zero
.L711:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r18
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L732
	mov	r17, zero
.L715:
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
	bge	r2, zero, .L715
.L716:
	stw	r17, 0(r19)
	beq	r20, zero, .L719
	xorhi	r16, r16, 32768
.L719:
	mov	r2, r18
	mov	r3, r16
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L735:
	xorhi	r16, r16, 32768
	movi	r20, 1
	br	.L711
.L732:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r18
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L733
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r16
	call	__eqdf2
	mov	r17, zero
	beq	r2, zero, .L716
.L718:
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
	blt	r2, zero, .L718
	br	.L716
.L733:
	mov	r17, zero
	br	.L716
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
	beq	r2, zero, .L740
	mov	r16, r4
	mov	r18, r5
	mov	r19, r6
	mov	r17, r7
	mov	r20, zero
	mov	r21, zero
.L739:
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
	bne	r5, zero, .L739
.L736:
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
.L740:
	mov	r20, zero
	mov	r21, zero
	br	.L736
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L752
	movi	r2, 32
	movi	r3, 1
.L744:
	blt	r5, zero, .L745
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L745
	addi	r2, r2, -1
	bne	r2, zero, .L744
.L756:
	mov	r2, zero
.L747:
	beq	r6, zero, .L743
	mov	r2, r4
.L743:
	ret
.L745:
	beq	r3, zero, .L756
.L752:
	mov	r2, zero
.L746:
	bltu	r4, r5, .L749
	sub	r4, r4, r5
	or	r2, r2, r3
.L749:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L746
	br	.L747
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
	beq	r3, r2, .L759
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
.L759:
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
	beq	r2, r6, .L773
.L768:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L773:
	bne	r3, r2, .L768
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L777
.L776:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L776
	ret
.L777:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	movi	r10, -8
	srli	r9, r6, 3
	and	r10, r6, r10
	bltu	r4, r5, .L783
	add	r2, r5, r6
	bgeu	r2, r4, .L792
.L783:
	beq	r9, zero, .L782
	slli	r9, r9, 3
	mov	r2, r5
	mov	r3, r4
	add	r9, r9, r5
.L786:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	addi	r2, r2, 8
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r3, r3, 8
	bne	r2, r9, .L786
.L782:
	bgeu	r10, r6, .L779
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L787:
	ldbu	r3, 0(r2)
	addi	r2, r2, 1
	addi	r4, r4, 1
	stb	r3, -1(r4)
	bne	r2, r5, .L787
	ret
.L792:
	addi	r2, r6, -1
	beq	r6, zero, .L793
.L784:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L784
.L779:
	ret
.L793:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bltu	r4, r5, .L798
	add	r2, r5, r6
	bgeu	r2, r4, .L808
.L798:
	beq	r8, zero, .L797
	add	r8, r8, r8
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r5
.L801:
	ldhu	r7, 0(r2)
	addi	r2, r2, 2
	addi	r3, r3, 2
	sth	r7, -2(r3)
	bne	r2, r8, .L801
.L797:
	andi	r2, r6, 1
	beq	r2, zero, .L794
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L808:
	addi	r2, r6, -1
	beq	r6, zero, .L809
.L799:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L799
.L794:
	ret
.L809:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	movi	r9, -4
	srli	r8, r6, 2
	and	r9, r6, r9
	bltu	r4, r5, .L814
	add	r2, r5, r6
	bgeu	r2, r4, .L823
.L814:
	beq	r8, zero, .L813
	slli	r8, r8, 2
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r5
.L817:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L817
.L813:
	bgeu	r9, r6, .L810
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L818:
	ldbu	r3, 0(r2)
	addi	r2, r2, 1
	addi	r4, r4, 1
	stb	r3, -1(r4)
	bne	r2, r5, .L818
	ret
.L823:
	addi	r2, r6, -1
	beq	r6, zero, .L824
.L815:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L815
.L810:
	ret
.L824:
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
.L839:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L837
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L839
.L837:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L843:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L841
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L843
.L841:
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
	bge	r2, zero, .L852
	mov	r4, r16
	call	__fixsfsi
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L852:
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
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
.L854:
	sra	r5, r4, r3
	addi	r3, r3, 1
	cmpnei	r6, r3, 16
	andi	r5, r5, 1
	add	r2, r2, r5
	bne	r6, zero, .L854
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
.L857:
	sra	r5, r4, r3
	addi	r3, r3, 1
	cmpnei	r6, r3, 16
	andi	r5, r5, 1
	add	r2, r2, r5
	bne	r6, zero, .L857
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	beq	r4, zero, .L862
.L861:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L861
	ret
.L862:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L867
	beq	r5, zero, .L868
.L866:
	andi	r3, r5, 1
	mul	r3, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r3
	bne	r5, zero, .L866
	ret
.L867:
	ret
.L868:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L879
	movi	r2, 32
	movi	r3, 1
.L871:
	blt	r5, zero, .L872
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L872
	addi	r2, r2, -1
	bne	r2, zero, .L871
.L883:
	mov	r2, zero
.L874:
	beq	r6, zero, .L870
	mov	r2, r4
.L870:
	ret
.L872:
	beq	r3, zero, .L883
.L879:
	mov	r2, zero
.L873:
	bltu	r4, r5, .L876
	sub	r4, r4, r5
	or	r2, r2, r3
.L876:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L873
	br	.L874
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
	blt	r2, zero, .L887
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L884:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L887:
	movi	r2, -1
	br	.L884
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
	blt	r2, zero, .L892
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L889:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L892:
	movi	r2, -1
	br	.L889
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
	blt	r5, zero, .L912
	mov	r7, zero
.L899:
	beq	r5, zero, .L904
	movi	r3, 32
	mov	r2, zero
	br	.L901
.L913:
	addi	r3, r3, -1
	andi	r6, r3, 0xff
	beq	r6, zero, .L900
.L901:
	andi	r6, r5, 1
	mul	r6, r6, r4
	srai	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r6
	bne	r5, zero, .L913
.L900:
	beq	r7, zero, .L898
	sub	r2, zero, r2
.L898:
	ret
.L912:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L899
.L904:
	mov	r2, zero
	br	.L900
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L934
	mov	r7, zero
.L915:
	bge	r5, zero, .L916
	sub	r5, zero, r5
	xori	r7, r7, 1
.L916:
	mov	r6, r4
	bgeu	r5, r4, .L924
	movi	r2, 32
	movi	r3, 1
	br	.L918
.L935:
	addi	r2, r2, -1
	beq	r2, zero, .L925
.L918:
	add	r5, r5, r5
	add	r3, r3, r3
	bltu	r5, r4, .L935
	beq	r3, zero, .L925
.L933:
	mov	r2, zero
.L921:
	bltu	r6, r5, .L920
	sub	r6, r6, r5
	or	r2, r2, r3
.L920:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L921
.L919:
	beq	r7, zero, .L914
	sub	r2, zero, r2
.L914:
	ret
.L934:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L915
.L925:
	mov	r2, zero
	br	.L919
.L924:
	movi	r3, 1
	br	.L933
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L957
	mov	r7, zero
.L937:
	mov	r2, r4
	blt	r5, zero, .L958
.L938:
	bgeu	r5, r4, .L946
	movi	r6, 32
	movi	r3, 1
	br	.L940
.L959:
	addi	r6, r6, -1
	beq	r6, zero, .L941
.L940:
	add	r5, r5, r5
	add	r3, r3, r3
	bltu	r5, r4, .L959
	beq	r3, zero, .L941
.L951:
	bltu	r2, r5, .L942
	sub	r2, r2, r5
.L942:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L951
.L941:
	beq	r7, zero, .L936
	sub	r2, zero, r2
.L936:
	ret
.L958:
	sub	r5, zero, r5
	br	.L938
.L957:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L937
.L946:
	movi	r3, 1
	br	.L951
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r3, r5, 0xffff
	andi	r2, r4, 0xffff
	bgeu	r3, r2, .L974
	movi	r2, 16
	movi	r7, 1
	andi	r8, r4, 0xffff
.L961:
	andi	r3, r5, 65535
	xori	r3, r3, 32768
	addi	r3, r3, -32768
	blt	r3, zero, .L962
	add	r5, r5, r5
	andi	r3, r5, 0xffff
	slli	r7, r7, 1
	bgeu	r3, r8, .L962
	addi	r2, r2, -1
	bne	r2, zero, .L961
	mov	r7, zero
.L973:
	mov	r2, r7
.L964:
	beq	r6, zero, .L960
	mov	r2, r4
.L960:
	ret
.L962:
	andi	r3, r7, 0xffff
	beq	r3, zero, .L973
.L969:
	mov	r2, zero
	br	.L963
.L975:
	andi	r3, r3, 0xffff
.L963:
	andi	r8, r4, 0xffff
	andi	r9, r5, 0xffff
	bltu	r8, r9, .L966
	sub	r4, r4, r5
	or	r2, r7, r2
.L966:
	srli	r3, r3, 1
	srli	r5, r9, 1
	mov	r7, r3
	bne	r3, zero, .L975
	br	.L964
.L974:
	movi	r7, 1
	movi	r3, 1
	br	.L969
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L985
	movi	r2, 32
	movi	r3, 1
.L977:
	blt	r5, zero, .L978
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L978
	addi	r2, r2, -1
	bne	r2, zero, .L977
.L989:
	mov	r2, zero
.L980:
	beq	r6, zero, .L976
	mov	r2, r4
.L976:
	ret
.L978:
	beq	r3, zero, .L989
.L985:
	mov	r2, zero
.L979:
	bltu	r4, r5, .L982
	sub	r4, r4, r5
	or	r2, r2, r3
.L982:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L979
	br	.L980
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L991
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L991:
	beq	r6, zero, .L994
	movi	r2, 32
	sub	r2, r2, r6
	srl	r2, r4, r2
	sll	r3, r5, r6
	sll	r4, r4, r6
	or	r3, r2, r3
	mov	r2, r4
	ret
.L994:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L996
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L996:
	beq	r6, zero, .L999
	movi	r7, 32
	sub	r7, r7, r6
	sll	r7, r5, r7
	srl	r2, r4, r6
	sra	r3, r5, r6
	or	r2, r7, r2
	ret
.L999:
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
	bne	r6, zero, .L1003
	sub	r2, r2, r3
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L1003:
	add	r4, r4, r5
	mov	r2, zero
	add	r2, r2, r4
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1009
	blt	r7, r5, .L1010
	bltu	r4, r6, .L1009
	bltu	r6, r4, .L1010
	movi	r2, 1
	ret
.L1009:
	mov	r2, zero
	ret
.L1010:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1015
	blt	r7, r5, .L1016
	bltu	r4, r6, .L1015
	bltu	r6, r4, .L1016
	movi	r2, 1
	addi	r2, r2, -1
	ret
.L1015:
	mov	r2, zero
	addi	r2, r2, -1
	ret
.L1016:
	movi	r2, 2
	addi	r2, r2, -1
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
	beq	r2, zero, .L1019
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1019:
	beq	r6, zero, .L1022
	movi	r3, 32
	sub	r3, r3, r6
	sll	r3, r5, r3
	srl	r2, r4, r6
	srl	r5, r5, r6
	or	r2, r3, r2
	mov	r3, r5
	ret
.L1022:
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
	stw	r18, 16(sp)
	mov	r18, r6
	stw	r19, 20(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	stw	ra, 24(sp)
	mov	r6, r4
	mov	r7, r5
	mov	r16, r18
	mov	r19, zero
	movhi	r17, 16368
	br	.L1034
.L1040:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	mov	r6, r2
	mov	r7, r3
.L1034:
	andi	r2, r16, 1
	beq	r2, zero, .L1032
	mov	r4, r19
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r19, r2
	mov	r17, r3
.L1032:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L1040
	bge	r18, zero, .L1031
	mov	r6, r19
	mov	r7, r17
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r19, r2
	mov	r17, r3
.L1031:
	mov	r2, r19
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
	mov	r19, r5
	mov	r17, r4
	mov	r16, r5
	movhi	r18, 16256
	br	.L1044
.L1050:
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L1044:
	andi	r2, r16, 1
	beq	r2, zero, .L1042
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L1042:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L1050
	bge	r19, zero, .L1041
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
.L1041:
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
	bltu	r5, r7, .L1055
	bltu	r7, r5, .L1056
	bltu	r4, r6, .L1055
	bltu	r6, r4, .L1056
	movi	r2, 1
	ret
.L1055:
	mov	r2, zero
	ret
.L1056:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1061
	bltu	r7, r5, .L1062
	bltu	r4, r6, .L1061
	bltu	r6, r4, .L1062
	movi	r2, 1
	addi	r2, r2, -1
	ret
.L1061:
	mov	r2, zero
	addi	r2, r2, -1
	ret
.L1062:
	movi	r2, 2
	addi	r2, r2, -1
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
