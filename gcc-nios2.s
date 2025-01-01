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
	beq	r7, zero, .L16
.L9:
	ldbu	r3, 0(r5)
	stb	r3, 0(r4)
	andi	r3, r3, 0xff
	beq	r3, r6, .L17
	addi	r7, r7, -1
	addi	r5, r5, 1
	addi	r4, r4, 1
	bne	r7, zero, .L9
	mov	r2, zero
	ret
.L16:
	mov	r2, zero
	ret
.L17:
	addi	r2, r4, 1
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	andi	r5, r5, 0xff
	beq	r6, zero, .L24
.L19:
	ldbu	r2, 0(r4)
	beq	r2, r5, .L25
	addi	r4, r4, 1
	addi	r6, r6, -1
	bne	r6, zero, .L19
	mov	r2, zero
	ret
.L24:
	mov	r2, zero
	ret
.L25:
	mov	r2, r4
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	beq	r6, zero, .L34
.L27:
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	bne	r3, r2, .L35
	addi	r6, r6, -1
	addi	r4, r4, 1
	addi	r5, r5, 1
	bne	r6, zero, .L27
	mov	r2, zero
	ret
.L34:
	mov	r2, zero
	ret
.L35:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	mov	r2, r4
	beq	r6, zero, .L37
	add	r6, r4, r6
	mov	r3, r4
.L38:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r5)
	stb	r7, -1(r3)
	bne	r6, r3, .L38
.L37:
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
.L41:
	beq	r6, r4, .L44
	mov	r2, r6
	ldbu	r3, 0(r6)
	addi	r6, r6, -1
	bne	r3, r5, .L41
	ret
.L44:
	mov	r2, zero
.L40:
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	mov	r2, r4
	beq	r6, zero, .L46
	add	r6, r4, r6
	mov	r3, r4
.L47:
	stb	r5, 0(r3)
	addi	r3, r3, 1
	bne	r6, r3, .L47
.L46:
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
	beq	r3, zero, .L50
.L51:
	addi	r5, r5, 1
	addi	r2, r2, 1
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L51
.L50:
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	andi	r5, r5, 0xff
	ldb	r2, 0(r4)
	beq	r2, zero, .L59
.L54:
	ldbu	r2, 0(r4)
	beq	r2, r5, .L60
	addi	r4, r4, 1
	ldb	r2, 0(r4)
	bne	r2, zero, .L54
	mov	r2, r4
	ret
.L59:
	mov	r2, r4
	ret
.L60:
	mov	r2, r4
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	mov	r2, r4
.L63:
	ldbu	r3, 0(r2)
	andi	r4, r3, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	beq	r4, r5, .L62
	addi	r2, r2, 1
	bne	r4, zero, .L63
	mov	r2, zero
.L62:
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	ldb	r3, 0(r4)
	ldb	r2, 0(r5)
	bne	r3, r2, .L67
.L66:
	ldb	r2, 0(r4)
	beq	r2, zero, .L67
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldb	r3, 0(r4)
	ldb	r2, 0(r5)
	beq	r3, r2, .L66
.L67:
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	sub	r2, r3, r2
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	ldb	r2, 0(r4)
	beq	r2, zero, .L73
	mov	r2, r4
.L72:
	addi	r2, r2, 1
	ldb	r5, 0(r2)
	bne	r5, zero, .L72
.L71:
	sub	r2, r2, r4
	ret
.L73:
	mov	r2, r4
	br	.L71
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	addi	r2, r6, -1
	beq	r6, zero, .L80
	ldbu	r3, 0(r4)
	beq	r3, zero, .L77
	add	r6, r4, r2
.L78:
	ldbu	r2, 0(r5)
	andi	r3, r2, 0xff
	beq	r3, zero, .L77
	beq	r6, r4, .L81
	mov	r2, r3
	ldbu	r3, 0(r4)
	bne	r2, r3, .L77
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, 0(r4)
	bne	r2, zero, .L78
	br	.L77
.L81:
	mov	r4, r6
.L77:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	ret
.L80:
	mov	r2, zero
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	cmplti	r2, r6, 2
	bne	r2, zero, .L82
	movi	r2, -2
	and	r6, r6, r2
	add	r3, r4, r6
.L84:
	ldbu	r2, 1(r4)
	stb	r2, 0(r5)
	ldbu	r2, 0(r4)
	stb	r2, 1(r5)
	addi	r5, r5, 2
	addi	r4, r4, 2
	bne	r4, r3, .L84
.L82:
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
	bne	r2, zero, .L90
	cmpeqi	r2, r4, 9
	ret
.L90:
	movi	r2, 1
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	cmpltui	r2, r4, 32
	bne	r2, zero, .L93
	cmpeqi	r2, r4, 127
	ret
.L93:
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
	bne	r2, zero, .L100
	addi	r2, r4, -9
	cmpltui	r2, r2, 5
	andi	r2, r2, 0xff
	ret
.L100:
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
	bne	r2, zero, .L104
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L105
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L106
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r4, r2
	cmpltui	r2, r2, 3
	andi	r2, r2, 0xff
	ret
.L104:
	movi	r2, 1
	ret
.L105:
	movi	r2, 1
	ret
.L106:
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
	beq	r2, zero, .L115
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L111
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L112
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L113
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L114
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	ret
.L115:
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	ret
.L111:
	movi	r2, 1
	ret
.L112:
	movi	r2, 1
	ret
.L113:
	movi	r2, 1
	ret
.L114:
	mov	r2, zero
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L118
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 6
	andi	r2, r2, 0xff
	ret
.L118:
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
	bne	r2, zero, .L123
	mov	r6, r19
	mov	r7, r18
	mov	r4, r19
	mov	r5, r18
	call	__unorddf2
	bne	r2, zero, .L124
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L127
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__subdf3
.L120:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L123:
	mov	r2, r17
	mov	r3, r16
	br	.L120
.L124:
	mov	r2, r19
	mov	r3, r18
	br	.L120
.L127:
	mov	r2, zero
	mov	r3, zero
	br	.L120
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
	bne	r2, zero, .L132
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L133
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L136
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
.L129:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L132:
	mov	r2, r16
	br	.L129
.L133:
	mov	r2, r17
	br	.L129
.L136:
	mov	r2, zero
	br	.L129
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
	mov	r17, r4
	mov	r16, r5
	mov	r18, r6
	mov	r19, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L144
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L145
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L140
	beq	r2, zero, .L146
	mov	r2, r18
	mov	r3, r19
	br	.L138
.L140:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L143
	mov	r17, r18
	mov	r16, r19
.L143:
	mov	r2, r17
	mov	r3, r16
.L138:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L144:
	mov	r2, r18
	mov	r3, r19
	br	.L138
.L145:
	mov	r2, r17
	mov	r3, r16
	br	.L138
.L146:
	mov	r2, r17
	mov	r3, r16
	br	.L138
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
	bne	r2, zero, .L154
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L155
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L150
	beq	r2, zero, .L156
	mov	r2, r17
	br	.L148
.L150:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	bge	r2, zero, .L153
	mov	r16, r17
.L153:
	mov	r2, r16
.L148:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L154:
	mov	r2, r17
	br	.L148
.L155:
	mov	r2, r16
	br	.L148
.L156:
	mov	r2, r16
	br	.L148
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
	mov	r17, r4
	mov	r16, r5
	mov	r18, r6
	mov	r19, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L164
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__unorddf2
	bne	r2, zero, .L165
	andhi	r2, r16, 32768
	andhi	r3, r19, 32768
	beq	r2, r3, .L160
	beq	r2, zero, .L166
	mov	r2, r18
	mov	r3, r19
	br	.L158
.L160:
	mov	r6, r18
	mov	r7, r19
	mov	r4, r17
	mov	r5, r16
	call	__ltdf2
	bge	r2, zero, .L163
	mov	r17, r18
	mov	r16, r19
.L163:
	mov	r2, r17
	mov	r3, r16
.L158:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L164:
	mov	r2, r18
	mov	r3, r19
	br	.L158
.L165:
	mov	r2, r17
	mov	r3, r16
	br	.L158
.L166:
	mov	r2, r17
	mov	r3, r16
	br	.L158
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
	mov	r19, r4
	mov	r18, r5
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L174
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L175
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L170
	beq	r2, zero, .L176
	mov	r2, r19
	mov	r3, r18
	br	.L168
.L170:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L173
	mov	r17, r19
	mov	r16, r18
.L173:
	mov	r2, r17
	mov	r3, r16
.L168:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L174:
	mov	r2, r17
	mov	r3, r16
	br	.L168
.L175:
	mov	r2, r19
	mov	r3, r18
	br	.L168
.L176:
	mov	r2, r17
	mov	r3, r16
	br	.L168
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
	bne	r2, zero, .L184
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L185
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L180
	beq	r2, zero, .L186
	mov	r2, r17
	br	.L178
.L180:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	bge	r2, zero, .L183
	mov	r16, r17
.L183:
	mov	r2, r16
.L178:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L184:
	mov	r2, r16
	br	.L178
.L185:
	mov	r2, r17
	br	.L178
.L186:
	mov	r2, r16
	br	.L178
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
	mov	r19, r4
	mov	r18, r5
	mov	r17, r6
	mov	r16, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L194
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__unorddf2
	bne	r2, zero, .L195
	andhi	r2, r18, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L190
	beq	r2, zero, .L196
	mov	r2, r19
	mov	r3, r18
	br	.L188
.L190:
	mov	r6, r17
	mov	r7, r16
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	bge	r2, zero, .L193
	mov	r17, r19
	mov	r16, r18
.L193:
	mov	r2, r17
	mov	r3, r16
.L188:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L194:
	mov	r2, r17
	mov	r3, r16
	br	.L188
.L195:
	mov	r2, r19
	mov	r3, r18
	br	.L188
.L196:
	mov	r2, r17
	mov	r3, r16
	br	.L188
	.size	fminl, .-fminl
	.section	.rodata
	.align	2
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
	beq	r4, zero, .L201
	addi	r3, gp, %gprel(s.0)
.L200:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
	bne	r4, zero, .L200
.L199:
	stb	zero, 0(r3)
	addi	r2, gp, %gprel(s.0)
	ret
.L201:
	addi	r3, gp, %gprel(s.0)
	br	.L199
	.size	l64a, .-l64a
	.section	.sbss
	.type	seed, @object
	.size	seed, 8
	.align	2
seed:
	.zero	8
	.section	.text
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
	beq	r5, zero, .L209
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L206
	stw	r4, 4(r2)
.L206:
	ret
.L209:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L211
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L211:
	ldw	r2, 4(r4)
	beq	r2, zero, .L210
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L210:
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
	mov	r20, r4
	stw	r5, 0(sp)
	stw	r6, 4(sp)
	mov	r19, r7
	ldw	fp, 40(sp)
	ldw	r18, 0(r6)
	beq	r18, zero, .L214
	mov	r16, r5
	mov	r17, zero
.L216:
	mov	r21, r16
	mov	r5, r16
	mov	r4, r20
	callr	fp
	beq	r2, zero, .L213
	addi	r17, r17, 1
	add	r16, r16, r19
	bne	r18, r17, .L216
.L214:
	addi	r2, r18, 1
	ldw	r3, 4(sp)
	stw	r2, 0(r3)
	mul	r4, r19, r18
	mov	r6, r19
	mov	r5, r20
	ldw	r2, 0(sp)
	add	r4, r2, r4
	call	memcpy
	mov	r21, r2
.L213:
	mov	r2, r21
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
	ldw	fp, 32(sp)
	ldw	r20, 0(r6)
	beq	r20, zero, .L222
	mov	r18, r4
	mov	r19, r7
	mov	r16, r5
	mov	r17, zero
.L221:
	mov	r21, r16
	mov	r5, r16
	mov	r4, r18
	callr	fp
	beq	r2, zero, .L219
	addi	r17, r17, 1
	add	r16, r16, r19
	bne	r20, r17, .L221
	mov	r21, zero
.L219:
	mov	r2, r21
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
.L222:
	mov	r21, zero
	br	.L219
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	blt	r4, zero, .L227
.L226:
	ret
.L227:
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
	br	.L229
.L230:
	addi	r16, r16, 1
.L229:
	ldbu	r17, 0(r16)
	andi	r4, r17, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	bne	r2, zero, .L230
	andi	r3, r17, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	cmpeqi	r3, r3, 43
	bne	r3, zero, .L236
	andi	r17, r17, 255
	xori	r17, r17, 128
	addi	r17, r17, -128
	cmpnei	r17, r17, 45
	bne	r17, zero, .L237
	movi	r4, 1
.L231:
	addi	r16, r16, 1
.L232:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpgeui	r3, r3, 10
	bne	r3, zero, .L233
.L234:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L234
.L233:
	bne	r4, zero, .L228
	sub	r2, zero, r2
.L228:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L236:
	mov	r4, r2
	br	.L231
.L237:
	mov	r4, r2
	br	.L232
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
	br	.L241
.L242:
	addi	r16, r16, 1
.L241:
	ldbu	r17, 0(r16)
	andi	r4, r17, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	bne	r2, zero, .L242
	andi	r3, r17, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	cmpeqi	r3, r3, 43
	bne	r3, zero, .L248
	andi	r17, r17, 255
	xori	r17, r17, 128
	addi	r17, r17, -128
	cmpnei	r17, r17, 45
	bne	r17, zero, .L249
	movi	r4, 1
.L243:
	addi	r16, r16, 1
.L244:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpgeui	r3, r3, 10
	bne	r3, zero, .L245
.L246:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L246
.L245:
	bne	r4, zero, .L240
	sub	r2, zero, r2
.L240:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L248:
	mov	r4, r2
	br	.L243
.L249:
	mov	r4, r2
	br	.L244
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
	mov	r16, r4
	br	.L253
.L254:
	addi	r16, r16, 1
.L253:
	ldbu	r18, 0(r16)
	andi	r4, r18, 255
	xori	r4, r4, 128
	addi	r4, r4, -128
	call	isspace
	mov	r17, r2
	bne	r2, zero, .L254
	andi	r2, r18, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r2, r2, 43
	bne	r2, zero, .L255
	andi	r18, r18, 255
	xori	r18, r18, 128
	addi	r18, r18, -128
	cmpnei	r18, r18, 45
	bne	r18, zero, .L256
	movi	r17, 1
.L255:
	addi	r16, r16, 1
.L256:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpgeui	r2, r2, 10
	bne	r2, zero, .L260
	mov	r4, zero
	mov	r5, zero
.L258:
	movi	r6, 10
	mov	r7, zero
	call	__muldi3
	addi	r16, r16, 1
	ldb	r4, -1(r16)
	addi	r4, r4, -48
	srai	r5, r4, 31
	sub	r4, r2, r4
	cmpltu	r2, r2, r4
	sub	r5, r3, r5
	sub	r5, r5, r2
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L258
.L257:
	bne	r17, zero, .L252
	cmpne	r2, r4, zero
	sub	r5, zero, r5
	sub	r5, r5, r2
	sub	r4, zero, r4
.L252:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L260:
	mov	r4, zero
	mov	r5, zero
	br	.L257
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
	mov	r21, r4
	mov	r20, r5
	mov	r16, r6
	mov	r19, r7
	ldw	fp, 32(sp)
	bne	r6, zero, .L266
	mov	r17, zero
	br	.L263
.L268:
	mov	r16, r18
.L265:
	beq	r16, zero, .L271
.L266:
	srli	r18, r16, 1
	mul	r17, r18, r19
	add	r17, r20, r17
	mov	r5, r17
	mov	r4, r21
	callr	fp
	blt	r2, zero, .L268
	bge	zero, r2, .L263
	add	r20, r17, r19
	addi	r16, r16, -1
	sub	r16, r16, r18
	br	.L265
.L271:
	mov	r17, zero
.L263:
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
	mov	r20, r4
	mov	r19, r5
	mov	r18, r7
	ldw	fp, 32(sp)
	ldw	r21, 36(sp)
	mov	r17, r6
	bne	r6, zero, .L275
	mov	r16, zero
	br	.L272
.L274:
	srai	r17, r17, 1
	beq	r17, zero, .L279
.L275:
	srai	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r6, r21
	mov	r5, r16
	mov	r4, r20
	callr	fp
	beq	r2, zero, .L272
	bge	zero, r2, .L274
	add	r19, r16, r18
	addi	r17, r17, -1
	br	.L274
.L279:
	mov	r16, zero
.L272:
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
	blt	r5, zero, .L285
.L283:
	ret
.L285:
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
	addi	sp, sp, -36
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r18, r5
	mov	r17, r6
	mov	r19, r7
	ldw	fp, 36(sp)
	mov	r6, r7
	mov	r7, fp
	mov	r4, r5
	mov	r5, r17
	call	__divdi3
	mov	r21, r2
	mov	r20, r3
	mov	r6, r19
	mov	r7, fp
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r21, 0(r16)
	stw	r20, 4(r16)
	stw	r2, 8(r16)
	stw	r3, 12(r16)
	mov	r2, r16
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 36
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	mov	r2, r4
	blt	r4, zero, .L290
.L289:
	ret
.L290:
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
	blt	r5, zero, .L296
.L294:
	ret
.L296:
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
	addi	sp, sp, -36
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	mov	r18, r5
	mov	r17, r6
	mov	r19, r7
	ldw	fp, 36(sp)
	mov	r6, r7
	mov	r7, fp
	mov	r4, r5
	mov	r5, r17
	call	__divdi3
	mov	r21, r2
	mov	r20, r3
	mov	r6, r19
	mov	r7, fp
	mov	r4, r18
	mov	r5, r17
	call	__moddi3
	stw	r21, 0(r16)
	stw	r20, 4(r16)
	stw	r2, 8(r16)
	stw	r3, 12(r16)
	mov	r2, r16
	ldw	ra, 28(sp)
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 36
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	ldw	r2, 0(r4)
	beq	r2, zero, .L306
.L300:
	ldw	r2, 0(r4)
	beq	r2, r5, .L307
	addi	r4, r4, 4
	ldw	r2, 0(r4)
	bne	r2, zero, .L300
	mov	r2, r4
	br	.L302
.L306:
	ret
.L307:
	mov	r2, r4
.L302:
	ldw	r3, 0(r2)
	beq	r3, zero, .L308
.L299:
	ret
.L308:
	mov	r2, zero
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L311
.L310:
	ldw	r2, 0(r4)
	beq	r2, zero, .L311
	ldw	r2, 0(r5)
	beq	r2, zero, .L311
	addi	r4, r4, 4
	addi	r5, r5, 4
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L310
.L311:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L314
	cmplt	r2, r2, r3
	ret
.L314:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L317:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L317
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L322
	mov	r2, r4
.L321:
	addi	r2, r2, 4
	ldw	r3, 0(r2)
	bne	r3, zero, .L321
.L320:
	sub	r2, r2, r4
	srai	r2, r2, 2
	ret
.L322:
	mov	r2, r4
	br	.L320
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L332
.L325:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	bne	r2, r3, .L327
	beq	r2, zero, .L327
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L325
	mov	r2, zero
	ret
.L332:
	mov	r2, zero
	ret
.L329:
	cmplt	r2, r2, r3
	ret
.L327:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bge	r3, r2, .L329
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L339
.L334:
	ldw	r2, 0(r4)
	beq	r2, r5, .L340
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r6, zero, .L334
	mov	r2, zero
	ret
.L339:
	mov	r2, zero
	ret
.L340:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L350
.L342:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L351
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L342
	mov	r2, zero
	ret
.L350:
	mov	r2, zero
	ret
.L346:
	cmplt	r2, r2, r3
	ret
.L351:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bge	r3, r2, .L346
	movi	r2, -1
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L353
	mov	r6, r4
.L354:
	addi	r5, r5, 4
	addi	r6, r6, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r6)
	addi	r3, r3, -1
	cmpnei	r7, r3, -1
	bne	r7, zero, .L354
.L353:
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	mov	r2, r4
	beq	r4, r5, .L357
	mov	r4, r5
	sub	r3, r2, r5
	slli	r7, r6, 2
	bltu	r3, r7, .L358
	addi	r7, r6, -1
	mov	r3, r2
	beq	r6, zero, .L365
.L359:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	addi	r7, r7, -1
	cmpnei	r6, r7, -1
	bne	r6, zero, .L359
.L357:
	ret
.L365:
	ret
.L358:
	addi	r3, r6, -1
	beq	r6, zero, .L357
	slli	r3, r3, 2
	add	r5, r5, r3
	add	r3, r2, r3
.L360:
	mov	r6, r5
	ldw	r7, 0(r5)
	stw	r7, 0(r3)
	addi	r5, r5, -4
	addi	r3, r3, -4
	bne	r4, r6, .L360
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L367
	mov	r6, r4
.L368:
	addi	r6, r6, 4
	stw	r5, -4(r6)
	addi	r3, r3, -1
	cmpnei	r7, r3, -1
	bne	r7, zero, .L368
.L367:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L371
	add	r2, r4, r6
	add	r5, r5, r6
	beq	r6, zero, .L370
.L373:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
	bne	r4, r2, .L373
	ret
.L371:
	beq	r4, r5, .L370
	beq	r6, zero, .L370
	add	r6, r4, r6
.L374:
	addi	r4, r4, 1
	addi	r5, r5, 1
	ldbu	r2, -1(r4)
	stb	r2, -1(r5)
	bne	r6, r4, .L374
.L370:
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r8, r6, -32
	blt	r8, zero, .L378
	sll	r8, r4, r8
	mov	r2, zero
.L379:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L380
	srl	r7, r5, r7
	mov	r3, zero
.L381:
	or	r2, r7, r2
	or	r3, r3, r8
	ret
.L378:
	srli	r2, r4, 1
	movi	r3, 31
	sub	r3, r3, r6
	srl	r2, r2, r3
	sll	r8, r5, r6
	or	r8, r2, r8
	sll	r2, r4, r6
	br	.L379
.L380:
	slli	r3, r5, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	sll	r3, r3, r7
	srl	r7, r4, r6
	or	r7, r3, r7
	srl	r3, r5, r6
	br	.L381
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	r8, r6, -32
	blt	r8, zero, .L383
	srl	r8, r5, r8
	mov	r3, zero
.L384:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L385
	sll	r7, r4, r7
	mov	r2, zero
.L386:
	or	r2, r2, r8
	or	r3, r7, r3
	ret
.L383:
	slli	r2, r5, 1
	movi	r3, 31
	sub	r3, r3, r6
	sll	r2, r2, r3
	srl	r8, r4, r6
	or	r8, r2, r8
	srl	r3, r5, r6
	br	.L384
.L385:
	srli	r2, r4, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r7, 31
	sub	r7, r7, r6
	srl	r2, r2, r7
	sll	r7, r5, r6
	or	r7, r2, r7
	sll	r2, r4, r6
	br	.L386
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
	srli	r6, r4, 24
	srli	r2, r4, 8
	andi	r3, r2, 65280
	slli	r5, r4, 8
	andhi	r5, r5, 255
	slli	r4, r4, 24
	or	r4, r4, r6
	or	r2, r3, r4
	or	r2, r5, r2
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	srli	r10, r5, 24
	srli	r7, r5, 8
	andi	r7, r7, 65280
	slli	r2, r5, 8
	andhi	r2, r2, 255
	slli	r5, r5, 24
	slli	r8, r4, 8
	srli	r9, r4, 24
	srli	r3, r4, 8
	slli	r4, r4, 24
	andi	r6, r3, 65280
	andhi	r8, r8, 255
	or	r7, r7, r10
	or	r2, r2, r7
	or	r3, r9, r4
	or	r3, r6, r3
	or	r2, r5, r2
	or	r3, r8, r3
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	mov	r2, zero
.L401:
	srl	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L403
	addi	r2, r2, 1
	cmpnei	r3, r2, 32
	bne	r3, zero, .L401
	mov	r2, zero
	ret
.L403:
	addi	r2, r2, 1
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L407
	andi	r2, r4, 1
	bne	r2, zero, .L404
	movi	r2, 1
.L406:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L406
	ret
.L407:
	mov	r2, r4
.L404:
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
	blt	r2, zero, .L412
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L409:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L412:
	movi	r2, 1
	br	.L409
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
	blt	r2, zero, .L417
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L414:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L417:
	movi	r2, 1
	br	.L414
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
	blt	r2, zero, .L422
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L419:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L422:
	movi	r2, 1
	br	.L419
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
	bne	r2, zero, .L427
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r18
	mov	r4, r2
	call	__eqsf2
	beq	r2, zero, .L427
	blt	r16, zero, .L433
	movhi	r17, 16384
	br	.L430
.L433:
	movhi	r17, 16128
	br	.L430
.L429:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L427
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L430:
	andi	r2, r16, 1
	beq	r2, zero, .L429
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L429
.L427:
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
	mov	r20, r4
	mov	r19, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L435
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r6, r20
	mov	r7, r19
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L435
	blt	r16, zero, .L441
	mov	r18, zero
	movhi	r17, 16384
	br	.L438
.L441:
	mov	r18, zero
	movhi	r17, 16352
	br	.L438
.L437:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L435
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L438:
	andi	r2, r16, 1
	beq	r2, zero, .L437
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L437
.L435:
	mov	r2, r20
	mov	r3, r19
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
	mov	r20, r4
	mov	r19, r5
	mov	r16, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L443
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r6, r20
	mov	r7, r19
	mov	r4, r2
	mov	r5, r3
	call	__eqdf2
	beq	r2, zero, .L443
	blt	r16, zero, .L449
	mov	r18, zero
	movhi	r17, 16384
	br	.L446
.L449:
	mov	r18, zero
	movhi	r17, 16352
	br	.L446
.L445:
	srli	r8, r16, 31
	add	r8, r8, r16
	srai	r16, r8, 1
	beq	r16, zero, .L443
	mov	r6, r18
	mov	r7, r17
	mov	r4, r18
	mov	r5, r17
	call	__muldf3
	mov	r18, r2
	mov	r17, r3
.L446:
	andi	r2, r16, 1
	beq	r2, zero, .L445
	mov	r6, r18
	mov	r7, r17
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L445
.L443:
	mov	r2, r20
	mov	r3, r19
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
	beq	r6, zero, .L451
	add	r6, r5, r6
	mov	r3, r4
.L452:
	addi	r5, r5, 1
	ldbu	r8, -1(r5)
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	xor	r7, r7, r8
	stb	r7, -1(r3)
	bne	r6, r5, .L452
.L451:
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
	mov	r18, r4
	mov	r17, r5
	mov	r16, r6
	call	strlen
	add	r2, r18, r2
	beq	r16, zero, .L456
.L455:
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L458
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
	bne	r16, zero, .L455
.L456:
	stb	zero, 0(r2)
.L458:
	mov	r2, r18
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
	beq	r5, zero, .L468
.L462:
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L469
.L461:
	ret
.L468:
	mov	r2, r5
	ret
.L469:
	addi	r2, r2, 1
	bne	r5, r2, .L462
	mov	r2, r5
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	mov	r2, r4
	ldb	r3, 0(r4)
	beq	r3, zero, .L477
.L471:
	mov	r6, r5
.L474:
	ldbu	r3, 0(r6)
	andi	r7, r3, 255
	xori	r7, r7, 128
	addi	r7, r7, -128
	beq	r7, zero, .L478
	addi	r6, r6, 1
	ldb	r7, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r7, r3, .L474
.L472:
	ret
.L477:
	mov	r2, zero
	ret
.L478:
	addi	r2, r2, 1
	ldb	r3, 0(r2)
	bne	r3, zero, .L471
	mov	r2, zero
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r2, zero
	br	.L481
.L480:
	addi	r4, r4, 1
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L484
.L481:
	ldbu	r3, 0(r4)
	andi	r6, r3, 255
	xori	r6, r6, 128
	addi	r6, r6, -128
	bne	r6, r5, .L480
	mov	r2, r4
	br	.L480
.L484:
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
	beq	r2, zero, .L485
	mov	r18, r2
	ldb	r19, 0(r17)
.L487:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	beq	r2, zero, .L485
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L485
	addi	r16, r16, 1
	br	.L487
.L485:
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
	blt	r2, zero, .L502
	mov	r6, zero
	mov	r7, zero
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	ble	r2, zero, .L495
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__ltdf2
	blt	r2, zero, .L494
.L495:
	mov	r2, r17
	mov	r3, r16
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L502:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r19
	mov	r5, r18
	call	__gtdf2
	ble	r2, zero, .L495
.L494:
	xorhi	r16, r16, 32768
	br	.L495
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r16, r4
	sub	r17, r5, r7
	add	r17, r4, r17
	beq	r7, zero, .L507
	bltu	r5, r7, .L508
	bltu	r17, r4, .L509
	ldb	r19, 0(r6)
	addi	r20, r6, 1
	addi	r18, r7, -1
	br	.L506
.L505:
	addi	r16, r16, 1
	bltu	r17, r16, .L513
.L506:
	ldb	r2, 0(r16)
	bne	r2, r19, .L505
	mov	r6, r18
	mov	r5, r20
	addi	r4, r16, 1
	call	memcmp
	bne	r2, zero, .L505
	mov	r2, r16
	br	.L503
.L513:
	mov	r2, zero
.L503:
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L507:
	mov	r2, r4
	br	.L503
.L508:
	mov	r2, zero
	br	.L503
.L509:
	mov	r2, zero
	br	.L503
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
	mov	r20, r4
	mov	r19, r5
	mov	r17, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	blt	r2, zero, .L538
	mov	r18, zero
.L517:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r20
	mov	r5, r19
	call	__gedf2
	blt	r2, zero, .L535
	mov	r16, zero
.L521:
	addi	r16, r16, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	mov	r20, r2
	mov	r19, r3
	mov	r6, zero
	movhi	r7, 16368
	call	__gedf2
	bge	r2, zero, .L521
.L522:
	stw	r16, 0(r17)
	beq	r18, zero, .L525
	xorhi	r19, r19, 32768
.L525:
	mov	r2, r20
	mov	r3, r19
	ldw	ra, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
.L538:
	xorhi	r19, r19, 32768
	movi	r18, 1
	br	.L517
.L535:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r20
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L536
	mov	r6, zero
	mov	r7, zero
	mov	r4, r20
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L528
	mov	r16, zero
.L524:
	addi	r16, r16, -1
	mov	r6, r20
	mov	r7, r19
	mov	r4, r20
	mov	r5, r19
	call	__adddf3
	mov	r4, r2
	mov	r5, r3
	mov	r20, r2
	mov	r19, r3
	mov	r6, zero
	movhi	r7, 16352
	call	__ltdf2
	blt	r2, zero, .L524
	br	.L522
.L536:
	mov	r16, zero
	br	.L522
.L528:
	mov	r16, zero
	br	.L522
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
	beq	r4, zero, .L543
	mov	r17, r6
	mov	r16, r7
	mov	r20, r5
	mov	r18, zero
	mov	r21, zero
.L542:
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
	bne	r2, zero, .L542
.L539:
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
.L543:
	mov	r18, zero
	mov	r21, zero
	br	.L539
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L554
	movi	r2, 32
	movi	r3, 1
.L547:
	blt	r5, zero, .L554
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L549
	addi	r2, r2, -1
	bne	r2, zero, .L547
.L550:
	bne	r6, zero, .L559
.L546:
	ret
.L552:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L550
.L553:
	bltu	r4, r5, .L552
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L552
.L549:
	beq	r3, zero, .L560
.L554:
	mov	r2, zero
	br	.L553
.L560:
	mov	r2, r3
	br	.L550
.L559:
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
	beq	r3, r2, .L563
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
.L563:
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
	beq	r3, r6, .L577
.L572:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L577:
	bne	r2, r6, .L572
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	beq	r4, zero, .L581
	mov	r2, zero
.L580:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L580
	ret
.L581:
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
	bltu	r4, r5, .L584
	add	r2, r5, r6
	bltu	r2, r4, .L584
	addi	r2, r6, -1
	beq	r6, zero, .L594
.L585:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L585
.L583:
	ret
.L594:
	ret
.L584:
	beq	r9, zero, .L587
	mov	r2, r5
	mov	r3, r4
	slli	r9, r9, 3
	add	r9, r5, r9
.L588:
	ldw	r8, 0(r2)
	ldw	r7, 4(r2)
	stw	r8, 0(r3)
	stw	r7, 4(r3)
	addi	r2, r2, 8
	addi	r3, r3, 8
	bne	r2, r9, .L588
.L587:
	bgeu	r10, r6, .L583
	add	r2, r5, r10
	add	r4, r4, r10
	add	r5, r5, r6
.L589:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L589
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r8, r6, 1
	bltu	r4, r5, .L596
	add	r2, r5, r6
	bltu	r2, r4, .L596
	addi	r2, r6, -1
	beq	r6, zero, .L604
.L597:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L597
.L595:
	ret
.L604:
	ret
.L596:
	beq	r8, zero, .L599
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r5, r8
.L600:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
	bne	r2, r8, .L600
.L599:
	andi	r2, r6, 1
	beq	r2, zero, .L595
	addi	r6, r6, -1
	add	r5, r5, r6
	add	r4, r4, r6
	ldbu	r2, 0(r5)
	stb	r2, 0(r4)
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r8, r6, 2
	movi	r9, -4
	and	r9, r6, r9
	bltu	r4, r5, .L606
	add	r2, r5, r6
	bltu	r2, r4, .L606
	addi	r2, r6, -1
	beq	r6, zero, .L616
.L607:
	add	r3, r5, r2
	ldbu	r6, 0(r3)
	add	r3, r4, r2
	stb	r6, 0(r3)
	addi	r2, r2, -1
	cmpnei	r3, r2, -1
	bne	r3, zero, .L607
.L605:
	ret
.L616:
	ret
.L606:
	beq	r8, zero, .L609
	mov	r2, r5
	mov	r3, r4
	slli	r8, r8, 2
	add	r8, r5, r8
.L610:
	ldw	r7, 0(r2)
	stw	r7, 0(r3)
	addi	r2, r2, 4
	addi	r3, r3, 4
	bne	r2, r8, .L610
.L609:
	bgeu	r9, r6, .L605
	add	r2, r5, r9
	add	r4, r4, r9
	add	r5, r5, r6
.L611:
	ldbu	r3, 0(r2)
	stb	r3, 0(r4)
	addi	r2, r2, 1
	addi	r4, r4, 1
	bne	r2, r5, .L611
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
.L631:
	sub	r3, r5, r2
	sra	r3, r4, r3
	andi	r3, r3, 1
	bne	r3, zero, .L629
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L631
.L629:
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	mov	r2, zero
	andi	r4, r4, 0xffff
.L635:
	sra	r3, r4, r2
	andi	r3, r3, 1
	bne	r3, zero, .L633
	addi	r2, r2, 1
	cmpnei	r3, r2, 16
	bne	r3, zero, .L635
.L633:
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
	bge	r2, zero, .L644
	mov	r4, r16
	call	__fixsfsi
.L637:
	ldw	ra, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
.L644:
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L637
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	mov	r2, zero
	mov	r3, zero
	andi	r4, r4, 0xffff
.L646:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L646
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
.L649:
	sra	r5, r4, r3
	andi	r5, r5, 1
	add	r2, r2, r5
	addi	r3, r3, 1
	cmpnei	r5, r3, 16
	bne	r5, zero, .L649
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	beq	r4, zero, .L654
	mov	r2, zero
.L653:
	andi	r3, r4, 1
	mul	r3, r3, r5
	add	r2, r2, r3
	srli	r4, r4, 1
	add	r5, r5, r5
	bne	r4, zero, .L653
	ret
.L654:
	mov	r2, r4
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	beq	r4, zero, .L659
	beq	r5, zero, .L660
	mov	r2, zero
.L658:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srli	r5, r5, 1
	bne	r5, zero, .L658
	ret
.L659:
	mov	r2, r4
	ret
.L660:
	mov	r2, r5
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	movi	r3, 1
	bgeu	r5, r4, .L670
	movi	r2, 32
	movi	r3, 1
.L663:
	blt	r5, zero, .L670
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L665
	addi	r2, r2, -1
	bne	r2, zero, .L663
.L666:
	bne	r6, zero, .L675
.L662:
	ret
.L668:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L666
.L669:
	bltu	r4, r5, .L668
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L668
.L665:
	beq	r3, zero, .L676
.L670:
	mov	r2, zero
	br	.L669
.L676:
	mov	r2, r3
	br	.L666
.L675:
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
	blt	r2, zero, .L680
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
.L677:
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L680:
	movi	r2, -1
	br	.L677
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
	blt	r2, zero, .L685
	mov	r6, r19
	mov	r7, r18
	mov	r4, r17
	mov	r5, r16
	call	__gtdf2
	cmplt	r2, zero, r2
.L682:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L685:
	movi	r2, -1
	br	.L682
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
	blt	r5, zero, .L699
	mov	r7, zero
	beq	r5, zero, .L700
.L696:
	movi	r6, 32
	mov	r2, zero
.L694:
	andi	r3, r5, 1
	mul	r3, r3, r4
	add	r2, r2, r3
	add	r4, r4, r4
	srai	r5, r5, 1
	beq	r5, zero, .L693
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L694
.L693:
	beq	r7, zero, .L691
	sub	r2, zero, r2
	ret
.L699:
	sub	r5, zero, r5
	movi	r7, 1
	br	.L696
.L700:
	mov	r2, r5
.L691:
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	blt	r4, zero, .L710
	blt	r5, zero, .L711
	mov	r6, zero
	call	__udivmodsi4
	br	.L701
.L710:
	sub	r4, zero, r4
	blt	r5, zero, .L712
	mov	r6, zero
	call	__udivmodsi4
.L705:
	sub	r2, zero, r2
.L701:
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L711:
	mov	r6, zero
	sub	r5, zero, r5
	call	__udivmodsi4
	br	.L705
.L712:
	mov	r6, zero
	sub	r5, zero, r5
	call	__udivmodsi4
	br	.L701
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	blt	r4, zero, .L719
	blt	r5, zero, .L720
.L716:
	movi	r6, 1
	call	__udivmodsi4
	br	.L713
.L719:
	sub	r4, zero, r4
	blt	r5, zero, .L721
.L715:
	movi	r6, 1
	call	__udivmodsi4
	sub	r2, zero, r2
.L713:
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L721:
	sub	r5, zero, r5
	br	.L715
.L720:
	sub	r5, zero, r5
	br	.L716
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	mov	r8, r4
	mov	r3, r5
	andi	r5, r5, 0xffff
	andi	r4, r4, 0xffff
	bgeu	r5, r4, .L736
	movi	r7, 16
	movi	r4, 1
	andi	r9, r8, 0xffff
.L723:
	andi	r2, r3, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	blt	r2, zero, .L730
	add	r2, r3, r3
	mov	r3, r2
	add	r5, r4, r4
	mov	r4, r5
	andi	r2, r2, 0xffff
	bgeu	r2, r9, .L725
	addi	r7, r7, -1
	bne	r7, zero, .L723
	mov	r2, zero
.L726:
	bne	r6, zero, .L737
.L722:
	ret
.L736:
	movi	r4, 1
	br	.L730
.L728:
	andi	r4, r4, 0xffff
	srli	r5, r4, 1
	mov	r4, r5
	slli	r3, r3, 16
	srli	r3, r3, 17
	beq	r5, zero, .L726
.L729:
	andi	r5, r8, 0xffff
	andi	r7, r3, 0xffff
	bltu	r5, r7, .L728
	sub	r8, r8, r3
	or	r2, r4, r2
	br	.L728
.L725:
	andi	r2, r5, 0xffff
	beq	r2, zero, .L738
.L730:
	mov	r2, zero
	br	.L729
.L738:
	mov	r2, r5
	br	.L726
.L737:
	mov	r2, r8
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	movi	r3, 1
	bgeu	r5, r4, .L747
	movi	r2, 32
	movi	r3, 1
.L740:
	blt	r5, zero, .L747
	add	r5, r5, r5
	add	r3, r3, r3
	bgeu	r5, r4, .L742
	addi	r2, r2, -1
	bne	r2, zero, .L740
.L743:
	bne	r6, zero, .L752
.L739:
	ret
.L745:
	srli	r3, r3, 1
	srli	r5, r5, 1
	beq	r3, zero, .L743
.L746:
	bltu	r4, r5, .L745
	sub	r4, r4, r5
	or	r2, r2, r3
	br	.L745
.L742:
	beq	r3, zero, .L753
.L747:
	mov	r2, zero
	br	.L746
.L753:
	mov	r2, r3
	br	.L743
.L752:
	mov	r2, r4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L755
	mov	r2, zero
	addi	r6, r6, -32
	sll	r3, r4, r6
	ret
.L755:
	beq	r6, zero, .L758
	sll	r2, r4, r6
	sll	r3, r5, r6
	movi	r5, 32
	sub	r5, r5, r6
	srl	r4, r4, r5
	or	r3, r3, r4
	ret
.L758:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L760
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	ret
.L760:
	beq	r6, zero, .L763
	sra	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L763:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	srli	r10, r5, 24
	srli	r7, r5, 8
	andi	r7, r7, 65280
	slli	r2, r5, 8
	andhi	r2, r2, 255
	slli	r5, r5, 24
	slli	r8, r4, 8
	srli	r9, r4, 24
	srli	r3, r4, 8
	slli	r4, r4, 24
	andi	r6, r3, 65280
	andhi	r8, r8, 255
	or	r7, r7, r10
	or	r2, r2, r7
	or	r3, r9, r4
	or	r3, r6, r3
	or	r2, r5, r2
	or	r3, r8, r3
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	srli	r6, r4, 24
	srli	r2, r4, 8
	andi	r3, r2, 65280
	slli	r5, r4, 8
	andhi	r5, r5, 255
	slli	r4, r4, 24
	or	r2, r6, r4
	or	r2, r3, r2
	or	r2, r5, r2
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
	add	r4, r2, r4
	andi	r2, r3, 12
	cmpeq	r2, r2, zero
	add	r2, r2, r2
	movi	r5, 2
	sub	r6, r5, r2
	srl	r3, r3, r6
	add	r2, r2, r4
	andi	r4, r3, 2
	sub	r5, r5, r3
	beq	r4, zero, .L768
	mov	r5, zero
.L768:
	add	r2, r5, r2
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L771
	blt	r7, r5, .L772
	bltu	r4, r6, .L773
	bltu	r6, r4, .L774
	movi	r2, 1
	ret
.L771:
	mov	r2, zero
	ret
.L772:
	movi	r2, 2
	ret
.L773:
	mov	r2, zero
	ret
.L774:
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
	add	r4, r2, r4
	andi	r2, r3, 3
	cmpeq	r2, r2, zero
	add	r2, r2, r2
	srl	r3, r3, r2
	andi	r3, r3, 3
	add	r2, r2, r4
	nor	r4, zero, r3
	andi	r4, r4, 1
	srli	r3, r3, 1
	movi	r5, 2
	sub	r3, r5, r3
	mul	r3, r4, r3
	add	r2, r3, r2
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L779
	mov	r3, zero
	addi	r6, r6, -32
	srl	r2, r5, r6
	ret
.L779:
	beq	r6, zero, .L782
	srl	r3, r5, r6
	movi	r2, 32
	sub	r2, r2, r6
	sll	r5, r5, r2
	srl	r2, r4, r6
	or	r2, r5, r2
	ret
.L782:
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
	srli	r7, r6, 16
	andi	r6, r6, 0xffff
	andi	r2, r2, 0xffff
	srli	r5, r5, 16
	mul	r3, r3, r5
	add	r3, r3, r6
	slli	r6, r3, 16
	srli	r3, r3, 16
	mul	r4, r4, r5
	add	r4, r7, r4
	add	r2, r2, r6
	add	r3, r3, r4
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
	add	r3, r3, r16
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
	slli	r4, r5, 30
	srli	r3, r2, 2
	or	r3, r4, r3
	srli	r6, r5, 2
	movhi	r4, 13107
	addi	r4, r4, 13107
	and	r3, r3, r4
	and	r6, r6, r4
	and	r2, r2, r4
	and	r5, r5, r4
	add	r2, r3, r2
	cmpltu	r3, r2, r3
	add	r4, r6, r5
	add	r3, r3, r4
	slli	r5, r3, 28
	srli	r4, r2, 4
	or	r4, r5, r4
	srli	r5, r3, 4
	add	r2, r4, r2
	cmpltu	r4, r2, r4
	add	r3, r5, r3
	add	r4, r4, r3
	movhi	r3, 3855
	addi	r3, r3, 3855
	and	r2, r2, r3
	and	r4, r4, r3
	add	r2, r2, r4
	srli	r3, r2, 16
	add	r3, r3, r2
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
	mov	r17, r4
	mov	r16, r5
	mov	r21, r6
	mov	r18, r6
	mov	r20, zero
	movhi	r19, 16368
	br	.L794
.L792:
	srli	r8, r18, 31
	add	r8, r8, r18
	srai	r18, r8, 1
	beq	r18, zero, .L793
	mov	r6, r17
	mov	r7, r16
	mov	r4, r17
	mov	r5, r16
	call	__muldf3
	mov	r17, r2
	mov	r16, r3
.L794:
	andi	r2, r18, 1
	beq	r2, zero, .L792
	mov	r6, r17
	mov	r7, r16
	mov	r4, r20
	mov	r5, r19
	call	__muldf3
	mov	r20, r2
	mov	r19, r3
	br	.L792
.L793:
	blt	r21, zero, .L797
.L791:
	mov	r2, r20
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
.L797:
	mov	r6, r20
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r20, r2
	mov	r19, r3
	br	.L791
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
	br	.L801
.L799:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L800
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
.L801:
	andi	r2, r16, 1
	beq	r2, zero, .L799
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
	br	.L799
.L800:
	blt	r19, zero, .L804
.L798:
	mov	r2, r18
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L804:
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	mov	r18, r2
	br	.L798
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L807
	bltu	r7, r5, .L808
	bltu	r4, r6, .L809
	bltu	r6, r4, .L810
	movi	r2, 1
	ret
.L807:
	mov	r2, zero
	ret
.L808:
	movi	r2, 2
	ret
.L809:
	mov	r2, zero
	ret
.L810:
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
