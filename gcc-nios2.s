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
	addi	r4, r4, 1
	addi	r6, r6, -1
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
	br	.L76
.L77:
	addi	r5, r5, 1
	addi	r2, r2, 1
.L76:
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L77
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
	bne	r4, zero, .L79
	ret
.L81:
	addi	r2, r2, 1
	ldbu	r3, 0(r2)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, zero, .L78
.L79:
	andi	r3, r3, 0xff
	bne	r3, r5, .L81
.L78:
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
	br	.L87
.L90:
	addi	r2, r2, 1
	beq	r3, zero, .L89
.L87:
	ldb	r3, 0(r2)
	bne	r3, r5, .L90
	ret
.L89:
	mov	r2, zero
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	br	.L96
.L97:
	beq	r3, zero, .L93
	addi	r4, r4, 1
	addi	r5, r5, 1
.L96:
	ldbu	r2, 0(r4)
	ldbu	r6, 0(r5)
	andi	r3, r2, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r7, r6, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r3, r7, .L97
.L93:
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
	beq	r2, zero, .L101
	mov	r2, r4
.L100:
	addi	r2, r2, 1
	ldb	r5, 0(r2)
	bne	r5, zero, .L100
	sub	r2, r2, r4
	ret
.L101:
	mov	r2, r4
	sub	r2, r2, r4
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	beq	r6, zero, .L108
	ldbu	r2, 0(r4)
	beq	r2, zero, .L105
	addi	r6, r6, -1
	add	r6, r4, r6
	br	.L106
.L118:
	beq	r4, r6, .L105
	bne	r3, r2, .L105
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, 0(r4)
	beq	r2, zero, .L105
.L106:
	ldbu	r3, 0(r5)
	bne	r3, zero, .L118
.L105:
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L108:
	mov	r2, zero
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L119
	movi	r2, -2
	and	r6, r6, r2
	add	r3, r4, r6
.L121:
	ldbu	r2, 1(r4)
	stb	r2, 0(r5)
	ldbu	r2, 0(r4)
	stb	r2, 1(r5)
	addi	r5, r5, 2
	addi	r4, r4, 2
	bne	r4, r3, .L121
.L119:
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
	bne	r2, zero, .L127
	cmpeqi	r2, r4, 9
	ret
.L127:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L130
	cmpeqi	r2, r4, 127
	ret
.L130:
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
	bne	r2, zero, .L137
	addi	r4, r4, -9
	cmpltui	r2, r4, 5
	ret
.L137:
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
	bne	r2, zero, .L143
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	beq	r2, zero, .L144
.L143:
	movi	r2, 1
	ret
.L144:
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L143
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
	beq	r2, zero, .L153
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L151
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L151
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L151
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L152
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L151:
	movi	r2, 1
	ret
.L153:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	ret
.L152:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L156
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	ret
.L156:
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
	bne	r2, zero, .L161
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L162
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	bgt	r2, zero, .L167
	mov	r2, zero
	mov	r3, zero
.L158:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L167:
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
	br	.L158
.L161:
	mov	r2, r17
	mov	r3, r16
	br	.L158
.L162:
	mov	r2, r19
	mov	r3, r18
	br	.L158
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
	bne	r2, zero, .L171
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L172
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	bgt	r2, zero, .L177
	mov	r2, zero
.L168:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L177:
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
	br	.L168
.L171:
	mov	r2, r16
	br	.L168
.L172:
	mov	r2, r17
	br	.L168
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
	bne	r2, zero, .L186
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L185
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L180
	bne	r2, zero, .L186
.L185:
	mov	r2, r19
	mov	r3, r18
	br	.L178
.L180:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L186
	mov	r17, r19
	mov	r16, r18
.L186:
	mov	r2, r17
	mov	r3, r16
.L178:
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
	bne	r2, zero, .L198
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L197
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L192
	beq	r2, zero, .L197
.L198:
	mov	r2, r17
	br	.L190
.L192:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	blt	r2, zero, .L202
.L197:
	mov	r2, r16
.L190:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L202:
	mov	r16, r17
	br	.L197
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
	bne	r2, zero, .L211
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L210
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L205
	bne	r2, zero, .L211
.L210:
	mov	r2, r19
	mov	r3, r18
	br	.L203
.L205:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L211
	mov	r17, r19
	mov	r16, r18
.L211:
	mov	r2, r17
	mov	r3, r16
.L203:
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
	bne	r2, zero, .L221
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L223
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L217
	bne	r2, zero, .L223
.L221:
	mov	r2, r18
	mov	r3, r19
	br	.L215
.L217:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L223
	mov	r17, r18
	mov	r16, r19
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
	bne	r2, zero, .L233
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L235
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L229
	beq	r2, zero, .L233
.L235:
	mov	r2, r17
	br	.L227
.L229:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	blt	r2, zero, .L239
.L233:
	mov	r2, r16
.L227:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L239:
	mov	r16, r17
	br	.L233
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
	bne	r2, zero, .L246
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L248
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L242
	bne	r2, zero, .L248
.L246:
	mov	r2, r18
	mov	r3, r19
	br	.L240
.L242:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	blt	r2, zero, .L248
	mov	r17, r18
	mov	r16, r19
.L248:
	mov	r2, r17
	mov	r3, r16
.L240:
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
	beq	r4, zero, .L253
.L254:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
	bne	r4, zero, .L254
.L253:
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
	beq	r5, zero, .L266
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L260
	stw	r4, 4(r2)
.L260:
	ret
.L266:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L268
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L268:
	ldw	r2, 4(r4)
	beq	r2, zero, .L267
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L267:
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
	beq	r17, zero, .L277
	mov	r21, r5
	mov	fp, zero
	br	.L279
.L292:
	addi	fp, fp, 1
	add	r21, r21, r16
	beq	r17, fp, .L277
.L279:
	mov	r19, r21
	mov	r5, r21
	mov	r4, r18
	callr	r20
	bne	r2, zero, .L292
.L276:
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
.L277:
	addi	r2, r17, 1
	ldw	r3, 4(sp)
	stw	r2, 0(r3)
	mul	r17, r16, r17
	ldw	r2, 0(sp)
	add	r19, r2, r17
	beq	r16, zero, .L276
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L276
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
	beq	r20, zero, .L294
	mov	r18, r4
	mov	r19, r7
	mov	r16, r5
	mov	r17, zero
	br	.L296
.L305:
	addi	r17, r17, 1
	add	r16, r16, r19
	beq	r20, r17, .L294
.L296:
	mov	fp, r16
	mov	r5, r16
	mov	r4, r18
	callr	r21
	bne	r2, zero, .L305
.L293:
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
.L294:
	mov	fp, zero
	br	.L293
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L307
	sub	r2, zero, r4
.L307:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	br	.L309
.L311:
	addi	r4, r4, 1
.L309:
	ldb	r3, 0(r4)
	cmpeqi	r2, r3, 32
	bne	r2, zero, .L311
	addi	r2, r3, -9
	cmpltui	r2, r2, 5
	bne	r2, zero, .L311
	cmpeqi	r5, r3, 43
	bne	r5, zero, .L318
	cmpnei	r3, r3, 45
	bne	r3, zero, .L319
	movi	r6, 1
.L312:
	addi	r4, r4, 1
	br	.L313
.L314:
	muli	r2, r2, 10
	addi	r4, r4, 1
	addi	r3, r3, -48
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	sub	r2, r2, r3
.L313:
	ldbu	r3, 0(r4)
	andi	r5, r3, 255
	xori	r5, r5, 128
	addi	r5, r5, -128
	addi	r5, r5, -48
	cmpltui	r5, r5, 10
	bne	r5, zero, .L314
	bne	r6, zero, .L308
	sub	r2, zero, r2
.L308:
	ret
.L319:
	mov	r6, zero
	br	.L313
.L318:
	mov	r6, zero
	br	.L312
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
	mov	r18, r4
	br	.L325
.L327:
	addi	r18, r18, 1
.L325:
	ldb	r2, 0(r18)
	cmpeqi	r3, r2, 32
	bne	r3, zero, .L327
	addi	r17, r2, -9
	cmpltui	r17, r17, 5
	bne	r17, zero, .L327
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L328
	cmpnei	r2, r2, 45
	beq	r2, zero, .L341
.L329:
	ldbu	r16, 0(r18)
	andi	r2, r16, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	mov	r4, zero
	mov	r5, zero
	cmpltui	r2, r2, 10
	beq	r2, zero, .L331
.L330:
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
	bne	r3, zero, .L330
.L331:
	bne	r17, zero, .L324
	cmpne	r2, r4, zero
	sub	r5, zero, r5
	sub	r5, r5, r2
	sub	r4, zero, r4
.L324:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L341:
	movi	r17, 1
.L328:
	addi	r18, r18, 1
	br	.L329
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
	beq	r6, zero, .L343
	mov	r20, r4
	mov	r19, r5
	mov	r16, r6
	mov	r18, r7
.L346:
	srli	fp, r16, 1
	mul	r17, fp, r18
	add	r17, r19, r17
	mov	r5, r17
	mov	r4, r20
	callr	r21
	blt	r2, zero, .L347
	bge	zero, r2, .L342
	add	r19, r17, r18
	addi	r16, r16, -1
	sub	r16, r16, fp
	bne	r16, zero, .L346
.L343:
	mov	r17, zero
.L342:
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
.L347:
	mov	r16, fp
	bne	r16, zero, .L346
	br	.L343
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
	beq	r6, zero, .L354
	mov	r19, r4
	mov	r18, r5
	mov	r17, r7
	mov	r16, r6
	br	.L357
.L366:
	bge	zero, r2, .L356
	add	r18, fp, r17
	addi	r16, r16, -1
	srai	r20, r16, 1
.L356:
	mov	r16, r20
	beq	r20, zero, .L354
.L357:
	srai	r20, r16, 1
	mul	fp, r20, r17
	add	fp, r18, fp
	ldw	r6, 36(sp)
	mov	r5, fp
	mov	r4, r19
	callr	r21
	bne	r2, zero, .L366
.L353:
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
.L354:
	mov	fp, zero
	br	.L353
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
	bge	r5, zero, .L370
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L370:
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
	bge	r4, zero, .L375
	sub	r2, zero, r4
.L375:
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
	bge	r5, zero, .L379
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L379:
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
	br	.L392
.L395:
	beq	r5, r2, .L394
	addi	r4, r4, 4
.L392:
	ldw	r2, 0(r4)
	bne	r2, zero, .L395
.L389:
	mov	r2, zero
	ret
.L394:
	mov	r2, r4
	beq	r5, zero, .L389
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	br	.L406
.L407:
	beq	r3, zero, .L398
	beq	r2, zero, .L398
	addi	r4, r4, 4
	addi	r5, r5, 4
.L406:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L407
.L398:
	blt	r3, r2, .L401
	cmplt	r2, r2, r3
	ret
.L401:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L409:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L409
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L414
	mov	r2, r4
.L413:
	addi	r2, r2, 4
	ldw	r3, 0(r2)
	bne	r3, zero, .L413
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L414:
	mov	r2, r4
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L421
.L430:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	bne	r2, r3, .L418
	beq	r2, zero, .L418
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L430
.L421:
	mov	r2, zero
	ret
.L418:
	beq	r6, zero, .L421
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L422
	cmplt	r2, r2, r3
	ret
.L422:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L437
.L442:
	ldw	r2, 0(r4)
	beq	r2, r5, .L441
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r6, zero, .L442
.L437:
	mov	r2, zero
	ret
.L441:
	mov	r2, r4
	beq	r6, zero, .L437
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L448
.L458:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L457
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L458
.L448:
	mov	r2, zero
	ret
.L457:
	beq	r6, zero, .L448
	blt	r3, r2, .L449
	cmplt	r2, r2, r3
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
	beq	r6, zero, .L460
	slli	r6, r6, 2
	call	memcpy
.L460:
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
	beq	r4, r5, .L466
	addi	r3, r6, -1
	sub	r4, r4, r5
	slli	r7, r6, 2
	bgeu	r4, r7, .L477
	beq	r6, zero, .L466
	slli	r3, r3, 2
	add	r6, r5, r3
	add	r3, r2, r3
.L469:
	ldw	r7, 0(r6)
	stw	r7, 0(r3)
	mov	r7, r6
	addi	r6, r6, -4
	addi	r3, r3, -4
	bne	r5, r7, .L469
	ret
.L477:
	mov	r7, r2
	beq	r6, zero, .L478
.L468:
	addi	r5, r5, 4
	addi	r7, r7, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r7)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	bne	r6, zero, .L468
.L466:
	ret
.L478:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L480
	mov	r6, r4
.L481:
	addi	r6, r6, 4
	stw	r5, -4(r6)
	addi	r3, r3, -1
	cmpnei	r7, r3, -1
	bne	r7, zero, .L481
.L480:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L487
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L486
.L489:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
	bne	r4, r2, .L489
	ret
.L487:
	beq	r4, r5, .L486
	beq	r6, zero, .L486
	add	r6, r4, r6
.L490:
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, -1(r4)
	stb	r2, -1(r5)
	bne	r6, r4, .L490
.L486:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L500
	sll	r3, r4, r3
	mov	r2, zero
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	blt	r7, zero, .L502
.L504:
	srl	r4, r5, r7
	mov	r5, zero
	or	r2, r4, r2
	or	r3, r5, r3
	ret
.L500:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r3, r5, r6
	or	r3, r2, r3
	sll	r2, r4, r6
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	bge	r7, zero, .L504
.L502:
	slli	r7, r5, 1
	movi	r8, 31
	sub	r8, r8, r6
	sll	r7, r7, r8
	srl	r4, r4, r6
	or	r4, r7, r4
	srl	r5, r5, r6
	or	r2, r4, r2
	or	r3, r5, r3
	ret
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L506
	srl	r8, r5, r8
	mov	r3, zero
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	blt	r7, zero, .L508
.L510:
	sll	r7, r4, r7
	mov	r2, zero
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L506:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	sub	r6, zero, r6
	andi	r6, r6, 63
	addi	r7, r6, -32
	bge	r7, zero, .L510
.L508:
	srli	r2, r4, 1
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	or	r2, r2, r8
	or	r3, r7, r3
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
	br	.L525
.L528:
	cmpnei	r3, r2, 32
	beq	r3, zero, .L527
.L525:
	srl	r3, r4, r2
	andi	r3, r3, 1
	addi	r2, r2, 1
	beq	r3, zero, .L528
	ret
.L527:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L532
	andi	r2, r4, 1
	bne	r2, zero, .L529
	movi	r2, 1
.L531:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L531
	ret
.L532:
	mov	r2, zero
.L529:
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
	blt	r2, zero, .L538
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L538:
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
	blt	r2, zero, .L543
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L540:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L543:
	movi	r2, 1
	br	.L540
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
	blt	r2, zero, .L548
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L545:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L548:
	movi	r2, 1
	br	.L545
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
	bne	r2, zero, .L553
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L553
	blt	r16, zero, .L568
	movhi	r17, 16384
	br	.L556
.L569:
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L556:
	andi	r2, r16, 1
	beq	r2, zero, .L555
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
.L555:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L569
.L553:
	mov	r2, r18
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L568:
	movhi	r17, 16128
	br	.L556
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
	bne	r2, zero, .L571
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
	beq	r2, zero, .L571
	mov	r6, zero
	blt	r16, zero, .L586
	movhi	r7, 16384
	br	.L574
.L587:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	mov	r6, r2
	mov	r7, r3
.L574:
	andi	r2, r16, 1
	beq	r2, zero, .L573
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
.L573:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L587
.L571:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L586:
	movhi	r7, 16352
	br	.L574
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
	bne	r2, zero, .L589
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
	beq	r2, zero, .L589
	mov	r6, zero
	blt	r16, zero, .L604
	movhi	r7, 16384
	br	.L592
.L605:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	mov	r6, r2
	mov	r7, r3
.L592:
	andi	r2, r16, 1
	beq	r2, zero, .L591
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
.L591:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L605
.L589:
	mov	r2, r18
	mov	r3, r17
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
.L604:
	movhi	r7, 16352
	br	.L592
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L607
	add	r6, r5, r6
	mov	r3, r4
.L608:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	ldbu	r8, -1(r5)
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L608
.L607:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	mov	r2, r4
	ldb	r3, 0(r4)
	beq	r3, zero, .L620
	mov	r3, r4
.L615:
	addi	r3, r3, 1
	ldb	r7, 0(r3)
	bne	r7, zero, .L615
.L627:
	beq	r6, zero, .L622
	ldbu	r7, 0(r5)
	stb	r7, 0(r3)
	andi	r7, r7, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L628
	addi	r5, r5, 1
	addi	r3, r3, 1
	addi	r6, r6, -1
	br	.L627
.L628:
	bne	r6, zero, .L619
.L622:
	stb	zero, 0(r3)
.L619:
	ret
.L620:
	mov	r3, r4
	br	.L627
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L636
.L630:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L632
.L629:
	ret
.L632:
	addi	r2, r2, 1
	bne	r5, r2, .L630
	ret
.L636:
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	mov	r2, r4
	ldb	r7, 0(r4)
	beq	r7, zero, .L642
.L638:
	mov	r3, r5
	br	.L641
.L640:
	addi	r3, r3, 1
	beq	r6, r7, .L639
.L641:
	ldb	r6, 0(r3)
	bne	r6, zero, .L640
	addi	r2, r2, 1
	ldb	r7, 0(r2)
	bne	r7, zero, .L638
.L642:
	mov	r2, zero
.L639:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
.L646:
	ldb	r3, 0(r4)
	bne	r3, r5, .L645
	mov	r2, r4
.L645:
	addi	r4, r4, 1
	bne	r3, zero, .L646
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	mov	r2, r4
	ldb	r8, 0(r5)
	mov	r3, r5
	beq	r8, zero, .L650
.L651:
	addi	r3, r3, 1
	ldb	r4, 0(r3)
	bne	r4, zero, .L651
.L650:
	sub	r10, r3, r5
	beq	r3, r5, .L652
	addi	r10, r10, -1
	br	.L658
.L674:
	addi	r2, r2, 1
	beq	r4, zero, .L673
.L658:
	ldbu	r3, 0(r2)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	bne	r4, r8, .L674
	beq	r2, zero, .L652
	andi	r3, r3, 0xff
	beq	r3, zero, .L661
	add	r9, r2, r10
	mov	r6, r5
	mov	r4, r2
	br	.L655
.L675:
	beq	r4, r9, .L654
	bne	r7, r3, .L654
	addi	r4, r4, 1
	addi	r6, r6, 1
	ldbu	r3, 0(r4)
	beq	r3, zero, .L654
.L655:
	ldbu	r7, 0(r6)
	bne	r7, zero, .L675
.L654:
	ldbu	r4, 0(r6)
	beq	r4, r3, .L652
	addi	r2, r2, 1
	br	.L658
.L673:
	mov	r2, zero
	ret
.L652:
	ret
.L661:
	mov	r6, r5
	br	.L654
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
	blt	r2, zero, .L686
.L677:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L680
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L679
.L680:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L686:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L677
.L679:
	xorhi	r16, r16, 32768
	br	.L680
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	beq	r7, zero, .L695
	bltu	r5, r7, .L697
	sub	r5, r5, r7
	add	r11, r4, r5
	bltu	r11, r4, .L697
	ldb	r12, 0(r6)
.L694:
	ldbu	r3, 0(r4)
	mov	r2, r4
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, r12, .L709
	bgeu	r11, r4, .L694
.L697:
	mov	r2, zero
.L687:
	ret
.L709:
	addi	r5, r6, 1
	addi	r3, r7, -1
	beq	r3, zero, .L710
	mov	r8, r4
	br	.L690
.L692:
	addi	r3, r3, -1
	addi	r8, r8, 1
	addi	r5, r5, 1
	beq	r3, zero, .L711
.L690:
	ldbu	r10, 0(r8)
	ldbu	r9, 0(r5)
	beq	r10, r9, .L692
	beq	r3, zero, .L687
	beq	r10, r9, .L687
	bgeu	r11, r4, .L694
	br	.L697
.L711:
	ret
.L695:
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
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r4
	mov	r16, r6
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
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r18, r4
	mov	r16, r5
	mov	r19, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L743
	mov	r20, zero
.L719:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r18
	mov	r5, r16
	call	__gedf2
	blt	r2, zero, .L740
	mov	r17, zero
.L723:
	addi	r17, r17, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r18
	mov	r5, r16
	call	__muldf3
	mov	r18, r2
	mov	r16, r3
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r2
	mov	r5, r3
	call	__gedf2
	bge	r2, zero, .L723
.L724:
	stw	r17, 0(r19)
	beq	r20, zero, .L727
	xorhi	r16, r16, 32768
.L727:
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
.L743:
	xorhi	r16, r16, 32768
	movi	r20, 1
	br	.L719
.L740:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r18
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L741
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r16
	call	__eqdf2
	mov	r17, zero
	beq	r2, zero, .L724
.L726:
	addi	r17, r17, -1
	mov	r6, r18
	mov	r7, r16
	mov	r4, r18
	mov	r5, r16
	call	__adddf3
	mov	r18, r2
	mov	r16, r3
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r2
	mov	r5, r3
	call	__ltdf2
	blt	r2, zero, .L726
	br	.L724
.L741:
	mov	r17, zero
	br	.L724
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
	mov	r19, r6
	mov	r17, r7
	mov	r16, r4
	mov	r18, r5
	mov	r20, zero
	mov	r21, zero
.L747:
	mov	r6, r19
	mov	r7, r17
	andi	r4, r16, 1
	mov	r5, zero
	call	__muldi3
	add	r2, r20, r2
	cmpltu	r4, r2, r20
	add	r3, r21, r3
	mov	r20, r2
	add	r21, r4, r3
	srli	r2, r19, 31
	slli	r17, r17, 1
	or	r17, r2, r17
	slli	r19, r19, 1
	slli	r2, r18, 31
	srli	r16, r16, 1
	or	r16, r2, r16
	srli	r18, r18, 1
	or	r2, r16, r18
	bne	r2, zero, .L747
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
	bgeu	r5, r4, .L760
	movi	r2, 32
	movi	r3, 1
.L752:
	blt	r5, zero, .L753
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L753
	addi	r2, r2, -1
	bne	r2, zero, .L752
.L764:
	mov	r2, zero
.L755:
	beq	r6, zero, .L751
	mov	r2, r4
.L751:
	ret
.L753:
	beq	r3, zero, .L764
.L760:
	mov	r2, zero
.L754:
	bltu	r4, r5, .L757
	sub	r4, r4, r5
	or	r2, r2, r3
.L757:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L754
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
	beq	r3, r2, .L767
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
.L767:
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
	beq	r2, r6, .L781
.L776:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L781:
	bne	r3, r2, .L776
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L785
.L784:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L784
	ret
.L785:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r9, r6, 3
	movi	r10, -8
	and	r10, r6, r10
	bltu	r4, r5, .L791
	add	r2, r5, r6
	bgeu	r2, r4, .L800
.L791:
	beq	r9, zero, .L790
	mov	r2, r5
	mov	r3, r4
	slli	r9, r9, 3
	add	r9, r9, r5
.L794:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r2, r2, 8
	addi	r3, r3, 8
	bne	r2, r9, .L794
.L790:
	bgeu	r10, r6, .L787
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L795:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L795
	ret
.L800:
	addi	r2, r6, -1
	beq	r6, zero, .L801
.L792:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L792
.L787:
	ret
.L801:
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bltu	r4, r5, .L806
	add	r2, r5, r6
	bgeu	r2, r4, .L816
.L806:
	beq	r8, zero, .L805
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
.L809:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
	bne	r2, r8, .L809
.L805:
	andi	r2, r6, 1
	beq	r2, zero, .L802
	add	r5, r5, r6
	ldbu	r2, -1(r5)
	add	r4, r4, r6
	stb	r2, -1(r4)
	ret
.L816:
	addi	r2, r6, -1
	beq	r6, zero, .L817
.L807:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L807
.L802:
	ret
.L817:
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r8, r6, 2
	movi	r9, -4
	and	r9, r6, r9
	bltu	r4, r5, .L822
	add	r2, r5, r6
	bgeu	r2, r4, .L831
.L822:
	beq	r8, zero, .L821
	mov	r2, r5
	mov	r3, r4
	slli	r8, r8, 2
	add	r8, r8, r5
.L825:
	ldw	r7, 0(r2)
	stw	r7, 0(r3)
	addi	r2, r2, 4
	addi	r3, r3, 4
	bne	r2, r8, .L825
.L821:
	bgeu	r9, r6, .L818
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L826:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L826
	ret
.L831:
	addi	r2, r6, -1
	beq	r6, zero, .L832
.L823:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L823
.L818:
	ret
.L832:
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
.L847:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L845
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L847
.L845:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L851:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L849
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L851
.L849:
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
	bge	r2, zero, .L860
	mov	r4, r16
	call	__fixsfsi
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L860:
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
.L862:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L862
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
.L865:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L865
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	mov	r2, zero
	beq	r4, zero, .L870
.L869:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L869
	ret
.L870:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L875
	beq	r5, zero, .L876
.L874:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srli	r5, r5, 1
	bne	r5, zero, .L874
	ret
.L875:
	ret
.L876:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L887
	movi	r2, 32
	movi	r3, 1
.L879:
	blt	r5, zero, .L880
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L880
	addi	r2, r2, -1
	bne	r2, zero, .L879
.L891:
	mov	r2, zero
.L882:
	beq	r6, zero, .L878
	mov	r2, r4
.L878:
	ret
.L880:
	beq	r3, zero, .L891
.L887:
	mov	r2, zero
.L881:
	bltu	r4, r5, .L884
	sub	r4, r4, r5
	or	r2, r2, r3
.L884:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L881
	br	.L882
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
	blt	r2, zero, .L895
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L892:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L895:
	movi	r2, -1
	br	.L892
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
	blt	r2, zero, .L900
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L897:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L900:
	movi	r2, -1
	br	.L897
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
	blt	r5, zero, .L920
	mov	r7, zero
.L907:
	beq	r5, zero, .L912
	movi	r6, 32
	mov	r2, zero
	br	.L909
.L921:
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	beq	r3, zero, .L908
.L909:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srai	r5, r5, 1
	bne	r5, zero, .L921
.L908:
	beq	r7, zero, .L906
	sub	r2, zero, r2
.L906:
	ret
.L920:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L907
.L912:
	mov	r2, zero
	br	.L908
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L942
	mov	r7, zero
.L923:
	bge	r5, zero, .L924
	sub	r5, zero, r5
	xori	r7, r7, 1
.L924:
	mov	r6, r4
	bgeu	r5, r4, .L932
	movi	r2, 32
	movi	r3, 1
	br	.L926
.L943:
	addi	r2, r2, -1
	beq	r2, zero, .L933
.L926:
	add	r5, r5, r5
	add	r3, r3, r3
	bltu	r5, r4, .L943
	beq	r3, zero, .L933
.L941:
	mov	r2, zero
.L929:
	bltu	r6, r5, .L928
	sub	r6, r6, r5
	or	r2, r2, r3
.L928:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L929
.L927:
	beq	r7, zero, .L922
	sub	r2, zero, r2
.L922:
	ret
.L942:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L923
.L933:
	mov	r2, zero
	br	.L927
.L932:
	movi	r3, 1
	br	.L941
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L965
	mov	r7, zero
.L945:
	mov	r2, r4
	blt	r5, zero, .L966
.L946:
	bgeu	r5, r4, .L954
	movi	r6, 32
	movi	r3, 1
	br	.L948
.L967:
	addi	r6, r6, -1
	beq	r6, zero, .L949
.L948:
	add	r5, r5, r5
	add	r3, r3, r3
	bltu	r5, r4, .L967
	beq	r3, zero, .L949
.L959:
	bltu	r2, r5, .L950
	sub	r2, r2, r5
.L950:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L959
.L949:
	beq	r7, zero, .L944
	sub	r2, zero, r2
.L944:
	ret
.L966:
	sub	r5, zero, r5
	br	.L946
.L965:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L945
.L954:
	movi	r3, 1
	br	.L959
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov	r9, r4
	mov	r3, r5
	andi	r5, r5, 0xffff
	andi	r4, r4, 0xffff
	bgeu	r5, r4, .L982
	movi	r4, 16
	movi	r5, 1
	andi	r7, r9, 0xffff
.L969:
	andi	r2, r3, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L970
	add	r2, r3, r3
	mov	r3, r2
	slli	r5, r5, 1
	andi	r2, r2, 0xffff
	bgeu	r2, r7, .L970
	addi	r4, r4, -1
	bne	r4, zero, .L969
	mov	r5, zero
.L981:
	mov	r2, r5
.L972:
	beq	r6, zero, .L968
	mov	r2, r9
.L968:
	ret
.L970:
	andi	r4, r5, 0xffff
	beq	r4, zero, .L981
.L977:
	mov	r2, zero
	br	.L971
.L983:
	andi	r4, r4, 0xffff
.L971:
	andi	r7, r9, 0xffff
	andi	r8, r3, 0xffff
	bltu	r7, r8, .L974
	sub	r9, r9, r3
	or	r2, r5, r2
.L974:
	srli	r4, r4, 1
	mov	r5, r4
	srli	r3, r8, 1
	bne	r4, zero, .L983
	br	.L972
.L982:
	movi	r5, 1
	movi	r4, 1
	br	.L977
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L993
	movi	r2, 32
	movi	r3, 1
.L985:
	blt	r5, zero, .L986
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L986
	addi	r2, r2, -1
	bne	r2, zero, .L985
.L997:
	mov	r2, zero
.L988:
	beq	r6, zero, .L984
	mov	r2, r4
.L984:
	ret
.L986:
	beq	r3, zero, .L997
.L993:
	mov	r2, zero
.L987:
	bltu	r4, r5, .L990
	sub	r4, r4, r5
	or	r2, r2, r3
.L990:
	srli	r3, r3, 1
	srli	r5, r5, 1
	bne	r3, zero, .L987
	br	.L988
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L999
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r2, zero
	ret
.L999:
	beq	r6, zero, .L1002
	sll	r2, r4, r6
	movi	r3, 32
	sub	r3, r3, r6
	srl	r4, r4, r3
	sll	r3, r5, r6
	or	r3, r4, r3
	ret
.L1002:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1004
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L1004:
	beq	r6, zero, .L1007
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L1007:
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
	bne	r6, zero, .L1011
	sub	r2, r2, r3
	add	r4, r4, r5
	add	r2, r2, r4
	ret
.L1011:
	mov	r2, zero
	add	r4, r4, r5
	add	r2, r2, r4
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1017
	blt	r7, r5, .L1018
	bltu	r4, r6, .L1017
	bltu	r6, r4, .L1018
	movi	r2, 1
	ret
.L1017:
	mov	r2, zero
	ret
.L1018:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1023
	blt	r7, r5, .L1024
	bltu	r4, r6, .L1023
	bltu	r6, r4, .L1024
	movi	r2, 1
	addi	r2, r2, -1
	ret
.L1023:
	mov	r2, zero
	addi	r2, r2, -1
	ret
.L1024:
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
	beq	r2, zero, .L1027
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r3, zero
	ret
.L1027:
	beq	r6, zero, .L1030
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L1030:
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
	br	.L1041
.L1047:
	mov	r6, r20
	mov	r4, r20
	mov	r5, r7
	call	__muldf3
	mov	r20, r2
	mov	r7, r3
.L1041:
	andi	r2, r16, 1
	beq	r2, zero, .L1039
	mov	r6, r20
	stw	r7, 0(sp)
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
	ldw	r7, 0(sp)
.L1039:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L1047
	bge	r19, zero, .L1038
	mov	r6, r18
	mov	r7, r17
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r18, r2
	mov	r17, r3
.L1038:
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
	br	.L1051
.L1057:
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L1051:
	andi	r2, r16, 1
	beq	r2, zero, .L1049
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
.L1049:
	srli	r2, r16, 31
	add	r16, r2, r16
	srai	r16, r16, 1
	bne	r16, zero, .L1057
	bge	r19, zero, .L1048
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
.L1048:
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
	bltu	r5, r7, .L1062
	bltu	r7, r5, .L1063
	bltu	r4, r6, .L1062
	bltu	r6, r4, .L1063
	movi	r2, 1
	ret
.L1062:
	mov	r2, zero
	ret
.L1063:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1068
	bltu	r7, r5, .L1069
	bltu	r4, r6, .L1068
	bltu	r6, r4, .L1069
	movi	r2, 1
	addi	r2, r2, -1
	ret
.L1068:
	mov	r2, zero
	addi	r2, r2, -1
	ret
.L1069:
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
