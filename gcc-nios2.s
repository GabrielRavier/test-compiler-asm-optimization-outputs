	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L2
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r3, 16(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	br	.L3
.L4:
	ldw	r2, 12(sp)
	addi	r2, r2, -1
	stw	r2, 12(sp)
	ldw	r2, 16(sp)
	addi	r2, r2, -1
	stw	r2, 16(sp)
	ldw	r2, 12(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 16(sp)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L3:
	ldw	r2, 0(sp)
	bne	r2, zero, .L4
	br	.L5
.L2:
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	beq	r3, r2, .L5
	br	.L6
.L7:
	ldw	r3, 12(sp)
	addi	r2, r3, 1
	stw	r2, 12(sp)
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
	addi	sp, sp, 20
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	addi	sp, sp, -24
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r2, 12(sp)
	stw	r2, 20(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 0xff
	stw	r2, 4(sp)
	br	.L10
.L12:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 16(sp)
	addi	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 20(sp)
	addi	r2, r2, 1
	stw	r2, 20(sp)
.L10:
	ldw	r2, 0(sp)
	beq	r2, zero, .L11
	ldw	r2, 16(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 20(sp)
	stb	r3, 0(r2)
	ldw	r2, 20(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, 4(sp)
	bne	r3, r2, .L12
.L11:
	ldw	r2, 0(sp)
	beq	r2, zero, .L13
	ldw	r2, 20(sp)
	addi	r2, r2, 1
	br	.L14
.L13:
	mov	r2, zero
.L14:
	addi	sp, sp, 24
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
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 0xff
	stw	r2, 4(sp)
	br	.L16
.L18:
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L16:
	ldw	r2, 0(sp)
	beq	r2, zero, .L17
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, 4(sp)
	bne	r3, r2, .L18
.L17:
	ldw	r2, 0(sp)
	beq	r2, zero, .L19
	ldw	r2, 12(sp)
	br	.L21
.L19:
	mov	r2, zero
.L21:
	addi	sp, sp, 16
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	br	.L23
.L25:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 16(sp)
	addi	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
.L23:
	ldw	r2, 0(sp)
	beq	r2, zero, .L24
	ldw	r2, 16(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 0xff
	andi	r2, r2, 0xff
	beq	r3, r2, .L25
.L24:
	ldw	r2, 0(sp)
	beq	r2, zero, .L26
	ldw	r2, 16(sp)
	ldbu	r2, 0(r2)
	andi	r3, r2, 0xff
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	sub	r2, r3, r2
	br	.L28
.L26:
	mov	r2, zero
.L28:
	addi	sp, sp, 20
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	br	.L30
.L31:
	ldw	r3, 12(sp)
	addi	r2, r3, 1
	stw	r2, 12(sp)
	ldw	r2, 16(sp)
	addi	r4, r2, 1
	stw	r4, 16(sp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L30:
	ldw	r2, 0(sp)
	bne	r2, zero, .L31
	ldw	r2, 8(sp)
	addi	sp, sp, 20
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
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 0xff
	stw	r2, 4(sp)
	br	.L34
.L36:
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, 4(sp)
	bne	r3, r2, .L34
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	br	.L35
.L34:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L36
	mov	r2, zero
.L35:
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
	br	.L38
.L39:
	ldw	r2, 4(sp)
	mov	r3, r2
	ldw	r2, 12(sp)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
.L38:
	ldw	r2, 0(sp)
	bne	r2, zero, .L39
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
	br	.L42
.L43:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L42:
	ldw	r2, 0(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	stb	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L43
	ldw	r2, 4(sp)
	addi	sp, sp, 8
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	addi	sp, sp, -8
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 0(sp)
	andi	r2, r2, 0xff
	stw	r2, 0(sp)
	br	.L46
.L48:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L46:
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	beq	r2, zero, .L47
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, 0(sp)
	bne	r3, r2, .L48
.L47:
	ldw	r2, 4(sp)
	addi	sp, sp, 8
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	addi	sp, sp, -4
	mov	r2, r4
	stw	r5, 0(sp)
.L53:
	ldbu	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	ldw	r4, 0(sp)
	bne	r4, r3, .L51
	br	.L52
.L51:
	mov	r3, r2
	addi	r2, r3, 1
	ldbu	r3, 0(r3)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L53
	mov	r2, zero
.L52:
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
	br	.L55
.L57:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L55:
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
	bne	r3, r2, .L56
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L57
.L56:
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r3, r2, 0xff
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
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
	br	.L60
.L61:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L60:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L61
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	addi	sp, sp, 8
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L66
	mov	r2, zero
	br	.L65
.L68:
	ldw	r2, 16(sp)
	addi	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L66:
	ldw	r2, 16(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	beq	r2, zero, .L67
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	beq	r2, zero, .L67
	ldw	r2, 0(sp)
	beq	r2, zero, .L67
	ldw	r2, 16(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 0xff
	andi	r2, r2, 0xff
	beq	r3, r2, .L68
.L67:
	ldw	r2, 16(sp)
	ldbu	r2, 0(r2)
	andi	r3, r2, 0xff
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	sub	r2, r3, r2
.L65:
	addi	sp, sp, 20
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	br	.L70
.L71:
	ldw	r2, 16(sp)
	addi	r2, r2, 1
	ldbu	r3, 0(r2)
	ldw	r2, 12(sp)
	stb	r3, 0(r2)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	ldw	r3, 16(sp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 12(sp)
	addi	r2, r2, 2
	stw	r2, 12(sp)
	ldw	r2, 16(sp)
	addi	r2, r2, 2
	stw	r2, 16(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -2
	stw	r2, 0(sp)
.L70:
	ldw	r2, 0(sp)
	cmpgei	r2, r2, 2
	bne	r2, zero, .L71
	nop
	nop
	addi	sp, sp, 20
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
	andi	r2, r2, 0xff
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
	andi	r2, r2, 0xff
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
	bne	r2, zero, .L77
	ldw	r2, 0(sp)
	cmpnei	r2, r2, 9
	bne	r2, zero, .L78
.L77:
	movi	r2, 1
	br	.L80
.L78:
	mov	r2, zero
.L80:
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
	bne	r2, zero, .L82
	ldw	r2, 0(sp)
	cmpnei	r2, r2, 127
	bne	r2, zero, .L83
.L82:
	movi	r2, 1
	br	.L85
.L83:
	mov	r2, zero
.L85:
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
	andi	r2, r2, 0xff
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
	andi	r2, r2, 0xff
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
	andi	r2, r2, 0xff
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
	andi	r2, r2, 0xff
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
	bne	r2, zero, .L95
	ldw	r2, 0(sp)
	addi	r2, r2, -9
	cmpgeui	r2, r2, 5
	bne	r2, zero, .L96
.L95:
	movi	r2, 1
	br	.L98
.L96:
	mov	r2, zero
.L98:
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
	andi	r2, r2, 0xff
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
	bne	r2, zero, .L102
	ldw	r2, 0(sp)
	addi	r2, r2, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L102
	ldw	r2, 0(sp)
	addi	r2, r2, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L102
	ldw	r3, 0(sp)
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r3, r2
	cmpgeui	r2, r2, 3
	bne	r2, zero, .L103
.L102:
	movi	r2, 1
	br	.L105
.L103:
	mov	r2, zero
.L105:
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
	andi	r2, r2, 0xff
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
	bne	r2, zero, .L109
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	br	.L110
.L109:
	ldw	r2, 0(sp)
	cmpltui	r2, r2, 8232
	bne	r2, zero, .L111
	ldw	r2, 0(sp)
	addi	r2, r2, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L111
	ldw	r3, 0(sp)
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r3, r2
	cmpgeui	r2, r2, 8185
	bne	r2, zero, .L112
.L111:
	movi	r2, 1
	br	.L110
.L112:
	ldw	r3, 0(sp)
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r3, r3, r2
	movhi	r2, 16
	addi	r2, r2, 3
	bltu	r2, r3, .L113
	ldw	r2, 0(sp)
	andi	r3, r2, 65534
	movui	r2, 65534
	bne	r3, r2, .L114
.L113:
	mov	r2, zero
	br	.L110
.L114:
	movi	r2, 1
.L110:
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
	bne	r2, zero, .L116
	ldw	r2, 0(sp)
	ori	r2, r2, 32
	addi	r2, r2, -97
	cmpgeui	r2, r2, 6
	bne	r2, zero, .L117
.L116:
	movi	r2, 1
	br	.L119
.L117:
	mov	r2, zero
.L119:
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
	beq	r2, zero, .L134
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L125
.L134:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L135
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L125
.L135:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__gtdf2
	bge	zero, r2, .L136
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__subdf3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	br	.L125
.L136:
	mov	r2, zero
	mov	r3, zero
.L125:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	beq	r2, zero, .L149
	ldw	r2, 4(sp)
	br	.L140
.L149:
	ldw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	__unordsf2
	beq	r2, zero, .L150
	ldw	r2, 0(sp)
	br	.L140
.L150:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__gtsf2
	bge	zero, r2, .L151
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__subsf3
	mov	r3, r2
	mov	r2, r3
	br	.L140
.L151:
	mov	r2, zero
.L140:
	mov	r3, r2
	mov	r2, r3
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
	beq	r2, zero, .L167
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L155
.L167:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L168
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L155
.L168:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L158
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L159
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L155
.L159:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L155
.L158:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L169
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L155
.L169:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
.L155:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	beq	r2, zero, .L185
	ldw	r2, 0(sp)
	br	.L173
.L185:
	ldw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	__unordsf2
	beq	r2, zero, .L186
	ldw	r2, 4(sp)
	br	.L173
.L186:
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 0(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L176
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L177
	ldw	r2, 0(sp)
	br	.L173
.L177:
	ldw	r2, 4(sp)
	br	.L173
.L176:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__ltsf2
	bge	r2, zero, .L187
	ldw	r2, 0(sp)
	br	.L173
.L187:
	ldw	r2, 4(sp)
.L173:
	mov	r3, r2
	mov	r2, r3
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
	beq	r2, zero, .L203
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L191
.L203:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L204
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L191
.L204:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L194
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L195
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L191
.L195:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L191
.L194:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L205
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L191
.L205:
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
.L191:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	beq	r2, zero, .L221
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L209
.L221:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L222
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L209
.L222:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L212
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L213
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L209
.L213:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L209
.L212:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L223
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L209
.L223:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
.L209:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	beq	r2, zero, .L239
	ldw	r2, 0(sp)
	br	.L227
.L239:
	ldw	r5, 0(sp)
	ldw	r4, 0(sp)
	call	__unordsf2
	beq	r2, zero, .L240
	ldw	r2, 4(sp)
	br	.L227
.L240:
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 0(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L230
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L231
	ldw	r2, 4(sp)
	br	.L227
.L231:
	ldw	r2, 0(sp)
	br	.L227
.L230:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__ltsf2
	bge	r2, zero, .L241
	ldw	r2, 4(sp)
	br	.L227
.L241:
	ldw	r2, 0(sp)
.L227:
	mov	r3, r2
	mov	r2, r3
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
	beq	r2, zero, .L257
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L245
.L257:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__unorddf2
	beq	r2, zero, .L258
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L245
.L258:
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, 4(sp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L248
	ldw	r2, 12(sp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L249
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L245
.L249:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	br	.L245
.L248:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L259
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	br	.L245
.L259:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
.L245:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	br	.L261
.L262:
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
.L261:
	ldw	r2, 4(sp)
	bne	r2, zero, .L262
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
	ldw	r4, 0(sp)
	addi	r4, r4, -1
	mov	r2, r4
	mov	r3, zero
	stw	r2, %gprel(seed)(gp)
	stw	r3, %gprel(seed+4)(gp)
	nop
	addi	sp, sp, 4
	ret
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	ldw	r2, %gprel(seed)(gp)
	ldw	r3, %gprel(seed+4)(gp)
	movhi	r6, 19605
	addi	r6, r6, 32557
	movhi	r7, 22610
	addi	r7, r7, -3027
	mov	r4, r2
	mov	r5, r3
	call	__muldi3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	movi	r6, 1
	mov	r7, zero
	add	r2, r4, r6
	cmpltu	r8, r2, r4
	add	r3, r5, r7
	add	r4, r8, r3
	mov	r3, r4
	mov	r4, r2
	mov	r5, r3
	stw	r4, %gprel(seed)(gp)
	stw	r5, %gprel(seed+4)(gp)
	ldw	r2, %gprel(seed)(gp)
	ldw	r3, %gprel(seed+4)(gp)
	srli	r16, r3, 1
	mov	r17, zero
	mov	r2, r16
	ldw	ra, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	addi	sp, sp, -16
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r2, 0(sp)
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	bne	r2, zero, .L268
	ldw	r2, 12(sp)
	stw	zero, 4(r2)
	ldw	r2, 12(sp)
	ldw	r3, 4(r2)
	ldw	r2, 12(sp)
	stw	r3, 0(r2)
	br	.L267
.L268:
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 12(sp)
	stw	r3, 0(r2)
	ldw	r2, 12(sp)
	ldw	r3, 8(sp)
	stw	r3, 4(r2)
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	stw	r3, 0(r2)
	ldw	r2, 12(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L267
	ldw	r2, 12(sp)
	ldw	r2, 0(r2)
	ldw	r3, 12(sp)
	stw	r3, 4(r2)
.L267:
	addi	sp, sp, 16
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L271
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	ldw	r3, 4(r3)
	stw	r3, 4(r2)
.L271:
	ldw	r2, 4(sp)
	ldw	r2, 4(r2)
	beq	r2, zero, .L273
	ldw	r2, 4(sp)
	ldw	r2, 4(r2)
	ldw	r3, 4(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L273:
	nop
	addi	sp, sp, 8
	ret
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	r16, 32(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r16, 0(sp)
	mov	r4, r16
	addi	r4, r4, -1
	stw	r4, 24(sp)
	mov	r8, r16
	mov	r9, zero
	srli	r4, r8, 29
	slli	r3, r9, 3
	or	r3, r4, r3
	slli	r2, r8, 3
	ldw	r2, 8(sp)
	stw	r2, 20(sp)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	stw	r2, 16(sp)
	stw	zero, 28(sp)
	br	.L275
.L278:
	ldw	r2, 28(sp)
	mul	r2, r16, r2
	ldw	r3, 20(sp)
	add	r3, r3, r2
	ldw	r2, 40(sp)
	mov	r5, r3
	ldw	r4, 12(sp)
	callr	r2
	bne	r2, zero, .L276
	ldw	r2, 28(sp)
	mul	r2, r16, r2
	ldw	r3, 20(sp)
	add	r2, r3, r2
	br	.L277
.L276:
	ldw	r2, 28(sp)
	addi	r2, r2, 1
	stw	r2, 28(sp)
.L275:
	ldw	r3, 28(sp)
	ldw	r2, 16(sp)
	bltu	r3, r2, .L278
	ldw	r2, 16(sp)
	addi	r3, r2, 1
	ldw	r2, 4(sp)
	stw	r3, 0(r2)
	ldw	r2, 16(sp)
	mul	r2, r16, r2
	ldw	r3, 20(sp)
	add	r2, r3, r2
	ldw	r6, 0(sp)
	ldw	r5, 12(sp)
	mov	r4, r2
	call	memcpy
.L277:
	ldw	ra, 36(sp)
	ldw	r16, 32(sp)
	addi	sp, sp, 40
	ret
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	r16, 32(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r16, 0(sp)
	mov	r4, r16
	addi	r4, r4, -1
	stw	r4, 24(sp)
	mov	r8, r16
	mov	r9, zero
	srli	r4, r8, 29
	slli	r3, r9, 3
	or	r3, r4, r3
	slli	r2, r8, 3
	ldw	r2, 8(sp)
	stw	r2, 20(sp)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	stw	r2, 16(sp)
	stw	zero, 28(sp)
	br	.L280
.L283:
	ldw	r2, 28(sp)
	mul	r2, r16, r2
	ldw	r3, 20(sp)
	add	r3, r3, r2
	ldw	r2, 40(sp)
	mov	r5, r3
	ldw	r4, 12(sp)
	callr	r2
	bne	r2, zero, .L281
	ldw	r2, 28(sp)
	mul	r2, r16, r2
	ldw	r3, 20(sp)
	add	r2, r3, r2
	br	.L282
.L281:
	ldw	r2, 28(sp)
	addi	r2, r2, 1
	stw	r2, 28(sp)
.L280:
	ldw	r3, 28(sp)
	ldw	r2, 16(sp)
	bltu	r3, r2, .L283
	mov	r2, zero
.L282:
	ldw	ra, 36(sp)
	ldw	r16, 32(sp)
	addi	sp, sp, 40
	ret
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	addi	sp, sp, -4
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	bge	r2, zero, .L285
	sub	r2, zero, r2
.L285:
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
	br	.L288
.L289:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L288:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L289
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L290
	cmpnei	r2, r2, 45
	bne	r2, zero, .L292
	movi	r2, 1
	stw	r2, 4(sp)
.L290:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	br	.L292
.L293:
	ldw	r2, 8(sp)
	muli	r3, r2, 10
	ldw	r2, 0(sp)
	addi	r4, r2, 1
	stw	r4, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	sub	r2, r3, r2
	stw	r2, 8(sp)
.L292:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L293
	ldw	r2, 4(sp)
	bne	r2, zero, .L294
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	br	.L296
.L294:
	ldw	r2, 8(sp)
.L296:
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
	br	.L298
.L299:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L298:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L299
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L300
	cmpnei	r2, r2, 45
	bne	r2, zero, .L302
	movi	r2, 1
	stw	r2, 4(sp)
.L300:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	br	.L302
.L303:
	ldw	r2, 8(sp)
	muli	r3, r2, 10
	ldw	r2, 0(sp)
	addi	r4, r2, 1
	stw	r4, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	sub	r2, r3, r2
	stw	r2, 8(sp)
.L302:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L303
	ldw	r2, 4(sp)
	bne	r2, zero, .L304
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	br	.L306
.L304:
	ldw	r2, 8(sp)
.L306:
	ldw	ra, 12(sp)
	addi	sp, sp, 16
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	stw	r4, 0(sp)
	stw	zero, 8(sp)
	stw	zero, 12(sp)
	stw	zero, 4(sp)
	br	.L308
.L309:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
.L308:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L309
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L310
	cmpnei	r2, r2, 45
	bne	r2, zero, .L312
	movi	r2, 1
	stw	r2, 4(sp)
.L310:
	ldw	r2, 0(sp)
	addi	r2, r2, 1
	stw	r2, 0(sp)
	br	.L312
.L313:
	movi	r6, 10
	mov	r7, zero
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__muldi3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	ldw	r2, 0(sp)
	addi	r3, r2, 1
	stw	r3, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	mov	r16, r2
	srai	r2, r2, 31
	mov	r17, r2
	sub	r2, r4, r16
	cmpltu	r6, r4, r2
	sub	r3, r5, r17
	sub	r4, r3, r6
	mov	r3, r4
	stw	r2, 8(sp)
	stw	r3, 12(sp)
.L312:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L313
	ldw	r2, 4(sp)
	bne	r2, zero, .L314
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	sub	r2, r6, r4
	cmpltu	r8, r6, r2
	sub	r3, r7, r5
	sub	r4, r3, r8
	mov	r3, r4
	mov	r4, r2
	mov	r5, r3
	br	.L316
.L314:
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
.L316:
	mov	r6, r4
	mov	r7, r5
	mov	r2, r6
	mov	r3, r7
	ldw	ra, 24(sp)
	ldw	r17, 20(sp)
	ldw	r16, 16(sp)
	addi	sp, sp, 28
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
	br	.L318
.L323:
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
	bge	r2, zero, .L319
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
	br	.L318
.L319:
	ldw	r2, 16(sp)
	bge	zero, r2, .L321
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
	br	.L318
.L321:
	ldw	r2, 20(sp)
	br	.L322
.L318:
	ldw	r2, 4(sp)
	bne	r2, zero, .L323
	mov	r2, zero
.L322:
	ldw	ra, 24(sp)
	addi	sp, sp, 28
	ret
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi	sp, sp, -36
	stw	ra, 32(sp)
	stw	r4, 12(sp)
	stw	r5, 8(sp)
	stw	r6, 4(sp)
	stw	r7, 0(sp)
	ldw	r2, 8(sp)
	stw	r2, 28(sp)
	ldw	r2, 4(sp)
	stw	r2, 24(sp)
	br	.L325
.L329:
	ldw	r2, 24(sp)
	srai	r2, r2, 1
	mov	r3, r2
	ldw	r2, 0(sp)
	mul	r2, r3, r2
	ldw	r3, 28(sp)
	add	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 36(sp)
	ldw	r6, 40(sp)
	ldw	r5, 20(sp)
	ldw	r4, 12(sp)
	callr	r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	bne	r2, zero, .L326
	ldw	r2, 20(sp)
	br	.L327
.L326:
	ldw	r2, 16(sp)
	bge	zero, r2, .L328
	ldw	r3, 20(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 28(sp)
	ldw	r2, 24(sp)
	addi	r2, r2, -1
	stw	r2, 24(sp)
.L328:
	ldw	r2, 24(sp)
	srai	r2, r2, 1
	stw	r2, 24(sp)
.L325:
	ldw	r2, 24(sp)
	bne	r2, zero, .L329
	mov	r2, zero
.L327:
	ldw	ra, 32(sp)
	addi	sp, sp, 36
	ret
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__divsi3
	mov	r18, r2
	ldw	r2, 4(sp)
	ldw	r5, 0(sp)
	mov	r4, r2
	call	__modsi3
	mov	r16, r18
	mov	r17, r2
	mov	r4, r16
	mov	r5, r17
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	bge	r3, zero, .L333
	mov	r6, zero
	mov	r7, zero
	sub	r4, r6, r2
	cmpltu	r8, r6, r4
	sub	r5, r7, r3
	sub	r2, r5, r8
	mov	r5, r2
	mov	r2, r4
	mov	r3, r5
.L333:
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
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
	mov	r4, r2
	mov	r5, r3
	mov	r16, r4
	mov	r17, r5
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	ldw	r6, 40(sp)
	ldw	r7, 44(sp)
	mov	r4, r2
	mov	r5, r3
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	ldw	r4, 8(sp)
	stw	r16, 0(r4)
	stw	r17, 4(r4)
	ldw	r4, 8(sp)
	stw	r2, 8(r4)
	stw	r3, 12(r4)
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
	bge	r2, zero, .L339
	sub	r2, zero, r2
.L339:
	addi	sp, sp, 4
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__divsi3
	mov	r18, r2
	ldw	r2, 4(sp)
	ldw	r5, 0(sp)
	mov	r4, r2
	call	__modsi3
	mov	r16, r18
	mov	r17, r2
	mov	r4, r16
	mov	r5, r17
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 20(sp)
	ldw	r18, 16(sp)
	ldw	r17, 12(sp)
	ldw	r16, 8(sp)
	addi	sp, sp, 24
	ret
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	bge	r3, zero, .L344
	mov	r6, zero
	mov	r7, zero
	sub	r4, r6, r2
	cmpltu	r8, r6, r4
	sub	r5, r7, r3
	sub	r2, r5, r8
	mov	r5, r2
	mov	r2, r4
	mov	r3, r5
.L344:
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
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
	mov	r4, r2
	mov	r5, r3
	mov	r16, r4
	mov	r17, r5
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	ldw	r6, 40(sp)
	ldw	r7, 44(sp)
	mov	r4, r2
	mov	r5, r3
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	ldw	r4, 8(sp)
	stw	r16, 0(r4)
	stw	r17, 4(r4)
	ldw	r4, 8(sp)
	stw	r2, 8(r4)
	stw	r3, 12(r4)
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
	br	.L350
.L352:
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
.L350:
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L351
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	ldw	r3, 0(sp)
	bne	r3, r2, .L352
.L351:
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L353
	ldw	r2, 4(sp)
	br	.L355
.L353:
	mov	r2, zero
.L355:
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
	br	.L357
.L359:
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, 4
	stw	r2, 0(sp)
.L357:
	ldw	r2, 4(sp)
	ldw	r3, 0(r2)
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	bne	r3, r2, .L358
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L358
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L359
.L358:
	ldw	r2, 4(sp)
	ldw	r3, 0(r2)
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L360
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	ldw	r3, 0(sp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L362
.L360:
	movi	r2, -1
.L362:
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
	nop
.L364:
	ldw	r3, 0(sp)
	addi	r2, r3, 4
	stw	r2, 0(sp)
	ldw	r2, 4(sp)
	addi	r4, r2, 4
	stw	r4, 4(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
	ldw	r2, 0(r2)
	bne	r2, zero, .L364
	ldw	r2, 8(sp)
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
	br	.L367
.L368:
	ldw	r2, 0(sp)
	addi	r2, r2, 4
	stw	r2, 0(sp)
.L367:
	ldw	r2, 0(sp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L368
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
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
	br	.L371
.L373:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 4
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
.L371:
	ldw	r2, 0(sp)
	beq	r2, zero, .L372
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	bne	r3, r2, .L372
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L372
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L373
.L372:
	ldw	r2, 0(sp)
	beq	r2, zero, .L374
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L375
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L378
.L375:
	movi	r2, -1
	br	.L378
.L374:
	mov	r2, zero
.L378:
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
	br	.L380
.L382:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 4
	stw	r2, 8(sp)
.L380:
	ldw	r2, 0(sp)
	beq	r2, zero, .L381
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	bne	r3, r2, .L382
.L381:
	ldw	r2, 0(sp)
	beq	r2, zero, .L383
	ldw	r2, 8(sp)
	br	.L385
.L383:
	mov	r2, zero
.L385:
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
	br	.L387
.L389:
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, 4
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, 4
	stw	r2, 4(sp)
.L387:
	ldw	r2, 0(sp)
	beq	r2, zero, .L388
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	beq	r3, r2, .L389
.L388:
	ldw	r2, 0(sp)
	beq	r2, zero, .L390
	ldw	r2, 8(sp)
	ldw	r3, 0(r2)
	ldw	r2, 4(sp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L391
	ldw	r2, 8(sp)
	ldw	r2, 0(r2)
	ldw	r3, 4(sp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L394
.L391:
	movi	r2, -1
	br	.L394
.L390:
	mov	r2, zero
.L394:
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
	br	.L396
.L397:
	ldw	r3, 4(sp)
	addi	r2, r3, 4
	stw	r2, 4(sp)
	ldw	r2, 8(sp)
	addi	r4, r2, 4
	stw	r4, 8(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L396:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L397
	ldw	r2, 12(sp)
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
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bne	r3, r2, .L400
	ldw	r2, 8(sp)
	br	.L401
.L400:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r3, r3, r2
	ldw	r2, 0(sp)
	slli	r2, r2, 2
	bgeu	r3, r2, .L406
	br	.L403
.L404:
	ldw	r2, 0(sp)
	slli	r2, r2, 2
	ldw	r3, 4(sp)
	add	r3, r3, r2
	ldw	r2, 0(sp)
	slli	r2, r2, 2
	ldw	r4, 8(sp)
	add	r2, r4, r2
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L403:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L404
	br	.L405
.L407:
	ldw	r3, 4(sp)
	addi	r2, r3, 4
	stw	r2, 4(sp)
	ldw	r2, 8(sp)
	addi	r4, r2, 4
	stw	r4, 8(sp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L406:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L407
.L405:
	ldw	r2, 12(sp)
.L401:
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
	br	.L409
.L410:
	ldw	r2, 8(sp)
	addi	r3, r2, 4
	stw	r3, 8(sp)
	ldw	r3, 4(sp)
	stw	r3, 0(r2)
.L409:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L410
	ldw	r2, 12(sp)
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
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r3, 16(sp)
	ldw	r2, 12(sp)
	bgeu	r3, r2, .L413
	ldw	r3, 16(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 12(sp)
	br	.L414
.L415:
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
.L414:
	ldw	r2, 0(sp)
	bne	r2, zero, .L415
	br	.L419
.L413:
	ldw	r3, 16(sp)
	ldw	r2, 12(sp)
	beq	r3, r2, .L419
	br	.L417
.L418:
	ldw	r3, 16(sp)
	addi	r2, r3, 1
	stw	r2, 16(sp)
	ldw	r2, 12(sp)
	addi	r4, r2, 1
	stw	r4, 12(sp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L417:
	ldw	r2, 0(sp)
	bne	r2, zero, .L418
.L419:
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
	ldw	r3, 8(sp)
	ldw	r4, 0(sp)
	addi	r4, r4, -32
	blt	r4, zero, .L421
	sll	r11, r2, r4
	mov	r10, zero
	br	.L422
.L421:
	srli	r5, r2, 1
	movi	r6, 31
	ldw	r4, 0(sp)
	sub	r4, r6, r4
	srl	r4, r5, r4
	ldw	r5, 0(sp)
	sll	r11, r3, r5
	or	r11, r4, r11
	ldw	r4, 0(sp)
	sll	r10, r2, r4
.L422:
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	addi	r4, r4, -32
	blt	r4, zero, .L423
	srl	r8, r3, r4
	mov	r9, zero
	br	.L424
.L423:
	slli	r5, r3, 1
	movi	r6, 31
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sub	r4, r6, r4
	sll	r5, r5, r4
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	srl	r8, r2, r4
	or	r8, r5, r8
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	srl	r9, r3, r4
.L424:
	or	r12, r8, r10
	or	r13, r9, r11
	mov	r8, r12
	mov	r9, r13
	mov	r4, r8
	mov	r5, r9
	mov	r2, r4
	mov	r3, r5
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
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	ldw	r4, 0(sp)
	addi	r4, r4, -32
	blt	r4, zero, .L427
	srl	r10, r3, r4
	mov	r11, zero
	br	.L428
.L427:
	slli	r5, r3, 1
	movi	r6, 31
	ldw	r4, 0(sp)
	sub	r4, r6, r4
	sll	r4, r5, r4
	ldw	r5, 0(sp)
	srl	r10, r2, r5
	or	r10, r4, r10
	ldw	r4, 0(sp)
	srl	r11, r3, r4
.L428:
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	addi	r4, r4, -32
	blt	r4, zero, .L429
	sll	r9, r2, r4
	mov	r8, zero
	br	.L430
.L429:
	srli	r5, r2, 1
	movi	r6, 31
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sub	r4, r6, r4
	srl	r5, r5, r4
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sll	r9, r3, r4
	or	r9, r5, r9
	ldw	r4, 0(sp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sll	r8, r2, r4
.L430:
	or	r12, r8, r10
	or	r13, r9, r11
	mov	r8, r12
	mov	r9, r13
	mov	r4, r8
	mov	r5, r9
	mov	r2, r4
	mov	r3, r5
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
	ldhu	r3, 0(sp)
	ldw	r2, 4(sp)
	slli	r2, r2, 8
	and	r2, r3, r2
	srli	r2, r2, 8
	mov	r3, r2
	ldw	r2, 4(sp)
	mov	r4, r2
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
	addi	sp, sp, -216
	stw	r21, 212(sp)
	stw	r20, 208(sp)
	stw	r19, 204(sp)
	stw	r18, 200(sp)
	stw	r17, 196(sp)
	stw	r16, 192(sp)
	stw	r4, 176(sp)
	stw	r5, 180(sp)
	movi	r2, 255
	stw	r2, 184(sp)
	stw	zero, 188(sp)
	ldw	r2, 184(sp)
	slli	r7, r2, 24
	mov	r6, zero
	ldw	r2, 176(sp)
	and	r10, r2, r6
	ldw	r2, 180(sp)
	and	r11, r2, r7
	srli	r2, r11, 24
	stw	r2, 56(sp)
	stw	zero, 60(sp)
	ldw	r2, 184(sp)
	slli	r13, r2, 16
	mov	r12, zero
	ldw	r2, 176(sp)
	and	r2, r2, r12
	stw	r2, 152(sp)
	ldw	r2, 180(sp)
	and	r2, r2, r13
	stw	r2, 156(sp)
	ldw	r2, 156(sp)
	srli	r16, r2, 8
	mov	r17, zero
	ldw	r2, 56(sp)
	or	r2, r2, r16
	stw	r2, 64(sp)
	ldw	r2, 60(sp)
	or	r2, r2, r17
	stw	r2, 68(sp)
	ldw	r2, 184(sp)
	slli	r2, r2, 8
	stw	r2, 76(sp)
	stw	zero, 72(sp)
	ldw	r2, 176(sp)
	ldw	r3, 72(sp)
	and	r14, r2, r3
	ldw	r2, 180(sp)
	ldw	r3, 76(sp)
	and	r15, r2, r3
	slli	r2, r15, 8
	srli	r8, r14, 24
	or	r8, r2, r8
	srli	r9, r15, 24
	ldw	r2, 64(sp)
	or	r2, r2, r8
	stw	r2, 80(sp)
	ldw	r2, 68(sp)
	or	r2, r2, r9
	stw	r2, 84(sp)
	ldw	r2, 184(sp)
	sll	r2, r2, zero
	stw	r2, 92(sp)
	stw	zero, 88(sp)
	ldw	r2, 176(sp)
	ldw	r3, 88(sp)
	and	r20, r2, r3
	ldw	r2, 180(sp)
	ldw	r3, 92(sp)
	and	r21, r2, r3
	slli	r2, r21, 24
	srli	r18, r20, 8
	or	r18, r2, r18
	srli	r19, r21, 8
	ldw	r2, 80(sp)
	or	r2, r2, r18
	stw	r2, 96(sp)
	ldw	r2, 84(sp)
	or	r2, r2, r19
	stw	r2, 100(sp)
	ldw	r2, 184(sp)
	srli	r3, r2, 8
	ldw	r2, 188(sp)
	slli	r2, r2, 24
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	or	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 184(sp)
	slli	r2, r2, 24
	stw	r2, 0(sp)
	ldw	r2, 176(sp)
	ldw	r3, 0(sp)
	and	r2, r2, r3
	stw	r2, 40(sp)
	ldw	r2, 180(sp)
	ldw	r3, 4(sp)
	and	r2, r2, r3
	stw	r2, 44(sp)
	ldw	r2, 40(sp)
	srli	r2, r2, 24
	ldw	r3, 44(sp)
	slli	r3, r3, 8
	stw	r3, 12(sp)
	ldw	r3, 12(sp)
	or	r2, r2, r3
	stw	r2, 12(sp)
	ldw	r2, 40(sp)
	slli	r2, r2, 8
	stw	r2, 8(sp)
	ldw	r2, 96(sp)
	ldw	r3, 8(sp)
	or	r2, r2, r3
	stw	r2, 104(sp)
	ldw	r2, 100(sp)
	ldw	r3, 12(sp)
	or	r2, r2, r3
	stw	r2, 108(sp)
	ldw	r2, 184(sp)
	srli	r3, r2, 16
	ldw	r2, 188(sp)
	slli	r2, r2, 16
	stw	r2, 20(sp)
	ldw	r2, 20(sp)
	or	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r2, 184(sp)
	slli	r2, r2, 16
	stw	r2, 16(sp)
	ldw	r2, 176(sp)
	ldw	r3, 16(sp)
	and	r2, r2, r3
	stw	r2, 48(sp)
	ldw	r2, 180(sp)
	ldw	r3, 20(sp)
	and	r2, r2, r3
	stw	r2, 52(sp)
	ldw	r2, 48(sp)
	srli	r2, r2, 8
	ldw	r3, 52(sp)
	slli	r3, r3, 24
	stw	r3, 28(sp)
	ldw	r3, 28(sp)
	or	r2, r2, r3
	stw	r2, 28(sp)
	ldw	r2, 48(sp)
	slli	r2, r2, 24
	stw	r2, 24(sp)
	ldw	r2, 104(sp)
	ldw	r3, 24(sp)
	or	r2, r2, r3
	stw	r2, 112(sp)
	ldw	r2, 108(sp)
	ldw	r3, 28(sp)
	or	r2, r2, r3
	stw	r2, 116(sp)
	ldw	r2, 184(sp)
	srli	r2, r2, 24
	ldw	r3, 188(sp)
	slli	r3, r3, 8
	stw	r3, 36(sp)
	ldw	r3, 36(sp)
	or	r2, r2, r3
	stw	r2, 36(sp)
	ldw	r2, 184(sp)
	slli	r2, r2, 8
	stw	r2, 32(sp)
	ldw	r2, 176(sp)
	ldw	r3, 32(sp)
	and	r2, r2, r3
	stw	r2, 160(sp)
	ldw	r2, 180(sp)
	ldw	r3, 36(sp)
	and	r2, r2, r3
	stw	r2, 164(sp)
	ldw	r2, 160(sp)
	slli	r2, r2, 8
	stw	r2, 124(sp)
	stw	zero, 120(sp)
	ldw	r2, 112(sp)
	ldw	r3, 120(sp)
	or	r2, r2, r3
	stw	r2, 128(sp)
	ldw	r2, 116(sp)
	ldw	r3, 124(sp)
	or	r2, r2, r3
	stw	r2, 132(sp)
	ldw	r3, 176(sp)
	ldw	r2, 184(sp)
	and	r2, r3, r2
	stw	r2, 168(sp)
	ldw	r3, 180(sp)
	ldw	r2, 188(sp)
	and	r2, r3, r2
	stw	r2, 172(sp)
	ldw	r2, 168(sp)
	slli	r2, r2, 24
	stw	r2, 140(sp)
	stw	zero, 136(sp)
	ldw	r2, 128(sp)
	ldw	r3, 136(sp)
	or	r2, r2, r3
	stw	r2, 144(sp)
	ldw	r2, 132(sp)
	ldw	r3, 140(sp)
	or	r2, r2, r3
	stw	r2, 148(sp)
	ldw	r4, 144(sp)
	ldw	r5, 148(sp)
	mov	r2, r4
	mov	r3, r5
	ldw	r21, 212(sp)
	ldw	r20, 208(sp)
	ldw	r19, 204(sp)
	ldw	r18, 200(sp)
	ldw	r17, 196(sp)
	ldw	r16, 192(sp)
	addi	sp, sp, 216
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	stw	zero, 4(sp)
	br	.L455
.L458:
	ldw	r3, 0(sp)
	ldw	r2, 4(sp)
	srl	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L456
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	br	.L457
.L456:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L455:
	ldw	r2, 4(sp)
	cmpltui	r2, r2, 32
	bne	r2, zero, .L458
	mov	r2, zero
.L457:
	addi	sp, sp, 8
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	addi	sp, sp, -4
	stw	r16, 0(sp)
	mov	r2, r4
	bne	r2, zero, .L460
	mov	r2, zero
	br	.L461
.L460:
	movi	r16, 1
	br	.L462
.L463:
	srai	r2, r2, 1
	addi	r16, r16, 1
.L462:
	andi	r3, r2, 1
	beq	r3, zero, .L463
	mov	r2, r16
.L461:
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
	blt	r2, zero, .L465
	movhi	r5, 32640
	addi	r5, r5, -1
	ldw	r4, 0(sp)
	call	__gtsf2
	bge	zero, r2, .L470
.L465:
	movi	r2, 1
	br	.L469
.L470:
	mov	r2, zero
.L469:
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
	blt	r2, zero, .L472
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__gtdf2
	bge	zero, r2, .L477
.L472:
	movi	r2, 1
	br	.L476
.L477:
	mov	r2, zero
.L476:
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
	blt	r2, zero, .L479
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__gtdf2
	bge	zero, r2, .L484
.L479:
	movi	r2, 1
	br	.L483
.L484:
	mov	r2, zero
.L483:
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
	mov	r4, r2
	mov	r5, r3
	ldw	r2, 4(sp)
	stw	r4, 0(r2)
	stw	r5, 4(r2)
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
	bne	r2, zero, .L487
	ldw	r2, 4(sp)
	mov	r5, r2
	mov	r4, r2
	call	__addsf3
	mov	r3, r2
	mov	r2, r3
	mov	r5, r2
	ldw	r4, 4(sp)
	call	__eqsf2
	beq	r2, zero, .L487
	ldw	r2, 0(sp)
	bge	r2, zero, .L488
	movhi	r2, 16128
	br	.L489
.L488:
	movhi	r2, 16384
.L489:
	stw	r2, 8(sp)
.L492:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L490
	ldw	r5, 8(sp)
	ldw	r4, 4(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 4(sp)
.L490:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L494
	ldw	r5, 8(sp)
	ldw	r4, 8(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 8(sp)
	br	.L492
.L494:
	nop
.L487:
	ldw	r2, 4(sp)
	mov	r3, r2
	mov	r2, r3
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
	bne	r2, zero, .L496
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	mov	r6, r2
	mov	r7, r3
	mov	r4, r2
	mov	r5, r3
	call	__adddf3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	r6, r2
	mov	r7, r3
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__eqdf2
	beq	r2, zero, .L496
	ldw	r2, 0(sp)
	bge	r2, zero, .L497
	mov	r2, zero
	movhi	r3, 16352
	br	.L498
.L497:
	mov	r2, zero
	movhi	r3, 16384
.L498:
	stw	r2, 12(sp)
	stw	r3, 16(sp)
.L501:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L499
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 4(sp)
	stw	r5, 8(sp)
.L499:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L503
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 12(sp)
	ldw	r5, 16(sp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 12(sp)
	stw	r5, 16(sp)
	br	.L501
.L503:
	nop
.L496:
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	bne	r2, zero, .L505
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	mov	r6, r2
	mov	r7, r3
	mov	r4, r2
	mov	r5, r3
	call	__adddf3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	r6, r2
	mov	r7, r3
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__eqdf2
	beq	r2, zero, .L505
	ldw	r2, 0(sp)
	bge	r2, zero, .L506
	mov	r2, zero
	movhi	r3, 16352
	br	.L507
.L506:
	mov	r2, zero
	movhi	r3, 16384
.L507:
	stw	r2, 12(sp)
	stw	r3, 16(sp)
.L510:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L508
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 4(sp)
	stw	r5, 8(sp)
.L508:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L512
	ldw	r6, 12(sp)
	ldw	r7, 16(sp)
	ldw	r4, 12(sp)
	ldw	r5, 16(sp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 12(sp)
	stw	r5, 16(sp)
	br	.L510
.L512:
	nop
.L505:
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 20(sp)
	addi	sp, sp, 24
	ret
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	addi	sp, sp, -20
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 4(sp)
	stw	r2, 16(sp)
	ldw	r2, 8(sp)
	stw	r2, 12(sp)
	br	.L514
.L515:
	ldw	r2, 16(sp)
	addi	r3, r2, 1
	stw	r3, 16(sp)
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
.L514:
	ldw	r2, 0(sp)
	bne	r2, zero, .L515
	ldw	r2, 8(sp)
	addi	sp, sp, 20
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
	br	.L518
.L520:
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	stw	r2, 0(sp)
.L518:
	ldw	r2, 0(sp)
	beq	r2, zero, .L519
	ldw	r2, 4(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 12(sp)
	stb	r3, 0(r2)
	ldw	r2, 12(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L520
.L519:
	ldw	r2, 0(sp)
	bne	r2, zero, .L521
	ldw	r2, 12(sp)
	stb	zero, 0(r2)
.L521:
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
	br	.L524
.L529:
	nop
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
.L524:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	bgeu	r3, r2, .L525
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	add	r2, r3, r2
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L529
.L525:
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
	br	.L531
.L535:
	ldw	r2, 0(sp)
	stw	r2, 8(sp)
	br	.L532
.L534:
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
	bne	r3, r2, .L532
	ldw	r2, 4(sp)
	br	.L533
.L532:
	ldw	r2, 8(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L534
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L531:
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L535
	mov	r2, zero
.L533:
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
.L538:
	ldbu	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	ldw	r4, 0(sp)
	bne	r4, r3, .L537
	stw	r2, 4(sp)
.L537:
	mov	r3, r2
	addi	r2, r3, 1
	ldbu	r3, 0(r3)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L538
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
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r4, 0(sp)
	call	strlen
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	bne	r2, zero, .L543
	ldw	r2, 4(sp)
	br	.L542
.L545:
	ldw	r6, 8(sp)
	ldw	r5, 0(sp)
	ldw	r4, 12(sp)
	call	strncmp
	bne	r2, zero, .L544
	ldw	r2, 12(sp)
	br	.L542
.L544:
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
.L543:
	ldw	r2, 0(sp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r5, r2
	ldw	r4, 12(sp)
	call	strchr
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	bne	r2, zero, .L545
	mov	r2, zero
.L542:
	ldw	ra, 16(sp)
	addi	sp, sp, 20
	ret
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	stw	r4, 8(sp)
	stw	r5, 12(sp)
	stw	r6, 0(sp)
	stw	r7, 4(sp)
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__ltdf2
	bge	r2, zero, .L547
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__gtdf2
	blt	zero, r2, .L549
.L547:
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__gtdf2
	bge	zero, r2, .L550
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	call	__ltdf2
	bge	r2, zero, .L550
.L549:
	ldw	r16, 8(sp)
	ldw	r2, 12(sp)
	xorhi	r17, r2, 32768
	br	.L553
.L550:
	ldw	r16, 8(sp)
	ldw	r17, 12(sp)
.L553:
	mov	r4, r16
	mov	r5, r17
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 24(sp)
	ldw	r17, 20(sp)
	ldw	r16, 16(sp)
	addi	sp, sp, 28
	ret
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -28
	stw	ra, 24(sp)
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
	bne	r2, zero, .L557
	ldw	r2, 12(sp)
	br	.L558
.L557:
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	cmpltu	r2, r3, r2
	andi	r2, r2, 0xff
	beq	r2, zero, .L559
	mov	r2, zero
	br	.L558
.L559:
	ldw	r2, 12(sp)
	stw	r2, 20(sp)
	br	.L560
.L562:
	ldw	r2, 20(sp)
	ldbu	r3, 0(r2)
	ldw	r2, 4(sp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r3, r2, .L561
	ldw	r2, 20(sp)
	addi	r3, r2, 1
	ldw	r2, 4(sp)
	addi	r4, r2, 1
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	mov	r6, r2
	mov	r5, r4
	mov	r4, r3
	call	memcmp
	bne	r2, zero, .L561
	ldw	r2, 20(sp)
	br	.L558
.L561:
	ldw	r2, 20(sp)
	addi	r2, r2, 1
	stw	r2, 20(sp)
.L560:
	ldw	r2, 20(sp)
	ldw	r3, 16(sp)
	bgeu	r3, r2, .L562
	mov	r2, zero
.L558:
	ldw	ra, 24(sp)
	addi	sp, sp, 28
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
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	r19, 32(sp)
	stw	r18, 28(sp)
	stw	r17, 24(sp)
	stw	r16, 20(sp)
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
	bge	r2, zero, .L566
	ldw	r18, 4(sp)
	ldw	r2, 8(sp)
	xorhi	r19, r2, 32768
	stw	r18, 4(sp)
	stw	r19, 8(sp)
	movi	r2, 1
	stw	r2, 16(sp)
.L566:
	mov	r6, zero
	movhi	r7, 16368
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__gedf2
	blt	r2, zero, .L581
	br	.L570
.L571:
	ldw	r2, 12(sp)
	addi	r2, r2, 1
	stw	r2, 12(sp)
	mov	r6, zero
	movhi	r7, 16384
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__divdf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 4(sp)
	stw	r5, 8(sp)
.L570:
	mov	r6, zero
	movhi	r7, 16368
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__gedf2
	bge	r2, zero, .L571
	br	.L572
.L581:
	mov	r6, zero
	movhi	r7, 16352
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__ltdf2
	bge	r2, zero, .L572
	mov	r6, zero
	mov	r7, zero
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__eqdf2
	beq	r2, zero, .L572
	br	.L574
.L575:
	ldw	r2, 12(sp)
	addi	r2, r2, -1
	stw	r2, 12(sp)
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	mov	r6, r2
	mov	r7, r3
	mov	r4, r2
	mov	r5, r3
	call	__adddf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 4(sp)
	stw	r5, 8(sp)
.L574:
	mov	r6, zero
	movhi	r7, 16352
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__ltdf2
	blt	r2, zero, .L575
.L572:
	ldw	r2, 0(sp)
	ldw	r3, 12(sp)
	stw	r3, 0(r2)
	ldw	r2, 16(sp)
	beq	r2, zero, .L576
	ldw	r16, 4(sp)
	ldw	r2, 8(sp)
	xorhi	r17, r2, 32768
	stw	r16, 4(sp)
	stw	r17, 8(sp)
.L576:
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	ldw	ra, 36(sp)
	ldw	r19, 32(sp)
	ldw	r18, 28(sp)
	ldw	r17, 24(sp)
	ldw	r16, 20(sp)
	addi	sp, sp, 40
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
	br	.L583
.L586:
	ldw	r2, 16(sp)
	andi	r12, r2, 1
	ldw	r2, 20(sp)
	and	r13, r2, zero
	mov	r2, r12
	or	r2, r2, r13
	beq	r2, zero, .L584
	ldw	r4, 24(sp)
	ldw	r5, 28(sp)
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	add	r2, r4, r6
	cmpltu	r14, r2, r4
	add	r3, r5, r7
	add	r4, r14, r3
	mov	r3, r4
	stw	r2, 24(sp)
	stw	r3, 28(sp)
.L584:
	ldw	r2, 0(sp)
	srli	r2, r2, 31
	ldw	r3, 4(sp)
	slli	r9, r3, 1
	or	r9, r2, r9
	ldw	r2, 0(sp)
	slli	r8, r2, 1
	stw	r8, 0(sp)
	stw	r9, 4(sp)
	ldw	r2, 20(sp)
	slli	r2, r2, 31
	ldw	r3, 16(sp)
	srli	r10, r3, 1
	or	r10, r2, r10
	ldw	r2, 20(sp)
	srli	r11, r2, 1
	stw	r10, 16(sp)
	stw	r11, 20(sp)
.L583:
	ldw	r2, 16(sp)
	ldw	r3, 20(sp)
	or	r2, r2, r3
	bne	r2, zero, .L586
	ldw	r2, 24(sp)
	ldw	r3, 28(sp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	br	.L589
.L591:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 16(sp)
	add	r2, r2, r2
	stw	r2, 16(sp)
.L589:
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L592
	ldw	r2, 16(sp)
	beq	r2, zero, .L592
	ldw	r2, 4(sp)
	bge	r2, zero, .L591
	br	.L592
.L594:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L593
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	or	r2, r3, r2
	stw	r2, 12(sp)
.L593:
	ldw	r2, 16(sp)
	srli	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
.L592:
	ldw	r2, 16(sp)
	bne	r2, zero, .L594
	ldw	r2, 0(sp)
	beq	r2, zero, .L595
	ldw	r2, 8(sp)
	br	.L596
.L595:
	ldw	r2, 12(sp)
.L596:
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
	stb	r2, 0(sp)
	ldb	r2, 0(sp)
	bge	r2, zero, .L598
	ldbu	r2, 0(sp)
	nor	r2, zero, r2
	stb	r2, 0(sp)
.L598:
	ldb	r2, 0(sp)
	bne	r2, zero, .L599
	movi	r2, 7
	br	.L600
.L599:
	ldb	r2, 0(sp)
	slli	r2, r2, 8
	mov	r4, r2
	call	__clzsi2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	addi	r2, r2, -1
.L600:
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
	ldw	r4, 4(sp)
	bge	r4, zero, .L602
	ldw	r4, 0(sp)
	nor	r2, zero, r4
	ldw	r4, 4(sp)
	nor	r3, zero, r4
	stw	r2, 0(sp)
	stw	r3, 4(sp)
.L602:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	or	r2, r2, r3
	bne	r2, zero, .L604
	movi	r2, 63
	br	.L605
.L604:
	ldw	r2, 0(sp)
	ldw	r3, 4(sp)
	mov	r4, r2
	mov	r5, r3
	call	__clzdi2
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	addi	r2, r2, -1
.L605:
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
	br	.L607
.L609:
	ldw	r2, 4(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L608
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L608:
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	add	r2, r2, r2
	stw	r2, 0(sp)
.L607:
	ldw	r2, 4(sp)
	bne	r2, zero, .L609
	ldw	r2, 8(sp)
	addi	sp, sp, 12
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	addi	sp, sp, -32
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 3
	stw	r2, 20(sp)
	ldw	r3, 0(sp)
	movi	r2, -8
	and	r2, r3, r2
	stw	r2, 24(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r3, 16(sp)
	ldw	r2, 12(sp)
	bltu	r3, r2, .L612
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L619
.L612:
	stw	zero, 28(sp)
	br	.L614
.L615:
	ldw	r2, 28(sp)
	slli	r2, r2, 3
	ldw	r3, 4(sp)
	add	r5, r3, r2
	ldw	r2, 28(sp)
	slli	r2, r2, 3
	ldw	r3, 8(sp)
	add	r4, r3, r2
	ldw	r2, 0(r5)
	ldw	r3, 4(r5)
	stw	r2, 0(r4)
	stw	r3, 4(r4)
	ldw	r2, 28(sp)
	addi	r2, r2, 1
	stw	r2, 28(sp)
.L614:
	ldw	r3, 28(sp)
	ldw	r2, 20(sp)
	bltu	r3, r2, .L615
	br	.L616
.L617:
	ldw	r3, 12(sp)
	ldw	r2, 24(sp)
	add	r3, r3, r2
	ldw	r4, 16(sp)
	ldw	r2, 24(sp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 24(sp)
	addi	r2, r2, 1
	stw	r2, 24(sp)
.L616:
	ldw	r2, 0(sp)
	ldw	r3, 24(sp)
	bltu	r3, r2, .L617
	br	.L618
.L620:
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r4, 16(sp)
	ldw	r2, 0(sp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L619:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L620
	nop
.L618:
	nop
	addi	sp, sp, 32
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	addi	sp, sp, -28
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 1
	stw	r2, 20(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r3, 16(sp)
	ldw	r2, 12(sp)
	bltu	r3, r2, .L622
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L628
.L622:
	stw	zero, 24(sp)
	br	.L624
.L625:
	ldw	r2, 24(sp)
	add	r2, r2, r2
	mov	r3, r2
	ldw	r2, 4(sp)
	add	r3, r2, r3
	ldw	r2, 24(sp)
	add	r2, r2, r2
	mov	r4, r2
	ldw	r2, 8(sp)
	add	r2, r2, r4
	ldhu	r3, 0(r3)
	sth	r3, 0(r2)
	ldw	r2, 24(sp)
	addi	r2, r2, 1
	stw	r2, 24(sp)
.L624:
	ldw	r3, 24(sp)
	ldw	r2, 20(sp)
	bltu	r3, r2, .L625
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L627
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	ldw	r3, 12(sp)
	add	r3, r3, r2
	ldw	r2, 0(sp)
	addi	r2, r2, -1
	ldw	r4, 16(sp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	br	.L627
.L629:
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r4, 16(sp)
	ldw	r2, 0(sp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L628:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L629
	nop
.L627:
	nop
	addi	sp, sp, 28
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	addi	sp, sp, -32
	stw	r4, 8(sp)
	stw	r5, 4(sp)
	stw	r6, 0(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 2
	stw	r2, 20(sp)
	ldw	r3, 0(sp)
	movi	r2, -4
	and	r2, r3, r2
	stw	r2, 24(sp)
	ldw	r2, 8(sp)
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r3, 16(sp)
	ldw	r2, 12(sp)
	bltu	r3, r2, .L631
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L638
.L631:
	stw	zero, 28(sp)
	br	.L633
.L634:
	ldw	r2, 28(sp)
	slli	r2, r2, 2
	ldw	r3, 4(sp)
	add	r3, r3, r2
	ldw	r2, 28(sp)
	slli	r2, r2, 2
	ldw	r4, 8(sp)
	add	r2, r4, r2
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
	ldw	r2, 28(sp)
	addi	r2, r2, 1
	stw	r2, 28(sp)
.L633:
	ldw	r3, 28(sp)
	ldw	r2, 20(sp)
	bltu	r3, r2, .L634
	br	.L635
.L636:
	ldw	r3, 12(sp)
	ldw	r2, 24(sp)
	add	r3, r3, r2
	ldw	r4, 16(sp)
	ldw	r2, 24(sp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, 24(sp)
	addi	r2, r2, 1
	stw	r2, 24(sp)
.L635:
	ldw	r2, 0(sp)
	ldw	r3, 24(sp)
	bltu	r3, r2, .L636
	br	.L637
.L639:
	ldw	r3, 12(sp)
	ldw	r2, 0(sp)
	add	r3, r3, r2
	ldw	r4, 16(sp)
	ldw	r2, 0(sp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L638:
	ldw	r2, 0(sp)
	addi	r3, r2, -1
	stw	r3, 0(sp)
	bne	r2, zero, .L639
	nop
.L637:
	nop
	addi	sp, sp, 32
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
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
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
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
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
	sth	r2, 0(sp)
	stw	zero, 4(sp)
	br	.L653
.L656:
	ldhu	r3, 0(sp)
	movi	r4, 15
	ldw	r2, 4(sp)
	sub	r2, r4, r2
	sra	r2, r3, r2
	andi	r2, r2, 1
	bne	r2, zero, .L658
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L653:
	ldw	r2, 4(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L656
	br	.L655
.L658:
	nop
.L655:
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
	sth	r2, 0(sp)
	stw	zero, 4(sp)
	br	.L660
.L663:
	ldhu	r3, 0(sp)
	ldw	r2, 4(sp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	bne	r2, zero, .L665
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L660:
	ldw	r2, 4(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L663
	br	.L662
.L665:
	nop
.L662:
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
	blt	r2, zero, .L671
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
	br	.L669
.L671:
	ldw	r4, 0(sp)
	call	__fixsfsi
.L669:
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
	sth	r2, 0(sp)
	stw	zero, 4(sp)
	stw	zero, 8(sp)
	br	.L673
.L675:
	ldhu	r3, 0(sp)
	ldw	r2, 8(sp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L674
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L674:
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
.L673:
	ldw	r2, 8(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L675
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
	sth	r2, 0(sp)
	stw	zero, 4(sp)
	stw	zero, 8(sp)
	br	.L678
.L680:
	ldhu	r3, 0(sp)
	ldw	r2, 8(sp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L679
	ldw	r2, 4(sp)
	addi	r2, r2, 1
	stw	r2, 4(sp)
.L679:
	ldw	r2, 8(sp)
	addi	r2, r2, 1
	stw	r2, 8(sp)
.L678:
	ldw	r2, 8(sp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L680
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
	br	.L683
.L685:
	ldw	r2, 4(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L684
	ldw	r3, 8(sp)
	ldw	r2, 0(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L684:
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	add	r2, r2, r2
	stw	r2, 0(sp)
.L683:
	ldw	r2, 4(sp)
	bne	r2, zero, .L685
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
	bne	r2, zero, .L690
	mov	r2, zero
	br	.L689
.L692:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L691
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L691:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	srli	r2, r2, 1
	stw	r2, 0(sp)
.L690:
	ldw	r2, 0(sp)
	bne	r2, zero, .L692
	ldw	r2, 8(sp)
.L689:
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
	br	.L694
.L696:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 16(sp)
	add	r2, r2, r2
	stw	r2, 16(sp)
.L694:
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L697
	ldw	r2, 16(sp)
	beq	r2, zero, .L697
	ldw	r2, 4(sp)
	bge	r2, zero, .L696
	br	.L697
.L699:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L698
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	or	r2, r3, r2
	stw	r2, 12(sp)
.L698:
	ldw	r2, 16(sp)
	srli	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
.L697:
	ldw	r2, 16(sp)
	bne	r2, zero, .L699
	ldw	r2, 0(sp)
	beq	r2, zero, .L700
	ldw	r2, 8(sp)
	br	.L701
.L700:
	ldw	r2, 12(sp)
.L701:
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
	bge	r2, zero, .L710
	movi	r2, -1
	br	.L705
.L710:
	ldw	r5, 0(sp)
	ldw	r4, 4(sp)
	call	__gtsf2
	bge	zero, r2, .L711
	movi	r2, 1
	br	.L705
.L711:
	mov	r2, zero
.L705:
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
	bge	r2, zero, .L720
	movi	r2, -1
	br	.L715
.L720:
	ldw	r6, 0(sp)
	ldw	r7, 4(sp)
	ldw	r4, 8(sp)
	ldw	r5, 12(sp)
	call	__gtdf2
	bge	zero, r2, .L721
	movi	r2, 1
	br	.L715
.L721:
	mov	r2, zero
.L715:
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
	ldw	r4, 4(sp)
	mov	r2, r4
	srai	r4, r4, 31
	mov	r3, r4
	ldw	r4, 0(sp)
	mov	r8, r4
	srai	r4, r4, 31
	mov	r9, r4
	mov	r6, r8
	mov	r7, r9
	mov	r4, r2
	mov	r5, r3
	call	__muldi3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	ldw	r4, 4(sp)
	mov	r2, r4
	mov	r3, zero
	ldw	r4, 0(sp)
	mov	r8, r4
	mov	r9, zero
	mov	r6, r8
	mov	r7, r9
	mov	r4, r2
	mov	r5, r3
	call	__muldi3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	bge	r2, zero, .L727
	ldw	r2, 0(sp)
	sub	r2, zero, r2
	stw	r2, 0(sp)
	movi	r2, 1
	stw	r2, 12(sp)
.L727:
	stb	zero, 19(sp)
	br	.L728
.L731:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L729
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
.L729:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 0(sp)
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldbu	r2, 19(sp)
	addi	r2, r2, 1
	stb	r2, 19(sp)
.L728:
	ldw	r2, 0(sp)
	beq	r2, zero, .L730
	ldbu	r2, 19(sp)
	andi	r2, r2, 0xff
	cmpltui	r2, r2, 32
	bne	r2, zero, .L731
.L730:
	ldw	r2, 12(sp)
	beq	r2, zero, .L732
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	br	.L734
.L732:
	ldw	r2, 8(sp)
.L734:
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
	bge	r2, zero, .L736
	ldw	r2, 4(sp)
	sub	r2, zero, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	stw	r2, 12(sp)
.L736:
	ldw	r2, 0(sp)
	bge	r2, zero, .L737
	ldw	r2, 0(sp)
	sub	r2, zero, r2
	stw	r2, 0(sp)
	ldw	r2, 12(sp)
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	stw	r2, 12(sp)
.L737:
	ldw	r2, 4(sp)
	ldw	r3, 0(sp)
	mov	r6, zero
	mov	r5, r3
	mov	r4, r2
	call	__udivmodsi4
	stw	r2, 8(sp)
	ldw	r2, 12(sp)
	beq	r2, zero, .L738
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	stw	r2, 8(sp)
.L738:
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
	bge	r2, zero, .L741
	ldw	r2, 4(sp)
	sub	r2, zero, r2
	stw	r2, 4(sp)
	movi	r2, 1
	stw	r2, 12(sp)
.L741:
	ldw	r2, 0(sp)
	bge	r2, zero, .L742
	ldw	r2, 0(sp)
	sub	r2, zero, r2
	stw	r2, 0(sp)
.L742:
	ldw	r2, 4(sp)
	ldw	r3, 0(sp)
	movi	r6, 1
	mov	r5, r3
	mov	r4, r2
	call	__udivmodsi4
	stw	r2, 8(sp)
	ldw	r2, 12(sp)
	beq	r2, zero, .L743
	ldw	r2, 8(sp)
	sub	r2, zero, r2
	stw	r2, 8(sp)
.L743:
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
	sth	r2, 8(sp)
	mov	r2, r3
	sth	r2, 4(sp)
	movi	r2, 1
	sth	r2, 14(sp)
	sth	zero, 12(sp)
	br	.L746
.L748:
	ldhu	r2, 4(sp)
	add	r2, r2, r2
	sth	r2, 4(sp)
	ldhu	r2, 14(sp)
	add	r2, r2, r2
	sth	r2, 14(sp)
.L746:
	ldhu	r3, 4(sp)
	ldhu	r2, 8(sp)
	bgeu	r3, r2, .L749
	ldhu	r2, 14(sp)
	beq	r2, zero, .L749
	ldhu	r2, 4(sp)
	andi	r2, r2, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	bge	r2, zero, .L748
	br	.L749
.L751:
	ldhu	r3, 8(sp)
	ldhu	r2, 4(sp)
	bltu	r3, r2, .L750
	ldhu	r3, 8(sp)
	ldhu	r2, 4(sp)
	sub	r2, r3, r2
	sth	r2, 8(sp)
	ldhu	r3, 12(sp)
	ldhu	r2, 14(sp)
	or	r2, r3, r2
	sth	r2, 12(sp)
.L750:
	ldhu	r2, 14(sp)
	srli	r2, r2, 1
	sth	r2, 14(sp)
	ldhu	r2, 4(sp)
	srli	r2, r2, 1
	sth	r2, 4(sp)
.L749:
	ldhu	r2, 14(sp)
	bne	r2, zero, .L751
	ldw	r2, 0(sp)
	beq	r2, zero, .L752
	ldhu	r2, 8(sp)
	br	.L753
.L752:
	ldhu	r2, 12(sp)
.L753:
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
	br	.L755
.L757:
	ldw	r2, 4(sp)
	add	r2, r2, r2
	stw	r2, 4(sp)
	ldw	r2, 16(sp)
	add	r2, r2, r2
	stw	r2, 16(sp)
.L755:
	ldw	r3, 4(sp)
	ldw	r2, 8(sp)
	bgeu	r3, r2, .L758
	ldw	r2, 16(sp)
	beq	r2, zero, .L758
	ldw	r2, 4(sp)
	bge	r2, zero, .L757
	br	.L758
.L760:
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	bltu	r3, r2, .L759
	ldw	r3, 8(sp)
	ldw	r2, 4(sp)
	sub	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 16(sp)
	or	r2, r3, r2
	stw	r2, 12(sp)
.L759:
	ldw	r2, 16(sp)
	srli	r2, r2, 1
	stw	r2, 16(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 1
	stw	r2, 4(sp)
.L758:
	ldw	r2, 16(sp)
	bne	r2, zero, .L760
	ldw	r2, 0(sp)
	beq	r2, zero, .L761
	ldw	r2, 8(sp)
	br	.L762
.L761:
	ldw	r2, 12(sp)
.L762:
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
	beq	r2, zero, .L764
	stw	zero, 12(sp)
	ldw	r3, 20(sp)
	ldw	r4, 0(sp)
	ldw	r2, 28(sp)
	sub	r2, r4, r2
	sll	r2, r3, r2
	stw	r2, 16(sp)
	br	.L765
.L764:
	ldw	r2, 0(sp)
	bne	r2, zero, .L766
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	br	.L768
.L766:
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
.L765:
	ldw	r2, 12(sp)
	ldw	r3, 16(sp)
.L768:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	beq	r2, zero, .L770
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
	br	.L771
.L770:
	ldw	r2, 0(sp)
	bne	r2, zero, .L772
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	br	.L774
.L772:
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
.L771:
	ldw	r2, 12(sp)
	ldw	r3, 16(sp)
.L774:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	addi	sp, sp, 32
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	addi	sp, sp, -136
	stw	r21, 132(sp)
	stw	r20, 128(sp)
	stw	r19, 124(sp)
	stw	r18, 120(sp)
	stw	r17, 116(sp)
	stw	r16, 112(sp)
	stw	r4, 104(sp)
	stw	r5, 108(sp)
	ldw	r2, 108(sp)
	srli	r12, r2, 24
	mov	r13, zero
	ldw	r2, 108(sp)
	srli	r8, r2, 8
	mov	r9, zero
	andi	r6, r8, 65280
	and	r7, r9, zero
	or	r2, r12, r6
	stw	r2, 0(sp)
	or	r2, r13, r7
	stw	r2, 4(sp)
	ldw	r2, 108(sp)
	slli	r3, r2, 8
	ldw	r2, 104(sp)
	srli	r10, r2, 24
	or	r10, r3, r10
	ldw	r2, 108(sp)
	srli	r11, r2, 24
	andhi	r16, r10, 255
	and	r17, r11, zero
	ldw	r2, 0(sp)
	or	r2, r2, r16
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	or	r2, r2, r17
	stw	r2, 12(sp)
	ldw	r2, 108(sp)
	slli	r3, r2, 24
	ldw	r2, 104(sp)
	srli	r14, r2, 8
	or	r14, r3, r14
	ldw	r2, 108(sp)
	srli	r15, r2, 8
	andhi	r2, r14, 65280
	stw	r2, 16(sp)
	and	r2, r15, zero
	stw	r2, 20(sp)
	ldw	r2, 8(sp)
	ldw	r3, 16(sp)
	or	r2, r2, r3
	stw	r2, 24(sp)
	ldw	r2, 12(sp)
	ldw	r3, 20(sp)
	or	r2, r2, r3
	stw	r2, 28(sp)
	ldw	r2, 104(sp)
	srli	r3, r2, 24
	ldw	r2, 108(sp)
	slli	r21, r2, 8
	or	r21, r3, r21
	ldw	r2, 104(sp)
	slli	r20, r2, 8
	and	r2, r20, zero
	stw	r2, 32(sp)
	andi	r2, r21, 255
	stw	r2, 36(sp)
	ldw	r2, 24(sp)
	ldw	r3, 32(sp)
	or	r2, r2, r3
	stw	r2, 40(sp)
	ldw	r2, 28(sp)
	ldw	r3, 36(sp)
	or	r2, r2, r3
	stw	r2, 44(sp)
	ldw	r2, 104(sp)
	srli	r2, r2, 8
	ldw	r3, 108(sp)
	slli	r19, r3, 24
	or	r19, r2, r19
	ldw	r2, 104(sp)
	slli	r18, r2, 24
	and	r2, r18, zero
	stw	r2, 48(sp)
	andi	r2, r19, 65280
	stw	r2, 52(sp)
	ldw	r2, 40(sp)
	ldw	r3, 48(sp)
	or	r2, r2, r3
	stw	r2, 56(sp)
	ldw	r2, 44(sp)
	ldw	r3, 52(sp)
	or	r2, r2, r3
	stw	r2, 60(sp)
	ldw	r2, 104(sp)
	slli	r2, r2, 8
	stw	r2, 68(sp)
	stw	zero, 64(sp)
	ldw	r2, 64(sp)
	and	r2, r2, zero
	stw	r2, 72(sp)
	ldw	r2, 68(sp)
	andhi	r2, r2, 255
	stw	r2, 76(sp)
	ldw	r2, 56(sp)
	ldw	r3, 72(sp)
	or	r2, r2, r3
	stw	r2, 80(sp)
	ldw	r2, 60(sp)
	ldw	r3, 76(sp)
	or	r2, r2, r3
	stw	r2, 84(sp)
	ldw	r2, 104(sp)
	slli	r2, r2, 24
	stw	r2, 92(sp)
	stw	zero, 88(sp)
	ldw	r2, 80(sp)
	ldw	r3, 88(sp)
	or	r2, r2, r3
	stw	r2, 96(sp)
	ldw	r2, 84(sp)
	ldw	r3, 92(sp)
	or	r2, r2, r3
	stw	r2, 100(sp)
	ldw	r4, 96(sp)
	ldw	r5, 100(sp)
	mov	r2, r4
	mov	r3, r5
	ldw	r21, 132(sp)
	ldw	r20, 128(sp)
	ldw	r19, 124(sp)
	ldw	r18, 120(sp)
	ldw	r17, 116(sp)
	ldw	r16, 112(sp)
	addi	sp, sp, 136
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
	addi	sp, sp, -16
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	movui	r3, 65535
	bltu	r3, r2, .L780
	movi	r2, 16
	br	.L781
.L780:
	mov	r2, zero
.L781:
	stw	r2, 8(sp)
	movi	r3, 16
	ldw	r2, 8(sp)
	sub	r2, r3, r2
	ldw	r3, 12(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 65280
	bne	r2, zero, .L782
	movi	r2, 8
	br	.L783
.L782:
	mov	r2, zero
.L783:
	stw	r2, 8(sp)
	movi	r3, 8
	ldw	r2, 8(sp)
	sub	r2, r3, r2
	ldw	r3, 12(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 4(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 240
	bne	r2, zero, .L784
	movi	r2, 4
	br	.L785
.L784:
	mov	r2, zero
.L785:
	stw	r2, 8(sp)
	movi	r3, 4
	ldw	r2, 8(sp)
	sub	r2, r3, r2
	ldw	r3, 12(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 4(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 12
	bne	r2, zero, .L786
	movi	r2, 2
	br	.L787
.L786:
	mov	r2, zero
.L787:
	stw	r2, 8(sp)
	movi	r3, 2
	ldw	r2, 8(sp)
	sub	r2, r3, r2
	ldw	r3, 12(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 4(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 2
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	mov	r4, r2
	movi	r3, 2
	ldw	r2, 12(sp)
	sub	r2, r3, r2
	mul	r3, r4, r2
	ldw	r2, 4(sp)
	add	r2, r3, r2
	addi	sp, sp, 16
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
	bge	r3, r2, .L790
	mov	r2, zero
	br	.L795
.L790:
	ldw	r2, 28(sp)
	ldw	r3, 20(sp)
	bge	r3, r2, .L792
	movi	r2, 2
	br	.L795
.L792:
	ldw	r3, 24(sp)
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L793
	mov	r2, zero
	br	.L795
.L793:
	ldw	r2, 24(sp)
	ldw	r3, 16(sp)
	bgeu	r3, r2, .L794
	movi	r2, 2
	br	.L795
.L794:
	movi	r2, 1
.L795:
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
	addi	sp, sp, -16
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 65535
	bne	r2, zero, .L799
	movi	r2, 16
	br	.L800
.L799:
	mov	r2, zero
.L800:
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 8(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 255
	bne	r2, zero, .L801
	movi	r2, 8
	br	.L802
.L801:
	mov	r2, zero
.L802:
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 8(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 4(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 15
	bne	r2, zero, .L803
	movi	r2, 4
	br	.L804
.L803:
	mov	r2, zero
.L804:
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 8(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 4(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 3
	bne	r2, zero, .L805
	movi	r2, 2
	br	.L806
.L805:
	mov	r2, zero
.L806:
	stw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r2, 8(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	andi	r2, r2, 3
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 4(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 12(sp)
	nor	r2, zero, r2
	andi	r3, r2, 1
	ldw	r2, 12(sp)
	srli	r2, r2, 1
	movi	r4, 2
	sub	r2, r4, r2
	mul	r3, r3, r2
	ldw	r2, 4(sp)
	add	r2, r3, r2
	addi	sp, sp, 16
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
	ldw	r3, 8(sp)
	stw	r2, 20(sp)
	stw	r3, 24(sp)
	ldw	r3, 0(sp)
	ldw	r2, 28(sp)
	and	r2, r3, r2
	beq	r2, zero, .L809
	stw	zero, 16(sp)
	ldw	r3, 24(sp)
	ldw	r4, 0(sp)
	ldw	r2, 28(sp)
	sub	r2, r4, r2
	srl	r2, r3, r2
	stw	r2, 12(sp)
	br	.L810
.L809:
	ldw	r2, 0(sp)
	bne	r2, zero, .L811
	ldw	r2, 4(sp)
	ldw	r3, 8(sp)
	br	.L813
.L811:
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
.L810:
	ldw	r4, 12(sp)
	ldw	r5, 16(sp)
	mov	r2, r4
	mov	r3, r5
.L813:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	addi	sp, sp, 32
	ret
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	addi	sp, sp, -28
	stw	r4, 4(sp)
	stw	r5, 0(sp)
	movi	r2, 16
	stw	r2, 24(sp)
	movi	r3, -1
	ldw	r2, 24(sp)
	srl	r2, r3, r2
	stw	r2, 20(sp)
	ldw	r3, 4(sp)
	ldw	r2, 20(sp)
	and	r3, r3, r2
	ldw	r4, 0(sp)
	ldw	r2, 20(sp)
	and	r2, r4, r2
	mul	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 8(sp)
	ldw	r2, 24(sp)
	srl	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 8(sp)
	ldw	r2, 20(sp)
	and	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 4(sp)
	ldw	r2, 24(sp)
	srl	r3, r3, r2
	ldw	r4, 0(sp)
	ldw	r2, 20(sp)
	and	r2, r4, r2
	mul	r2, r3, r2
	ldw	r3, 16(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 8(sp)
	ldw	r4, 16(sp)
	ldw	r2, 20(sp)
	and	r4, r4, r2
	ldw	r2, 24(sp)
	sll	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 16(sp)
	ldw	r2, 24(sp)
	srl	r2, r3, r2
	stw	r2, 12(sp)
	ldw	r3, 8(sp)
	ldw	r2, 24(sp)
	srl	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 8(sp)
	ldw	r2, 20(sp)
	and	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r3, 0(sp)
	ldw	r2, 24(sp)
	srl	r3, r3, r2
	ldw	r4, 4(sp)
	ldw	r2, 20(sp)
	and	r2, r4, r2
	mul	r2, r3, r2
	ldw	r3, 16(sp)
	add	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r3, 8(sp)
	ldw	r4, 16(sp)
	ldw	r2, 20(sp)
	and	r4, r4, r2
	ldw	r2, 24(sp)
	sll	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r2, 12(sp)
	mov	r4, r2
	ldw	r3, 16(sp)
	ldw	r2, 24(sp)
	srl	r2, r3, r2
	add	r2, r4, r2
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	mov	r5, r2
	ldw	r3, 4(sp)
	ldw	r2, 24(sp)
	srl	r3, r3, r2
	ldw	r4, 0(sp)
	ldw	r2, 24(sp)
	srl	r2, r4, r2
	mul	r2, r3, r2
	add	r2, r5, r2
	stw	r2, 12(sp)
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	addi	sp, sp, 28
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
	ldw	r2, 32(sp)
	ldw	r3, 24(sp)
	mov	r5, r3
	mov	r4, r2
	call	__muldsi3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 16(sp)
	stw	r5, 20(sp)
	ldw	r2, 20(sp)
	mov	r4, r2
	ldw	r2, 36(sp)
	mov	r3, r2
	ldw	r2, 24(sp)
	mul	r3, r3, r2
	ldw	r2, 32(sp)
	ldw	r5, 28(sp)
	mul	r2, r2, r5
	add	r2, r3, r2
	add	r2, r4, r2
	stw	r2, 20(sp)
	ldw	r2, 16(sp)
	ldw	r3, 20(sp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	mov	r6, zero
	mov	r7, zero
	sub	r2, r6, r4
	cmpltu	r8, r6, r2
	sub	r3, r7, r5
	sub	r4, r3, r8
	mov	r3, r4
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	addi	sp, sp, 8
	ret
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	addi	sp, sp, -20
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r2, 0(sp)
	stw	r2, 8(sp)
	ldw	r2, 4(sp)
	stw	r2, 12(sp)
	ldw	r2, 12(sp)
	mov	r3, r2
	ldw	r2, 8(sp)
	xor	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	srli	r2, r2, 16
	ldw	r3, 16(sp)
	xor	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	srli	r2, r2, 8
	ldw	r3, 16(sp)
	xor	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	srli	r2, r2, 4
	ldw	r3, 16(sp)
	xor	r2, r3, r2
	stw	r2, 16(sp)
	ldw	r2, 16(sp)
	andi	r2, r2, 15
	movi	r3, 27030
	sra	r2, r3, r2
	andi	r2, r2, 1
	addi	sp, sp, 20
	ret
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 16
	ldw	r3, 4(sp)
	xor	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 8
	ldw	r3, 4(sp)
	xor	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 4
	ldw	r3, 4(sp)
	xor	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	andi	r2, r2, 15
	movi	r3, 27030
	sra	r2, r3, r2
	andi	r2, r2, 1
	addi	sp, sp, 8
	ret
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	addi	sp, sp, -32
	stw	r18, 28(sp)
	stw	r17, 24(sp)
	stw	r16, 20(sp)
	stw	r4, 0(sp)
	stw	r5, 4(sp)
	ldw	r4, 0(sp)
	stw	r4, 12(sp)
	ldw	r4, 4(sp)
	stw	r4, 16(sp)
	ldw	r4, 16(sp)
	slli	r4, r4, 31
	ldw	r5, 12(sp)
	srli	r2, r5, 1
	or	r2, r4, r2
	ldw	r4, 16(sp)
	srli	r3, r4, 1
	movhi	r4, 21845
	addi	r4, r4, 21845
	and	r14, r2, r4
	movhi	r4, 21845
	addi	r4, r4, 21845
	and	r15, r3, r4
	ldw	r4, 12(sp)
	ldw	r5, 16(sp)
	sub	r2, r4, r14
	cmpltu	r18, r4, r2
	sub	r3, r5, r15
	sub	r4, r3, r18
	mov	r3, r4
	stw	r2, 12(sp)
	stw	r3, 16(sp)
	ldw	r2, 16(sp)
	slli	r2, r2, 30
	ldw	r3, 12(sp)
	srli	r8, r3, 2
	or	r8, r2, r8
	ldw	r2, 16(sp)
	srli	r9, r2, 2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r10, r8, r2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r11, r9, r2
	ldw	r3, 12(sp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r12, r3, r2
	ldw	r3, 16(sp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r13, r3, r2
	add	r2, r10, r12
	cmpltu	r4, r2, r10
	add	r3, r11, r13
	add	r4, r4, r3
	mov	r3, r4
	stw	r2, 12(sp)
	stw	r3, 16(sp)
	ldw	r2, 16(sp)
	slli	r2, r2, 28
	ldw	r3, 12(sp)
	srli	r6, r3, 4
	or	r6, r2, r6
	ldw	r2, 16(sp)
	srli	r7, r2, 4
	ldw	r4, 12(sp)
	ldw	r5, 16(sp)
	add	r2, r6, r4
	cmpltu	r8, r2, r6
	add	r3, r7, r5
	add	r4, r8, r3
	mov	r3, r4
	mov	r4, r2
	mov	r5, r3
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r4, r2
	stw	r2, 12(sp)
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r5, r2
	stw	r2, 16(sp)
	ldw	r2, 12(sp)
	ldw	r3, 16(sp)
	srl	r16, r3, zero
	mov	r17, zero
	mov	r3, r16
	add	r2, r2, r3
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	srli	r2, r2, 16
	ldw	r3, 8(sp)
	add	r2, r3, r2
	stw	r2, 8(sp)
	ldw	r2, 8(sp)
	srli	r3, r2, 8
	ldw	r2, 8(sp)
	add	r2, r3, r2
	andi	r2, r2, 127
	ldw	r18, 28(sp)
	ldw	r17, 24(sp)
	ldw	r16, 20(sp)
	addi	sp, sp, 32
	ret
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi	sp, sp, -8
	stw	r4, 0(sp)
	ldw	r2, 0(sp)
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r3, r2, 1
	movhi	r2, 21845
	addi	r2, r2, 21845
	and	r2, r3, r2
	ldw	r3, 4(sp)
	sub	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r3, r2, 2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r3, r3, r2
	ldw	r4, 4(sp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r2, r4, r2
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r3, r2, 4
	ldw	r2, 4(sp)
	add	r3, r3, r2
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r2, r2, 16
	ldw	r3, 4(sp)
	add	r2, r3, r2
	stw	r2, 4(sp)
	ldw	r2, 4(sp)
	srli	r3, r2, 8
	ldw	r2, 4(sp)
	add	r2, r3, r2
	andi	r2, r2, 63
	addi	sp, sp, 8
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
.L832:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L829
	ldw	r6, 4(sp)
	ldw	r7, 8(sp)
	ldw	r4, 16(sp)
	ldw	r5, 20(sp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 16(sp)
	stw	r5, 20(sp)
.L829:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L837
	ldw	r6, 4(sp)
	ldw	r7, 8(sp)
	ldw	r4, 4(sp)
	ldw	r5, 8(sp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, 4(sp)
	stw	r5, 8(sp)
	br	.L832
.L837:
	nop
	ldw	r2, 12(sp)
	beq	r2, zero, .L833
	ldw	r6, 16(sp)
	ldw	r7, 20(sp)
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	br	.L835
.L833:
	ldw	r2, 16(sp)
	ldw	r3, 20(sp)
.L835:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
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
.L842:
	ldw	r2, 0(sp)
	andi	r2, r2, 1
	beq	r2, zero, .L839
	ldw	r5, 4(sp)
	ldw	r4, 12(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 12(sp)
.L839:
	ldw	r2, 0(sp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, 0(sp)
	ldw	r2, 0(sp)
	beq	r2, zero, .L847
	ldw	r5, 4(sp)
	ldw	r4, 4(sp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, 4(sp)
	br	.L842
.L847:
	nop
	ldw	r2, 8(sp)
	beq	r2, zero, .L843
	ldw	r5, 12(sp)
	movhi	r4, 16256
	call	__divsf3
	mov	r3, r2
	mov	r2, r3
	br	.L845
.L843:
	ldw	r2, 12(sp)
.L845:
	mov	r3, r2
	mov	r2, r3
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
	bgeu	r3, r2, .L849
	mov	r2, zero
	br	.L854
.L849:
	ldw	r2, 28(sp)
	ldw	r3, 20(sp)
	bgeu	r3, r2, .L851
	movi	r2, 2
	br	.L854
.L851:
	ldw	r3, 24(sp)
	ldw	r2, 16(sp)
	bgeu	r3, r2, .L852
	mov	r2, zero
	br	.L854
.L852:
	ldw	r2, 24(sp)
	ldw	r3, 16(sp)
	bgeu	r3, r2, .L853
	movi	r2, 2
	br	.L854
.L853:
	movi	r2, 1
.L854:
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
	ldw	r2, 8(sp)
	ldw	r3, 12(sp)
	ldw	r4, 0(sp)
	ldw	r5, 4(sp)
	mov	r6, r4
	mov	r7, r5
	mov	r4, r2
	mov	r5, r3
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
