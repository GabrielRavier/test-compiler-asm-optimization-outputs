	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	bgeu	r3, r2, .L2
	ldw	r3, -8(fp)
	ldw	r2, -20(fp)
	add	r2, r3, r2
	stw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -20(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
	br	.L3
.L4:
	ldw	r2, -8(fp)
	addi	r2, r2, -1
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -1
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -4(fp)
	stb	r3, 0(r2)
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
.L3:
	ldw	r2, -20(fp)
	bne	r2, zero, .L4
	br	.L5
.L2:
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	beq	r3, r2, .L5
	br	.L6
.L7:
	ldw	r3, -8(fp)
	addi	r2, r3, 1
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	addi	r4, r2, 1
	stw	r4, -4(fp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
.L6:
	ldw	r2, -20(fp)
	bne	r2, zero, .L7
.L5:
	ldw	r2, -12(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	addi	sp, sp, -28
	stw	fp, 24(sp)
	addi	fp, sp, 24
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	stw	r7, -24(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	ldw	r2, -20(fp)
	andi	r2, r2, 0xff
	stw	r2, -20(fp)
	br	.L10
.L12:
	ldw	r2, -24(fp)
	addi	r2, r2, -1
	stw	r2, -24(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L10:
	ldw	r2, -24(fp)
	beq	r2, zero, .L11
	ldw	r2, -8(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -4(fp)
	stb	r3, 0(r2)
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, -20(fp)
	bne	r3, r2, .L12
.L11:
	ldw	r2, -24(fp)
	beq	r2, zero, .L13
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	br	.L14
.L13:
	mov	r2, zero
.L14:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	r6, -16(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	ldw	r2, -12(fp)
	andi	r2, r2, 0xff
	stw	r2, -12(fp)
	br	.L16
.L18:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	addi	r2, r2, -1
	stw	r2, -16(fp)
.L16:
	ldw	r2, -16(fp)
	beq	r2, zero, .L17
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, -12(fp)
	bne	r3, r2, .L18
.L17:
	ldw	r2, -16(fp)
	beq	r2, zero, .L19
	ldw	r2, -4(fp)
	br	.L21
.L19:
	mov	r2, zero
.L21:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	br	.L23
.L25:
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L23:
	ldw	r2, -20(fp)
	beq	r2, zero, .L24
	ldw	r2, -4(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 0xff
	andi	r2, r2, 0xff
	beq	r3, r2, .L25
.L24:
	ldw	r2, -20(fp)
	beq	r2, zero, .L26
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r3, r2, 0xff
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	sub	r2, r3, r2
	br	.L28
.L26:
	mov	r2, zero
.L28:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	br	.L30
.L31:
	ldw	r3, -8(fp)
	addi	r2, r3, 1
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	addi	r4, r2, 1
	stw	r4, -4(fp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
.L30:
	ldw	r2, -20(fp)
	bne	r2, zero, .L31
	ldw	r2, -12(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	r6, -16(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	ldw	r2, -12(fp)
	andi	r2, r2, 0xff
	stw	r2, -12(fp)
	br	.L34
.L36:
	ldw	r3, -4(fp)
	ldw	r2, -16(fp)
	add	r2, r3, r2
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, -12(fp)
	bne	r3, r2, .L34
	ldw	r3, -4(fp)
	ldw	r2, -16(fp)
	add	r2, r3, r2
	br	.L35
.L34:
	ldw	r2, -16(fp)
	addi	r3, r2, -1
	stw	r3, -16(fp)
	bne	r2, zero, .L36
	mov	r2, zero
.L35:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	r6, -16(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	br	.L38
.L39:
	ldw	r2, -12(fp)
	mov	r3, r2
	ldw	r2, -4(fp)
	stb	r3, 0(r2)
	ldw	r2, -16(fp)
	addi	r2, r2, -1
	stw	r2, -16(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L38:
	ldw	r2, -16(fp)
	bne	r2, zero, .L39
	ldw	r2, -8(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	br	.L42
.L43:
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L42:
	ldw	r2, -8(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -4(fp)
	stb	r3, 0(r2)
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L43
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r2, -8(fp)
	andi	r2, r2, 0xff
	stw	r2, -8(fp)
	br	.L46
.L48:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L46:
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	beq	r2, zero, .L47
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	ldw	r3, -8(fp)
	bne	r3, r2, .L48
.L47:
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	mov	r2, r4
	stw	r5, -4(fp)
.L53:
	ldbu	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	ldw	r4, -4(fp)
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
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	br	.L55
.L57:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L55:
	ldw	r2, -4(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r3, r2, .L56
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L57
.L56:
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r3, r2, 0xff
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	sub	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strcmp, .-strcmp
	.align	2
	.global	strlen
	.type	strlen, @function
strlen:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	br	.L60
.L61:
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L60:
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L61
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	sub	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	ldw	r2, -20(fp)
	addi	r3, r2, -1
	stw	r3, -20(fp)
	bne	r2, zero, .L66
	mov	r2, zero
	br	.L65
.L68:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
.L66:
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	beq	r2, zero, .L67
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	beq	r2, zero, .L67
	ldw	r2, -20(fp)
	beq	r2, zero, .L67
	ldw	r2, -4(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 0xff
	andi	r2, r2, 0xff
	beq	r3, r2, .L68
.L67:
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r3, r2, 0xff
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 0xff
	sub	r2, r3, r2
.L65:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	br	.L70
.L71:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	ldbu	r3, 0(r2)
	ldw	r2, -8(fp)
	stb	r3, 0(r2)
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	ldw	r3, -4(fp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, -8(fp)
	addi	r2, r2, 2
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 2
	stw	r2, -4(fp)
	ldw	r2, -20(fp)
	addi	r2, r2, -2
	stw	r2, -20(fp)
.L70:
	ldw	r2, -20(fp)
	cmpgei	r2, r2, 2
	bne	r2, zero, .L71
	nop
	nop
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	ori	r2, r2, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 26
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	cmpltui	r2, r2, 128
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	cmpeqi	r2, r2, 32
	bne	r2, zero, .L77
	ldw	r2, -4(fp)
	cmpnei	r2, r2, 9
	bne	r2, zero, .L78
.L77:
	movi	r2, 1
	br	.L80
.L78:
	mov	r2, zero
.L80:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	cmpltui	r2, r2, 32
	bne	r2, zero, .L82
	ldw	r2, -4(fp)
	cmpnei	r2, r2, 127
	bne	r2, zero, .L83
.L82:
	movi	r2, 1
	br	.L85
.L83:
	mov	r2, zero
.L85:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -33
	cmpltui	r2, r2, 94
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -97
	cmpltui	r2, r2, 26
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -32
	cmpltui	r2, r2, 95
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	cmpeqi	r2, r2, 32
	bne	r2, zero, .L95
	ldw	r2, -4(fp)
	addi	r2, r2, -9
	cmpgeui	r2, r2, 5
	bne	r2, zero, .L96
.L95:
	movi	r2, 1
	br	.L98
.L96:
	mov	r2, zero
.L98:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -65
	cmpltui	r2, r2, 26
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	cmpltui	r2, r2, 32
	bne	r2, zero, .L102
	ldw	r2, -4(fp)
	addi	r2, r2, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L102
	ldw	r2, -4(fp)
	addi	r2, r2, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L102
	ldw	r3, -4(fp)
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
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	andi	r2, r2, 0xff
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	cmpgeui	r2, r2, 255
	bne	r2, zero, .L109
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	br	.L110
.L109:
	ldw	r2, -4(fp)
	cmpltui	r2, r2, 8232
	bne	r2, zero, .L111
	ldw	r2, -4(fp)
	addi	r2, r2, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L111
	ldw	r3, -4(fp)
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r3, r2
	cmpgeui	r2, r2, 8185
	bne	r2, zero, .L112
.L111:
	movi	r2, 1
	br	.L110
.L112:
	ldw	r3, -4(fp)
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r3, r3, r2
	movhi	r2, 16
	addi	r2, r2, 3
	bltu	r2, r3, .L113
	ldw	r2, -4(fp)
	andi	r3, r2, 65534
	movui	r2, 65534
	bne	r3, r2, .L114
.L113:
	mov	r2, zero
	br	.L110
.L114:
	movi	r2, 1
.L110:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L116
	ldw	r2, -4(fp)
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
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 127
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	toascii, .-toascii
	.align	2
	.global	fdim
	.type	fdim, @function
fdim:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__unorddf2
	beq	r2, zero, .L134
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L125
.L134:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__unorddf2
	beq	r2, zero, .L135
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L125
.L135:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__gtdf2
	bge	zero, r2, .L136
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
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
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r5, -4(fp)
	ldw	r4, -4(fp)
	call	__unordsf2
	beq	r2, zero, .L149
	ldw	r2, -4(fp)
	br	.L140
.L149:
	ldw	r5, -8(fp)
	ldw	r4, -8(fp)
	call	__unordsf2
	beq	r2, zero, .L150
	ldw	r2, -8(fp)
	br	.L140
.L150:
	ldw	r5, -8(fp)
	ldw	r4, -4(fp)
	call	__gtsf2
	bge	zero, r2, .L151
	ldw	r5, -8(fp)
	ldw	r4, -4(fp)
	call	__subsf3
	mov	r3, r2
	mov	r2, r3
	br	.L140
.L151:
	mov	r2, zero
.L140:
	mov	r3, r2
	mov	r2, r3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__unorddf2
	beq	r2, zero, .L167
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L155
.L167:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__unorddf2
	beq	r2, zero, .L168
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L155
.L168:
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, -12(fp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L158
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L159
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L155
.L159:
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L155
.L158:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__ltdf2
	bge	r2, zero, .L169
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L155
.L169:
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
.L155:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r5, -4(fp)
	ldw	r4, -4(fp)
	call	__unordsf2
	beq	r2, zero, .L185
	ldw	r2, -8(fp)
	br	.L173
.L185:
	ldw	r5, -8(fp)
	ldw	r4, -8(fp)
	call	__unordsf2
	beq	r2, zero, .L186
	ldw	r2, -4(fp)
	br	.L173
.L186:
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, -8(fp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L176
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L177
	ldw	r2, -8(fp)
	br	.L173
.L177:
	ldw	r2, -4(fp)
	br	.L173
.L176:
	ldw	r5, -8(fp)
	ldw	r4, -4(fp)
	call	__ltsf2
	bge	r2, zero, .L187
	ldw	r2, -8(fp)
	br	.L173
.L187:
	ldw	r2, -4(fp)
.L173:
	mov	r3, r2
	mov	r2, r3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__unorddf2
	beq	r2, zero, .L203
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L191
.L203:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__unorddf2
	beq	r2, zero, .L204
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L191
.L204:
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, -12(fp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L194
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L195
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L191
.L195:
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L191
.L194:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__ltdf2
	bge	r2, zero, .L205
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L191
.L205:
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
.L191:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__unorddf2
	beq	r2, zero, .L221
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L209
.L221:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__unorddf2
	beq	r2, zero, .L222
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L209
.L222:
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, -12(fp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L212
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L213
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L209
.L213:
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L209
.L212:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__ltdf2
	bge	r2, zero, .L223
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L209
.L223:
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
.L209:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r5, -4(fp)
	ldw	r4, -4(fp)
	call	__unordsf2
	beq	r2, zero, .L239
	ldw	r2, -8(fp)
	br	.L227
.L239:
	ldw	r5, -8(fp)
	ldw	r4, -8(fp)
	call	__unordsf2
	beq	r2, zero, .L240
	ldw	r2, -4(fp)
	br	.L227
.L240:
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, -8(fp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L230
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L231
	ldw	r2, -4(fp)
	br	.L227
.L231:
	ldw	r2, -8(fp)
	br	.L227
.L230:
	ldw	r5, -8(fp)
	ldw	r4, -4(fp)
	call	__ltsf2
	bge	r2, zero, .L241
	ldw	r2, -4(fp)
	br	.L227
.L241:
	ldw	r2, -8(fp)
.L227:
	mov	r3, r2
	mov	r2, r3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__unorddf2
	beq	r2, zero, .L257
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L245
.L257:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__unorddf2
	beq	r2, zero, .L258
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L245
.L258:
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	mov	r3, r2
	ldw	r2, -12(fp)
	andhi	r2, r2, 32768
	beq	r3, r2, .L248
	ldw	r2, -4(fp)
	andhi	r2, r2, 32768
	beq	r2, zero, .L249
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L245
.L249:
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	br	.L245
.L248:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__ltdf2
	bge	r2, zero, .L259
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	br	.L245
.L259:
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
.L245:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
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
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -12(fp)
	ldw	r2, -12(fp)
	stw	r2, -8(fp)
	addi	r2, gp, %gprel(s.0)
	stw	r2, -4(fp)
	br	.L261
.L262:
	ldw	r2, -8(fp)
	andi	r3, r2, 63
	movhi	r2, %hiadj(digits)
	add	r2, r3, r2
	ldbu	r3, %lo(digits)(r2)
	ldw	r2, -4(fp)
	stb	r3, 0(r2)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	srli	r2, r2, 6
	stw	r2, -8(fp)
.L261:
	ldw	r2, -8(fp)
	bne	r2, zero, .L262
	ldw	r2, -4(fp)
	stb	zero, 0(r2)
	addi	r2, gp, %gprel(s.0)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
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
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r4, -4(fp)
	addi	r4, r4, -1
	mov	r2, r4
	mov	r3, zero
	stw	r2, %gprel(seed)(gp)
	stw	r3, %gprel(seed+4)(gp)
	nop
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
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
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	ldw	r2, -8(fp)
	bne	r2, zero, .L268
	ldw	r2, -4(fp)
	stw	zero, 4(r2)
	ldw	r2, -4(fp)
	ldw	r3, 4(r2)
	ldw	r2, -4(fp)
	stw	r3, 0(r2)
	br	.L267
.L268:
	ldw	r2, -8(fp)
	ldw	r3, 0(r2)
	ldw	r2, -4(fp)
	stw	r3, 0(r2)
	ldw	r2, -4(fp)
	ldw	r3, -8(fp)
	stw	r3, 4(r2)
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	stw	r3, 0(r2)
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L267
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	ldw	r3, -4(fp)
	stw	r3, 4(r2)
.L267:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L271
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	ldw	r3, -4(fp)
	ldw	r3, 4(r3)
	stw	r3, 4(r2)
.L271:
	ldw	r2, -4(fp)
	ldw	r2, 4(r2)
	beq	r2, zero, .L273
	ldw	r2, -4(fp)
	ldw	r2, 4(r2)
	ldw	r3, -4(fp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L273:
	nop
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	remque, .-remque
	.align	2
	.global	lsearch
	.type	lsearch, @function
lsearch:
	addi	sp, sp, -44
	stw	ra, 40(sp)
	stw	fp, 36(sp)
	stw	r16, 32(sp)
	addi	fp, sp, 36
	stw	r4, -24(fp)
	stw	r5, -28(fp)
	stw	r6, -32(fp)
	stw	r7, -36(fp)
	ldw	r16, -36(fp)
	mov	r4, r16
	addi	r4, r4, -1
	stw	r4, -12(fp)
	mov	r8, r16
	mov	r9, zero
	srli	r4, r8, 29
	slli	r3, r9, 3
	or	r3, r4, r3
	slli	r2, r8, 3
	ldw	r2, -28(fp)
	stw	r2, -16(fp)
	ldw	r2, -32(fp)
	ldw	r2, 0(r2)
	stw	r2, -20(fp)
	stw	zero, -8(fp)
	br	.L275
.L278:
	ldw	r2, -8(fp)
	mul	r2, r16, r2
	ldw	r3, -16(fp)
	add	r3, r3, r2
	ldw	r2, 8(fp)
	mov	r5, r3
	ldw	r4, -24(fp)
	callr	r2
	bne	r2, zero, .L276
	ldw	r2, -8(fp)
	mul	r2, r16, r2
	ldw	r3, -16(fp)
	add	r2, r3, r2
	br	.L277
.L276:
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L275:
	ldw	r3, -8(fp)
	ldw	r2, -20(fp)
	bltu	r3, r2, .L278
	ldw	r2, -20(fp)
	addi	r3, r2, 1
	ldw	r2, -32(fp)
	stw	r3, 0(r2)
	ldw	r2, -20(fp)
	mul	r2, r16, r2
	ldw	r3, -16(fp)
	add	r2, r3, r2
	ldw	r6, -36(fp)
	ldw	r5, -24(fp)
	mov	r4, r2
	call	memcpy
.L277:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	addi	sp, sp, -44
	stw	ra, 40(sp)
	stw	fp, 36(sp)
	stw	r16, 32(sp)
	addi	fp, sp, 36
	stw	r4, -24(fp)
	stw	r5, -28(fp)
	stw	r6, -32(fp)
	stw	r7, -36(fp)
	ldw	r16, -36(fp)
	mov	r4, r16
	addi	r4, r4, -1
	stw	r4, -12(fp)
	mov	r8, r16
	mov	r9, zero
	srli	r4, r8, 29
	slli	r3, r9, 3
	or	r3, r4, r3
	slli	r2, r8, 3
	ldw	r2, -28(fp)
	stw	r2, -16(fp)
	ldw	r2, -32(fp)
	ldw	r2, 0(r2)
	stw	r2, -20(fp)
	stw	zero, -8(fp)
	br	.L280
.L283:
	ldw	r2, -8(fp)
	mul	r2, r16, r2
	ldw	r3, -16(fp)
	add	r3, r3, r2
	ldw	r2, 8(fp)
	mov	r5, r3
	ldw	r4, -24(fp)
	callr	r2
	bne	r2, zero, .L281
	ldw	r2, -8(fp)
	mul	r2, r16, r2
	ldw	r3, -16(fp)
	add	r2, r3, r2
	br	.L282
.L281:
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L280:
	ldw	r3, -8(fp)
	ldw	r2, -20(fp)
	bltu	r3, r2, .L283
	mov	r2, zero
.L282:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	lfind, .-lfind
	.align	2
	.global	abs
	.type	abs, @function
abs:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	bge	r2, zero, .L285
	sub	r2, zero, r2
.L285:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -12(fp)
	stw	zero, -4(fp)
	stw	zero, -8(fp)
	br	.L288
.L289:
	ldw	r2, -12(fp)
	addi	r2, r2, 1
	stw	r2, -12(fp)
.L288:
	ldw	r2, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L289
	ldw	r2, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L290
	cmpnei	r2, r2, 45
	bne	r2, zero, .L292
	movi	r2, 1
	stw	r2, -8(fp)
.L290:
	ldw	r2, -12(fp)
	addi	r2, r2, 1
	stw	r2, -12(fp)
	br	.L292
.L293:
	ldw	r2, -4(fp)
	muli	r3, r2, 10
	ldw	r2, -12(fp)
	addi	r4, r2, 1
	stw	r4, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	sub	r2, r3, r2
	stw	r2, -4(fp)
.L292:
	ldw	r2, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L293
	ldw	r2, -8(fp)
	bne	r2, zero, .L294
	ldw	r2, -4(fp)
	sub	r2, zero, r2
	br	.L296
.L294:
	ldw	r2, -4(fp)
.L296:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -12(fp)
	stw	zero, -4(fp)
	stw	zero, -8(fp)
	br	.L298
.L299:
	ldw	r2, -12(fp)
	addi	r2, r2, 1
	stw	r2, -12(fp)
.L298:
	ldw	r2, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L299
	ldw	r2, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L300
	cmpnei	r2, r2, 45
	bne	r2, zero, .L302
	movi	r2, 1
	stw	r2, -8(fp)
.L300:
	ldw	r2, -12(fp)
	addi	r2, r2, 1
	stw	r2, -12(fp)
	br	.L302
.L303:
	ldw	r2, -4(fp)
	muli	r3, r2, 10
	ldw	r2, -12(fp)
	addi	r4, r2, 1
	stw	r4, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	sub	r2, r3, r2
	stw	r2, -4(fp)
.L302:
	ldw	r2, -12(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L303
	ldw	r2, -8(fp)
	bne	r2, zero, .L304
	ldw	r2, -4(fp)
	sub	r2, zero, r2
	br	.L306
.L304:
	ldw	r2, -4(fp)
.L306:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	addi	fp, sp, 24
	stw	r4, -24(fp)
	stw	zero, -16(fp)
	stw	zero, -12(fp)
	stw	zero, -20(fp)
	br	.L308
.L309:
	ldw	r2, -24(fp)
	addi	r2, r2, 1
	stw	r2, -24(fp)
.L308:
	ldw	r2, -24(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r4, r2
	call	isspace
	bne	r2, zero, .L309
	ldw	r2, -24(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L310
	cmpnei	r2, r2, 45
	bne	r2, zero, .L312
	movi	r2, 1
	stw	r2, -20(fp)
.L310:
	ldw	r2, -24(fp)
	addi	r2, r2, 1
	stw	r2, -24(fp)
	br	.L312
.L313:
	movi	r6, 10
	mov	r7, zero
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__muldi3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	ldw	r2, -24(fp)
	addi	r3, r2, 1
	stw	r3, -24(fp)
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
	stw	r2, -16(fp)
	stw	r3, -12(fp)
.L312:
	ldw	r2, -24(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L313
	ldw	r2, -20(fp)
	bne	r2, zero, .L314
	mov	r6, zero
	mov	r7, zero
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	sub	r2, r6, r4
	cmpltu	r8, r6, r2
	sub	r3, r7, r5
	sub	r4, r3, r8
	mov	r3, r4
	mov	r4, r2
	mov	r5, r3
	br	.L316
.L314:
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
.L316:
	mov	r6, r4
	mov	r7, r5
	mov	r2, r6
	mov	r3, r7
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
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
	addi	fp, sp, 24
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	stw	r7, -24(fp)
	br	.L318
.L322:
	ldw	r2, -20(fp)
	srli	r3, r2, 1
	ldw	r2, -24(fp)
	mul	r2, r3, r2
	ldw	r3, -16(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, 8(fp)
	ldw	r5, -4(fp)
	ldw	r4, -12(fp)
	callr	r2
	stw	r2, -8(fp)
	ldw	r2, -8(fp)
	bge	r2, zero, .L319
	ldw	r2, -20(fp)
	srli	r2, r2, 1
	stw	r2, -20(fp)
	br	.L318
.L319:
	ldw	r2, -8(fp)
	bge	zero, r2, .L320
	ldw	r3, -4(fp)
	ldw	r2, -24(fp)
	add	r2, r3, r2
	stw	r2, -16(fp)
	ldw	r2, -20(fp)
	srli	r2, r2, 1
	ldw	r3, -20(fp)
	sub	r2, r3, r2
	addi	r2, r2, -1
	stw	r2, -20(fp)
	br	.L318
.L320:
	ldw	r2, -4(fp)
	br	.L321
.L318:
	ldw	r2, -20(fp)
	bne	r2, zero, .L322
	mov	r2, zero
.L321:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	bsearch, .-bsearch
	.align	2
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -20(fp)
	stw	r5, -24(fp)
	stw	r6, -28(fp)
	stw	r7, -32(fp)
	ldw	r2, -24(fp)
	stw	r2, -4(fp)
	ldw	r2, -28(fp)
	stw	r2, -8(fp)
	br	.L324
.L328:
	ldw	r2, -8(fp)
	srai	r2, r2, 1
	mov	r3, r2
	ldw	r2, -32(fp)
	mul	r2, r3, r2
	ldw	r3, -4(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r2, 8(fp)
	ldw	r6, 12(fp)
	ldw	r5, -12(fp)
	ldw	r4, -20(fp)
	callr	r2
	stw	r2, -16(fp)
	ldw	r2, -16(fp)
	bne	r2, zero, .L325
	ldw	r2, -12(fp)
	br	.L326
.L325:
	ldw	r2, -16(fp)
	bge	zero, r2, .L327
	ldw	r3, -12(fp)
	ldw	r2, -32(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, -1
	stw	r2, -8(fp)
.L327:
	ldw	r2, -8(fp)
	srai	r2, r2, 1
	stw	r2, -8(fp)
.L324:
	ldw	r2, -8(fp)
	bne	r2, zero, .L328
	mov	r2, zero
.L326:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	bsearch_r, .-bsearch_r
	.align	2
	.global	div
	.type	div, @function
div:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	addi	fp, sp, 20
	stw	r4, -16(fp)
	stw	r5, -20(fp)
	ldw	r5, -20(fp)
	ldw	r4, -16(fp)
	call	__divsi3
	mov	r18, r2
	ldw	r2, -16(fp)
	ldw	r5, -20(fp)
	mov	r4, r2
	call	__modsi3
	mov	r16, r18
	mov	r17, r2
	mov	r4, r16
	mov	r5, r17
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	div, .-div
	.align	2
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	bge	r3, zero, .L332
	mov	r6, zero
	mov	r7, zero
	sub	r4, r6, r2
	cmpltu	r8, r6, r4
	sub	r5, r7, r3
	sub	r2, r5, r8
	mov	r5, r2
	mov	r2, r4
	mov	r3, r5
.L332:
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	imaxabs, .-imaxabs
	.align	2
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	addi	sp, sp, -48
	stw	ra, 40(sp)
	stw	fp, 36(sp)
	stw	r17, 32(sp)
	stw	r16, 28(sp)
	addi	fp, sp, 36
	stw	r4, -28(fp)
	stw	r5, -36(fp)
	stw	r6, -32(fp)
	stw	r7, 8(fp)
	ldw	r6, 8(fp)
	ldw	r7, 12(fp)
	ldw	r4, -36(fp)
	ldw	r5, -32(fp)
	call	__divdi3
	mov	r4, r2
	mov	r5, r3
	mov	r16, r4
	mov	r17, r5
	ldw	r2, -36(fp)
	ldw	r3, -32(fp)
	ldw	r6, 8(fp)
	ldw	r7, 12(fp)
	mov	r4, r2
	mov	r5, r3
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	ldw	r4, -28(fp)
	stw	r16, 0(r4)
	stw	r17, 4(r4)
	ldw	r4, -28(fp)
	stw	r2, 8(r4)
	stw	r3, 12(r4)
	ldw	r2, -28(fp)
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	bge	r2, zero, .L338
	sub	r2, zero, r2
.L338:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	addi	fp, sp, 20
	stw	r4, -16(fp)
	stw	r5, -20(fp)
	ldw	r5, -20(fp)
	ldw	r4, -16(fp)
	call	__divsi3
	mov	r18, r2
	ldw	r2, -16(fp)
	ldw	r5, -20(fp)
	mov	r4, r2
	call	__modsi3
	mov	r16, r18
	mov	r17, r2
	mov	r4, r16
	mov	r5, r17
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	ldiv, .-ldiv
	.align	2
	.global	llabs
	.type	llabs, @function
llabs:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	bge	r3, zero, .L343
	mov	r6, zero
	mov	r7, zero
	sub	r4, r6, r2
	cmpltu	r8, r6, r4
	sub	r5, r7, r3
	sub	r2, r5, r8
	mov	r5, r2
	mov	r2, r4
	mov	r3, r5
.L343:
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	llabs, .-llabs
	.align	2
	.global	lldiv
	.type	lldiv, @function
lldiv:
	addi	sp, sp, -48
	stw	ra, 40(sp)
	stw	fp, 36(sp)
	stw	r17, 32(sp)
	stw	r16, 28(sp)
	addi	fp, sp, 36
	stw	r4, -28(fp)
	stw	r5, -36(fp)
	stw	r6, -32(fp)
	stw	r7, 8(fp)
	ldw	r6, 8(fp)
	ldw	r7, 12(fp)
	ldw	r4, -36(fp)
	ldw	r5, -32(fp)
	call	__divdi3
	mov	r4, r2
	mov	r5, r3
	mov	r16, r4
	mov	r17, r5
	ldw	r2, -36(fp)
	ldw	r3, -32(fp)
	ldw	r6, 8(fp)
	ldw	r7, 12(fp)
	mov	r4, r2
	mov	r5, r3
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	ldw	r4, -28(fp)
	stw	r16, 0(r4)
	stw	r17, 4(r4)
	ldw	r4, -28(fp)
	stw	r2, 8(r4)
	stw	r3, 12(r4)
	ldw	r2, -28(fp)
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	br	.L349
.L351:
	ldw	r2, -4(fp)
	addi	r2, r2, 4
	stw	r2, -4(fp)
.L349:
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L350
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	ldw	r3, -8(fp)
	bne	r3, r2, .L351
.L350:
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L352
	ldw	r2, -4(fp)
	br	.L354
.L352:
	mov	r2, zero
.L354:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	br	.L356
.L358:
	ldw	r2, -4(fp)
	addi	r2, r2, 4
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, 4
	stw	r2, -8(fp)
.L356:
	ldw	r2, -4(fp)
	ldw	r3, 0(r2)
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	bne	r3, r2, .L357
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L357
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L358
.L357:
	ldw	r2, -4(fp)
	ldw	r3, 0(r2)
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L359
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	ldw	r3, -8(fp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L361
.L359:
	movi	r2, -1
.L361:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	nop
.L363:
	ldw	r3, -12(fp)
	addi	r2, r3, 4
	stw	r2, -12(fp)
	ldw	r2, -8(fp)
	addi	r4, r2, 4
	stw	r4, -8(fp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
	ldw	r2, 0(r2)
	bne	r2, zero, .L363
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	br	.L366
.L367:
	ldw	r2, -8(fp)
	addi	r2, r2, 4
	stw	r2, -8(fp)
.L366:
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L367
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	sub	r2, r3, r2
	srai	r2, r2, 2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcslen, .-wcslen
	.align	2
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	stw	r6, -12(fp)
	br	.L370
.L372:
	ldw	r2, -12(fp)
	addi	r2, r2, -1
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 4
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, 4
	stw	r2, -8(fp)
.L370:
	ldw	r2, -12(fp)
	beq	r2, zero, .L371
	ldw	r2, -4(fp)
	ldw	r3, 0(r2)
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	bne	r3, r2, .L371
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	beq	r2, zero, .L371
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	bne	r2, zero, .L372
.L371:
	ldw	r2, -12(fp)
	beq	r2, zero, .L373
	ldw	r2, -4(fp)
	ldw	r3, 0(r2)
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L374
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	ldw	r3, -8(fp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L377
.L374:
	movi	r2, -1
	br	.L377
.L373:
	mov	r2, zero
.L377:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	stw	r6, -12(fp)
	br	.L379
.L381:
	ldw	r2, -12(fp)
	addi	r2, r2, -1
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 4
	stw	r2, -4(fp)
.L379:
	ldw	r2, -12(fp)
	beq	r2, zero, .L380
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	ldw	r3, -8(fp)
	bne	r3, r2, .L381
.L380:
	ldw	r2, -12(fp)
	beq	r2, zero, .L382
	ldw	r2, -4(fp)
	br	.L384
.L382:
	mov	r2, zero
.L384:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	stw	r6, -12(fp)
	br	.L386
.L388:
	ldw	r2, -12(fp)
	addi	r2, r2, -1
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 4
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, 4
	stw	r2, -8(fp)
.L386:
	ldw	r2, -12(fp)
	beq	r2, zero, .L387
	ldw	r2, -4(fp)
	ldw	r3, 0(r2)
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	beq	r3, r2, .L388
.L387:
	ldw	r2, -12(fp)
	beq	r2, zero, .L389
	ldw	r2, -4(fp)
	ldw	r3, 0(r2)
	ldw	r2, -8(fp)
	ldw	r2, 0(r2)
	blt	r3, r2, .L390
	ldw	r2, -4(fp)
	ldw	r2, 0(r2)
	ldw	r3, -8(fp)
	ldw	r3, 0(r3)
	cmplt	r2, r3, r2
	andi	r2, r2, 0xff
	br	.L393
.L390:
	movi	r2, -1
	br	.L393
.L389:
	mov	r2, zero
.L393:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	r6, -16(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	br	.L395
.L396:
	ldw	r3, -12(fp)
	addi	r2, r3, 4
	stw	r2, -12(fp)
	ldw	r2, -8(fp)
	addi	r4, r2, 4
	stw	r4, -8(fp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L395:
	ldw	r2, -16(fp)
	addi	r3, r2, -1
	stw	r3, -16(fp)
	bne	r2, zero, .L396
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	r6, -16(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	ldw	r3, -8(fp)
	ldw	r2, -12(fp)
	bne	r3, r2, .L399
	ldw	r2, -8(fp)
	br	.L400
.L399:
	ldw	r3, -8(fp)
	ldw	r2, -12(fp)
	sub	r3, r3, r2
	ldw	r2, -16(fp)
	slli	r2, r2, 2
	bgeu	r3, r2, .L405
	br	.L402
.L403:
	ldw	r2, -16(fp)
	slli	r2, r2, 2
	ldw	r3, -12(fp)
	add	r3, r3, r2
	ldw	r2, -16(fp)
	slli	r2, r2, 2
	ldw	r4, -8(fp)
	add	r2, r4, r2
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L402:
	ldw	r2, -16(fp)
	addi	r3, r2, -1
	stw	r3, -16(fp)
	bne	r2, zero, .L403
	br	.L404
.L406:
	ldw	r3, -12(fp)
	addi	r2, r3, 4
	stw	r2, -12(fp)
	ldw	r2, -8(fp)
	addi	r4, r2, 4
	stw	r4, -8(fp)
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
.L405:
	ldw	r2, -16(fp)
	addi	r3, r2, -1
	stw	r3, -16(fp)
	bne	r2, zero, .L406
.L404:
	ldw	r2, -4(fp)
.L400:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	r6, -16(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	br	.L408
.L409:
	ldw	r2, -8(fp)
	addi	r3, r2, 4
	stw	r3, -8(fp)
	ldw	r3, -12(fp)
	stw	r3, 0(r2)
.L408:
	ldw	r2, -16(fp)
	addi	r3, r2, -1
	stw	r3, -16(fp)
	bne	r2, zero, .L409
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	bgeu	r3, r2, .L412
	ldw	r3, -4(fp)
	ldw	r2, -20(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r3, -8(fp)
	ldw	r2, -20(fp)
	add	r2, r3, r2
	stw	r2, -8(fp)
	br	.L413
.L414:
	ldw	r2, -4(fp)
	addi	r2, r2, -1
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r2, r2, -1
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -8(fp)
	stb	r3, 0(r2)
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
.L413:
	ldw	r2, -20(fp)
	bne	r2, zero, .L414
	br	.L418
.L412:
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	beq	r3, r2, .L418
	br	.L416
.L417:
	ldw	r3, -4(fp)
	addi	r2, r3, 1
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	addi	r4, r2, 1
	stw	r4, -8(fp)
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
.L416:
	ldw	r2, -20(fp)
	bne	r2, zero, .L417
.L418:
	nop
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -12(fp)
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r4, -12(fp)
	addi	r4, r4, -32
	blt	r4, zero, .L420
	sll	r11, r2, r4
	mov	r10, zero
	br	.L421
.L420:
	srli	r5, r2, 1
	movi	r6, 31
	ldw	r4, -12(fp)
	sub	r4, r6, r4
	srl	r4, r5, r4
	ldw	r5, -12(fp)
	sll	r11, r3, r5
	or	r11, r4, r11
	ldw	r4, -12(fp)
	sll	r10, r2, r4
.L421:
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	addi	r4, r4, -32
	blt	r4, zero, .L422
	srl	r8, r3, r4
	mov	r9, zero
	br	.L423
.L422:
	slli	r5, r3, 1
	movi	r6, 31
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sub	r4, r6, r4
	sll	r5, r5, r4
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	srl	r8, r2, r4
	or	r8, r5, r8
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	srl	r9, r3, r4
.L423:
	or	r12, r8, r10
	or	r13, r9, r11
	mov	r8, r12
	mov	r9, r13
	mov	r4, r8
	mov	r5, r9
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -12(fp)
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r4, -12(fp)
	addi	r4, r4, -32
	blt	r4, zero, .L426
	srl	r10, r3, r4
	mov	r11, zero
	br	.L427
.L426:
	slli	r5, r3, 1
	movi	r6, 31
	ldw	r4, -12(fp)
	sub	r4, r6, r4
	sll	r4, r5, r4
	ldw	r5, -12(fp)
	srl	r10, r2, r5
	or	r10, r4, r10
	ldw	r4, -12(fp)
	srl	r11, r3, r4
.L427:
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	addi	r4, r4, -32
	blt	r4, zero, .L428
	sll	r9, r2, r4
	mov	r8, zero
	br	.L429
.L428:
	srli	r5, r2, 1
	movi	r6, 31
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sub	r4, r6, r4
	srl	r5, r5, r4
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sll	r9, r3, r4
	or	r9, r5, r9
	ldw	r4, -12(fp)
	sub	r4, zero, r4
	andi	r4, r4, 63
	sll	r8, r2, r4
.L429:
	or	r12, r8, r10
	or	r13, r9, r11
	mov	r8, r12
	mov	r9, r13
	mov	r4, r8
	mov	r5, r9
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	rol	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	ror	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	rol	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	ror	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	stw	r5, -8(fp)
	sth	r2, -4(fp)
	ldhu	r3, -4(fp)
	ldw	r2, -8(fp)
	sll	r2, r3, r2
	mov	r5, r2
	ldhu	r3, -4(fp)
	movi	r4, 16
	ldw	r2, -8(fp)
	sub	r2, r4, r2
	srl	r2, r3, r2
	or	r2, r5, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	stw	r5, -8(fp)
	sth	r2, -4(fp)
	ldhu	r3, -4(fp)
	ldw	r2, -8(fp)
	srl	r2, r3, r2
	mov	r5, r2
	ldhu	r3, -4(fp)
	movi	r4, 16
	ldw	r2, -8(fp)
	sub	r2, r4, r2
	sll	r2, r3, r2
	or	r2, r5, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	stw	r5, -8(fp)
	stb	r2, -4(fp)
	ldbu	r3, -4(fp)
	ldw	r2, -8(fp)
	sll	r2, r3, r2
	mov	r5, r2
	ldbu	r3, -4(fp)
	movi	r4, 8
	ldw	r2, -8(fp)
	sub	r2, r4, r2
	srl	r2, r3, r2
	or	r2, r5, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	stw	r5, -8(fp)
	stb	r2, -4(fp)
	ldbu	r3, -4(fp)
	ldw	r2, -8(fp)
	srl	r2, r3, r2
	mov	r5, r2
	ldbu	r3, -4(fp)
	movi	r4, 8
	ldw	r2, -8(fp)
	sub	r2, r4, r2
	sll	r2, r3, r2
	or	r2, r5, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	sth	r2, -8(fp)
	movi	r2, 255
	stw	r2, -4(fp)
	ldhu	r3, -8(fp)
	ldw	r2, -4(fp)
	slli	r2, r2, 8
	and	r2, r3, r2
	srli	r2, r2, 8
	mov	r3, r2
	ldw	r2, -4(fp)
	mov	r4, r2
	ldhu	r2, -8(fp)
	and	r2, r2, r4
	slli	r2, r2, 8
	or	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	movi	r2, 255
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	slli	r3, r2, 24
	ldw	r2, -8(fp)
	and	r2, r3, r2
	srli	r3, r2, 24
	ldw	r2, -4(fp)
	slli	r4, r2, 16
	ldw	r2, -8(fp)
	and	r2, r4, r2
	srli	r2, r2, 8
	or	r3, r3, r2
	ldw	r2, -4(fp)
	slli	r4, r2, 8
	ldw	r2, -8(fp)
	and	r2, r4, r2
	slli	r2, r2, 8
	or	r3, r3, r2
	ldw	r4, -8(fp)
	ldw	r2, -4(fp)
	and	r2, r4, r2
	slli	r2, r2, 24
	or	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	addi	sp, sp, -220
	stw	fp, 216(sp)
	stw	r21, 212(sp)
	stw	r20, 208(sp)
	stw	r19, 204(sp)
	stw	r18, 200(sp)
	stw	r17, 196(sp)
	stw	r16, 192(sp)
	addi	fp, sp, 216
	stw	r4, -40(fp)
	stw	r5, -36(fp)
	movi	r2, 255
	stw	r2, -32(fp)
	stw	zero, -28(fp)
	ldw	r2, -32(fp)
	slli	r7, r2, 24
	mov	r6, zero
	ldw	r2, -40(fp)
	and	r10, r2, r6
	ldw	r2, -36(fp)
	and	r11, r2, r7
	srli	r2, r11, 24
	stw	r2, -104(fp)
	stw	zero, -100(fp)
	ldw	r2, -32(fp)
	slli	r13, r2, 16
	mov	r12, zero
	ldw	r2, -40(fp)
	and	r2, r2, r12
	stw	r2, -200(fp)
	ldw	r2, -36(fp)
	and	r2, r2, r13
	stw	r2, -196(fp)
	ldw	r2, -196(fp)
	srli	r16, r2, 8
	mov	r17, zero
	ldw	r2, -104(fp)
	or	r2, r2, r16
	stw	r2, -112(fp)
	ldw	r2, -100(fp)
	or	r2, r2, r17
	stw	r2, -108(fp)
	ldw	r2, -32(fp)
	slli	r2, r2, 8
	stw	r2, -116(fp)
	stw	zero, -120(fp)
	ldw	r2, -40(fp)
	ldw	r3, -120(fp)
	and	r14, r2, r3
	ldw	r2, -36(fp)
	ldw	r3, -116(fp)
	and	r15, r2, r3
	slli	r2, r15, 8
	srli	r8, r14, 24
	or	r8, r2, r8
	srli	r9, r15, 24
	ldw	r2, -112(fp)
	or	r2, r2, r8
	stw	r2, -128(fp)
	ldw	r2, -108(fp)
	or	r2, r2, r9
	stw	r2, -124(fp)
	ldw	r2, -32(fp)
	sll	r2, r2, zero
	stw	r2, -132(fp)
	stw	zero, -136(fp)
	ldw	r2, -40(fp)
	ldw	r3, -136(fp)
	and	r20, r2, r3
	ldw	r2, -36(fp)
	ldw	r3, -132(fp)
	and	r21, r2, r3
	slli	r2, r21, 24
	srli	r18, r20, 8
	or	r18, r2, r18
	srli	r19, r21, 8
	ldw	r2, -128(fp)
	or	r2, r2, r18
	stw	r2, -144(fp)
	ldw	r2, -124(fp)
	or	r2, r2, r19
	stw	r2, -140(fp)
	ldw	r2, -32(fp)
	srli	r3, r2, 8
	ldw	r2, -28(fp)
	slli	r2, r2, 24
	stw	r2, -44(fp)
	ldw	r2, -44(fp)
	or	r2, r3, r2
	stw	r2, -44(fp)
	ldw	r2, -32(fp)
	slli	r2, r2, 24
	stw	r2, -48(fp)
	ldw	r2, -40(fp)
	ldw	r3, -48(fp)
	and	r2, r2, r3
	stw	r2, -88(fp)
	ldw	r2, -36(fp)
	ldw	r3, -44(fp)
	and	r2, r2, r3
	stw	r2, -84(fp)
	ldw	r2, -88(fp)
	srli	r2, r2, 24
	ldw	r3, -84(fp)
	slli	r3, r3, 8
	stw	r3, -52(fp)
	ldw	r3, -52(fp)
	or	r2, r2, r3
	stw	r2, -52(fp)
	ldw	r2, -88(fp)
	slli	r2, r2, 8
	stw	r2, -56(fp)
	ldw	r2, -144(fp)
	ldw	r3, -56(fp)
	or	r2, r2, r3
	stw	r2, -152(fp)
	ldw	r2, -140(fp)
	ldw	r3, -52(fp)
	or	r2, r2, r3
	stw	r2, -148(fp)
	ldw	r2, -32(fp)
	srli	r3, r2, 16
	ldw	r2, -28(fp)
	slli	r2, r2, 16
	stw	r2, -60(fp)
	ldw	r2, -60(fp)
	or	r2, r3, r2
	stw	r2, -60(fp)
	ldw	r2, -32(fp)
	slli	r2, r2, 16
	stw	r2, -64(fp)
	ldw	r2, -40(fp)
	ldw	r3, -64(fp)
	and	r2, r2, r3
	stw	r2, -96(fp)
	ldw	r2, -36(fp)
	ldw	r3, -60(fp)
	and	r2, r2, r3
	stw	r2, -92(fp)
	ldw	r2, -96(fp)
	srli	r2, r2, 8
	ldw	r3, -92(fp)
	slli	r3, r3, 24
	stw	r3, -68(fp)
	ldw	r3, -68(fp)
	or	r2, r2, r3
	stw	r2, -68(fp)
	ldw	r2, -96(fp)
	slli	r2, r2, 24
	stw	r2, -72(fp)
	ldw	r2, -152(fp)
	ldw	r3, -72(fp)
	or	r2, r2, r3
	stw	r2, -160(fp)
	ldw	r2, -148(fp)
	ldw	r3, -68(fp)
	or	r2, r2, r3
	stw	r2, -156(fp)
	ldw	r2, -32(fp)
	srli	r2, r2, 24
	ldw	r3, -28(fp)
	slli	r3, r3, 8
	stw	r3, -76(fp)
	ldw	r3, -76(fp)
	or	r2, r2, r3
	stw	r2, -76(fp)
	ldw	r2, -32(fp)
	slli	r2, r2, 8
	stw	r2, -80(fp)
	ldw	r2, -40(fp)
	ldw	r3, -80(fp)
	and	r2, r2, r3
	stw	r2, -208(fp)
	ldw	r2, -36(fp)
	ldw	r3, -76(fp)
	and	r2, r2, r3
	stw	r2, -204(fp)
	ldw	r2, -208(fp)
	slli	r2, r2, 8
	stw	r2, -164(fp)
	stw	zero, -168(fp)
	ldw	r2, -160(fp)
	ldw	r3, -168(fp)
	or	r2, r2, r3
	stw	r2, -176(fp)
	ldw	r2, -156(fp)
	ldw	r3, -164(fp)
	or	r2, r2, r3
	stw	r2, -172(fp)
	ldw	r3, -40(fp)
	ldw	r2, -32(fp)
	and	r2, r3, r2
	stw	r2, -216(fp)
	ldw	r3, -36(fp)
	ldw	r2, -28(fp)
	and	r2, r3, r2
	stw	r2, -212(fp)
	ldw	r2, -216(fp)
	slli	r2, r2, 24
	stw	r2, -180(fp)
	stw	zero, -184(fp)
	ldw	r2, -176(fp)
	ldw	r3, -184(fp)
	or	r2, r2, r3
	stw	r2, -192(fp)
	ldw	r2, -172(fp)
	ldw	r3, -180(fp)
	or	r2, r2, r3
	stw	r2, -188(fp)
	ldw	r4, -192(fp)
	ldw	r5, -188(fp)
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -24
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	zero, -4(fp)
	br	.L454
.L457:
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	srl	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L455
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	br	.L456
.L455:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L454:
	ldw	r2, -4(fp)
	cmpltui	r2, r2, 32
	bne	r2, zero, .L457
	mov	r2, zero
.L456:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r2, r4
	bne	r2, zero, .L459
	mov	r2, zero
	br	.L460
.L459:
	movi	r16, 1
	br	.L461
.L462:
	srai	r2, r2, 1
	addi	r16, r16, 1
.L461:
	andi	r3, r2, 1
	beq	r3, zero, .L462
	mov	r2, r16
.L460:
	addi	sp, fp, -4
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 8
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	movhi	r5, 65408
	addi	r5, r5, -1
	ldw	r4, -4(fp)
	call	__ltsf2
	blt	r2, zero, .L464
	movhi	r5, 32640
	addi	r5, r5, -1
	ldw	r4, -4(fp)
	call	__gtsf2
	bge	zero, r2, .L469
.L464:
	movi	r2, 1
	br	.L468
.L469:
	mov	r2, zero
.L468:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__ltdf2
	blt	r2, zero, .L471
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__gtdf2
	bge	zero, r2, .L476
.L471:
	movi	r2, 1
	br	.L475
.L476:
	mov	r2, zero
.L475:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__ltdf2
	blt	r2, zero, .L478
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__gtdf2
	bge	zero, r2, .L483
.L478:
	movi	r2, 1
	br	.L482
.L483:
	mov	r2, zero
.L482:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r4, -8(fp)
	call	__floatsidf
	mov	r4, r2
	mov	r5, r3
	ldw	r2, -4(fp)
	stw	r4, 0(r2)
	stw	r5, 4(r2)
	nop
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	ldw	r5, -8(fp)
	ldw	r4, -8(fp)
	call	__unordsf2
	bne	r2, zero, .L486
	ldw	r2, -8(fp)
	mov	r5, r2
	mov	r4, r2
	call	__addsf3
	mov	r3, r2
	mov	r2, r3
	mov	r5, r2
	ldw	r4, -8(fp)
	call	__eqsf2
	beq	r2, zero, .L486
	ldw	r2, -12(fp)
	bge	r2, zero, .L487
	movhi	r2, 16128
	br	.L488
.L487:
	movhi	r2, 16384
.L488:
	stw	r2, -4(fp)
.L491:
	ldw	r2, -12(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L489
	ldw	r5, -4(fp)
	ldw	r4, -8(fp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, -8(fp)
.L489:
	ldw	r2, -12(fp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, -12(fp)
	ldw	r2, -12(fp)
	beq	r2, zero, .L493
	ldw	r5, -4(fp)
	ldw	r4, -4(fp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, -4(fp)
	br	.L491
.L493:
	nop
.L486:
	ldw	r2, -8(fp)
	mov	r3, r2
	mov	r2, r3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -16(fp)
	stw	r5, -12(fp)
	stw	r6, -20(fp)
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__unorddf2
	bne	r2, zero, .L495
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
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
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__eqdf2
	beq	r2, zero, .L495
	ldw	r2, -20(fp)
	bge	r2, zero, .L496
	mov	r2, zero
	movhi	r3, 16352
	br	.L497
.L496:
	mov	r2, zero
	movhi	r3, 16384
.L497:
	stw	r2, -8(fp)
	stw	r3, -4(fp)
.L500:
	ldw	r2, -20(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L498
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -16(fp)
	stw	r5, -12(fp)
.L498:
	ldw	r2, -20(fp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, -20(fp)
	ldw	r2, -20(fp)
	beq	r2, zero, .L502
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	br	.L500
.L502:
	nop
.L495:
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -16(fp)
	stw	r5, -12(fp)
	stw	r6, -20(fp)
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__unorddf2
	bne	r2, zero, .L504
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
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
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__eqdf2
	beq	r2, zero, .L504
	ldw	r2, -20(fp)
	bge	r2, zero, .L505
	mov	r2, zero
	movhi	r3, 16352
	br	.L506
.L505:
	mov	r2, zero
	movhi	r3, 16384
.L506:
	stw	r2, -8(fp)
	stw	r3, -4(fp)
.L509:
	ldw	r2, -20(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L507
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -16(fp)
	stw	r5, -12(fp)
.L507:
	ldw	r2, -20(fp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, -20(fp)
	ldw	r2, -20(fp)
	beq	r2, zero, .L511
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	br	.L509
.L511:
	nop
.L504:
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	ldw	r2, -16(fp)
	stw	r2, -4(fp)
	ldw	r2, -12(fp)
	stw	r2, -8(fp)
	br	.L513
.L514:
	ldw	r2, -4(fp)
	addi	r3, r2, 1
	stw	r3, -4(fp)
	ldbu	r4, 0(r2)
	ldw	r2, -8(fp)
	addi	r3, r2, 1
	stw	r3, -8(fp)
	ldbu	r3, 0(r2)
	xor	r3, r4, r3
	stb	r3, 0(r2)
	ldw	r2, -20(fp)
	addi	r2, r2, -1
	stw	r2, -20(fp)
.L513:
	ldw	r2, -20(fp)
	bne	r2, zero, .L514
	ldw	r2, -12(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	r6, -16(fp)
	ldw	r4, -8(fp)
	call	strlen
	mov	r3, r2
	ldw	r2, -8(fp)
	add	r2, r2, r3
	stw	r2, -4(fp)
	br	.L517
.L519:
	ldw	r2, -12(fp)
	addi	r2, r2, 1
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	addi	r2, r2, -1
	stw	r2, -16(fp)
.L517:
	ldw	r2, -16(fp)
	beq	r2, zero, .L518
	ldw	r2, -12(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -4(fp)
	stb	r3, 0(r2)
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L519
.L518:
	ldw	r2, -16(fp)
	bne	r2, zero, .L520
	ldw	r2, -4(fp)
	stb	zero, 0(r2)
.L520:
	ldw	r2, -8(fp)
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	zero, -4(fp)
	br	.L523
.L528:
	nop
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L523:
	ldw	r3, -4(fp)
	ldw	r2, -12(fp)
	bgeu	r3, r2, .L524
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	add	r2, r3, r2
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L528
.L524:
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	br	.L530
.L534:
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	br	.L531
.L533:
	ldw	r2, -4(fp)
	addi	r3, r2, 1
	stw	r3, -4(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r3, r2, .L531
	ldw	r2, -8(fp)
	br	.L532
.L531:
	ldw	r2, -4(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L533
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L530:
	ldw	r2, -8(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r2, zero, .L534
	mov	r2, zero
.L532:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	stw	r5, -8(fp)
	stw	zero, -4(fp)
.L537:
	ldbu	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	ldw	r4, -8(fp)
	bne	r4, r3, .L536
	stw	r2, -4(fp)
.L536:
	mov	r3, r2
	addi	r2, r3, 1
	ldbu	r3, 0(r3)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L537
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strrchr, .-strrchr
	.align	2
	.global	strstr
	.type	strstr, @function
strstr:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	ldw	r4, -16(fp)
	call	strlen
	stw	r2, -8(fp)
	ldw	r2, -8(fp)
	bne	r2, zero, .L542
	ldw	r2, -12(fp)
	br	.L541
.L544:
	ldw	r6, -8(fp)
	ldw	r5, -16(fp)
	ldw	r4, -4(fp)
	call	strncmp
	bne	r2, zero, .L543
	ldw	r2, -4(fp)
	br	.L541
.L543:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L542:
	ldw	r2, -16(fp)
	ldbu	r2, 0(r2)
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	mov	r5, r2
	ldw	r4, -4(fp)
	call	strchr
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	bne	r2, zero, .L544
	mov	r2, zero
.L541:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	addi	fp, sp, 24
	stw	r4, -16(fp)
	stw	r5, -12(fp)
	stw	r6, -24(fp)
	stw	r7, -20(fp)
	mov	r6, zero
	mov	r7, zero
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__ltdf2
	bge	r2, zero, .L546
	mov	r6, zero
	mov	r7, zero
	ldw	r4, -24(fp)
	ldw	r5, -20(fp)
	call	__gtdf2
	blt	zero, r2, .L548
.L546:
	mov	r6, zero
	mov	r7, zero
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	call	__gtdf2
	bge	zero, r2, .L549
	mov	r6, zero
	mov	r7, zero
	ldw	r4, -24(fp)
	ldw	r5, -20(fp)
	call	__ltdf2
	bge	r2, zero, .L549
.L548:
	ldw	r16, -16(fp)
	ldw	r2, -12(fp)
	xorhi	r17, r2, 32768
	br	.L552
.L549:
	ldw	r16, -16(fp)
	ldw	r17, -12(fp)
.L552:
	mov	r4, r16
	mov	r5, r17
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	addi	fp, sp, 24
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	stw	r7, -24(fp)
	ldw	r3, -16(fp)
	ldw	r2, -24(fp)
	sub	r2, r3, r2
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -8(fp)
	ldw	r2, -24(fp)
	bne	r2, zero, .L556
	ldw	r2, -12(fp)
	br	.L557
.L556:
	ldw	r3, -16(fp)
	ldw	r2, -24(fp)
	cmpltu	r2, r3, r2
	andi	r2, r2, 0xff
	beq	r2, zero, .L558
	mov	r2, zero
	br	.L557
.L558:
	ldw	r2, -12(fp)
	stw	r2, -4(fp)
	br	.L559
.L561:
	ldw	r2, -4(fp)
	ldbu	r3, 0(r2)
	ldw	r2, -20(fp)
	ldbu	r2, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	andi	r2, r2, 255
	xori	r2, r2, 128
	addi	r2, r2, -128
	bne	r3, r2, .L560
	ldw	r2, -4(fp)
	addi	r3, r2, 1
	ldw	r2, -20(fp)
	addi	r4, r2, 1
	ldw	r2, -24(fp)
	addi	r2, r2, -1
	mov	r6, r2
	mov	r5, r4
	mov	r4, r3
	call	memcmp
	bne	r2, zero, .L560
	ldw	r2, -4(fp)
	br	.L557
.L560:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L559:
	ldw	r2, -4(fp)
	ldw	r3, -8(fp)
	bgeu	r3, r2, .L561
	mov	r2, zero
.L557:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	stw	r6, -12(fp)
	ldw	r6, -12(fp)
	ldw	r5, -8(fp)
	ldw	r4, -4(fp)
	call	memcpy
	mov	r3, r2
	ldw	r2, -12(fp)
	add	r2, r3, r2
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
	addi	sp, sp, -44
	stw	ra, 40(sp)
	stw	fp, 36(sp)
	stw	r19, 32(sp)
	stw	r18, 28(sp)
	stw	r17, 24(sp)
	stw	r16, 20(sp)
	addi	fp, sp, 36
	stw	r4, -32(fp)
	stw	r5, -28(fp)
	stw	r6, -36(fp)
	stw	zero, -24(fp)
	stw	zero, -20(fp)
	mov	r6, zero
	mov	r7, zero
	ldw	r4, -32(fp)
	ldw	r5, -28(fp)
	call	__ltdf2
	bge	r2, zero, .L565
	ldw	r18, -32(fp)
	ldw	r2, -28(fp)
	xorhi	r19, r2, 32768
	stw	r18, -32(fp)
	stw	r19, -28(fp)
	movi	r2, 1
	stw	r2, -20(fp)
.L565:
	mov	r6, zero
	movhi	r7, 16368
	ldw	r4, -32(fp)
	ldw	r5, -28(fp)
	call	__gedf2
	blt	r2, zero, .L580
	br	.L569
.L570:
	ldw	r2, -24(fp)
	addi	r2, r2, 1
	stw	r2, -24(fp)
	mov	r6, zero
	movhi	r7, 16384
	ldw	r4, -32(fp)
	ldw	r5, -28(fp)
	call	__divdf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -32(fp)
	stw	r5, -28(fp)
.L569:
	mov	r6, zero
	movhi	r7, 16368
	ldw	r4, -32(fp)
	ldw	r5, -28(fp)
	call	__gedf2
	bge	r2, zero, .L570
	br	.L571
.L580:
	mov	r6, zero
	movhi	r7, 16352
	ldw	r4, -32(fp)
	ldw	r5, -28(fp)
	call	__ltdf2
	bge	r2, zero, .L571
	mov	r6, zero
	mov	r7, zero
	ldw	r4, -32(fp)
	ldw	r5, -28(fp)
	call	__eqdf2
	beq	r2, zero, .L571
	br	.L573
.L574:
	ldw	r2, -24(fp)
	addi	r2, r2, -1
	stw	r2, -24(fp)
	ldw	r2, -32(fp)
	ldw	r3, -28(fp)
	mov	r6, r2
	mov	r7, r3
	mov	r4, r2
	mov	r5, r3
	call	__adddf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -32(fp)
	stw	r5, -28(fp)
.L573:
	mov	r6, zero
	movhi	r7, 16352
	ldw	r4, -32(fp)
	ldw	r5, -28(fp)
	call	__ltdf2
	blt	r2, zero, .L574
.L571:
	ldw	r2, -36(fp)
	ldw	r3, -24(fp)
	stw	r3, 0(r2)
	ldw	r2, -20(fp)
	beq	r2, zero, .L575
	ldw	r16, -32(fp)
	ldw	r2, -28(fp)
	xorhi	r17, r2, 32768
	stw	r16, -32(fp)
	stw	r17, -28(fp)
.L575:
	ldw	r2, -32(fp)
	ldw	r3, -28(fp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -24(fp)
	stw	r5, -20(fp)
	stw	r6, -32(fp)
	stw	r7, -28(fp)
	stw	zero, -8(fp)
	stw	zero, -4(fp)
	ldw	r2, -24(fp)
	stw	r2, -16(fp)
	ldw	r2, -20(fp)
	stw	r2, -12(fp)
	br	.L582
.L585:
	ldw	r2, -16(fp)
	andi	r12, r2, 1
	ldw	r2, -12(fp)
	and	r13, r2, zero
	mov	r2, r12
	or	r2, r2, r13
	beq	r2, zero, .L583
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	ldw	r6, -32(fp)
	ldw	r7, -28(fp)
	add	r2, r4, r6
	cmpltu	r14, r2, r4
	add	r3, r5, r7
	add	r4, r14, r3
	mov	r3, r4
	stw	r2, -8(fp)
	stw	r3, -4(fp)
.L583:
	ldw	r2, -32(fp)
	srli	r2, r2, 31
	ldw	r3, -28(fp)
	slli	r9, r3, 1
	or	r9, r2, r9
	ldw	r2, -32(fp)
	slli	r8, r2, 1
	stw	r8, -32(fp)
	stw	r9, -28(fp)
	ldw	r2, -12(fp)
	slli	r2, r2, 31
	ldw	r3, -16(fp)
	srli	r10, r3, 1
	or	r10, r2, r10
	ldw	r2, -12(fp)
	srli	r11, r2, 1
	stw	r10, -16(fp)
	stw	r11, -12(fp)
.L582:
	ldw	r2, -16(fp)
	ldw	r3, -12(fp)
	or	r2, r2, r3
	bne	r2, zero, .L585
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	movi	r2, 1
	stw	r2, -4(fp)
	stw	zero, -8(fp)
	br	.L588
.L590:
	ldw	r2, -16(fp)
	add	r2, r2, r2
	stw	r2, -16(fp)
	ldw	r2, -4(fp)
	add	r2, r2, r2
	stw	r2, -4(fp)
.L588:
	ldw	r3, -16(fp)
	ldw	r2, -12(fp)
	bgeu	r3, r2, .L591
	ldw	r2, -4(fp)
	beq	r2, zero, .L591
	ldw	r2, -16(fp)
	bge	r2, zero, .L590
	br	.L591
.L593:
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	bltu	r3, r2, .L592
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	sub	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	or	r2, r3, r2
	stw	r2, -8(fp)
.L592:
	ldw	r2, -4(fp)
	srli	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	srli	r2, r2, 1
	stw	r2, -16(fp)
.L591:
	ldw	r2, -4(fp)
	bne	r2, zero, .L593
	ldw	r2, -20(fp)
	beq	r2, zero, .L594
	ldw	r2, -12(fp)
	br	.L595
.L594:
	ldw	r2, -8(fp)
.L595:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	stb	r2, -8(fp)
	ldb	r2, -8(fp)
	bge	r2, zero, .L597
	ldbu	r2, -8(fp)
	nor	r2, zero, r2
	stb	r2, -8(fp)
.L597:
	ldb	r2, -8(fp)
	bne	r2, zero, .L598
	movi	r2, 7
	br	.L599
.L598:
	ldb	r2, -8(fp)
	slli	r2, r2, 8
	mov	r4, r2
	call	__clzsi2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -1
.L599:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__clrsbqi2, .-__clrsbqi2
	.align	2
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -12(fp)
	stw	r5, -8(fp)
	ldw	r4, -8(fp)
	bge	r4, zero, .L601
	ldw	r4, -12(fp)
	nor	r2, zero, r4
	ldw	r4, -8(fp)
	nor	r3, zero, r4
	stw	r2, -12(fp)
	stw	r3, -8(fp)
.L601:
	ldw	r2, -12(fp)
	ldw	r3, -8(fp)
	or	r2, r2, r3
	bne	r2, zero, .L603
	movi	r2, 63
	br	.L604
.L603:
	ldw	r2, -12(fp)
	ldw	r3, -8(fp)
	mov	r4, r2
	mov	r5, r3
	call	__clzdi2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -1
.L604:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__clrsbdi2, .-__clrsbdi2
	.align	2
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	zero, -4(fp)
	br	.L606
.L608:
	ldw	r2, -8(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L607
	ldw	r3, -4(fp)
	ldw	r2, -12(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
.L607:
	ldw	r2, -8(fp)
	srli	r2, r2, 1
	stw	r2, -8(fp)
	ldw	r2, -12(fp)
	add	r2, r2, r2
	stw	r2, -12(fp)
.L606:
	ldw	r2, -8(fp)
	bne	r2, zero, .L608
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -24(fp)
	stw	r5, -28(fp)
	stw	r6, -32(fp)
	ldw	r2, -32(fp)
	srli	r2, r2, 3
	stw	r2, -12(fp)
	ldw	r3, -32(fp)
	movi	r2, -8
	and	r2, r3, r2
	stw	r2, -8(fp)
	ldw	r2, -24(fp)
	stw	r2, -16(fp)
	ldw	r2, -28(fp)
	stw	r2, -20(fp)
	ldw	r3, -16(fp)
	ldw	r2, -20(fp)
	bltu	r3, r2, .L611
	ldw	r3, -20(fp)
	ldw	r2, -32(fp)
	add	r3, r3, r2
	ldw	r2, -16(fp)
	bgeu	r3, r2, .L618
.L611:
	stw	zero, -4(fp)
	br	.L613
.L614:
	ldw	r2, -4(fp)
	slli	r2, r2, 3
	ldw	r3, -28(fp)
	add	r5, r3, r2
	ldw	r2, -4(fp)
	slli	r2, r2, 3
	ldw	r3, -24(fp)
	add	r4, r3, r2
	ldw	r2, 0(r5)
	ldw	r3, 4(r5)
	stw	r2, 0(r4)
	stw	r3, 4(r4)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L613:
	ldw	r3, -4(fp)
	ldw	r2, -12(fp)
	bltu	r3, r2, .L614
	br	.L615
.L616:
	ldw	r3, -20(fp)
	ldw	r2, -8(fp)
	add	r3, r3, r2
	ldw	r4, -16(fp)
	ldw	r2, -8(fp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L615:
	ldw	r2, -32(fp)
	ldw	r3, -8(fp)
	bltu	r3, r2, .L616
	br	.L617
.L619:
	ldw	r3, -20(fp)
	ldw	r2, -32(fp)
	add	r3, r3, r2
	ldw	r4, -16(fp)
	ldw	r2, -32(fp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L618:
	ldw	r2, -32(fp)
	addi	r3, r2, -1
	stw	r3, -32(fp)
	bne	r2, zero, .L619
	nop
.L617:
	nop
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	addi	sp, sp, -32
	stw	fp, 28(sp)
	addi	fp, sp, 28
	stw	r4, -20(fp)
	stw	r5, -24(fp)
	stw	r6, -28(fp)
	ldw	r2, -28(fp)
	srli	r2, r2, 1
	stw	r2, -8(fp)
	ldw	r2, -20(fp)
	stw	r2, -12(fp)
	ldw	r2, -24(fp)
	stw	r2, -16(fp)
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	bltu	r3, r2, .L621
	ldw	r3, -16(fp)
	ldw	r2, -28(fp)
	add	r3, r3, r2
	ldw	r2, -12(fp)
	bgeu	r3, r2, .L627
.L621:
	stw	zero, -4(fp)
	br	.L623
.L624:
	ldw	r2, -4(fp)
	add	r2, r2, r2
	mov	r3, r2
	ldw	r2, -24(fp)
	add	r3, r2, r3
	ldw	r2, -4(fp)
	add	r2, r2, r2
	mov	r4, r2
	ldw	r2, -20(fp)
	add	r2, r2, r4
	ldhu	r3, 0(r3)
	sth	r3, 0(r2)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L623:
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	bltu	r3, r2, .L624
	ldw	r2, -28(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L626
	ldw	r2, -28(fp)
	addi	r2, r2, -1
	ldw	r3, -16(fp)
	add	r3, r3, r2
	ldw	r2, -28(fp)
	addi	r2, r2, -1
	ldw	r4, -12(fp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	br	.L626
.L628:
	ldw	r3, -16(fp)
	ldw	r2, -28(fp)
	add	r3, r3, r2
	ldw	r4, -12(fp)
	ldw	r2, -28(fp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L627:
	ldw	r2, -28(fp)
	addi	r3, r2, -1
	stw	r3, -28(fp)
	bne	r2, zero, .L628
	nop
.L626:
	nop
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -24(fp)
	stw	r5, -28(fp)
	stw	r6, -32(fp)
	ldw	r2, -32(fp)
	srli	r2, r2, 2
	stw	r2, -12(fp)
	ldw	r3, -32(fp)
	movi	r2, -4
	and	r2, r3, r2
	stw	r2, -8(fp)
	ldw	r2, -24(fp)
	stw	r2, -16(fp)
	ldw	r2, -28(fp)
	stw	r2, -20(fp)
	ldw	r3, -16(fp)
	ldw	r2, -20(fp)
	bltu	r3, r2, .L630
	ldw	r3, -20(fp)
	ldw	r2, -32(fp)
	add	r3, r3, r2
	ldw	r2, -16(fp)
	bgeu	r3, r2, .L637
.L630:
	stw	zero, -4(fp)
	br	.L632
.L633:
	ldw	r2, -4(fp)
	slli	r2, r2, 2
	ldw	r3, -28(fp)
	add	r3, r3, r2
	ldw	r2, -4(fp)
	slli	r2, r2, 2
	ldw	r4, -24(fp)
	add	r2, r4, r2
	ldw	r3, 0(r3)
	stw	r3, 0(r2)
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L632:
	ldw	r3, -4(fp)
	ldw	r2, -12(fp)
	bltu	r3, r2, .L633
	br	.L634
.L635:
	ldw	r3, -20(fp)
	ldw	r2, -8(fp)
	add	r3, r3, r2
	ldw	r4, -16(fp)
	ldw	r2, -8(fp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L634:
	ldw	r2, -32(fp)
	ldw	r3, -8(fp)
	bltu	r3, r2, .L635
	br	.L636
.L638:
	ldw	r3, -20(fp)
	ldw	r2, -32(fp)
	add	r3, r3, r2
	ldw	r4, -16(fp)
	ldw	r2, -32(fp)
	add	r2, r4, r2
	ldbu	r3, 0(r3)
	stb	r3, 0(r2)
.L637:
	ldw	r2, -32(fp)
	addi	r3, r2, -1
	stw	r3, -32(fp)
	bne	r2, zero, .L638
	nop
.L636:
	nop
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r2, -4(fp)
	ldw	r5, -8(fp)
	mov	r4, r2
	call	__modsi3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__modi, .-__modi
	.align	2
	.global	__uitod
	.type	__uitod, @function
__uitod:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r4, -4(fp)
	call	__floatunsidf
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__uitod, .-__uitod
	.align	2
	.global	__uitof
	.type	__uitof, @function
__uitof:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r4, -4(fp)
	call	__floatunsisf
	mov	r3, r2
	mov	r2, r3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__uitof, .-__uitof
	.align	2
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__floatundidf
	mov	r6, r2
	mov	r7, r3
	mov	r4, r6
	mov	r5, r7
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__ulltod, .-__ulltod
	.align	2
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__floatundisf
	mov	r3, r2
	mov	r2, r3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__ulltof, .-__ulltof
	.align	2
	.global	__umodi
	.type	__umodi, @function
__umodi:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r2, -4(fp)
	ldw	r5, -8(fp)
	mov	r4, r2
	call	__umodsi3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__umodi, .-__umodi
	.align	2
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	sth	r2, -8(fp)
	stw	zero, -4(fp)
	br	.L652
.L655:
	ldhu	r3, -8(fp)
	movi	r4, 15
	ldw	r2, -4(fp)
	sub	r2, r4, r2
	sra	r2, r3, r2
	andi	r2, r2, 1
	bne	r2, zero, .L657
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L652:
	ldw	r2, -4(fp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L655
	br	.L654
.L657:
	nop
.L654:
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	mov	r2, r4
	sth	r2, -8(fp)
	stw	zero, -4(fp)
	br	.L659
.L662:
	ldhu	r3, -8(fp)
	ldw	r2, -4(fp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	bne	r2, zero, .L664
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L659:
	ldw	r2, -4(fp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L662
	br	.L661
.L664:
	nop
.L661:
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ctzhi2, .-__ctzhi2
	.align	2
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	movhi	r5, 18176
	ldw	r4, -4(fp)
	call	__gesf2
	blt	r2, zero, .L670
	movhi	r5, 18176
	ldw	r4, -4(fp)
	call	__subsf3
	mov	r3, r2
	mov	r2, r3
	mov	r4, r2
	call	__fixsfsi
	mov	r3, r2
	movui	r2, 32768
	add	r2, r3, r2
	br	.L668
.L670:
	ldw	r4, -4(fp)
	call	__fixsfsi
.L668:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	mov	r2, r4
	sth	r2, -12(fp)
	stw	zero, -8(fp)
	stw	zero, -4(fp)
	br	.L672
.L674:
	ldhu	r3, -12(fp)
	ldw	r2, -4(fp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L673
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L673:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L672:
	ldw	r2, -4(fp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L674
	ldw	r2, -8(fp)
	andi	r2, r2, 1
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__parityhi2, .-__parityhi2
	.align	2
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	mov	r2, r4
	sth	r2, -12(fp)
	stw	zero, -8(fp)
	stw	zero, -4(fp)
	br	.L677
.L679:
	ldhu	r3, -12(fp)
	ldw	r2, -4(fp)
	sra	r2, r3, r2
	andi	r2, r2, 1
	beq	r2, zero, .L678
	ldw	r2, -8(fp)
	addi	r2, r2, 1
	stw	r2, -8(fp)
.L678:
	ldw	r2, -4(fp)
	addi	r2, r2, 1
	stw	r2, -4(fp)
.L677:
	ldw	r2, -4(fp)
	cmplti	r2, r2, 16
	bne	r2, zero, .L679
	ldw	r2, -8(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	zero, -4(fp)
	br	.L682
.L684:
	ldw	r2, -8(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L683
	ldw	r3, -4(fp)
	ldw	r2, -12(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
.L683:
	ldw	r2, -8(fp)
	srli	r2, r2, 1
	stw	r2, -8(fp)
	ldw	r2, -12(fp)
	add	r2, r2, r2
	stw	r2, -12(fp)
.L682:
	ldw	r2, -8(fp)
	bne	r2, zero, .L684
	ldw	r2, -4(fp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	addi	sp, sp, -16
	stw	fp, 12(sp)
	addi	fp, sp, 12
	stw	r4, -8(fp)
	stw	r5, -12(fp)
	stw	zero, -4(fp)
	ldw	r2, -8(fp)
	bne	r2, zero, .L689
	mov	r2, zero
	br	.L688
.L691:
	ldw	r2, -12(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L690
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
.L690:
	ldw	r2, -8(fp)
	add	r2, r2, r2
	stw	r2, -8(fp)
	ldw	r2, -12(fp)
	srli	r2, r2, 1
	stw	r2, -12(fp)
.L689:
	ldw	r2, -12(fp)
	bne	r2, zero, .L691
	ldw	r2, -4(fp)
.L688:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	movi	r2, 1
	stw	r2, -4(fp)
	stw	zero, -8(fp)
	br	.L693
.L695:
	ldw	r2, -16(fp)
	add	r2, r2, r2
	stw	r2, -16(fp)
	ldw	r2, -4(fp)
	add	r2, r2, r2
	stw	r2, -4(fp)
.L693:
	ldw	r3, -16(fp)
	ldw	r2, -12(fp)
	bgeu	r3, r2, .L696
	ldw	r2, -4(fp)
	beq	r2, zero, .L696
	ldw	r2, -16(fp)
	bge	r2, zero, .L695
	br	.L696
.L698:
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	bltu	r3, r2, .L697
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	sub	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	or	r2, r3, r2
	stw	r2, -8(fp)
.L697:
	ldw	r2, -4(fp)
	srli	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	srli	r2, r2, 1
	stw	r2, -16(fp)
.L696:
	ldw	r2, -4(fp)
	bne	r2, zero, .L698
	ldw	r2, -20(fp)
	beq	r2, zero, .L699
	ldw	r2, -12(fp)
	br	.L700
.L699:
	ldw	r2, -8(fp)
.L700:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodsi4, .-__udivmodsi4
	.align	2
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r5, -8(fp)
	ldw	r4, -4(fp)
	call	__ltsf2
	bge	r2, zero, .L709
	movi	r2, -1
	br	.L704
.L709:
	ldw	r5, -8(fp)
	ldw	r4, -4(fp)
	call	__gtsf2
	bge	zero, r2, .L710
	movi	r2, 1
	br	.L704
.L710:
	mov	r2, zero
.L704:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__ltdf2
	bge	r2, zero, .L719
	movi	r2, -1
	br	.L714
.L719:
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__gtdf2
	bge	zero, r2, .L720
	movi	r2, 1
	br	.L714
.L720:
	mov	r2, zero
.L714:
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r4, -4(fp)
	mov	r2, r4
	srai	r4, r4, 31
	mov	r3, r4
	ldw	r4, -8(fp)
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
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.align	2
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -4(fp)
	stw	r5, -8(fp)
	ldw	r4, -4(fp)
	mov	r2, r4
	mov	r3, zero
	ldw	r4, -8(fp)
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
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	2
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -16(fp)
	stw	r5, -20(fp)
	stw	zero, -8(fp)
	stw	zero, -12(fp)
	ldw	r2, -20(fp)
	bge	r2, zero, .L726
	ldw	r2, -20(fp)
	sub	r2, zero, r2
	stw	r2, -20(fp)
	movi	r2, 1
	stw	r2, -8(fp)
.L726:
	stb	zero, -1(fp)
	br	.L727
.L730:
	ldw	r2, -20(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L728
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
.L728:
	ldw	r2, -16(fp)
	add	r2, r2, r2
	stw	r2, -16(fp)
	ldw	r2, -20(fp)
	srai	r2, r2, 1
	stw	r2, -20(fp)
	ldbu	r2, -1(fp)
	addi	r2, r2, 1
	stb	r2, -1(fp)
.L727:
	ldw	r2, -20(fp)
	beq	r2, zero, .L729
	ldbu	r2, -1(fp)
	andi	r2, r2, 0xff
	cmpltui	r2, r2, 32
	bne	r2, zero, .L730
.L729:
	ldw	r2, -8(fp)
	beq	r2, zero, .L731
	ldw	r2, -12(fp)
	sub	r2, zero, r2
	br	.L733
.L731:
	ldw	r2, -12(fp)
.L733:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	zero, -4(fp)
	ldw	r2, -12(fp)
	bge	r2, zero, .L735
	ldw	r2, -12(fp)
	sub	r2, zero, r2
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	stw	r2, -4(fp)
.L735:
	ldw	r2, -16(fp)
	bge	r2, zero, .L736
	ldw	r2, -16(fp)
	sub	r2, zero, r2
	stw	r2, -16(fp)
	ldw	r2, -4(fp)
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	stw	r2, -4(fp)
.L736:
	ldw	r2, -12(fp)
	ldw	r3, -16(fp)
	mov	r6, zero
	mov	r5, r3
	mov	r4, r2
	call	__udivmodsi4
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	beq	r2, zero, .L737
	ldw	r2, -8(fp)
	sub	r2, zero, r2
	stw	r2, -8(fp)
.L737:
	ldw	r2, -8(fp)
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	zero, -4(fp)
	ldw	r2, -12(fp)
	bge	r2, zero, .L740
	ldw	r2, -12(fp)
	sub	r2, zero, r2
	stw	r2, -12(fp)
	movi	r2, 1
	stw	r2, -4(fp)
.L740:
	ldw	r2, -16(fp)
	bge	r2, zero, .L741
	ldw	r2, -16(fp)
	sub	r2, zero, r2
	stw	r2, -16(fp)
.L741:
	ldw	r2, -12(fp)
	ldw	r3, -16(fp)
	movi	r6, 1
	mov	r5, r3
	mov	r4, r2
	call	__udivmodsi4
	stw	r2, -8(fp)
	ldw	r2, -4(fp)
	beq	r2, zero, .L742
	ldw	r2, -8(fp)
	sub	r2, zero, r2
	stw	r2, -8(fp)
.L742:
	ldw	r2, -8(fp)
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	mov	r2, r4
	mov	r3, r5
	stw	r6, -16(fp)
	sth	r2, -8(fp)
	mov	r2, r3
	sth	r2, -12(fp)
	movi	r2, 1
	sth	r2, -2(fp)
	sth	zero, -4(fp)
	br	.L745
.L747:
	ldhu	r2, -12(fp)
	add	r2, r2, r2
	sth	r2, -12(fp)
	ldhu	r2, -2(fp)
	add	r2, r2, r2
	sth	r2, -2(fp)
.L745:
	ldhu	r3, -12(fp)
	ldhu	r2, -8(fp)
	bgeu	r3, r2, .L748
	ldhu	r2, -2(fp)
	beq	r2, zero, .L748
	ldhu	r2, -12(fp)
	andi	r2, r2, 65535
	xori	r2, r2, 32768
	addi	r2, r2, -32768
	bge	r2, zero, .L747
	br	.L748
.L750:
	ldhu	r3, -8(fp)
	ldhu	r2, -12(fp)
	bltu	r3, r2, .L749
	ldhu	r3, -8(fp)
	ldhu	r2, -12(fp)
	sub	r2, r3, r2
	sth	r2, -8(fp)
	ldhu	r3, -4(fp)
	ldhu	r2, -2(fp)
	or	r2, r3, r2
	sth	r2, -4(fp)
.L749:
	ldhu	r2, -2(fp)
	srli	r2, r2, 1
	sth	r2, -2(fp)
	ldhu	r2, -12(fp)
	srli	r2, r2, 1
	sth	r2, -12(fp)
.L748:
	ldhu	r2, -2(fp)
	bne	r2, zero, .L750
	ldw	r2, -16(fp)
	beq	r2, zero, .L751
	ldhu	r2, -8(fp)
	br	.L752
.L751:
	ldhu	r2, -4(fp)
.L752:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	stw	r6, -20(fp)
	movi	r2, 1
	stw	r2, -4(fp)
	stw	zero, -8(fp)
	br	.L754
.L756:
	ldw	r2, -16(fp)
	add	r2, r2, r2
	stw	r2, -16(fp)
	ldw	r2, -4(fp)
	add	r2, r2, r2
	stw	r2, -4(fp)
.L754:
	ldw	r3, -16(fp)
	ldw	r2, -12(fp)
	bgeu	r3, r2, .L757
	ldw	r2, -4(fp)
	beq	r2, zero, .L757
	ldw	r2, -16(fp)
	bge	r2, zero, .L756
	br	.L757
.L759:
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	bltu	r3, r2, .L758
	ldw	r3, -12(fp)
	ldw	r2, -16(fp)
	sub	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	or	r2, r3, r2
	stw	r2, -8(fp)
.L758:
	ldw	r2, -4(fp)
	srli	r2, r2, 1
	stw	r2, -4(fp)
	ldw	r2, -16(fp)
	srli	r2, r2, 1
	stw	r2, -16(fp)
.L757:
	ldw	r2, -4(fp)
	bne	r2, zero, .L759
	ldw	r2, -20(fp)
	beq	r2, zero, .L760
	ldw	r2, -12(fp)
	br	.L761
.L760:
	ldw	r2, -8(fp)
.L761:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -28(fp)
	stw	r5, -24(fp)
	stw	r6, -32(fp)
	movi	r2, 32
	stw	r2, -4(fp)
	ldw	r2, -28(fp)
	stw	r2, -12(fp)
	ldw	r2, -24(fp)
	stw	r2, -8(fp)
	ldw	r3, -32(fp)
	ldw	r2, -4(fp)
	and	r2, r3, r2
	beq	r2, zero, .L763
	stw	zero, -20(fp)
	ldw	r3, -12(fp)
	ldw	r4, -32(fp)
	ldw	r2, -4(fp)
	sub	r2, r4, r2
	sll	r2, r3, r2
	stw	r2, -16(fp)
	br	.L764
.L763:
	ldw	r2, -32(fp)
	bne	r2, zero, .L765
	ldw	r2, -28(fp)
	ldw	r3, -24(fp)
	br	.L767
.L765:
	ldw	r3, -12(fp)
	ldw	r2, -32(fp)
	sll	r2, r3, r2
	stw	r2, -20(fp)
	ldw	r2, -8(fp)
	mov	r3, r2
	ldw	r2, -32(fp)
	sll	r3, r3, r2
	ldw	r4, -12(fp)
	ldw	r5, -4(fp)
	ldw	r2, -32(fp)
	sub	r2, r5, r2
	srl	r2, r4, r2
	or	r2, r3, r2
	stw	r2, -16(fp)
.L764:
	ldw	r2, -20(fp)
	ldw	r3, -16(fp)
.L767:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ashldi3, .-__ashldi3
	.align	2
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -28(fp)
	stw	r5, -24(fp)
	stw	r6, -32(fp)
	movi	r2, 32
	stw	r2, -4(fp)
	ldw	r2, -28(fp)
	stw	r2, -12(fp)
	ldw	r2, -24(fp)
	stw	r2, -8(fp)
	ldw	r3, -32(fp)
	ldw	r2, -4(fp)
	and	r2, r3, r2
	beq	r2, zero, .L769
	ldw	r3, -8(fp)
	ldw	r2, -4(fp)
	addi	r2, r2, -1
	sra	r2, r3, r2
	stw	r2, -16(fp)
	ldw	r3, -8(fp)
	ldw	r4, -32(fp)
	ldw	r2, -4(fp)
	sub	r2, r4, r2
	sra	r2, r3, r2
	stw	r2, -20(fp)
	br	.L770
.L769:
	ldw	r2, -32(fp)
	bne	r2, zero, .L771
	ldw	r2, -28(fp)
	ldw	r3, -24(fp)
	br	.L773
.L771:
	ldw	r3, -8(fp)
	ldw	r2, -32(fp)
	sra	r2, r3, r2
	stw	r2, -16(fp)
	ldw	r2, -8(fp)
	mov	r4, r2
	ldw	r3, -4(fp)
	ldw	r2, -32(fp)
	sub	r2, r3, r2
	sll	r3, r4, r2
	ldw	r4, -12(fp)
	ldw	r2, -32(fp)
	srl	r2, r4, r2
	or	r2, r3, r2
	stw	r2, -20(fp)
.L770:
	ldw	r2, -20(fp)
	ldw	r3, -16(fp)
.L773:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ashrdi3, .-__ashrdi3
	.align	2
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	addi	sp, sp, -140
	stw	fp, 136(sp)
	stw	r21, 132(sp)
	stw	r20, 128(sp)
	stw	r19, 124(sp)
	stw	r18, 120(sp)
	stw	r17, 116(sp)
	stw	r16, 112(sp)
	addi	fp, sp, 136
	stw	r4, -32(fp)
	stw	r5, -28(fp)
	ldw	r2, -28(fp)
	srli	r12, r2, 24
	mov	r13, zero
	ldw	r2, -28(fp)
	srli	r8, r2, 8
	mov	r9, zero
	andi	r6, r8, 65280
	and	r7, r9, zero
	or	r2, r12, r6
	stw	r2, -40(fp)
	or	r2, r13, r7
	stw	r2, -36(fp)
	ldw	r2, -28(fp)
	slli	r3, r2, 8
	ldw	r2, -32(fp)
	srli	r10, r2, 24
	or	r10, r3, r10
	ldw	r2, -28(fp)
	srli	r11, r2, 24
	andhi	r16, r10, 255
	and	r17, r11, zero
	ldw	r2, -40(fp)
	or	r2, r2, r16
	stw	r2, -48(fp)
	ldw	r2, -36(fp)
	or	r2, r2, r17
	stw	r2, -44(fp)
	ldw	r2, -28(fp)
	slli	r3, r2, 24
	ldw	r2, -32(fp)
	srli	r14, r2, 8
	or	r14, r3, r14
	ldw	r2, -28(fp)
	srli	r15, r2, 8
	andhi	r2, r14, 65280
	stw	r2, -56(fp)
	and	r2, r15, zero
	stw	r2, -52(fp)
	ldw	r2, -48(fp)
	ldw	r3, -56(fp)
	or	r2, r2, r3
	stw	r2, -64(fp)
	ldw	r2, -44(fp)
	ldw	r3, -52(fp)
	or	r2, r2, r3
	stw	r2, -60(fp)
	ldw	r2, -32(fp)
	srli	r3, r2, 24
	ldw	r2, -28(fp)
	slli	r21, r2, 8
	or	r21, r3, r21
	ldw	r2, -32(fp)
	slli	r20, r2, 8
	and	r2, r20, zero
	stw	r2, -72(fp)
	andi	r2, r21, 255
	stw	r2, -68(fp)
	ldw	r2, -64(fp)
	ldw	r3, -72(fp)
	or	r2, r2, r3
	stw	r2, -80(fp)
	ldw	r2, -60(fp)
	ldw	r3, -68(fp)
	or	r2, r2, r3
	stw	r2, -76(fp)
	ldw	r2, -32(fp)
	srli	r2, r2, 8
	ldw	r3, -28(fp)
	slli	r19, r3, 24
	or	r19, r2, r19
	ldw	r2, -32(fp)
	slli	r18, r2, 24
	and	r2, r18, zero
	stw	r2, -88(fp)
	andi	r2, r19, 65280
	stw	r2, -84(fp)
	ldw	r2, -80(fp)
	ldw	r3, -88(fp)
	or	r2, r2, r3
	stw	r2, -96(fp)
	ldw	r2, -76(fp)
	ldw	r3, -84(fp)
	or	r2, r2, r3
	stw	r2, -92(fp)
	ldw	r2, -32(fp)
	slli	r2, r2, 8
	stw	r2, -100(fp)
	stw	zero, -104(fp)
	ldw	r2, -104(fp)
	and	r2, r2, zero
	stw	r2, -112(fp)
	ldw	r2, -100(fp)
	andhi	r2, r2, 255
	stw	r2, -108(fp)
	ldw	r2, -96(fp)
	ldw	r3, -112(fp)
	or	r2, r2, r3
	stw	r2, -120(fp)
	ldw	r2, -92(fp)
	ldw	r3, -108(fp)
	or	r2, r2, r3
	stw	r2, -116(fp)
	ldw	r2, -32(fp)
	slli	r2, r2, 24
	stw	r2, -124(fp)
	stw	zero, -128(fp)
	ldw	r2, -120(fp)
	ldw	r3, -128(fp)
	or	r2, r2, r3
	stw	r2, -136(fp)
	ldw	r2, -116(fp)
	ldw	r3, -124(fp)
	or	r2, r2, r3
	stw	r2, -132(fp)
	ldw	r4, -136(fp)
	ldw	r5, -132(fp)
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -24
	ldw	fp, 24(sp)
	ldw	r21, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	__bswapdi2, .-__bswapdi2
	.align	2
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	addi	sp, sp, -8
	stw	fp, 4(sp)
	addi	fp, sp, 4
	stw	r4, -4(fp)
	ldw	r2, -4(fp)
	srli	r3, r2, 24
	ldw	r2, -4(fp)
	srli	r2, r2, 8
	andi	r2, r2, 65280
	or	r3, r3, r2
	ldw	r2, -4(fp)
	slli	r2, r2, 8
	andhi	r2, r2, 255
	or	r3, r3, r2
	ldw	r2, -4(fp)
	slli	r2, r2, 24
	or	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -16(fp)
	ldw	r2, -16(fp)
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	movui	r3, 65535
	bltu	r3, r2, .L779
	movi	r2, 16
	br	.L780
.L779:
	mov	r2, zero
.L780:
	stw	r2, -8(fp)
	movi	r3, 16
	ldw	r2, -8(fp)
	sub	r2, r3, r2
	ldw	r3, -4(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 65280
	bne	r2, zero, .L781
	movi	r2, 8
	br	.L782
.L781:
	mov	r2, zero
.L782:
	stw	r2, -8(fp)
	movi	r3, 8
	ldw	r2, -8(fp)
	sub	r2, r3, r2
	ldw	r3, -4(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 240
	bne	r2, zero, .L783
	movi	r2, 4
	br	.L784
.L783:
	mov	r2, zero
.L784:
	stw	r2, -8(fp)
	movi	r3, 4
	ldw	r2, -8(fp)
	sub	r2, r3, r2
	ldw	r3, -4(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 12
	bne	r2, zero, .L785
	movi	r2, 2
	br	.L786
.L785:
	mov	r2, zero
.L786:
	stw	r2, -8(fp)
	movi	r3, 2
	ldw	r2, -8(fp)
	sub	r2, r3, r2
	ldw	r3, -4(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 2
	cmpeq	r2, r2, zero
	andi	r2, r2, 0xff
	mov	r4, r2
	movi	r3, 2
	ldw	r2, -4(fp)
	sub	r2, r3, r2
	mul	r3, r4, r2
	ldw	r2, -12(fp)
	add	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__clzsi2, .-__clzsi2
	.align	2
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -24(fp)
	stw	r5, -20(fp)
	stw	r6, -32(fp)
	stw	r7, -28(fp)
	ldw	r2, -24(fp)
	stw	r2, -8(fp)
	ldw	r2, -20(fp)
	stw	r2, -4(fp)
	ldw	r2, -32(fp)
	stw	r2, -16(fp)
	ldw	r2, -28(fp)
	stw	r2, -12(fp)
	ldw	r3, -4(fp)
	ldw	r2, -12(fp)
	bge	r3, r2, .L789
	mov	r2, zero
	br	.L794
.L789:
	ldw	r2, -4(fp)
	ldw	r3, -12(fp)
	bge	r3, r2, .L791
	movi	r2, 2
	br	.L794
.L791:
	ldw	r3, -8(fp)
	ldw	r2, -16(fp)
	bgeu	r3, r2, .L792
	mov	r2, zero
	br	.L794
.L792:
	ldw	r2, -8(fp)
	ldw	r3, -16(fp)
	bgeu	r3, r2, .L793
	movi	r2, 2
	br	.L794
.L793:
	movi	r2, 1
.L794:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r6, -16(fp)
	ldw	r7, -12(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__cmpdi2
	addi	r2, r2, -1
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	2
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	addi	sp, sp, -20
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -16(fp)
	ldw	r2, -16(fp)
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 65535
	bne	r2, zero, .L798
	movi	r2, 16
	br	.L799
.L798:
	mov	r2, zero
.L799:
	stw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 255
	bne	r2, zero, .L800
	movi	r2, 8
	br	.L801
.L800:
	mov	r2, zero
.L801:
	stw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 15
	bne	r2, zero, .L802
	movi	r2, 4
	br	.L803
.L802:
	mov	r2, zero
.L803:
	stw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 3
	bne	r2, zero, .L804
	movi	r2, 2
	br	.L805
.L804:
	mov	r2, zero
.L805:
	stw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r2, -8(fp)
	srl	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 3
	stw	r2, -4(fp)
	ldw	r2, -8(fp)
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r2, -4(fp)
	nor	r2, zero, r2
	andi	r3, r2, 1
	ldw	r2, -4(fp)
	srli	r2, r2, 1
	movi	r4, 2
	sub	r2, r4, r2
	mul	r3, r3, r2
	ldw	r2, -12(fp)
	add	r2, r3, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ctzsi2, .-__ctzsi2
	.align	2
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -28(fp)
	stw	r5, -24(fp)
	stw	r6, -32(fp)
	movi	r2, 32
	stw	r2, -4(fp)
	ldw	r2, -28(fp)
	ldw	r3, -24(fp)
	stw	r2, -12(fp)
	stw	r3, -8(fp)
	ldw	r3, -32(fp)
	ldw	r2, -4(fp)
	and	r2, r3, r2
	beq	r2, zero, .L808
	stw	zero, -16(fp)
	ldw	r3, -8(fp)
	ldw	r4, -32(fp)
	ldw	r2, -4(fp)
	sub	r2, r4, r2
	srl	r2, r3, r2
	stw	r2, -20(fp)
	br	.L809
.L808:
	ldw	r2, -32(fp)
	bne	r2, zero, .L810
	ldw	r2, -28(fp)
	ldw	r3, -24(fp)
	br	.L812
.L810:
	ldw	r3, -8(fp)
	ldw	r2, -32(fp)
	srl	r2, r3, r2
	stw	r2, -16(fp)
	ldw	r3, -8(fp)
	ldw	r4, -4(fp)
	ldw	r2, -32(fp)
	sub	r2, r4, r2
	sll	r3, r3, r2
	ldw	r4, -12(fp)
	ldw	r2, -32(fp)
	srl	r2, r4, r2
	or	r2, r3, r2
	stw	r2, -20(fp)
.L809:
	ldw	r4, -20(fp)
	ldw	r5, -16(fp)
	mov	r2, r4
	mov	r3, r5
.L812:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__lshrdi3, .-__lshrdi3
	.align	2
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	addi	sp, sp, -32
	stw	fp, 28(sp)
	addi	fp, sp, 28
	stw	r4, -24(fp)
	stw	r5, -28(fp)
	movi	r2, 16
	stw	r2, -4(fp)
	movi	r3, -1
	ldw	r2, -4(fp)
	srl	r2, r3, r2
	stw	r2, -8(fp)
	ldw	r3, -24(fp)
	ldw	r2, -8(fp)
	and	r3, r3, r2
	ldw	r4, -28(fp)
	ldw	r2, -8(fp)
	and	r2, r4, r2
	mul	r2, r3, r2
	stw	r2, -20(fp)
	ldw	r3, -20(fp)
	ldw	r2, -4(fp)
	srl	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r3, -20(fp)
	ldw	r2, -8(fp)
	and	r2, r3, r2
	stw	r2, -20(fp)
	ldw	r3, -24(fp)
	ldw	r2, -4(fp)
	srl	r3, r3, r2
	ldw	r4, -28(fp)
	ldw	r2, -8(fp)
	and	r2, r4, r2
	mul	r2, r3, r2
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r3, -20(fp)
	ldw	r4, -12(fp)
	ldw	r2, -8(fp)
	and	r4, r4, r2
	ldw	r2, -4(fp)
	sll	r2, r4, r2
	add	r2, r3, r2
	stw	r2, -20(fp)
	ldw	r3, -12(fp)
	ldw	r2, -4(fp)
	srl	r2, r3, r2
	stw	r2, -16(fp)
	ldw	r3, -20(fp)
	ldw	r2, -4(fp)
	srl	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r3, -20(fp)
	ldw	r2, -8(fp)
	and	r2, r3, r2
	stw	r2, -20(fp)
	ldw	r3, -28(fp)
	ldw	r2, -4(fp)
	srl	r3, r3, r2
	ldw	r4, -24(fp)
	ldw	r2, -8(fp)
	and	r2, r4, r2
	mul	r2, r3, r2
	ldw	r3, -12(fp)
	add	r2, r3, r2
	stw	r2, -12(fp)
	ldw	r3, -20(fp)
	ldw	r4, -12(fp)
	ldw	r2, -8(fp)
	and	r4, r4, r2
	ldw	r2, -4(fp)
	sll	r2, r4, r2
	add	r2, r3, r2
	stw	r2, -20(fp)
	ldw	r2, -16(fp)
	mov	r4, r2
	ldw	r3, -12(fp)
	ldw	r2, -4(fp)
	srl	r2, r3, r2
	add	r2, r4, r2
	stw	r2, -16(fp)
	ldw	r2, -16(fp)
	mov	r5, r2
	ldw	r3, -24(fp)
	ldw	r2, -4(fp)
	srl	r3, r3, r2
	ldw	r4, -28(fp)
	ldw	r2, -4(fp)
	srl	r2, r4, r2
	mul	r2, r3, r2
	add	r2, r5, r2
	stw	r2, -16(fp)
	ldw	r2, -20(fp)
	ldw	r3, -16(fp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi	sp, sp, -48
	stw	ra, 44(sp)
	stw	fp, 40(sp)
	addi	fp, sp, 40
	stw	r4, -32(fp)
	stw	r5, -28(fp)
	stw	r6, -40(fp)
	stw	r7, -36(fp)
	ldw	r2, -32(fp)
	stw	r2, -8(fp)
	ldw	r2, -28(fp)
	stw	r2, -4(fp)
	ldw	r2, -40(fp)
	stw	r2, -16(fp)
	ldw	r2, -36(fp)
	stw	r2, -12(fp)
	ldw	r2, -8(fp)
	ldw	r3, -16(fp)
	mov	r5, r3
	mov	r4, r2
	call	__muldsi3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -24(fp)
	stw	r5, -20(fp)
	ldw	r2, -20(fp)
	mov	r4, r2
	ldw	r2, -4(fp)
	mov	r3, r2
	ldw	r2, -16(fp)
	mul	r3, r3, r2
	ldw	r2, -8(fp)
	ldw	r5, -12(fp)
	mul	r2, r2, r5
	add	r2, r3, r2
	add	r2, r4, r2
	stw	r2, -20(fp)
	ldw	r2, -24(fp)
	ldw	r3, -20(fp)
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
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
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	addi	sp, sp, -24
	stw	fp, 20(sp)
	addi	fp, sp, 20
	stw	r4, -20(fp)
	stw	r5, -16(fp)
	ldw	r2, -20(fp)
	stw	r2, -12(fp)
	ldw	r2, -16(fp)
	stw	r2, -8(fp)
	ldw	r2, -8(fp)
	mov	r3, r2
	ldw	r2, -12(fp)
	xor	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r2, r2, 16
	ldw	r3, -4(fp)
	xor	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r2, r2, 8
	ldw	r3, -4(fp)
	xor	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r2, r2, 4
	ldw	r3, -4(fp)
	xor	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 15
	movi	r3, 27030
	sra	r2, r3, r2
	andi	r2, r2, 1
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__paritydi2, .-__paritydi2
	.align	2
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r2, r2, 16
	ldw	r3, -4(fp)
	xor	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r2, r2, 8
	ldw	r3, -4(fp)
	xor	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r2, r2, 4
	ldw	r3, -4(fp)
	xor	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	andi	r2, r2, 15
	movi	r3, 27030
	sra	r2, r3, r2
	andi	r2, r2, 1
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__paritysi2, .-__paritysi2
	.align	2
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	stw	r18, 28(sp)
	stw	r17, 24(sp)
	stw	r16, 20(sp)
	addi	fp, sp, 32
	stw	r4, -32(fp)
	stw	r5, -28(fp)
	ldw	r4, -32(fp)
	stw	r4, -20(fp)
	ldw	r4, -28(fp)
	stw	r4, -16(fp)
	ldw	r4, -16(fp)
	slli	r4, r4, 31
	ldw	r5, -20(fp)
	srli	r2, r5, 1
	or	r2, r4, r2
	ldw	r4, -16(fp)
	srli	r3, r4, 1
	movhi	r4, 21845
	addi	r4, r4, 21845
	and	r14, r2, r4
	movhi	r4, 21845
	addi	r4, r4, 21845
	and	r15, r3, r4
	ldw	r4, -20(fp)
	ldw	r5, -16(fp)
	sub	r2, r4, r14
	cmpltu	r18, r4, r2
	sub	r3, r5, r15
	sub	r4, r3, r18
	mov	r3, r4
	stw	r2, -20(fp)
	stw	r3, -16(fp)
	ldw	r2, -16(fp)
	slli	r2, r2, 30
	ldw	r3, -20(fp)
	srli	r8, r3, 2
	or	r8, r2, r8
	ldw	r2, -16(fp)
	srli	r9, r2, 2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r10, r8, r2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r11, r9, r2
	ldw	r3, -20(fp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r12, r3, r2
	ldw	r3, -16(fp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r13, r3, r2
	add	r2, r10, r12
	cmpltu	r4, r2, r10
	add	r3, r11, r13
	add	r4, r4, r3
	mov	r3, r4
	stw	r2, -20(fp)
	stw	r3, -16(fp)
	ldw	r2, -16(fp)
	slli	r2, r2, 28
	ldw	r3, -20(fp)
	srli	r6, r3, 4
	or	r6, r2, r6
	ldw	r2, -16(fp)
	srli	r7, r2, 4
	ldw	r4, -20(fp)
	ldw	r5, -16(fp)
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
	stw	r2, -20(fp)
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r5, r2
	stw	r2, -16(fp)
	ldw	r2, -20(fp)
	ldw	r3, -16(fp)
	srl	r16, r3, zero
	mov	r17, zero
	mov	r3, r16
	add	r2, r2, r3
	stw	r2, -24(fp)
	ldw	r2, -24(fp)
	srli	r2, r2, 16
	ldw	r3, -24(fp)
	add	r2, r3, r2
	stw	r2, -24(fp)
	ldw	r2, -24(fp)
	srli	r3, r2, 8
	ldw	r2, -24(fp)
	add	r2, r3, r2
	andi	r2, r2, 127
	addi	sp, fp, -12
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi	sp, sp, -12
	stw	fp, 8(sp)
	addi	fp, sp, 8
	stw	r4, -8(fp)
	ldw	r2, -8(fp)
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r3, r2, 1
	movhi	r2, 21845
	addi	r2, r2, 21845
	and	r2, r3, r2
	ldw	r3, -4(fp)
	sub	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r3, r2, 2
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r3, r3, r2
	ldw	r4, -4(fp)
	movhi	r2, 13107
	addi	r2, r2, 13107
	and	r2, r4, r2
	add	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r3, r2, 4
	ldw	r2, -4(fp)
	add	r3, r3, r2
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r2, r2, 16
	ldw	r3, -4(fp)
	add	r2, r3, r2
	stw	r2, -4(fp)
	ldw	r2, -4(fp)
	srli	r3, r2, 8
	ldw	r2, -4(fp)
	add	r2, r3, r2
	andi	r2, r2, 63
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__popcountsi2, .-__popcountsi2
	.align	2
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	addi	sp, sp, -32
	stw	ra, 28(sp)
	stw	fp, 24(sp)
	addi	fp, sp, 24
	stw	r4, -20(fp)
	stw	r5, -16(fp)
	stw	r6, -24(fp)
	ldw	r2, -24(fp)
	srli	r2, r2, 31
	andi	r2, r2, 0xff
	stw	r2, -12(fp)
	stw	zero, -8(fp)
	movhi	r2, 16368
	stw	r2, -4(fp)
.L831:
	ldw	r2, -24(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L828
	ldw	r6, -20(fp)
	ldw	r7, -16(fp)
	ldw	r4, -8(fp)
	ldw	r5, -4(fp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -8(fp)
	stw	r5, -4(fp)
.L828:
	ldw	r2, -24(fp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, -24(fp)
	ldw	r2, -24(fp)
	beq	r2, zero, .L836
	ldw	r6, -20(fp)
	ldw	r7, -16(fp)
	ldw	r4, -20(fp)
	ldw	r5, -16(fp)
	call	__muldf3
	mov	r4, r2
	mov	r5, r3
	stw	r4, -20(fp)
	stw	r5, -16(fp)
	br	.L831
.L836:
	nop
	ldw	r2, -12(fp)
	beq	r2, zero, .L832
	ldw	r6, -8(fp)
	ldw	r7, -4(fp)
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	br	.L834
.L832:
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
.L834:
	mov	r4, r2
	mov	r5, r3
	mov	r2, r4
	mov	r3, r5
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -12(fp)
	stw	r5, -16(fp)
	ldw	r2, -16(fp)
	srli	r2, r2, 31
	andi	r2, r2, 0xff
	stw	r2, -8(fp)
	movhi	r2, 16256
	stw	r2, -4(fp)
.L841:
	ldw	r2, -16(fp)
	andi	r2, r2, 1
	beq	r2, zero, .L838
	ldw	r5, -12(fp)
	ldw	r4, -4(fp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, -4(fp)
.L838:
	ldw	r2, -16(fp)
	srli	r3, r2, 31
	add	r2, r3, r2
	srai	r2, r2, 1
	stw	r2, -16(fp)
	ldw	r2, -16(fp)
	beq	r2, zero, .L846
	ldw	r5, -12(fp)
	ldw	r4, -12(fp)
	call	__mulsf3
	mov	r3, r2
	stw	r3, -12(fp)
	br	.L841
.L846:
	nop
	ldw	r2, -8(fp)
	beq	r2, zero, .L842
	ldw	r5, -4(fp)
	movhi	r4, 16256
	call	__divsf3
	mov	r3, r2
	mov	r2, r3
	br	.L844
.L842:
	ldw	r2, -4(fp)
.L844:
	mov	r3, r2
	mov	r2, r3
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	addi	sp, sp, -36
	stw	fp, 32(sp)
	addi	fp, sp, 32
	stw	r4, -24(fp)
	stw	r5, -20(fp)
	stw	r6, -32(fp)
	stw	r7, -28(fp)
	ldw	r2, -24(fp)
	stw	r2, -8(fp)
	ldw	r2, -20(fp)
	stw	r2, -4(fp)
	ldw	r2, -32(fp)
	stw	r2, -16(fp)
	ldw	r2, -28(fp)
	stw	r2, -12(fp)
	ldw	r3, -4(fp)
	ldw	r2, -12(fp)
	bgeu	r3, r2, .L848
	mov	r2, zero
	br	.L853
.L848:
	ldw	r2, -4(fp)
	ldw	r3, -12(fp)
	bgeu	r3, r2, .L850
	movi	r2, 2
	br	.L853
.L850:
	ldw	r3, -8(fp)
	ldw	r2, -16(fp)
	bgeu	r3, r2, .L851
	mov	r2, zero
	br	.L853
.L851:
	ldw	r2, -8(fp)
	ldw	r3, -16(fp)
	bgeu	r3, r2, .L852
	movi	r2, 2
	br	.L853
.L852:
	movi	r2, 1
.L853:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	addi	fp, sp, 16
	stw	r4, -8(fp)
	stw	r5, -4(fp)
	stw	r6, -16(fp)
	stw	r7, -12(fp)
	ldw	r2, -8(fp)
	ldw	r3, -4(fp)
	ldw	r4, -16(fp)
	ldw	r5, -12(fp)
	mov	r6, r4
	mov	r7, r5
	mov	r4, r2
	mov	r5, r3
	call	__ucmpdi2
	addi	r2, r2, -1
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
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
