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
	beq	r7, zero, .L20
.L16:
	ldbu	r3, 0(r5)
	stb	r3, 0(r4)
	andi	r3, r3, 0xff
	beq	r3, r6, .L27
	addi	r7, r7, -1
	addi	r5, r5, 1
	addi	r4, r4, 1
	bne	r7, zero, .L16
.L20:
	mov	r2, zero
	ret
.L27:
	beq	r7, zero, .L20
	addi	r2, r4, 1
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	andi	r5, r5, 0xff
	beq	r6, zero, .L34
.L29:
	ldbu	r2, 0(r4)
	beq	r2, r5, .L37
	addi	r4, r4, 1
	addi	r6, r6, -1
	bne	r6, zero, .L29
.L34:
	mov	r2, zero
	ret
.L37:
	mov	r2, r4
	beq	r6, zero, .L34
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	br	.L50
.L41:
	addi	r6, r6, -1
	addi	r4, r4, 1
	addi	r5, r5, 1
.L50:
	beq	r6, zero, .L43
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	beq	r3, r2, .L41
	beq	r6, zero, .L43
	mov	r2, r3
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L43:
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
	andi	r5, r5, 0xff
	addi	r6, r6, -1
	add	r6, r4, r6
	addi	r4, r4, -1
.L58:
	beq	r6, r4, .L61
	mov	r2, r6
	addi	r6, r6, -1
	ldbu	r3, 0(r2)
	bne	r3, r5, .L58
	ret
.L61:
	mov	r2, zero
.L57:
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
	mov	r2, r4
.L76:
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L70
	addi	r5, r5, 1
	addi	r2, r2, 1
	br	.L76
.L70:
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	mov	r2, r4
	andi	r5, r5, 0xff
	ldbu	r3, 0(r4)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, zero, .L84
.L78:
	andi	r3, r3, 0xff
	beq	r3, r5, .L77
	addi	r2, r2, 1
	ldbu	r3, 0(r2)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	bne	r4, zero, .L78
.L77:
	ret
.L84:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
.L87:
	ldb	r3, 0(r2)
	beq	r3, r5, .L86
	addi	r2, r2, 1
	bne	r3, zero, .L87
	mov	r2, zero
.L86:
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	br	.L94
.L92:
	addi	r4, r4, 1
	addi	r5, r5, 1
.L94:
	ldbu	r2, 0(r4)
	ldbu	r6, 0(r5)
	andi	r3, r2, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r7, r6, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	bne	r3, r7, .L91
	bne	r3, zero, .L92
.L91:
	andi	r2, r2, 0xff
	andi	r6, r6, 0xff
	sub	r2, r2, r6
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L98
	mov	r2, r4
.L97:
	addi	r2, r2, 1
	ldb	r5, 0(r2)
	bne	r5, zero, .L97
.L96:
	sub	r2, r2, r4
	ret
.L98:
	mov	r2, r4
	br	.L96
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L105
	ldbu	r2, 0(r4)
	beq	r2, zero, .L102
	addi	r6, r6, -1
	add	r6, r4, r6
.L103:
	ldbu	r3, 0(r5)
	beq	r3, zero, .L102
	beq	r4, r6, .L102
	bne	r3, r2, .L102
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, 0(r4)
	bne	r2, zero, .L103
.L102:
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L105:
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
	add	r3, r4, r6
.L117:
	ldbu	r2, 1(r4)
	stb	r2, 0(r5)
	ldbu	r2, 0(r4)
	stb	r2, 1(r5)
	addi	r5, r5, 2
	addi	r4, r4, 2
	bne	r4, r3, .L117
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
	bne	r2, zero, .L139
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L139
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r4, r4, r2
	cmpltui	r2, r4, 3
	ret
.L139:
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
	beq	r2, zero, .L148
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L146
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L146
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L146
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L147
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L148:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	ret
.L146:
	movi	r2, 1
	ret
.L147:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L151
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	ret
.L151:
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
	bne	r2, zero, .L156
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L157
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L160
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
.L153:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L156:
	mov	r2, r17
	mov	r3, r16
	br	.L153
.L157:
	mov	r2, r19
	mov	r3, r18
	br	.L153
.L160:
	mov	r2, zero
	mov	r3, zero
	br	.L153
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
	bne	r2, zero, .L165
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L166
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L169
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L162:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L165:
	mov	r2, r16
	br	.L162
.L166:
	mov	r2, r17
	br	.L162
.L169:
	mov	r2, zero
	br	.L162
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
	bne	r2, zero, .L179
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L178
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L173
	bne	r2, zero, .L179
.L178:
	mov	r2, r19
	mov	r3, r18
	br	.L171
.L173:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L179
	mov	r17, r19
	mov	r16, r18
.L179:
	mov	r2, r17
	mov	r3, r16
.L171:
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
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L191
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L190
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L185
	beq	r2, zero, .L190
.L191:
	mov	r2, r17
	br	.L183
.L185:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	blt	r2, zero, .L195
.L190:
	mov	r2, r16
.L183:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L195:
	mov	r16, r17
	br	.L190
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
	bne	r2, zero, .L204
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L203
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L198
	bne	r2, zero, .L204
.L203:
	mov	r2, r19
	mov	r3, r18
	br	.L196
.L198:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L204
	mov	r17, r19
	mov	r16, r18
.L204:
	mov	r2, r17
	mov	r3, r16
.L196:
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
	bne	r2, zero, .L214
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L216
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L210
	bne	r2, zero, .L216
.L214:
	mov	r2, r18
	mov	r3, r19
	br	.L208
.L210:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L216
	mov	r17, r18
	mov	r16, r19
.L216:
	mov	r2, r17
	mov	r3, r16
.L208:
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
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L226
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L228
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L222
	beq	r2, zero, .L226
.L228:
	mov	r2, r17
	br	.L220
.L222:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	blt	r2, zero, .L232
.L226:
	mov	r2, r16
.L220:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L232:
	mov	r16, r17
	br	.L226
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
	bne	r2, zero, .L239
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L241
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L235
	bne	r2, zero, .L241
.L239:
	mov	r2, r18
	mov	r3, r19
	br	.L233
.L235:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L241
	mov	r17, r18
	mov	r16, r19
.L241:
	mov	r2, r17
	mov	r3, r16
.L233:
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
	beq	r4, zero, .L246
.L247:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
	bne	r4, zero, .L247
.L246:
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
	beq	r5, zero, .L259
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L253
	stw	r4, 4(r2)
.L253:
	ret
.L259:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L261
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L261:
	ldw	r2, 4(r4)
	beq	r2, zero, .L260
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L260:
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
	mov	r16, r7
	ldw	r20, 40(sp)
	ldw	r17, 0(r6)
	beq	r17, zero, .L270
	mov	r21, r5
	mov	fp, zero
.L272:
	mov	r19, r21
	mov	r5, r21
	mov	r4, r18
	callr	r20
	beq	r2, zero, .L269
	addi	fp, fp, 1
	add	r21, r21, r16
	bne	r17, fp, .L272
.L270:
	addi	r2, r17, 1
	ldw	r3, 4(sp)
	stw	r2, 0(r3)
	mul	r17, r16, r17
	ldw	r2, 0(sp)
	add	r19, r2, r17
	beq	r16, zero, .L269
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
.L269:
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
	beq	r20, zero, .L286
	mov	r18, r4
	mov	r19, r7
	mov	r16, r5
	mov	r17, zero
.L288:
	mov	fp, r16
	mov	r5, r16
	mov	r4, r18
	callr	r21
	beq	r2, zero, .L285
	addi	r17, r17, 1
	add	r16, r16, r19
	bne	r20, r17, .L288
.L286:
	mov	fp, zero
.L285:
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
	blt	r4, zero, .L299
.L298:
	ret
.L299:
	sub	r2, zero, r4
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	br	.L301
.L303:
	addi	r4, r4, 1
.L301:
	ldb	r3, 0(r4)
	cmpeqi	r2, r3, 32
	bne	r2, zero, .L303
	addi	r2, r3, -9
	cmpltui	r2, r2, 5
	bne	r2, zero, .L303
	cmpeqi	r5, r3, 43
	bne	r5, zero, .L310
	cmpnei	r3, r3, 45
	bne	r3, zero, .L311
	movi	r6, 1
.L304:
	addi	r4, r4, 1
	br	.L305
.L310:
	mov	r6, zero
	br	.L304
.L306:
	muli	r2, r2, 10
	addi	r4, r4, 1
	addi	r3, r3, -48
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	sub	r2, r2, r3
.L305:
	ldbu	r3, 0(r4)
	andi	r5, r3, 255
	xori	r5, r5, 128
	addi	r5, r5, -128
	addi	r5, r5, -48
	cmpltui	r5, r5, 10
	bne	r5, zero, .L306
	bne	r6, zero, .L300
	sub	r2, zero, r2
.L300:
	ret
.L311:
	mov	r6, zero
	br	.L305
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	br	.L316
.L318:
	addi	r4, r4, 1
.L316:
	ldb	r3, 0(r4)
	cmpeqi	r2, r3, 32
	bne	r2, zero, .L318
	addi	r2, r3, -9
	cmpltui	r2, r2, 5
	bne	r2, zero, .L318
	cmpeqi	r5, r3, 43
	bne	r5, zero, .L325
	cmpnei	r3, r3, 45
	bne	r3, zero, .L326
	movi	r6, 1
.L319:
	addi	r4, r4, 1
	br	.L320
.L325:
	mov	r6, zero
	br	.L319
.L321:
	muli	r2, r2, 10
	addi	r4, r4, 1
	addi	r3, r3, -48
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	sub	r2, r2, r3
.L320:
	ldbu	r3, 0(r4)
	andi	r5, r3, 255
	xori	r5, r5, 128
	addi	r5, r5, -128
	addi	r5, r5, -48
	cmpltui	r5, r5, 10
	bne	r5, zero, .L321
	bne	r6, zero, .L315
	sub	r2, zero, r2
.L315:
	ret
.L326:
	mov	r6, zero
	br	.L320
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
	br	.L331
.L333:
	addi	r18, r18, 1
.L331:
	ldb	r2, 0(r18)
	cmpeqi	r3, r2, 32
	bne	r3, zero, .L333
	addi	r17, r2, -9
	cmpltui	r17, r17, 5
	bne	r17, zero, .L333
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L334
	cmpnei	r2, r2, 45
	bne	r2, zero, .L335
	movi	r17, 1
.L334:
	addi	r18, r18, 1
.L335:
	ldbu	r16, 0(r18)
	andi	r2, r16, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	mov	r4, zero
	mov	r5, zero
	cmpltui	r2, r2, 10
	beq	r2, zero, .L337
.L336:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	addi	r18, r18, 1
	addi	r16, r16, -48
	andi	r16, r16, 255
	xori	r16, r16, 128
	addi	r16, r16, -128
	srai	r5, r16, 31
	sub	r4, r2, r16
	cmpltu	r6, r2, r4
	sub	r5, r3, r5
	sub	r5, r5, r6
	ldbu	r16, 0(r18)
	andi	r3, r16, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L336
.L337:
	bne	r17, zero, .L330
	cmpne	r2, r4, zero
	sub	r5, zero, r5
	sub	r5, r5, r2
	sub	r4, zero, r4
.L330:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
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
	beq	r6, zero, .L348
	mov	r20, r4
	mov	r19, r5
	mov	r16, r6
	mov	r18, r7
	br	.L351
.L352:
	mov	r16, fp
.L349:
	beq	r16, zero, .L348
.L351:
	srli	fp, r16, 1
	mul	r17, fp, r18
	add	r17, r19, r17
	mov	r5, r17
	mov	r4, r20
	callr	r21
	blt	r2, zero, .L352
	bge	zero, r2, .L347
	add	r19, r17, r18
	addi	r16, r16, -1
	sub	r16, r16, fp
	br	.L349
.L348:
	mov	r17, zero
.L347:
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
	beq	r6, zero, .L359
	mov	r19, r4
	mov	r18, r5
	mov	r16, r6
	mov	r17, r7
	br	.L362
.L361:
	mov	r16, r20
	beq	r20, zero, .L359
.L362:
	srai	r20, r16, 1
	mul	fp, r20, r17
	add	fp, r18, fp
	ldw	r6, 36(sp)
	mov	r5, fp
	mov	r4, r19
	callr	r21
	beq	r2, zero, .L358
	bge	zero, r2, .L361
	add	r18, fp, r17
	addi	r16, r16, -1
	srai	r20, r16, 1
	br	.L361
.L359:
	mov	fp, zero
.L358:
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
	blt	r5, zero, .L376
.L374:
	ret
.L376:
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
	blt	r4, zero, .L381
.L380:
	ret
.L381:
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
	blt	r5, zero, .L387
.L385:
	ret
.L387:
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
	br	.L399
.L393:
	addi	r4, r4, 4
.L399:
	ldw	r3, 0(r4)
	beq	r3, zero, .L396
	bne	r5, r3, .L393
	mov	r2, r4
	beq	r3, zero, .L396
.L390:
	ret
.L396:
	mov	r2, zero
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	br	.L410
.L403:
	addi	r4, r4, 4
	addi	r5, r5, 4
.L410:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L402
	beq	r3, zero, .L402
	bne	r2, zero, .L403
.L402:
	blt	r3, r2, .L405
	cmplt	r2, r2, r3
	ret
.L405:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L412:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L412
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L417
	mov	r2, r4
.L416:
	addi	r2, r2, 4
	ldw	r3, 0(r2)
	bne	r3, zero, .L416
.L415:
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L417:
	mov	r2, r4
	br	.L415
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
.L432:
	beq	r6, zero, .L424
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	bne	r2, r3, .L421
	beq	r2, zero, .L421
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	br	.L432
.L421:
	beq	r6, zero, .L424
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L425
	cmplt	r2, r2, r3
	ret
.L424:
	mov	r2, zero
	ret
.L425:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	br	.L442
.L436:
	addi	r6, r6, -1
	addi	r4, r4, 4
.L442:
	beq	r6, zero, .L439
	ldw	r2, 0(r4)
	bne	r2, r5, .L436
	mov	r2, r4
	beq	r6, zero, .L439
.L433:
	ret
.L439:
	mov	r2, zero
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	br	.L456
.L446:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L456:
	beq	r6, zero, .L448
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L446
	beq	r6, zero, .L448
	blt	r3, r2, .L449
	cmplt	r2, r2, r3
	ret
.L448:
	mov	r2, zero
	ret
.L449:
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
	beq	r6, zero, .L458
	slli	r6, r6, 2
	call	memcpy
.L458:
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
	beq	r4, r5, .L464
	addi	r3, r6, -1
	sub	r4, r4, r5
	slli	r7, r6, 2
	bltu	r4, r7, .L465
	mov	r7, r2
	beq	r6, zero, .L475
.L466:
	addi	r5, r5, 4
	addi	r7, r7, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r7)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	bne	r6, zero, .L466
.L464:
	ret
.L475:
	ret
.L465:
	beq	r6, zero, .L464
	slli	r3, r3, 2
	add	r6, r5, r3
	add	r3, r2, r3
.L467:
	ldw	r7, 0(r6)
	stw	r7, 0(r3)
	mov	r7, r6
	addi	r6, r6, -4
	addi	r3, r3, -4
	bne	r5, r7, .L467
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L477
	mov	r6, r4
.L478:
	addi	r6, r6, 4
	stw	r5, -4(r6)
	addi	r3, r3, -1
	cmpnei	r7, r3, -1
	bne	r7, zero, .L478
.L477:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L484
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L483
.L486:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
	bne	r4, r2, .L486
	ret
.L484:
	beq	r4, r5, .L483
	beq	r6, zero, .L483
	add	r6, r4, r6
.L487:
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, -1(r4)
	stb	r2, -1(r5)
	bne	r6, r4, .L487
.L483:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L497
	sll	r3, r4, r3
	mov	r2, zero
.L498:
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	blt	r7, zero, .L499
	srl	r4, r5, r7
	mov	r5, zero
.L500:
	or	r2, r4, r2
	or	r3, r5, r3
	ret
.L497:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r3, r5, r6
	or	r3, r2, r3
	sll	r2, r4, r6
	br	.L498
.L499:
	slli	r7, r5, 1
	movi	r8, 31
	sub	r8, r8, r6
	sll	r7, r7, r8
	srl	r4, r4, r6
	or	r4, r7, r4
	srl	r5, r5, r6
	br	.L500
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L502
	srl	r8, r5, r8
	mov	r3, zero
.L503:
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	blt	r7, zero, .L504
	sll	r7, r4, r7
	mov	r2, zero
.L505:
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L502:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	br	.L503
.L504:
	srli	r2, r4, 1
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	br	.L505
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
.L520:
	srl	r3, r4, r2
	andi	r3, r3, 1
	addi	r2, r2, 1
	bne	r3, zero, .L517
	cmpnei	r3, r2, 32
	bne	r3, zero, .L520
	mov	r2, zero
.L517:
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L525
	andi	r2, r4, 1
	bne	r2, zero, .L522
	movi	r2, 1
.L524:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L524
	ret
.L525:
	mov	r2, zero
.L522:
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
	blt	r2, zero, .L531
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L528:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L531:
	movi	r2, 1
	br	.L528
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
	blt	r2, zero, .L536
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L533:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L536:
	movi	r2, 1
	br	.L533
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
	blt	r2, zero, .L541
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L538:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L541:
	movi	r2, 1
	br	.L538
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
	bne	r2, zero, .L546
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L546
	blt	r16, zero, .L561
	movhi	r17, 16384
	br	.L549
.L561:
	movhi	r17, 16128
	br	.L549
.L548:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L546
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L549:
	andi	r2, r16, 1
	beq	r2, zero, .L548
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L548
.L546:
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
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	mov	r18, r4
	mov	r17, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
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
.L578:
	movhi	r7, 16352
	br	.L566
.L565:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L563
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	mov	r6, r2
	mov	r7, r3
.L566:
	andi	r2, r16, 1
	beq	r2, zero, .L565
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	br	.L565
.L563:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	mov	r18, r4
	mov	r17, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L580
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
	beq	r2, zero, .L580
	mov	r6, zero
	blt	r16, zero, .L595
	movhi	r7, 16384
	br	.L583
.L595:
	movhi	r7, 16352
	br	.L583
.L582:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L580
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	mov	r6, r2
	mov	r7, r3
.L583:
	andi	r2, r16, 1
	beq	r2, zero, .L582
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	br	.L582
.L580:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L597
	add	r6, r5, r6
	mov	r3, r4
.L598:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	ldbu	r8, -1(r5)
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L598
.L597:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	mov	r2, r4
	ldb	r3, 0(r4)
	beq	r3, zero, .L610
	mov	r3, r4
.L605:
	addi	r3, r3, 1
	ldb	r7, 0(r3)
	bne	r7, zero, .L605
	br	.L617
.L610:
	mov	r3, r4
	br	.L617
.L608:
	addi	r5, r5, 1
	addi	r3, r3, 1
	addi	r6, r6, -1
.L617:
	beq	r6, zero, .L612
	ldbu	r7, 0(r5)
	stb	r7, 0(r3)
	andi	r7, r7, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	bne	r7, zero, .L608
	bne	r6, zero, .L609
.L612:
	stb	zero, 0(r3)
.L609:
	ret
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L625
.L619:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L621
.L618:
	ret
.L625:
	ret
.L621:
	addi	r2, r2, 1
	bne	r5, r2, .L619
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	mov	r2, r4
	ldb	r7, 0(r4)
	beq	r7, zero, .L631
.L627:
	mov	r3, r5
.L630:
	ldb	r6, 0(r3)
	beq	r6, zero, .L633
	addi	r3, r3, 1
	bne	r6, r7, .L630
.L628:
	ret
.L633:
	addi	r2, r2, 1
	ldb	r7, 0(r2)
	bne	r7, zero, .L627
.L631:
	mov	r2, zero
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L636
.L635:
	addi	r4, r4, 1
	beq	r3, zero, .L639
.L636:
	ldb	r3, 0(r4)
	bne	r3, r5, .L635
	mov	r2, r4
	br	.L635
.L639:
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	mov	r2, r4
	ldb	r8, 0(r5)
	mov	r3, r5
	beq	r8, zero, .L641
.L642:
	addi	r3, r3, 1
	ldb	r4, 0(r3)
	bne	r4, zero, .L642
.L641:
	sub	r10, r3, r5
	beq	r3, r5, .L643
	addi	r10, r10, -1
	br	.L649
.L652:
	mov	r6, r5
	br	.L645
.L648:
	beq	r2, zero, .L643
	ldbu	r4, 0(r2)
	beq	r4, zero, .L652
	add	r9, r2, r10
	mov	r6, r5
	mov	r3, r2
.L646:
	ldbu	r7, 0(r6)
	beq	r7, zero, .L645
	beq	r3, r9, .L645
	bne	r7, r4, .L645
	addi	r3, r3, 1
	addi	r6, r6, 1
	ldbu	r4, 0(r3)
	bne	r4, zero, .L646
.L645:
	ldbu	r3, 0(r6)
	beq	r3, r4, .L643
	addi	r2, r2, 1
.L649:
	ldb	r3, 0(r2)
	beq	r3, r8, .L648
	addi	r2, r2, 1
	bne	r3, zero, .L649
	mov	r2, zero
	ret
.L643:
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
	blt	r2, zero, .L674
.L665:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L668
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L667
.L668:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L674:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L665
.L667:
	xorhi	r16, r16, 32768
	br	.L668
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	beq	r7, zero, .L683
	bltu	r5, r7, .L685
	sub	r5, r5, r7
	add	r11, r4, r5
	bltu	r11, r4, .L685
	ldb	r12, 0(r6)
	br	.L682
.L697:
	ret
.L698:
	beq	r3, zero, .L675
	beq	r10, r9, .L675
.L677:
	bltu	r11, r4, .L685
.L682:
	ldbu	r3, 0(r4)
	mov	r2, r4
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, r12, .L677
	addi	r5, r6, 1
	addi	r3, r7, -1
	beq	r3, zero, .L697
	mov	r8, r4
.L678:
	ldbu	r10, 0(r8)
	ldbu	r9, 0(r5)
	bne	r10, r9, .L698
	addi	r3, r3, -1
	addi	r8, r8, 1
	addi	r5, r5, 1
	bne	r3, zero, .L678
	ret
.L683:
	mov	r2, r4
	ret
.L685:
	mov	r2, zero
.L675:
	ret
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r6
	beq	r6, zero, .L700
	call	memmove
.L700:
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
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r18, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L730
	mov	r19, zero
.L706:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r17
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L727
	mov	r20, zero
.L710:
	addi	r20, r20, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__muldf3
	mov	r17, r2
	mov	r16, r3
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r2
	mov	r5, r3
	call	__gedf2
	bge	r2, zero, .L710
.L711:
	stw	r20, 0(r18)
	beq	r19, zero, .L714
	xorhi	r16, r16, 32768
.L714:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L730:
	xorhi	r16, r16, 32768
	movi	r19, 1
	br	.L706
.L727:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L728
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__eqdf2
	mov	r20, zero
	beq	r2, zero, .L711
.L713:
	addi	r20, r20, -1
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__adddf3
	mov	r17, r2
	mov	r16, r3
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r2
	mov	r5, r3
	call	__ltdf2
	blt	r2, zero, .L713
	br	.L711
.L728:
	mov	r20, zero
	br	.L711
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
	beq	r2, zero, .L735
	mov	r16, r4
	mov	r18, r5
	mov	r20, r6
	mov	r17, r7
	mov	r21, zero
	mov	r19, zero
.L734:
	mov	r6, r20
	mov	r7, r17
	andi	r4, r16, 1
	mov	r5, zero
	call	__muldi3
	add	r2, r21, r2
	cmpltu	r4, r2, r21
	add	r3, r19, r3
	mov	r21, r2
	add	r19, r4, r3
	srli	r2, r20, 31
	slli	r17, r17, 1
	or	r17, r2, r17
	slli	r20, r20, 1
	slli	r2, r18, 31
	srli	r16, r16, 1
	or	r16, r2, r16
	srli	r18, r18, 1
	or	r2, r16, r18
	bne	r2, zero, .L734
.L731:
	mov	r2, r21
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
.L735:
	mov	r21, zero
	mov	r19, zero
	br	.L731
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L747
	movi	r2, 32
	movi	r3, 1
.L739:
	blt	r5, zero, .L740
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L740
	addi	r2, r2, -1
	bne	r2, zero, .L739
.L751:
	mov	r2, zero
.L742:
	bne	r6, zero, .L752
.L738:
	ret
.L740:
	beq	r3, zero, .L751
.L747:
	mov	r2, zero
	br	.L741
.L744:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L742
.L741:
	bltu	r4, r5, .L744
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L744
.L752:
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
	beq	r3, r2, .L755
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
.L755:
	movi	r2, 7
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	mov	r2, r4
	mov	r3, r5
	srai	r6, r5, 31
	xor	r4, r4, r6
	xor	r5, r5, r6
	beq	r2, r6, .L769
.L764:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L769:
	bne	r3, r2, .L764
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L773
.L772:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L772
	ret
.L773:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r9, r6, 3
	movi	r10, -8
	and	r10, r6, r10
	bgeu	r4, r5, .L776
.L779:
	beq	r9, zero, .L778
	mov	r2, r5
	mov	r3, r4
	slli	r9, r9, 3
	add	r9, r9, r5
.L782:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r2, r2, 8
	addi	r3, r3, 8
	bne	r2, r9, .L782
.L778:
	bgeu	r10, r6, .L775
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L783:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L783
	ret
.L776:
	add	r2, r5, r6
	bltu	r2, r4, .L779
	addi	r2, r6, -1
	beq	r6, zero, .L788
.L780:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L780
.L775:
	ret
.L788:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bgeu	r4, r5, .L790
.L793:
	beq	r8, zero, .L792
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
.L796:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
	bne	r2, r8, .L796
.L792:
	andi	r2, r6, 1
	beq	r2, zero, .L789
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L790:
	add	r2, r5, r6
	bltu	r2, r4, .L793
	addi	r2, r6, -1
	beq	r6, zero, .L803
.L794:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L794
.L789:
	ret
.L803:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r8, r6, 2
	movi	r9, -4
	and	r9, r6, r9
	bgeu	r4, r5, .L805
.L808:
	beq	r8, zero, .L807
	mov	r2, r5
	mov	r3, r4
	slli	r8, r8, 2
	add	r8, r8, r5
.L811:
	ldw	r7, 0(r2)
	stw	r7, 0(r3)
	addi	r2, r2, 4
	addi	r3, r3, 4
	bne	r2, r8, .L811
.L807:
	bgeu	r9, r6, .L804
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L812:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L812
	ret
.L805:
	add	r2, r5, r6
	bltu	r2, r4, .L808
	addi	r2, r6, -1
	beq	r6, zero, .L817
.L809:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L809
.L804:
	ret
.L817:
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
.L832:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L830
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L832
.L830:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L836:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L834
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L836
.L834:
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
	bge	r2, zero, .L845
	mov	r4, r16
	call	__fixsfsi
.L838:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L845:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L838
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
.L847:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L847
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
.L850:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L850
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	beq	r4, zero, .L855
.L854:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L854
	ret
.L855:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L860
	beq	r5, zero, .L861
.L859:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srli	r5, r5, 1
	bne	r5, zero, .L859
	ret
.L860:
	ret
.L861:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L872
	movi	r2, 32
	movi	r3, 1
.L864:
	blt	r5, zero, .L865
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L865
	addi	r2, r2, -1
	bne	r2, zero, .L864
.L876:
	mov	r2, zero
.L867:
	bne	r6, zero, .L877
.L863:
	ret
.L865:
	beq	r3, zero, .L876
.L872:
	mov	r2, zero
	br	.L866
.L869:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L867
.L866:
	bltu	r4, r5, .L869
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L869
.L877:
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
	blt	r2, zero, .L881
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L878:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L881:
	movi	r2, -1
	br	.L878
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
	blt	r2, zero, .L886
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L883:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L886:
	movi	r2, -1
	br	.L883
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
	blt	r5, zero, .L906
	mov	r7, zero
.L893:
	beq	r5, zero, .L898
	movi	r6, 32
	mov	r2, zero
.L895:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srai	r5, r5, 1
	beq	r5, zero, .L894
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L895
.L894:
	beq	r7, zero, .L892
	sub	r2, zero, r2
.L892:
	ret
.L906:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L893
.L898:
	mov	r2, zero
	br	.L894
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L927
	mov	r7, zero
.L908:
	blt	r5, zero, .L928
.L909:
	mov	r6, r4
	bgeu	r5, r4, .L917
	movi	r3, 32
	movi	r2, 1
.L911:
	add	r5, r5, r5
	add	r2, r2, r2
	bgeu	r5, r4, .L910
	addi	r3, r3, -1
	bne	r3, zero, .L911
.L918:
	mov	r3, zero
.L912:
	mov	r2, r3
	beq	r7, zero, .L907
	sub	r2, zero, r3
.L907:
	ret
.L927:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L908
.L928:
	sub	r5, zero, r5
	xori	r7, r7, 1
	br	.L909
.L917:
	movi	r2, 1
	br	.L926
.L910:
	beq	r2, zero, .L918
.L926:
	mov	r3, zero
	br	.L914
.L929:
	sub	r6, r6, r5
	or	r3, r3, r2
.L913:
	srli	r2, r2, 1
	srli	r5, r5, 1
	beq	r2, zero, .L912
.L914:
	bltu	r6, r5, .L913
	br	.L929
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L951
	mov	r7, zero
.L931:
	mov	r6, r4
	mov	r2, r5
	blt	r5, zero, .L952
.L932:
	bgeu	r2, r4, .L940
	movi	r5, 32
	movi	r3, 1
.L934:
	add	r2, r2, r2
	add	r3, r3, r3
	bgeu	r2, r4, .L950
	addi	r5, r5, -1
	bne	r5, zero, .L934
.L935:
	mov	r2, r6
	beq	r7, zero, .L930
	sub	r2, zero, r6
.L930:
	ret
.L951:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L931
.L952:
	sub	r2, zero, r5
	br	.L932
.L940:
	movi	r3, 1
	br	.L945
.L953:
	sub	r6, r6, r2
.L936:
	srli	r3, r3, 1
	srli	r2, r2, 1
.L950:
	beq	r3, zero, .L935
.L945:
	bltu	r6, r2, .L936
	br	.L953
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov	r9, r4
	mov	r3, r5
	andi	r5, r5, 0xffff
	andi	r4, r4, 0xffff
	bgeu	r5, r4, .L968
	movi	r4, 16
	movi	r5, 1
	andi	r7, r9, 0xffff
.L955:
	andi	r2, r3, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L956
	add	r2, r3, r3
	mov	r3, r2
	slli	r5, r5, 1
	andi	r2, r2, 0xffff
	bgeu	r2, r7, .L956
	addi	r4, r4, -1
	bne	r4, zero, .L955
	mov	r5, zero
.L967:
	mov	r2, r5
.L958:
	bne	r6, zero, .L969
.L954:
	ret
.L968:
	movi	r5, 1
	movi	r4, 1
	br	.L963
.L956:
	andi	r4, r5, 0xffff
	beq	r4, zero, .L967
.L963:
	mov	r2, zero
	br	.L957
.L960:
	srli	r4, r4, 1
	mov	r5, r4
	srli	r3, r8, 1
	beq	r4, zero, .L958
	andi	r4, r4, 0xffff
.L957:
	andi	r7, r9, 0xffff
	andi	r8, r3, 0xffff
	bltu	r7, r8, .L960
	sub	r9, r9, r3
	or	r2, r5, r2
	br	.L960
.L969:
	mov	r2, r9
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L979
	movi	r2, 32
	movi	r3, 1
.L971:
	blt	r5, zero, .L972
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L972
	addi	r2, r2, -1
	bne	r2, zero, .L971
.L983:
	mov	r2, zero
.L974:
	bne	r6, zero, .L984
.L970:
	ret
.L972:
	beq	r3, zero, .L983
.L979:
	mov	r2, zero
	br	.L973
.L976:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L974
.L973:
	bltu	r4, r5, .L976
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L976
.L984:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L986
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r2, zero
	ret
.L986:
	beq	r6, zero, .L989
	sll	r2, r4, r6
	movi	r3, 32
	sub	r3, r3, r6
	srl	r4, r4, r3
	sll	r3, r5, r6
	or	r3, r4, r3
	ret
.L989:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L991
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L991:
	beq	r6, zero, .L994
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L994:
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
	sub	r6, r2, r4
	srl	r3, r3, r6
	srli	r6, r3, 1
	andi	r6, r6, 1
	bne	r6, zero, .L998
	sub	r2, r2, r3
.L999:
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L998:
	mov	r2, zero
	br	.L999
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1004
	blt	r7, r5, .L1005
	bltu	r4, r6, .L1004
	bltu	r6, r4, .L1005
	movi	r2, 1
	ret
.L1004:
	mov	r2, zero
	ret
.L1005:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1010
	blt	r7, r5, .L1011
	bltu	r4, r6, .L1010
	bltu	r6, r4, .L1011
	movi	r2, 1
	br	.L1007
.L1010:
	mov	r2, zero
.L1007:
	addi	r2, r2, -1
	ret
.L1011:
	movi	r2, 2
	br	.L1007
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
	beq	r2, zero, .L1014
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r3, zero
	ret
.L1014:
	beq	r6, zero, .L1017
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L1017:
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
	andi	r9, r4, 65535
	andi	r8, r6, 65535
	mul	r2, r9, r8
	srli	r10, r2, 16
	srli	r3, r4, 16
	mul	r8, r8, r3
	add	r8, r8, r10
	andi	r11, r8, 0xffff
	srli	r10, r6, 16
	mul	r9, r9, r10
	add	r9, r9, r11
	andi	r2, r2, 0xffff
	slli	r11, r9, 16
	srli	r8, r8, 16
	mul	r3, r3, r10
	add	r8, r8, r3
	srli	r9, r9, 16
	add	r8, r8, r9
	mul	r4, r4, r7
	add	r4, r4, r8
	mul	r3, r6, r5
	add	r2, r2, r11
	add	r3, r4, r3
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
	stw	r20, 20(sp)
	stw	r19, 16(sp)
	stw	r18, 12(sp)
	stw	r17, 8(sp)
	stw	r16, 4(sp)
	mov	r20, r4
	mov	r7, r5
	mov	r19, r6
	mov	r16, r6
	mov	r18, zero
	movhi	r17, 16368
	br	.L1028
.L1026:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L1027
	mov	r6, r20
	mov	r4, r20
	mov	r5, r7
	call	__muldf3
	mov	r20, r2
	mov	r7, r3
.L1028:
	andi	r2, r16, 1
	beq	r2, zero, .L1026
	mov	r6, r20
	stw	r7, 0(sp)
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
	ldw	r7, 0(sp)
	br	.L1026
.L1027:
	blt	r19, zero, .L1034
.L1025:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r20, 20(sp)
	ldw	r19, 16(sp)
	ldw	r18, 12(sp)
	ldw	r17, 8(sp)
	ldw	r16, 4(sp)
	addi	sp, sp, 28
	ret
.L1034:
	mov	r6, r18
	mov	r7, r17
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r18, r2
	mov	r17, r3
	br	.L1025
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
	br	.L1038
.L1036:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L1037
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L1038:
	andi	r2, r16, 1
	beq	r2, zero, .L1036
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L1036
.L1037:
	blt	r19, zero, .L1044
.L1035:
	mov	r2, r18
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L1044:
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
	br	.L1035
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L1049
	bltu	r7, r5, .L1050
	bltu	r4, r6, .L1049
	bltu	r6, r4, .L1050
	movi	r2, 1
	ret
.L1049:
	mov	r2, zero
	ret
.L1050:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1055
	bltu	r7, r5, .L1056
	bltu	r4, r6, .L1055
	bltu	r6, r4, .L1056
	movi	r2, 1
	br	.L1052
.L1055:
	mov	r2, zero
.L1052:
	addi	r2, r2, -1
	ret
.L1056:
	movi	r2, 2
	br	.L1052
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
