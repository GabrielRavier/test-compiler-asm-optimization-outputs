	.file	"mini-libc.c"
	.section	.text
	.align	2
	.global	memmove
	.type	memmove, @function
memmove:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	bgeu	r5, r4, .L2
	add	r3, r5, r6
	add	r6, r4, r6
	br	.L3
.L4:
	addi	r3, r3, -1
	addi	r6, r6, -1
	ldbu	r7, 0(r3)
	stb	r7, 0(r6)
.L3:
	bne	r3, r5, .L4
	br	.L5
.L2:
	beq	r4, r5, .L5
	add	r7, r4, r6
	mov	r3, r5
	mov	r6, r4
	br	.L6
.L7:
	addi	r3, r3, 1
	addi	r6, r6, 1
	ldbu	r4, -1(r3)
	stb	r4, -1(r6)
.L6:
	bne	r6, r7, .L7
.L5:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memmove, .-memmove
	.align	2
	.global	memccpy
	.type	memccpy, @function
memccpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r6, r6, 0xff
	br	.L9
.L11:
	addi	r7, r7, -1
	addi	r5, r5, 1
	addi	r4, r4, 1
.L9:
	beq	r7, zero, .L10
	ldbu	r3, 0(r5)
	stb	r3, 0(r4)
	andi	r3, r3, 0xff
	bne	r6, r3, .L11
.L10:
	beq	r7, zero, .L13
	addi	r2, r4, 1
	br	.L12
.L13:
	mov	r2, zero
.L12:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memccpy, .-memccpy
	.align	2
	.global	memchr
	.type	memchr, @function
memchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r5, r5, 0xff
	br	.L15
.L17:
	addi	r4, r4, 1
	addi	r6, r6, -1
.L15:
	beq	r6, zero, .L16
	ldbu	r2, 0(r4)
	bne	r5, r2, .L17
.L16:
	beq	r6, zero, .L19
	mov	r2, r4
	br	.L18
.L19:
	mov	r2, zero
.L18:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memchr, .-memchr
	.align	2
	.global	memcmp
	.type	memcmp, @function
memcmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L21
.L23:
	addi	r6, r6, -1
	addi	r4, r4, 1
	addi	r5, r5, 1
.L21:
	beq	r6, zero, .L22
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
	beq	r3, r2, .L23
.L22:
	beq	r6, zero, .L25
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	br	.L24
.L25:
	mov	r2, zero
.L24:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memcmp, .-memcmp
	.align	2
	.global	memcpy
	.type	memcpy, @function
memcpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L27
.L28:
	addi	r5, r5, 1
	addi	r3, r3, 1
	ldbu	r7, -1(r5)
	stb	r7, -1(r3)
.L27:
	bne	r3, r6, .L28
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memcpy, .-memcpy
	.align	2
	.global	memrchr
	.type	memrchr, @function
memrchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r5, r5, 0xff
	addi	r6, r6, -1
	br	.L30
.L32:
	add	r3, r4, r6
	ldbu	r3, 0(r3)
	addi	r7, r6, -1
	bne	r5, r3, .L33
	add	r2, r4, r6
	br	.L31
.L33:
	mov	r6, r7
.L30:
	cmpnei	r3, r6, -1
	bne	r3, zero, .L32
	mov	r2, zero
.L31:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memrchr, .-memrchr
	.align	2
	.global	memset
	.type	memset, @function
memset:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L35
.L36:
	stb	r5, 0(r3)
	addi	r3, r3, 1
.L35:
	bne	r3, r6, .L36
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memset, .-memset
	.align	2
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	br	.L38
.L39:
	addi	r5, r5, 1
	addi	r2, r2, 1
.L38:
	ldbu	r3, 0(r5)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L39
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	stpcpy, .-stpcpy
	.align	2
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	andi	r5, r5, 0xff
	br	.L41
.L43:
	addi	r2, r2, 1
.L41:
	ldb	r3, 0(r2)
	beq	r3, zero, .L42
	ldbu	r3, 0(r2)
	bne	r5, r3, .L43
.L42:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strchrnul, .-strchrnul
	.align	2
	.global	strchr
	.type	strchr, @function
strchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
.L46:
	ldb	r2, 0(r4)
	beq	r5, r2, .L47
	addi	r4, r4, 1
	ldb	r2, -1(r4)
	bne	r2, zero, .L46
	br	.L45
.L47:
	mov	r2, r4
.L45:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strchr, .-strchr
	.align	2
	.global	strcmp
	.type	strcmp, @function
strcmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L49
.L51:
	addi	r4, r4, 1
	addi	r5, r5, 1
.L49:
	ldb	r3, 0(r4)
	ldb	r2, 0(r5)
	bne	r3, r2, .L50
	bne	r3, zero, .L51
.L50:
	ldbu	r3, 0(r4)
	ldbu	r2, 0(r5)
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	br	.L53
.L54:
	addi	r2, r2, 1
.L53:
	ldb	r5, 0(r2)
	bne	r5, zero, .L54
	sub	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strlen, .-strlen
	.align	2
	.global	strncmp
	.type	strncmp, @function
strncmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	beq	r6, zero, .L60
	addi	r6, r6, -1
	add	r2, r4, r6
	br	.L57
.L59:
	addi	r4, r4, 1
	addi	r5, r5, 1
.L57:
	ldbu	r3, 0(r4)
	beq	r3, zero, .L58
	ldbu	r3, 0(r5)
	beq	r3, zero, .L58
	beq	r4, r2, .L58
	ldbu	r6, 0(r4)
	beq	r6, r3, .L59
.L58:
	ldbu	r2, 0(r4)
	ldbu	r3, 0(r5)
	sub	r2, r2, r3
	br	.L56
.L60:
	mov	r2, zero
.L56:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strncmp, .-strncmp
	.align	2
	.global	swab
	.type	swab, @function
swab:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r3, r4
	br	.L62
.L63:
	ldbu	r2, 1(r3)
	stb	r2, 0(r5)
	ldbu	r2, 0(r3)
	stb	r2, 1(r5)
	addi	r5, r5, 2
	addi	r3, r3, 2
.L62:
	add	r2, r4, r6
	sub	r2, r2, r3
	cmpgei	r2, r2, 2
	bne	r2, zero, .L63
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	swab, .-swab
	.align	2
	.global	isalpha
	.type	isalpha, @function
isalpha:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpltui	r2, r2, 26
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isalpha, .-isalpha
	.align	2
	.global	isascii
	.type	isascii, @function
isascii:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpltui	r2, r4, 128
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isascii, .-isascii
	.align	2
	.global	isblank
	.type	isblank, @function
isblank:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpeqi	r2, r4, 32
	bne	r2, zero, .L68
	cmpeqi	r2, r4, 9
	br	.L67
.L68:
	movi	r2, 1
.L67:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isblank, .-isblank
	.align	2
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpltui	r2, r4, 32
	bne	r2, zero, .L72
	cmpeqi	r2, r4, 127
	br	.L71
.L72:
	movi	r2, 1
.L71:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iscntrl, .-iscntrl
	.align	2
	.global	isdigit
	.type	isdigit, @function
isdigit:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isdigit, .-isdigit
	.align	2
	.global	isgraph
	.type	isgraph, @function
isgraph:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -33
	cmpltui	r2, r2, 94
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isgraph, .-isgraph
	.align	2
	.global	islower
	.type	islower, @function
islower:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -97
	cmpltui	r2, r2, 26
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	islower, .-islower
	.align	2
	.global	isprint
	.type	isprint, @function
isprint:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -32
	cmpltui	r2, r2, 95
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isprint, .-isprint
	.align	2
	.global	isspace
	.type	isspace, @function
isspace:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpeqi	r2, r4, 32
	bne	r2, zero, .L80
	addi	r2, r4, -9
	cmpgeui	r2, r2, 5
	cmpeq	r2, r2, zero
	br	.L79
.L80:
	movi	r2, 1
.L79:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isspace, .-isspace
	.align	2
	.global	isupper
	.type	isupper, @function
isupper:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -65
	cmpltui	r2, r2, 26
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	isupper, .-isupper
	.align	2
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpltui	r2, r4, 32
	bne	r2, zero, .L85
	addi	r2, r4, -127
	cmpltui	r2, r2, 33
	bne	r2, zero, .L86
	addi	r2, r4, -8232
	cmpltui	r2, r2, 2
	bne	r2, zero, .L87
	movhi	r2, 65535
	addi	r2, r2, 7
	add	r2, r4, r2
	cmpgeui	r2, r2, 3
	cmpeq	r2, r2, zero
	br	.L84
.L85:
	movi	r2, 1
	br	.L84
.L86:
	movi	r2, 1
	br	.L84
.L87:
	movi	r2, 1
.L84:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswcntrl, .-iswcntrl
	.align	2
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswdigit, .-iswdigit
	.align	2
	.global	iswprint
	.type	iswprint, @function
iswprint:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	cmpgeui	r2, r4, 255
	bne	r2, zero, .L91
	addi	r2, r4, 1
	andi	r2, r2, 127
	cmpgeui	r2, r2, 33
	andi	r2, r2, 0xff
	br	.L92
.L91:
	cmpltui	r2, r4, 8232
	bne	r2, zero, .L93
	addi	r2, r4, -8234
	cmpltui	r2, r2, 47062
	bne	r2, zero, .L94
	movhi	r2, 65535
	addi	r2, r2, 8192
	add	r2, r4, r2
	cmpltui	r2, r2, 8185
	bne	r2, zero, .L95
	movhi	r2, 65535
	addi	r2, r2, 4
	add	r2, r4, r2
	movhi	r3, 16
	addi	r3, r3, 3
	bltu	r3, r2, .L96
	andi	r4, r4, 65534
	movui	r2, 65534
	cmpne	r2, r4, r2
	br	.L92
.L93:
	movi	r2, 1
	br	.L92
.L94:
	movi	r2, 1
	br	.L92
.L95:
	movi	r2, 1
	br	.L92
.L96:
	mov	r2, zero
.L92:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswprint, .-iswprint
	.align	2
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L100
	ori	r2, r4, 32
	addi	r2, r2, -97
	cmpgeui	r2, r2, 6
	cmpeq	r2, r2, zero
	br	.L99
.L100:
	movi	r2, 1
.L99:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	iswxdigit, .-iswxdigit
	.align	2
	.global	toascii
	.type	toascii, @function
toascii:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r2, r4, 127
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
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L106
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L107
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	ble	r2, zero, .L110
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__subdf3
	mov	r4, r2
	mov	r5, r3
	br	.L104
.L106:
	mov	r4, r18
	mov	r5, r19
	br	.L104
.L107:
	mov	r4, r16
	mov	r5, r17
	br	.L104
.L110:
	mov	r4, zero
	mov	r5, zero
.L104:
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
	.size	fdim, .-fdim
	.align	2
	.global	fdimf
	.type	fdimf, @function
fdimf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L114
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L115
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	ble	r2, zero, .L118
	mov	r5, r17
	mov	r4, r16
	call	__subsf3
	br	.L112
.L114:
	mov	r2, r16
	br	.L112
.L115:
	mov	r2, r17
	br	.L112
.L118:
	mov	r2, zero
.L112:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	fdimf, .-fdimf
	.align	2
	.global	fmax
	.type	fmax, @function
fmax:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L123
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L124
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L121
	bge	r19, zero, .L125
	mov	r4, r16
	mov	r5, r17
	br	.L120
.L121:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L128
	mov	r4, r16
	mov	r5, r17
	br	.L120
.L123:
	mov	r4, r16
	mov	r5, r17
	br	.L120
.L124:
	mov	r4, r18
	mov	r5, r19
	br	.L120
.L125:
	mov	r4, r18
	mov	r5, r19
	br	.L120
.L128:
	mov	r4, r18
	mov	r5, r19
.L120:
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
	.size	fmax, .-fmax
	.align	2
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L133
	mov	r5, r17
	mov	r4, r17
	call	__unordsf2
	bne	r2, zero, .L134
	andhi	r2, r16, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L131
	bge	r16, zero, .L135
	mov	r2, r17
	br	.L130
.L131:
	mov	r5, r17
	mov	r4, r16
	call	__ltsf2
	bge	r2, zero, .L138
	mov	r2, r17
	br	.L130
.L133:
	mov	r2, r17
	br	.L130
.L134:
	mov	r2, r16
	br	.L130
.L135:
	mov	r2, r16
	br	.L130
.L138:
	mov	r2, r16
.L130:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	fmaxf, .-fmaxf
	.align	2
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L143
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L144
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L141
	bge	r19, zero, .L145
	mov	r4, r16
	mov	r5, r17
	br	.L140
.L141:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L148
	mov	r4, r16
	mov	r5, r17
	br	.L140
.L143:
	mov	r4, r16
	mov	r5, r17
	br	.L140
.L144:
	mov	r4, r18
	mov	r5, r19
	br	.L140
.L145:
	mov	r4, r18
	mov	r5, r19
	br	.L140
.L148:
	mov	r4, r18
	mov	r5, r19
.L140:
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
	.size	fmaxl, .-fmaxl
	.align	2
	.global	fmin
	.type	fmin, @function
fmin:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L153
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L154
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L151
	bge	r19, zero, .L155
	mov	r4, r18
	mov	r5, r19
	br	.L150
.L151:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L158
	mov	r4, r18
	mov	r5, r19
	br	.L150
.L153:
	mov	r4, r16
	mov	r5, r17
	br	.L150
.L154:
	mov	r4, r18
	mov	r5, r19
	br	.L150
.L155:
	mov	r4, r16
	mov	r5, r17
	br	.L150
.L158:
	mov	r4, r16
	mov	r5, r17
.L150:
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
	.size	fmin, .-fmin
	.align	2
	.global	fminf
	.type	fminf, @function
fminf:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r17, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L163
	mov	r5, r16
	mov	r4, r16
	call	__unordsf2
	bne	r2, zero, .L164
	andhi	r2, r17, 32768
	andhi	r3, r16, 32768
	beq	r2, r3, .L161
	bge	r17, zero, .L165
	mov	r2, r17
	br	.L160
.L161:
	mov	r5, r16
	mov	r4, r17
	call	__ltsf2
	bge	r2, zero, .L168
	mov	r2, r17
	br	.L160
.L163:
	mov	r2, r16
	br	.L160
.L164:
	mov	r2, r17
	br	.L160
.L165:
	mov	r2, r16
	br	.L160
.L168:
	mov	r2, r16
.L160:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	fminf, .-fminf
	.align	2
	.global	fminl
	.type	fminl, @function
fminl:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L173
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__unorddf2
	bne	r2, zero, .L174
	andhi	r2, r19, 32768
	andhi	r3, r17, 32768
	beq	r2, r3, .L171
	bge	r19, zero, .L175
	mov	r4, r18
	mov	r5, r19
	br	.L170
.L171:
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L178
	mov	r4, r18
	mov	r5, r19
	br	.L170
.L173:
	mov	r4, r16
	mov	r5, r17
	br	.L170
.L174:
	mov	r4, r18
	mov	r5, r19
	br	.L170
.L175:
	mov	r4, r16
	mov	r5, r17
	br	.L170
.L178:
	mov	r4, r16
	mov	r5, r17
.L170:
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r3, gp, %gprel(s.0)
	br	.L180
.L181:
	andi	r5, r4, 63
	movhi	r2, %hiadj(digits)
	add	r2, r5, r2
	ldbu	r2, %lo(digits)(r2)
	stb	r2, 0(r3)
	addi	r3, r3, 1
	srli	r4, r4, 6
.L180:
	bne	r4, zero, .L181
	stb	zero, 0(r3)
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	addi	r2, r4, -1
	stw	r2, %gprel(seed)(gp)
	stw	zero, %gprel(seed+4)(gp)
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	srand, .-srand
	.align	2
	.global	rand
	.type	rand, @function
rand:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	ldw	r2, %gprel(seed)(gp)
	ldw	r3, %gprel(seed+4)(gp)
	movhi	r6, 19605
	addi	r6, r6, 32557
	movhi	r7, 22610
	addi	r7, r7, -3027
	mov	r4, r2
	mov	r5, r3
	call	__muldi3
	movi	r6, 1
	add	r4, r2, r6
	cmpltu	r2, r4, r2
	add	r2, r2, r3
	stw	r4, %gprel(seed)(gp)
	stw	r2, %gprel(seed+4)(gp)
	mov	r5, r2
	srli	r2, r5, 1
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	rand, .-rand
	.align	2
	.global	insque
	.type	insque, @function
insque:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	bne	r5, zero, .L185
	stw	zero, 4(r4)
	stw	zero, 0(r4)
	br	.L184
.L185:
	ldw	r2, 0(r5)
	stw	r2, 0(r4)
	stw	r5, 4(r4)
	stw	r4, 0(r5)
	ldw	r2, 0(r4)
	beq	r2, zero, .L184
	stw	r4, 4(r2)
.L184:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	insque, .-insque
	.align	2
	.global	remque
	.type	remque, @function
remque:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ldw	r2, 0(r4)
	beq	r2, zero, .L188
	ldw	r3, 4(r4)
	stw	r3, 4(r2)
.L188:
	ldw	r2, 4(r4)
	beq	r2, zero, .L187
	ldw	r3, 0(r4)
	stw	r3, 0(r2)
.L187:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
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
	addi	fp, sp, 32
	mov	r20, r4
	stw	r5, -28(fp)
	stw	r6, -32(fp)
	mov	r18, r7
	ldw	r21, 8(fp)
	ldw	r19, 0(r6)
	mov	r17, r5
	mov	r16, zero
	br	.L191
.L194:
	mov	r5, r17
	mov	r4, r20
	callr	r21
	add	r17, r17, r18
	bne	r2, zero, .L192
	mul	r16, r16, r18
	ldw	r2, -28(fp)
	add	r2, r2, r16
	br	.L193
.L192:
	addi	r16, r16, 1
.L191:
	bne	r16, r19, .L194
	addi	r2, r19, 1
	ldw	r3, -32(fp)
	stw	r2, 0(r3)
	mul	r4, r18, r19
	mov	r6, r18
	mov	r5, r20
	ldw	r2, -28(fp)
	add	r4, r2, r4
	call	memcpy
.L193:
	addi	sp, fp, -24
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
	.size	lsearch, .-lsearch
	.align	2
	.global	lfind
	.type	lfind, @function
lfind:
	addi	sp, sp, -36
	stw	ra, 32(sp)
	stw	fp, 28(sp)
	stw	r21, 24(sp)
	stw	r20, 20(sp)
	stw	r19, 16(sp)
	stw	r18, 12(sp)
	stw	r17, 8(sp)
	stw	r16, 4(sp)
	addi	fp, sp, 28
	mov	r19, r4
	stw	r5, -28(fp)
	mov	r18, r7
	ldw	r21, 8(fp)
	ldw	r20, 0(r6)
	mov	r17, r5
	mov	r16, zero
	br	.L196
.L199:
	mov	r5, r17
	mov	r4, r19
	callr	r21
	add	r17, r17, r18
	bne	r2, zero, .L197
	mul	r16, r16, r18
	ldw	r2, -28(fp)
	add	r2, r2, r16
	br	.L198
.L197:
	addi	r16, r16, 1
.L196:
	bne	r16, r20, .L199
	mov	r2, zero
.L198:
	addi	sp, fp, -24
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	bge	r4, zero, .L201
	sub	r2, zero, r4
.L201:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	abs, .-abs
	.align	2
	.global	atoi
	.type	atoi, @function
atoi:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	br	.L203
.L204:
	addi	r16, r16, 1
.L203:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L204
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L210
	cmpnei	r2, r2, 45
	bne	r2, zero, .L211
	movi	r4, 1
	br	.L205
.L210:
	mov	r4, zero
.L205:
	addi	r16, r16, 1
	br	.L206
.L211:
	mov	r4, zero
.L206:
	mov	r2, zero
	br	.L207
.L208:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L207:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L208
	bne	r4, zero, .L209
	sub	r2, zero, r2
.L209:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	atoi, .-atoi
	.align	2
	.global	atol
	.type	atol, @function
atol:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	br	.L214
.L215:
	addi	r16, r16, 1
.L214:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L215
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L221
	cmpnei	r2, r2, 45
	bne	r2, zero, .L222
	movi	r4, 1
	br	.L216
.L221:
	mov	r4, zero
.L216:
	addi	r16, r16, 1
	br	.L217
.L222:
	mov	r4, zero
.L217:
	mov	r2, zero
	br	.L218
.L219:
	muli	r2, r2, 10
	addi	r16, r16, 1
	ldb	r3, -1(r16)
	addi	r3, r3, -48
	sub	r2, r2, r3
.L218:
	ldb	r3, 0(r16)
	addi	r3, r3, -48
	cmpltui	r3, r3, 10
	bne	r3, zero, .L219
	bne	r4, zero, .L220
	sub	r2, zero, r2
.L220:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	atol, .-atol
	.align	2
	.global	atoll
	.type	atoll, @function
atoll:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r16, r4
	br	.L225
.L226:
	addi	r16, r16, 1
.L225:
	ldb	r4, 0(r16)
	call	isspace
	bne	r2, zero, .L226
	ldb	r2, 0(r16)
	cmpeqi	r3, r2, 43
	bne	r3, zero, .L232
	cmpnei	r2, r2, 45
	bne	r2, zero, .L233
	movi	r17, 1
	br	.L227
.L232:
	mov	r17, zero
.L227:
	addi	r16, r16, 1
	br	.L228
.L233:
	mov	r17, zero
.L228:
	mov	r8, zero
	mov	r9, zero
	br	.L229
.L230:
	movi	r6, 10
	mov	r7, zero
	mov	r4, r8
	mov	r5, r9
	call	__muldi3
	mov	r6, r2
	mov	r7, r3
	addi	r16, r16, 1
	ldb	r2, -1(r16)
	addi	r2, r2, -48
	mov	r18, r2
	srai	r19, r2, 31
	sub	r2, r6, r18
	cmpltu	r4, r6, r2
	sub	r3, r7, r19
	sub	r4, r3, r4
	mov	r8, r2
	mov	r9, r4
.L229:
	ldb	r2, 0(r16)
	addi	r2, r2, -48
	cmpltui	r2, r2, 10
	bne	r2, zero, .L230
	bne	r17, zero, .L234
	mov	r2, zero
	sub	r6, r2, r8
	cmpltu	r2, r2, r6
	sub	r7, zero, r9
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
	br	.L231
.L234:
	mov	r4, r8
	mov	r5, r9
.L231:
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
	addi	fp, sp, 24
	mov	r20, r4
	mov	r19, r5
	mov	r17, r6
	mov	r18, r7
	ldw	r21, 8(fp)
	br	.L236
.L240:
	srli	r16, r17, 1
	mul	r16, r16, r18
	add	r16, r19, r16
	mov	r5, r16
	mov	r4, r20
	callr	r21
	bge	r2, zero, .L237
	srli	r17, r17, 1
	br	.L236
.L237:
	bge	zero, r2, .L241
	add	r19, r16, r18
	srli	r2, r17, 1
	addi	r17, r17, -1
	sub	r17, r17, r2
.L236:
	bne	r17, zero, .L240
	mov	r2, zero
	br	.L239
.L241:
	mov	r2, r16
.L239:
	addi	sp, fp, -24
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
	addi	fp, sp, 24
	mov	r20, r4
	mov	r19, r7
	ldw	r21, 8(fp)
	mov	r17, r6
	mov	r18, r5
	br	.L243
.L246:
	srai	r16, r17, 1
	mul	r16, r16, r19
	add	r16, r18, r16
	ldw	r6, 12(fp)
	mov	r5, r16
	mov	r4, r20
	callr	r21
	beq	r2, zero, .L247
	bge	zero, r2, .L245
	add	r18, r16, r19
	addi	r17, r17, -1
.L245:
	srai	r17, r17, 1
.L243:
	bne	r17, zero, .L246
	mov	r2, zero
	br	.L244
.L247:
	mov	r2, r16
.L244:
	addi	sp, fp, -24
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
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r17, r4
	mov	r18, r5
	call	__divsi3
	mov	r16, r2
	mov	r5, r18
	mov	r4, r17
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r2
	mov	r5, r3
	bge	r3, zero, .L250
	mov	r2, zero
	sub	r6, r2, r4
	cmpltu	r2, r2, r6
	sub	r7, zero, r5
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
.L250:
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
	stw	r20, 32(sp)
	stw	r19, 28(sp)
	stw	r18, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	addi	fp, sp, 36
	mov	r20, r4
	stw	r5, -28(fp)
	stw	r6, -24(fp)
	mov	r16, r7
	ldw	r17, 12(fp)
	mov	r6, r7
	mov	r7, r17
	mov	r4, r5
	ldw	r5, -24(fp)
	call	__divdi3
	mov	r18, r2
	mov	r19, r3
	stw	r2, -36(fp)
	stw	r3, -32(fp)
	mov	r6, r16
	mov	r7, r17
	ldw	r4, -28(fp)
	ldw	r5, -24(fp)
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	stw	r18, 0(r20)
	stw	r19, 4(r20)
	stw	r4, 8(r20)
	stw	r5, 12(r20)
	mov	r2, r20
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	imaxdiv, .-imaxdiv
	.align	2
	.global	labs
	.type	labs, @function
labs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	bge	r4, zero, .L254
	sub	r2, zero, r4
.L254:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	labs, .-labs
	.align	2
	.global	ldiv
	.type	ldiv, @function
ldiv:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r17, r4
	mov	r18, r5
	call	__divsi3
	mov	r16, r2
	mov	r5, r18
	mov	r4, r17
	call	__modsi3
	mov	r3, r2
	mov	r2, r16
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r2
	mov	r5, r3
	bge	r3, zero, .L257
	mov	r2, zero
	sub	r6, r2, r4
	cmpltu	r2, r2, r6
	sub	r7, zero, r5
	sub	r2, r7, r2
	mov	r4, r6
	mov	r5, r2
.L257:
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
	stw	r20, 32(sp)
	stw	r19, 28(sp)
	stw	r18, 24(sp)
	stw	r17, 20(sp)
	stw	r16, 16(sp)
	addi	fp, sp, 36
	mov	r20, r4
	stw	r5, -28(fp)
	stw	r6, -24(fp)
	mov	r16, r7
	ldw	r17, 12(fp)
	mov	r6, r7
	mov	r7, r17
	mov	r4, r5
	ldw	r5, -24(fp)
	call	__divdi3
	mov	r18, r2
	mov	r19, r3
	stw	r2, -36(fp)
	stw	r3, -32(fp)
	mov	r6, r16
	mov	r7, r17
	ldw	r4, -28(fp)
	ldw	r5, -24(fp)
	call	__moddi3
	mov	r4, r2
	mov	r5, r3
	stw	r18, 0(r20)
	stw	r19, 4(r20)
	stw	r4, 8(r20)
	stw	r5, 12(r20)
	mov	r2, r20
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 32
	ret
	.size	lldiv, .-lldiv
	.align	2
	.global	wcschr
	.type	wcschr, @function
wcschr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L261
.L263:
	addi	r4, r4, 4
.L261:
	ldw	r2, 0(r4)
	beq	r2, zero, .L262
	bne	r5, r2, .L263
.L262:
	ldw	r2, 0(r4)
	beq	r2, zero, .L265
	mov	r2, r4
	br	.L264
.L265:
	mov	r2, zero
.L264:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcschr, .-wcschr
	.align	2
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L267
.L269:
	addi	r4, r4, 4
	addi	r5, r5, 4
.L267:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L268
	beq	r3, zero, .L268
	ldw	r2, 0(r5)
	bne	r2, zero, .L269
.L268:
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L271
	cmplt	r2, r2, r3
	br	.L270
.L271:
	movi	r2, -1
.L270:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcscmp, .-wcscmp
	.align	2
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r4
.L273:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r6, -4(r5)
	stw	r6, -4(r3)
	bne	r6, zero, .L273
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcscpy, .-wcscpy
	.align	2
	.global	wcslen
	.type	wcslen, @function
wcslen:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	br	.L275
.L276:
	addi	r2, r2, 4
.L275:
	ldw	r3, 0(r2)
	bne	r3, zero, .L276
	sub	r2, r2, r4
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L278
.L280:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L278:
	beq	r6, zero, .L279
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	bne	r3, r2, .L279
	beq	r3, zero, .L279
	ldw	r2, 0(r5)
	bne	r2, zero, .L280
.L279:
	beq	r6, zero, .L282
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L283
	cmplt	r2, r2, r3
	br	.L281
.L282:
	mov	r2, zero
	br	.L281
.L283:
	movi	r2, -1
.L281:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wcsncmp, .-wcsncmp
	.align	2
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L285
.L287:
	addi	r6, r6, -1
	addi	r4, r4, 4
.L285:
	beq	r6, zero, .L286
	ldw	r2, 0(r4)
	bne	r5, r2, .L287
.L286:
	beq	r6, zero, .L289
	mov	r2, r4
	br	.L288
.L289:
	mov	r2, zero
.L288:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemchr, .-wmemchr
	.align	2
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L291
.L293:
	addi	r6, r6, -1
	addi	r4, r4, 4
	addi	r5, r5, 4
.L291:
	beq	r6, zero, .L292
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	beq	r3, r2, .L293
.L292:
	beq	r6, zero, .L295
	ldw	r3, 0(r4)
	ldw	r2, 0(r5)
	blt	r3, r2, .L296
	cmplt	r2, r2, r3
	br	.L294
.L295:
	mov	r2, zero
	br	.L294
.L296:
	movi	r2, -1
.L294:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemcmp, .-wmemcmp
	.align	2
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r4
	br	.L298
.L299:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r7, -4(r5)
	stw	r7, -4(r3)
.L298:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L299
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemcpy, .-wmemcpy
	.align	2
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	beq	r4, r5, .L301
	sub	r3, r4, r5
	slli	r4, r6, 2
	bgeu	r3, r4, .L306
	mov	r6, r4
	br	.L303
.L304:
	add	r3, r5, r6
	ldw	r4, 0(r3)
	add	r3, r2, r6
	stw	r4, 0(r3)
.L303:
	addi	r6, r6, -4
	cmpnei	r3, r6, -4
	bne	r3, zero, .L304
	br	.L301
.L305:
	addi	r5, r5, 4
	addi	r3, r3, 4
	ldw	r4, -4(r5)
	stw	r4, -4(r3)
	br	.L302
.L306:
	mov	r3, r2
.L302:
	addi	r6, r6, -1
	cmpnei	r4, r6, -1
	bne	r4, zero, .L305
.L301:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemmove, .-wmemmove
	.align	2
	.global	wmemset
	.type	wmemset, @function
wmemset:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r4
	br	.L308
.L309:
	addi	r3, r3, 4
	stw	r5, -4(r3)
.L308:
	addi	r6, r6, -1
	cmpnei	r7, r6, -1
	bne	r7, zero, .L309
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	wmemset, .-wmemset
	.align	2
	.global	bcopy
	.type	bcopy, @function
bcopy:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	bgeu	r4, r5, .L311
	add	r2, r4, r6
	add	r5, r5, r6
	br	.L312
.L313:
	addi	r2, r2, -1
	addi	r5, r5, -1
	ldbu	r3, 0(r2)
	stb	r3, 0(r5)
.L312:
	bne	r2, r4, .L313
	br	.L310
.L311:
	beq	r4, r5, .L310
	add	r6, r5, r6
	mov	r2, r4
	br	.L315
.L316:
	addi	r2, r2, 1
	addi	r5, r5, 1
	ldbu	r3, -1(r2)
	stb	r3, -1(r5)
.L315:
	bne	r5, r6, .L316
.L310:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bcopy, .-bcopy
	.align	2
	.global	rotl64
	.type	rotl64, @function
rotl64:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r8, r4
	mov	r9, r5
	addi	r4, r6, -32
	blt	r4, zero, .L318
	mov	r2, zero
	sll	r3, r8, r4
	br	.L319
.L318:
	srli	r4, r8, 1
	movi	r2, 31
	sub	r2, r2, r6
	srl	r4, r4, r2
	sll	r3, r5, r6
	or	r3, r4, r3
	sll	r2, r8, r6
.L319:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L320
	mov	r5, zero
	srl	r4, r9, r7
	br	.L321
.L320:
	slli	r7, r9, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r4, 31
	sub	r4, r4, r6
	sll	r7, r7, r4
	srl	r4, r8, r6
	or	r4, r7, r4
	srl	r5, r9, r6
.L321:
	or	r6, r4, r2
	or	r7, r5, r3
	mov	r2, r6
	mov	r3, r7
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl64, .-rotl64
	.align	2
	.global	rotr64
	.type	rotr64, @function
rotr64:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r8, r4
	mov	r9, r5
	addi	r4, r6, -32
	blt	r4, zero, .L323
	mov	r3, zero
	srl	r2, r5, r4
	br	.L324
.L323:
	slli	r4, r5, 1
	movi	r2, 31
	sub	r2, r2, r6
	sll	r4, r4, r2
	srl	r2, r8, r6
	or	r2, r4, r2
	srl	r3, r5, r6
.L324:
	sub	r7, zero, r6
	andi	r7, r7, 63
	addi	r7, r7, -32
	blt	r7, zero, .L325
	mov	r4, zero
	sll	r5, r8, r7
	br	.L326
.L325:
	srli	r7, r8, 1
	sub	r6, zero, r6
	andi	r6, r6, 63
	movi	r4, 31
	sub	r4, r4, r6
	srl	r7, r7, r4
	sll	r5, r9, r6
	or	r5, r7, r5
	sll	r4, r8, r6
.L326:
	or	r6, r4, r2
	or	r7, r5, r3
	mov	r2, r6
	mov	r3, r7
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr64, .-rotr64
	.align	2
	.global	rotl32
	.type	rotl32, @function
rotl32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	rol	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl32, .-rotl32
	.align	2
	.global	rotr32
	.type	rotr32, @function
rotr32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ror	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr32, .-rotr32
	.align	2
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	rol	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl_sz, .-rotl_sz
	.align	2
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	ror	r2, r4, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr_sz, .-rotr_sz
	.align	2
	.global	rotl16
	.type	rotl16, @function
rotl16:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xffff
	sll	r2, r4, r5
	movi	r3, 16
	sub	r3, r3, r5
	srl	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl16, .-rotl16
	.align	2
	.global	rotr16
	.type	rotr16, @function
rotr16:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xffff
	srl	r2, r4, r5
	movi	r3, 16
	sub	r3, r3, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr16, .-rotr16
	.align	2
	.global	rotl8
	.type	rotl8, @function
rotl8:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xff
	sll	r2, r4, r5
	movi	r3, 8
	sub	r3, r3, r5
	srl	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotl8, .-rotl8
	.align	2
	.global	rotr8
	.type	rotr8, @function
rotr8:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r4, r4, 0xff
	srl	r2, r4, r5
	movi	r3, 8
	sub	r3, r3, r5
	sll	r4, r4, r3
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	rotr8, .-rotr8
	.align	2
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r2, r4, 65280
	srli	r2, r2, 8
	andi	r4, r4, 255
	slli	r4, r4, 8
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_16, .-bswap_16
	.align	2
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r3, r4, 24
	andhi	r2, r4, 255
	srli	r2, r2, 8
	or	r2, r2, r3
	andi	r3, r4, 65280
	slli	r3, r3, 8
	or	r2, r2, r3
	slli	r4, r4, 24
	or	r2, r2, r4
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_32, .-bswap_32
	.align	2
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r12, r4
	mov	r13, r5
	andhi	r7, r5, 65280
	srli	r4, r7, 24
	andhi	r9, r13, 255
	srli	r6, r9, 8
	or	r2, r6, r4
	mov	r6, zero
	andi	r7, r13, 65280
	slli	r9, r7, 8
	srli	r4, r6, 24
	or	r4, r9, r4
	srli	r5, r7, 24
	or	r10, r2, r4
	mov	r11, r5
	mov	r6, zero
	andi	r7, r13, 255
	slli	r3, r7, 24
	srli	r4, r6, 8
	or	r4, r3, r4
	srli	r5, r7, 8
	or	r8, r10, r4
	or	r9, r11, r5
	andhi	r6, r12, 65280
	srli	r5, r6, 24
	slli	r4, r6, 8
	or	r6, r8, r4
	or	r7, r9, r5
	andhi	r8, r12, 255
	srli	r5, r8, 8
	slli	r4, r8, 24
	or	r8, r6, r4
	or	r9, r7, r5
	andi	r6, r12, 65280
	slli	r5, r6, 8
	or	r7, r9, r5
	andi	r4, r12, 255
	slli	r3, r4, 24
	or	r5, r7, r3
	mov	r2, r8
	mov	r3, r5
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	bswap_64, .-bswap_64
	.align	2
	.global	ffs
	.type	ffs, @function
ffs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L339
.L342:
	srl	r3, r4, r2
	andi	r3, r3, 1
	beq	r3, zero, .L340
	addi	r2, r2, 1
	br	.L341
.L340:
	addi	r2, r2, 1
.L339:
	cmpnei	r3, r2, 32
	bne	r3, zero, .L342
	mov	r2, zero
.L341:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	ffs, .-ffs
	.align	2
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	beq	r4, zero, .L347
	movi	r2, 1
	br	.L345
.L346:
	srai	r4, r4, 1
	addi	r2, r2, 1
.L345:
	andi	r3, r4, 1
	beq	r3, zero, .L346
	br	.L344
.L347:
	mov	r2, zero
.L344:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	libiberty_ffs, .-libiberty_ffs
	.align	2
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	movhi	r5, 65408
	addi	r5, r5, -1
	call	__ltsf2
	blt	r2, zero, .L351
	movhi	r5, 32640
	addi	r5, r5, -1
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	br	.L349
.L351:
	movi	r2, 1
.L349:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	gl_isinff, .-gl_isinff
	.align	2
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L357
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	cmplt	r2, zero, r2
	br	.L355
.L357:
	movi	r2, 1
.L355:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	gl_isinfd, .-gl_isinfd
	.align	2
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	addi	sp, sp, -16
	stw	ra, 12(sp)
	stw	fp, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	movi	r6, -1
	movhi	r7, 65520
	addi	r7, r7, -1
	call	__ltdf2
	blt	r2, zero, .L363
	movi	r6, -1
	movhi	r7, 32752
	addi	r7, r7, -1
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	cmplt	r2, zero, r2
	br	.L361
.L363:
	movi	r2, 1
.L361:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	gl_isinfl, .-gl_isinfl
	.align	2
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	mov	r4, r5
	call	__floatsidf
	stw	r2, 0(r16)
	stw	r3, 4(r16)
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	_Qp_itoq, .-_Qp_itoq
	.align	2
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r18, r4
	mov	r16, r5
	mov	r5, r4
	call	__unordsf2
	bne	r2, zero, .L368
	mov	r5, r18
	mov	r4, r18
	call	__addsf3
	mov	r5, r2
	mov	r4, r18
	call	__eqsf2
	beq	r2, zero, .L368
	bge	r16, zero, .L372
	movhi	r17, 16128
	br	.L371
.L372:
	movhi	r17, 16384
.L371:
	andi	r2, r16, 1
	beq	r2, zero, .L370
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
.L370:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L368
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
	br	.L371
.L368:
	mov	r2, r18
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	ldexpf, .-ldexpf
	.align	2
	.global	ldexp
	.type	ldexp, @function
ldexp:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 20
	mov	r18, r4
	mov	r19, r5
	mov	r20, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L374
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r18
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L374
	bge	r20, zero, .L378
	mov	r16, zero
	movhi	r17, 16352
	br	.L377
.L378:
	mov	r16, zero
	movhi	r17, 16384
.L377:
	andi	r2, r20, 1
	beq	r2, zero, .L376
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
.L376:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L374
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L377
.L374:
	mov	r2, r18
	mov	r3, r19
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	ldexp, .-ldexp
	.align	2
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 20
	mov	r18, r4
	mov	r19, r5
	mov	r20, r6
	mov	r6, r4
	mov	r7, r5
	call	__unorddf2
	bne	r2, zero, .L380
	mov	r6, r18
	mov	r7, r19
	mov	r4, r18
	mov	r5, r19
	call	__adddf3
	mov	r6, r2
	mov	r7, r3
	mov	r4, r18
	mov	r5, r19
	call	__eqdf2
	beq	r2, zero, .L380
	bge	r20, zero, .L384
	mov	r16, zero
	movhi	r17, 16352
	br	.L383
.L384:
	mov	r16, zero
	movhi	r17, 16384
.L383:
	andi	r2, r20, 1
	beq	r2, zero, .L382
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
.L382:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L380
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L383
.L380:
	mov	r2, r18
	mov	r3, r19
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	ldexpl, .-ldexpl
	.align	2
	.global	memxor
	.type	memxor, @function
memxor:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	add	r6, r4, r6
	mov	r3, r4
	br	.L386
.L387:
	addi	r5, r5, 1
	ldbu	r8, -1(r5)
	addi	r3, r3, 1
	ldbu	r7, -1(r3)
	xor	r7, r7, r8
	stb	r7, -1(r3)
.L386:
	bne	r3, r6, .L387
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	memxor, .-memxor
	.align	2
	.global	strncat
	.type	strncat, @function
strncat:
	addi	sp, sp, -20
	stw	ra, 16(sp)
	stw	fp, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 12
	mov	r18, r4
	mov	r17, r5
	mov	r16, r6
	call	strlen
	add	r2, r18, r2
	br	.L389
.L391:
	addi	r17, r17, 1
	addi	r2, r2, 1
	addi	r16, r16, -1
.L389:
	beq	r16, zero, .L390
	ldbu	r3, 0(r17)
	stb	r3, 0(r2)
	andi	r3, r3, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bne	r3, zero, .L391
.L390:
	bne	r16, zero, .L392
	stb	zero, 0(r2)
.L392:
	mov	r2, r18
	addi	sp, fp, -12
	ldw	ra, 16(sp)
	ldw	fp, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 20
	ret
	.size	strncat, .-strncat
	.align	2
	.global	strnlen
	.type	strnlen, @function
strnlen:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L394
.L396:
	addi	r2, r2, 1
.L394:
	beq	r2, r5, .L395
	add	r3, r4, r2
	ldb	r3, 0(r3)
	bne	r3, zero, .L396
.L395:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strnlen, .-strnlen
	.align	2
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	br	.L398
.L400:
	addi	r3, r3, 1
	ldb	r7, -1(r3)
	ldb	r6, 0(r4)
	bne	r7, r6, .L401
	br	.L402
.L403:
	mov	r3, r5
.L401:
	ldb	r6, 0(r3)
	bne	r6, zero, .L400
	addi	r4, r4, 1
.L398:
	ldb	r2, 0(r4)
	bne	r2, zero, .L403
	br	.L399
.L402:
	mov	r2, r4
.L399:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	strpbrk, .-strpbrk
	.align	2
	.global	strrchr
	.type	strrchr, @function
strrchr:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
.L406:
	ldb	r3, 0(r4)
	bne	r5, r3, .L405
	mov	r2, r4
.L405:
	addi	r4, r4, 1
	ldb	r3, -1(r4)
	bne	r3, zero, .L406
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
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r16, r4
	mov	r17, r5
	mov	r4, r5
	call	strlen
	mov	r18, r2
	beq	r2, zero, .L412
	ldb	r19, 0(r17)
	br	.L410
.L411:
	mov	r6, r18
	mov	r5, r17
	mov	r4, r16
	call	strncmp
	beq	r2, zero, .L413
	addi	r16, r16, 1
.L410:
	mov	r5, r19
	mov	r4, r16
	call	strchr
	mov	r16, r2
	bne	r2, zero, .L411
	mov	r2, zero
	br	.L409
.L412:
	mov	r2, r16
	br	.L409
.L413:
	mov	r2, r16
.L409:
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	strstr, .-strstr
	.align	2
	.global	copysign
	.type	copysign, @function
copysign:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r16, r4
	mov	r17, r5
	mov	r18, r6
	mov	r19, r7
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	bge	r2, zero, .L415
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	bgt	r2, zero, .L417
.L415:
	mov	r6, zero
	mov	r7, zero
	mov	r4, r16
	mov	r5, r17
	call	__gtdf2
	ble	r2, zero, .L425
	mov	r6, zero
	mov	r7, zero
	mov	r4, r18
	mov	r5, r19
	call	__ltdf2
	bge	r2, zero, .L426
.L417:
	mov	r4, r16
	xorhi	r5, r17, 32768
	br	.L418
.L425:
	mov	r4, r16
	mov	r5, r17
	br	.L418
.L426:
	mov	r4, r16
	mov	r5, r17
.L418:
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
	.size	copysign, .-copysign
	.align	2
	.global	memmem
	.type	memmem, @function
memmem:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r16, r4
	mov	r17, r6
	mov	r19, r7
	sub	r18, r5, r7
	add	r18, r4, r18
	beq	r7, zero, .L432
	bltu	r5, r7, .L433
	br	.L429
.L431:
	ldb	r3, 0(r16)
	ldb	r2, 0(r17)
	bne	r3, r2, .L430
	addi	r6, r19, -1
	addi	r5, r17, 1
	addi	r4, r16, 1
	call	memcmp
	beq	r2, zero, .L434
.L430:
	addi	r16, r16, 1
.L429:
	bgeu	r18, r16, .L431
	mov	r2, zero
	br	.L428
.L432:
	mov	r2, r4
	br	.L428
.L433:
	mov	r2, zero
	br	.L428
.L434:
	mov	r2, r16
.L428:
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	memmem, .-memmem
	.align	2
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r6
	call	memcpy
	add	r2, r2, r16
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	mempcpy, .-mempcpy
	.align	2
	.global	frexp
	.type	frexp, @function
frexp:
	addi	sp, sp, -28
	stw	ra, 24(sp)
	stw	fp, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 20
	mov	r16, r4
	mov	r17, r5
	mov	r19, r6
	mov	r6, zero
	mov	r7, zero
	call	__ltdf2
	bge	r2, zero, .L453
	mov	r2, r16
	xorhi	r3, r17, 32768
	mov	r16, r2
	mov	r17, r3
	movi	r20, 1
	br	.L437
.L453:
	mov	r20, zero
.L437:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r16
	mov	r5, r17
	call	__gedf2
	bge	r2, zero, .L448
	br	.L454
.L441:
	addi	r18, r18, 1
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L439
.L448:
	mov	r18, zero
.L439:
	mov	r6, zero
	movhi	r7, 16368
	mov	r4, r16
	mov	r5, r17
	call	__gedf2
	bge	r2, zero, .L441
	br	.L442
.L454:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__ltdf2
	bge	r2, zero, .L455
	mov	r6, zero
	mov	r7, zero
	mov	r4, r16
	mov	r5, r17
	call	__nedf2
	bne	r2, zero, .L450
	mov	r18, zero
	br	.L442
.L445:
	addi	r18, r18, -1
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__adddf3
	mov	r16, r2
	mov	r17, r3
	br	.L444
.L450:
	mov	r18, zero
.L444:
	mov	r6, zero
	movhi	r7, 16352
	mov	r4, r16
	mov	r5, r17
	call	__ltdf2
	blt	r2, zero, .L445
	br	.L442
.L455:
	mov	r18, zero
.L442:
	stw	r18, 0(r19)
	beq	r20, zero, .L446
	mov	r2, r16
	xorhi	r3, r17, 32768
	mov	r16, r2
	mov	r17, r3
.L446:
	mov	r2, r16
	mov	r3, r17
	addi	sp, fp, -20
	ldw	ra, 24(sp)
	ldw	fp, 20(sp)
	ldw	r20, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 28
	ret
	.size	frexp, .-frexp
	.align	2
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r8, r4
	mov	r9, r5
	mov	r4, r6
	mov	r5, r7
	mov	r2, r8
	mov	r3, r9
	mov	r6, zero
	mov	r7, zero
	br	.L457
.L460:
	andi	r14, r2, 1
	beq	r14, zero, .L458
	add	r8, r6, r4
	cmpltu	ra, r8, r6
	add	r9, r7, r5
	add	ra, ra, r9
	mov	r6, r8
	mov	r7, ra
.L458:
	srli	r8, r4, 31
	slli	r11, r5, 1
	or	r11, r8, r11
	slli	r10, r4, 1
	mov	r4, r10
	mov	r5, r11
	slli	r8, r3, 31
	srli	r12, r2, 1
	or	r12, r8, r12
	srli	r13, r3, 1
	mov	r2, r12
	mov	r3, r13
.L457:
	or	r8, r2, r3
	bne	r8, zero, .L460
	mov	r2, r6
	mov	r3, r7
	mov	sp, fp
	ldw	ra, 4(sp)
	ldw	fp, 0(sp)
	addi	sp, sp, 8
	ret
	.size	__muldi3, .-__muldi3
	.align	2
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r7, 33
	movi	r3, 1
	br	.L462
.L464:
	add	r5, r5, r5
	add	r3, r3, r3
.L462:
	bgeu	r5, r4, .L469
	addi	r7, r7, -1
	beq	r7, zero, .L470
	bge	r5, zero, .L464
	mov	r2, zero
	br	.L466
.L467:
	bltu	r4, r5, .L465
	sub	r4, r4, r5
	or	r2, r2, r3
.L465:
	srli	r3, r3, 1
	srli	r5, r5, 1
	br	.L466
.L469:
	mov	r2, zero
	br	.L466
.L470:
	mov	r2, zero
.L466:
	bne	r3, zero, .L467
	beq	r6, zero, .L468
	mov	r2, r4
.L468:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	udivmodsi4, .-udivmodsi4
	.align	2
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	andi	r3, r4, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	bge	r3, zero, .L473
	nor	r2, zero, r4
.L473:
	andi	r3, r2, 255
	xori	r3, r3, 128
	addi	r3, r3, -128
	beq	r3, zero, .L475
	slli	r4, r3, 8
	call	__clzsi2
	addi	r2, r2, -1
	br	.L474
.L475:
	movi	r2, 7
.L474:
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
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	bge	r5, zero, .L477
	nor	r4, zero, r2
	nor	r5, zero, r3
	mov	r2, r4
	mov	r3, r5
.L477:
	or	r4, r2, r3
	beq	r4, zero, .L481
	mov	r4, r2
	mov	r5, r3
	call	__clzdi2
	addi	r2, r2, -1
	br	.L479
.L481:
	movi	r2, 63
.L479:
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L483
.L485:
	andi	r3, r4, 1
	beq	r3, zero, .L484
	add	r2, r2, r5
.L484:
	srli	r4, r4, 1
	add	r5, r5, r5
.L483:
	bne	r4, zero, .L485
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3, .-__mulsi3
	.align	2
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r11, r6, 3
	movi	r2, -8
	and	r2, r6, r2
	bgeu	r4, r5, .L487
.L489:
	mov	r7, r5
	mov	r3, r4
	mov	r10, zero
	br	.L488
.L487:
	add	r3, r5, r6
	bltu	r3, r4, .L489
	br	.L490
.L491:
	ldw	r8, 0(r7)
	ldw	r9, 4(r7)
	stw	r8, 0(r3)
	stw	r9, 4(r3)
	addi	r10, r10, 1
	addi	r7, r7, 8
	addi	r3, r3, 8
.L488:
	bne	r10, r11, .L491
	br	.L492
.L493:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L492:
	bltu	r2, r6, .L493
	br	.L486
.L495:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L490:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L495
.L486:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovd, .-__cmovd
	.align	2
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r8, r6, 1
	bgeu	r4, r5, .L497
.L499:
	mov	r2, r5
	mov	r3, r4
	add	r8, r8, r8
	add	r8, r8, r5
	br	.L498
.L497:
	add	r2, r5, r6
	bltu	r2, r4, .L499
	br	.L500
.L501:
	ldhu	r7, 0(r2)
	sth	r7, 0(r3)
	addi	r2, r2, 2
	addi	r3, r3, 2
.L498:
	bne	r2, r8, .L501
	andi	r2, r6, 1
	beq	r2, zero, .L496
	addi	r6, r6, -1
	add	r5, r5, r6
	add	r4, r4, r6
	ldbu	r2, 0(r5)
	stb	r2, 0(r4)
	br	.L496
.L503:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L500:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L503
.L496:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovh, .-__cmovh
	.align	2
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r9, r6, 2
	movi	r2, -4
	and	r2, r6, r2
	bgeu	r4, r5, .L505
.L507:
	mov	r3, r5
	mov	r7, r4
	slli	r9, r9, 2
	add	r9, r9, r5
	br	.L506
.L505:
	add	r3, r5, r6
	bltu	r3, r4, .L507
	br	.L508
.L509:
	ldw	r8, 0(r3)
	stw	r8, 0(r7)
	addi	r3, r3, 4
	addi	r7, r7, 4
.L506:
	bne	r3, r9, .L509
	br	.L510
.L511:
	add	r3, r5, r2
	ldbu	r7, 0(r3)
	add	r3, r4, r2
	stb	r7, 0(r3)
	addi	r2, r2, 1
.L510:
	bltu	r2, r6, .L511
	br	.L504
.L513:
	add	r2, r5, r6
	ldbu	r3, 0(r2)
	add	r2, r4, r6
	stb	r3, 0(r2)
.L508:
	addi	r6, r6, -1
	cmpnei	r2, r6, -1
	bne	r2, zero, .L513
.L504:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmovw, .-__cmovw
	.align	2
	.global	__modi
	.type	__modi, @function
__modi:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
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
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatunsidf
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
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatunsisf
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
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatundidf
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
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	call	__floatundisf
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
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L521
.L523:
	andi	r3, r4, 0xffff
	movi	r5, 15
	sub	r5, r5, r2
	sra	r3, r3, r5
	andi	r3, r3, 1
	bne	r3, zero, .L522
	addi	r2, r2, 1
.L521:
	cmpnei	r3, r2, 16
	bne	r3, zero, .L523
.L522:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__clzhi2, .-__clzhi2
	.align	2
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L525
.L527:
	andi	r3, r4, 0xffff
	sra	r3, r3, r2
	andi	r3, r3, 1
	bne	r3, zero, .L526
	addi	r2, r2, 1
.L525:
	cmpnei	r3, r2, 16
	bne	r3, zero, .L527
.L526:
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
	stw	r16, 0(sp)
	addi	fp, sp, 4
	mov	r16, r4
	movhi	r5, 18176
	call	__gesf2
	blt	r2, zero, .L533
	movhi	r5, 18176
	mov	r4, r16
	call	__subsf3
	mov	r4, r2
	call	__fixsfsi
	movui	r3, 32768
	add	r2, r2, r3
	br	.L531
.L533:
	mov	r4, r16
	call	__fixsfsi
.L531:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	__fixunssfsi, .-__fixunssfsi
	.align	2
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	mov	r5, zero
	br	.L535
.L537:
	andi	r3, r4, 0xffff
	sra	r3, r3, r5
	andi	r3, r3, 1
	beq	r3, zero, .L536
	addi	r2, r2, 1
.L536:
	addi	r5, r5, 1
.L535:
	cmpnei	r3, r5, 16
	bne	r3, zero, .L537
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	mov	r5, zero
	br	.L539
.L541:
	andi	r3, r4, 0xffff
	sra	r3, r3, r5
	andi	r3, r3, 1
	beq	r3, zero, .L540
	addi	r2, r2, 1
.L540:
	addi	r5, r5, 1
.L539:
	cmpnei	r3, r5, 16
	bne	r3, zero, .L541
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__popcounthi2, .-__popcounthi2
	.align	2
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, zero
	br	.L543
.L545:
	andi	r3, r4, 1
	beq	r3, zero, .L544
	add	r2, r2, r5
.L544:
	srli	r4, r4, 1
	add	r5, r5, r5
.L543:
	bne	r4, zero, .L545
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	2
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	beq	r4, zero, .L551
	mov	r2, zero
	br	.L548
.L550:
	andi	r3, r5, 1
	beq	r3, zero, .L549
	add	r2, r2, r4
.L549:
	add	r4, r4, r4
	srli	r5, r5, 1
.L548:
	bne	r5, zero, .L550
	br	.L547
.L551:
	mov	r2, zero
.L547:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	2
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r7, 33
	movi	r3, 1
	br	.L553
.L555:
	add	r5, r5, r5
	add	r3, r3, r3
.L553:
	bgeu	r5, r4, .L560
	addi	r7, r7, -1
	beq	r7, zero, .L561
	bge	r5, zero, .L555
	mov	r2, zero
	br	.L557
.L558:
	bltu	r4, r5, .L556
	sub	r4, r4, r5
	or	r2, r2, r3
.L556:
	srli	r3, r3, 1
	srli	r5, r5, 1
	br	.L557
.L560:
	mov	r2, zero
	br	.L557
.L561:
	mov	r2, zero
.L557:
	bne	r3, zero, .L558
	beq	r6, zero, .L559
	mov	r2, r4
.L559:
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
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 8
	mov	r16, r4
	mov	r17, r5
	call	__ltsf2
	blt	r2, zero, .L565
	mov	r5, r17
	mov	r4, r16
	call	__gtsf2
	cmplt	r2, zero, r2
	br	.L564
.L565:
	movi	r2, -1
.L564:
	addi	sp, fp, -8
	ldw	ra, 12(sp)
	ldw	fp, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 16
	ret
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.align	2
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r18, r4
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	call	__ltdf2
	blt	r2, zero, .L569
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__gtdf2
	cmplt	r2, zero, r2
	br	.L568
.L569:
	movi	r2, -1
.L568:
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.align	2
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r7, r5
	srai	r5, r4, 31
	mov	r2, r7
	srai	r7, r7, 31
	mov	r6, r2
	call	__muldi3
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
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r7, zero
	mov	r6, r5
	mov	r5, zero
	call	__muldi3
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	bge	r5, zero, .L580
	sub	r5, zero, r5
	movi	r7, 1
	br	.L574
.L580:
	mov	r7, zero
.L574:
	movi	r6, 33
	mov	r2, zero
	br	.L575
.L578:
	andi	r3, r5, 1
	beq	r3, zero, .L576
	add	r2, r2, r4
.L576:
	add	r4, r4, r4
	srai	r5, r5, 1
.L575:
	beq	r5, zero, .L577
	addi	r3, r6, -1
	mov	r6, r3
	andi	r3, r3, 0xff
	bne	r3, zero, .L578
.L577:
	beq	r7, zero, .L579
	sub	r2, zero, r2
.L579:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__mulhi3, .-__mulhi3
	.align	2
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	bge	r4, zero, .L586
	sub	r4, zero, r4
	movi	r16, 1
	br	.L583
.L586:
	mov	r16, zero
.L583:
	bge	r5, zero, .L584
	sub	r5, zero, r5
	xori	r16, r16, 1
.L584:
	mov	r6, zero
	call	__udivmodsi4
	beq	r16, zero, .L585
	sub	r2, zero, r2
.L585:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	__divsi3, .-__divsi3
	.align	2
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	addi	sp, sp, -12
	stw	ra, 8(sp)
	stw	fp, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 4
	bge	r4, zero, .L591
	sub	r4, zero, r4
	movi	r16, 1
	br	.L588
.L591:
	mov	r16, zero
.L588:
	bge	r5, zero, .L589
	sub	r5, zero, r5
.L589:
	movi	r6, 1
	call	__udivmodsi4
	beq	r16, zero, .L590
	sub	r2, zero, r2
.L590:
	addi	sp, fp, -4
	ldw	ra, 8(sp)
	ldw	fp, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 12
	ret
	.size	__modsi3, .-__modsi3
	.align	2
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r2, 17
	movi	r3, 1
	br	.L593
.L595:
	add	r5, r5, r5
	add	r3, r3, r3
.L593:
	andi	r7, r5, 0xffff
	andi	r8, r4, 0xffff
	bgeu	r7, r8, .L600
	addi	r2, r2, -1
	beq	r2, zero, .L601
	andi	r7, r5, 65535
	xori	r7, r7, 32768
	addi	r7, r7, -32768
	bge	r7, zero, .L595
	mov	r2, zero
	br	.L597
.L598:
	andi	r7, r4, 0xffff
	andi	r8, r5, 0xffff
	bltu	r7, r8, .L596
	sub	r4, r4, r5
	or	r2, r2, r3
.L596:
	slli	r3, r3, 16
	srli	r3, r3, 17
	slli	r5, r5, 16
	srli	r5, r5, 17
	br	.L597
.L600:
	mov	r2, zero
	br	.L597
.L601:
	mov	r2, zero
.L597:
	andi	r7, r3, 0xffff
	bne	r7, zero, .L598
	beq	r6, zero, .L599
	mov	r2, r4
.L599:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodhi4, .-__udivmodhi4
	.align	2
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movi	r7, 33
	movi	r3, 1
	br	.L604
.L606:
	add	r5, r5, r5
	add	r3, r3, r3
.L604:
	bgeu	r5, r4, .L611
	addi	r7, r7, -1
	beq	r7, zero, .L612
	bge	r5, zero, .L606
	mov	r2, zero
	br	.L608
.L609:
	bltu	r4, r5, .L607
	sub	r4, r4, r5
	or	r2, r2, r3
.L607:
	srli	r3, r3, 1
	srli	r5, r5, 1
	br	.L608
.L611:
	mov	r2, zero
	br	.L608
.L612:
	mov	r2, zero
.L608:
	bne	r3, zero, .L609
	beq	r6, zero, .L610
	mov	r2, r4
.L610:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	2
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L615
	mov	r2, zero
	addi	r6, r6, -32
	sll	r3, r4, r6
	br	.L616
.L615:
	beq	r6, zero, .L618
	sll	r2, r4, r6
	sll	r7, r5, r6
	movi	r5, 32
	sub	r5, r5, r6
	srl	r4, r4, r5
	or	r3, r4, r7
.L616:
	mov	r4, r2
	mov	r5, r3
	br	.L617
.L618:
	mov	r4, r2
	mov	r5, r3
.L617:
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L620
	srai	r3, r5, 31
	addi	r6, r6, -32
	sra	r2, r5, r6
	br	.L621
.L620:
	beq	r6, zero, .L623
	sra	r3, r5, r6
	movi	r7, 32
	sub	r7, r7, r6
	sll	r5, r5, r7
	srl	r4, r4, r6
	or	r2, r5, r4
.L621:
	mov	r4, r2
	mov	r5, r3
	br	.L622
.L623:
	mov	r4, r2
	mov	r5, r3
.L622:
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
	addi	sp, sp, -28
	stw	fp, 24(sp)
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 24
	mov	r8, r4
	mov	r9, r5
	srli	r18, r5, 24
	srli	r4, r9, 8
	andi	r16, r4, 65280
	slli	r7, r9, 8
	srli	r4, r8, 24
	or	r4, r7, r4
	andhi	r14, r4, 255
	slli	r6, r9, 24
	srli	r4, r8, 8
	or	r4, r6, r4
	andhi	r12, r4, 65280
	srli	r3, r8, 24
	or	r21, r3, r7
	slli	r20, r8, 8
	mov	r10, zero
	andi	r11, r21, 255
	srli	r3, r8, 8
	or	r5, r3, r6
	slli	r4, r8, 24
	mov	r6, zero
	andi	r7, r5, 65280
	mov	r2, zero
	andhi	r3, r20, 255
	mov	r9, r4
	mov	r5, r9
	or	r8, r18, r16
	mov	r9, r5
	or	r4, r8, r14
	mov	r5, r9
	or	r8, r4, r12
	mov	r9, r5
	or	r4, r8, r10
	or	r5, r9, r11
	or	r8, r4, r6
	or	r9, r5, r7
	or	r4, r8, r2
	or	r5, r9, r3
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r5, r4, 24
	srli	r3, r4, 8
	andi	r3, r3, 65280
	slli	r2, r4, 8
	andhi	r2, r2, 255
	slli	r4, r4, 24
	or	r4, r4, r5
	or	r4, r4, r3
	or	r2, r4, r2
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__bswapsi2, .-__bswapsi2
	.align	2
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	movui	r2, 65535
	bltu	r2, r4, .L631
	movi	r3, 16
	br	.L627
.L631:
	mov	r3, zero
.L627:
	movi	r2, 16
	sub	r2, r2, r3
	srl	r4, r4, r2
	andi	r2, r4, 65280
	bne	r2, zero, .L632
	movi	r5, 8
	br	.L628
.L632:
	mov	r5, zero
.L628:
	movi	r2, 8
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 240
	bne	r2, zero, .L633
	movi	r5, 4
	br	.L629
.L633:
	mov	r5, zero
.L629:
	movi	r2, 4
	sub	r2, r2, r5
	srl	r4, r4, r2
	add	r3, r3, r5
	andi	r2, r4, 12
	bne	r2, zero, .L634
	movi	r2, 2
	br	.L630
.L634:
	mov	r2, zero
.L630:
	movi	r5, 2
	sub	r6, r5, r2
	srl	r4, r4, r6
	add	r3, r3, r2
	andi	r2, r4, 2
	cmpeq	r2, r2, zero
	sub	r5, r5, r4
	mul	r2, r2, r5
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r6
	mov	r5, r7
	bgt	r5, r3, .L637
	blt	r5, r3, .L638
	bgtu	r4, r2, .L639
	bltu	r4, r2, .L640
	movi	r2, 1
	br	.L636
.L637:
	mov	r2, zero
	br	.L636
.L638:
	movi	r2, 2
	br	.L636
.L639:
	mov	r2, zero
	br	.L636
.L640:
	movi	r2, 2
.L636:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__cmpdi2, .-__cmpdi2
	.align	2
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r2, r4, 65535
	bne	r2, zero, .L647
	movi	r3, 16
	br	.L643
.L647:
	mov	r3, zero
.L643:
	srl	r4, r4, r3
	andi	r2, r4, 255
	bne	r2, zero, .L648
	movi	r2, 8
	br	.L644
.L648:
	mov	r2, zero
.L644:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 15
	bne	r2, zero, .L649
	movi	r2, 4
	br	.L645
.L649:
	mov	r2, zero
.L645:
	srl	r4, r4, r2
	add	r3, r3, r2
	andi	r2, r4, 3
	bne	r2, zero, .L650
	movi	r2, 2
	br	.L646
.L650:
	mov	r2, zero
.L646:
	srl	r4, r4, r2
	andi	r4, r4, 3
	add	r3, r3, r2
	nor	r5, zero, r4
	andi	r5, r5, 1
	srli	r4, r4, 1
	movi	r2, 2
	sub	r2, r2, r4
	mul	r2, r2, r5
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	andi	r7, r6, 32
	beq	r7, zero, .L652
	mov	r3, zero
	addi	r6, r6, -32
	srl	r2, r5, r6
	br	.L653
.L652:
	beq	r6, zero, .L655
	srl	r3, r5, r6
	movi	r7, 32
	sub	r7, r7, r6
	sll	r5, r5, r7
	srl	r4, r4, r6
	or	r2, r5, r4
.L653:
	mov	r4, r2
	mov	r5, r3
	br	.L654
.L655:
	mov	r4, r2
	mov	r5, r3
.L654:
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	andi	r8, r4, 65535
	andi	r9, r5, 65535
	mul	r3, r8, r9
	srli	r2, r3, 16
	andi	r3, r3, 65535
	srli	r4, r4, 16
	mul	r9, r4, r9
	add	r2, r2, r9
	slli	r9, r2, 16
	add	r6, r9, r3
	srli	r7, r2, 16
	srli	r2, r6, 16
	andi	r3, r6, 65535
	srli	r5, r5, 16
	mul	r8, r8, r5
	add	r2, r2, r8
	slli	r8, r2, 16
	add	r6, r8, r3
	srli	r2, r2, 16
	add	r2, r2, r7
	mul	r4, r4, r5
	add	r3, r4, r2
	mov	r2, r6
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__muldsi3, .-__muldsi3
	.align	2
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	addi	sp, sp, -40
	stw	ra, 36(sp)
	stw	fp, 32(sp)
	stw	r21, 28(sp)
	stw	r20, 24(sp)
	stw	r19, 20(sp)
	stw	r18, 16(sp)
	stw	r17, 12(sp)
	stw	r16, 8(sp)
	addi	fp, sp, 32
	mov	r19, r5
	mov	r16, r6
	mov	r17, r7
	stw	r4, -32(fp)
	stw	r5, -28(fp)
	mov	r5, r6
	call	__muldsi3
	mov	r7, r3
	mov	r4, r2
	mul	r3, r19, r16
	ldw	r2, -32(fp)
	mul	r2, r17, r2
	add	r3, r3, r2
	add	r3, r3, r7
	mov	r6, r4
	mov	r2, r6
	addi	sp, fp, -24
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
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	2
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r6, r4
	mov	r7, r5
	mov	r2, zero
	sub	r4, r2, r6
	cmpltu	r3, r2, r4
	sub	r5, zero, r7
	sub	r3, r5, r3
	mov	r8, r4
	mov	r2, r8
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__negdi2, .-__negdi2
	.align	2
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	xor	r2, r4, r5
	srli	r3, r2, 16
	xor	r2, r2, r3
	srli	r3, r2, 8
	xor	r2, r2, r3
	srli	r3, r2, 4
	xor	r2, r2, r3
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	srli	r2, r4, 16
	xor	r4, r2, r4
	srli	r2, r4, 8
	xor	r4, r4, r2
	srli	r2, r4, 4
	xor	r4, r4, r2
	andi	r4, r4, 15
	movi	r2, 27030
	sra	r2, r2, r4
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
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r7, r5
	mov	r2, r4
	slli	r6, r5, 31
	srli	r4, r2, 1
	or	r4, r6, r4
	srli	r5, r7, 1
	movhi	r8, 21845
	addi	r8, r8, 21845
	and	r9, r4, r8
	and	r10, r5, r8
	sub	r4, r2, r9
	cmpltu	r6, r2, r4
	sub	r5, r7, r10
	sub	r6, r5, r6
	mov	r2, r4
	mov	r3, r6
	slli	r6, r6, 30
	srli	r4, r2, 2
	or	r4, r6, r4
	srli	r5, r3, 2
	movhi	r10, 13107
	addi	r10, r10, 13107
	and	r11, r4, r10
	and	r12, r5, r10
	and	r8, r2, r10
	and	r9, r3, r10
	add	r4, r11, r8
	cmpltu	r6, r4, r11
	add	r5, r12, r9
	add	r6, r6, r5
	mov	r3, r6
	slli	r6, r6, 28
	srli	r8, r4, 4
	or	r8, r6, r8
	srli	r9, r3, 4
	add	r6, r8, r4
	cmpltu	r4, r6, r8
	add	r7, r9, r3
	add	r4, r4, r7
	mov	r9, r4
	movhi	r4, 3855
	addi	r4, r4, 3855
	and	r2, r6, r4
	and	r3, r9, r4
	add	r4, r3, r2
	srli	r2, r4, 16
	add	r4, r4, r2
	srli	r2, r4, 8
	add	r2, r2, r4
	andi	r2, r2, 127
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__popcountdi2, .-__popcountdi2
	.align	2
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
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
	add	r4, r3, r4
	srli	r2, r4, 4
	add	r4, r2, r4
	movhi	r2, 3855
	addi	r2, r2, 3855
	and	r4, r4, r2
	srli	r2, r4, 16
	add	r4, r4, r2
	srli	r2, r4, 8
	add	r2, r2, r4
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
	stw	r21, 20(sp)
	stw	r20, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 24
	mov	r16, r4
	mov	r17, r5
	mov	r20, r6
	srli	r21, r6, 31
	mov	r18, zero
	movhi	r19, 16368
.L666:
	andi	r2, r20, 1
	beq	r2, zero, .L664
	mov	r6, r16
	mov	r7, r17
	mov	r4, r18
	mov	r5, r19
	call	__muldf3
	mov	r18, r2
	mov	r19, r3
.L664:
	srli	r2, r20, 31
	add	r2, r2, r20
	srai	r20, r2, 1
	beq	r20, zero, .L665
	mov	r6, r16
	mov	r7, r17
	mov	r4, r16
	mov	r5, r17
	call	__muldf3
	mov	r16, r2
	mov	r17, r3
	br	.L666
.L665:
	beq	r21, zero, .L668
	mov	r6, r18
	mov	r7, r19
	mov	r4, zero
	movhi	r5, 16368
	call	__divdf3
	mov	r4, r2
	mov	r5, r3
	br	.L667
.L668:
	mov	r4, r18
	mov	r5, r19
.L667:
	mov	r2, r4
	mov	r3, r5
	addi	sp, fp, -24
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
	.size	__powidf2, .-__powidf2
	.align	2
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	addi	sp, sp, -24
	stw	ra, 20(sp)
	stw	fp, 16(sp)
	stw	r19, 12(sp)
	stw	r18, 8(sp)
	stw	r17, 4(sp)
	stw	r16, 0(sp)
	addi	fp, sp, 16
	mov	r17, r4
	mov	r16, r5
	srli	r19, r5, 31
	movhi	r18, 16256
.L672:
	andi	r2, r16, 1
	beq	r2, zero, .L670
	mov	r5, r17
	mov	r4, r18
	call	__mulsf3
	mov	r18, r2
.L670:
	srli	r3, r16, 31
	add	r3, r3, r16
	srai	r16, r3, 1
	beq	r16, zero, .L671
	mov	r5, r17
	mov	r4, r17
	call	__mulsf3
	mov	r17, r2
	br	.L672
.L671:
	beq	r19, zero, .L674
	mov	r5, r18
	movhi	r4, 16256
	call	__divsf3
	br	.L673
.L674:
	mov	r2, r18
.L673:
	addi	sp, fp, -16
	ldw	ra, 20(sp)
	ldw	fp, 16(sp)
	ldw	r19, 12(sp)
	ldw	r18, 8(sp)
	ldw	r17, 4(sp)
	ldw	r16, 0(sp)
	addi	sp, sp, 24
	ret
	.size	__powisf2, .-__powisf2
	.align	2
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	addi	sp, sp, -4
	stw	fp, 0(sp)
	mov	fp, sp
	mov	r2, r4
	mov	r3, r5
	mov	r4, r6
	mov	r5, r7
	bgtu	r5, r3, .L677
	bltu	r5, r3, .L678
	bgtu	r4, r2, .L679
	bltu	r4, r2, .L680
	movi	r2, 1
	br	.L676
.L677:
	mov	r2, zero
	br	.L676
.L678:
	movi	r2, 2
	br	.L676
.L679:
	mov	r2, zero
	br	.L676
.L680:
	movi	r2, 2
.L676:
	mov	sp, fp
	ldw	fp, 0(sp)
	addi	sp, sp, 4
	ret
	.size	__ucmpdi2, .-__ucmpdi2
	.align	2
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	addi	sp, sp, -8
	stw	ra, 4(sp)
	stw	fp, 0(sp)
	mov	fp, sp
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
