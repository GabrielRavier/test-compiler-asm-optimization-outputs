	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	addi	sp, sp, -24
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L2
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 20(sp)
	br	.L3
.L4:
	ldw	r2, 12(sp)
	addi	r2, r2, -1
	stw	r2, 12(sp)
	ldw	r2, 20(sp)
	addi	r2, r2, -1
	stw	r2, 20(sp)
	ldw	r2, 12(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 20(sp)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L3:
	ldw	r2, 0(sp)
	bne	r2, zero, .L4
	br	.L5
.L2:
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	beq	r3, r2, .L5
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	br	.L6
.L7:
	ldw	r3, 4(sp)
	addi	r2, r3, 1
	stw	r2, 4(sp)
	ldw	r2, 16(sp)
	addi	r4, r2, 1
	stw	r4, 16(sp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L6:
	ldw	r2, 0(sp)
	bne	r2, zero, .L7
.L5:
	ldw	r2, 8(sp)
	addi	sp, sp, 24
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	addi	sp, sp, -20
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 0xff
	stw	r2, 16(sp)
	br	.L11
.L13:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
.L11:
	ldw	r2, 0(sp)
	beq	r2, zero, .L12
	ldw	r2, 8(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 12(sp)
	stb	r3, 0(r2)
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, 16(sp)
	bne	r3, r2, .L13
.L12:
	ldw	r2, 0(sp)
	beq	r2, zero, .L14
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	br	.L15
.L14:
	mov	r2, zero
.L15:
	addi	sp, sp, 20
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 0xff
	stw	r2, 12(sp)
	br	.L18
.L20:
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L18:
	ldw	r2, 0(sp)
	beq	r2, zero, .L19
	ldw	r2, 8(sp)
	ldbu	r2, 0(r2)
	ldw	r3, 12(sp)
	bne	r3, r2, .L20
.L19:
	ldw	r2, 0(sp)
	beq	r2, zero, .L21
	ldw	r2, 8(sp)
	br	.L23
.L21:
	mov	r2, zero
.L23:
	nop
	addi	sp, sp, 16
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	addi	sp, sp, -12
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	br	.L26
.L28:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L26:
	ldw	r2, 0(sp)
	beq	r2, zero, .L27
	ldw	r2, 8(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 0xff
	andi	r2, r2, 0xff
	beq	r3, r2, .L28
.L27:
	ldw	r2, 0(sp)
	beq	r2, zero, .L29
	ldw	r2, 8(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	sub	r2, r3, r2
	br	.L31
.L29:
	mov	r2, zero
.L31:
	nop
	addi	sp, sp, 12
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	br	.L34
.L35:
	ldw	r3, 4(sp)
	addi	r2, r3, 1
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	addi	r4, r2, 1
	stw	r4, 12(sp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L34:
	ldw	r2, 0(sp)
	bne	r2, zero, .L35
	ldw	r2, 8(sp)
	addi	sp, sp, 16
	ret
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 0xff
	stw	r2, 12(sp)
	br	.L39
.L41:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	ldbu	r2, 0(r2)
	ldw	r3, 12(sp)
	bne	r3, r2, .L39
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	br	.L40
.L39:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L41
	mov	r2, zero
.L40:
	addi	sp, sp, 16
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	br	.L44
.L45:
	ldw	r2, 12(sp)
	ldw	r3, 4(sp)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
.L44:
	ldw	r2, 0(sp)
	bne	r2, zero, .L45
	ldw	r2, 8(sp)
	addi	sp, sp, 16
	ret
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	br	.L49
.L50:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L49:
	ldw	r2, 0(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	stb	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L50
	ldw	r2, 4(sp)
	addi	sp, sp, 8
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 0(sp)
	andi	r2, r2, 0xff
	stw	r2, 8(sp)
	br	.L54
.L56:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L54:
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	beq	r2, zero, .L55
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	ldw	r3, 8(sp)
	bne	r3, r2, .L56
.L55:
	ldw	r2, 4(sp)
	addi	sp, sp, 12
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	addi	sp, sp, -4
	mov	r2, r4
	stw	r5, 0(sp)
.L62:
	ldb	r3, 0(r2)
	ldw	r4, 0(sp)
	beq	r4, r3, .L63
	mov	r3, r2
	addi	r2, r3, 1
	ldb	r3, 0(r3)
	bne	r3, zero, .L62
	mov	r2, zero
	br	.L61
.L63:
	nop
.L61:
	addi	sp, sp, 4
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	br	.L66
.L68:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L66:
	ldw	r2, 4(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r3, r2, .L67
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L68
.L67:
	ldw	r2, 4(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	sub	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 4(sp)
	br	.L72
.L73:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L72:
	ldw	r2, 4(sp)
	ldb	r2, 0(r2)
	bne	r2, zero, .L73
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	sub	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 12(sp)
	bne	r2, zero, .L79
	mov	r2, zero
	br	.L78
.L81:
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, -1
	stw	r2, 12(sp)
.L79:
	ldw	r2, 8(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	beq	r2, zero, .L80
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	beq	r2, zero, .L80
	ldw	r2, 12(sp)
	beq	r2, zero, .L80
	ldw	r2, 8(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 0xff
	andi	r2, r2, 0xff
	beq	r3, r2, .L81
.L80:
	ldw	r2, 8(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	sub	r2, r3, r2
.L78:
	addi	sp, sp, 16
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	addi	sp, sp, -12
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	br	.L84
.L85:
	ldw	r2, 8(sp)
	ldbu	r3, 1(r2)
	ldw	r2, 4(sp)
	stb	r3, 0(r2)
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	ldw	r3, 8(sp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 4(sp)
	addi	r2, r2, 2
	stw	r2, 4(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 2
	stw	r2, 8(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -2
	stw	r2, 0(sp)
.L84:
	ldw	r2, 0(sp)
	cmpgei	r2, r2, 2
	bne	r2, zero, .L85
	nop
	nop
	addi	sp, sp, 12
	ret
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	ori	r2, r2, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 26
	addi	sp, sp, 4
	ret
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	cmpltui	r2, r2, 128
	addi	sp, sp, 4
	ret
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	cmpeqi	r2, r2, 32
	bne	r2, zero, .L94
	ldw	r2, 0(sp)
	cmpnei	r2, r2, 9
	bne	r2, zero, .L95
.L94:
	movi	r2, 1
	br	.L97
.L95:
	mov	r2, zero
.L97:
	nop
	addi	sp, sp, 4
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	cmpltui	r2, r2, 32
	bne	r2, zero, .L100
	ldw	r2, 0(sp)
	cmpnei	r2, r2, 127
	bne	r2, zero, .L101
.L100:
	movi	r2, 1
	br	.L103
.L101:
	mov	r2, zero
.L103:
	nop
	addi	sp, sp, 4
	ret
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	addi	sp, sp, 4
	ret
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -33
	cmpltui	r2, r2, 94
	addi	sp, sp, 4
	ret
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -97
	cmpltui	r2, r2, 26
	addi	sp, sp, 4
	ret
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -32
	cmpltui	r2, r2, 95
	addi	sp, sp, 4
	ret
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	cmpeqi	r2, r2, 32
	bne	r2, zero, .L118
	ldw	r2, 0(sp)
	addi	r2, r2, -9
	cmpgeui	r2, r2, 5
	bne	r2, zero, .L119
.L118:
	movi	r2, 1
	br	.L121
.L119:
	mov	r2, zero
.L121:
	nop
	addi	sp, sp, 4
	ret
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -65
	cmpltui	r2, r2, 26
	addi	sp, sp, 4
	ret
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	cmpltui	r2, r2, 32
	bne	r2, zero, .L127
	ldw	r2, 0(sp)
	addi	r2, r2, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L127
	ldw	r2, 0(sp)
	addi	r2, r2, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L127
	ldw	r3, 0(sp)
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r3, r2
	cmpgeui	r2, r2, 3
	bne	r2, zero, .L128
.L127:
	movi	r2, 1
	br	.L130
.L128:
	mov	r2, zero
.L130:
	nop
	addi	sp, sp, 4
	ret
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	addi	sp, sp, 4
	ret
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	cmpgeui	r2, r2, 255
	bne	r2, zero, .L136
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	br	.L137
.L136:
	ldw	r2, 0(sp)
	cmpltui	r2, r2, 8232
	bne	r2, zero, .L138
	ldw	r2, 0(sp)
	addi	r2, r2, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L138
	ldw	r3, 0(sp)
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r3, r2
	cmpgeui	r2, r2, 8185
	bne	r2, zero, .L139
.L138:
	movi	r2, 1
	br	.L137
.L139:
	ldw	r3, 0(sp)
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r3, r3, r2
	movhi	r2, 16
	addi	r2, r2, 3
	bltu	r2, r3, .L140
	ldw	r2, 0(sp)
	andi	r3, r2, 65534
	movui	r2, 65534
	bne	r3, r2, .L141
.L140:
	mov	r2, zero
	br	.L137
.L141:
	movi	r2, 1
.L137:
	addi	sp, sp, 4
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L144
	ldw	r2, 0(sp)
	ori	r2, r2, 32
	addi	r2, r2, -97
	cmpgeui	r2, r2, 6
	bne	r2, zero, .L145
.L144:
	movi	r2, 1
	br	.L147
.L145:
	mov	r2, zero
.L147:
	nop
	addi	sp, sp, 4
	ret
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	andi	r2, r2, 127
	addi	sp, sp, 4
	ret
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 8(sp)
	ldw	r7, 12(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__unorddf2
	beq	r2, zero, .L164
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L155
.L164:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L165
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L155
.L165:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__gtdf2
	bge	zero, r2, .L166
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__subdf3
	mov	r5, r2
	mov	r4, r3
	mov	r2, r5
	mov	r3, r4
	br	.L155
.L166:
	mov	r2, zero
	mov	r3, zero
.L155:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 4(sp)
	ldw	r4, 4(sp)
	call	__unordsf2
	beq	r2, zero, .L180
	ldw	r2, 4(sp)
	br	.L171
.L180:
	ldw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	__unordsf2
	beq	r2, zero, .L181
	ldw	r2, 0(sp)
	br	.L171
.L181:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__gtsf2
	bge	zero, r2, .L182
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__subsf3
	mov	r3, r2
	mov	r2, r3
	br	.L171
.L182:
	mov	r2, zero
.L171:
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 8(sp)
	ldw	r7, 12(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__unorddf2
	beq	r2, zero, .L199
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L187
.L199:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L200
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L187
.L200:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L190
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L191
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L187
.L191:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L187
.L190:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L201
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L187
.L201:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
.L187:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 4(sp)
	ldw	r4, 4(sp)
	call	__unordsf2
	beq	r2, zero, .L218
	ldw	r2, 0(sp)
	br	.L206
.L218:
	ldw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	__unordsf2
	beq	r2, zero, .L219
	ldw	r2, 4(sp)
	br	.L206
.L219:
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 0(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L209
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L210
	ldw	r2, 0(sp)
	br	.L206
.L210:
	ldw	r2, 4(sp)
	br	.L206
.L209:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__ltsf2
	bge	r2, zero, .L220
	ldw	r2, 0(sp)
	br	.L206
.L220:
	ldw	r2, 4(sp)
.L206:
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 8(sp)
	ldw	r7, 12(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__unorddf2
	beq	r2, zero, .L237
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L225
.L237:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L238
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L225
.L238:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L228
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L229
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L225
.L229:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L225
.L228:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L239
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L225
.L239:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
.L225:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 8(sp)
	ldw	r7, 12(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__unorddf2
	beq	r2, zero, .L256
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L244
.L256:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L257
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L244
.L257:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L247
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L248
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L244
.L248:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L244
.L247:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L258
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L244
.L258:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
.L244:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 4(sp)
	ldw	r4, 4(sp)
	call	__unordsf2
	beq	r2, zero, .L275
	ldw	r2, 0(sp)
	br	.L263
.L275:
	ldw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	__unordsf2
	beq	r2, zero, .L276
	ldw	r2, 4(sp)
	br	.L263
.L276:
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 0(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L266
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L267
	ldw	r2, 4(sp)
	br	.L263
.L267:
	ldw	r2, 0(sp)
	br	.L263
.L266:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__ltsf2
	bge	r2, zero, .L277
	ldw	r2, 4(sp)
	br	.L263
.L277:
	ldw	r2, 0(sp)
.L263:
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 8(sp)
	ldw	r7, 12(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__unorddf2
	beq	r2, zero, .L294
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L282
.L294:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L295
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L282
.L295:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L285
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L286
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L282
.L286:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L282
.L285:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L296
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L282
.L296:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
.L282:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
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
	addi	sp, sp, -12
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 4(sp)
	addi	r2, gp, %gprel(s.0)
	stw	r2, 8(sp)
	br	.L299
.L300:
	ldw	r2, 4(sp)
	andi	r3, r2, 63
	movhi	r2, %hiadj(digits)
	add	r2, r3, r2
	ldbu	r3, %lo(digits)(r2)
	ldw	r2, 8(sp)
	stb	r3, 0(r2)
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 6
	stw	r2, 4(sp)
.L299:
	ldw	r2, 4(sp)
	bne	r2, zero, .L300
	ldw	r2, 8(sp)
	stb	zero, 0(r2)
	addi	r2, gp, %gprel(s.0)
	addi	sp, sp, 12
	ret
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
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	mov	r3, r2
	mov	r2, zero
	stw	r3, %gprel(seed)(gp)
	stw	r2, %gprel(seed+4)(gp)
	nop
	addi	sp, sp, 4
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
	mov	r6, r2
	mov	r5, r3
	mov	r4, r6
	mov	r7, r5
	movi	r5, 1
	mov	r6, zero
	add	r3, r4, r5
	cmpltu	r4, r3, r4
	add	r2, r7, r6
	add	r2, r4, r2
	mov	r5, r3
	mov	r4, r2
	stw	r5, %gprel(seed)(gp)
	stw	r4, %gprel(seed+4)(gp)
	ldw	r2, %gprel(seed+4)(gp)
	srli	r2, r2, 1
	ldw	ra, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 0(sp)
	bne	r2, zero, .L309
	ldw	r2, 4(sp)
	stw	zero, 4(r2)
	ldw	r2, 4(sp)
	ldw	r3, 4(r2)
	ldw	r2, 4(sp)
	stw	r3, 0(r2)
	br	.L308
.L309:
	ldw	r2, 0(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	stw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r3, 0(sp)
	stw	r3, 4(r2)
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	stw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L308
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	stw	r3, 4(r2)
.L308:
	addi	sp, sp, 8
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L313
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	ldw	r3, 0(sp)
	ldw	r3, 4(r3)
	stw	r3, 4(r2)
.L313:
	ldw	r2, 0(sp)
	ldw	r2, 4(r2)
	beq	r2, zero, .L315
	ldw	r2, 0(sp)
	ldw	r2, 4(r2)
	ldw	r3, 0(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L315:
	nop
	addi	sp, sp, 4
	ret
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	addi	sp, sp, -36
	stw	ra, 32(sp)
	stw	r16, 28(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r16, 0(sp)
	addi	r2, r16, -1
	stw	r2, 20(sp)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	stw	r2, 16(sp)
	stw	zero, 24(sp)
	br	.L318
.L321:
	ldw	r2, 24(sp)
	mul	r2, r16, r2
	ldw	r3, 8(sp)
	add	r3, r3, r2
	ldw	r2, 36(sp)
	mov	r5, r3
	ldw	r4, 12(sp)
	callr	r2
	bne	r2, zero, .L319
	ldw	r2, 24(sp)
	mul	r2, r16, r2
	ldw	r3, 8(sp)
	add	r2, r3, r2
	br	.L320
.L319:
	ldw	r2, 24(sp)
	addi	r2, r2, 1
	stw	r2, 24(sp)
.L318:
	ldw	r3, 24(sp)
	ldw	r2, 16(sp)
	bltu	r3, r2, .L321
	ldw	r2, 16(sp)
	addi	r3, r2, 1
	ldw	r2, 4(sp)
	stw	r3, 0(r2)
	ldw	r2, 16(sp)
	mul	r2, r16, r2
	ldw	r3, 8(sp)
	add	r2, r3, r2
	ldw	r6, 0(sp)
	ldw	r5, 12(sp)
	mov	r4, r2
	call	memcpy
.L320:
	ldw	ra, 32(sp)
	ldw	r16, 28(sp)
	addi	sp, sp, 36
	ret
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	addi	sp, sp, -36
	stw	ra, 32(sp)
	stw	r16, 28(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r16, 0(sp)
	addi	r2, r16, -1
	stw	r2, 20(sp)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	stw	r2, 16(sp)
	stw	zero, 24(sp)
	br	.L324
.L327:
	ldw	r2, 24(sp)
	mul	r2, r16, r2
	ldw	r3, 8(sp)
	add	r3, r3, r2
	ldw	r2, 36(sp)
	mov	r5, r3
	ldw	r4, 12(sp)
	callr	r2
	bne	r2, zero, .L325
	ldw	r2, 24(sp)
	mul	r2, r16, r2
	ldw	r3, 8(sp)
	add	r2, r3, r2
	br	.L326
.L325:
	ldw	r2, 24(sp)
	addi	r2, r2, 1
	stw	r2, 24(sp)
.L324:
	ldw	r3, 24(sp)
	ldw	r2, 16(sp)
	bltu	r3, r2, .L327
	mov	r2, zero
.L326:
	ldw	ra, 32(sp)
	ldw	r16, 28(sp)
	addi	sp, sp, 36
	ret
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	bge	r2, zero, .L330
	sub	r2, zero, r2
.L330:
	addi	sp, sp, 4
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r4, 0(sp)
	stw	zero, 8(sp)
	stw	zero, 4(sp)
	br	.L334
.L335:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L334:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L335
	ldw	r2, 0(sp)
	ldb	r2, 0(r2)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L336
	cmpnei	r2, r2, 45
	bne	r2, zero, .L338
	movi	r2, 1
	stw	r2, 4(sp)
.L336:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	br	.L338
.L339:
	ldw	r2, 8(sp)
	muli	r3, r2, 10
	ldw	r2, 0(sp)
	addi	r4, r2, 1
	stw	r4, 0(sp)
	ldb	r2, 0(r2)
	addi	r2, r2, -48
	sub	r2, r3, r2
	stw	r2, 8(sp)
.L338:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L339
	ldw	r2, 4(sp)
	bne	r2, zero, .L340
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	br	.L342
.L340:
	ldw	r2, 8(sp)
.L342:
	nop
	ldw	ra, 12(sp)
	addi	sp, sp, 16
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r4, 0(sp)
	stw	zero, 8(sp)
	stw	zero, 4(sp)
	br	.L345
.L346:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L345:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L346
	ldw	r2, 0(sp)
	ldb	r2, 0(r2)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L347
	cmpnei	r2, r2, 45
	bne	r2, zero, .L349
	movi	r2, 1
	stw	r2, 4(sp)
.L347:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	br	.L349
.L350:
	ldw	r2, 8(sp)
	muli	r3, r2, 10
	ldw	r2, 0(sp)
	addi	r4, r2, 1
	stw	r4, 0(sp)
	ldb	r2, 0(r2)
	addi	r2, r2, -48
	sub	r2, r3, r2
	stw	r2, 8(sp)
.L349:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L350
	ldw	r2, 4(sp)
	bne	r2, zero, .L351
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	br	.L353
.L351:
	ldw	r2, 8(sp)
.L353:
	nop
	ldw	ra, 12(sp)
	addi	sp, sp, 16
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 0(sp)
	stw	zero, 8(sp)
	stw	zero, 12(sp)
	stw	zero, 4(sp)
	br	.L356
.L357:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L356:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L357
	ldw	r2, 0(sp)
	ldb	r2, 0(r2)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L358
	cmpnei	r2, r2, 45
	bne	r2, zero, .L360
	movi	r2, 1
	stw	r2, 4(sp)
.L358:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	br	.L360
.L361:
	movi	r6, 10
	mov	r7, zero
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__muldi3
	mov	r7, r2
	mov	r5, r3
	mov	r4, r7
	mov	r6, r5
	ldw	r2, 0(sp)
	addi	r3, r2, 1
	stw	r3, 0(sp)
	ldb	r2, 0(r2)
	addi	r2, r2, -48
	mov	r7, r2
	srai	r2, r2, 31
	mov	r5, r2
	sub	r3, r4, r7
	cmpltu	r4, r4, r3
	sub	r2, r6, r5
	sub	r2, r2, r4
	stw	r3, 8(sp)
	stw	r2, 12(sp)
.L360:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L361
	ldw	r2, 4(sp)
	bne	r2, zero, .L362
	mov	r4, zero
	mov	r7, zero
	ldw	r6, 8(sp)
	ldw	r5, 12(sp)
	sub	r3, r4, r6
	cmpltu	r4, r4, r3
	sub	r2, r7, r5
	sub	r2, r2, r4
	mov	r5, r3
	mov	r4, r2
	br	.L364
.L362:
	ldw	r5, 8(sp)
	ldw	r4, 12(sp)
.L364:
	nop
	mov	r2, r5
	mov	r3, r4
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	atoll, .-atoll
	.align	2
	.global	bsearch
	.type	bsearch, @function
bsearch:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	br	.L367
.L372:
	ldw	r2, 4(sp)
	srli	r3, r2, 1
	ldw	r2, 0(sp)
	mul	r2, r3, r2
	ldw	r3, 8(sp)
	add	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 28(sp)
	ldw	r5, 20(sp)
	ldw	r4, 12(sp)
	callr	r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	bge	r2, zero, .L368
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
	br	.L367
.L368:
	ldw	r2, 16(sp)
	bge	zero, r2, .L370
	ldw	r3, 20(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	ldw	r3, 4(sp)
	sub	r2, r3, r2
	addi	r2, r2, -1
	stw	r2, 4(sp)
	br	.L367
.L370:
	ldw	r2, 20(sp)
	br	.L371
.L367:
	ldw	r2, 4(sp)
	bne	r2, zero, .L372
	mov	r2, zero
.L371:
	ldw	ra, 24(sp)
	addi	sp, sp, 28
	ret
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r2, 4(sp)
	stw	r2, 24(sp)
	br	.L375
.L379:
	ldw	r2, 24(sp)
	srai	r3, r2, 1
	ldw	r2, 0(sp)
	mul	r2, r3, r2
	ldw	r3, 8(sp)
	add	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 32(sp)
	ldw	r6, 36(sp)
	ldw	r5, 20(sp)
	ldw	r4, 12(sp)
	callr	r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	bne	r2, zero, .L376
	ldw	r2, 20(sp)
	br	.L377
.L376:
	ldw	r2, 16(sp)
	bge	zero, r2, .L378
	ldw	r3, 20(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r2, 24(sp)
	addi	r2, r2, -1
	stw	r2, 24(sp)
.L378:
	ldw	r2, 24(sp)
	srai	r2, r2, 1
	stw	r2, 24(sp)
.L375:
	ldw	r2, 24(sp)
	bne	r2, zero, .L379
	mov	r2, zero
.L377:
	ldw	ra, 28(sp)
	addi	sp, sp, 32
	ret
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r16, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__divsi3
	mov	r16, r2
	ldw	r2, 4(sp)
	ldw	r5, 0(sp)
	mov	r4, r2
	call	__modsi3
	mov	r5, r16
	mov	r4, r2
	mov	r2, r5
	mov	r3, r4
	ldw	ra, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 16
	ret
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
	bge	r2, zero, .L385
	mov	r6, zero
	mov	r7, zero
	sub	r5, r6, r3
	cmpltu	r3, r6, r5
	sub	r4, r7, r2
	sub	r2, r4, r3
	mov	r4, r2
	mov	r3, r5
	mov	r2, r4
.L385:
	mov	r5, r3
	mov	r4, r2
	mov	r2, r5
	mov	r3, r4
	addi	sp, sp, 8
	ret
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi	sp, sp, -44
	stw	ra, 36(sp)
	stw	r17, 32(sp)
	stw	r16, 28(sp)
	stw	r4, 8(sp)
	stw	r5, 0(sp)
	stw	r6, 4(sp)
	stw	r7, 40(sp)
	ldw	r6, 40(sp)
	ldw	r7, 44(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__divdi3
	mov	r5, r2
	mov	r4, r3
	mov	r17, r5
	mov	r16, r4
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
	ldw	r6, 40(sp)
	ldw	r7, 44(sp)
	mov	r4, r3
	mov	r5, r2
	call	__moddi3
	mov	r6, r2
	mov	r5, r3
	mov	r4, r6
	mov	r3, r5
	ldw	r2, 8(sp)
	stw	r17, 0(r2)
	stw	r16, 4(r2)
	ldw	r2, 8(sp)
	stw	r4, 8(r2)
	stw	r3, 12(r2)
	ldw	r2, 8(sp)
	ldw	ra, 36(sp)
	ldw	r17, 32(sp)
	ldw	r16, 28(sp)
	addi	sp, sp, 44
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	bge	r2, zero, .L393
	sub	r2, zero, r2
.L393:
	addi	sp, sp, 4
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r16, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__divsi3
	mov	r16, r2
	ldw	r2, 4(sp)
	ldw	r5, 0(sp)
	mov	r4, r2
	call	__modsi3
	mov	r5, r16
	mov	r4, r2
	mov	r2, r5
	mov	r3, r4
	ldw	ra, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 16
	ret
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
	bge	r2, zero, .L400
	mov	r6, zero
	mov	r7, zero
	sub	r5, r6, r3
	cmpltu	r3, r6, r5
	sub	r4, r7, r2
	sub	r2, r4, r3
	mov	r4, r2
	mov	r3, r5
	mov	r2, r4
.L400:
	mov	r5, r3
	mov	r4, r2
	mov	r2, r5
	mov	r3, r4
	addi	sp, sp, 8
	ret
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
	addi	sp, sp, -44
	stw	ra, 36(sp)
	stw	r17, 32(sp)
	stw	r16, 28(sp)
	stw	r4, 8(sp)
	stw	r5, 0(sp)
	stw	r6, 4(sp)
	stw	r7, 40(sp)
	ldw	r6, 40(sp)
	ldw	r7, 44(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__divdi3
	mov	r5, r2
	mov	r4, r3
	mov	r17, r5
	mov	r16, r4
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
	ldw	r6, 40(sp)
	ldw	r7, 44(sp)
	mov	r4, r3
	mov	r5, r2
	call	__moddi3
	mov	r6, r2
	mov	r5, r3
	mov	r4, r6
	mov	r3, r5
	ldw	r2, 8(sp)
	stw	r17, 0(r2)
	stw	r16, 4(r2)
	ldw	r2, 8(sp)
	stw	r4, 8(r2)
	stw	r3, 12(r2)
	ldw	r2, 8(sp)
	ldw	ra, 36(sp)
	ldw	r17, 32(sp)
	ldw	r16, 28(sp)
	addi	sp, sp, 44
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	br	.L408
.L410:
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
.L408:
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L409
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	ldw	r3, 0(sp)
	bne	r3, r2, .L410
.L409:
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L411
	ldw	r2, 4(sp)
	br	.L413
.L411:
	mov	r2, zero
.L413:
	nop
	addi	sp, sp, 8
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	br	.L416
.L418:
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, 4
	stw	r2, 0(sp)
.L416:
	ldw	r2, 4(sp)
	ldw	r3, 0(r2)
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	bne	r3, r2, .L417
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L417
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L418
.L417:
	ldw	r2, 4(sp)
	ldw	r3, 0(r2)
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L419
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	ldw	r3, 0(sp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L421
.L419:
	movi	r2, -1
.L421:
	nop
	addi	sp, sp, 8
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 4(sp)
	stw	r2, 8(sp)
.L424:
	ldw	r3, 0(sp)
	addi	r2, r3, 4
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r4, r2, 4
	stw	r4, 8(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
	ldw	r2, 0(r2)
	bne	r2, zero, .L424
	ldw	r2, 4(sp)
	addi	sp, sp, 12
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 4(sp)
	br	.L428
.L429:
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
.L428:
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L429
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	sub	r2, r3, r2
	srai	r2, r2, 2
	addi	sp, sp, 8
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	addi	sp, sp, -12
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	br	.L433
.L435:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 4
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
.L433:
	ldw	r2, 0(sp)
	beq	r2, zero, .L434
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	bne	r3, r2, .L434
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L434
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L435
.L434:
	ldw	r2, 0(sp)
	beq	r2, zero, .L436
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L437
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L440
.L437:
	movi	r2, -1
	br	.L440
.L436:
	mov	r2, zero
.L440:
	nop
	addi	sp, sp, 12
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	addi	sp, sp, -12
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	br	.L443
.L445:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 4
	stw	r2, 8(sp)
.L443:
	ldw	r2, 0(sp)
	beq	r2, zero, .L444
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	bne	r3, r2, .L445
.L444:
	ldw	r2, 0(sp)
	beq	r2, zero, .L446
	ldw	r2, 8(sp)
	br	.L448
.L446:
	mov	r2, zero
.L448:
	nop
	addi	sp, sp, 12
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	addi	sp, sp, -12
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	br	.L451
.L453:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 4
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
.L451:
	ldw	r2, 0(sp)
	beq	r2, zero, .L452
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r3, r2, .L453
.L452:
	ldw	r2, 0(sp)
	beq	r2, zero, .L454
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L455
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L458
.L455:
	movi	r2, -1
	br	.L458
.L454:
	mov	r2, zero
.L458:
	nop
	addi	sp, sp, 12
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	br	.L461
.L462:
	ldw	r3, 4(sp)
	addi	r2, r3, 4
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	addi	r4, r2, 4
	stw	r4, 12(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L461:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L462
	ldw	r2, 8(sp)
	addi	sp, sp, 16
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bne	r3, r2, .L466
	ldw	r2, 8(sp)
	br	.L467
.L466:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r3, r3, r2
	ldw	r2, 0(sp)
	slli	r2, r2, 2
	bgeu	r3, r2, .L468
	br	.L469
.L470:
	ldw	r2, 0(sp)
	slli	r2, r2, 2
	ldw	r3, 8(sp)
	add	r2, r3, r2
	ldw	r3, 0(sp)
	slli	r3, r3, 2
	ldw	r4, 4(sp)
	add	r3, r4, r3
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L469:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L470
	br	.L471
.L468:
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	br	.L472
.L473:
	ldw	r3, 4(sp)
	addi	r2, r3, 4
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	addi	r4, r2, 4
	stw	r4, 12(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L472:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L473
.L471:
	ldw	r2, 8(sp)
.L467:
	addi	sp, sp, 16
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	br	.L476
.L477:
	ldw	r2, 12(sp)
	addi	r3, r2, 4
	stw	r3, 12(sp)
	ldw	r3, 4(sp)
	stw	r3, 0(r2)
.L476:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L477
	ldw	r2, 8(sp)
	addi	sp, sp, 16
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bgeu	r3, r2, .L481
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 12(sp)
	br	.L482
.L483:
	ldw	r2, 16(sp)
	addi	r2, r2, -1
	stw	r2, 16(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, -1
	stw	r2, 12(sp)
	ldw	r2, 16(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 12(sp)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L482:
	ldw	r2, 0(sp)
	bne	r2, zero, .L483
	br	.L487
.L481:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	beq	r3, r2, .L487
	br	.L485
.L486:
	ldw	r3, 8(sp)
	addi	r2, r3, 1
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	addi	r4, r2, 1
	stw	r4, 4(sp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L485:
	ldw	r2, 0(sp)
	bne	r2, zero, .L486
.L487:
	nop
	addi	sp, sp, 20
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	ldw	r2, 4(sp)
	ldw	r4, 8(sp)
	ldw	r3, 0(sp)
	addi	r3, r3, -32
	blt	r3, zero, .L490
	sll	r3, r2, r3
	mov	r6, zero
	br	.L491
.L490:
	srli	r5, r2, 1
	movi	r6, 31
	ldw	r3, 0(sp)
	sub	r3, r6, r3
	srl	r5, r5, r3
	ldw	r3, 0(sp)
	sll	r3, r4, r3
	or	r3, r5, r3
	ldw	r5, 0(sp)
	sll	r6, r2, r5
.L491:
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	addi	r5, r5, -32
	blt	r5, zero, .L492
	srl	r2, r4, r5
	mov	r4, zero
	br	.L493
.L492:
	slli	r7, r4, 1
	movi	r8, 31
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	sub	r5, r8, r5
	sll	r7, r7, r5
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	srl	r2, r2, r5
	or	r2, r7, r2
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	srl	r4, r4, r5
.L493:
	or	r5, r2, r6
	or	r3, r4, r3
	mov	r2, r5
	mov	r4, r3
	mov	r3, r4
	addi	sp, sp, 12
	ret
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	ldw	r4, 4(sp)
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -32
	blt	r2, zero, .L497
	srl	r2, r3, r2
	mov	r6, zero
	br	.L498
.L497:
	slli	r5, r3, 1
	movi	r6, 31
	ldw	r2, 0(sp)
	sub	r2, r6, r2
	sll	r5, r5, r2
	ldw	r2, 0(sp)
	srl	r2, r4, r2
	or	r2, r5, r2
	ldw	r5, 0(sp)
	srl	r6, r3, r5
.L498:
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	addi	r5, r5, -32
	blt	r5, zero, .L499
	sll	r3, r4, r5
	mov	r4, zero
	br	.L500
.L499:
	srli	r7, r4, 1
	movi	r8, 31
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	sub	r5, r8, r5
	srl	r7, r7, r5
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	sll	r3, r3, r5
	or	r3, r7, r3
	ldw	r5, 0(sp)
	sub	r5, zero, r5
	andi	r5, r5, 63
	sll	r4, r4, r5
.L500:
	or	r5, r4, r2
	or	r2, r3, r6
	mov	r4, r5
	mov	r3, r2
	mov	r2, r4
	addi	sp, sp, 12
	ret
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	rol	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	ror	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	rol	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	ror	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
	addi	sp, sp, -8
	mov	r2, r4
	stw	r5, 0(sp)
	sth	r2, 4(sp)
	ldhu	r3, 4(sp)
	ldw	r2, 0(sp)
	sll	r2, r3, r2
	mov	r5, r2
	ldhu	r3, 4(sp)
	movi	r4, 16
	ldw	r2, 0(sp)
	sub	r2, r4, r2
	srl	r2, r3, r2
	or	r2, r5, r2
	addi	sp, sp, 8
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	addi	sp, sp, -8
	mov	r2, r4
	stw	r5, 0(sp)
	sth	r2, 4(sp)
	ldhu	r3, 4(sp)
	ldw	r2, 0(sp)
	srl	r2, r3, r2
	mov	r5, r2
	ldhu	r3, 4(sp)
	movi	r4, 16
	ldw	r2, 0(sp)
	sub	r2, r4, r2
	sll	r2, r3, r2
	or	r2, r5, r2
	addi	sp, sp, 8
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	addi	sp, sp, -8
	mov	r2, r4
	stw	r5, 0(sp)
	stb	r2, 4(sp)
	ldbu	r3, 4(sp)
	ldw	r2, 0(sp)
	sll	r2, r3, r2
	mov	r5, r2
	ldbu	r3, 4(sp)
	movi	r4, 8
	ldw	r2, 0(sp)
	sub	r2, r4, r2
	srl	r2, r3, r2
	or	r2, r5, r2
	addi	sp, sp, 8
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	addi	sp, sp, -8
	mov	r2, r4
	stw	r5, 0(sp)
	stb	r2, 4(sp)
	ldbu	r3, 4(sp)
	ldw	r2, 0(sp)
	srl	r2, r3, r2
	mov	r5, r2
	ldbu	r3, 4(sp)
	movi	r4, 8
	ldw	r2, 0(sp)
	sub	r2, r4, r2
	sll	r2, r3, r2
	or	r2, r5, r2
	addi	sp, sp, 8
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	addi	sp, sp, -8
	mov	r2, r4
	sth	r2, 0(sp)
	movi	r2, 255
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	slli	r2, r2, 8
	ldhu	r3, 0(sp)
	and	r2, r3, r2
	srli	r3, r2, 8
	ldw	r4, 4(sp)
	ldhu	r2, 0(sp)
	and	r2, r2, r4
	slli	r2, r2, 8
	or	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	movi	r2, 255
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	slli	r3, r2, 24
	ldw	r2, 0(sp)
	and	r2, r3, r2
	srli	r3, r2, 24
	ldw	r2, 4(sp)
	slli	r4, r2, 16
	ldw	r2, 0(sp)
	and	r2, r4, r2
	srli	r2, r2, 8
	or	r3, r3, r2
	ldw	r2, 4(sp)
	slli	r4, r2, 8
	ldw	r2, 0(sp)
	and	r2, r4, r2
	slli	r2, r2, 8
	or	r3, r3, r2
	ldw	r4, 0(sp)
	ldw	r2, 4(sp)
	and	r2, r4, r2
	slli	r2, r2, 24
	or	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	addi	sp, sp, -16
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	movi	r2, 255
	stw	r2, 8(sp)
	stw	zero, 12(sp)
	ldw	r2, 8(sp)
	slli	r2, r2, 24
	ldw	r3, 4(sp)
	and	r2, r3, r2
	srli	r3, r2, 24
	mov	r6, zero
	ldw	r2, 8(sp)
	slli	r2, r2, 16
	ldw	r4, 4(sp)
	and	r2, r4, r2
	srli	r2, r2, 8
	mov	r5, zero
	or	r4, r3, r2
	or	r5, r6, r5
	ldw	r2, 8(sp)
	slli	r3, r2, 8
	mov	r6, zero
	ldw	r2, 0(sp)
	and	r2, r2, r6
	ldw	r6, 4(sp)
	and	r3, r6, r3
	slli	r6, r3, 8
	srli	r2, r2, 24
	or	r2, r6, r2
	srli	r3, r3, 24
	or	r4, r4, r2
	or	r5, r5, r3
	ldw	r2, 8(sp)
	sll	r3, r2, zero
	mov	r6, zero
	ldw	r2, 0(sp)
	and	r2, r2, r6
	ldw	r6, 4(sp)
	and	r3, r6, r3
	slli	r6, r3, 24
	srli	r2, r2, 8
	or	r2, r6, r2
	srli	r3, r3, 8
	or	r4, r4, r2
	or	r5, r5, r3
	ldw	r2, 8(sp)
	srli	r3, r2, 8
	ldw	r2, 12(sp)
	slli	r2, r2, 24
	or	r2, r3, r2
	ldw	r3, 8(sp)
	slli	r3, r3, 24
	ldw	r6, 0(sp)
	and	r3, r6, r3
	ldw	r6, 4(sp)
	and	r2, r6, r2
	srli	r6, r3, 24
	slli	r2, r2, 8
	or	r2, r6, r2
	slli	r3, r3, 8
	or	r4, r4, r3
	or	r5, r5, r2
	ldw	r2, 8(sp)
	srli	r3, r2, 16
	ldw	r2, 12(sp)
	slli	r2, r2, 16
	or	r2, r3, r2
	ldw	r3, 8(sp)
	slli	r3, r3, 16
	ldw	r6, 0(sp)
	and	r3, r6, r3
	ldw	r6, 4(sp)
	and	r2, r6, r2
	srli	r6, r3, 8
	slli	r2, r2, 24
	or	r2, r6, r2
	slli	r3, r3, 24
	or	r4, r4, r3
	or	r3, r5, r2
	ldw	r2, 8(sp)
	slli	r2, r2, 8
	ldw	r5, 0(sp)
	and	r2, r5, r2
	slli	r2, r2, 8
	mov	r5, zero
	or	r4, r4, r5
	or	r3, r3, r2
	ldw	r5, 0(sp)
	ldw	r2, 8(sp)
	and	r2, r5, r2
	slli	r2, r2, 24
	mov	r5, zero
	or	r4, r4, r5
	or	r3, r3, r2
	mov	r2, r4
	addi	sp, sp, 16
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	zero, 4(sp)
	br	.L537
.L540:
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
	srl	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L538
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	br	.L539
.L538:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L537:
	ldw	r2, 4(sp)
	cmpltui	r2, r2, 32
	bne	r2, zero, .L540
	mov	r2, zero
.L539:
	addi	sp, sp, 8
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	addi	sp, sp, -4
	stw	r16, 0(sp)
	bne	r4, zero, .L543
	mov	r16, zero
	br	.L544
.L543:
	mov	r2, r4
	movi	r16, 1
	br	.L545
.L546:
	srai	r2, r2, 1
	addi	r16, r16, 1
.L545:
	andi	r3, r2, 1
	beq	r3, zero, .L546
	nop
.L544:
	mov	r2, r16
	ldw	r16, 0(sp)
	addi	sp, sp, 4
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r4, 0(sp)
	movhi	r5, 65408
	addi	r5, r5, -1
	ldw	r4, 0(sp)
	call	__ltsf2
	blt	r2, zero, .L549
	movhi	r5, 32640
	addi	r5, r5, -1
	ldw	r4, 0(sp)
	call	__gtsf2
	bge	zero, r2, .L554
.L549:
	movi	r2, 1
	br	.L553
.L554:
	mov	r2, zero
.L553:
	nop
	ldw	ra, 4(sp)
	addi	sp, sp, 8
	ret
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__ltdf2
	blt	r2, zero, .L557
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__gtdf2
	bge	zero, r2, .L562
.L557:
	movi	r2, 1
	br	.L561
.L562:
	mov	r2, zero
.L561:
	nop
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__ltdf2
	blt	r2, zero, .L565
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__gtdf2
	bge	zero, r2, .L570
.L565:
	movi	r2, 1
	br	.L569
.L570:
	mov	r2, zero
.L569:
	nop
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	__floatsidf
	mov	r5, r2
	mov	r4, r3
	ldw	r2, 4(sp)
	stw	r5, 0(r2)
	stw	r4, 4(r2)
	nop
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 4(sp)
	ldw	r4, 4(sp)
	call	__unordsf2
	bne	r2, zero, .L575
	ldw	r2, 4(sp)
	mov	r5, r2
	mov	r4, r2
	call	__addsf3
	mov	r3, r2
	mov	r2, r3
	mov	r5, r2
	ldw	r4, 4(sp)
	call	__eqsf2
	beq	r2, zero, .L575
	ldw	r2, 0(sp)
	bge	r2, zero, .L576
	movhi	r2, 16128
	br	.L577
.L576:
	movhi	r2, 16384
.L577:
	stw	r2, 8(sp)
.L580:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L578
	ldw	r5, 8(sp)
	ldw	r4, 4(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 4(sp)
.L578:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L582
	ldw	r5, 8(sp)
	ldw	r4, 8(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 8(sp)
	br	.L580
.L582:
	nop
.L575:
	ldw	r2, 4(sp)
	ldw	ra, 12(sp)
	addi	sp, sp, 16
	ret
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	ldw	r6, 4(sp)
	ldw	r7, 8(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__unorddf2
	bne	r2, zero, .L585
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	mov	r6, r3
	mov	r7, r2
	mov	r4, r3
	mov	r5, r2
	call	__adddf3
	mov	r5, r2
	mov	r4, r3
	mov	r3, r5
	mov	r2, r4
	mov	r6, r3
	mov	r7, r2
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__eqdf2
	beq	r2, zero, .L585
	ldw	r2, 0(sp)
	bge	r2, zero, .L586
	mov	r3, zero
	movhi	r2, 16352
	br	.L587
.L586:
	mov	r3, zero
	movhi	r2, 16384
.L587:
	stw	r3, 12(sp)
	stw	r2, 16(sp)
.L590:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L588
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__muldf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 4(sp)
	stw	r4, 8(sp)
.L588:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L592
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 12(sp)
	ldw	r5, 16(sp)
	call	__muldf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 12(sp)
	stw	r4, 16(sp)
	br	.L590
.L592:
	nop
.L585:
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	ldw	ra, 20(sp)
	addi	sp, sp, 24
	ret
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	ldw	r6, 4(sp)
	ldw	r7, 8(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__unorddf2
	bne	r2, zero, .L595
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	mov	r6, r3
	mov	r7, r2
	mov	r4, r3
	mov	r5, r2
	call	__adddf3
	mov	r5, r2
	mov	r4, r3
	mov	r3, r5
	mov	r2, r4
	mov	r6, r3
	mov	r7, r2
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__eqdf2
	beq	r2, zero, .L595
	ldw	r2, 0(sp)
	bge	r2, zero, .L596
	mov	r3, zero
	movhi	r2, 16352
	br	.L597
.L596:
	mov	r3, zero
	movhi	r2, 16384
.L597:
	stw	r3, 12(sp)
	stw	r2, 16(sp)
.L600:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L598
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__muldf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 4(sp)
	stw	r4, 8(sp)
.L598:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L602
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 12(sp)
	ldw	r5, 16(sp)
	call	__muldf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 12(sp)
	stw	r4, 16(sp)
	br	.L600
.L602:
	nop
.L595:
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	ldw	ra, 20(sp)
	addi	sp, sp, 24
	ret
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	addi	sp, sp, -16
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	br	.L605
.L606:
	ldw	r2, 4(sp)
	addi	r3, r2, 1
	stw	r3, 4(sp)
	ldbu	r4, 0(r2)
	ldw	r2, 12(sp)
	addi	r3, r2, 1
	stw	r3, 12(sp)
	ldbu	r3, 0(r2)
	xor	r3, r4, r3
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L605:
	ldw	r2, 0(sp)
	bne	r2, zero, .L606
	ldw	r2, 8(sp)
	addi	sp, sp, 16
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r4, 8(sp)
	call	strlen
	mov	r3, r2
	ldw	r2, 8(sp)
	add	r2, r2, r3
	stw	r2, 12(sp)
	br	.L610
.L612:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L610:
	ldw	r2, 0(sp)
	beq	r2, zero, .L611
	ldw	r2, 4(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 12(sp)
	stb	r3, 0(r2)
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L612
.L611:
	ldw	r2, 0(sp)
	bne	r2, zero, .L613
	ldw	r2, 12(sp)
	stb	zero, 0(r2)
.L613:
	ldw	r2, 8(sp)
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	stw	zero, 8(sp)
	br	.L617
.L622:
	nop
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
.L617:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	bgeu	r3, r2, .L618
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	add	r2, r3, r2
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L622
.L618:
	ldw	r2, 8(sp)
	addi	sp, sp, 12
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	br	.L625
.L629:
	ldw	r2, 0(sp)
	stw	r2, 8(sp)
	br	.L626
.L628:
	ldw	r2, 8(sp)
	addi	r3, r2, 1
	stw	r3, 8(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r3, r2, .L626
	ldw	r2, 4(sp)
	br	.L627
.L626:
	ldw	r2, 8(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L628
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L625:
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L629
	mov	r2, zero
.L627:
	addi	sp, sp, 12
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	addi	sp, sp, -8
	mov	r2, r4
	stw	r5, 0(sp)
	stw	zero, 4(sp)
.L633:
	ldb	r3, 0(r2)
	ldw	r4, 0(sp)
	bne	r4, r3, .L632
	stw	r2, 4(sp)
.L632:
	mov	r3, r2
	addi	r2, r3, 1
	ldb	r3, 0(r3)
	bne	r3, zero, .L633
	ldw	r2, 4(sp)
	addi	sp, sp, 8
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	strlen
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	bne	r2, zero, .L639
	ldw	r2, 4(sp)
	br	.L638
.L641:
	ldw	r6, 12(sp)
	ldw	r5, 0(sp)
	ldw	r4, 8(sp)
	call	strncmp
	bne	r2, zero, .L640
	ldw	r2, 8(sp)
	br	.L638
.L640:
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L639:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r5, r2
	ldw	r4, 4(sp)
	call	strchr
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	bne	r2, zero, .L641
	mov	r2, zero
.L638:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L644
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__gtdf2
	blt	zero, r2, .L646
.L644:
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__gtdf2
	bge	zero, r2, .L647
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__ltdf2
	bge	r2, zero, .L647
.L646:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	xorhi	r3, r3, 32768
	br	.L650
.L647:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
.L650:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	sub	r2, r3, r2
	ldw	r3, 12(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 0(sp)
	bne	r2, zero, .L655
	ldw	r2, 12(sp)
	br	.L656
.L655:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	cmpltu	r2, r3, r2
	andi	r2, r2, 0xff
	beq	r2, zero, .L658
	mov	r2, zero
	br	.L656
.L660:
	ldw	r2, 12(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r3, r2, .L659
	ldw	r2, 12(sp)
	addi	r3, r2, 1
	ldw	r2, 0(sp)
	addi	r4, r2, -1
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	mov	r6, r4
	mov	r5, r2
	mov	r4, r3
	call	memcmp
	bne	r2, zero, .L659
	ldw	r2, 12(sp)
	br	.L656
.L659:
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
.L658:
	ldw	r2, 12(sp)
	ldw	r3, 16(sp)
	bgeu	r3, r2, .L660
	mov	r2, zero
.L656:
	ldw	ra, 20(sp)
	addi	sp, sp, 24
	ret
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r6, 0(sp)
	ldw	r5, 4(sp)
	ldw	r4, 8(sp)
	call	memcpy
	mov	r3, r2
	ldw	r2, 0(sp)
	add	r2, r3, r2
	ldw	ra, 12(sp)
	addi	sp, sp, 16
	ret
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	stw	zero, 12(sp)
	stw	zero, 16(sp)
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__ltdf2
	bge	r2, zero, .L666
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	xorhi	r2, r2, 32768
	stw	r3, 4(sp)
	stw	r2, 8(sp)
	movi	r2, 1
	stw	r2, 16(sp)
.L666:
	mov	r6, zero
	movhi	r7, 16368
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__gedf2
	blt	r2, zero, .L681
	br	.L670
.L671:
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
	mov	r6, zero
	movhi	r7, 16384
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__divdf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 4(sp)
	stw	r4, 8(sp)
.L670:
	mov	r6, zero
	movhi	r7, 16368
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__gedf2
	bge	r2, zero, .L671
	br	.L672
.L681:
	mov	r6, zero
	movhi	r7, 16352
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__ltdf2
	bge	r2, zero, .L672
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__eqdf2
	beq	r2, zero, .L672
	br	.L674
.L675:
	ldw	r2, 12(sp)
	addi	r2, r2, -1
	stw	r2, 12(sp)
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	mov	r6, r3
	mov	r7, r2
	mov	r4, r3
	mov	r5, r2
	call	__adddf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 4(sp)
	stw	r4, 8(sp)
.L674:
	mov	r6, zero
	movhi	r7, 16352
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__ltdf2
	blt	r2, zero, .L675
.L672:
	ldw	r2, 0(sp)
	ldw	r3, 12(sp)
	stw	r3, 0(r2)
	ldw	r2, 16(sp)
	beq	r2, zero, .L676
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	xorhi	r2, r2, 32768
	stw	r3, 4(sp)
	stw	r2, 8(sp)
.L676:
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	ldw	ra, 20(sp)
	addi	sp, sp, 24
	ret
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	addi	sp, sp, -32
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	stw	zero, 24(sp)
	stw	zero, 28(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 12(sp)
	stw	r2, 20(sp)
	br	.L684
.L687:
	ldw	r2, 16(sp)
	andi	r4, r2, 1
	ldw	r2, 20(sp)
	and	r3, r2, zero
	mov	r2, r4
	or	r2, r2, r3
	beq	r2, zero, .L685
	ldw	r4, 24(sp)
	ldw	r6, 28(sp)
	ldw	r7, 0(sp)
	ldw	r5, 4(sp)
	add	r3, r4, r7
	cmpltu	r4, r3, r4
	add	r2, r6, r5
	add	r2, r4, r2
	stw	r3, 24(sp)
	stw	r2, 28(sp)
.L685:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	ldw	r2, 4(sp)
	slli	r2, r2, 1
	or	r2, r3, r2
	ldw	r3, 0(sp)
	slli	r3, r3, 1
	stw	r3, 0(sp)
	stw	r2, 4(sp)
	ldw	r2, 20(sp)
	slli	r3, r2, 31
	ldw	r2, 16(sp)
	srli	r2, r2, 1
	or	r2, r3, r2
	ldw	r3, 20(sp)
	srli	r3, r3, 1
	stw	r2, 16(sp)
	stw	r3, 20(sp)
.L684:
	ldw	r2, 16(sp)
	ldw	r3, 20(sp)
	or	r2, r2, r3
	bne	r2, zero, .L687
	ldw	r2, 24(sp)
	ldw	r3, 28(sp)
	addi	sp, sp, 32
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	movi	r2, 1
	stw	r2, 16(sp)
	stw	zero, 12(sp)
	br	.L691
.L693:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 16(sp)
	add	r2, r2, r2
	stw	r2, 16(sp)
.L691:
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L694
	ldw	r2, 16(sp)
	beq	r2, zero, .L694
	ldw	r2, 4(sp)
	bge	r2, zero, .L693
	br	.L694
.L696:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L695
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	or	r2, r3, r2
	stw	r2, 12(sp)
.L695:
	ldw	r2, 16(sp)
	srli	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
.L694:
	ldw	r2, 16(sp)
	bne	r2, zero, .L696
	ldw	r2, 0(sp)
	beq	r2, zero, .L697
	ldw	r2, 8(sp)
	br	.L698
.L697:
	ldw	r2, 12(sp)
.L698:
	addi	sp, sp, 20
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	mov	r2, r4
	stb	r4, 0(sp)
	ldb	r2, 0(sp)
	bge	r2, zero, .L701
	ldbu	r2, 0(sp)
	nor	r2, zero, r2
	stb	r2, 0(sp)
.L701:
	ldb	r2, 0(sp)
	bne	r2, zero, .L702
	movi	r2, 7
	br	.L703
.L702:
	ldb	r2, 0(sp)
	slli	r2, r2, 8
	mov	r4, r2
	call	__clzsi2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, -1
.L703:
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r2, 4(sp)
	bge	r2, zero, .L706
	ldw	r2, 0(sp)
	nor	r3, zero, r2
	ldw	r2, 4(sp)
	nor	r2, zero, r2
	stw	r3, 0(sp)
	stw	r2, 4(sp)
.L706:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	or	r2, r2, r3
	bne	r2, zero, .L708
	movi	r2, 63
	br	.L709
.L708:
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__clzdi2
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, -1
.L709:
	ldw	ra, 12(sp)
	addi	sp, sp, 16
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	stw	zero, 8(sp)
	br	.L712
.L714:
	ldw	r2, 4(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L713
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L713:
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	add	r2, r2, r2
	stw	r2, 0(sp)
.L712:
	ldw	r2, 4(sp)
	bne	r2, zero, .L714
	ldw	r2, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	addi	sp, sp, -24
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 3
	stw	r2, 12(sp)
	ldw	r3, 0(sp)
	movi	r2, -8
	and	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L718
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L725
.L718:
	stw	zero, 20(sp)
	br	.L720
.L721:
	ldw	r2, 20(sp)
	slli	r2, r2, 3
	ldw	r3, 8(sp)
	add	r2, r3, r2
	ldw	r3, 20(sp)
	slli	r3, r3, 3
	ldw	r4, 4(sp)
	add	r3, r4, r3
	ldw	r5, 0(r3)
	ldw	r4, 4(r3)
	stw	r5, 0(r2)
	stw	r4, 4(r2)
	ldw	r2, 20(sp)
	addi	r2, r2, 1
	stw	r2, 20(sp)
.L720:
	ldw	r3, 20(sp)
	ldw	r2, 12(sp)
	bltu	r3, r2, .L721
	br	.L722
.L723:
	ldw	r3, 8(sp)
	ldw	r2, 16(sp)
	add	r2, r3, r2
	ldw	r4, 4(sp)
	ldw	r3, 16(sp)
	add	r3, r4, r3
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 16(sp)
	addi	r2, r2, 1
	stw	r2, 16(sp)
.L722:
	ldw	r2, 0(sp)
	ldw	r3, 16(sp)
	bltu	r3, r2, .L723
	br	.L724
.L726:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	ldw	r4, 4(sp)
	ldw	r3, 0(sp)
	add	r3, r4, r3
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L725:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L726
	nop
.L724:
	nop
	addi	sp, sp, 24
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 1
	stw	r2, 12(sp)
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L729
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L735
.L729:
	stw	zero, 16(sp)
	br	.L731
.L732:
	ldw	r2, 16(sp)
	add	r2, r2, r2
	ldw	r3, 8(sp)
	add	r3, r3, r2
	ldw	r2, 16(sp)
	add	r2, r2, r2
	ldw	r4, 4(sp)
	add	r2, r4, r2
	ldhu	r2, 0(r2)
	sth	r2, 0(r3)
	ldw	r2, 16(sp)
	addi	r2, r2, 1
	stw	r2, 16(sp)
.L731:
	ldw	r3, 16(sp)
	ldw	r2, 12(sp)
	bltu	r3, r2, .L732
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L734
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	ldw	r3, 8(sp)
	add	r2, r3, r2
	ldw	r4, 4(sp)
	ldw	r3, 0(sp)
	add	r3, r4, r3
	ldbu	r3, -1(r3)
	stb	r3, 0(r2)
	br	.L734
.L736:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	ldw	r4, 4(sp)
	ldw	r3, 0(sp)
	add	r3, r4, r3
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L735:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L736
	nop
.L734:
	nop
	addi	sp, sp, 20
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	addi	sp, sp, -24
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 2
	stw	r2, 12(sp)
	ldw	r3, 0(sp)
	movi	r2, -4
	and	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L739
	ldw	r3, 4(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L746
.L739:
	stw	zero, 20(sp)
	br	.L741
.L742:
	ldw	r2, 20(sp)
	slli	r2, r2, 2
	ldw	r3, 8(sp)
	add	r2, r3, r2
	ldw	r3, 20(sp)
	slli	r3, r3, 2
	ldw	r4, 4(sp)
	add	r3, r4, r3
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
	ldw	r2, 20(sp)
	addi	r2, r2, 1
	stw	r2, 20(sp)
.L741:
	ldw	r3, 20(sp)
	ldw	r2, 12(sp)
	bltu	r3, r2, .L742
	br	.L743
.L744:
	ldw	r3, 8(sp)
	ldw	r2, 16(sp)
	add	r2, r3, r2
	ldw	r4, 4(sp)
	ldw	r3, 16(sp)
	add	r3, r4, r3
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 16(sp)
	addi	r2, r2, 1
	stw	r2, 16(sp)
.L743:
	ldw	r2, 0(sp)
	ldw	r3, 16(sp)
	bltu	r3, r2, .L744
	br	.L745
.L747:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	ldw	r4, 4(sp)
	ldw	r3, 0(sp)
	add	r3, r4, r3
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L746:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L747
	nop
.L745:
	nop
	addi	sp, sp, 24
	ret
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 4(sp)
	ldw	r5, 0(sp)
	mov	r4, r2
	call	__modsi3
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r4, 0(sp)
	ldw	r4, 0(sp)
	call	__floatunsidf
	mov	r5, r2
	mov	r4, r3
	mov	r2, r5
	mov	r3, r4
	ldw	ra, 4(sp)
	addi	sp, sp, 8
	ret
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r4, 0(sp)
	ldw	r4, 0(sp)
	call	__floatunsisf
	mov	r3, r2
	mov	r2, r3
	ldw	ra, 4(sp)
	addi	sp, sp, 8
	ret
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__floatundidf
	mov	r5, r2
	mov	r4, r3
	mov	r2, r5
	mov	r3, r4
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__floatundisf
	mov	r3, r2
	mov	r2, r3
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 4(sp)
	ldw	r5, 0(sp)
	mov	r4, r2
	call	__umodsi3
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	addi	sp, sp, -8
	mov	r2, r4
	sth	r4, 0(sp)
	stw	zero, 4(sp)
	br	.L768
.L771:
	movi	r3, 15
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	ldhu	r3, 0(sp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	bne	r2, zero, .L773
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L768:
	ldw	r2, 4(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L771
	br	.L770
.L773:
	nop
.L770:
	ldw	r2, 4(sp)
	addi	sp, sp, 8
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	addi	sp, sp, -8
	mov	r2, r4
	sth	r4, 0(sp)
	stw	zero, 4(sp)
	br	.L776
.L779:
	ldhu	r3, 0(sp)
	ldw	r2, 4(sp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	bne	r2, zero, .L781
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L776:
	ldw	r2, 4(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L779
	br	.L778
.L781:
	nop
.L778:
	ldw	r2, 4(sp)
	addi	sp, sp, 8
	ret
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	r4, 0(sp)
	movhi	r5, 18176
	ldw	r4, 0(sp)
	call	__gesf2
	blt	r2, zero, .L788
	movhi	r5, 18176
	ldw	r4, 0(sp)
	call	__subsf3
	mov	r3, r2
	mov	r2, r3
	mov	r4, r2
	call	__fixsfsi
	mov	r3, r2
	movui	r2, 32768
	add	r2, r3, r2
	br	.L786
.L788:
	ldw	r4, 0(sp)
	call	__fixsfsi
.L786:
	ldw	ra, 4(sp)
	addi	sp, sp, 8
	ret
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	addi	sp, sp, -12
	mov	r2, r4
	sth	r4, 0(sp)
	stw	zero, 4(sp)
	stw	zero, 8(sp)
	br	.L791
.L793:
	ldhu	r3, 0(sp)
	ldw	r2, 8(sp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L792
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L792:
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
.L791:
	ldw	r2, 8(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L793
	ldw	r2, 4(sp)
	andi	r2, r2, 1
	addi	sp, sp, 12
	ret
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	addi	sp, sp, -12
	mov	r2, r4
	sth	r4, 0(sp)
	stw	zero, 4(sp)
	stw	zero, 8(sp)
	br	.L797
.L799:
	ldhu	r3, 0(sp)
	ldw	r2, 8(sp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L798
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L798:
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
.L797:
	ldw	r2, 8(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L799
	ldw	r2, 4(sp)
	addi	sp, sp, 12
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	stw	zero, 8(sp)
	br	.L803
.L805:
	ldw	r2, 4(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L804
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L804:
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	add	r2, r2, r2
	stw	r2, 0(sp)
.L803:
	ldw	r2, 4(sp)
	bne	r2, zero, .L805
	ldw	r2, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	addi	sp, sp, -12
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	stw	zero, 8(sp)
	ldw	r2, 4(sp)
	bne	r2, zero, .L811
	mov	r2, zero
	br	.L810
.L813:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L812
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L812:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 1
	stw	r2, 0(sp)
.L811:
	ldw	r2, 0(sp)
	bne	r2, zero, .L813
	ldw	r2, 8(sp)
.L810:
	addi	sp, sp, 12
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	movi	r2, 1
	stw	r2, 16(sp)
	stw	zero, 12(sp)
	br	.L816
.L818:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 16(sp)
	add	r2, r2, r2
	stw	r2, 16(sp)
.L816:
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L819
	ldw	r2, 16(sp)
	beq	r2, zero, .L819
	ldw	r2, 4(sp)
	bge	r2, zero, .L818
	br	.L819
.L821:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L820
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	or	r2, r3, r2
	stw	r2, 12(sp)
.L820:
	ldw	r2, 16(sp)
	srli	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
.L819:
	ldw	r2, 16(sp)
	bne	r2, zero, .L821
	ldw	r2, 0(sp)
	beq	r2, zero, .L822
	ldw	r2, 8(sp)
	br	.L823
.L822:
	ldw	r2, 12(sp)
.L823:
	addi	sp, sp, 20
	ret
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__ltsf2
	bge	r2, zero, .L833
	movi	r2, -1
	br	.L828
.L833:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__gtsf2
	bge	zero, r2, .L834
	movi	r2, 1
	br	.L828
.L834:
	mov	r2, zero
.L828:
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L844
	movi	r2, -1
	br	.L839
.L844:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__gtdf2
	bge	zero, r2, .L845
	movi	r2, 1
	br	.L839
.L845:
	mov	r2, zero
.L839:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 4(sp)
	mov	r4, r2
	srai	r2, r2, 31
	mov	r3, r2
	ldw	r2, 0(sp)
	mov	r5, r2
	srai	r2, r2, 31
	mov	r6, r5
	mov	r7, r2
	mov	r5, r3
	call	__muldi3
	mov	r5, r2
	mov	r4, r3
	mov	r2, r5
	mov	r3, r4
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 4(sp)
	mov	r4, r2
	mov	r3, zero
	ldw	r2, 0(sp)
	mov	r5, r2
	mov	r2, zero
	mov	r6, r5
	mov	r7, r2
	mov	r5, r3
	call	__muldi3
	mov	r5, r2
	mov	r4, r3
	mov	r2, r5
	mov	r3, r4
	ldw	ra, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	addi	sp, sp, -20
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	stw	zero, 12(sp)
	stw	zero, 8(sp)
	ldw	r2, 0(sp)
	bge	r2, zero, .L854
	ldw	r2, 0(sp)
	sub	r2, zero, r2
	stw	r2, 0(sp)
	movi	r2, 1
	stw	r2, 12(sp)
.L854:
	stb	zero, 19(sp)
	br	.L855
.L858:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L856
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L856:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldbu	r2, 19(sp)
	addi	r2, r2, 1
	stb	r2, 19(sp)
.L855:
	ldw	r2, 0(sp)
	beq	r2, zero, .L857
	ldbu	r2, 19(sp)
	andi	r2, r2, 0xff
	cmpltui	r2, r2, 32
	bne	r2, zero, .L858
.L857:
	ldw	r2, 12(sp)
	beq	r2, zero, .L859
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	br	.L861
.L859:
	ldw	r2, 8(sp)
.L861:
	nop
	addi	sp, sp, 20
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	stw	zero, 12(sp)
	ldw	r2, 4(sp)
	bge	r2, zero, .L864
	ldw	r2, 4(sp)
	sub	r2, zero, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	stw	r2, 12(sp)
.L864:
	ldw	r2, 0(sp)
	bge	r2, zero, .L865
	ldw	r2, 0(sp)
	sub	r2, zero, r2
	stw	r2, 0(sp)
	ldw	r2, 12(sp)
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	stw	r2, 12(sp)
.L865:
	mov	r6, zero
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__udivmodsi4
	stw	r2, 8(sp)
	ldw	r2, 12(sp)
	beq	r2, zero, .L866
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	stw	r2, 8(sp)
.L866:
	ldw	r2, 8(sp)
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	stw	zero, 12(sp)
	ldw	r2, 4(sp)
	bge	r2, zero, .L870
	ldw	r2, 4(sp)
	sub	r2, zero, r2
	stw	r2, 4(sp)
	movi	r2, 1
	stw	r2, 12(sp)
.L870:
	ldw	r2, 0(sp)
	bge	r2, zero, .L871
	ldw	r2, 0(sp)
	sub	r2, zero, r2
	stw	r2, 0(sp)
.L871:
	movi	r6, 1
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__udivmodsi4
	stw	r2, 8(sp)
	ldw	r2, 12(sp)
	beq	r2, zero, .L872
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	stw	r2, 8(sp)
.L872:
	ldw	r2, 8(sp)
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	addi	sp, sp, -16
	mov	r2, r4
	mov	r3, r5
	stw	r6, 0(sp)
	sth	r4, 8(sp)
	mov	r2, r5
	sth	r5, 4(sp)
	movi	r2, 1
	sth	r2, 14(sp)
	sth	zero, 12(sp)
	br	.L876
.L878:
	ldhu	r2, 4(sp)
	add	r2, r2, r2
	sth	r2, 4(sp)
	ldhu	r2, 14(sp)
	add	r2, r2, r2
	sth	r2, 14(sp)
.L876:
	ldhu	r3, 4(sp)
	ldhu	r2, 8(sp)
	bgeu	r3, r2, .L879
	ldhu	r2, 14(sp)
	beq	r2, zero, .L879
	ldhu	r2, 4(sp)
	andi	r2, r2, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	bge	r2, zero, .L878
	br	.L879
.L881:
	ldhu	r3, 8(sp)
	ldhu	r2, 4(sp)
	bltu	r3, r2, .L880
	ldhu	r3, 8(sp)
	ldhu	r2, 4(sp)
	sub	r2, r3, r2
	sth	r2, 8(sp)
	ldhu	r3, 12(sp)
	ldhu	r2, 14(sp)
	or	r2, r3, r2
	sth	r2, 12(sp)
.L880:
	ldhu	r2, 14(sp)
	srli	r2, r2, 1
	sth	r2, 14(sp)
	ldhu	r2, 4(sp)
	srli	r2, r2, 1
	sth	r2, 4(sp)
.L879:
	ldhu	r2, 14(sp)
	bne	r2, zero, .L881
	ldw	r2, 0(sp)
	beq	r2, zero, .L882
	ldhu	r2, 8(sp)
	br	.L883
.L882:
	ldhu	r2, 12(sp)
.L883:
	addi	sp, sp, 16
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	movi	r2, 1
	stw	r2, 16(sp)
	stw	zero, 12(sp)
	br	.L886
.L888:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 16(sp)
	add	r2, r2, r2
	stw	r2, 16(sp)
.L886:
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L889
	ldw	r2, 16(sp)
	beq	r2, zero, .L889
	ldw	r2, 4(sp)
	bge	r2, zero, .L888
	br	.L889
.L891:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L890
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	or	r2, r3, r2
	stw	r2, 12(sp)
.L890:
	ldw	r2, 16(sp)
	srli	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
.L889:
	ldw	r2, 16(sp)
	bne	r2, zero, .L891
	ldw	r2, 0(sp)
	beq	r2, zero, .L892
	ldw	r2, 8(sp)
	br	.L893
.L892:
	ldw	r2, 12(sp)
.L893:
	addi	sp, sp, 20
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	addi	sp, sp, -32
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	movi	r2, 32
	stw	r2, 28(sp)
	ldw	r2, 4(sp)
	stw	r2, 20(sp)
	ldw	r2, 8(sp)
	stw	r2, 24(sp)
	ldw	r3, 0(sp)
	ldw	r2, 28(sp)
	and	r2, r3, r2
	beq	r2, zero, .L896
	stw	zero, 12(sp)
	ldw	r3, 20(sp)
	ldw	r4, 0(sp)
	ldw	r2, 28(sp)
	sub	r2, r4, r2
	sll	r2, r3, r2
	stw	r2, 16(sp)
	br	.L897
.L896:
	ldw	r2, 0(sp)
	bne	r2, zero, .L898
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	br	.L900
.L898:
	ldw	r3, 20(sp)
	ldw	r2, 0(sp)
	sll	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 24(sp)
	mov	r3, r2
	ldw	r2, 0(sp)
	sll	r3, r3, r2
	ldw	r4, 20(sp)
	ldw	r5, 28(sp)
	ldw	r2, 0(sp)
	sub	r2, r5, r2
	srl	r2, r4, r2
	or	r2, r3, r2
	stw	r2, 16(sp)
.L897:
	ldw	r2, 12(sp)
	ldw	r3, 16(sp)
.L900:
	addi	sp, sp, 32
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	addi	sp, sp, -32
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	movi	r2, 32
	stw	r2, 28(sp)
	ldw	r2, 4(sp)
	stw	r2, 20(sp)
	ldw	r2, 8(sp)
	stw	r2, 24(sp)
	ldw	r3, 0(sp)
	ldw	r2, 28(sp)
	and	r2, r3, r2
	beq	r2, zero, .L903
	ldw	r3, 24(sp)
	ldw	r2, 28(sp)
	addi	r2, r2, -1
	sra	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 24(sp)
	ldw	r4, 0(sp)
	ldw	r2, 28(sp)
	sub	r2, r4, r2
	sra	r2, r3, r2
	stw	r2, 12(sp)
	br	.L904
.L903:
	ldw	r2, 0(sp)
	bne	r2, zero, .L905
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	br	.L907
.L905:
	ldw	r3, 24(sp)
	ldw	r2, 0(sp)
	sra	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 24(sp)
	mov	r4, r2
	ldw	r3, 28(sp)
	ldw	r2, 0(sp)
	sub	r2, r3, r2
	sll	r3, r4, r2
	ldw	r4, 20(sp)
	ldw	r2, 0(sp)
	srl	r2, r4, r2
	or	r2, r3, r2
	stw	r2, 12(sp)
.L904:
	ldw	r2, 12(sp)
	ldw	r3, 16(sp)
.L907:
	addi	sp, sp, 32
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r2, 4(sp)
	srli	r4, r2, 24
	mov	r5, zero
	ldw	r2, 4(sp)
	srli	r2, r2, 8
	mov	r3, zero
	andi	r7, r2, 65280
	and	r6, r3, zero
	mov	r2, r7
	mov	r3, r6
	or	r4, r4, r2
	or	r5, r5, r3
	ldw	r2, 4(sp)
	slli	r3, r2, 8
	ldw	r2, 0(sp)
	srli	r2, r2, 24
	or	r2, r3, r2
	ldw	r3, 4(sp)
	srli	r3, r3, 24
	andhi	r7, r2, 255
	and	r6, r3, zero
	mov	r2, r7
	mov	r3, r6
	or	r4, r4, r2
	or	r5, r5, r3
	ldw	r2, 4(sp)
	slli	r3, r2, 24
	ldw	r2, 0(sp)
	srli	r2, r2, 8
	or	r2, r3, r2
	ldw	r3, 4(sp)
	srli	r3, r3, 8
	andhi	r7, r2, 65280
	and	r6, r3, zero
	mov	r2, r7
	mov	r3, r6
	or	r4, r4, r2
	or	r5, r5, r3
	ldw	r2, 0(sp)
	srli	r3, r2, 24
	ldw	r2, 4(sp)
	slli	r2, r2, 8
	or	r2, r3, r2
	ldw	r3, 0(sp)
	slli	r3, r3, 8
	and	r7, r3, zero
	andi	r6, r2, 255
	mov	r3, r7
	mov	r2, r6
	or	r4, r4, r3
	or	r5, r5, r2
	ldw	r2, 0(sp)
	srli	r3, r2, 8
	ldw	r2, 4(sp)
	slli	r2, r2, 24
	or	r2, r3, r2
	ldw	r3, 0(sp)
	slli	r3, r3, 24
	and	r7, r3, zero
	andi	r6, r2, 65280
	mov	r3, r7
	mov	r2, r6
	or	r4, r4, r3
	or	r5, r5, r2
	ldw	r2, 0(sp)
	slli	r2, r2, 8
	mov	r3, zero
	and	r7, r3, zero
	andhi	r6, r2, 255
	mov	r3, r7
	mov	r2, r6
	or	r4, r4, r3
	or	r3, r5, r2
	ldw	r2, 0(sp)
	slli	r2, r2, 24
	mov	r5, zero
	or	r4, r4, r5
	or	r3, r3, r2
	mov	r2, r4
	addi	sp, sp, 8
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	srli	r3, r2, 24
	ldw	r2, 0(sp)
	srli	r2, r2, 8
	andi	r2, r2, 65280
	or	r3, r3, r2
	ldw	r2, 0(sp)
	slli	r2, r2, 8
	andhi	r2, r2, 255
	or	r3, r3, r2
	ldw	r2, 0(sp)
	slli	r2, r2, 24
	or	r2, r3, r2
	addi	sp, sp, 4
	ret
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	addi	sp, sp, -56
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 52(sp)
	ldw	r2, 52(sp)
	movui	r3, 65535
	bltu	r3, r2, .L916
	movi	r2, 16
	br	.L917
.L916:
	mov	r2, zero
.L917:
	stw	r2, 48(sp)
	movi	r3, 16
	ldw	r2, 48(sp)
	sub	r2, r3, r2
	ldw	r3, 52(sp)
	srl	r2, r3, r2
	stw	r2, 44(sp)
	ldw	r2, 48(sp)
	stw	r2, 40(sp)
	ldw	r2, 44(sp)
	andi	r2, r2, 65280
	bne	r2, zero, .L918
	movi	r2, 8
	br	.L919
.L918:
	mov	r2, zero
.L919:
	stw	r2, 36(sp)
	movi	r3, 8
	ldw	r2, 36(sp)
	sub	r2, r3, r2
	ldw	r3, 44(sp)
	srl	r2, r3, r2
	stw	r2, 32(sp)
	ldw	r3, 40(sp)
	ldw	r2, 36(sp)
	add	r2, r3, r2
	stw	r2, 28(sp)
	ldw	r2, 32(sp)
	andi	r2, r2, 240
	bne	r2, zero, .L920
	movi	r2, 4
	br	.L921
.L920:
	mov	r2, zero
.L921:
	stw	r2, 24(sp)
	movi	r3, 4
	ldw	r2, 24(sp)
	sub	r2, r3, r2
	ldw	r3, 32(sp)
	srl	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r3, 28(sp)
	ldw	r2, 24(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 20(sp)
	andi	r2, r2, 12
	bne	r2, zero, .L922
	movi	r2, 2
	br	.L923
.L922:
	mov	r2, zero
.L923:
	stw	r2, 12(sp)
	movi	r3, 2
	ldw	r2, 12(sp)
	sub	r2, r3, r2
	ldw	r3, 20(sp)
	srl	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 16(sp)
	ldw	r2, 12(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 8(sp)
	andi	r2, r2, 2
	cmpeq	r2, r2, zero
	mov	r4, r2
	movi	r3, 2
	ldw	r2, 8(sp)
	sub	r2, r3, r2
	mul	r3, r4, r2
	ldw	r2, 4(sp)
	add	r2, r3, r2
	addi	sp, sp, 56
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	addi	sp, sp, -32
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r2, 8(sp)
	stw	r2, 24(sp)
	ldw	r2, 12(sp)
	stw	r2, 28(sp)
	ldw	r2, 0(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 20(sp)
	ldw	r3, 28(sp)
	ldw	r2, 20(sp)
	bge	r3, r2, .L927
	mov	r2, zero
	br	.L932
.L927:
	ldw	r2, 28(sp)
	ldw	r3, 20(sp)
	bge	r3, r2, .L929
	movi	r2, 2
	br	.L932
.L929:
	ldw	r3, 24(sp)
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L930
	mov	r2, zero
	br	.L932
.L930:
	ldw	r2, 24(sp)
	ldw	r3, 16(sp)
	bgeu	r3, r2, .L931
	movi	r2, 2
	br	.L932
.L931:
	movi	r2, 1
.L932:
	addi	sp, sp, 32
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__cmpdi2
	addi	r2, r2, -1
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	addi	sp, sp, -60
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 56(sp)
	ldw	r2, 56(sp)
	andi	r2, r2, 65535
	bne	r2, zero, .L938
	movi	r2, 16
	br	.L939
.L938:
	mov	r2, zero
.L939:
	stw	r2, 52(sp)
	ldw	r3, 56(sp)
	ldw	r2, 52(sp)
	srl	r2, r3, r2
	stw	r2, 48(sp)
	ldw	r2, 52(sp)
	stw	r2, 44(sp)
	ldw	r2, 48(sp)
	andi	r2, r2, 255
	bne	r2, zero, .L940
	movi	r2, 8
	br	.L941
.L940:
	mov	r2, zero
.L941:
	stw	r2, 40(sp)
	ldw	r3, 48(sp)
	ldw	r2, 40(sp)
	srl	r2, r3, r2
	stw	r2, 36(sp)
	ldw	r3, 44(sp)
	ldw	r2, 40(sp)
	add	r2, r3, r2
	stw	r2, 32(sp)
	ldw	r2, 36(sp)
	andi	r2, r2, 15
	bne	r2, zero, .L942
	movi	r2, 4
	br	.L943
.L942:
	mov	r2, zero
.L943:
	stw	r2, 28(sp)
	ldw	r3, 36(sp)
	ldw	r2, 28(sp)
	srl	r2, r3, r2
	stw	r2, 24(sp)
	ldw	r3, 32(sp)
	ldw	r2, 28(sp)
	add	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 24(sp)
	andi	r2, r2, 3
	bne	r2, zero, .L944
	movi	r2, 2
	br	.L945
.L944:
	mov	r2, zero
.L945:
	stw	r2, 16(sp)
	ldw	r3, 24(sp)
	ldw	r2, 16(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 3
	stw	r2, 8(sp)
	ldw	r3, 20(sp)
	ldw	r2, 16(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 8(sp)
	srli	r2, r2, 1
	movi	r3, 2
	sub	r2, r3, r2
	ldw	r3, 8(sp)
	nor	r3, zero, r3
	andi	r3, r3, 1
	mul	r3, r3, r2
	ldw	r2, 4(sp)
	add	r2, r3, r2
	addi	sp, sp, 60
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	addi	sp, sp, -32
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	movi	r2, 32
	stw	r2, 28(sp)
	ldw	r2, 4(sp)
	stw	r2, 20(sp)
	ldw	r2, 8(sp)
	stw	r2, 24(sp)
	ldw	r3, 0(sp)
	ldw	r2, 28(sp)
	and	r2, r3, r2
	beq	r2, zero, .L949
	stw	zero, 16(sp)
	ldw	r3, 24(sp)
	ldw	r4, 0(sp)
	ldw	r2, 28(sp)
	sub	r2, r4, r2
	srl	r2, r3, r2
	stw	r2, 12(sp)
	br	.L950
.L949:
	ldw	r2, 0(sp)
	bne	r2, zero, .L951
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	br	.L953
.L951:
	ldw	r3, 24(sp)
	ldw	r2, 0(sp)
	srl	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 24(sp)
	ldw	r4, 28(sp)
	ldw	r2, 0(sp)
	sub	r2, r4, r2
	sll	r3, r3, r2
	ldw	r4, 20(sp)
	ldw	r2, 0(sp)
	srl	r2, r4, r2
	or	r2, r3, r2
	stw	r2, 12(sp)
.L950:
	ldw	r2, 12(sp)
	ldw	r3, 16(sp)
.L953:
	addi	sp, sp, 32
	ret
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	addi	sp, sp, -40
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	movi	r2, 16
	stw	r2, 36(sp)
	movi	r3, -1
	ldw	r2, 36(sp)
	srl	r2, r3, r2
	stw	r2, 32(sp)
	ldw	r3, 4(sp)
	ldw	r2, 32(sp)
	and	r3, r3, r2
	ldw	r4, 0(sp)
	ldw	r2, 32(sp)
	and	r2, r4, r2
	mul	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 8(sp)
	ldw	r2, 36(sp)
	srl	r2, r3, r2
	stw	r2, 28(sp)
	ldw	r2, 8(sp)
	ldw	r3, 32(sp)
	and	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 4(sp)
	ldw	r2, 36(sp)
	srl	r3, r3, r2
	ldw	r4, 0(sp)
	ldw	r2, 32(sp)
	and	r2, r4, r2
	mul	r2, r3, r2
	ldw	r3, 28(sp)
	add	r2, r3, r2
	stw	r2, 24(sp)
	ldw	r3, 8(sp)
	ldw	r4, 24(sp)
	ldw	r2, 32(sp)
	and	r4, r4, r2
	ldw	r2, 36(sp)
	sll	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 24(sp)
	ldw	r2, 36(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r3, 8(sp)
	ldw	r2, 36(sp)
	srl	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 8(sp)
	ldw	r3, 32(sp)
	and	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 0(sp)
	ldw	r2, 36(sp)
	srl	r3, r3, r2
	ldw	r4, 4(sp)
	ldw	r2, 32(sp)
	and	r2, r4, r2
	mul	r2, r3, r2
	ldw	r3, 20(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 8(sp)
	ldw	r4, 16(sp)
	ldw	r2, 32(sp)
	and	r4, r4, r2
	ldw	r2, 36(sp)
	sll	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r4, 16(sp)
	ldw	r2, 36(sp)
	srl	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r3, 12(sp)
	ldw	r4, 4(sp)
	ldw	r2, 36(sp)
	srl	r4, r4, r2
	ldw	r5, 0(sp)
	ldw	r2, 36(sp)
	srl	r2, r5, r2
	mul	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	addi	sp, sp, 40
	ret
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi	sp, sp, -44
	stw	ra, 40(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r2, 8(sp)
	stw	r2, 32(sp)
	ldw	r2, 12(sp)
	stw	r2, 36(sp)
	ldw	r2, 0(sp)
	stw	r2, 24(sp)
	ldw	r2, 4(sp)
	stw	r2, 28(sp)
	ldw	r5, 24(sp)
	ldw	r4, 32(sp)
	call	__muldsi3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 16(sp)
	stw	r4, 20(sp)
	ldw	r3, 20(sp)
	ldw	r4, 36(sp)
	ldw	r2, 24(sp)
	mul	r4, r4, r2
	ldw	r5, 32(sp)
	ldw	r2, 28(sp)
	mul	r2, r5, r2
	add	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 16(sp)
	ldw	r3, 20(sp)
	ldw	ra, 40(sp)
	addi	sp, sp, 44
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r6, 0(sp)
	ldw	r5, 4(sp)
	mov	r4, zero
	mov	r7, zero
	sub	r3, r4, r6
	cmpltu	r4, r4, r3
	sub	r2, r7, r5
	sub	r2, r2, r4
	mov	r5, r3
	mov	r4, r2
	mov	r2, r5
	mov	r3, r4
	addi	sp, sp, 8
	ret
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	addi	sp, sp, -32
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r2, 0(sp)
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r3, 12(sp)
	ldw	r2, 8(sp)
	xor	r2, r3, r2
	stw	r2, 28(sp)
	ldw	r2, 28(sp)
	srli	r2, r2, 16
	ldw	r3, 28(sp)
	xor	r2, r3, r2
	stw	r2, 24(sp)
	ldw	r2, 24(sp)
	srli	r2, r2, 8
	ldw	r3, 24(sp)
	xor	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 20(sp)
	srli	r2, r2, 4
	ldw	r3, 20(sp)
	xor	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	andi	r2, r2, 15
	movi	r3, 27030
	sra	r2, r3, r2
	andi	r2, r2, 1
	addi	sp, sp, 32
	ret
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	addi	sp, sp, -20
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	srli	r2, r2, 16
	ldw	r3, 16(sp)
	xor	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	srli	r2, r2, 8
	ldw	r3, 12(sp)
	xor	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	srli	r2, r2, 4
	ldw	r3, 8(sp)
	xor	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 15
	movi	r3, 27030
	sra	r2, r3, r2
	andi	r2, r2, 1
	addi	sp, sp, 20
	ret
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	addi	sp, sp, -48
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r2, 0(sp)
	stw	r2, 40(sp)
	ldw	r2, 4(sp)
	stw	r2, 44(sp)
	ldw	r2, 44(sp)
	slli	r2, r2, 31
	ldw	r3, 40(sp)
	srli	r3, r3, 1
	or	r3, r2, r3
	ldw	r2, 44(sp)
	srli	r4, r2, 1
	movhi	r2, 21845
	addi	r2, r2, 21845
	and	r7, r3, r2
	movhi	r2, 21845
	addi	r2, r2, 21845
	and	r5, r4, r2
	ldw	r4, 40(sp)
	ldw	r6, 44(sp)
	sub	r3, r4, r7
	cmpltu	r4, r4, r3
	sub	r2, r6, r5
	sub	r2, r2, r4
	stw	r3, 32(sp)
	stw	r2, 36(sp)
	ldw	r2, 36(sp)
	slli	r2, r2, 30
	ldw	r3, 32(sp)
	srli	r3, r3, 2
	or	r3, r2, r3
	ldw	r2, 36(sp)
	srli	r5, r2, 2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r4, r3, r2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r6, r5, r2
	ldw	r3, 32(sp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r7, r3, r2
	ldw	r3, 36(sp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r5, r3, r2
	add	r3, r4, r7
	cmpltu	r4, r3, r4
	add	r2, r6, r5
	add	r2, r4, r2
	stw	r3, 24(sp)
	stw	r2, 28(sp)
	ldw	r2, 28(sp)
	slli	r3, r2, 28
	ldw	r2, 24(sp)
	srli	r2, r2, 4
	or	r2, r3, r2
	ldw	r3, 28(sp)
	srli	r6, r3, 4
	ldw	r7, 24(sp)
	ldw	r5, 28(sp)
	add	r4, r2, r7
	cmpltu	r2, r4, r2
	add	r3, r6, r5
	add	r2, r2, r3
	mov	r3, r2
	mov	r6, r4
	mov	r5, r3
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r6, r2
	stw	r2, 16(sp)
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r5, r2
	stw	r2, 20(sp)
	ldw	r2, 16(sp)
	ldw	r3, 20(sp)
	srl	r3, r3, zero
	add	r2, r2, r3
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	srli	r2, r2, 16
	ldw	r3, 12(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	srli	r3, r2, 8
	ldw	r2, 8(sp)
	add	r2, r3, r2
	andi	r2, r2, 127
	addi	sp, sp, 48
	ret
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi	sp, sp, -24
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 20(sp)
	ldw	r2, 20(sp)
	srli	r3, r2, 1
	movhi	r2, 21845
	addi	r2, r2, 21845
	and	r2, r3, r2
	ldw	r3, 20(sp)
	sub	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	srli	r3, r2, 2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r3, r3, r2
	ldw	r4, 16(sp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	srli	r3, r2, 4
	ldw	r2, 12(sp)
	add	r3, r3, r2
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	srli	r2, r2, 16
	ldw	r3, 8(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r3, r2, 8
	ldw	r2, 4(sp)
	add	r2, r3, r2
	andi	r2, r2, 63
	addi	sp, sp, 24
	ret
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 31
	andi	r2, r2, 0xff
	stw	r2, 12(sp)
	stw	zero, 16(sp)
	movhi	r2, 16368
	stw	r2, 20(sp)
.L980:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L977
	ldw	r6, 4(sp)
	ldw	r7, 8(sp)
	ldw	r4, 16(sp)
	ldw	r5, 20(sp)
	call	__muldf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 16(sp)
	stw	r4, 20(sp)
.L977:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L985
	ldw	r6, 4(sp)
	ldw	r7, 8(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__muldf3
	mov	r5, r2
	mov	r4, r3
	stw	r5, 4(sp)
	stw	r4, 8(sp)
	br	.L980
.L985:
	nop
	ldw	r2, 12(sp)
	beq	r2, zero, .L981
	ldw	r6, 16(sp)
	ldw	r7, 20(sp)
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r5, r2
	mov	r4, r3
	mov	r2, r5
	mov	r3, r4
	br	.L983
.L981:
	ldw	r2, 16(sp)
	ldw	r3, 20(sp)
.L983:
	nop
	ldw	ra, 24(sp)
	addi	sp, sp, 28
	ret
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 31
	andi	r2, r2, 0xff
	stw	r2, 8(sp)
	movhi	r2, 16256
	stw	r2, 12(sp)
.L991:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L988
	ldw	r5, 4(sp)
	ldw	r4, 12(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 12(sp)
.L988:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L996
	ldw	r5, 4(sp)
	ldw	r4, 4(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 4(sp)
	br	.L991
.L996:
	nop
	ldw	r2, 8(sp)
	beq	r2, zero, .L992
	ldw	r5, 12(sp)
	movhi	r4, 16256
	call	__divsf3
	mov	r3, r2
	mov	r2, r3
	br	.L994
.L992:
	ldw	r2, 12(sp)
.L994:
	nop
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	addi	sp, sp, -32
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r2, 8(sp)
	stw	r2, 24(sp)
	ldw	r2, 12(sp)
	stw	r2, 28(sp)
	ldw	r2, 0(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 20(sp)
	ldw	r3, 28(sp)
	ldw	r2, 20(sp)
	bgeu	r3, r2, .L999
	mov	r2, zero
	br	.L1004
.L999:
	ldw	r2, 28(sp)
	ldw	r3, 20(sp)
	bgeu	r3, r2, .L1001
	movi	r2, 2
	br	.L1004
.L1001:
	ldw	r3, 24(sp)
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L1002
	mov	r2, zero
	br	.L1004
.L1002:
	ldw	r2, 24(sp)
	ldw	r3, 16(sp)
	bgeu	r3, r2, .L1003
	movi	r2, 2
	br	.L1004
.L1003:
	movi	r2, 1
.L1004:
	addi	sp, sp, 32
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ucmpdi2
	addi	r2, r2, -1
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.section	.sbss
	.type	s.0, @object
	.size	s.0, 7
	.align	0
s.0:
	.zero	7
	.global	__divsf3
	.global	__fixsfsi
	.global	__gesf2
	.global	__umodsi3
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__clzdi2
	.global	__clzsi2
	.global	__divdf3
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
