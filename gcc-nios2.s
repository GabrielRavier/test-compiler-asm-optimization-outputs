	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	mov	r2, r4
	bgeu	r5, r4, .L2
	add	r5, r5, r6
	add	r14, r4, r6
	beq	r6, zero, .L3
.L4:
	ldbu	r13, -1(r5)
	addi	r14, r14, -1
	addi	r5, r5, -1
	stb	r13, 0(r14)
	bne	r2, r14, .L4
	ret
.L2:
	bne	r4, r5, .L35
.L3:
	ret
.L35:
	beq	r6, zero, .L3
	addi	r3, r6, -1
	cmpltui	r7, r3, 7
	addi	r12, r5, 1
	bne	r7, zero, .L5
	or	r4, r5, r4
	andi	r8, r4, 3
	addi	r12, r5, 1
	bne	r8, zero, .L5
	sub	r9, r2, r12
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L5
	andci	r11, r6, 65532
	mov	r14, r2
	add	r12, r5, r11
.L6:
	ldw	r13, 0(r5)
	addi	r5, r5, 4
	addi	r14, r14, 4
	stw	r13, -4(r14)
	bne	r12, r5, .L6
	add	r5, r2, r11
	sub	r15, r6, r11
	beq	r6, r11, .L3
	ldbu	r6, 0(r12)
	cmpeqi	r3, r15, 1
	stb	r6, 0(r5)
	bne	r3, zero, .L3
	ldbu	r7, 1(r12)
	cmpeqi	r4, r15, 2
	stb	r7, 1(r5)
	bne	r4, zero, .L3
	ldbu	r8, 2(r12)
	stb	r8, 2(r5)
	ret
.L5:
	add	r9, r2, r6
	mov	r11, r2
.L9:
	ldbu	r10, -1(r12)
	addi	r11, r11, 1
	addi	r12, r12, 1
	stb	r10, -1(r11)
	bne	r11, r9, .L9
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
	andci	r6, r6, 65534
	add	r7, r4, r6
.L137:
	ldbu	r3, 1(r4)
	ldbu	r8, 0(r4)
	addi	r4, r4, 2
	stb	r3, 0(r5)
	stb	r8, 1(r5)
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
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r7
	mov	r16, r6
	mov	r7, r5
	mov	r6, r4
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	ra, 16(sp)
	mov	r18, r4
	mov	r19, r5
	call	__unorddf2
	bne	r2, zero, .L177
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L178
	custom	0, zero, r18, r19 # fwrx r18
	custom	18, r2, r16, r17 # fcmpgtd r2, r18, r16
	bne	r2, zero, .L183
	mov	r4, zero
	mov	r5, zero
.L174:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L183:
	custom	0, zero, r18, r19 # fwrx r18
	custom	12, r5, r16, r17 # fsubd r4, r18, r16
	custom	4, r4, zero, zero # frdy r4
	br	.L174
.L177:
	mov	r4, r18
	mov	r5, r19
	br	.L174
.L178:
	mov	r4, r16
	mov	r5, r17
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
	mov	r17, r7
	mov	r16, r6
	mov	r7, r5
	mov	r6, r4
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	ra, 16(sp)
	mov	r18, r4
	mov	r19, r5
	call	__unorddf2
	bne	r2, zero, .L201
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L200
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L196
	beq	r2, zero, .L200
.L201:
	mov	r2, r16
	mov	r3, r17
.L194:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L200:
	mov	r2, r18
	mov	r3, r19
	br	.L194
.L196:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beq	r2, zero, .L200
	br	.L201
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
	bne	r2, zero, .L212
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L211
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L207
	bne	r2, zero, .L212
.L211:
	mov	r2, r17
	br	.L205
.L207:
	custom	231, r4, r17, r16 # fcmplts r4, r17, r16
	bne	r4, zero, .L212
	mov	r16, r17
.L212:
	mov	r2, r16
.L205:
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
	mov	r17, r7
	mov	r16, r6
	mov	r7, r5
	mov	r6, r4
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	ra, 16(sp)
	mov	r18, r4
	mov	r19, r5
	call	__unorddf2
	bne	r2, zero, .L221
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L220
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L216
	beq	r2, zero, .L220
.L221:
	mov	r2, r16
	mov	r3, r17
.L214:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L220:
	mov	r2, r18
	mov	r3, r19
	br	.L214
.L216:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beq	r2, zero, .L220
	br	.L221
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -20
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r7
	mov	r16, r6
	mov	r7, r5
	mov	r6, r4
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	ra, 16(sp)
	mov	r18, r4
	mov	r19, r5
	call	__unorddf2
	bne	r2, zero, .L230
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L232
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L227
	bne	r2, zero, .L232
.L230:
	mov	r2, r16
	mov	r3, r17
.L225:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L232:
	mov	r2, r18
	mov	r3, r19
	br	.L225
.L227:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beq	r2, zero, .L230
	br	.L232
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
	bne	r2, zero, .L241
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L243
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L238
	bne	r2, zero, .L243
.L241:
	mov	r2, r17
	br	.L236
.L238:
	custom	231, r4, r16, r17 # fcmplts r4, r16, r17
	bne	r4, zero, .L243
	mov	r16, r17
.L243:
	mov	r2, r16
.L236:
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
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	mov	r17, r7
	mov	r16, r6
	mov	r7, r5
	mov	r6, r4
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	ra, 16(sp)
	mov	r18, r4
	mov	r19, r5
	call	__unorddf2
	bne	r2, zero, .L250
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L252
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L247
	bne	r2, zero, .L252
.L250:
	mov	r2, r16
	mov	r3, r17
.L245:
	ldw	ra, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
.L252:
	mov	r2, r18
	mov	r3, r19
	br	.L245
.L247:
	custom	0, zero, r18, r19 # fwrx r18
	custom	20, r2, r16, r17 # fcmpltd r2, r18, r16
	beq	r2, zero, .L250
	br	.L252
	.size	fminl, .-fminl
	.align	2
	.global	l64a
	.type	l64a, @function
l64a:
	addi	r3, gp, %gprel(s.0)
	beq	r4, zero, .L257
.L258:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r6, r5, r2
	ldbu	r7, %lo(digits)(r6)
	srli	r4, r4, 6
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r4, zero, .L258
.L257:
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
	beq	r5, zero, .L269
	ldw	r2, 0(r5)
	stw	r5, 4(r4)
	stw	r2, 0(r4)
	stw	r4, 0(r5)
	ldw	r3, 0(r4)
	beq	r3, zero, .L263
	stw	r4, 4(r3)
.L263:
	ret
.L269:
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	ldw	r2, 0(r4)
	beq	r2, zero, .L271
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L271:
	ldw	r4, 4(r4)
	beq	r4, zero, .L270
	stw	r2, 0(r4)
.L270:
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
	beq	r17, zero, .L280
	mov	r21, r5
	mov	fp, zero
	br	.L282
.L295:
	add	r21, r21, r16
	beq	r17, fp, .L280
.L282:
	mov	r5, r21
	mov	r4, r18
	callr	r20
	mov	r19, r21
	addi	fp, fp, 1
	bne	r2, zero, .L295
.L279:
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
.L280:
	ldw	r2, 4(sp)
	mul	r19, r16, r17
	ldw	r4, 0(sp)
	addi	r3, r17, 1
	stw	r3, 0(r2)
	add	r19, r4, r19
	beq	r16, zero, .L279
	mov	r6, r16
	mov	r5, r18
	mov	r4, r19
	call	memmove
	br	.L279
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
	beq	r19, zero, .L297
	mov	r18, r4
	mov	r21, r7
	mov	r16, r5
	mov	r17, zero
	br	.L299
.L308:
	add	r16, r16, r21
	beq	r19, r17, .L297
.L299:
	mov	r5, r16
	mov	r4, r18
	callr	r20
	mov	fp, r16
	addi	r17, r17, 1
	bne	r2, zero, .L308
.L296:
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
.L297:
	mov	fp, zero
	br	.L296
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	mov	r2, r4
	bge	r4, zero, .L310
	sub	r2, zero, r4
.L310:
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
.L318:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L312
	bne	r6, zero, .L312
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L313
	cmpeqi	r8, r3, 45
	beq	r8, zero, .L333
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r10, r3, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L323
	movi	r13, 1
.L316:
	mov	r2, zero
.L320:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L320
	bne	r13, zero, .L311
	sub	r2, r14, r15
	ret
.L312:
	addi	r4, r4, 1
	br	.L318
.L333:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bne	r2, zero, .L316
	ret
.L323:
	mov	r2, zero
.L311:
	ret
.L313:
	ldb	r3, 1(r4)
	mov	r13, zero
	addi	r4, r4, 1
	addi	r9, r3, -48
	cmpltui	r2, r9, 10
	bne	r2, zero, .L316
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
.L339:
	ldb	r3, 0(r4)
	addi	r2, r3, -9
	cmpeqi	r5, r3, 32
	cmpltui	r6, r2, 5
	bne	r5, zero, .L335
	bne	r6, zero, .L335
	cmpeqi	r7, r3, 43
	bne	r7, zero, .L336
	cmpeqi	r10, r3, 45
	beq	r10, zero, .L356
	ldb	r3, 1(r4)
	movi	r13, 1
	addi	r4, r4, 1
	addi	r11, r3, -48
	cmpltui	r2, r11, 10
	beq	r2, zero, .L357
.L340:
	mov	r2, zero
.L343:
	addi	r4, r4, 1
	addi	r14, r3, -48
	ldb	r3, 0(r4)
	muli	r15, r2, 10
	addi	r2, r3, -48
	cmpltui	r5, r2, 10
	sub	r2, r15, r14
	bne	r5, zero, .L343
	bne	r13, zero, .L334
	sub	r2, r14, r15
	ret
.L335:
	addi	r4, r4, 1
	br	.L339
.L356:
	addi	r12, r3, -48
	cmpltui	r2, r12, 10
	beq	r2, zero, .L358
.L347:
	mov	r13, zero
	br	.L340
.L336:
	ldb	r3, 1(r4)
	addi	r4, r4, 1
	addi	r8, r3, -48
	cmpgeui	r9, r8, 10
	beq	r9, zero, .L347
	mov	r2, zero
.L334:
	ret
.L358:
	ret
.L357:
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
.L366:
	ldb	r5, 0(r4)
	addi	r2, r5, -9
	cmpeqi	r3, r5, 32
	cmpltui	r6, r2, 5
	bne	r3, zero, .L360
	bne	r6, zero, .L360
	cmpeqi	r7, r5, 43
	bne	r7, zero, .L361
	cmpeqi	r9, r5, 45
	beq	r9, zero, .L382
	ldb	r5, 1(r4)
	addi	r4, r4, 1
	addi	r10, r5, -48
	cmpgeui	r11, r10, 10
	bne	r11, zero, .L371
	movi	r13, 1
.L364:
	mov	r2, zero
	mov	r3, zero
	movi	r14, 10
.L368:
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
	bne	r6, zero, .L368
	bne	r13, zero, .L359
	sub	r2, r8, r15
	cmpltu	r4, r8, r2
	sub	r5, r9, r10
	sub	r3, r5, r4
	ret
.L360:
	addi	r4, r4, 1
	br	.L366
.L382:
	addi	r12, r5, -48
	cmpltui	r2, r12, 10
	mov	r13, zero
	bne	r2, zero, .L364
.L381:
	mov	r3, zero
.L359:
	ret
.L361:
	ldb	r5, 1(r4)
	mov	r13, zero
	addi	r4, r4, 1
	addi	r8, r5, -48
	cmpltui	r2, r8, 10
	bne	r2, zero, .L364
	br	.L381
.L371:
	mov	r2, zero
	br	.L381
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
	beq	r6, zero, .L384
	mov	r16, r6
	mov	r20, r4
	mov	r18, r5
	mov	r19, r7
.L387:
	srli	fp, r16, 1
	mov	r4, r20
	addi	r16, r16, -1
	mul	r17, fp, r19
	add	r17, r18, r17
	mov	r5, r17
	callr	r21
	blt	r2, zero, .L388
	beq	r2, zero, .L383
	sub	r16, r16, fp
	add	r18, r17, r19
	bne	r16, zero, .L387
.L384:
	mov	r17, zero
.L383:
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
.L388:
	mov	r16, fp
	bne	r16, zero, .L387
	br	.L384
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
	beq	r6, zero, .L402
.L410:
	srai	r21, r16, 1
	ldw	r6, 36(sp)
	mov	r4, r19
	mul	fp, r21, r18
	addi	r16, r16, -1
	srai	r16, r16, 1
	add	fp, r17, fp
	mov	r5, fp
	callr	r20
	beq	r2, zero, .L397
	bge	zero, r2, .L400
	add	r17, fp, r18
	bne	r16, zero, .L410
.L402:
	mov	fp, zero
.L397:
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
.L400:
	beq	r21, zero, .L402
	mov	r16, r21
	br	.L410
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
	bge	r5, zero, .L415
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L415:
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
	bge	r4, zero, .L420
	sub	r2, zero, r4
.L420:
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
	bge	r5, zero, .L423
	cmpne	r4, r4, zero
	sub	r3, zero, r5
	sub	r3, r3, r4
	sub	r2, zero, r2
.L423:
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
	beq	r2, zero, .L435
.L428:
	beq	r5, r2, .L436
	ldw	r2, 4(r4)
	addi	r4, r4, 4
	bne	r2, zero, .L428
	mov	r2, zero
	ret
.L436:
	mov	r2, r4
	ret
.L435:
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
.L440:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L439
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r3, zero, .L440
.L439:
	blt	r3, r2, .L442
	cmplt	r2, r2, r3
	ret
.L442:
	movi	r2, -1
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	mov	r2, r4
	mov	r3, r4
.L447:
	ldw	r6, 0(r5)
	addi	r3, r3, 4
	addi	r5, r5, 4
	stw	r6, -4(r3)
	bne	r6, zero, .L447
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	ldw	r2, 0(r4)
	beq	r2, zero, .L452
	mov	r5, r4
.L451:
	ldw	r3, 4(r5)
	addi	r5, r5, 4
	bne	r3, zero, .L451
	sub	r4, r5, r4
	srai	r2, r4, 2
	ret
.L452:
	mov	r2, zero
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	beq	r6, zero, .L460
.L466:
	ldw	r2, 0(r4)
	ldw	r3, 0(r5)
	addi	r6, r6, -1
	bne	r2, r3, .L457
	beq	r2, zero, .L457
	addi	r4, r4, 4
	addi	r5, r5, 4
	bne	r6, zero, .L466
.L460:
	mov	r2, zero
	ret
.L457:
	ldw	r4, 0(r4)
	ldw	r5, 0(r5)
	blt	r4, r5, .L467
	cmplt	r2, r5, r4
	ret
.L467:
	movi	r2, -1
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	beq	r6, zero, .L472
.L479:
	ldw	r2, 0(r4)
	addi	r6, r6, -1
	beq	r2, r5, .L478
	addi	r4, r4, 4
	bne	r6, zero, .L479
.L472:
	mov	r2, zero
	ret
.L478:
	mov	r2, r4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	beq	r6, zero, .L486
.L495:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	addi	r6, r6, -1
	addi	r4, r4, 4
	bne	r3, r2, .L494
	addi	r5, r5, 4
	bne	r6, zero, .L495
.L486:
	mov	r2, zero
	ret
.L494:
	blt	r3, r2, .L496
	cmplt	r2, r2, r3
	ret
.L496:
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
	beq	r6, zero, .L498
	slli	r6, r6, 2
	call	memcpy
.L498:
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
	beq	r4, r5, .L511
	slli	r4, r6, 2
	sub	r7, r2, r5
	addi	r3, r6, -1
	bgeu	r7, r4, .L518
	beq	r6, zero, .L511
	slli	r10, r3, 2
	add	r14, r5, r10
	add	r13, r2, r10
.L508:
	ldw	r11, 0(r14)
	mov	r12, r14
	addi	r13, r13, -4
	stw	r11, 4(r13)
	addi	r14, r14, -4
	bne	r5, r12, .L508
	ret
.L518:
	mov	r9, r2
	beq	r6, zero, .L511
.L506:
	ldw	r8, 0(r5)
	addi	r3, r3, -1
	cmpnei	r6, r3, -1
	stw	r8, 0(r9)
	addi	r5, r5, 4
	addi	r9, r9, 4
	bne	r6, zero, .L506
.L511:
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	mov	r2, r4
	addi	r3, r6, -1
	beq	r6, zero, .L520
	mov	r6, r4
.L521:
	addi	r3, r3, -1
	stw	r5, 0(r6)
	cmpnei	r7, r3, -1
	addi	r6, r6, 4
	bne	r7, zero, .L521
.L520:
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	bgeu	r4, r5, .L527
	add	r12, r4, r6
	add	r13, r5, r6
	beq	r6, zero, .L526
.L529:
	ldbu	r10, -1(r12)
	addi	r12, r12, -1
	addi	r13, r13, -1
	stb	r10, 0(r13)
	bne	r4, r12, .L529
	ret
.L527:
	bne	r4, r5, .L560
.L526:
	ret
.L560:
	beq	r6, zero, .L526
	addi	r2, r6, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L559
	or	r7, r5, r4
	andi	r8, r7, 3
	bne	r8, zero, .L559
	addi	r11, r4, 1
	sub	r9, r5, r11
	cmpgeui	r10, r9, 3
	beq	r10, zero, .L530
	andci	r11, r6, 65532
	mov	r14, r5
	add	r12, r4, r11
.L531:
	ldw	r13, 0(r4)
	addi	r4, r4, 4
	addi	r14, r14, 4
	stw	r13, -4(r14)
	bne	r12, r4, .L531
	add	r5, r5, r11
	sub	r15, r6, r11
	beq	r6, r11, .L526
	ldbu	r4, 0(r12)
	cmpeqi	r6, r15, 1
	stb	r4, 0(r5)
	bne	r6, zero, .L526
	ldbu	r3, 1(r12)
	cmpeqi	r2, r15, 2
	stb	r3, 1(r5)
	bne	r2, zero, .L526
	ldbu	r7, 2(r12)
	stb	r7, 2(r5)
	ret
.L559:
	addi	r11, r4, 1
.L530:
	add	r8, r4, r6
	br	.L534
.L561:
	addi	r11, r11, 1
.L534:
	ldbu	r9, -1(r11)
	addi	r5, r5, 1
	stb	r9, -1(r5)
	bne	r11, r8, .L561
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	r3, r6, -32
	blt	r3, zero, .L563
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	sll	r12, r4, r3
	mov	r11, zero
	blt	r14, zero, .L565
.L567:
	srl	r8, r5, r14
	mov	r5, zero
	or	r3, r5, r12
	or	r2, r8, r11
	ret
.L563:
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
	bge	r14, zero, .L567
.L565:
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
	blt	r2, zero, .L569
	sub	r6, zero, r6
	andi	r13, r6, 63
	addi	r14, r13, -32
	srl	r12, r5, r2
	mov	r11, zero
	blt	r14, zero, .L571
.L573:
	sll	r8, r4, r14
	mov	r4, zero
	or	r2, r4, r12
	or	r3, r8, r11
	ret
.L569:
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
	bge	r14, zero, .L573
.L571:
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
	br	.L588
.L591:
	beq	r5, zero, .L590
.L588:
	srl	r3, r4, r2
	addi	r2, r2, 1
	cmpnei	r5, r2, 32
	andi	r6, r3, 1
	beq	r6, zero, .L591
	ret
.L590:
	mov	r2, zero
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	beq	r4, zero, .L595
	andi	r2, r4, 1
	bne	r2, zero, .L592
	movi	r2, 1
.L594:
	srai	r4, r4, 1
	addi	r2, r2, 1
	andi	r3, r4, 1
	beq	r3, zero, .L594
	ret
.L595:
	mov	r2, zero
.L592:
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	movhi	r3, 65408
	addi	r2, r3, -1
	custom	231, r5, r4, r2 # fcmplts r5, r4, r2
	bne	r5, zero, .L600
	movhi	r6, 32640
	addi	r7, r6, -1
	custom	246, r2, r4, r7 # fcmpgts r2, r4, r7
	ret
.L600:
	movi	r2, 1
	ret
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	movhi	r7, 65520
	movi	r6, -1
	mov	r2, r4
	mov	r3, r5
	addi	r7, r7, -1
	custom	0, zero, r2, r3 # fwrx r2
	custom	20, r6, r6, r7 # fcmpltd r6, r2, r6
	bne	r6, zero, .L603
	movhi	r5, 32752
	movi	r4, -1
	addi	r5, r5, -1
	custom	0, zero, r2, r3 # fwrx r2
	custom	18, r2, r4, r5 # fcmpgtd r2, r2, r4
	ret
.L603:
	movi	r2, 1
	ret
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	movhi	r7, 65520
	movi	r6, -1
	mov	r2, r4
	mov	r3, r5
	addi	r7, r7, -1
	custom	0, zero, r2, r3 # fwrx r2
	custom	20, r6, r6, r7 # fcmpltd r6, r2, r6
	bne	r6, zero, .L606
	movhi	r5, 32752
	movi	r4, -1
	addi	r5, r5, -1
	custom	0, zero, r2, r3 # fwrx r2
	custom	18, r2, r4, r5 # fcmpgtd r2, r2, r4
	ret
.L606:
	movi	r2, 1
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
	addi	sp, sp, -12
	stw	r16, 0(sp)
	mov	r16, r5
	mov	r5, r4
	stw	r17, 4(sp)
	stw	ra, 8(sp)
	mov	r17, r4
	call	__unordsf2
	bne	r2, zero, .L610
	custom	253, r2, r17, r17 # fadds r2, r17, r17
	custom	250, r3, r2, r17 # fcmpeqs r3, r2, r17
	bne	r3, zero, .L610
	blt	r16, zero, .L623
	movhi	r8, 16384
.L611:
	andi	r4, r16, 1
	beq	r4, zero, .L612
.L613:
	custom	252, r17, r17, r8 # fmuls r17, r17, r8
.L612:
	movi	r5, 2
	div	r16, r16, r5
	beq	r16, zero, .L610
	andi	r7, r16, 1
	movi	r6, 2
	custom	252, r8, r8, r8 # fmuls r8, r8, r8
	bne	r7, zero, .L613
.L624:
	div	r16, r16, r6
	andi	r7, r16, 1
	custom	252, r8, r8, r8 # fmuls r8, r8, r8
	bne	r7, zero, .L613
	br	.L624
.L610:
	mov	r2, r17
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
.L623:
	movhi	r8, 16128
	br	.L611
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
	bne	r2, zero, .L626
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r3, r16, r17 # faddd r2, r16, r16
	custom	4, r2, zero, zero # frdy r2
	custom	0, zero, r2, r3 # fwrx r2
	custom	16, r2, r16, r17 # fcmpeqd r2, r2, r16
	bne	r2, zero, .L626
	mov	r6, zero
	blt	r18, zero, .L639
	movhi	r7, 16384
.L627:
	andi	r3, r18, 1
	beq	r3, zero, .L628
.L629:
	mov	r4, r16
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r16, r2
	mov	r17, r3
.L628:
	movi	r4, 2
	div	r18, r18, r4
	beq	r18, zero, .L626
	movi	r19, 2
.L630:
	mov	r5, r7
	mov	r4, r6
	call	__muldf3
	andi	r5, r18, 1
	mov	r6, r2
	mov	r7, r3
	bne	r5, zero, .L629
	div	r18, r18, r19
	br	.L630
.L626:
	mov	r2, r16
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 28
	ret
.L639:
	movhi	r7, 16352
	br	.L627
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
	bne	r2, zero, .L641
	custom	0, zero, r16, r17 # fwrx r16
	custom	11, r3, r16, r17 # faddd r2, r16, r16
	custom	4, r2, zero, zero # frdy r2
	custom	0, zero, r16, r17 # fwrx r16
	custom	16, r2, r2, r3 # fcmpeqd r2, r16, r2
	bne	r2, zero, .L641
	mov	r6, zero
	blt	r18, zero, .L654
	movhi	r7, 16384
.L642:
	andi	r3, r18, 1
	beq	r3, zero, .L643
.L644:
	mov	r4, r16
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r6, 4(sp)
	ldw	r7, 0(sp)
	mov	r16, r2
	mov	r17, r3
.L643:
	movi	r4, 2
	div	r18, r18, r4
	beq	r18, zero, .L641
	movi	r19, 2
.L645:
	mov	r5, r7
	mov	r4, r6
	call	__muldf3
	andi	r5, r18, 1
	mov	r6, r2
	mov	r7, r3
	bne	r5, zero, .L644
	div	r18, r18, r19
	br	.L645
.L641:
	mov	r2, r16
	mov	r3, r17
	ldw	ra, 24(sp)
	ldw	r19, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 28
	ret
.L654:
	movhi	r7, 16352
	br	.L642
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	mov	r2, r4
	beq	r6, zero, .L656
	addi	r3, r6, -1
	cmpltui	r4, r3, 4
	bne	r4, zero, .L657
	or	r7, r2, r5
	andi	r8, r7, 3
	bne	r8, zero, .L657
	andci	r10, r6, 65532
	mov	r13, r2
	add	r9, r5, r10
.L658:
	ldw	r11, 0(r13)
	ldw	r12, 0(r5)
	addi	r13, r13, 4
	addi	r5, r5, 4
	xor	r14, r12, r11
	stw	r14, -4(r13)
	bne	r9, r5, .L658
	add	r15, r2, r10
	sub	r5, r6, r10
	beq	r6, r10, .L656
	ldbu	r6, 0(r15)
	ldbu	r3, 0(r9)
	cmpeqi	r4, r5, 1
	xor	r7, r6, r3
	stb	r7, 0(r15)
	bne	r4, zero, .L656
	ldbu	r8, 1(r15)
	ldbu	r10, 1(r9)
	cmpeqi	r11, r5, 2
	xor	r12, r10, r8
	stb	r12, 1(r15)
	bne	r11, zero, .L656
	ldbu	r13, 2(r15)
	ldbu	r9, 2(r9)
	xor	r14, r9, r13
	stb	r14, 2(r15)
	ret
.L657:
	add	r15, r5, r6
	mov	r3, r2
.L660:
	ldbu	r6, 0(r3)
	ldbu	r4, 0(r5)
	addi	r3, r3, 1
	addi	r5, r5, 1
	xor	r7, r4, r6
	stb	r7, -1(r3)
	bne	r15, r5, .L660
.L656:
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, zero, .L680
	mov	r11, r4
.L675:
	ldb	r7, 1(r11)
	addi	r11, r11, 1
	bne	r7, zero, .L675
.L688:
	beq	r6, zero, .L677
.L690:
	ldbu	r4, 0(r5)
	addi	r6, r6, -1
	addi	r5, r5, 1
	andi	r8, r4, 255
	xori	r9, r8, 128
	stb	r4, 0(r11)
	addi	r10, r9, -128
	beq	r10, zero, .L689
	addi	r11, r11, 1
	bne	r6, zero, .L690
.L677:
	stb	zero, 0(r11)
	ret
.L689:
	ret
.L680:
	mov	r11, r4
	br	.L688
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	mov	r2, zero
	beq	r5, zero, .L691
.L692:
	add	r3, r4, r2
	ldb	r6, 0(r3)
	bne	r6, zero, .L694
.L691:
	ret
.L694:
	addi	r2, r2, 1
	bne	r5, r2, .L692
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	ldb	r7, 0(r4)
	mov	r2, r4
	beq	r7, zero, .L704
.L700:
	mov	r3, r5
	br	.L703
.L702:
	beq	r6, r7, .L701
.L703:
	ldb	r6, 0(r3)
	addi	r3, r3, 1
	bne	r6, zero, .L702
	ldb	r7, 1(r2)
	addi	r2, r2, 1
	bne	r7, zero, .L700
.L704:
	mov	r2, zero
.L701:
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	mov	r6, zero
.L711:
	ldb	r3, 0(r4)
	mov	r2, r4
	beq	r3, r5, .L710
	mov	r2, r6
.L710:
	mov	r6, r2
	addi	r4, r4, 1
	bne	r3, zero, .L711
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	ldb	r8, 0(r5)
	beq	r8, zero, .L724
	mov	r2, r5
.L715:
	ldb	r3, 1(r2)
	addi	r2, r2, 1
	bne	r3, zero, .L715
	sub	r10, r2, r5
	beq	r2, r5, .L724
	addi	r14, r10, -1
	br	.L733
.L735:
	addi	r4, r4, 1
	beq	r2, zero, .L734
.L733:
	ldbu	r7, 0(r4)
	andi	r6, r7, 255
	xori	r9, r6, 128
	addi	r2, r9, -128
	bne	r2, r8, .L735
	add	r13, r4, r14
	mov	r3, r5
	mov	r12, r4
	andi	r15, r7, 0xff
	br	.L717
.L736:
	beq	r12, r13, .L718
	addi	r12, r12, 1
	bne	r11, r15, .L718
	ldbu	r15, 0(r12)
	addi	r3, r3, 1
	beq	r15, zero, .L718
.L717:
	ldbu	r11, 0(r3)
	bne	r11, zero, .L736
.L718:
	ldbu	r2, 0(r3)
	beq	r15, r2, .L724
	addi	r4, r4, 1
	br	.L733
.L734:
	ret
.L724:
	mov	r2, r4
	ret
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	mov	r8, r4
	mov	r9, r5
	mov	r2, zero
	mov	r3, zero
	custom	0, zero, r8, r9 # fwrx r8
	custom	20, r2, r2, r3 # fcmpltd r2, r8, r2
	mov	r4, r6
	mov	r5, r7
	bne	r2, zero, .L747
	mov	r2, zero
	mov	r3, zero
	custom	0, zero, r8, r9 # fwrx r8
	custom	18, r3, r2, r3 # fcmpgtd r3, r8, r2
	beq	r3, zero, .L741
	mov	r2, zero
	mov	r3, zero
	custom	0, zero, r4, r5 # fwrx r4
	custom	20, r4, r2, r3 # fcmpltd r4, r4, r2
	bne	r4, zero, .L740
.L741:
	mov	r2, r8
	mov	r3, r9
	ret
.L747:
	mov	r2, zero
	mov	r3, zero
	custom	0, zero, r4, r5 # fwrx r4
	custom	18, r5, r2, r3 # fcmpgtd r5, r4, r2
	beq	r5, zero, .L741
.L740:
	custom	14, r9, r8, r9 # fnegd r8, r8
	custom	4, r8, zero, zero # frdy r8
	mov	r2, r8
	mov	r3, r9
	ret
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	mov	r2, r4
	beq	r7, zero, .L748
	bltu	r5, r7, .L759
	sub	r5, r5, r7
	add	r9, r4, r5
	bltu	r9, r4, .L759
	ldb	r12, 0(r6)
	addi	r7, r7, -1
	addi	r6, r6, 1
.L754:
	ldb	r3, 0(r2)
	addi	r10, r2, 1
	beq	r3, r12, .L764
	mov	r2, r10
.L750:
	bgeu	r9, r2, .L754
.L759:
	mov	r2, zero
.L748:
	ret
.L764:
	mov	r15, r6
	beq	r7, zero, .L748
.L753:
	mov	r14, r10
	add	r5, r10, r7
	br	.L751
.L752:
	beq	r14, r5, .L748
.L751:
	ldbu	r8, 0(r14)
	ldbu	r13, 0(r15)
	addi	r14, r14, 1
	addi	r15, r15, 1
	beq	r8, r13, .L752
	bltu	r9, r10, .L759
	ldb	r4, 0(r10)
	addi	r2, r10, 1
	bne	r12, r4, .L750
	mov	r11, r10
	mov	r15, r6
	mov	r10, r2
	mov	r2, r11
	br	.L753
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
	beq	r6, zero, .L766
	call	memmove
.L766:
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
	addi	sp, sp, -16
	mov	r8, r4
	mov	r2, zero
	mov	r9, r5
	mov	r3, zero
	stw	r16, 0(sp)
	stw	ra, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	custom	0, zero, r8, r9 # fwrx r8
	custom	20, r2, r2, r3 # fcmpltd r2, r8, r2
	mov	r16, r6
	bne	r2, zero, .L794
	mov	r2, zero
	movhi	r3, 16368
	custom	0, zero, r8, r9 # fwrx r8
	custom	17, r3, r2, r3 # fcmpged r3, r8, r2
	beq	r3, zero, .L795
	mov	r17, zero
.L774:
	mov	r18, zero
.L780:
	mov	r4, r8
	mov	r5, r9
	mov	r6, zero
	movhi	r7, 16352
	call	__muldf3
	mov	r8, r2
	mov	r4, zero
	mov	r9, r3
	movhi	r5, 16368
	custom	0, zero, r8, r9 # fwrx r8
	custom	17, r11, r4, r5 # fcmpged r11, r8, r4
	addi	r18, r18, 1
	bne	r11, zero, .L780
.L781:
	stw	r18, 0(r16)
	beq	r17, zero, .L787
	custom	14, r5, r8, r9 # fnegd r4, r8
	custom	4, r4, zero, zero # frdy r4
.L771:
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
.L795:
	mov	r2, zero
	movhi	r3, 16352
	custom	0, zero, r8, r9 # fwrx r8
	custom	20, r5, r2, r3 # fcmpltd r5, r8, r2
	beq	r5, zero, .L777
	mov	r2, zero
	mov	r3, zero
	custom	0, zero, r8, r9 # fwrx r8
	custom	21, r6, r2, r3 # fcmpned r6, r8, r2
	bne	r6, zero, .L786
.L777:
	stw	zero, 0(r16)
	mov	r5, r9
	br	.L771
.L794:
	mov	r2, zero
	movhi	r3, 49136
	custom	0, zero, r8, r9 # fwrx r8
	custom	19, r7, r2, r3 # fcmpled r7, r8, r2
	custom	14, r5, r8, r9 # fnegd r4, r8
	custom	4, r4, zero, zero # frdy r4
	beq	r7, zero, .L796
	mov	r8, r4
	mov	r9, r5
	movi	r17, 1
	br	.L774
.L787:
	mov	r4, r8
	mov	r5, r9
	br	.L771
.L796:
	mov	r2, zero
	movhi	r3, 49120
	custom	0, zero, r8, r9 # fwrx r8
	custom	18, r10, r2, r3 # fcmpgtd r10, r8, r2
	bne	r10, zero, .L784
	mov	r4, r8
	stw	zero, 0(r6)
	mov	r5, r9
	br	.L771
.L784:
	movi	r17, 1
.L775:
	mov	r8, r4
	mov	r9, r5
	mov	r18, zero
.L782:
	mov	r2, zero
	custom	0, zero, r8, r9 # fwrx r8
	custom	11, r9, r8, r9 # faddd r8, r8, r8
	custom	4, r8, zero, zero # frdy r8
	movhi	r3, 16352
	custom	0, zero, r8, r9 # fwrx r8
	custom	20, r4, r2, r3 # fcmpltd r4, r8, r2
	addi	r18, r18, -1
	bne	r4, zero, .L782
	br	.L781
.L786:
	mov	r5, r9
	mov	r17, zero
	br	.L775
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	or	r2, r4, r5
	beq	r2, zero, .L801
	mov	r2, zero
	mov	r3, zero
.L800:
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
	bne	r10, zero, .L800
	ret
.L801:
	mov	r2, zero
	mov	r3, zero
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	bgeu	r5, r4, .L827
	movi	r2, 32
	movi	r10, 1
	br	.L804
.L808:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L806
	beq	r2, zero, .L807
.L804:
	addi	r2, r2, -1
	bge	r5, zero, .L808
.L809:
	mov	r2, zero
.L814:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L811
	mov	r4, r8
.L811:
	beq	r7, zero, .L812
	mov	r9, r10
.L813:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L814
.L807:
	bne	r6, zero, .L828
.L803:
	ret
.L812:
	mov	r9, zero
	br	.L813
.L806:
	bne	r10, zero, .L809
	mov	r2, zero
	beq	r6, zero, .L803
.L828:
	mov	r2, r4
	ret
.L827:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L807
	mov	r4, r3
	br	.L807
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
	beq	r5, r6, .L831
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
.L831:
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
	beq	r2, r6, .L845
.L840:
	addi	sp, sp, -4
	stw	ra, 0(sp)
	call	__clzdi2
	addi	r2, r2, -1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
.L845:
	bne	r3, r2, .L840
	movi	r2, 63
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	mov	r2, zero
	beq	r4, zero, .L849
.L848:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L848
	ret
.L849:
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	srli	r9, r6, 3
	andci	r10, r6, 65528
	bltu	r4, r5, .L852
	add	r2, r5, r6
	bgeu	r2, r4, .L881
.L852:
	beq	r9, zero, .L855
	slli	r12, r9, 3
	mov	r2, r4
	mov	r9, r5
	add	r13, r12, r5
.L856:
	ldw	r14, 0(r9)
	ldw	r15, 4(r9)
	addi	r9, r9, 8
	stw	r14, 0(r2)
	stw	r15, 4(r2)
	addi	r2, r2, 8
	bne	r9, r13, .L856
	bgeu	r10, r6, .L851
	sub	r12, r6, r10
	addi	r3, r12, -1
	cmpltui	r7, r3, 7
	bne	r7, zero, .L880
	addi	r8, r10, 1
	add	r3, r4, r10
	add	r11, r5, r8
	sub	r13, r3, r11
	cmpgeui	r14, r13, 3
	add	r2, r5, r10
	beq	r14, zero, .L858
	or	r15, r2, r3
	andi	r9, r15, 3
	bne	r9, zero, .L858
	andci	r11, r12, 65532
	add	r8, r2, r11
.L859:
	ldw	r7, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r2, r8, .L859
	add	r10, r10, r11
	beq	r12, r11, .L851
	add	r2, r5, r10
	ldbu	r12, 0(r2)
	add	r3, r4, r10
	addi	r13, r10, 1
	stb	r12, 0(r3)
	bgeu	r13, r6, .L851
	add	r14, r5, r13
	ldbu	r15, 0(r14)
	add	r9, r4, r13
	addi	r11, r10, 2
	stb	r15, 0(r9)
	bgeu	r11, r6, .L851
	add	r5, r5, r11
	ldbu	r6, 0(r5)
	add	r4, r4, r11
	stb	r6, 0(r4)
	ret
.L881:
	addi	r8, r6, -1
	beq	r6, zero, .L851
.L853:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r11, r8, -1
	bne	r11, zero, .L853
.L851:
	ret
.L855:
	beq	r6, zero, .L851
.L880:
	add	r3, r4, r10
	add	r2, r5, r10
.L858:
	add	r8, r5, r6
.L861:
	ldbu	r7, 0(r2)
	addi	r2, r2, 1
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r2, r8, .L861
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	srli	r10, r6, 1
	bltu	r4, r5, .L883
	add	r2, r5, r6
	bgeu	r2, r4, .L910
.L883:
	beq	r10, zero, .L886
	addi	r11, r10, -1
	cmpltui	r12, r11, 9
	bne	r12, zero, .L887
	or	r13, r5, r4
	andi	r14, r13, 3
	bne	r14, zero, .L887
	addi	r15, r5, 2
	beq	r4, r15, .L887
	srli	r9, r6, 2
	andci	r7, r6, 65532
	mov	r2, r5
	mov	r3, r4
	add	r8, r7, r5
.L888:
	ldw	r11, 0(r2)
	addi	r2, r2, 4
	addi	r3, r3, 4
	stw	r11, -4(r3)
	bne	r2, r8, .L888
	add	r12, r9, r9
	beq	r10, r12, .L886
	add	r10, r12, r12
	add	r13, r5, r10
	ldhu	r14, 0(r13)
	add	r15, r4, r10
	sth	r14, 0(r15)
.L886:
	andi	r3, r6, 1
	beq	r3, zero, .L882
.L911:
	add	r5, r5, r6
	ldbu	r12, -1(r5)
	add	r4, r4, r6
	stb	r12, -1(r4)
	ret
.L910:
	addi	r8, r6, -1
	beq	r6, zero, .L882
.L884:
	add	r3, r5, r8
	ldbu	r6, 0(r3)
	add	r7, r4, r8
	addi	r8, r8, -1
	stb	r6, 0(r7)
	cmpnei	r9, r8, -1
	bne	r9, zero, .L884
.L882:
	ret
.L887:
	add	r9, r10, r10
	mov	r11, r5
	mov	r2, r4
	add	r8, r9, r5
.L890:
	ldhu	r7, 0(r11)
	addi	r11, r11, 2
	addi	r2, r2, 2
	sth	r7, -2(r2)
	bne	r8, r11, .L890
	andi	r3, r6, 1
	beq	r3, zero, .L882
	br	.L911
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	srli	r8, r6, 2
	andci	r9, r6, 65532
	bltu	r4, r5, .L913
	add	r2, r5, r6
	bgeu	r2, r4, .L942
.L913:
	beq	r8, zero, .L916
	slli	r12, r8, 2
	mov	r15, r5
	mov	r8, r4
	add	r13, r12, r5
.L917:
	ldw	r14, 0(r15)
	addi	r15, r15, 4
	addi	r8, r8, 4
	stw	r14, -4(r8)
	bne	r15, r13, .L917
	bgeu	r9, r6, .L912
	sub	r10, r6, r9
	addi	r2, r10, -1
	cmpltui	r3, r2, 7
	bne	r3, zero, .L941
	addi	r7, r9, 1
	add	r3, r4, r9
	add	r11, r5, r7
	sub	r12, r3, r11
	cmpgeui	r13, r12, 3
	add	r12, r5, r9
	beq	r13, zero, .L919
	or	r14, r12, r3
	andi	r15, r14, 3
	bne	r15, zero, .L919
	andci	r11, r10, 65532
	add	r8, r12, r11
.L920:
	ldw	r7, 0(r12)
	addi	r12, r12, 4
	addi	r3, r3, 4
	stw	r7, -4(r3)
	bne	r12, r8, .L920
	add	r9, r9, r11
	beq	r10, r11, .L912
	add	r10, r5, r9
	ldbu	r12, 0(r10)
	add	r3, r4, r9
	addi	r2, r9, 1
	stb	r12, 0(r3)
	bgeu	r2, r6, .L912
	add	r13, r5, r2
	ldbu	r14, 0(r13)
	add	r15, r4, r2
	addi	r11, r9, 2
	stb	r14, 0(r15)
	bgeu	r11, r6, .L912
	add	r5, r5, r11
	ldbu	r6, 0(r5)
	add	r4, r4, r11
	stb	r6, 0(r4)
	ret
.L942:
	addi	r10, r6, -1
	beq	r6, zero, .L912
.L914:
	add	r3, r5, r10
	ldbu	r6, 0(r3)
	add	r7, r4, r10
	addi	r10, r10, -1
	stb	r6, 0(r7)
	cmpnei	r11, r10, -1
	bne	r11, zero, .L914
.L912:
	ret
.L916:
	beq	r6, zero, .L912
.L941:
	add	r3, r4, r9
	add	r12, r5, r9
.L919:
	add	r8, r5, r6
.L922:
	ldbu	r7, 0(r12)
	addi	r12, r12, 1
	addi	r3, r3, 1
	stb	r7, -1(r3)
	bne	r12, r8, .L922
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
	bne	r2, zero, .L955
	srai	r2, r4, 14
	bne	r2, zero, .L952
	srai	r3, r4, 13
	bne	r3, zero, .L956
	srai	r5, r4, 12
	bne	r5, zero, .L957
	srai	r6, r4, 11
	bne	r6, zero, .L958
	srai	r7, r4, 10
	bne	r7, zero, .L959
	srai	r8, r4, 9
	bne	r8, zero, .L960
	srai	r9, r4, 8
	bne	r9, zero, .L961
	srai	r10, r4, 7
	bne	r10, zero, .L962
	srai	r11, r4, 6
	bne	r11, zero, .L963
	srai	r12, r4, 5
	bne	r12, zero, .L964
	srai	r13, r4, 4
	bne	r13, zero, .L965
	srai	r14, r4, 3
	bne	r14, zero, .L966
	srai	r15, r4, 2
	bne	r15, zero, .L967
	srai	r2, r4, 1
	bne	r2, zero, .L968
	movi	r2, 16
	bne	r4, zero, .L971
.L952:
	ret
.L955:
	mov	r2, zero
	ret
.L966:
	movi	r2, 12
	ret
.L971:
	movi	r2, 15
	ret
.L956:
	movi	r2, 2
	ret
.L957:
	movi	r2, 3
	ret
.L958:
	movi	r2, 4
	ret
.L959:
	movi	r2, 5
	ret
.L960:
	movi	r2, 6
	ret
.L961:
	movi	r2, 7
	ret
.L962:
	movi	r2, 8
	ret
.L963:
	movi	r2, 9
	ret
.L964:
	movi	r2, 10
	ret
.L965:
	movi	r2, 11
	ret
.L967:
	movi	r2, 13
	ret
.L968:
	movi	r2, 14
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	andi	r2, r4, 1
	bne	r2, zero, .L975
	andi	r3, r4, 2
	bne	r3, zero, .L976
	andi	r5, r4, 4
	bne	r5, zero, .L977
	andi	r6, r4, 8
	bne	r6, zero, .L978
	andi	r7, r4, 16
	bne	r7, zero, .L979
	andi	r8, r4, 32
	bne	r8, zero, .L980
	andi	r9, r4, 64
	bne	r9, zero, .L981
	andi	r10, r4, 128
	bne	r10, zero, .L982
	andi	r11, r4, 256
	bne	r11, zero, .L983
	andi	r12, r4, 512
	bne	r12, zero, .L984
	andi	r13, r4, 1024
	bne	r13, zero, .L985
	andi	r14, r4, 2048
	bne	r14, zero, .L986
	andi	r15, r4, 4096
	bne	r15, zero, .L987
	andi	r2, r4, 8192
	bne	r2, zero, .L988
	andi	r3, r4, 16384
	bne	r3, zero, .L989
	andi	r4, r4, 0xffff
	srai	r5, r4, 15
	movi	r2, 16
	bne	r5, zero, .L992
.L972:
	ret
.L975:
	mov	r2, zero
	ret
.L976:
	movi	r2, 1
	ret
.L987:
	movi	r2, 12
	ret
.L977:
	movi	r2, 2
	ret
.L978:
	movi	r2, 3
	ret
.L979:
	movi	r2, 4
	ret
.L980:
	movi	r2, 5
	ret
.L981:
	movi	r2, 6
	ret
.L982:
	movi	r2, 7
	ret
.L983:
	movi	r2, 8
	ret
.L984:
	movi	r2, 9
	ret
.L985:
	movi	r2, 10
	ret
.L986:
	movi	r2, 11
	ret
.L988:
	movi	r2, 13
	ret
.L989:
	movi	r2, 14
	ret
.L992:
	movi	r2, 15
	ret
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	movhi	r2, 18176
	custom	228, r3, r4, r2 # fcmpges r3, r4, r2
	bne	r3, zero, .L999
	custom	244, r2, r4, zero # fixsi r2, r4
	ret
.L999:
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
	beq	r4, zero, .L1005
.L1004:
	andi	r3, r4, 1
	mul	r6, r3, r5
	srli	r4, r4, 1
	add	r5, r5, r5
	add	r2, r2, r6
	bne	r4, zero, .L1004
	ret
.L1005:
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	mov	r2, zero
	beq	r4, zero, .L1010
	beq	r5, zero, .L1011
.L1009:
	andi	r3, r5, 1
	mul	r6, r3, r4
	srli	r5, r5, 1
	add	r4, r4, r4
	add	r2, r2, r6
	bne	r5, zero, .L1009
	ret
.L1010:
	ret
.L1011:
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	bgeu	r5, r4, .L1037
	movi	r2, 32
	movi	r10, 1
	br	.L1014
.L1018:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L1016
	beq	r2, zero, .L1017
.L1014:
	addi	r2, r2, -1
	bge	r5, zero, .L1018
.L1019:
	mov	r2, zero
.L1024:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1021
	mov	r4, r8
.L1021:
	beq	r7, zero, .L1022
	mov	r9, r10
.L1023:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L1024
.L1017:
	bne	r6, zero, .L1038
.L1013:
	ret
.L1022:
	mov	r9, zero
	br	.L1023
.L1016:
	bne	r10, zero, .L1019
	mov	r2, zero
	beq	r6, zero, .L1013
.L1038:
	mov	r2, r4
	ret
.L1037:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1017
	mov	r4, r3
	br	.L1017
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	custom	231, r2, r4, r5 # fcmplts r2, r4, r5
	bne	r2, zero, .L1041
	custom	246, r2, r4, r5 # fcmpgts r2, r4, r5
	ret
.L1041:
	movi	r2, -1
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	mov	r2, r4
	mov	r8, r6
	mov	r3, r5
	mov	r9, r7
	custom	0, zero, r2, r3 # fwrx r2
	custom	20, r4, r8, r9 # fcmpltd r4, r2, r8
	bne	r4, zero, .L1044
	custom	0, zero, r2, r3 # fwrx r2
	custom	18, r2, r8, r9 # fcmpgtd r2, r2, r8
	ret
.L1044:
	movi	r2, -1
	ret
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
	blt	r5, zero, .L1061
	beq	r5, zero, .L1053
	mov	r8, zero
.L1049:
	movi	r3, 32
	mov	r2, zero
	br	.L1052
.L1062:
	beq	r7, zero, .L1051
.L1052:
	andi	r6, r5, 1
	mul	r9, r6, r4
	srai	r5, r5, 1
	addi	r3, r3, -1
	andi	r7, r3, 0xff
	add	r2, r2, r9
	add	r4, r4, r4
	bne	r5, zero, .L1062
.L1051:
	beq	r8, zero, .L1047
	sub	r2, zero, r2
	ret
.L1053:
	mov	r2, zero
.L1047:
	ret
.L1061:
	sub	r5, zero, r5
	movi	r8, 1
	br	.L1049
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	blt	r4, zero, .L1091
	movi	r2, 1
	mov	r8, zero
.L1064:
	bge	r5, zero, .L1065
	sub	r5, zero, r5
	mov	r8, r2
.L1065:
	mov	r6, r4
	mov	r3, r5
	bgeu	r5, r4, .L1092
	movi	r7, 32
	movi	r5, 1
	br	.L1066
.L1070:
	beq	r7, zero, .L1071
.L1066:
	add	r3, r3, r3
	addi	r7, r7, -1
	add	r5, r5, r5
	bltu	r3, r4, .L1070
.L1071:
	mov	r2, zero
	beq	r5, zero, .L1069
.L1068:
	sub	r9, r6, r3
	cmpgeu	r4, r6, r3
	bltu	r6, r3, .L1073
	mov	r6, r9
.L1073:
	beq	r4, zero, .L1074
	mov	r10, r5
.L1075:
	srli	r5, r5, 1
	srli	r3, r3, 1
	or	r2, r2, r10
	bne	r5, zero, .L1068
.L1069:
	beq	r8, zero, .L1063
	sub	r2, zero, r2
	ret
.L1074:
	mov	r10, zero
	br	.L1075
.L1063:
	ret
.L1091:
	sub	r4, zero, r4
	mov	r2, zero
	movi	r8, 1
	br	.L1064
.L1092:
	cmpgeu	r2, r4, r5
	br	.L1069
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	blt	r4, zero, .L1121
	mov	r7, zero
.L1094:
	mov	r2, r4
	bge	r5, zero, .L1095
	sub	r5, zero, r5
.L1095:
	mov	r3, r5
	bgeu	r5, r4, .L1122
	movi	r6, 32
	movi	r5, 1
	br	.L1096
.L1100:
	beq	r6, zero, .L1101
.L1096:
	add	r3, r3, r3
	addi	r6, r6, -1
	add	r5, r5, r5
	bltu	r3, r4, .L1100
.L1101:
	beq	r5, zero, .L1120
.L1098:
	sub	r4, r2, r3
	bltu	r2, r3, .L1103
	mov	r2, r4
.L1103:
	srli	r5, r5, 1
	srli	r3, r3, 1
	bne	r5, zero, .L1098
.L1099:
	beq	r7, zero, .L1093
	sub	r2, zero, r2
	ret
.L1093:
	ret
.L1121:
	sub	r4, zero, r4
	movi	r7, 1
	br	.L1094
.L1122:
	sub	r2, r4, r5
	bgeu	r4, r5, .L1099
.L1120:
	mov	r2, r4
	br	.L1099
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	andi	r3, r5, 0xffff
	andi	r9, r4, 0xffff
	bgeu	r3, r9, .L1277
	andi	r2, r5, 65535
	xori	r7, r2, 32768
	addi	r8, r7, -32768
	blt	r8, zero, .L1128
	add	r10, r5, r5
	andi	r12, r10, 0xffff
	mov	r2, r10
	bgeu	r12, r9, .L1201
	andi	r13, r10, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1201
	slli	r3, r5, 2
	andi	r7, r3, 0xffff
	mov	r2, r3
	bgeu	r7, r9, .L1203
	andi	r8, r3, 65535
	xori	r11, r8, 32768
	addi	r10, r11, -32768
	blt	r10, zero, .L1203
	slli	r12, r5, 3
	andi	r13, r12, 0xffff
	mov	r2, r12
	bgeu	r13, r9, .L1205
	andi	r14, r12, 65535
	xori	r15, r14, 32768
	addi	r3, r15, -32768
	blt	r3, zero, .L1205
	slli	r8, r5, 4
	andi	r7, r8, 0xffff
	mov	r2, r8
	bgeu	r7, r9, .L1207
	andi	r11, r8, 65535
	xori	r10, r11, 32768
	addi	r12, r10, -32768
	blt	r12, zero, .L1207
	slli	r13, r5, 5
	andi	r14, r13, 0xffff
	mov	r2, r13
	bgeu	r14, r9, .L1209
	andi	r15, r13, 65535
	xori	r3, r15, 32768
	addi	r8, r3, -32768
	blt	r8, zero, .L1209
	slli	r11, r5, 6
	andi	r7, r11, 0xffff
	mov	r2, r11
	bgeu	r7, r9, .L1211
	andi	r10, r11, 65535
	xori	r12, r10, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1211
	slli	r14, r5, 7
	andi	r15, r14, 0xffff
	mov	r2, r14
	bgeu	r15, r9, .L1213
	andi	r3, r14, 65535
	xori	r8, r3, 32768
	addi	r11, r8, -32768
	blt	r11, zero, .L1213
	slli	r10, r5, 8
	andi	r7, r10, 0xffff
	mov	r2, r10
	bgeu	r7, r9, .L1215
	andi	r12, r10, 65535
	xori	r13, r12, 32768
	addi	r14, r13, -32768
	blt	r14, zero, .L1215
	slli	r15, r5, 9
	andi	r3, r15, 0xffff
	mov	r2, r15
	bgeu	r3, r9, .L1217
	andi	r8, r15, 65535
	xori	r11, r8, 32768
	addi	r10, r11, -32768
	blt	r10, zero, .L1217
	slli	r12, r5, 10
	andi	r7, r12, 0xffff
	mov	r2, r12
	bgeu	r7, r9, .L1219
	andi	r13, r12, 65535
	xori	r14, r13, 32768
	addi	r15, r14, -32768
	blt	r15, zero, .L1219
	slli	r3, r5, 11
	andi	r8, r3, 0xffff
	mov	r2, r3
	bgeu	r8, r9, .L1221
	andi	r11, r3, 65535
	xori	r10, r11, 32768
	addi	r12, r10, -32768
	blt	r12, zero, .L1221
	slli	r13, r5, 12
	andi	r7, r13, 0xffff
	mov	r2, r13
	bgeu	r7, r9, .L1223
	andi	r14, r13, 65535
	xori	r15, r14, 32768
	addi	r3, r15, -32768
	blt	r3, zero, .L1223
	slli	r8, r5, 13
	andi	r11, r8, 0xffff
	mov	r2, r8
	bgeu	r11, r9, .L1225
	andi	r10, r8, 65535
	xori	r12, r10, 32768
	addi	r13, r12, -32768
	blt	r13, zero, .L1225
	slli	r14, r5, 14
	andi	r7, r14, 0xffff
	mov	r2, r14
	bgeu	r7, r9, .L1227
	andi	r15, r14, 65535
	xori	r3, r15, 32768
	addi	r8, r3, -32768
	blt	r8, zero, .L1227
	slli	r7, r5, 15
	andi	r5, r7, 0xffff
	mov	r11, r7
	bgeu	r5, r9, .L1228
	mov	r2, r4
	bne	r5, zero, .L1278
.L1131:
	bne	r6, zero, .L1123
	mov	r2, r11
	ret
.L1123:
	ret
.L1201:
	movi	r12, 2
.L1130:
	andi	r13, r2, 0xffff
	sub	r11, r4, r2
	bltu	r9, r13, .L1196
	mov	r14, r11
.L1197:
	bltu	r9, r13, .L1198
	mov	r10, r12
.L1199:
	srli	r2, r13, 1
	andi	r9, r14, 0xffff
	srli	r4, r12, 1
	andi	r15, r2, 0xffff
	sub	r3, r14, r2
	bltu	r9, r15, .L1133
	mov	r14, r3
.L1133:
	mov	r2, r14
	bgeu	r9, r15, .L1135
	mov	r4, zero
.L1135:
	srli	r9, r12, 2
	or	r8, r4, r10
	srli	r5, r13, 2
	mov	r11, r8
	beq	r9, zero, .L1131
	andi	r10, r14, 0xffff
	sub	r11, r14, r5
	cmpgeu	r7, r10, r5
	bltu	r10, r5, .L1137
	mov	r14, r11
.L1137:
	mov	r2, r14
	bne	r7, zero, .L1139
	mov	r9, zero
.L1139:
	srli	r5, r12, 3
	or	r4, r8, r9
	srli	r15, r13, 3
	mov	r11, r4
	beq	r5, zero, .L1131
	andi	r2, r14, 0xffff
	sub	r3, r14, r15
	cmpgeu	r8, r2, r15
	bltu	r2, r15, .L1141
	mov	r14, r3
.L1141:
	mov	r2, r14
	bne	r8, zero, .L1143
	mov	r5, zero
.L1143:
	srli	r9, r12, 4
	or	r4, r4, r5
	srli	r10, r13, 4
	mov	r11, r4
	beq	r9, zero, .L1131
	andi	r15, r14, 0xffff
	sub	r11, r14, r10
	cmpgeu	r7, r15, r10
	bltu	r15, r10, .L1145
	mov	r14, r11
.L1145:
	mov	r2, r14
	bne	r7, zero, .L1147
	mov	r9, zero
.L1147:
	srli	r10, r12, 5
	or	r3, r4, r9
	srli	r8, r13, 5
	mov	r11, r3
	beq	r10, zero, .L1131
	andi	r2, r14, 0xffff
	sub	r5, r14, r8
	cmpgeu	r4, r2, r8
	bltu	r2, r8, .L1149
	mov	r14, r5
.L1149:
	mov	r2, r14
	bne	r4, zero, .L1151
	mov	r10, zero
.L1151:
	srli	r9, r12, 6
	or	r15, r3, r10
	mov	r11, r15
	srli	r3, r13, 6
	beq	r9, zero, .L1131
	andi	r8, r14, 0xffff
	sub	r11, r14, r3
	cmpgeu	r7, r8, r3
	bltu	r8, r3, .L1153
	mov	r14, r11
.L1153:
	mov	r2, r14
	bne	r7, zero, .L1155
	mov	r9, zero
.L1155:
	srli	r10, r12, 7
	or	r5, r15, r9
	srli	r4, r13, 7
	mov	r11, r5
	beq	r10, zero, .L1131
	andi	r2, r14, 0xffff
	sub	r15, r14, r4
	cmpgeu	r3, r2, r4
	bltu	r2, r4, .L1157
	mov	r14, r15
.L1157:
	mov	r2, r14
	bne	r3, zero, .L1159
	mov	r10, zero
.L1159:
	srli	r9, r12, 8
	or	r8, r5, r10
	mov	r11, r8
	srli	r5, r13, 8
	beq	r9, zero, .L1131
	andi	r4, r14, 0xffff
	sub	r11, r14, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1161
	mov	r14, r11
.L1161:
	mov	r2, r14
	bne	r7, zero, .L1163
	mov	r9, zero
.L1163:
	srli	r10, r12, 9
	or	r15, r8, r9
	srli	r3, r13, 9
	mov	r11, r15
	beq	r10, zero, .L1131
	andi	r2, r14, 0xffff
	sub	r8, r14, r3
	cmpgeu	r5, r2, r3
	bltu	r2, r3, .L1165
	mov	r14, r8
.L1165:
	mov	r2, r14
	bne	r5, zero, .L1167
	mov	r10, zero
.L1167:
	srli	r9, r12, 10
	or	r4, r15, r10
	mov	r11, r4
	srli	r15, r13, 10
	beq	r9, zero, .L1131
	andi	r3, r14, 0xffff
	sub	r11, r14, r15
	cmpgeu	r7, r3, r15
	bltu	r3, r15, .L1169
	mov	r14, r11
.L1169:
	mov	r2, r14
	bne	r7, zero, .L1171
	mov	r9, zero
.L1171:
	srli	r10, r12, 11
	or	r8, r4, r9
	srli	r5, r13, 11
	mov	r11, r8
	beq	r10, zero, .L1131
	andi	r2, r14, 0xffff
	sub	r4, r14, r5
	cmpgeu	r15, r2, r5
	bltu	r2, r5, .L1173
	mov	r14, r4
.L1173:
	mov	r2, r14
	bne	r15, zero, .L1175
	mov	r10, zero
.L1175:
	srli	r9, r12, 12
	or	r3, r8, r10
	mov	r11, r3
	srli	r8, r13, 12
	beq	r9, zero, .L1131
	andi	r5, r14, 0xffff
	sub	r11, r14, r8
	cmpgeu	r7, r5, r8
	bltu	r5, r8, .L1177
	mov	r14, r11
.L1177:
	mov	r2, r14
	bne	r7, zero, .L1179
	mov	r9, zero
.L1179:
	srli	r10, r12, 13
	or	r4, r3, r9
	srli	r15, r13, 13
	mov	r11, r4
	beq	r10, zero, .L1131
	andi	r2, r14, 0xffff
	sub	r3, r14, r15
	cmpgeu	r8, r2, r15
	bltu	r2, r15, .L1181
	mov	r14, r3
.L1181:
	mov	r2, r14
	bne	r8, zero, .L1183
	mov	r10, zero
.L1183:
	srli	r9, r12, 14
	or	r5, r4, r10
	mov	r11, r5
	srli	r4, r13, 14
	beq	r9, zero, .L1131
	andi	r15, r14, 0xffff
	sub	r11, r14, r4
	cmpgeu	r7, r15, r4
	bltu	r15, r4, .L1185
	mov	r14, r11
.L1185:
	mov	r2, r14
	bne	r7, zero, .L1187
	mov	r9, zero
.L1187:
	or	r3, r5, r9
	cmpeqi	r12, r12, 16384
	srli	r13, r13, 15
	mov	r11, r3
	bne	r12, zero, .L1131
	andi	r2, r14, 0xffff
	sub	r8, r14, r13
	cmpgeu	r10, r2, r13
	bltu	r2, r13, .L1189
	mov	r14, r8
.L1189:
	mov	r2, r14
	or	r11, r3, r10
	br	.L1131
.L1198:
	mov	r10, zero
	br	.L1199
.L1196:
	mov	r14, r4
	br	.L1197
.L1203:
	movi	r12, 4
	br	.L1130
.L1205:
	movi	r12, 8
	br	.L1130
.L1207:
	movi	r12, 16
	br	.L1130
.L1217:
	movi	r12, 512
	br	.L1130
.L1278:
	movui	r12, 32768
	movi	r2, -32768
	br	.L1130
.L1209:
	movi	r12, 32
	br	.L1130
.L1211:
	movi	r12, 64
	br	.L1130
.L1213:
	movi	r12, 128
	br	.L1130
.L1215:
	movi	r12, 256
	br	.L1130
.L1277:
	sub	r2, r4, r5
	beq	r3, r9, .L1126
	mov	r2, r4
.L1126:
	cmpeq	r11, r3, r9
	br	.L1131
.L1219:
	movi	r12, 1024
	br	.L1130
.L1221:
	movi	r12, 2048
	br	.L1130
.L1223:
	movi	r12, 4096
	br	.L1130
.L1225:
	movi	r12, 8192
	br	.L1130
.L1227:
	movi	r12, 16384
	br	.L1130
.L1228:
	movi	r2, -32768
	movui	r12, 32768
	br	.L1130
.L1128:
	sub	r2, r4, r5
	movi	r11, 1
	br	.L1131
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	bgeu	r5, r4, .L1303
	movi	r2, 32
	movi	r10, 1
	br	.L1280
.L1284:
	add	r5, r5, r5
	add	r10, r10, r10
	bgeu	r5, r4, .L1282
	beq	r2, zero, .L1283
.L1280:
	addi	r2, r2, -1
	bge	r5, zero, .L1284
.L1285:
	mov	r2, zero
.L1290:
	sub	r8, r4, r5
	cmpgeu	r7, r4, r5
	bltu	r4, r5, .L1287
	mov	r4, r8
.L1287:
	beq	r7, zero, .L1288
	mov	r9, r10
.L1289:
	srli	r10, r10, 1
	srli	r5, r5, 1
	or	r2, r2, r9
	bne	r10, zero, .L1290
.L1283:
	bne	r6, zero, .L1304
.L1279:
	ret
.L1288:
	mov	r9, zero
	br	.L1289
.L1282:
	bne	r10, zero, .L1285
	mov	r2, zero
	beq	r6, zero, .L1279
.L1304:
	mov	r2, r4
	ret
.L1303:
	sub	r3, r4, r5
	cmpgeu	r2, r4, r5
	bltu	r4, r5, .L1283
	mov	r4, r3
	br	.L1283
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1306
	addi	r6, r6, -32
	sll	r3, r4, r6
	mov	r4, zero
	mov	r2, r4
	ret
.L1306:
	beq	r6, zero, .L1309
	movi	r3, 32
	sub	r7, r3, r6
	srl	r8, r4, r7
	sll	r5, r5, r6
	sll	r4, r4, r6
	or	r3, r8, r5
	mov	r2, r4
	ret
.L1309:
	mov	r2, r4
	mov	r3, r5
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	andi	r2, r6, 32
	beq	r2, zero, .L1311
	addi	r6, r6, -32
	srai	r3, r5, 31
	sra	r2, r5, r6
	ret
.L1311:
	beq	r6, zero, .L1314
	movi	r7, 32
	sub	r3, r7, r6
	sll	r8, r5, r3
	srl	r4, r4, r6
	sra	r3, r5, r6
	or	r2, r8, r4
	ret
.L1314:
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
	bne	r5, zero, .L1318
	sub	r11, r11, r14
	add	r2, r12, r10
	add	r2, r11, r2
	ret
.L1318:
	mov	r11, zero
	add	r2, r12, r10
	add	r2, r11, r2
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	blt	r5, r7, .L1324
	blt	r7, r5, .L1325
	bltu	r4, r6, .L1324
	bltu	r6, r4, .L1325
	movi	r2, 1
	ret
.L1324:
	mov	r2, zero
	ret
.L1325:
	movi	r2, 2
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	blt	r5, r7, .L1330
	blt	r7, r5, .L1329
	bltu	r4, r6, .L1330
	cmpltu	r2, r6, r4
	ret
.L1330:
	movi	r2, -1
	ret
.L1329:
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
	beq	r2, zero, .L1333
	addi	r6, r6, -32
	srl	r2, r5, r6
	mov	r5, zero
	mov	r3, r5
	ret
.L1333:
	beq	r6, zero, .L1336
	movi	r3, 32
	sub	r7, r3, r6
	sll	r8, r5, r7
	srl	r4, r4, r6
	srl	r5, r5, r6
	or	r2, r8, r4
	mov	r3, r5
	ret
.L1336:
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
	mov	r16, zero
	mov	r20, r18
	movhi	r17, 16368
	beq	r2, zero, .L1346
.L1348:
	mov	r4, r16
	mov	r5, r17
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	call	__muldf3
	ldw	r7, 0(sp)
	ldw	r6, 4(sp)
	mov	r16, r2
	mov	r17, r3
.L1346:
	movi	r3, 2
	div	r20, r20, r3
	beq	r20, zero, .L1347
	movi	r19, 2
.L1349:
	mov	r4, r6
	mov	r5, r7
	call	__muldf3
	andi	r4, r20, 1
	mov	r6, r2
	mov	r7, r3
	bne	r4, zero, .L1348
	div	r20, r20, r19
	br	.L1349
.L1347:
	bge	r18, zero, .L1345
	mov	r2, zero
	movhi	r3, 16368
	custom	0, zero, r2, r3 # fwrx r2
	custom	13, r17, r16, r17 # fdivd r16, r2, r16
	custom	4, r16, zero, zero # frdy r16
.L1345:
	mov	r2, r16
	mov	r3, r17
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
	beq	r2, zero, .L1359
	movhi	r2, 16256
.L1356:
	custom	252, r2, r2, r4 # fmuls r2, r2, r4
.L1354:
	movi	r3, 2
	div	r6, r6, r3
	beq	r6, zero, .L1355
	andi	r8, r6, 1
	movi	r7, 2
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1356
.L1360:
	div	r6, r6, r7
	andi	r8, r6, 1
	custom	252, r4, r4, r4 # fmuls r4, r4, r4
	bne	r8, zero, .L1356
	br	.L1360
.L1355:
	bge	r5, zero, .L1353
	movhi	r4, 16256
	custom	255, r2, r4, r2 # fdivs r2, r4, r2
.L1353:
	ret
.L1359:
	movhi	r2, 16256
	br	.L1354
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	bltu	r5, r7, .L1365
	bltu	r7, r5, .L1366
	bltu	r4, r6, .L1365
	bltu	r6, r4, .L1366
	movi	r2, 1
	ret
.L1365:
	mov	r2, zero
	ret
.L1366:
	movi	r2, 2
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	bltu	r5, r7, .L1371
	bltu	r7, r5, .L1370
	bltu	r4, r6, .L1371
	cmpltu	r2, r6, r4
	ret
.L1371:
	movi	r2, -1
	ret
.L1370:
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
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__muldf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__unordsf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
