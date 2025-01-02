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
	bne	r4, r5, .L35
.L3:
	ret
.L35:
	beq	r6, zero, .L3
	addi	r3, r6, -1
	cmpltui	r3, r3, 7
	addi	r4, r5, 1
	bne	r3, zero, .L5
	or	r3, r5, r2
	andi	r3, r3, 3
	addi	r4, r5, 1
	bne	r3, zero, .L5
	sub	r3, r2, r4
	cmpgeui	r3, r3, 3
	beq	r3, zero, .L5
	srli	r8, r6, 2
	mov	r3, r2
	slli	r8, r8, 2
	add	r7, r5, r8
.L6:
	ldw	r4, 0(r5)
	addi	r5, r5, 4
	addi	r3, r3, 4
	stw	r4, -4(r3)
	bne	r7, r5, .L6
	add	r5, r2, r8
	sub	r3, r6, r8
	beq	r6, r8, .L3
	ldbu	r6, 0(r7)
	cmpeqi	r4, r3, 1
	stb	r6, 0(r5)
	bne	r4, zero, .L3
	ldbu	r4, 1(r7)
	cmpeqi	r3, r3, 2
	stb	r4, 1(r5)
	bne	r3, zero, .L3
	ldbu	r3, 2(r7)
	stb	r3, 2(r5)
	ret
.L5:
	add	r6, r2, r6
	mov	r3, r2
.L9:
	ldbu	r5, -1(r4)
	addi	r3, r3, 1
	addi	r4, r4, 1
	stb	r5, -1(r3)
	bne	r3, r6, .L9
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
	andi	r3, r3, 0xff
	bne	r3, r6, .L40
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
	bne	r6, zero, .L47
	br	.L50
.L49:
	addi	r4, r4, 1
	beq	r6, zero, .L50
.L47:
	ldbu	r2, 0(r4)
	addi	r6, r6, -1
	bne	r2, r5, .L49
	mov	r2, r4
	ret
.L50:
	mov	r2, zero
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	beq	r6, zero, .L57
.L63:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 1
	bne	r2, r3, .L62
	addi	r5, r5, 1
	bne	r6, zero, .L63
.L57:
	mov	r2, zero
	ret
.L62:
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
	beq	r6, zero, .L65
	call	memcpy
.L65:
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
	br	.L71
.L73:
	ldbu	r3, 0(r2)
	addi	r6, r6, -1
	beq	r3, r5, .L70
.L71:
	mov	r2, r6
	bne	r6, r4, .L73
	mov	r2, zero
.L70:
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
	beq	r6, zero, .L77
	andi	r5, r5, 0xff
	call	memset
.L77:
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
	beq	r3, zero, .L80
.L81:
	ldbu	r3, 1(r5)
	addi	r2, r2, 1
	addi	r5, r5, 1
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	stb	r3, 0(r2)
	bne	r4, zero, .L81
.L80:
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
	bne	r4, zero, .L87
	ret
.L89:
	ldbu	r3, 1(r2)
	addi	r2, r2, 1
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, zero, .L86
.L87:
	andi	r3, r3, 0xff
	bne	r3, r5, .L89
.L86:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
	br	.L95
.L98:
	addi	r2, r2, 1
	beq	r3, zero, .L97
.L95:
	ldb	r3, 0(r2)
	bne	r3, r5, .L98
	ret
.L97:
	mov	r2, zero
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
.L102:
	ldbu	r2, 0(r4)
	ldbu	r6, 0(r5)
	andi	r3, r2, 255
	andi	r7, r6, 255
	xori	r3, r3, 128
	xori	r7, r7, 128
	addi	r3, r3, -128
	addi	r7, r7, -128
	bne	r3, r7, .L107
	addi	r4, r4, 1
	addi	r5, r5, 1
	bne	r3, zero, .L102
	mov	r2, zero
.L101:
	andi	r6, r6, 0xff
	sub	r2, r2, r6
	ret
.L107:
	andi	r2, r2, 0xff
	br	.L101
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L111
	mov	r2, r4
.L110:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L110
	sub	r2, r2, r4
	ret
.L111:
	mov	r2, zero
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L121
	ldbu	r2, 0(r4)
	beq	r2, zero, .L123
	addi	r6, r6, -1
	add	r6, r4, r6
	br	.L117
.L125:
	beq	r4, r6, .L116
	addi	r4, r4, 1
	bne	r3, r2, .L116
	ldbu	r2, 0(r4)
	beq	r2, zero, .L124
	mov	r5, r7
.L117:
	ldbu	r3, 0(r5)
	addi	r7, r5, 1
	bne	r3, zero, .L125
.L116:
	sub	r2, r2, r3
	ret
.L121:
	mov	r2, zero
	ret
.L124:
	ldbu	r3, 1(r5)
	sub	r2, r2, r3
	ret
.L123:
	ldbu	r3, 0(r5)
	br	.L116
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L126
	srli	r6, r6, 1
	add	r6, r6, r6
	add	r2, r4, r6
.L128:
	ldbu	r6, 1(r4)
	ldbu	r3, 0(r4)
	addi	r4, r4, 2
	stb	r6, 0(r5)
	stb	r3, 1(r5)
	addi	r5, r5, 2
	bne	r4, r2, .L128
.L126:
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
	bne	r2, zero, .L134
	cmpeqi	r2, r4, 9
	ret
.L134:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L137
	cmpeqi	r2, r4, 127
	ret
.L137:
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
	bne	r2, zero, .L144
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
	ret
.L144:
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
	bne	r2, zero, .L150
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	beq	r2, zero, .L151
.L150:
	movi	r2, 1
	ret
.L151:
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L150
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
	beq	r2, zero, .L160
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L158
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L158
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L158
	movhi	r2, 65535
	addi	r2, r2, 4
	movhi	r3, 16
	add	r2, r4, r2
	addi	r3, r3, 3
	bltu	r3, r2, .L159
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L158:
	movi	r2, 1
	ret
.L160:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	ret
.L159:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L163
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	ret
.L163:
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
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	mov	r17, r4
	mov	r16, r5
	mov	r19, r6
	mov	r18, r7
	call	__gtdf2
	ble	r2, zero, .L170
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
.L165:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L170:
	mov	r2, zero
	mov	r3, zero
	br	.L165
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	addi	sp, sp, -12
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	mov	r16, r4
	mov	r17, r5
	call	__gtsf2
	ble	r2, zero, .L177
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L172:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L177:
	mov	r2, zero
	br	.L172
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	andhi	r2, r5, 32768
	andhi	r3, r7, 32768
	mov	r16, r5
	mov	r18, r7
	mov	r17, r4
	mov	r19, r6
	beq	r2, r3, .L180
	bne	r2, zero, .L190
.L185:
	mov	r2, r17
.L189:
	mov	r3, r16
.L179:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L180:
	call	__ltdf2
	bge	r2, zero, .L185
	mov	r2, r19
	mov	r16, r18
	br	.L189
.L190:
	mov	r2, r6
	mov	r3, r7
	br	.L179
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -12
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	andhi	r2, r4, 32768
	andhi	r3, r5, 32768
	mov	r16, r4
	mov	r17, r5
	beq	r2, r3, .L192
	bne	r2, zero, .L201
.L197:
	mov	r2, r16
.L191:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L192:
	call	__ltsf2
	bge	r2, zero, .L197
	mov	r16, r17
	br	.L197
.L201:
	mov	r2, r5
	br	.L191
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	andhi	r2, r5, 32768
	andhi	r3, r7, 32768
	mov	r16, r5
	mov	r18, r7
	mov	r17, r4
	mov	r19, r6
	beq	r2, r3, .L203
	bne	r2, zero, .L213
.L208:
	mov	r2, r17
.L212:
	mov	r3, r16
.L202:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L203:
	call	__ltdf2
	bge	r2, zero, .L208
	mov	r2, r19
	mov	r16, r18
	br	.L212
.L213:
	mov	r2, r6
	mov	r3, r7
	br	.L202
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	andhi	r2, r5, 32768
	andhi	r3, r7, 32768
	mov	r18, r5
	mov	r16, r7
	mov	r19, r4
	mov	r17, r6
	beq	r2, r3, .L215
	bne	r2, zero, .L225
.L220:
	mov	r2, r17
.L224:
	mov	r3, r16
.L214:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L215:
	call	__ltdf2
	bge	r2, zero, .L220
	mov	r2, r19
	mov	r16, r18
	br	.L224
.L225:
	mov	r2, r4
	mov	r3, r5
	br	.L214
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -12
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 8(sp)
	andhi	r2, r4, 32768
	andhi	r3, r5, 32768
	mov	r17, r4
	mov	r16, r5
	beq	r2, r3, .L227
	bne	r2, zero, .L236
.L232:
	mov	r2, r16
.L226:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L227:
	call	__ltsf2
	bge	r2, zero, .L232
	mov	r16, r17
	br	.L232
.L236:
	mov	r2, r4
	br	.L226
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	addi	sp, sp, -20
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 16(sp)
	andhi	r2, r5, 32768
	andhi	r3, r7, 32768
	mov	r18, r5
	mov	r16, r7
	mov	r19, r4
	mov	r17, r6
	beq	r2, r3, .L238
	bne	r2, zero, .L248
.L243:
	mov	r2, r17
.L247:
	mov	r3, r16
.L237:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L238:
	call	__ltdf2
	bge	r2, zero, .L243
	mov	r2, r19
	mov	r16, r18
	br	.L247
.L248:
	mov	r2, r4
	mov	r3, r5
	br	.L237
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
	addi	r3, gp, %gprel(s.0)
	beq	r4, zero, .L250
.L251:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	srli	r4, r4, 6
	addi	r3, r3, 1
	stb	r2, -1(r3)
	bne	r4, zero, .L251
.L250:
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
	beq	r5, zero, .L263
	ldw	r2, 0(r5)
	stw	r5, 4(r4)
	stw	r2, 0(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L257
	stw	r4, 4(r2)
.L257:
	ret
.L263:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L265
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L265:
	ldw	r3, 4(r4)
	beq	r3, zero, .L264
	stw	r2, 0(r3)
.L264:
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
	beq	r17, zero, .L274
	mov	r21, r5
	mov	fp, zero
	br	.L276
.L289:
	add	r21, r21, r16
	beq	r17, fp, .L274
.L276:
	mov	r5, r21
	mov	r4, r18
	callr	r20
	mov	r19, r21
	addi	fp, fp, 1
	bne	r2, zero, .L289
.L273:
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
.L274:
	ldw	r2, 4(sp)
	mul	r19, r16, r17
	addi	r17, r17, 1
	stw	r17, 0(r2)
	ldw	r2, 0(sp)
	add	r19, r2, r19
	beq	r16, zero, .L273
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L273
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
	beq	r19, zero, .L291
	mov	r18, r4
	mov	r21, r7
	mov	r16, r5
	mov	r17, zero
	br	.L293
.L302:
	add	r16, r16, r21
	beq	r19, r17, .L291
.L293:
	mov	r5, r16
	mov	r4, r18
	callr	r20
	mov	fp, r16
	addi	r17, r17, 1
	bne	r2, zero, .L302
.L290:
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
.L291:
	mov	fp, zero
	br	.L290
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L304
	sub	r2, zero, r4
.L304:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
.L312:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r2, r2, 5
	bne	r5, zero, .L306
	bne	r2, zero, .L306
	cmpeqi	r2, r3, 43
	bne	r2, zero, .L307
	cmpeqi	r2, r3, 45
	beq	r2, zero, .L325
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L317
	movi	r8, 1
.L310:
	mov	r2, zero
.L314:
	addi	r4, r4, 1
	addi	r7, r3, -48
	ldb	r3, 0(r4)
	muli	r6, r2, 10
	addi	r5, r3, -48
	cmpltui	r5, r5, 10
	sub	r2, r6, r7
	bne	r5, zero, .L314
	bne	r8, zero, .L305
	sub	r2, r7, r6
	ret
.L306:
	addi	r4, r4, 1
	br	.L312
.L325:
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	mov	r8, zero
	bne	r2, zero, .L310
	ret
.L317:
	mov	r2, zero
.L305:
	ret
.L307:
	ldb	r3, 1(r4)
	mov	r8, zero
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L310
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
.L331:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r2, r2, 5
	bne	r5, zero, .L327
	bne	r2, zero, .L327
	cmpeqi	r2, r3, 43
	bne	r2, zero, .L328
	cmpeqi	r2, r3, 45
	beq	r2, zero, .L346
	ldb	r3, 1(r4)
	movi	r8, 1
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L347
.L332:
	mov	r2, zero
.L335:
	addi	r4, r4, 1
	addi	r7, r3, -48
	ldb	r3, 0(r4)
	muli	r6, r2, 10
	addi	r5, r3, -48
	cmpltui	r5, r5, 10
	sub	r2, r6, r7
	bne	r5, zero, .L335
	bne	r8, zero, .L326
	sub	r2, r7, r6
	ret
.L327:
	addi	r4, r4, 1
	br	.L331
.L346:
	addi	r2, r3, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L348
.L339:
	mov	r8, zero
	br	.L332
.L328:
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r2, r3, -48
	cmpgeui	r2, r2, 10
	beq	r2, zero, .L339
	mov	r2, zero
.L326:
	ret
.L348:
	ret
.L347:
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
.L356:
	ldb	r17, 0(r4)
	cmpeqi	r3, r17, 32
	bne	r3, zero, .L350
	addi	r2, r17, -9
	cmpltui	r2, r2, 5
	bne	r2, zero, .L350
	cmpeqi	r2, r17, 43
	bne	r2, zero, .L351
	cmpeqi	r2, r17, 45
	beq	r2, zero, .L370
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	addi	r2, r17, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L361
	movi	r18, 1
.L354:
	mov	r4, zero
	mov	r5, zero
.L358:
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
	bne	r6, zero, .L358
	bne	r18, zero, .L349
	sub	r4, r7, r2
	cmpltu	r7, r7, r4
	sub	r8, r8, r3
	sub	r5, r8, r7
.L349:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L350:
	addi	r4, r4, 1
	br	.L356
.L370:
	addi	r2, r17, -48
	cmpltui	r2, r2, 10
	beq	r2, zero, .L361
	mov	r16, r4
	mov	r18, zero
	br	.L354
.L351:
	ldb	r17, 1(r4)
	addi	r16, r4, 1
	mov	r18, zero
	addi	r2, r17, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L354
.L361:
	mov	r4, zero
	mov	r5, zero
	br	.L349
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
	beq	r6, zero, .L372
	mov	r16, r6
	mov	r20, r4
	mov	r19, r5
	mov	r18, r7
.L375:
	srli	fp, r16, 1
	mov	r4, r20
	addi	r16, r16, -1
	mul	r17, fp, r18
	add	r17, r19, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L376
	beq	r2, zero, .L371
	sub	r16, r16, fp
	add	r19, r17, r18
	bne	r16, zero, .L375
.L372:
	mov	r17, zero
.L371:
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
.L376:
	mov	r16, fp
	bne	r16, zero, .L375
	br	.L372
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi	sp, sp, -32
	stw	r21, 20(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r20, 16(sp)
	ldw	r21, 32(sp)
	mov	r16, r6
	mov	r19, r4
	mov	r18, r5
	mov	r17, r7
	beq	r6, zero, .L390
.L386:
	srai	r20, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r20, r17
	addi	r16, r16, -1
	srai	r16, r16, 1
	add	fp, r18, fp
	mov	r5, fp
	callr	r21
	beq	r2, zero, .L385
	bge	zero, r2, .L388
	add	r18, fp, r17
	bne	r16, zero, .L386
.L390:
	mov	fp, zero
.L385:
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
.L388:
	beq	r20, zero, .L390
	mov	r16, r20
	br	.L386
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
	bne	r2, zero, .L401
	slli	r2, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	cmpgeui	r18, r18, 16
	or	r2, r2, r5
	add	r3, r2, r3
	ldbu	r19, %lo(__divsi3_table)(r3)
	bne	r18, zero, .L403
.L405:
	slli	r2, r16, 4
	movhi	r3, %hiadj(__divsi3_table)
	or	r2, r2, r17
	add	r3, r2, r3
	ldbu	r3, %lo(__divsi3_table)(r3)
.L402:
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
.L401:
	call	__divsi3
	cmpgeui	r18, r18, 16
	mov	r19, r2
	beq	r18, zero, .L405
.L403:
	mov	r5, r17
	mov	r4, r16
	call	__divsi3
	mov	r3, r2
	br	.L402
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L407
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L407:
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
	bge	r4, zero, .L412
	sub	r2, zero, r4
.L412:
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
	bne	r2, zero, .L415
	slli	r2, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	cmpgeui	r18, r18, 16
	or	r2, r2, r5
	add	r3, r2, r3
	ldbu	r19, %lo(__divsi3_table)(r3)
	bne	r18, zero, .L417
.L419:
	slli	r2, r16, 4
	movhi	r3, %hiadj(__divsi3_table)
	or	r2, r2, r17
	add	r3, r2, r3
	ldbu	r3, %lo(__divsi3_table)(r3)
.L416:
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
.L415:
	call	__divsi3
	cmpgeui	r18, r18, 16
	mov	r19, r2
	beq	r18, zero, .L419
.L417:
	mov	r5, r17
	mov	r4, r16
	call	__divsi3
	mov	r3, r2
	br	.L416
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	mov	r3, r5
	mov	r2, r4
	bge	r5, zero, .L421
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L421:
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
	beq	r2, zero, .L431
.L426:
	beq	r5, r2, .L432
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L426
	mov	r2, zero
	ret
.L432:
	mov	r2, r4
	ret
.L431:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L436:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L435
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r3, zero, .L436
.L435:
	blt	r3, r2, .L438
	cmplt	r2, r2, r3
	ret
.L438:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L441:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L441
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L446
	mov	r2, r4
.L445:
	ldw	r3, 4(r2)
	addi	r2, r2, 4
	bne	r3, zero, .L445
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L446:
	mov	r2, zero
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L454
.L458:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	addi	r6, r6, -1
	bne	r2, r3, .L451
	beq	r2, zero, .L451
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L458
.L454:
	mov	r2, zero
	ret
.L451:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L459
	cmplt	r2, r2, r3
	ret
.L459:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L464
.L469:
	ldw	r2, 0(r4)
	addi	r6, r6, -1
	beq	r2, r5, .L468
	addi	r4, r4, 4
	bne	r6, zero, .L469
.L464:
	mov	r2, zero
	ret
.L468:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L476
.L482:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r3, r2, .L481
	addi	r5, r5, 4
	bne	r6, zero, .L482
.L476:
	mov	r2, zero
	ret
.L481:
	blt	r3, r2, .L483
	cmplt	r2, r2, r3
	ret
.L483:
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
	beq	r6, zero, .L485
	slli	r6, r6, 2
	call	memcpy
.L485:
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
	beq	r4, r5, .L498
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L504
	beq	r6, zero, .L498
	slli	r3, r3, 2
	add	r6, r5, r3
	add	r3, r2, r3
.L495:
	ldw	r8, 0(r6)
	mov	r7, r6
	addi	r3, r3, -4
	stw	r8, 4(r3)
	addi	r6, r6, -4
	bne	r5, r7, .L495
	ret
.L504:
	mov	r7, r2
	beq	r6, zero, .L505
.L493:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r7)
	addi	r5, r5, 4
	addi	r7, r7, 4
	bne	r6, zero, .L493
.L498:
	ret
.L505:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L507
	mov	r6, r4
.L508:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L508
.L507:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L514
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L513
.L516:
	ldbu	r3, -1(r2)
	addi	r2, r2, -1
	addi	r5, r5, -1
	stb	r3, 0(r5)
	bne	r4, r2, .L516
	ret
.L514:
	bne	r4, r5, .L547
.L513:
	ret
.L547:
	beq	r6, zero, .L513
	addi	r2, r6, -1
	cmpltui	r2, r2, 7
	bne	r2, zero, .L546
	or	r2, r5, r4
	andi	r2, r2, 3
	bne	r2, zero, .L546
	addi	r2, r4, 1
	sub	r3, r5, r2
	cmpgeui	r3, r3, 3
	beq	r3, zero, .L517
	srli	r8, r6, 2
	mov	r2, r5
	slli	r8, r8, 2
	add	r7, r4, r8
.L518:
	ldw	r3, 0(r4)
	addi	r4, r4, 4
	addi	r2, r2, 4
	stw	r3, -4(r2)
	bne	r7, r4, .L518
	add	r5, r5, r8
	sub	r2, r6, r8
	beq	r6, r8, .L513
	ldbu	r4, 0(r7)
	cmpeqi	r3, r2, 1
	stb	r4, 0(r5)
	bne	r3, zero, .L513
	ldbu	r3, 1(r7)
	cmpeqi	r2, r2, 2
	stb	r3, 1(r5)
	bne	r2, zero, .L513
	ldbu	r2, 2(r7)
	stb	r2, 2(r5)
	ret
.L546:
	addi	r2, r4, 1
.L517:
	add	r4, r4, r6
	br	.L521
.L548:
	addi	r2, r2, 1
.L521:
	ldbu	r3, -1(r2)
	addi	r5, r5, 1
	stb	r3, -1(r5)
	bne	r2, r4, .L548
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L550
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	sll	r3, r4, r3
	mov	r2, zero
	blt	r7, zero, .L552
.L554:
	srl	r4, r5, r7
	mov	r5, zero
	or	r3, r5, r3
	or	r2, r4, r2
	ret
.L550:
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
	bge	r7, zero, .L554
.L552:
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
	blt	r2, zero, .L556
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	srl	r2, r5, r2
	mov	r3, zero
	blt	r7, zero, .L558
.L560:
	sll	r5, r4, r7
	mov	r4, zero
	or	r2, r4, r2
	or	r3, r5, r3
	ret
.L556:
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
	bge	r7, zero, .L560
.L558:
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
	br	.L575
.L578:
	beq	r5, zero, .L577
.L575:
	srl	r3, r4, r2
	addi	r2, r2, 1
	cmpnei	r5, r2, 32
	andi	r3, r3, 1
	beq	r3, zero, .L578
	ret
.L577:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L582
	andi	r2, r4, 1
	bne	r2, zero, .L579
	movi	r2, 1
.L581:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L581
	ret
.L582:
	mov	r2, zero
.L579:
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	mov	r2, zero
	ret
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	mov	r2, zero
	ret
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	mov	r2, zero
	ret
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
	mov	r18, r4
	stw	r17, 4(sp)
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L591
	blt	r16, zero, .L607
	movhi	r17, 16384
.L592:
	andi	r2, r16, 1
	beq	r2, zero, .L593
.L594:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L593:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L591
.L595:
	mov	r4, r17
	mov	r5, r17
	call	__mulsf3
	srli	r3, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r3, r3, r16
	bne	r4, zero, .L594
	srai	r16, r3, 1
	br	.L595
.L591:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L607:
	movhi	r17, 16128
	br	.L592
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
	mov	r18, r4
	mov	r17, r5
	stw	ra, 20(sp)
	call	__adddf3
	mov	r6, r18
	mov	r7, r17
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L609
	mov	r6, zero
	blt	r16, zero, .L625
	movhi	r7, 16384
.L610:
	andi	r2, r16, 1
	beq	r2, zero, .L611
.L612:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L611:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L609
.L613:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L612
	srai	r16, r8, 1
	br	.L613
.L609:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L625:
	movhi	r7, 16352
	br	.L610
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
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r18
	mov	r5, r17
	call	__eqdf2
	beq	r2, zero, .L627
	mov	r6, zero
	blt	r16, zero, .L643
	movhi	r7, 16384
.L628:
	andi	r2, r16, 1
	beq	r2, zero, .L629
.L630:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r18, r2
	mov	r17, r3
.L629:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L627
.L631:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L630
	srai	r16, r8, 1
	br	.L631
.L627:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L643:
	movhi	r7, 16352
	br	.L628
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L645
	addi	r3, r6, -1
	cmpltui	r3, r3, 4
	bne	r3, zero, .L646
	or	r3, r4, r5
	andi	r3, r3, 3
	bne	r3, zero, .L646
	srli	r4, r6, 2
	mov	r3, r2
	slli	r4, r4, 2
	add	r9, r5, r4
.L647:
	ldw	r8, 0(r3)
	ldw	r7, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	xor	r7, r7, r8
	stw	r7, -4(r3)
	bne	r9, r5, .L647
	add	r3, r2, r4
	sub	r5, r6, r4
	beq	r6, r4, .L645
	ldbu	r6, 0(r3)
	ldbu	r7, 0(r9)
	cmpeqi	r4, r5, 1
	xor	r6, r6, r7
	stb	r6, 0(r3)
	bne	r4, zero, .L645
	ldbu	r6, 1(r3)
	ldbu	r4, 1(r9)
	cmpeqi	r5, r5, 2
	xor	r4, r4, r6
	stb	r4, 1(r3)
	bne	r5, zero, .L645
	ldbu	r5, 2(r3)
	ldbu	r4, 2(r9)
	xor	r4, r4, r5
	stb	r4, 2(r3)
	ret
.L646:
	add	r6, r5, r6
	mov	r3, r2
.L649:
	ldbu	r4, 0(r3)
	ldbu	r7, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r7, r7, r4
	stb	r7, -1(r3)
	bne	r6, r5, .L649
.L645:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L669
	mov	r3, r4
.L664:
	ldb	r7, 1(r3)
	addi	r3, r3, 1
	bne	r7, zero, .L664
.L675:
	beq	r6, zero, .L666
.L677:
	ldbu	r7, 0(r5)
	addi	r6, r6, -1
	addi	r5, r5, 1
	stb	r7, 0(r3)
	andi	r7, r7, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L676
	addi	r3, r3, 1
	bne	r6, zero, .L677
.L666:
	stb	zero, 0(r3)
	ret
.L676:
	ret
.L669:
	mov	r3, r4
	br	.L675
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L685
.L679:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L681
.L678:
	ret
.L681:
	addi	r2, r2, 1
	bne	r5, r2, .L679
	ret
.L685:
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L691
.L687:
	mov	r3, r5
	br	.L690
.L689:
	beq	r6, r7, .L688
.L690:
	ldb	r6, 0(r3)
	addi	r3, r3, 1
	bne	r6, zero, .L689
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L687
.L691:
	mov	r2, zero
.L688:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
.L695:
	ldb	r3, 0(r4)
	bne	r5, r3, .L694
	mov	r2, r4
.L694:
	addi	r4, r4, 1
	bne	r3, zero, .L695
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	beq	r8, zero, .L708
	mov	r2, r5
.L699:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L699
	sub	r10, r2, r5
	beq	r2, r5, .L708
	addi	r10, r10, -1
	br	.L705
.L718:
	addi	r4, r4, 1
	beq	r2, zero, .L717
.L705:
	ldbu	r3, 0(r4)
	andi	r2, r3, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, r8, .L718
	add	r9, r4, r10
	mov	r2, r5
	mov	r6, r4
	andi	r3, r3, 0xff
	br	.L701
.L719:
	beq	r6, r9, .L702
	addi	r6, r6, 1
	bne	r7, r3, .L702
	ldbu	r3, 0(r6)
	addi	r2, r2, 1
	beq	r3, zero, .L702
.L701:
	ldbu	r7, 0(r2)
	bne	r7, zero, .L719
.L702:
	ldbu	r2, 0(r2)
	beq	r3, r2, .L708
	addi	r4, r4, 1
	br	.L705
.L717:
	ret
.L708:
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
	blt	r2, zero, .L731
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L724
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L723
.L724:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L731:
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L724
.L723:
	xorhi	r16, r16, 32768
	br	.L724
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	mov	r2, r4
	beq	r7, zero, .L732
	bltu	r5, r7, .L743
	sub	r5, r5, r7
	add	r9, r4, r5
	bltu	r9, r4, .L743
	ldb	r12, 0(r6)
	addi	r7, r7, -1
	addi	r6, r6, 1
.L738:
	ldb	r3, 0(r2)
	addi	r10, r2, 1
	beq	r3, r12, .L748
	mov	r2, r10
.L734:
	bgeu	r9, r2, .L738
.L743:
	mov	r2, zero
.L732:
	ret
.L748:
	mov	r4, r6
	beq	r7, zero, .L732
.L737:
	mov	r3, r10
	add	r11, r10, r7
	br	.L735
.L736:
	beq	r3, r11, .L732
.L735:
	ldbu	r8, 0(r3)
	ldbu	r5, 0(r4)
	addi	r3, r3, 1
	addi	r4, r4, 1
	beq	r8, r5, .L736
	bltu	r9, r10, .L743
	ldb	r3, 0(r10)
	addi	r2, r10, 1
	bne	r12, r3, .L734
	mov	r3, r10
	mov	r4, r6
	mov	r10, r2
	mov	r2, r3
	br	.L737
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
	beq	r6, zero, .L750
	call	memmove
.L750:
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
	stw	r18, 8(sp)
	mov	r7, zero
	mov	r18, r6
	mov	r6, zero
	stw	r20, 16(sp)
	stw	r16, 0(sp)
	stw	ra, 20(sp)
	stw	r19, 12(sp)
	stw	r17, 4(sp)
	mov	r20, r4
	mov	r16, r5
	call	__ltdf2
	mov	r6, zero
	blt	r2, zero, .L778
	movhi	r7, 16368
	mov	r4, r20
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L779
	mov	r19, zero
.L758:
	mov	r17, zero
.L764:
	mov	r4, r20
	mov	r5, r16
	mov	r6, zero
	movhi	r7, 16352
	call	__muldf3
	mov	r4, r20
	mov	r5, r16
	mov	r6, zero
	movhi	r7, 16384
	addi	r17, r17, 1
	mov	r20, r2
	mov	r16, r3
	call	__gedf2
	bge	r2, zero, .L764
.L765:
	stw	r17, 0(r18)
	beq	r19, zero, .L771
	xorhi	r3, r16, 32768
.L755:
	mov	r2, r20
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L779:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r20
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L761
	mov	r6, zero
	mov	r7, zero
	mov	r4, r20
	mov	r5, r16
	call	__nedf2
	bne	r2, zero, .L770
.L761:
	stw	zero, 0(r18)
	mov	r3, r16
	br	.L755
.L778:
	movhi	r7, 49136
	mov	r4, r20
	mov	r5, r16
	xorhi	r17, r16, 32768
	call	__ledf2
	bgt	r2, zero, .L780
	mov	r16, r17
	movi	r19, 1
	br	.L758
.L771:
	mov	r3, r16
	br	.L755
.L780:
	mov	r6, zero
	movhi	r7, 49120
	mov	r4, r20
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L761
	movi	r19, 1
.L759:
	mov	r16, r17
	mov	r17, zero
.L766:
	mov	r6, r20
	mov	r7, r16
	mov	r4, r20
	mov	r5, r16
	call	__adddf3
	mov	r4, r20
	mov	r5, r16
	mov	r6, zero
	movhi	r7, 16336
	addi	r17, r17, -1
	mov	r20, r2
	mov	r16, r3
	call	__ltdf2
	blt	r2, zero, .L766
	br	.L765
.L770:
	mov	r17, r16
	mov	r19, zero
	br	.L759
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
	beq	r2, zero, .L785
	mov	r16, r4
	mov	r18, r5
	mov	r19, r6
	mov	r17, r7
	mov	r20, zero
	mov	r21, zero
.L784:
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
	bne	r5, zero, .L784
.L781:
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
.L785:
	mov	r20, zero
	mov	r21, zero
	br	.L781
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L790
	movi	r2, 32
	movi	r3, 1
	br	.L789
.L793:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L791
	beq	r2, zero, .L792
.L789:
	addi	r2, r2, -1
	bge	r5, zero, .L793
.L790:
	mov	r2, zero
.L795:
	bltu	r4, r5, .L794
	sub	r4, r4, r5
	or	r2, r2, r3
.L794:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L795
.L792:
	beq	r6, zero, .L788
	mov	r2, r4
.L788:
	ret
.L791:
	bne	r3, zero, .L790
	mov	r2, zero
	br	.L792
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
	beq	r3, r2, .L806
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
.L806:
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
	beq	r2, r6, .L820
.L815:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L820:
	bne	r3, r2, .L815
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L824
.L823:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L823
	ret
.L824:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	movi	r10, -8
	srli	r9, r6, 3
	and	r10, r6, r10
	bltu	r4, r5, .L827
	add	r2, r5, r6
	bgeu	r2, r4, .L854
.L827:
	beq	r9, zero, .L830
	slli	r9, r9, 3
	mov	r2, r5
	mov	r3, r4
	add	r9, r9, r5
.L831:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	addi	r2, r2, 8
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r3, r3, 8
	bne	r2, r9, .L831
	bgeu	r10, r6, .L826
	sub	r11, r6, r10
	addi	r2, r11, -1
	cmpltui	r2, r2, 7
	bne	r2, zero, .L853
	addi	r7, r10, 1
	add	r3, r4, r10
	add	r7, r5, r7
	sub	r7, r3, r7
	cmpgeui	r7, r7, 3
	add	r2, r5, r10
	beq	r7, zero, .L833
	or	r7, r2, r3
	andi	r7, r7, 3
	bne	r7, zero, .L833
	srli	r9, r11, 2
	slli	r9, r9, 2
	add	r8, r2, r9
.L834:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L834
	add	r10, r10, r9
	beq	r11, r9, .L826
	add	r2, r5, r10
	ldbu	r7, 0(r2)
	add	r3, r4, r10
	addi	r2, r10, 1
	stb	r7, 0(r3)
	bgeu	r2, r6, .L826
	add	r3, r5, r2
	ldbu	r3, 0(r3)
	add	r2, r4, r2
	addi	r10, r10, 2
	stb	r3, 0(r2)
	bgeu	r10, r6, .L826
	add	r5, r5, r10
	ldbu	r2, 0(r5)
	add	r4, r4, r10
	stb	r2, 0(r4)
	ret
.L854:
	addi	r2, r6, -1
	beq	r6, zero, .L855
.L828:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L828
.L826:
	ret
.L830:
	beq	r6, zero, .L826
.L853:
	add	r3, r4, r10
	add	r2, r5, r10
.L833:
	add	r6, r5, r6
.L836:
	ldbu	r4, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r4, -1(r3)
	bne	r2, r6, .L836
	ret
.L855:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r10, r6, 1
	bltu	r4, r5, .L857
	add	r2, r5, r6
	bgeu	r2, r4, .L883
.L857:
	beq	r10, zero, .L860
	addi	r2, r10, -1
	cmpltui	r2, r2, 9
	bne	r2, zero, .L861
	or	r2, r5, r4
	andi	r2, r2, 3
	bne	r2, zero, .L861
	addi	r2, r5, 2
	beq	r4, r2, .L861
	srli	r9, r6, 2
	mov	r2, r5
	mov	r3, r4
	slli	r8, r9, 2
	add	r8, r8, r5
.L862:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L862
	add	r9, r9, r9
	beq	r10, r9, .L860
	add	r9, r9, r9
	add	r2, r5, r9
	ldhu	r2, 0(r2)
	add	r9, r4, r9
	sth	r2, 0(r9)
.L860:
	andi	r2, r6, 1
	beq	r2, zero, .L856
.L885:
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L883:
	addi	r2, r6, -1
	beq	r6, zero, .L884
.L858:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L858
.L856:
	ret
.L861:
	add	r10, r10, r10
	mov	r2, r5
	mov	r3, r4
	add	r10, r10, r5
.L864:
	ldhu	r7, 0(r2)
	addi	r2, r2, 2
	addi	r3, r3, 2
	sth	r7, -2(r3)
	bne	r10, r2, .L864
	andi	r2, r6, 1
	beq	r2, zero, .L856
	br	.L885
.L884:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	movi	r9, -4
	srli	r8, r6, 2
	and	r9, r6, r9
	bltu	r4, r5, .L887
	add	r2, r5, r6
	bgeu	r2, r4, .L914
.L887:
	beq	r8, zero, .L890
	slli	r8, r8, 2
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r5
.L891:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L891
	bgeu	r9, r6, .L886
	sub	r11, r6, r9
	addi	r2, r11, -1
	cmpltui	r2, r2, 7
	bne	r2, zero, .L913
	addi	r7, r9, 1
	add	r3, r4, r9
	add	r7, r5, r7
	sub	r7, r3, r7
	cmpgeui	r7, r7, 3
	add	r2, r5, r9
	beq	r7, zero, .L893
	or	r7, r2, r3
	andi	r7, r7, 3
	bne	r7, zero, .L893
	srli	r10, r11, 2
	slli	r10, r10, 2
	add	r8, r2, r10
.L894:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L894
	add	r9, r9, r10
	beq	r11, r10, .L886
	add	r2, r5, r9
	ldbu	r7, 0(r2)
	add	r3, r4, r9
	addi	r2, r9, 1
	stb	r7, 0(r3)
	bgeu	r2, r6, .L886
	add	r3, r5, r2
	ldbu	r3, 0(r3)
	add	r2, r4, r2
	addi	r9, r9, 2
	stb	r3, 0(r2)
	bgeu	r9, r6, .L886
	add	r5, r5, r9
	ldbu	r2, 0(r5)
	add	r4, r4, r9
	stb	r2, 0(r4)
	ret
.L914:
	addi	r2, r6, -1
	beq	r6, zero, .L915
.L888:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	addi	r2, r2, -1
	stb	r6, 0(r3)
	cmpnei	r3, r2, -1
	bne	r3, zero, .L888
.L886:
	ret
.L890:
	beq	r6, zero, .L886
.L913:
	add	r3, r4, r9
	add	r2, r5, r9
.L893:
	add	r6, r5, r6
.L896:
	ldbu	r4, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r4, -1(r3)
	bne	r2, r6, .L896
	ret
.L915:
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
	bne	r2, zero, .L918
	slli	r2, r4, 4
	movhi	r3, %hiadj(__divsi3_table)
	or	r2, r2, r5
	add	r3, r2, r3
	ldbu	r2, %lo(__divsi3_table)(r3)
.L917:
	mul	r2, r2, r17
	sub	r2, r16, r2
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L918:
	call	__divsi3
	br	.L917
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
	bne	r2, zero, .L933
	srai	r2, r4, 14
	bne	r2, zero, .L930
	srai	r2, r4, 13
	bne	r2, zero, .L934
	srai	r2, r4, 12
	bne	r2, zero, .L935
	srai	r2, r4, 11
	bne	r2, zero, .L936
	srai	r2, r4, 10
	bne	r2, zero, .L937
	srai	r2, r4, 9
	bne	r2, zero, .L938
	srai	r2, r4, 8
	bne	r2, zero, .L939
	srai	r2, r4, 7
	bne	r2, zero, .L940
	srai	r2, r4, 6
	bne	r2, zero, .L941
	srai	r2, r4, 5
	bne	r2, zero, .L942
	srai	r2, r4, 4
	bne	r2, zero, .L943
	srai	r2, r4, 3
	bne	r2, zero, .L944
	srai	r2, r4, 2
	bne	r2, zero, .L945
	srai	r2, r4, 1
	bne	r2, zero, .L946
	movi	r2, 16
	bne	r4, zero, .L949
.L930:
	ret
.L933:
	mov	r2, zero
	ret
.L944:
	movi	r2, 12
	ret
.L949:
	movi	r2, 15
	ret
.L934:
	movi	r2, 2
	ret
.L935:
	movi	r2, 3
	ret
.L936:
	movi	r2, 4
	ret
.L937:
	movi	r2, 5
	ret
.L938:
	movi	r2, 6
	ret
.L939:
	movi	r2, 7
	ret
.L940:
	movi	r2, 8
	ret
.L941:
	movi	r2, 9
	ret
.L942:
	movi	r2, 10
	ret
.L943:
	movi	r2, 11
	ret
.L945:
	movi	r2, 13
	ret
.L946:
	movi	r2, 14
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi	r2, r4, 1
	bne	r2, zero, .L953
	andi	r2, r4, 2
	bne	r2, zero, .L954
	andi	r2, r4, 4
	bne	r2, zero, .L955
	andi	r2, r4, 8
	bne	r2, zero, .L956
	andi	r2, r4, 16
	bne	r2, zero, .L957
	andi	r2, r4, 32
	bne	r2, zero, .L958
	andi	r2, r4, 64
	bne	r2, zero, .L959
	andi	r2, r4, 128
	bne	r2, zero, .L960
	andi	r2, r4, 256
	bne	r2, zero, .L961
	andi	r2, r4, 512
	bne	r2, zero, .L962
	andi	r2, r4, 1024
	bne	r2, zero, .L963
	andi	r2, r4, 2048
	bne	r2, zero, .L964
	andi	r2, r4, 4096
	bne	r2, zero, .L965
	andi	r2, r4, 8192
	bne	r2, zero, .L966
	andi	r2, r4, 16384
	bne	r2, zero, .L967
	andi	r4, r4, 0xffff
	srai	r4, r4, 15
	movi	r2, 16
	bne	r4, zero, .L970
.L950:
	ret
.L953:
	mov	r2, zero
	ret
.L954:
	movi	r2, 1
	ret
.L965:
	movi	r2, 12
	ret
.L955:
	movi	r2, 2
	ret
.L956:
	movi	r2, 3
	ret
.L957:
	movi	r2, 4
	ret
.L958:
	movi	r2, 5
	ret
.L959:
	movi	r2, 6
	ret
.L960:
	movi	r2, 7
	ret
.L961:
	movi	r2, 8
	ret
.L962:
	movi	r2, 9
	ret
.L963:
	movi	r2, 10
	ret
.L964:
	movi	r2, 11
	ret
.L966:
	movi	r2, 13
	ret
.L967:
	movi	r2, 14
	ret
.L970:
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
	bge	r2, zero, .L978
	mov	r4, r16
	call	__fixsfsi
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L978:
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
	beq	r4, zero, .L984
.L983:
	andi	r3, r4, 1
	mul	r3, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r3
	bne	r4, zero, .L983
	ret
.L984:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L989
	beq	r5, zero, .L990
.L988:
	andi	r3, r5, 1
	mul	r3, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r3
	bne	r5, zero, .L988
	ret
.L989:
	ret
.L990:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L994
	movi	r2, 32
	movi	r3, 1
	br	.L993
.L997:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L995
	beq	r2, zero, .L996
.L993:
	addi	r2, r2, -1
	bge	r5, zero, .L997
.L994:
	mov	r2, zero
.L999:
	bltu	r4, r5, .L998
	sub	r4, r4, r5
	or	r2, r2, r3
.L998:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L999
.L996:
	beq	r6, zero, .L992
	mov	r2, r4
.L992:
	ret
.L995:
	bne	r3, zero, .L994
	mov	r2, zero
	br	.L996
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
	blt	r2, zero, .L1011
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L1008:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L1011:
	movi	r2, -1
	br	.L1008
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
	blt	r2, zero, .L1016
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L1013:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L1016:
	movi	r2, -1
	br	.L1013
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
	blt	r5, zero, .L1036
	beq	r5, zero, .L1028
	mov	r8, zero
.L1024:
	movi	r3, 32
	mov	r2, zero
	br	.L1027
.L1037:
	beq	r7, zero, .L1026
.L1027:
	andi	r6, r5, 1
	mul	r6, r6, r4
	srai	r5, r5, 1
	addi	r3, r3, -1
	andi	r7, r3, 0xff
	add	r2, r2, r6
	add	r4, r4, r4
	bne	r5, zero, .L1037
.L1026:
	beq	r8, zero, .L1022
	sub	r2, zero, r2
	ret
.L1028:
	mov	r2, zero
.L1022:
	ret
.L1036:
	sub	r5, zero, r5
	movi	r8, 1
	br	.L1024
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L1056
	movi	r2, 1
	mov	r7, zero
.L1039:
	bge	r5, zero, .L1040
	sub	r5, zero, r5
	mov	r7, r2
.L1040:
	mov	r6, r4
	movi	r3, 1
	bgeu	r5, r4, .L1042
	movi	r2, 32
	movi	r3, 1
	br	.L1041
.L1044:
	beq	r2, zero, .L1045
.L1041:
	add	r5, r5, r5
	addi	r2, r2, -1
	add	r3, r3, r3
	bltu	r5, r4, .L1044
.L1045:
	mov	r2, zero
	beq	r3, zero, .L1043
.L1042:
	mov	r2, zero
.L1047:
	bltu	r6, r5, .L1046
	sub	r6, r6, r5
	or	r2, r2, r3
.L1046:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L1047
.L1043:
	beq	r7, zero, .L1038
	sub	r2, zero, r2
.L1038:
	ret
.L1056:
	sub	r4, zero, r4
	mov	r2, zero
	movi	r7, 1
	br	.L1039
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L1075
	mov	r7, zero
.L1058:
	mov	r2, r4
	bge	r5, zero, .L1059
	sub	r5, zero, r5
.L1059:
	movi	r3, 1
	bgeu	r5, r4, .L1066
	movi	r6, 32
	movi	r3, 1
	br	.L1060
.L1063:
	beq	r6, zero, .L1064
.L1060:
	add	r5, r5, r5
	addi	r6, r6, -1
	add	r3, r3, r3
	bltu	r5, r4, .L1063
.L1064:
	beq	r3, zero, .L1076
.L1066:
	srli	r3, r3, 1
	bltu	r2, r5, .L1065
	sub	r2, r2, r5
.L1065:
	srli	r5, r5, 1
	bne	r3, zero, .L1066
.L1062:
	beq	r7, zero, .L1057
	sub	r2, zero, r2
.L1057:
	ret
.L1075:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L1058
.L1076:
	mov	r2, r4
	br	.L1062
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r2, r5, 0xffff
	andi	r8, r4, 0xffff
	bgeu	r2, r8, .L1190
	andi	r2, r5, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L1080
	add	r2, r5, r5
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1081
	andi	r3, r2, 65535
	xori	r3, r3, 32768
	addi	r3, r3, -32768
	blt	r3, zero, .L1082
	slli	r2, r5, 2
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1083
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1084
	slli	r2, r5, 3
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1085
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1086
	slli	r2, r5, 4
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1087
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1088
	slli	r2, r5, 5
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1089
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1090
	slli	r2, r5, 6
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1091
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1092
	slli	r2, r5, 7
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1093
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1094
	slli	r2, r5, 8
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1095
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1096
	slli	r2, r5, 9
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1097
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1098
	slli	r2, r5, 10
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1099
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1100
	slli	r2, r5, 11
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1101
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1102
	slli	r2, r5, 12
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1103
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1104
	slli	r2, r5, 13
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1105
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1106
	slli	r2, r5, 14
	andi	r3, r2, 0xffff
	mov	r7, r2
	bgeu	r3, r8, .L1107
	andi	r9, r2, 65535
	xori	r9, r9, 32768
	addi	r9, r9, -32768
	blt	r9, zero, .L1108
	slli	r5, r5, 15
	andi	r3, r5, 0xffff
	bgeu	r3, r8, .L1109
	mov	r2, r4
	bne	r3, zero, .L1191
.L1110:
	bne	r6, zero, .L1077
	mov	r2, r5
	ret
.L1077:
	ret
.L1097:
	bltu	r8, r3, .L1143
	sub	r2, r4, r2
	movi	r5, 512
	movi	r8, 512
	andi	r7, r7, 0xffff
.L1112:
	srli	r3, r8, 2
	srli	r4, r7, 2
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1113
	sub	r2, r2, r4
	or	r5, r3, r5
.L1113:
	srli	r3, r8, 3
	srli	r4, r7, 3
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1114
	sub	r2, r2, r4
	or	r5, r3, r5
.L1114:
	srli	r3, r8, 4
	srli	r4, r7, 4
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1115
	sub	r2, r2, r4
	or	r5, r3, r5
.L1115:
	srli	r3, r8, 5
	srli	r4, r7, 5
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1116
	sub	r2, r2, r4
	or	r5, r3, r5
.L1116:
	srli	r3, r8, 6
	srli	r4, r7, 6
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1117
	sub	r2, r2, r4
	or	r5, r3, r5
.L1117:
	srli	r3, r8, 7
	srli	r4, r7, 7
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1118
	sub	r2, r2, r4
	or	r5, r3, r5
.L1118:
	srli	r3, r8, 8
	srli	r4, r7, 8
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1119
	sub	r2, r2, r4
	or	r5, r3, r5
.L1119:
	srli	r3, r8, 9
	srli	r4, r7, 9
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1120
	sub	r2, r2, r4
	or	r5, r3, r5
.L1120:
	srli	r3, r8, 10
	srli	r4, r7, 10
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1121
	sub	r2, r2, r4
	or	r5, r3, r5
.L1121:
	srli	r3, r8, 11
	srli	r4, r7, 11
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1122
	sub	r2, r2, r4
	or	r5, r3, r5
.L1122:
	srli	r3, r8, 12
	srli	r4, r7, 12
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1123
	sub	r2, r2, r4
	or	r5, r3, r5
.L1123:
	srli	r3, r8, 13
	srli	r4, r7, 13
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1124
	sub	r2, r2, r4
	or	r5, r3, r5
.L1124:
	srli	r3, r8, 14
	srli	r4, r7, 14
	beq	r3, zero, .L1110
	andi	r9, r2, 0xffff
	bltu	r9, r4, .L1125
	sub	r2, r2, r4
	or	r5, r3, r5
.L1125:
	cmpnei	r8, r8, 16384
	srli	r7, r7, 15
	beq	r8, zero, .L1110
	andi	r3, r2, 0xffff
	bltu	r3, r7, .L1133
	sub	r2, r2, r7
	ori	r5, r5, 1
	br	.L1110
.L1191:
	addi	r2, r4, -32768
	movi	r3, 16384
	movi	r4, 16384
	movi	r5, -32768
	movui	r8, 32768
	movui	r7, 32768
.L1130:
	andi	r9, r2, 0xffff
	andi	r10, r3, 0xffff
	bltu	r9, r10, .L1112
	sub	r2, r2, r3
	or	r5, r5, r4
	br	.L1112
.L1133:
	mov	r2, zero
	br	.L1110
.L1190:
	beq	r2, r8, .L1131
	mov	r2, r4
	mov	r5, zero
	br	.L1110
.L1080:
	sub	r2, r4, r5
	movi	r5, 1
	br	.L1110
.L1081:
	bltu	r8, r3, .L1135
	sub	r2, r4, r2
	movi	r5, 2
	movi	r8, 2
	andi	r7, r7, 0xffff
	br	.L1112
.L1082:
	sub	r2, r4, r2
	andi	r3, r5, 32767
	movi	r4, 1
	movi	r5, 2
	movi	r8, 2
	andi	r7, r7, 0xffff
	br	.L1130
.L1083:
	bltu	r8, r3, .L1136
	sub	r2, r4, r2
	movi	r5, 4
	movi	r8, 4
	andi	r7, r7, 0xffff
	br	.L1112
.L1084:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 2
	movi	r5, 4
	movi	r8, 4
	andi	r7, r7, 0xffff
	br	.L1130
.L1085:
	bltu	r8, r3, .L1137
	sub	r2, r4, r2
	movi	r5, 8
	movi	r8, 8
	andi	r7, r7, 0xffff
	br	.L1112
.L1086:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 4
	movi	r5, 8
	movi	r8, 8
	andi	r7, r7, 0xffff
	br	.L1130
.L1087:
	bltu	r8, r3, .L1138
	sub	r2, r4, r2
	movi	r5, 16
	movi	r8, 16
	andi	r7, r7, 0xffff
	br	.L1112
.L1088:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 8
	movi	r5, 16
	movi	r8, 16
	andi	r7, r7, 0xffff
	br	.L1130
.L1089:
	bltu	r8, r3, .L1139
	sub	r2, r4, r2
	movi	r5, 32
	movi	r8, 32
	andi	r7, r7, 0xffff
	br	.L1112
.L1090:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 16
	movi	r5, 32
	movi	r8, 32
	andi	r7, r7, 0xffff
	br	.L1130
.L1091:
	bltu	r8, r3, .L1140
	sub	r2, r4, r2
	movi	r5, 64
	movi	r8, 64
	andi	r7, r7, 0xffff
	br	.L1112
.L1092:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 32
	movi	r5, 64
	movi	r8, 64
	andi	r7, r7, 0xffff
	br	.L1130
.L1093:
	bltu	r8, r3, .L1141
	sub	r2, r4, r2
	movi	r5, 128
	movi	r8, 128
	andi	r7, r7, 0xffff
	br	.L1112
.L1094:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 64
	movi	r5, 128
	movi	r8, 128
	andi	r7, r7, 0xffff
	br	.L1130
.L1096:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 128
	movi	r5, 256
	movi	r8, 256
	andi	r7, r7, 0xffff
	br	.L1130
.L1131:
	movi	r5, 1
	mov	r2, zero
	br	.L1110
.L1098:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 256
	movi	r5, 512
	movi	r8, 512
	andi	r7, r7, 0xffff
	br	.L1130
.L1135:
	movi	r8, 2
.L1129:
	andi	r8, r8, 0xffff
	srli	r5, r8, 1
	andi	r7, r7, 0xffff
	mov	r2, r4
	srli	r3, r7, 1
	mov	r4, r5
	mov	r5, zero
	br	.L1130
.L1100:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 512
	movi	r5, 1024
	movi	r8, 1024
	andi	r7, r7, 0xffff
	br	.L1130
.L1136:
	movi	r8, 4
	br	.L1129
.L1102:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 1024
	movi	r5, 2048
	movi	r8, 2048
	andi	r7, r7, 0xffff
	br	.L1130
.L1137:
	movi	r8, 8
	br	.L1129
.L1104:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 2048
	movi	r5, 4096
	movi	r8, 4096
	andi	r7, r7, 0xffff
	br	.L1130
.L1106:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 4096
	movi	r5, 8192
	movi	r8, 8192
	andi	r7, r7, 0xffff
	br	.L1130
.L1138:
	movi	r8, 16
	br	.L1129
.L1108:
	sub	r2, r4, r2
	srli	r3, r3, 1
	movi	r4, 8192
	movi	r5, 16384
	movi	r8, 16384
	andi	r7, r7, 0xffff
	br	.L1130
.L1139:
	movi	r8, 32
	br	.L1129
.L1140:
	movi	r8, 64
	br	.L1129
.L1109:
	andi	r2, r4, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L1134
	movi	r7, -32768
	movi	r8, -32768
	br	.L1129
.L1141:
	movi	r8, 128
	br	.L1129
.L1095:
	bltu	r8, r3, .L1142
	sub	r2, r4, r2
	movi	r5, 256
	movi	r8, 256
	andi	r7, r7, 0xffff
	br	.L1112
.L1134:
	movi	r5, -32768
	mov	r2, zero
	movui	r8, 32768
	movui	r7, 32768
	br	.L1112
.L1142:
	movi	r8, 256
	br	.L1129
.L1105:
	bltu	r8, r3, .L1147
	sub	r2, r4, r2
	movi	r5, 8192
	movi	r8, 8192
	andi	r7, r7, 0xffff
	br	.L1112
.L1099:
	bltu	r8, r3, .L1144
	sub	r2, r4, r2
	movi	r5, 1024
	movi	r8, 1024
	andi	r7, r7, 0xffff
	br	.L1112
.L1147:
	movi	r8, 8192
	br	.L1129
.L1144:
	movi	r8, 1024
	br	.L1129
.L1143:
	movi	r8, 512
	br	.L1129
.L1103:
	bltu	r8, r3, .L1146
	sub	r2, r4, r2
	movi	r5, 4096
	movi	r8, 4096
	andi	r7, r7, 0xffff
	br	.L1112
.L1101:
	bltu	r8, r3, .L1145
	sub	r2, r4, r2
	movi	r5, 2048
	movi	r8, 2048
	andi	r7, r7, 0xffff
	br	.L1112
.L1107:
	bltu	r8, r3, .L1148
	sub	r2, r4, r2
	movi	r5, 16384
	movi	r8, 16384
	andi	r7, r7, 0xffff
	br	.L1112
.L1146:
	movi	r8, 4096
	br	.L1129
.L1145:
	movi	r8, 2048
	br	.L1129
.L1148:
	movi	r8, 16384
	br	.L1129
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L1194
	movi	r2, 32
	movi	r3, 1
	br	.L1193
.L1197:
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L1195
	beq	r2, zero, .L1196
.L1193:
	addi	r2, r2, -1
	bge	r5, zero, .L1197
.L1194:
	mov	r2, zero
.L1199:
	bltu	r4, r5, .L1198
	sub	r4, r4, r5
	or	r2, r2, r3
.L1198:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L1199
.L1196:
	beq	r6, zero, .L1192
	mov	r2, r4
.L1192:
	ret
.L1195:
	bne	r3, zero, .L1194
	mov	r2, zero
	br	.L1196
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1209
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L1209:
	beq	r6, zero, .L1212
	movi	r2, 32
	sub	r2, r2, r6
	srl	r2, r4, r2
	sll	r3, r5, r6
	sll	r4, r4, r6
	or	r3, r2, r3
	mov	r2, r4
	ret
.L1212:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1214
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L1214:
	beq	r6, zero, .L1217
	movi	r7, 32
	sub	r7, r7, r6
	sll	r7, r5, r7
	srl	r2, r4, r6
	sra	r3, r5, r6
	or	r2, r7, r2
	ret
.L1217:
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
	bne	r6, zero, .L1221
	sub	r2, r2, r3
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L1221:
	add	r4, r4, r5
	mov	r2, zero
	add	r2, r2, r4
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1227
	blt	r7, r5, .L1228
	bltu	r4, r6, .L1227
	bltu	r6, r4, .L1228
	movi	r2, 1
	ret
.L1227:
	mov	r2, zero
	ret
.L1228:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1233
	blt	r7, r5, .L1232
	bltu	r4, r6, .L1233
	cmpltu	r2, r6, r4
	ret
.L1233:
	movi	r2, -1
	ret
.L1232:
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
	beq	r2, zero, .L1236
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1236:
	beq	r6, zero, .L1239
	movi	r3, 32
	sub	r3, r3, r6
	sll	r3, r5, r3
	srl	r2, r4, r6
	srl	r5, r5, r6
	or	r2, r3, r2
	mov	r3, r5
	ret
.L1239:
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
	beq	r2, zero, .L1249
.L1251:
	mov	r4, r18
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r7, 0(sp)
	ldw	r6, 4(sp)
	mov	r18, r2
	mov	r17, r3
.L1249:
	srli	r2, r16, 31
	add	r2, r2, r16
	srai	r16, r2, 1
	beq	r16, zero, .L1250
.L1252:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	srli	r8, r16, 31
	andi	r4, r16, 1
	mov	r6, r2
	add	r8, r8, r16
	mov	r7, r3
	bne	r4, zero, .L1251
	srai	r16, r8, 1
	br	.L1252
.L1250:
	bge	r19, zero, .L1248
	mov	r6, r18
	mov	r7, r17
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r18, r2
	mov	r17, r3
.L1248:
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
	beq	r2, zero, .L1257
.L1259:
	mov	r4, r18
	mov	r5, r17
	call	__mulsf3
	mov	r18, r2
.L1257:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	beq	r16, zero, .L1258
.L1260:
	mov	r4, r17
	mov	r5, r17
	call	__mulsf3
	srli	r3, r16, 31
	andi	r4, r16, 1
	mov	r17, r2
	add	r3, r3, r16
	bne	r4, zero, .L1259
	srai	r16, r3, 1
	br	.L1260
.L1258:
	bge	r19, zero, .L1256
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
.L1256:
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
	bltu	r5, r7, .L1268
	bltu	r7, r5, .L1269
	bltu	r4, r6, .L1268
	bltu	r6, r4, .L1269
	movi	r2, 1
	ret
.L1268:
	mov	r2, zero
	ret
.L1269:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1274
	bltu	r7, r5, .L1273
	bltu	r4, r6, .L1274
	cmpltu	r2, r6, r4
	ret
.L1274:
	movi	r2, -1
	ret
.L1273:
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
	.global	__subdf3
	.global	__gtdf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
