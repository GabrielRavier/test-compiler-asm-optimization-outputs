	.file	"mini-libc.c"
	.text
	.align	4
	.global	memmove
	.type	memmove, @function
memmove:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a9, sp, 20
	l32i	a8, sp, 16
	bgeu	a9, a8, .L2
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a8, a9, a8
	s32i	a8, sp, 8
	l32i	a9, sp, 16
	l32i	a8, sp, 24
	add.n	a8, a9, a8
	s32i	a8, sp, 0
	j	.L3
.L4:
	l32i	a8, sp, 8
	addi.n	a8, a8, -1
	s32i	a8, sp, 8
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
	s32i	a8, sp, 0
	l32i	a8, sp, 8
	l8ui	a9, a8, 0
	l32i	a8, sp, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L3:
	l32i	a8, sp, 24
	bnez.n	a8, .L4
	j	.L5
.L2:
	l32i	a9, sp, 20
	l32i	a8, sp, 16
	beq	a9, a8, .L5
	l32i	a8, sp, 16
	s32i	a8, sp, 4
	j	.L6
.L7:
	l32i	a9, sp, 20
	addi.n	a8, a9, 1
	s32i	a8, sp, 20
	l32i	a8, sp, 4
	addi.n	a10, a8, 1
	s32i	a10, sp, 4
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L6:
	l32i	a8, sp, 24
	bnez.n	a8, .L7
.L5:
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	memmove, .-memmove
	.align	4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	l32i	a8, sp, 24
	extui	a8, a8, 0, 8
	s32i	a8, sp, 0
	j	.L10
.L12:
	l32i	a8, sp, 28
	addi.n	a8, a8, -1
	s32i	a8, sp, 28
	l32i	a8, sp, 20
	addi.n	a8, a8, 1
	s32i	a8, sp, 20
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L10:
	l32i	a8, sp, 28
	beqz.n	a8, .L11
	l32i	a8, sp, 20
	l8ui	a9, a8, 0
	l32i	a8, sp, 16
	s8i	a9, a8, 0
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, sp, 0
	bne	a8, a9, .L12
.L11:
	l32i	a8, sp, 28
	beqz.n	a8, .L13
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	j	.L14
.L13:
	movi.n	a8, 0
.L14:
	mov.n	a2, a8
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 20
	extui	a8, a8, 0, 8
	s32i	a8, sp, 0
	j	.L16
.L18:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L16:
	l32i	a8, sp, 24
	beqz.n	a8, .L17
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, sp, 0
	bne	a8, a9, .L18
.L17:
	l32i	a8, sp, 24
	beqz.n	a8, .L19
	l32i	a8, sp, 16
	j	.L21
.L19:
	movi.n	a8, 0
.L21:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	j	.L23
.L25:
	l32i	a8, sp, 8
	addi.n	a8, a8, -1
	s32i	a8, sp, 8
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
.L23:
	l32i	a8, sp, 8
	beqz.n	a8, .L24
	l32i	a8, sp, 0
	l8ui	a9, a8, 0
	l32i	a8, sp, 4
	l8ui	a8, a8, 0
	beq	a9, a8, .L25
.L24:
	l32i	a8, sp, 8
	beqz.n	a8, .L26
	l32i	a8, sp, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, sp, 4
	l8ui	a8, a8, 0
	sub	a8, a9, a8
	j	.L28
.L26:
	movi.n	a8, 0
.L28:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	memcmp, .-memcmp
	.align	4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L30
.L31:
	l32i	a9, sp, 20
	addi.n	a8, a9, 1
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	addi.n	a10, a8, 1
	s32i	a10, sp, 0
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L30:
	l32i	a8, sp, 24
	bnez.n	a8, .L31
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	memcpy, .-memcpy
	.align	4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 20
	extui	a8, a8, 0, 8
	s32i	a8, sp, 0
	j	.L34
.L36:
	l32i	a9, sp, 16
	l32i	a8, sp, 24
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, sp, 0
	bne	a8, a9, .L34
	l32i	a9, sp, 16
	l32i	a8, sp, 24
	add.n	a8, a9, a8
	j	.L35
.L34:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L36
	movi.n	a8, 0
.L35:
	mov.n	a2, a8
	retw.n
	.size	memrchr, .-memrchr
	.align	4
	.global	memset
	.type	memset, @function
memset:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L38
.L39:
	l32i	a8, sp, 20
	extui	a9, a8, 0, 8
	l32i	a8, sp, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L38:
	l32i	a8, sp, 24
	bnez.n	a8, .L39
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	j	.L42
.L43:
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L42:
	l32i	a8, sp, 4
	l8ui	a9, a8, 0
	l32i	a8, sp, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L43
	l32i	a8, sp, 0
	mov.n	a2, a8
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	l32i	a8, sp, 20
	extui	a8, a8, 0, 8
	s32i	a8, sp, 0
	j	.L46
.L48:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L46:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	beqz.n	a8, .L47
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, sp, 0
	bne	a8, a9, .L48
.L47:
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 48
	mov.n	a8, a2
	s32i	a3, sp, 0
.L53:
	l8ui	a9, a8, 0
	mov.n	a10, a9
	l32i	a9, sp, 0
	beq	a9, a10, .L54
	mov.n	a9, a8
	addi.n	a8, a9, 1
	l8ui	a9, a9, 0
	bnez.n	a9, .L53
	movi.n	a8, 0
	j	.L52
.L54:
	nop.n
.L52:
	mov.n	a2, a8
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	j	.L56
.L58:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
.L56:
	l32i	a8, sp, 0
	l8ui	a9, a8, 0
	l32i	a8, sp, 4
	l8ui	a8, a8, 0
	bne	a9, a8, .L57
	l32i	a8, sp, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L58
.L57:
	l32i	a8, sp, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, sp, 4
	l8ui	a8, a8, 0
	sub	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 64
	s32i	a2, sp, 16
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L61
.L62:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L61:
	l32i	a8, sp, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L62
	l32i	a9, sp, 0
	l32i	a8, sp, 16
	sub	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 0
	bnez.n	a8, .L67
	movi.n	a8, 0
	j	.L66
.L69:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
	l32i	a8, sp, 20
	addi.n	a8, a8, 1
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
	s32i	a8, sp, 0
.L67:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	beqz.n	a8, .L68
	l32i	a8, sp, 20
	l8ui	a8, a8, 0
	beqz.n	a8, .L68
	l32i	a8, sp, 0
	beqz.n	a8, .L68
	l32i	a8, sp, 16
	l8ui	a9, a8, 0
	l32i	a8, sp, 20
	l8ui	a8, a8, 0
	beq	a9, a8, .L69
.L68:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, sp, 20
	l8ui	a8, a8, 0
	sub	a8, a9, a8
.L66:
	mov.n	a2, a8
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	j	.L71
.L72:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	l32i	a8, sp, 4
	s8i	a9, a8, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	l32i	a9, sp, 0
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 2
	s32i	a8, sp, 4
	l32i	a8, sp, 0
	addi.n	a8, a8, 2
	s32i	a8, sp, 0
	l32i	a8, sp, 8
	addi	a8, a8, -2
	s32i	a8, sp, 8
.L71:
	l32i	a8, sp, 8
	bgei	a8, 2, .L72
	nop.n
	nop.n
	retw.n
	.size	swab, .-swab
	.align	4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a9, sp, 0
	movi.n	a8, 0x20
	or	a8, a9, a8
	addi	a9, a8, -97
	movi.n	a8, 1
	movi.n	a10, 0x19
	bgeu	a10, a9, .L74
	movi.n	a8, 0
.L74:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a9, sp, 0
	movi.n	a8, 1
	bltui	a9, 128, .L77
	movi.n	a8, 0
.L77:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	beqi	a8, 32, .L80
	l32i	a9, sp, 0
	movi.n	a8, 9
	bne	a9, a8, .L81
.L80:
	movi.n	a8, 1
	j	.L83
.L81:
	movi.n	a8, 0
.L83:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	isblank, .-isblank
	.align	4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	bltui	a8, 32, .L85
	l32i	a9, sp, 0
	movi	a8, 0x7f
	bne	a9, a8, .L86
.L85:
	movi.n	a8, 1
	j	.L88
.L86:
	movi.n	a8, 0
.L88:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	iscntrl, .-iscntrl
	.align	4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi	a9, a8, -48
	movi.n	a8, 1
	bltui	a9, 10, .L90
	movi.n	a8, 0
.L90:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isdigit, .-isdigit
	.align	4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi	a9, a8, -33
	movi.n	a8, 1
	movi.n	a10, 0x5d
	bgeu	a10, a9, .L93
	movi.n	a8, 0
.L93:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isgraph, .-isgraph
	.align	4
	.global	islower
	.type	islower, @function
islower:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi	a9, a8, -97
	movi.n	a8, 1
	movi.n	a10, 0x19
	bgeu	a10, a9, .L96
	movi.n	a8, 0
.L96:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	islower, .-islower
	.align	4
	.global	isprint
	.type	isprint, @function
isprint:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi	a9, a8, -32
	movi.n	a8, 1
	movi.n	a10, 0x5e
	bgeu	a10, a9, .L99
	movi.n	a8, 0
.L99:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	beqi	a8, 32, .L102
	l32i	a8, sp, 0
	addi	a8, a8, -9
	bgeui	a8, 5, .L103
.L102:
	movi.n	a8, 1
	j	.L105
.L103:
	movi.n	a8, 0
.L105:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	isspace, .-isspace
	.align	4
	.global	isupper
	.type	isupper, @function
isupper:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi	a9, a8, -65
	movi.n	a8, 1
	movi.n	a10, 0x19
	bgeu	a10, a9, .L107
	movi.n	a8, 0
.L107:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isupper, .-isupper
	.literal_position
	.literal .LC0, -8232
	.literal .LC1, -65529
	.align	4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	bltui	a8, 32, .L110
	l32i	a8, sp, 0
	addi	a8, a8, -127
	movi.n	a9, 0x20
	bgeu	a9, a8, .L110
	l32i	a9, sp, 0
	l32r	a8, .LC0
	add.n	a8, a9, a8
	bltui	a8, 2, .L110
	l32i	a9, sp, 0
	l32r	a8, .LC1
	add.n	a8, a9, a8
	bgeui	a8, 3, .L111
.L110:
	movi.n	a8, 1
	j	.L113
.L111:
	movi.n	a8, 0
.L113:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	iswcntrl, .-iswcntrl
	.align	4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi	a9, a8, -48
	movi.n	a8, 1
	bltui	a9, 10, .L115
	movi.n	a8, 0
.L115:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	iswdigit, .-iswdigit
	.literal_position
	.literal .LC2, 8231
	.literal .LC3, -8234
	.literal .LC4, 47061
	.literal .LC5, -57344
	.literal .LC6, 8184
	.literal .LC7, -65532
	.literal .LC8, 1048579
	.literal .LC9, 65534
	.align	4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	movi	a9, 0xfe
	bltu	a9, a8, .L118
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	extui	a9, a8, 0, 7
	movi.n	a8, 1
	movi.n	a10, 0x20
	bltu	a10, a9, .L119
	movi.n	a8, 0
.L119:
	extui	a8, a8, 0, 8
	j	.L120
.L118:
	l32i	a8, sp, 0
	l32r	a9, .LC2
	bgeu	a9, a8, .L121
	l32i	a9, sp, 0
	l32r	a8, .LC3
	add.n	a8, a9, a8
	l32r	a9, .LC4
	bgeu	a9, a8, .L121
	l32i	a9, sp, 0
	l32r	a8, .LC5
	add.n	a8, a9, a8
	l32r	a9, .LC6
	bltu	a9, a8, .L122
.L121:
	movi.n	a8, 1
	j	.L120
.L122:
	l32i	a9, sp, 0
	l32r	a8, .LC7
	add.n	a8, a9, a8
	l32r	a9, .LC8
	bltu	a9, a8, .L123
	l32i	a9, sp, 0
	l32r	a8, .LC9
	and	a9, a9, a8
	l32r	a8, .LC9
	bne	a9, a8, .L124
.L123:
	movi.n	a8, 0
	j	.L120
.L124:
	movi.n	a8, 1
.L120:
	mov.n	a2, a8
	retw.n
	.size	iswprint, .-iswprint
	.align	4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L126
	l32i	a9, sp, 0
	movi.n	a8, 0x20
	or	a8, a9, a8
	addi	a8, a8, -97
	bgeui	a8, 6, .L127
.L126:
	movi.n	a8, 1
	j	.L129
.L127:
	movi.n	a8, 0
.L129:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	iswxdigit, .-iswxdigit
	.align	4
	.global	toascii
	.type	toascii, @function
toascii:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	extui	a8, a8, 0, 7
	mov.n	a2, a8
	retw.n
	.size	toascii, .-toascii
	.literal_position
	.literal .LC10, __unorddf2@PLT
	.literal .LC11, __gtdf2@PLT
	.literal .LC12, __subdf3@PLT
	.align	4
	.global	fdim
	.type	fdim, @function
fdim:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a5, sp, 12
	l32r	a8, .LC10
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L144
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L135
.L144:
	l32r	a8, .LC10
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 8
	l32i.n	a11, sp, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L145
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L135
.L145:
	l32r	a8, .LC11
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L146
	l32r	a8, .LC12
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	j	.L135
.L146:
	movi.n	a8, 0
	movi.n	a9, 0
.L135:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	fdim, .-fdim
	.literal_position
	.literal .LC14, __unordsf2@PLT
	.literal .LC15, __gtsf2@PLT
	.literal .LC16, __subsf3@PLT
	.align	4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	l32r	a8, .LC14
	l32i.n	a11, sp, 0
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L159
	l32i.n	a8, sp, 0
	j	.L150
.L159:
	l32r	a8, .LC14
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L160
	l32i.n	a8, sp, 4
	j	.L150
.L160:
	l32r	a8, .LC15
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L161
	l32r	a8, .LC16
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	j	.L150
.L161:
	movi.n	a8, 0
.L150:
	mov.n	a2, a8
	retw.n
	.size	fdimf, .-fdimf
	.literal_position
	.literal .LC18, __unorddf2@PLT
	.literal .LC19, -2147483648
	.literal .LC20, __ltdf2@PLT
	.align	4
	.global	fmax
	.type	fmax, @function
fmax:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a5, sp, 12
	l32r	a8, .LC18
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L177
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L165
.L177:
	l32r	a8, .LC18
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 8
	l32i.n	a11, sp, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L178
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L165
.L178:
	l32i	a9, sp, 0
	l32r	a8, .LC19
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, sp, 8
	l32r	a8, .LC19
	and	a8, a9, a8
	beq	a10, a8, .L168
	l32i	a9, sp, 0
	l32r	a8, .LC19
	and	a8, a9, a8
	beqz.n	a8, .L169
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L165
.L169:
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L165
.L168:
	l32r	a8, .LC20
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L179
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L165
.L179:
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
.L165:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	fmax, .-fmax
	.literal_position
	.literal .LC21, __unordsf2@PLT
	.literal .LC22, -2147483648
	.literal .LC23, __ltsf2@PLT
	.align	4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	l32r	a8, .LC21
	l32i.n	a11, sp, 0
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L195
	l32i.n	a8, sp, 4
	j	.L183
.L195:
	l32r	a8, .LC21
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L196
	l32i.n	a8, sp, 0
	j	.L183
.L196:
	l32i	a9, sp, 0
	l32r	a8, .LC22
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, sp, 4
	l32r	a8, .LC22
	and	a8, a9, a8
	beq	a10, a8, .L186
	l32i	a9, sp, 0
	l32r	a8, .LC22
	and	a8, a9, a8
	beqz.n	a8, .L187
	l32i.n	a8, sp, 4
	j	.L183
.L187:
	l32i.n	a8, sp, 0
	j	.L183
.L186:
	l32r	a8, .LC23
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L197
	l32i.n	a8, sp, 4
	j	.L183
.L197:
	l32i.n	a8, sp, 0
.L183:
	mov.n	a2, a8
	retw.n
	.size	fmaxf, .-fmaxf
	.literal_position
	.literal .LC24, __unorddf2@PLT
	.literal .LC25, -2147483648
	.literal .LC26, __ltdf2@PLT
	.align	4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a5, sp, 12
	l32r	a8, .LC24
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L213
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L201
.L213:
	l32r	a8, .LC24
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 8
	l32i.n	a11, sp, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L214
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L201
.L214:
	l32i	a9, sp, 0
	l32r	a8, .LC25
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, sp, 8
	l32r	a8, .LC25
	and	a8, a9, a8
	beq	a10, a8, .L204
	l32i	a9, sp, 0
	l32r	a8, .LC25
	and	a8, a9, a8
	beqz.n	a8, .L205
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L201
.L205:
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L201
.L204:
	l32r	a8, .LC26
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L215
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L201
.L215:
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
.L201:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	fmaxl, .-fmaxl
	.literal_position
	.literal .LC27, __unorddf2@PLT
	.literal .LC28, -2147483648
	.literal .LC29, __ltdf2@PLT
	.align	4
	.global	fmin
	.type	fmin, @function
fmin:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a5, sp, 12
	l32r	a8, .LC27
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L231
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L219
.L231:
	l32r	a8, .LC27
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 8
	l32i.n	a11, sp, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L232
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L219
.L232:
	l32i	a9, sp, 0
	l32r	a8, .LC28
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, sp, 8
	l32r	a8, .LC28
	and	a8, a9, a8
	beq	a10, a8, .L222
	l32i	a9, sp, 0
	l32r	a8, .LC28
	and	a8, a9, a8
	beqz.n	a8, .L223
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L219
.L223:
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L219
.L222:
	l32r	a8, .LC29
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L233
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L219
.L233:
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
.L219:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	fmin, .-fmin
	.literal_position
	.literal .LC30, __unordsf2@PLT
	.literal .LC31, -2147483648
	.literal .LC32, __ltsf2@PLT
	.align	4
	.global	fminf
	.type	fminf, @function
fminf:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	l32r	a8, .LC30
	l32i.n	a11, sp, 0
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L249
	l32i.n	a8, sp, 4
	j	.L237
.L249:
	l32r	a8, .LC30
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L250
	l32i.n	a8, sp, 0
	j	.L237
.L250:
	l32i	a9, sp, 0
	l32r	a8, .LC31
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, sp, 4
	l32r	a8, .LC31
	and	a8, a9, a8
	beq	a10, a8, .L240
	l32i	a9, sp, 0
	l32r	a8, .LC31
	and	a8, a9, a8
	beqz.n	a8, .L241
	l32i.n	a8, sp, 0
	j	.L237
.L241:
	l32i.n	a8, sp, 4
	j	.L237
.L240:
	l32r	a8, .LC32
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L251
	l32i.n	a8, sp, 0
	j	.L237
.L251:
	l32i.n	a8, sp, 4
.L237:
	mov.n	a2, a8
	retw.n
	.size	fminf, .-fminf
	.literal_position
	.literal .LC33, __unorddf2@PLT
	.literal .LC34, -2147483648
	.literal .LC35, __ltdf2@PLT
	.align	4
	.global	fminl
	.type	fminl, @function
fminl:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a5, sp, 12
	l32r	a8, .LC33
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L267
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L255
.L267:
	l32r	a8, .LC33
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 8
	l32i.n	a11, sp, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L268
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L255
.L268:
	l32i	a9, sp, 0
	l32r	a8, .LC34
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, sp, 8
	l32r	a8, .LC34
	and	a8, a9, a8
	beq	a10, a8, .L258
	l32i	a9, sp, 0
	l32r	a8, .LC34
	and	a8, a9, a8
	beqz.n	a8, .L259
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L255
.L259:
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
	j	.L255
.L258:
	l32r	a8, .LC35
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L269
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
	j	.L255
.L269:
	l32i.n	a8, sp, 8
	l32i.n	a9, sp, 12
.L255:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	fminl, .-fminl
	.section	.rodata
	.align	4
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.text
	.literal_position
	.literal .LC36, s.0
	.literal .LC37, digits
	.align	4
	.global	l64a
	.type	l64a, @function
l64a:
	entry	sp, 64
	s32i	a2, sp, 16
	l32i	a8, sp, 16
	s32i	a8, sp, 4
	l32r	a8, .LC36
	s32i	a8, sp, 0
	j	.L271
.L272:
	l32i	a8, sp, 4
	extui	a8, a8, 0, 6
	l32r	a9, .LC37
	add.n	a8, a9, a8
	l8ui	a9, a8, 0
	l32i	a8, sp, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	srli	a8, a8, 6
	s32i	a8, sp, 4
.L271:
	l32i	a8, sp, 4
	bnez.n	a8, .L272
	l32i	a8, sp, 0
	movi.n	a9, 0
	s8i	a9, a8, 0
	l32r	a8, .LC36
	mov.n	a2, a8
	retw.n
	.size	l64a, .-l64a
	.local	seed
	.comm	seed,8,8
	.literal_position
	.literal .LC38, seed
	.align	4
	.global	srand
	.type	srand, @function
srand:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
	mov.n	a10, a8
	movi.n	a9, 0
	l32r	a8, .LC38
	s32i	a9, a8, 0
	s32i	a10, a8, 4
	nop.n
	retw.n
	.size	srand, .-srand
	.literal_position
	.literal .LC39, seed
	.literal .LC40, 1284865837
	.literal .LC41, 1481765933
	.literal .LC42, __umulsidi3@PLT
	.align	4
	.global	rand
	.type	rand, @function
rand:
	entry	sp, 32
	l32r	a8, .LC39
	l32i	a10, a8, 0
	l32i	a8, a8, 4
	l32r	a9, .LC40
	mull	a10, a10, a9
	l32r	a9, .LC41
	mull	a9, a8, a9
	add.n	a7, a10, a9
	l32r	a9, .LC40
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC42
	callx8	a8
	mov.n	a8, a10
	add.n	a8, a7, a8
	movi.n	a9, 1
	movi.n	a10, 0
	add.n	a8, a8, a10
	add.n	a10, a11, a9
	bgeu	a10, a9, .L276
	addi.n	a8, a8, 1
.L276:
	l32r	a9, .LC39
	s32i	a8, a9, 0
	s32i	a10, a9, 4
	l32r	a8, .LC39
	l32i	a8, a8, 0
	srli	a8, a8, 1
	mov.n	a2, a8
	retw.n
	.size	rand, .-rand
	.align	4
	.global	insque
	.type	insque, @function
insque:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a8, sp, 4
	bnez.n	a8, .L279
	l32i	a8, sp, 0
	movi.n	a9, 0
	s32i	a9, a8, 4
	l32i	a8, sp, 0
	l32i	a9, a8, 4
	l32i	a8, sp, 0
	s32i	a9, a8, 0
	j	.L278
.L279:
	l32i	a8, sp, 4
	l32i	a9, a8, 0
	l32i	a8, sp, 0
	s32i	a9, a8, 0
	l32i	a8, sp, 0
	l32i	a9, sp, 4
	s32i	a9, a8, 4
	l32i	a8, sp, 4
	l32i	a9, sp, 0
	s32i	a9, a8, 0
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L278
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	l32i	a9, sp, 0
	s32i	a9, a8, 4
.L278:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L282
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	l32i	a9, sp, 0
	l32i	a9, a9, 4
	s32i	a9, a8, 4
.L282:
	l32i	a8, sp, 0
	l32i	a8, a8, 4
	beqz.n	a8, .L284
	l32i	a8, sp, 0
	l32i	a8, a8, 4
	l32i	a9, sp, 0
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L284:
	nop.n
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC43, memcpy@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 80
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	s32i	a6, sp, 32
	l32i	a7, sp, 28
	mov.n	a8, a7
	addi.n	a8, a8, -1
	s32i	a8, sp, 4
	l32i	a8, sp, 24
	l32i	a8, a8, 0
	s32i	a8, sp, 8
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L286
.L289:
	l32i	a8, sp, 0
	mull	a8, a7, a8
	l32i	a9, sp, 20
	add.n	a9, a9, a8
	l32i	a8, sp, 32
	mov.n	a11, a9
	l32i	a10, sp, 16
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L287
	l32i	a8, sp, 0
	mull	a8, a7, a8
	l32i	a9, sp, 20
	add.n	a8, a9, a8
	j	.L288
.L287:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L286:
	l32i	a9, sp, 0
	l32i	a8, sp, 8
	bltu	a9, a8, .L289
	l32i	a8, sp, 8
	addi.n	a9, a8, 1
	l32i	a8, sp, 24
	s32i	a9, a8, 0
	l32i	a8, sp, 8
	mull	a8, a7, a8
	l32i	a9, sp, 20
	add.n	a8, a9, a8
	l32i	a12, sp, 28
	l32i	a11, sp, 16
	mov.n	a10, a8
	l32r	a8, .LC43
	callx8	a8
	mov.n	a8, a10
.L288:
	mov.n	a2, a8
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 80
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	s32i	a6, sp, 32
	l32i	a7, sp, 28
	mov.n	a8, a7
	addi.n	a8, a8, -1
	s32i	a8, sp, 4
	l32i	a8, sp, 24
	l32i	a8, a8, 0
	s32i	a8, sp, 8
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L291
.L294:
	l32i	a8, sp, 0
	mull	a8, a7, a8
	l32i	a9, sp, 20
	add.n	a9, a9, a8
	l32i	a8, sp, 32
	mov.n	a11, a9
	l32i	a10, sp, 16
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L292
	l32i	a8, sp, 0
	mull	a8, a7, a8
	l32i	a9, sp, 20
	add.n	a8, a9, a8
	j	.L293
.L292:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L291:
	l32i	a9, sp, 0
	l32i	a8, sp, 8
	bltu	a9, a8, .L294
	movi.n	a8, 0
.L293:
	mov.n	a2, a8
	retw.n
	.size	lfind, .-lfind
	.align	4
	.global	abs
	.type	abs, @function
abs:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	abs	a8, a8
	mov.n	a2, a8
	retw.n
	.size	abs, .-abs
	.literal_position
	.literal .LC44, isspace@PLT
	.align	4
	.global	atoi
	.type	atoi, @function
atoi:
	entry	sp, 64
	s32i	a2, sp, 16
	movi.n	a8, 0
	s32i	a8, sp, 0
	movi.n	a8, 0
	s32i	a8, sp, 4
	j	.L298
.L299:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L298:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	mov.n	a10, a8
	l32r	a8, .LC44
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L299
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L300
	movi.n	a9, 0x2d
	bne	a8, a9, .L302
	movi.n	a8, 1
	s32i	a8, sp, 4
.L300:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
	j	.L302
.L303:
	l32i	a9, sp, 0
	mov.n	a8, a9
	slli	a8, a8, 2
	add.n	a8, a8, a9
	add.n	a8, a8, a8
	mov.n	a10, a8
	l32i	a8, sp, 16
	addi.n	a9, a8, 1
	s32i	a9, sp, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	sub	a8, a10, a8
	s32i	a8, sp, 0
.L302:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L303
	l32i	a8, sp, 4
	bnez.n	a8, .L304
	l32i	a8, sp, 0
	neg	a8, a8
	j	.L306
.L304:
	l32i	a8, sp, 0
.L306:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	atoi, .-atoi
	.literal_position
	.literal .LC45, isspace@PLT
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 64
	s32i	a2, sp, 16
	movi.n	a8, 0
	s32i	a8, sp, 0
	movi.n	a8, 0
	s32i	a8, sp, 4
	j	.L308
.L309:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L308:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	mov.n	a10, a8
	l32r	a8, .LC45
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L309
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L310
	movi.n	a9, 0x2d
	bne	a8, a9, .L312
	movi.n	a8, 1
	s32i	a8, sp, 4
.L310:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
	j	.L312
.L313:
	l32i	a9, sp, 0
	mov.n	a8, a9
	slli	a8, a8, 2
	add.n	a8, a8, a9
	add.n	a8, a8, a8
	mov.n	a10, a8
	l32i	a8, sp, 16
	addi.n	a9, a8, 1
	s32i	a9, sp, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	sub	a8, a10, a8
	s32i	a8, sp, 0
.L312:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L313
	l32i	a8, sp, 4
	bnez.n	a8, .L314
	l32i	a8, sp, 0
	neg	a8, a8
	j	.L316
.L314:
	l32i	a8, sp, 0
.L316:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC47, isspace@PLT
	.literal .LC48, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 64
	s32i	a2, sp, 16
	movi.n	a8, 0
	movi.n	a9, 0
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	movi.n	a8, 0
	s32i	a8, sp, 8
	j	.L318
.L319:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L318:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	mov.n	a10, a8
	l32r	a8, .LC47
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L319
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L320
	movi.n	a9, 0x2d
	bne	a8, a9, .L322
	movi.n	a8, 1
	s32i	a8, sp, 8
.L320:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
	j	.L322
.L324:
	l32i	a9, sp, 0
	movi.n	a8, 0xa
	mull	a9, a9, a8
	l32i	a10, sp, 4
	movi.n	a8, 0
	mull	a8, a10, a8
	add.n	a7, a9, a8
	l32i	a8, sp, 4
	movi.n	a9, 0xa
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC48
	callx8	a8
	mov.n	a8, a10
	mov.n	a10, a11
	add.n	a8, a7, a8
	l32i	a9, sp, 16
	addi.n	a11, a9, 1
	s32i	a11, sp, 16
	l8ui	a9, a9, 0
	addi	a11, a9, -48
	mov.n	a9, a11
	srai	a11, a11, 31
	sub	a8, a8, a11
	bgeu	a10, a9, .L323
	addi.n	a8, a8, -1
.L323:
	sub	a9, a10, a9
	s32i	a8, sp, 0
	s32i	a9, sp, 4
.L322:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L324
	l32i	a8, sp, 8
	bnez.n	a8, .L325
	movi.n	a10, 0
	movi.n	a11, 0
	l32i	a8, sp, 0
	l32i	a9, sp, 4
	sub	a8, a11, a8
	bgeu	a10, a9, .L326
	addi.n	a8, a8, -1
.L326:
	sub	a9, a10, a9
	j	.L328
.L325:
	l32i	a8, sp, 0
	l32i	a9, sp, 4
.L328:
	nop.n
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 80
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	s32i	a6, sp, 32
	j	.L330
.L335:
	l32i	a8, sp, 24
	srli	a9, a8, 1
	l32i	a8, sp, 28
	mull	a8, a9, a8
	l32i	a9, sp, 20
	add.n	a8, a9, a8
	s32i	a8, sp, 0
	l32i	a8, sp, 32
	l32i	a11, sp, 0
	l32i	a10, sp, 16
	callx8	a8
	s32i	a10, sp, 4
	l32i	a8, sp, 4
	bgez	a8, .L331
	l32i	a8, sp, 24
	srli	a8, a8, 1
	s32i	a8, sp, 24
	j	.L330
.L331:
	l32i	a8, sp, 4
	blti	a8, 1, .L333
	l32i	a9, sp, 0
	l32i	a8, sp, 28
	add.n	a8, a9, a8
	s32i	a8, sp, 20
	l32i	a8, sp, 24
	srli	a8, a8, 1
	l32i	a9, sp, 24
	sub	a8, a9, a8
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
	j	.L330
.L333:
	l32i	a8, sp, 0
	j	.L334
.L330:
	l32i	a8, sp, 24
	bnez.n	a8, .L335
	movi.n	a8, 0
.L334:
	mov.n	a2, a8
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 80
	mov.n	a8, a7
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	s32i	a6, sp, 32
	s32i	a8, sp, 36
	l32i	a8, sp, 24
	s32i	a8, sp, 0
	j	.L337
.L341:
	l32i	a8, sp, 0
	srai	a8, a8, 1
	mov.n	a9, a8
	l32i	a8, sp, 28
	mull	a8, a9, a8
	l32i	a9, sp, 20
	add.n	a8, a9, a8
	s32i	a8, sp, 4
	l32i	a8, sp, 32
	l32i	a12, sp, 36
	l32i	a11, sp, 4
	l32i	a10, sp, 16
	callx8	a8
	s32i	a10, sp, 8
	l32i	a8, sp, 8
	bnez.n	a8, .L338
	l32i	a8, sp, 4
	j	.L339
.L338:
	l32i	a8, sp, 8
	blti	a8, 1, .L340
	l32i	a9, sp, 4
	l32i	a8, sp, 28
	add.n	a8, a9, a8
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
	s32i	a8, sp, 0
.L340:
	l32i	a8, sp, 0
	srai	a8, a8, 1
	s32i	a8, sp, 0
.L337:
	l32i	a8, sp, 0
	bnez.n	a8, .L341
	movi.n	a8, 0
.L339:
	mov.n	a2, a8
	retw.n
	.size	bsearch_r, .-bsearch_r
	.align	4
	.global	div
	.type	div, @function
div:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	quos	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 20
	rems	a8, a10, a8
	s32i	a9, sp, 0
	s32i	a8, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	mov.n	a2, a9
	mov.n	a3, a8
	retw.n
	.size	div, .-div
	.align	4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a8, sp, 0
	srai	a8, a8, 31
	l32i	a9, sp, 0
	srai	a11, a9, 31
	l32i	a9, sp, 0
	xor	a10, a9, a11
	l32i	a9, sp, 4
	xor	a9, a9, a8
	sub	a10, a10, a11
	bgeu	a9, a8, .L346
	addi.n	a10, a10, -1
.L346:
	sub	a8, a9, a8
	mov.n	a9, a8
	mov.n	a2, a10
	mov.n	a3, a9
	retw.n
	.size	imaxabs, .-imaxabs
	.literal_position
	.literal .LC49, __divdi3@PLT
	.literal .LC50, __moddi3@PLT
	.align	4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	s32i	a4, sp, 40
	s32i	a5, sp, 44
	l32r	a8, .LC49
	l32i	a12, sp, 40
	l32i	a13, sp, 44
	l32i	a10, sp, 32
	l32i	a11, sp, 36
	callx8	a8
	mov.n	a9, a10
	mov.n	a8, a11
	mov.n	a6, a9
	mov.n	a7, a8
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	l32r	a14, .LC50
	l32i	a12, sp, 40
	l32i	a13, sp, 44
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a9, a10
	mov.n	a8, a11
	s32i	a6, sp, 0
	s32i	a7, sp, 4
	s32i	a9, sp, 8
	s32i	a8, sp, 12
	l32i	a11, sp, 0
	l32i	a10, sp, 4
	l32i	a9, sp, 8
	l32i	a8, sp, 12
	mov.n	a15, a11
	mov.n	a14, a10
	mov.n	a13, a9
	mov.n	a12, a8
	mov.n	a11, a15
	mov.n	a10, a14
	mov.n	a9, a13
	mov.n	a8, a12
	mov.n	a2, a11
	mov.n	a3, a10
	mov.n	a4, a9
	mov.n	a5, a8
	retw.n
	.size	imaxdiv, .-imaxdiv
	.align	4
	.global	labs
	.type	labs, @function
labs:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	abs	a8, a8
	mov.n	a2, a8
	retw.n
	.size	labs, .-labs
	.align	4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	quos	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 20
	rems	a8, a10, a8
	s32i	a9, sp, 0
	s32i	a8, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	mov.n	a2, a9
	mov.n	a3, a8
	retw.n
	.size	ldiv, .-ldiv
	.align	4
	.global	llabs
	.type	llabs, @function
llabs:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a8, sp, 0
	srai	a8, a8, 31
	l32i	a9, sp, 0
	srai	a11, a9, 31
	l32i	a9, sp, 0
	xor	a10, a9, a11
	l32i	a9, sp, 4
	xor	a9, a9, a8
	sub	a10, a10, a11
	bgeu	a9, a8, .L356
	addi.n	a10, a10, -1
.L356:
	sub	a8, a9, a8
	mov.n	a9, a8
	mov.n	a2, a10
	mov.n	a3, a9
	retw.n
	.size	llabs, .-llabs
	.literal_position
	.literal .LC51, __divdi3@PLT
	.literal .LC52, __moddi3@PLT
	.align	4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	s32i	a4, sp, 40
	s32i	a5, sp, 44
	l32r	a8, .LC51
	l32i	a12, sp, 40
	l32i	a13, sp, 44
	l32i	a10, sp, 32
	l32i	a11, sp, 36
	callx8	a8
	mov.n	a9, a10
	mov.n	a8, a11
	mov.n	a6, a9
	mov.n	a7, a8
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	l32r	a14, .LC52
	l32i	a12, sp, 40
	l32i	a13, sp, 44
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a9, a10
	mov.n	a8, a11
	s32i	a6, sp, 0
	s32i	a7, sp, 4
	s32i	a9, sp, 8
	s32i	a8, sp, 12
	l32i	a11, sp, 0
	l32i	a10, sp, 4
	l32i	a9, sp, 8
	l32i	a8, sp, 12
	mov.n	a15, a11
	mov.n	a14, a10
	mov.n	a13, a9
	mov.n	a12, a8
	mov.n	a11, a15
	mov.n	a10, a14
	mov.n	a9, a13
	mov.n	a8, a12
	mov.n	a2, a11
	mov.n	a3, a10
	mov.n	a4, a9
	mov.n	a5, a8
	retw.n
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	j	.L361
.L363:
	l32i	a8, sp, 0
	addi.n	a8, a8, 4
	s32i	a8, sp, 0
.L361:
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L362
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	l32i	a9, sp, 4
	bne	a9, a8, .L363
.L362:
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L364
	l32i	a8, sp, 0
	j	.L366
.L364:
	movi.n	a8, 0
.L366:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	j	.L368
.L370:
	l32i	a8, sp, 0
	addi.n	a8, a8, 4
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 4
	s32i	a8, sp, 4
.L368:
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	bne	a9, a8, .L369
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L369
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	bnez.n	a8, .L370
.L369:
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	blt	a9, a8, .L371
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a10, a8, 0
	movi.n	a8, 1
	blt	a10, a9, .L372
	movi.n	a8, 0
.L372:
	extui	a8, a8, 0, 8
	j	.L374
.L371:
	movi.n	a8, -1
.L374:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	l32i	a8, sp, 16
	s32i	a8, sp, 0
.L376:
	l32i	a9, sp, 20
	addi.n	a8, a9, 4
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	addi.n	a10, a8, 4
	s32i	a10, sp, 0
	l32i	a9, a9, 0
	s32i	a9, a8, 0
	l32i	a8, a8, 0
	bnez.n	a8, .L376
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 64
	s32i	a2, sp, 16
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L379
.L380:
	l32i	a8, sp, 0
	addi.n	a8, a8, 4
	s32i	a8, sp, 0
.L379:
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	bnez.n	a8, .L380
	l32i	a9, sp, 0
	l32i	a8, sp, 16
	sub	a8, a9, a8
	srai	a8, a8, 2
	mov.n	a2, a8
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	j	.L383
.L385:
	l32i	a8, sp, 8
	addi.n	a8, a8, -1
	s32i	a8, sp, 8
	l32i	a8, sp, 0
	addi.n	a8, a8, 4
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 4
	s32i	a8, sp, 4
.L383:
	l32i	a8, sp, 8
	beqz.n	a8, .L384
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	bne	a9, a8, .L384
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L384
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	bnez.n	a8, .L385
.L384:
	l32i	a8, sp, 8
	beqz.n	a8, .L386
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	blt	a9, a8, .L387
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a10, a8, 0
	movi.n	a8, 1
	blt	a10, a9, .L388
	movi.n	a8, 0
.L388:
	extui	a8, a8, 0, 8
	j	.L391
.L387:
	movi.n	a8, -1
	j	.L391
.L386:
	movi.n	a8, 0
.L391:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	j	.L393
.L395:
	l32i	a8, sp, 8
	addi.n	a8, a8, -1
	s32i	a8, sp, 8
	l32i	a8, sp, 0
	addi.n	a8, a8, 4
	s32i	a8, sp, 0
.L393:
	l32i	a8, sp, 8
	beqz.n	a8, .L394
	l32i	a8, sp, 0
	l32i	a8, a8, 0
	l32i	a9, sp, 4
	bne	a9, a8, .L395
.L394:
	l32i	a8, sp, 8
	beqz.n	a8, .L396
	l32i	a8, sp, 0
	j	.L398
.L396:
	movi.n	a8, 0
.L398:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	j	.L400
.L402:
	l32i	a8, sp, 8
	addi.n	a8, a8, -1
	s32i	a8, sp, 8
	l32i	a8, sp, 0
	addi.n	a8, a8, 4
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 4
	s32i	a8, sp, 4
.L400:
	l32i	a8, sp, 8
	beqz.n	a8, .L401
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	beq	a9, a8, .L402
.L401:
	l32i	a8, sp, 8
	beqz.n	a8, .L403
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a8, a8, 0
	blt	a9, a8, .L404
	l32i	a8, sp, 0
	l32i	a9, a8, 0
	l32i	a8, sp, 4
	l32i	a10, a8, 0
	movi.n	a8, 1
	blt	a10, a9, .L405
	movi.n	a8, 0
.L405:
	extui	a8, a8, 0, 8
	j	.L408
.L404:
	movi.n	a8, -1
	j	.L408
.L403:
	movi.n	a8, 0
.L408:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	wmemcmp, .-wmemcmp
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L410
.L411:
	l32i	a9, sp, 20
	addi.n	a8, a9, 4
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	addi.n	a10, a8, 4
	s32i	a10, sp, 0
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L410:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L411
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bne	a9, a8, .L414
	l32i	a8, sp, 16
	j	.L415
.L414:
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	sub	a9, a9, a8
	l32i	a8, sp, 24
	slli	a8, a8, 2
	bgeu	a9, a8, .L416
	j	.L417
.L418:
	l32i	a8, sp, 24
	slli	a8, a8, 2
	l32i	a9, sp, 20
	add.n	a9, a9, a8
	l32i	a8, sp, 24
	slli	a8, a8, 2
	l32i	a10, sp, 16
	add.n	a8, a10, a8
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L417:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L418
	j	.L419
.L416:
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L420
.L421:
	l32i	a9, sp, 20
	addi.n	a8, a9, 4
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	addi.n	a10, a8, 4
	s32i	a10, sp, 0
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L420:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L421
.L419:
	l32i	a8, sp, 16
.L415:
	mov.n	a2, a8
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L423
.L424:
	l32i	a8, sp, 0
	addi.n	a9, a8, 4
	s32i	a9, sp, 0
	l32i	a9, sp, 20
	s32i	a9, a8, 0
.L423:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L424
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bgeu	a9, a8, .L427
	l32i	a9, sp, 16
	l32i	a8, sp, 24
	add.n	a8, a9, a8
	s32i	a8, sp, 0
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a8, a9, a8
	s32i	a8, sp, 4
	j	.L428
.L429:
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
	s32i	a8, sp, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, -1
	s32i	a8, sp, 4
	l32i	a8, sp, 0
	l8ui	a9, a8, 0
	l32i	a8, sp, 4
	s8i	a9, a8, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L428:
	l32i	a8, sp, 24
	bnez.n	a8, .L429
	j	.L433
.L427:
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	beq	a9, a8, .L433
	j	.L431
.L432:
	l32i	a9, sp, 16
	addi.n	a8, a9, 1
	s32i	a8, sp, 16
	l32i	a8, sp, 20
	addi.n	a10, a8, 1
	s32i	a10, sp, 20
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L431:
	l32i	a8, sp, 24
	bnez.n	a8, .L432
.L433:
	nop.n
	retw.n
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	l32i	a10, sp, 0
	l32i	a12, sp, 4
	l32i	a9, sp, 8
	movi.n	a8, 0x20
	and	a8, a9, a8
	movi.n	a13, 0
	srli	a11, a12, 1
	l32i	a14, sp, 8
	movi.n	a9, -1
	xor	a9, a14, a9
	ssr	a9
	srl	a11, a11
	l32i	a9, sp, 8
	ssl	a9
	sll	a9, a10
	or	a9, a11, a9
	l32i	a11, sp, 8
	ssl	a11
	sll	a11, a12
	movnez	a9, a11, a8
	movnez	a11, a13, a8
	l32i	a8, sp, 8
	neg	a8, a8
	extui	a8, a8, 0, 6
	movi.n	a13, 0x20
	and	a13, a8, a13
	movi.n	a14, 0
	add.n	a15, a10, a10
	l32i	a8, sp, 8
	neg	a8, a8
	extui	a8, a8, 0, 6
	movi.n	a7, -1
	xor	a8, a8, a7
	ssl	a8
	sll	a15, a15
	l32i	a8, sp, 8
	neg	a8, a8
	extui	a8, a8, 0, 6
	ssr	a8
	srl	a8, a12
	or	a8, a15, a8
	l32i	a12, sp, 8
	neg	a12, a12
	extui	a12, a12, 0, 6
	ssr	a12
	srl	a10, a10
	movnez	a8, a10, a13
	movnez	a10, a14, a13
	or	a9, a10, a9
	or	a8, a8, a11
	mov.n	a10, a9
	mov.n	a2, a10
	mov.n	a3, a8
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	l32i	a8, sp, 0
	l32i	a12, sp, 4
	l32i	a10, sp, 8
	movi.n	a9, 0x20
	and	a10, a10, a9
	movi.n	a13, 0
	add.n	a11, a8, a8
	l32i	a14, sp, 8
	movi.n	a9, -1
	xor	a9, a14, a9
	ssl	a9
	sll	a11, a11
	l32i	a9, sp, 8
	ssr	a9
	srl	a9, a12
	or	a9, a11, a9
	l32i	a11, sp, 8
	ssr	a11
	srl	a11, a8
	movnez	a9, a11, a10
	movnez	a11, a13, a10
	l32i	a10, sp, 8
	neg	a10, a10
	extui	a10, a10, 0, 6
	movi.n	a13, 0x20
	and	a13, a10, a13
	movi.n	a14, 0
	srli	a15, a12, 1
	l32i	a10, sp, 8
	neg	a10, a10
	extui	a10, a10, 0, 6
	movi.n	a7, -1
	xor	a10, a10, a7
	ssr	a10
	srl	a15, a15
	l32i	a10, sp, 8
	neg	a10, a10
	extui	a10, a10, 0, 6
	ssl	a10
	sll	a8, a8
	or	a8, a15, a8
	l32i	a10, sp, 8
	neg	a10, a10
	extui	a10, a10, 0, 6
	ssl	a10
	sll	a10, a12
	movnez	a8, a10, a13
	movnez	a10, a14, a13
	or	a8, a8, a11
	or	a9, a10, a9
	mov.n	a10, a9
	mov.n	a2, a8
	mov.n	a3, a10
	retw.n
	.size	rotr64, .-rotr64
	.align	4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	ssl	a8
	src	a8, a9, a9
	mov.n	a2, a8
	retw.n
	.size	rotl32, .-rotl32
	.align	4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	ssr	a8
	src	a8, a9, a9
	mov.n	a2, a8
	retw.n
	.size	rotr32, .-rotr32
	.align	4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	ssl	a8
	src	a8, a9, a9
	mov.n	a2, a8
	retw.n
	.size	rotl_sz, .-rotl_sz
	.align	4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	ssr	a8
	src	a8, a9, a9
	mov.n	a2, a8
	retw.n
	.size	rotr_sz, .-rotr_sz
	.align	4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	entry	sp, 48
	mov.n	a8, a2
	s32i	a3, sp, 4
	s16i	a8, sp, 0
	l16ui	a9, sp, 0
	l32i	a8, sp, 4
	ssl	a8
	sll	a8, a9
	extui	a9, a8, 0, 16
	l16ui	a10, sp, 0
	movi.n	a11, 0x10
	l32i	a8, sp, 4
	sub	a8, a11, a8
	ssr	a8
	srl	a8, a10
	extui	a8, a8, 0, 16
	or	a8, a9, a8
	extui	a8, a8, 0, 16
	mov.n	a2, a8
	retw.n
	.size	rotl16, .-rotl16
	.align	4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	entry	sp, 48
	mov.n	a8, a2
	s32i	a3, sp, 4
	s16i	a8, sp, 0
	l16ui	a9, sp, 0
	l32i	a8, sp, 4
	ssr	a8
	srl	a8, a9
	extui	a9, a8, 0, 16
	l16ui	a10, sp, 0
	movi.n	a11, 0x10
	l32i	a8, sp, 4
	sub	a8, a11, a8
	ssl	a8
	sll	a8, a10
	extui	a8, a8, 0, 16
	or	a8, a9, a8
	extui	a8, a8, 0, 16
	mov.n	a2, a8
	retw.n
	.size	rotr16, .-rotr16
	.align	4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	entry	sp, 48
	mov.n	a8, a2
	s32i	a3, sp, 4
	s8i	a8, sp, 0
	l8ui	a9, sp, 0
	l32i	a8, sp, 4
	ssl	a8
	sll	a8, a9
	extui	a9, a8, 0, 8
	l8ui	a10, sp, 0
	movi.n	a11, 8
	l32i	a8, sp, 4
	sub	a8, a11, a8
	ssr	a8
	srl	a8, a10
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	rotl8, .-rotl8
	.align	4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	entry	sp, 48
	mov.n	a8, a2
	s32i	a3, sp, 4
	s8i	a8, sp, 0
	l8ui	a9, sp, 0
	l32i	a8, sp, 4
	ssr	a8
	srl	a8, a9
	extui	a9, a8, 0, 8
	l8ui	a10, sp, 0
	movi.n	a11, 8
	l32i	a8, sp, 4
	sub	a8, a11, a8
	ssl	a8
	sll	a8, a10
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	rotr8, .-rotr8
	.align	4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	entry	sp, 64
	mov.n	a8, a2
	s16i	a8, sp, 16
	movi	a8, 0xff
	s32i	a8, sp, 0
	l16ui	a9, sp, 16
	l32i	a8, sp, 0
	slli	a8, a8, 8
	and	a8, a9, a8
	srli	a8, a8, 8
	extui	a9, a8, 0, 16
	l32i	a8, sp, 0
	extui	a10, a8, 0, 16
	l16ui	a8, sp, 16
	and	a8, a10, a8
	extui	a8, a8, 0, 16
	slli	a8, a8, 8
	extui	a8, a8, 0, 16
	or	a8, a9, a8
	extui	a8, a8, 0, 16
	mov.n	a2, a8
	retw.n
	.size	bswap_16, .-bswap_16
	.align	4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	entry	sp, 64
	s32i	a2, sp, 16
	movi	a8, 0xff
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	slli	a9, a8, 24
	l32i	a8, sp, 16
	and	a8, a9, a8
	extui	a9, a8, 24, 8
	l32i	a8, sp, 0
	slli	a10, a8, 16
	l32i	a8, sp, 16
	and	a8, a10, a8
	srli	a8, a8, 8
	or	a9, a9, a8
	l32i	a8, sp, 0
	slli	a10, a8, 8
	l32i	a8, sp, 16
	and	a8, a10, a8
	slli	a8, a8, 8
	or	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 0
	and	a8, a10, a8
	slli	a8, a8, 24
	or	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	bswap_32, .-bswap_32
	.align	4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	movi	a9, 0xff
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	l32i	a8, sp, 4
	slli	a8, a8, 24
	l32i	a9, sp, 16
	and	a8, a9, a8
	extui	a9, a8, 24, 8
	movi.n	a11, 0
	l32i	a8, sp, 4
	slli	a8, a8, 16
	l32i	a10, sp, 16
	and	a8, a10, a8
	srli	a8, a8, 8
	movi.n	a10, 0
	or	a11, a11, a10
	or	a10, a9, a8
	l32i	a8, sp, 4
	slli	a9, a8, 8
	movi.n	a8, 0
	l32i	a12, sp, 16
	and	a9, a12, a9
	l32i	a12, sp, 20
	and	a8, a12, a8
	slli	a12, a9, 8
	extui	a8, a8, 24, 8
	or	a8, a12, a8
	extui	a9, a9, 24, 8
	or	a11, a11, a9
	or	a10, a10, a8
	l32i	a8, sp, 4
	slli	a9, a8, 0
	movi.n	a8, 0
	l32i	a12, sp, 16
	and	a9, a12, a9
	l32i	a12, sp, 20
	and	a8, a12, a8
	slli	a12, a9, 24
	srli	a8, a8, 8
	or	a8, a12, a8
	srli	a9, a9, 8
	or	a11, a11, a9
	or	a10, a10, a8
	l32i	a8, sp, 4
	srli	a9, a8, 8
	l32i	a8, sp, 0
	slli	a8, a8, 24
	or	a8, a9, a8
	l32i	a9, sp, 4
	slli	a9, a9, 24
	l32i	a12, sp, 16
	and	a8, a12, a8
	l32i	a12, sp, 20
	and	a9, a12, a9
	extui	a12, a9, 24, 8
	slli	a8, a8, 8
	or	a8, a12, a8
	slli	a9, a9, 8
	or	a11, a11, a8
	or	a10, a10, a9
	l32i	a8, sp, 4
	extui	a9, a8, 16, 16
	l32i	a8, sp, 0
	slli	a8, a8, 16
	or	a8, a9, a8
	l32i	a9, sp, 4
	slli	a9, a9, 16
	l32i	a12, sp, 16
	and	a8, a12, a8
	l32i	a12, sp, 20
	and	a9, a12, a9
	srli	a12, a9, 8
	slli	a8, a8, 24
	or	a8, a12, a8
	slli	a9, a9, 24
	or	a11, a11, a8
	or	a9, a10, a9
	l32i	a8, sp, 4
	slli	a8, a8, 8
	l32i	a10, sp, 20
	and	a8, a10, a8
	slli	a10, a8, 8
	movi.n	a8, 0
	or	a11, a11, a10
	or	a9, a9, a8
	l32i	a10, sp, 20
	l32i	a8, sp, 4
	and	a8, a10, a8
	slli	a10, a8, 24
	movi.n	a8, 0
	or	a10, a11, a10
	or	a8, a9, a8
	mov.n	a2, a10
	mov.n	a3, a8
	retw.n
	.size	bswap_64, .-bswap_64
	.align	4
	.global	ffs
	.type	ffs, @function
ffs:
	entry	sp, 64
	s32i	a2, sp, 16
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L461
.L464:
	l32i	a9, sp, 16
	l32i	a8, sp, 0
	ssr	a8
	srl	a8, a9
	extui	a8, a8, 0, 1
	beqz.n	a8, .L462
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	j	.L463
.L462:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L461:
	l32i	a8, sp, 0
	bltui	a8, 32, .L464
	movi.n	a8, 0
.L463:
	mov.n	a2, a8
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	bnez.n	a8, .L466
	movi.n	a7, 0
	j	.L467
.L466:
	movi.n	a7, 1
	j	.L468
.L469:
	srai	a8, a8, 1
	addi.n	a7, a7, 1
.L468:
	extui	a9, a8, 0, 1
	beqz.n	a9, .L469
	nop.n
.L467:
	mov.n	a2, a7
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC55, __ltsf2@PLT
	.literal .LC57, __gtsf2@PLT
	.literal .LC58, -8388609
	.literal .LC59, 2139095039
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 48
	s32i.n	a2, sp, 0
	l32r	a8, .LC55
	l32r	a11, .LC58
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L471
	l32r	a8, .LC57
	l32r	a11, .LC59
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L476
.L471:
	movi.n	a8, 1
	j	.L475
.L476:
	movi.n	a8, 0
.L475:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC61, __ltdf2@PLT
	.literal .LC63, __gtdf2@PLT
	.literal .LC64, -1048577
	.literal .LC65, 2146435071
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	l32r	a8, .LC61
	l32r	a12, .LC64
	movi.n	a13, -1
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L478
	l32r	a8, .LC63
	l32r	a12, .LC65
	movi.n	a13, -1
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L483
.L478:
	movi.n	a8, 1
	j	.L482
.L483:
	movi.n	a8, 0
.L482:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC67, __ltdf2@PLT
	.literal .LC69, __gtdf2@PLT
	.literal .LC70, -1048577
	.literal .LC71, 2146435071
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	l32r	a8, .LC67
	l32r	a12, .LC70
	movi.n	a13, -1
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L485
	l32r	a8, .LC69
	l32r	a12, .LC71
	movi.n	a13, -1
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L490
.L485:
	movi.n	a8, 1
	j	.L489
.L490:
	movi.n	a8, 0
.L489:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC72, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32r	a8, .LC72
	l32i	a10, sp, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	l32i	a10, sp, 0
	s32i.n	a8, a10, 0
	s32i.n	a9, a10, 4
	nop.n
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC73, __unordsf2@PLT
	.literal .LC74, __addsf3@PLT
	.literal .LC75, __nesf2@PLT
	.literal .LC78, __mulsf3@PLT
	.literal .LC79, 1056964608
	.literal .LC80, 1073741824
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 64
	s32i.n	a2, sp, 16
	s32i	a3, sp, 20
	l32r	a8, .LC73
	l32i.n	a11, sp, 16
	l32i.n	a10, sp, 16
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L493
	l32i.n	a9, sp, 16
	l32r	a8, .LC74
	mov.n	a11, a9
	mov.n	a10, a9
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a8
	l32r	a8, .LC75
	mov.n	a11, a9
	l32i.n	a10, sp, 16
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L493
	l32i	a8, sp, 20
	bgez	a8, .L495
	l32r	a8, .LC79
	j	.L496
.L495:
	l32r	a8, .LC80
.L496:
	s32i.n	a8, sp, 0
.L499:
	l32i	a8, sp, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L497
	l32r	a8, .LC78
	l32i.n	a11, sp, 0
	l32i.n	a10, sp, 16
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, sp, 16
.L497:
	l32i	a8, sp, 20
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, sp, 20
	l32i	a8, sp, 20
	beqz.n	a8, .L502
	l32r	a8, .LC78
	l32i.n	a11, sp, 0
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, sp, 0
	j	.L499
.L502:
	nop.n
.L493:
	l32i.n	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC81, __unorddf2@PLT
	.literal .LC82, __adddf3@PLT
	.literal .LC83, __nedf2@PLT
	.literal .LC86, __muldf3@PLT
	.literal .LC87, 1071644672
	.literal .LC88, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 64
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	s32i	a4, sp, 24
	l32r	a8, .LC81
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L504
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	l32r	a14, .LC82
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a10, a8
	mov.n	a11, a9
	l32r	a8, .LC83
	mov.n	a12, a10
	mov.n	a13, a11
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L504
	l32i	a8, sp, 24
	bgez	a8, .L506
	l32r	a8, .LC87
	movi.n	a9, 0
	j	.L507
.L506:
	l32r	a8, .LC88
	movi.n	a9, 0
.L507:
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L510:
	l32i	a8, sp, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L508
	l32r	a8, .LC86
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
.L508:
	l32i	a8, sp, 24
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, sp, 24
	l32i	a8, sp, 24
	beqz.n	a8, .L513
	l32r	a8, .LC86
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	j	.L510
.L513:
	nop.n
.L504:
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC89, __unorddf2@PLT
	.literal .LC90, __adddf3@PLT
	.literal .LC91, __nedf2@PLT
	.literal .LC94, __muldf3@PLT
	.literal .LC95, 1071644672
	.literal .LC96, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 64
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	s32i	a4, sp, 24
	l32r	a8, .LC89
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L515
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	l32r	a14, .LC90
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a10, a8
	mov.n	a11, a9
	l32r	a8, .LC91
	mov.n	a12, a10
	mov.n	a13, a11
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L515
	l32i	a8, sp, 24
	bgez	a8, .L517
	l32r	a8, .LC95
	movi.n	a9, 0
	j	.L518
.L517:
	l32r	a8, .LC96
	movi.n	a9, 0
.L518:
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L521:
	l32i	a8, sp, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L519
	l32r	a8, .LC94
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
.L519:
	l32i	a8, sp, 24
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, sp, 24
	l32i	a8, sp, 24
	beqz.n	a8, .L524
	l32r	a8, .LC94
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	j	.L521
.L524:
	nop.n
.L515:
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	j	.L526
.L527:
	l32i	a8, sp, 20
	addi.n	a9, a8, 1
	s32i	a9, sp, 20
	l8ui	a10, a8, 0
	l32i	a8, sp, 0
	addi.n	a9, a8, 1
	s32i	a9, sp, 0
	l8ui	a9, a8, 0
	xor	a9, a10, a9
	extui	a9, a9, 0, 8
	s8i	a9, a8, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L526:
	l32i	a8, sp, 24
	bnez.n	a8, .L527
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC97, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a10, sp, 16
	l32r	a8, .LC97
	callx8	a8
	mov.n	a9, a10
	l32i	a8, sp, 16
	add.n	a8, a8, a9
	s32i	a8, sp, 0
	j	.L530
.L532:
	l32i	a8, sp, 20
	addi.n	a8, a8, 1
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	s32i	a8, sp, 24
.L530:
	l32i	a8, sp, 24
	beqz.n	a8, .L531
	l32i	a8, sp, 20
	l8ui	a9, a8, 0
	l32i	a8, sp, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L532
.L531:
	l32i	a8, sp, 24
	bnez.n	a8, .L533
	l32i	a8, sp, 0
	movi.n	a9, 0
	s8i	a9, a8, 0
.L533:
	l32i	a8, sp, 16
	mov.n	a2, a8
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L536
.L541:
	nop.n
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L536:
	l32i	a9, sp, 0
	l32i	a8, sp, 20
	bgeu	a9, a8, .L537
	l32i	a9, sp, 16
	l32i	a8, sp, 0
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	bnez.n	a8, .L541
.L537:
	l32i	a8, sp, 0
	mov.n	a2, a8
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	j	.L543
.L547:
	l32i	a8, sp, 20
	s32i	a8, sp, 0
	j	.L544
.L546:
	l32i	a8, sp, 0
	addi.n	a9, a8, 1
	s32i	a9, sp, 0
	l8ui	a9, a8, 0
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	bne	a9, a8, .L544
	l32i	a8, sp, 16
	j	.L545
.L544:
	l32i	a8, sp, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L546
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L543:
	l32i	a8, sp, 16
	l8ui	a8, a8, 0
	bnez.n	a8, .L547
	movi.n	a8, 0
.L545:
	mov.n	a2, a8
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 64
	mov.n	a8, a2
	s32i	a3, sp, 16
	movi.n	a9, 0
	s32i	a9, sp, 0
.L550:
	l8ui	a9, a8, 0
	mov.n	a10, a9
	l32i	a9, sp, 16
	bne	a9, a10, .L549
	s32i	a8, sp, 0
.L549:
	mov.n	a9, a8
	addi.n	a8, a9, 1
	l8ui	a9, a9, 0
	bnez.n	a9, .L550
	l32i	a8, sp, 0
	mov.n	a2, a8
	retw.n
	.size	strrchr, .-strrchr
	.literal_position
	.literal .LC98, strlen@PLT
	.literal .LC99, strncmp@PLT
	.literal .LC100, strchr@PLT
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	l32i	a10, sp, 20
	l32r	a8, .LC98
	callx8	a8
	s32i	a10, sp, 0
	l32i	a8, sp, 0
	bnez.n	a8, .L555
	l32i	a8, sp, 16
	j	.L554
.L557:
	l32i	a12, sp, 0
	l32i	a11, sp, 20
	l32i	a10, sp, 4
	l32r	a8, .LC99
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L556
	l32i	a8, sp, 4
	j	.L554
.L556:
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L555:
	l32i	a8, sp, 20
	l8ui	a8, a8, 0
	mov.n	a11, a8
	l32i	a10, sp, 16
	l32r	a8, .LC100
	callx8	a8
	s32i	a10, sp, 4
	l32i	a8, sp, 4
	bnez.n	a8, .L557
	movi.n	a8, 0
.L554:
	mov.n	a2, a8
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC102, __ltdf2@PLT
	.literal .LC103, __gtdf2@PLT
	.literal .LC104, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a5, sp, 12
	l32r	a8, .LC102
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L559
	l32r	a8, .LC103
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, sp, 8
	l32i.n	a11, sp, 12
	callx8	a8
	mov.n	a8, a10
	bgei	a8, 1, .L561
.L559:
	l32r	a8, .LC103
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L562
	l32r	a8, .LC102
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, sp, 8
	l32i.n	a11, sp, 12
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L562
.L561:
	l32i	a9, sp, 0
	l32r	a8, .LC104
	xor	a6, a9, a8
	l32i	a7, sp, 4
	j	.L565
.L562:
	l32i.n	a6, sp, 0
	l32i.n	a7, sp, 4
.L565:
	mov.n	a2, a6
	mov.n	a3, a7
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC105, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	l32i	a9, sp, 20
	l32i	a8, sp, 28
	sub	a8, a9, a8
	l32i	a9, sp, 16
	add.n	a8, a9, a8
	s32i	a8, sp, 0
	l32i	a8, sp, 28
	bnez.n	a8, .L569
	l32i	a8, sp, 16
	j	.L570
.L569:
	movi.n	a8, 1
	l32i	a10, sp, 20
	l32i	a9, sp, 28
	bltu	a10, a9, .L571
	movi.n	a8, 0
.L571:
	extui	a8, a8, 0, 8
	beqz.n	a8, .L573
	movi.n	a8, 0
	j	.L570
.L575:
	l32i	a8, sp, 16
	l8ui	a9, a8, 0
	l32i	a8, sp, 24
	l8ui	a8, a8, 0
	bne	a9, a8, .L574
	l32i	a8, sp, 16
	addi.n	a9, a8, 1
	l32i	a8, sp, 24
	addi.n	a10, a8, 1
	l32i	a8, sp, 28
	addi.n	a8, a8, -1
	mov.n	a12, a8
	mov.n	a11, a10
	mov.n	a10, a9
	l32r	a8, .LC105
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L574
	l32i	a8, sp, 16
	j	.L570
.L574:
	l32i	a8, sp, 16
	addi.n	a8, a8, 1
	s32i	a8, sp, 16
.L573:
	l32i	a8, sp, 16
	l32i	a9, sp, 0
	bgeu	a9, a8, .L575
	movi.n	a8, 0
.L570:
	mov.n	a2, a8
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC106, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	l32i	a12, sp, 8
	l32i	a11, sp, 4
	l32i	a10, sp, 0
	l32r	a8, .LC106
	callx8	a8
	mov.n	a9, a10
	l32i	a8, sp, 8
	add.n	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC108, __ltdf2@PLT
	.literal .LC109, -2147483648
	.literal .LC111, __gedf2@PLT
	.literal .LC113, __divdf3@PLT
	.literal .LC115, __nedf2@PLT
	.literal .LC116, __adddf3@PLT
	.literal .LC117, 1072693248
	.literal .LC118, 1073741824
	.literal .LC119, 1071644672
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 80
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	s32i	a4, sp, 24
	movi.n	a8, 0
	s32i	a8, sp, 4
	movi.n	a8, 0
	s32i	a8, sp, 0
	l32r	a8, .LC108
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L579
	l32i	a9, sp, 16
	l32r	a8, .LC109
	xor	a8, a9, a8
	s32i	a8, sp, 32
	l32i	a8, sp, 20
	s32i	a8, sp, 36
	addi	a8, sp, 32
	l32i.n	a9, a8, 4
	l32i.n	a8, a8, 0
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
	movi.n	a8, 1
	s32i	a8, sp, 0
.L579:
	l32r	a8, .LC111
	l32r	a12, .LC117
	movi.n	a13, 0
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L596
	j	.L583
.L584:
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
	l32r	a8, .LC113
	l32r	a12, .LC118
	movi.n	a13, 0
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
.L583:
	l32r	a8, .LC111
	l32r	a12, .LC117
	movi.n	a13, 0
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L584
	j	.L585
.L596:
	l32r	a8, .LC108
	l32r	a12, .LC119
	movi.n	a13, 0
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L585
	l32r	a8, .LC115
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L585
	j	.L588
.L589:
	l32i	a8, sp, 4
	addi.n	a8, a8, -1
	s32i	a8, sp, 4
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	l32r	a14, .LC116
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
.L588:
	l32r	a8, .LC108
	l32r	a12, .LC119
	movi.n	a13, 0
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L589
.L585:
	l32i	a8, sp, 24
	l32i	a9, sp, 4
	s32i	a9, a8, 0
	l32i	a8, sp, 0
	beqz.n	a8, .L590
	l32i	a9, sp, 16
	l32r	a8, .LC109
	xor	a6, a9, a8
	l32i	a7, sp, 20
	s32i.n	a6, sp, 16
	s32i.n	a7, sp, 20
.L590:
	l32i.n	a8, sp, 16
	l32i.n	a9, sp, 20
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	frexp, .-frexp
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	movi.n	a8, 0
	movi.n	a9, 0
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	j	.L598
.L602:
	l32i	a9, sp, 8
	movi.n	a8, 0
	and	a10, a9, a8
	l32i	a8, sp, 12
	extui	a9, a8, 0, 1
	mov.n	a8, a10
	or	a8, a8, a9
	beqz.n	a8, .L599
	l32i	a11, sp, 0
	l32i	a9, sp, 4
	l32i	a8, sp, 24
	l32i	a10, sp, 28
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a9, a10, .L601
	addi.n	a8, a8, 1
.L601:
	s32i	a8, sp, 0
	s32i	a9, sp, 4
.L599:
	l32i	a8, sp, 28
	extui	a9, a8, 31, 1
	l32i	a8, sp, 24
	add.n	a8, a8, a8
	or	a8, a9, a8
	l32i	a9, sp, 28
	add.n	a9, a9, a9
	s32i	a8, sp, 24
	s32i	a9, sp, 28
	l32i	a8, sp, 8
	slli	a9, a8, 31
	l32i	a8, sp, 12
	srli	a8, a8, 1
	or	a8, a9, a8
	l32i	a9, sp, 8
	srli	a9, a9, 1
	s32i	a9, sp, 8
	s32i	a8, sp, 12
.L598:
	l32i	a8, sp, 8
	l32i	a9, sp, 12
	or	a8, a8, a9
	bnez.n	a8, .L602
	l32i	a8, sp, 0
	l32i	a9, sp, 4
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	movi.n	a8, 1
	s32i	a8, sp, 0
	movi.n	a8, 0
	s32i	a8, sp, 4
	j	.L605
.L607:
	l32i	a8, sp, 20
	add.n	a8, a8, a8
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	add.n	a8, a8, a8
	s32i	a8, sp, 0
.L605:
	l32i	a9, sp, 20
	l32i	a8, sp, 16
	bgeu	a9, a8, .L608
	l32i	a8, sp, 0
	beqz.n	a8, .L608
	l32i	a8, sp, 20
	bgez	a8, .L607
	j	.L608
.L610:
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bltu	a9, a8, .L609
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	sub	a8, a9, a8
	s32i	a8, sp, 16
	l32i	a9, sp, 4
	l32i	a8, sp, 0
	or	a8, a9, a8
	s32i	a8, sp, 4
.L609:
	l32i	a8, sp, 0
	srli	a8, a8, 1
	s32i	a8, sp, 0
	l32i	a8, sp, 20
	srli	a8, a8, 1
	s32i	a8, sp, 20
.L608:
	l32i	a8, sp, 0
	bnez.n	a8, .L610
	l32i	a8, sp, 24
	beqz.n	a8, .L611
	l32i	a8, sp, 16
	j	.L612
.L611:
	l32i	a8, sp, 4
.L612:
	mov.n	a2, a8
	retw.n
	.size	udivmodsi4, .-udivmodsi4
	.align	4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	entry	sp, 64
	mov.n	a8, a2
	s8i	a8, sp, 16
	l8ui	a8, sp, 16
	bnez.n	a8, .L614
	movi.n	a8, 7
	j	.L615
.L614:
	l8ui	a8, sp, 16
	slli	a8, a8, 8
	nsau	a8, a8
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
.L615:
	mov.n	a2, a8
	retw.n
	.size	__clrsbqi2, .-__clrsbqi2
	.align	4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	l32i	a8, sp, 16
	bgez	a8, .L617
	l32i	a9, sp, 16
	movi.n	a8, -1
	xor	a9, a9, a8
	l32i	a10, sp, 20
	movi.n	a8, -1
	xor	a8, a10, a8
	s32i	a9, sp, 16
	s32i	a8, sp, 20
.L617:
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	or	a8, a8, a9
	bnez.n	a8, .L619
	movi.n	a8, 0x3f
	j	.L620
.L619:
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	beqz.n	a8, .L621
	nsau	a8, a8
	j	.L622
.L621:
	nsau	a8, a9
	addi	a8, a8, 32
.L622:
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
.L620:
	mov.n	a2, a8
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L624
.L626:
	l32i	a8, sp, 16
	extui	a8, a8, 0, 1
	beqz.n	a8, .L625
	l32i	a9, sp, 0
	l32i	a8, sp, 20
	add.n	a8, a9, a8
	s32i	a8, sp, 0
.L625:
	l32i	a8, sp, 16
	srli	a8, a8, 1
	s32i	a8, sp, 16
	l32i	a8, sp, 20
	add.n	a8, a8, a8
	s32i	a8, sp, 20
.L624:
	l32i	a8, sp, 16
	bnez.n	a8, .L626
	l32i	a8, sp, 0
	mov.n	a2, a8
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 24
	srli	a8, a8, 3
	s32i	a8, sp, 8
	l32i	a9, sp, 24
	movi.n	a8, -8
	and	a8, a9, a8
	s32i	a8, sp, 4
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bltu	a9, a8, .L629
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a9, a9, a8
	l32i	a8, sp, 16
	bgeu	a9, a8, .L636
.L629:
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L631
.L632:
	l32i	a8, sp, 0
	slli	a8, a8, 3
	l32i	a9, sp, 20
	add.n	a8, a9, a8
	l32i	a9, sp, 0
	slli	a9, a9, 3
	l32i	a10, sp, 16
	add.n	a10, a10, a9
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	s32i	a8, a10, 0
	s32i	a9, a10, 4
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L631:
	l32i	a9, sp, 0
	l32i	a8, sp, 8
	bltu	a9, a8, .L632
	j	.L633
.L634:
	l32i	a9, sp, 20
	l32i	a8, sp, 4
	add.n	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 4
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
.L633:
	l32i	a8, sp, 24
	l32i	a9, sp, 4
	bltu	a9, a8, .L634
	j	.L635
.L637:
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 24
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
.L636:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L637
	nop.n
.L635:
	nop.n
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 24
	srli	a8, a8, 1
	s32i	a8, sp, 4
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bltu	a9, a8, .L639
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a9, a9, a8
	l32i	a8, sp, 16
	bgeu	a9, a8, .L645
.L639:
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L641
.L642:
	l32i	a8, sp, 0
	add.n	a8, a8, a8
	l32i	a9, sp, 20
	add.n	a9, a9, a8
	l32i	a8, sp, 0
	add.n	a8, a8, a8
	l32i	a10, sp, 16
	add.n	a8, a10, a8
	l16ui	a9, a9, 0
	sext	a9, a9, 15
	s16i	a9, a8, 0
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L641:
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	bltu	a9, a8, .L642
	l32i	a8, sp, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L644
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	l32i	a9, sp, 20
	add.n	a9, a9, a8
	l32i	a8, sp, 24
	addi.n	a8, a8, -1
	l32i	a10, sp, 16
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	j	.L644
.L646:
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 24
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
.L645:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L646
	nop.n
.L644:
	nop.n
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 24
	srli	a8, a8, 2
	s32i	a8, sp, 8
	l32i	a9, sp, 24
	movi.n	a8, -4
	and	a8, a9, a8
	s32i	a8, sp, 4
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bltu	a9, a8, .L648
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a9, a9, a8
	l32i	a8, sp, 16
	bgeu	a9, a8, .L655
.L648:
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L650
.L651:
	l32i	a8, sp, 0
	slli	a8, a8, 2
	l32i	a9, sp, 20
	add.n	a9, a9, a8
	l32i	a8, sp, 0
	slli	a8, a8, 2
	l32i	a10, sp, 16
	add.n	a8, a10, a8
	l32i	a9, a9, 0
	s32i	a9, a8, 0
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L650:
	l32i	a9, sp, 0
	l32i	a8, sp, 8
	bltu	a9, a8, .L651
	j	.L652
.L653:
	l32i	a9, sp, 20
	l32i	a8, sp, 4
	add.n	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 4
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
.L652:
	l32i	a8, sp, 24
	l32i	a9, sp, 4
	bltu	a9, a8, .L653
	j	.L654
.L656:
	l32i	a9, sp, 20
	l32i	a8, sp, 24
	add.n	a9, a9, a8
	l32i	a10, sp, 16
	l32i	a8, sp, 24
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
.L655:
	l32i	a8, sp, 24
	addi.n	a9, a8, -1
	s32i	a9, sp, 24
	bnez.n	a8, .L656
	nop.n
.L654:
	nop.n
	retw.n
	.size	__cmovw, .-__cmovw
	.align	4
	.global	__modi
	.type	__modi, @function
__modi:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	rems	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__modi, .-__modi
	.literal_position
	.literal .LC121, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 48
	s32i	a2, sp, 0
	l32r	a8, .LC121
	l32i	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC122, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 48
	s32i	a2, sp, 0
	l32r	a8, .LC122
	l32i	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	mov.n	a2, a8
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC123, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32r	a8, .LC123
	l32i	a10, sp, 0
	l32i	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC124, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32r	a8, .LC124
	l32i	a10, sp, 0
	l32i	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a2, a8
	retw.n
	.size	__ulltof, .-__ulltof
	.align	4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	remu	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__umodi, .-__umodi
	.align	4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	entry	sp, 64
	mov.n	a8, a2
	s16i	a8, sp, 16
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L670
.L673:
	l16ui	a9, sp, 16
	movi.n	a10, 0xf
	l32i	a8, sp, 0
	sub	a8, a10, a8
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	bnez.n	a8, .L675
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L670:
	l32i	a8, sp, 0
	blti	a8, 16, .L673
	j	.L672
.L675:
	nop.n
.L672:
	l32i	a8, sp, 0
	mov.n	a2, a8
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 64
	mov.n	a8, a2
	s16i	a8, sp, 16
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L677
.L680:
	l16ui	a9, sp, 16
	l32i	a8, sp, 0
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	bnez.n	a8, .L682
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L677:
	l32i	a8, sp, 0
	blti	a8, 16, .L680
	j	.L679
.L682:
	nop.n
.L679:
	l32i	a8, sp, 0
	mov.n	a2, a8
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC126, __gesf2@PLT
	.literal .LC127, __subsf3@PLT
	.literal .LC128, __fixsfsi@PLT
	.literal .LC129, 32768
	.literal .LC130, 1191182336
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 48
	s32i.n	a2, sp, 0
	l32r	a8, .LC126
	l32r	a11, .LC130
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L688
	l32r	a8, .LC127
	l32r	a11, .LC130
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a8
	l32r	a8, .LC128
	mov.n	a10, a9
	callx8	a8
	mov.n	a9, a10
	l32r	a8, .LC129
	add.n	a8, a9, a8
	j	.L686
.L688:
	l32r	a8, .LC128
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
.L686:
	mov.n	a2, a8
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 64
	mov.n	a8, a2
	s16i	a8, sp, 16
	movi.n	a8, 0
	s32i	a8, sp, 4
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L690
.L692:
	l16ui	a9, sp, 16
	l32i	a8, sp, 0
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	beqz.n	a8, .L691
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
.L691:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L690:
	l32i	a8, sp, 0
	blti	a8, 16, .L692
	l32i	a8, sp, 4
	extui	a8, a8, 0, 1
	mov.n	a2, a8
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 64
	mov.n	a8, a2
	s16i	a8, sp, 16
	movi.n	a8, 0
	s32i	a8, sp, 4
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L695
.L697:
	l16ui	a9, sp, 16
	l32i	a8, sp, 0
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	beqz.n	a8, .L696
	l32i	a8, sp, 4
	addi.n	a8, a8, 1
	s32i	a8, sp, 4
.L696:
	l32i	a8, sp, 0
	addi.n	a8, a8, 1
	s32i	a8, sp, 0
.L695:
	l32i	a8, sp, 0
	blti	a8, 16, .L697
	l32i	a8, sp, 4
	mov.n	a2, a8
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	s32i	a8, sp, 0
	j	.L700
.L702:
	l32i	a8, sp, 16
	extui	a8, a8, 0, 1
	beqz.n	a8, .L701
	l32i	a9, sp, 0
	l32i	a8, sp, 20
	add.n	a8, a9, a8
	s32i	a8, sp, 0
.L701:
	l32i	a8, sp, 16
	srli	a8, a8, 1
	s32i	a8, sp, 16
	l32i	a8, sp, 20
	add.n	a8, a8, a8
	s32i	a8, sp, 20
.L700:
	l32i	a8, sp, 16
	bnez.n	a8, .L702
	l32i	a8, sp, 0
	mov.n	a2, a8
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	s32i	a8, sp, 0
	l32i	a8, sp, 16
	bnez.n	a8, .L707
	movi.n	a8, 0
	j	.L706
.L709:
	l32i	a8, sp, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L708
	l32i	a9, sp, 0
	l32i	a8, sp, 16
	add.n	a8, a9, a8
	s32i	a8, sp, 0
.L708:
	l32i	a8, sp, 16
	add.n	a8, a8, a8
	s32i	a8, sp, 16
	l32i	a8, sp, 20
	srli	a8, a8, 1
	s32i	a8, sp, 20
.L707:
	l32i	a8, sp, 20
	bnez.n	a8, .L709
	l32i	a8, sp, 0
.L706:
	mov.n	a2, a8
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	movi.n	a8, 1
	s32i	a8, sp, 0
	movi.n	a8, 0
	s32i	a8, sp, 4
	j	.L711
.L713:
	l32i	a8, sp, 20
	add.n	a8, a8, a8
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	add.n	a8, a8, a8
	s32i	a8, sp, 0
.L711:
	l32i	a9, sp, 20
	l32i	a8, sp, 16
	bgeu	a9, a8, .L714
	l32i	a8, sp, 0
	beqz.n	a8, .L714
	l32i	a8, sp, 20
	bgez	a8, .L713
	j	.L714
.L716:
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bltu	a9, a8, .L715
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	sub	a8, a9, a8
	s32i	a8, sp, 16
	l32i	a9, sp, 4
	l32i	a8, sp, 0
	or	a8, a9, a8
	s32i	a8, sp, 4
.L715:
	l32i	a8, sp, 0
	srli	a8, a8, 1
	s32i	a8, sp, 0
	l32i	a8, sp, 20
	srli	a8, a8, 1
	s32i	a8, sp, 20
.L714:
	l32i	a8, sp, 0
	bnez.n	a8, .L716
	l32i	a8, sp, 24
	beqz.n	a8, .L717
	l32i	a8, sp, 16
	j	.L718
.L717:
	l32i	a8, sp, 4
.L718:
	mov.n	a2, a8
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC131, __ltsf2@PLT
	.literal .LC132, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	l32r	a8, .LC131
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L727
	movi.n	a8, -1
	j	.L722
.L727:
	l32r	a8, .LC132
	l32i.n	a11, sp, 4
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L728
	movi.n	a8, 1
	j	.L722
.L728:
	movi.n	a8, 0
.L722:
	mov.n	a2, a8
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC133, __ltdf2@PLT
	.literal .LC134, __gtdf2@PLT
	.align	4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	entry	sp, 48
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 8
	s32i.n	a5, sp, 12
	l32r	a8, .LC133
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L737
	movi.n	a8, -1
	j	.L732
.L737:
	l32r	a8, .LC134
	l32i.n	a12, sp, 8
	l32i.n	a13, sp, 12
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L738
	movi.n	a8, 1
	j	.L732
.L738:
	movi.n	a8, 0
.L732:
	mov.n	a2, a8
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC135, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a8, sp, 0
	mov.n	a10, a8
	srai	a8, a8, 31
	mov.n	a9, a8
	l32i	a8, sp, 4
	mov.n	a11, a8
	srai	a8, a8, 31
	mull	a9, a9, a11
	mull	a8, a8, a10
	add.n	a7, a9, a8
	l32r	a8, .LC135
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	add.n	a8, a7, a8
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.literal_position
	.literal .LC136, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a8, sp, 0
	mov.n	a10, a8
	movi.n	a9, 0
	l32i	a8, sp, 4
	mov.n	a11, a8
	movi.n	a8, 0
	mull	a9, a9, a11
	mull	a8, a8, a10
	add.n	a7, a9, a8
	l32r	a8, .LC136
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	add.n	a8, a7, a8
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	s32i	a8, sp, 4
	movi.n	a8, 0
	s32i	a8, sp, 8
	l32i	a8, sp, 20
	bgez	a8, .L744
	l32i	a8, sp, 20
	neg	a8, a8
	s32i	a8, sp, 20
	movi.n	a8, 1
	s32i	a8, sp, 4
.L744:
	movi.n	a8, 0
	s8i	a8, sp, 0
	j	.L745
.L748:
	l32i	a8, sp, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L746
	l32i	a9, sp, 8
	l32i	a8, sp, 16
	add.n	a8, a9, a8
	s32i	a8, sp, 8
.L746:
	l32i	a8, sp, 16
	add.n	a8, a8, a8
	s32i	a8, sp, 16
	l32i	a8, sp, 20
	srai	a8, a8, 1
	s32i	a8, sp, 20
	l8ui	a8, sp, 0
	addi.n	a8, a8, 1
	s8i	a8, sp, 0
.L745:
	l32i	a8, sp, 20
	beqz.n	a8, .L747
	l8ui	a8, sp, 0
	bltui	a8, 32, .L748
.L747:
	l32i	a8, sp, 4
	beqz.n	a8, .L749
	l32i	a8, sp, 8
	neg	a8, a8
	j	.L751
.L749:
	l32i	a8, sp, 8
.L751:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC137, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	s32i	a8, sp, 0
	l32i	a8, sp, 16
	bgez	a8, .L753
	l32i	a8, sp, 16
	neg	a8, a8
	s32i	a8, sp, 16
	l32i	a10, sp, 0
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a10
	extui	a8, a8, 0, 8
	s32i	a8, sp, 0
.L753:
	l32i	a8, sp, 20
	bgez	a8, .L754
	l32i	a8, sp, 20
	neg	a8, a8
	s32i	a8, sp, 20
	l32i	a10, sp, 0
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a10
	extui	a8, a8, 0, 8
	s32i	a8, sp, 0
.L754:
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	movi.n	a12, 0
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC137
	callx8	a8
	mov.n	a8, a10
	s32i	a8, sp, 4
	l32i	a8, sp, 0
	beqz.n	a8, .L755
	l32i	a8, sp, 4
	neg	a8, a8
	s32i	a8, sp, 4
.L755:
	l32i	a8, sp, 4
	mov.n	a2, a8
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC138, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	movi.n	a8, 0
	s32i	a8, sp, 0
	l32i	a8, sp, 16
	bgez	a8, .L758
	l32i	a8, sp, 16
	neg	a8, a8
	s32i	a8, sp, 16
	movi.n	a8, 1
	s32i	a8, sp, 0
.L758:
	l32i	a8, sp, 20
	bgez	a8, .L759
	l32i	a8, sp, 20
	neg	a8, a8
	s32i	a8, sp, 20
.L759:
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	movi.n	a12, 1
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC138
	callx8	a8
	mov.n	a8, a10
	s32i	a8, sp, 4
	l32i	a8, sp, 0
	beqz.n	a8, .L760
	l32i	a8, sp, 4
	neg	a8, a8
	s32i	a8, sp, 4
.L760:
	l32i	a8, sp, 4
	mov.n	a2, a8
	retw.n
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 64
	mov.n	a8, a2
	mov.n	a9, a3
	s32i	a4, sp, 24
	s16i	a8, sp, 16
	mov.n	a8, a9
	s16i	a8, sp, 20
	movi.n	a8, 1
	s16i	a8, sp, 0
	movi.n	a8, 0
	s16i	a8, sp, 2
	j	.L763
.L765:
	l16ui	a8, sp, 20
	add.n	a8, a8, a8
	s16i	a8, sp, 20
	l16ui	a8, sp, 0
	add.n	a8, a8, a8
	s16i	a8, sp, 0
.L763:
	l16ui	a9, sp, 20
	l16ui	a8, sp, 16
	bgeu	a9, a8, .L766
	l16ui	a8, sp, 0
	beqz.n	a8, .L766
	l16ui	a8, sp, 20
	sext	a8, a8, 15
	bgez	a8, .L765
	j	.L766
.L768:
	l16ui	a9, sp, 16
	l16ui	a8, sp, 20
	bltu	a9, a8, .L767
	l16ui	a9, sp, 16
	l16ui	a8, sp, 20
	sub	a8, a9, a8
	s16i	a8, sp, 16
	l16ui	a9, sp, 2
	l16ui	a8, sp, 0
	or	a8, a9, a8
	s16i	a8, sp, 2
.L767:
	l16ui	a8, sp, 0
	srli	a8, a8, 1
	s16i	a8, sp, 0
	l16ui	a8, sp, 20
	srli	a8, a8, 1
	s16i	a8, sp, 20
.L766:
	l16ui	a8, sp, 0
	bnez.n	a8, .L768
	l32i	a8, sp, 24
	beqz.n	a8, .L769
	l16ui	a8, sp, 16
	j	.L770
.L769:
	l16ui	a8, sp, 2
.L770:
	mov.n	a2, a8
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	movi.n	a8, 1
	s32i	a8, sp, 0
	movi.n	a8, 0
	s32i	a8, sp, 4
	j	.L772
.L774:
	l32i	a8, sp, 20
	add.n	a8, a8, a8
	s32i	a8, sp, 20
	l32i	a8, sp, 0
	add.n	a8, a8, a8
	s32i	a8, sp, 0
.L772:
	l32i	a9, sp, 20
	l32i	a8, sp, 16
	bgeu	a9, a8, .L775
	l32i	a8, sp, 0
	beqz.n	a8, .L775
	l32i	a8, sp, 20
	bgez	a8, .L774
	j	.L775
.L777:
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	bltu	a9, a8, .L776
	l32i	a9, sp, 16
	l32i	a8, sp, 20
	sub	a8, a9, a8
	s32i	a8, sp, 16
	l32i	a9, sp, 4
	l32i	a8, sp, 0
	or	a8, a9, a8
	s32i	a8, sp, 4
.L776:
	l32i	a8, sp, 0
	srli	a8, a8, 1
	s32i	a8, sp, 0
	l32i	a8, sp, 20
	srli	a8, a8, 1
	s32i	a8, sp, 20
.L775:
	l32i	a8, sp, 0
	bnez.n	a8, .L777
	l32i	a8, sp, 24
	beqz.n	a8, .L778
	l32i	a8, sp, 16
	j	.L779
.L778:
	l32i	a8, sp, 4
.L779:
	mov.n	a2, a8
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	s32i	a4, sp, 40
	movi.n	a8, 0x20
	s32i	a8, sp, 0
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	l32i	a9, sp, 40
	l32i	a8, sp, 0
	and	a8, a9, a8
	beqz.n	a8, .L781
	movi.n	a8, 0
	s32i	a8, sp, 20
	l32i	a9, sp, 12
	l32i	a10, sp, 40
	l32i	a8, sp, 0
	sub	a8, a10, a8
	ssl	a8
	sll	a8, a9
	s32i	a8, sp, 16
	j	.L782
.L781:
	l32i	a8, sp, 40
	bnez.n	a8, .L783
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	j	.L785
.L783:
	l32i	a9, sp, 12
	l32i	a8, sp, 40
	ssl	a8
	sll	a8, a9
	s32i	a8, sp, 20
	l32i	a8, sp, 8
	mov.n	a9, a8
	l32i	a8, sp, 40
	ssl	a8
	sll	a9, a9
	l32i	a10, sp, 12
	l32i	a11, sp, 0
	l32i	a8, sp, 40
	sub	a8, a11, a8
	ssr	a8
	srl	a8, a10
	or	a8, a9, a8
	s32i	a8, sp, 16
.L782:
	l32i	a8, sp, 16
	l32i	a9, sp, 20
.L785:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	s32i	a4, sp, 40
	movi.n	a8, 0x20
	s32i	a8, sp, 0
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	l32i	a9, sp, 40
	l32i	a8, sp, 0
	and	a8, a9, a8
	beqz.n	a8, .L787
	l32i	a9, sp, 8
	l32i	a8, sp, 0
	addi.n	a8, a8, -1
	ssr	a8
	sra	a8, a9
	s32i	a8, sp, 16
	l32i	a9, sp, 8
	l32i	a10, sp, 40
	l32i	a8, sp, 0
	sub	a8, a10, a8
	ssr	a8
	sra	a8, a9
	s32i	a8, sp, 20
	j	.L788
.L787:
	l32i	a8, sp, 40
	bnez.n	a8, .L789
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	j	.L791
.L789:
	l32i	a9, sp, 8
	l32i	a8, sp, 40
	ssr	a8
	sra	a8, a9
	s32i	a8, sp, 16
	l32i	a8, sp, 8
	mov.n	a10, a8
	l32i	a9, sp, 0
	l32i	a8, sp, 40
	sub	a8, a9, a8
	ssl	a8
	sll	a9, a10
	l32i	a10, sp, 12
	l32i	a8, sp, 40
	ssr	a8
	srl	a8, a10
	or	a8, a9, a8
	s32i	a8, sp, 20
.L788:
	l32i	a8, sp, 16
	l32i	a9, sp, 20
.L791:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__ashrdi3, .-__ashrdi3
	.literal_position
	.literal .LC139, 65280
	.literal .LC140, 16711680
	.literal .LC141, -16777216
	.align	4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a8, sp, 0
	extui	a9, a8, 24, 8
	movi.n	a11, 0
	l32i	a8, sp, 0
	srli	a12, a8, 8
	movi.n	a10, 0
	movi.n	a8, 0
	and	a10, a10, a8
	l32r	a8, .LC139
	and	a8, a12, a8
	or	a11, a11, a10
	or	a9, a9, a8
	l32i	a8, sp, 0
	slli	a10, a8, 8
	l32i	a8, sp, 4
	extui	a8, a8, 24, 8
	or	a8, a10, a8
	l32i	a10, sp, 0
	extui	a12, a10, 24, 8
	movi.n	a10, 0
	and	a10, a12, a10
	l32r	a12, .LC140
	and	a8, a8, a12
	or	a11, a11, a10
	or	a9, a9, a8
	l32i	a8, sp, 0
	slli	a10, a8, 24
	l32i	a8, sp, 4
	srli	a8, a8, 8
	or	a8, a10, a8
	l32i	a10, sp, 0
	srli	a12, a10, 8
	movi.n	a10, 0
	and	a10, a12, a10
	l32r	a12, .LC141
	and	a8, a8, a12
	or	a11, a11, a10
	or	a9, a9, a8
	l32i	a8, sp, 4
	extui	a10, a8, 24, 8
	l32i	a8, sp, 0
	slli	a8, a8, 8
	or	a8, a10, a8
	l32i	a10, sp, 4
	slli	a12, a10, 8
	extui	a10, a8, 0, 8
	movi.n	a8, 0
	and	a8, a12, a8
	or	a11, a11, a10
	or	a9, a9, a8
	l32i	a8, sp, 4
	srli	a10, a8, 8
	l32i	a8, sp, 0
	slli	a8, a8, 24
	or	a8, a10, a8
	l32i	a10, sp, 4
	slli	a12, a10, 24
	l32r	a10, .LC139
	and	a10, a8, a10
	movi.n	a8, 0
	and	a8, a12, a8
	or	a11, a11, a10
	or	a9, a9, a8
	l32i	a8, sp, 4
	slli	a10, a8, 8
	movi.n	a12, 0
	l32r	a8, .LC140
	and	a10, a10, a8
	movi.n	a8, 0
	and	a8, a12, a8
	or	a11, a11, a10
	or	a9, a9, a8
	l32i	a8, sp, 4
	slli	a10, a8, 24
	movi.n	a8, 0
	or	a10, a11, a10
	or	a8, a9, a8
	mov.n	a2, a10
	mov.n	a3, a8
	retw.n
	.size	__bswapdi2, .-__bswapdi2
	.literal_position
	.literal .LC142, 65280
	.literal .LC143, 16711680
	.align	4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a8, sp, 0
	extui	a9, a8, 24, 8
	l32i	a8, sp, 0
	srli	a10, a8, 8
	l32r	a8, .LC142
	and	a8, a10, a8
	or	a9, a9, a8
	l32i	a8, sp, 0
	slli	a10, a8, 8
	l32r	a8, .LC143
	and	a8, a10, a8
	or	a9, a9, a8
	l32i	a8, sp, 0
	slli	a8, a8, 24
	or	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__bswapsi2, .-__bswapsi2
	.literal_position
	.literal .LC144, 65535
	.literal .LC145, 65280
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 112
	s32i	a2, sp, 64
	l32i	a8, sp, 64
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	l32r	a9, .LC144
	bltu	a9, a8, .L797
	movi.n	a8, 0x10
	j	.L798
.L797:
	movi.n	a8, 0
.L798:
	s32i	a8, sp, 4
	movi.n	a9, 0x10
	l32i	a8, sp, 4
	sub	a8, a9, a8
	l32i	a9, sp, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 8
	l32i	a8, sp, 4
	s32i	a8, sp, 12
	l32i	a9, sp, 8
	l32r	a8, .LC145
	and	a8, a9, a8
	bnez.n	a8, .L799
	movi.n	a8, 8
	j	.L800
.L799:
	movi.n	a8, 0
.L800:
	s32i	a8, sp, 16
	movi.n	a9, 8
	l32i	a8, sp, 16
	sub	a8, a9, a8
	l32i	a9, sp, 8
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 20
	l32i	a8, sp, 16
	l32i	a9, sp, 12
	add.n	a8, a9, a8
	s32i	a8, sp, 24
	l32i	a9, sp, 20
	movi	a8, 0xf0
	and	a8, a9, a8
	bnez.n	a8, .L801
	movi.n	a8, 4
	j	.L802
.L801:
	movi.n	a8, 0
.L802:
	s32i	a8, sp, 28
	movi.n	a9, 4
	l32i	a8, sp, 28
	sub	a8, a9, a8
	l32i	a9, sp, 20
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 32
	l32i	a8, sp, 28
	l32i	a9, sp, 24
	add.n	a8, a9, a8
	s32i	a8, sp, 36
	l32i	a9, sp, 32
	movi.n	a8, 0xc
	and	a8, a9, a8
	bnez.n	a8, .L803
	movi.n	a8, 2
	j	.L804
.L803:
	movi.n	a8, 0
.L804:
	s32i	a8, sp, 40
	movi.n	a9, 2
	l32i	a8, sp, 40
	sub	a8, a9, a8
	l32i	a9, sp, 32
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 44
	l32i	a8, sp, 40
	l32i	a9, sp, 36
	add.n	a8, a9, a8
	s32i	a8, sp, 48
	l32i	a9, sp, 44
	movi.n	a8, 2
	and	a10, a9, a8
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a10
	extui	a8, a8, 0, 8
	mov.n	a10, a8
	movi.n	a9, 2
	l32i	a8, sp, 44
	sub	a8, a9, a8
	mull	a9, a10, a8
	l32i	a8, sp, 48
	add.n	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	l32i	a8, sp, 24
	l32i	a9, sp, 28
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	l32i	a9, sp, 0
	l32i	a8, sp, 8
	bge	a9, a8, .L807
	movi.n	a8, 0
	j	.L812
.L807:
	l32i	a8, sp, 0
	l32i	a9, sp, 8
	bge	a9, a8, .L809
	movi.n	a8, 2
	j	.L812
.L809:
	l32i	a9, sp, 4
	l32i	a8, sp, 12
	bgeu	a9, a8, .L810
	movi.n	a8, 0
	j	.L812
.L810:
	l32i	a8, sp, 4
	l32i	a9, sp, 12
	bgeu	a9, a8, .L811
	movi.n	a8, 2
	j	.L812
.L811:
	movi.n	a8, 1
.L812:
	mov.n	a2, a8
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC146, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	s32i	a5, sp, 12
	l32i	a10, sp, 8
	l32i	a11, sp, 12
	l32i	a8, sp, 0
	l32i	a9, sp, 4
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a8
	mov.n	a11, a9
	l32r	a8, .LC146
	callx8	a8
	mov.n	a8, a10
	addi.n	a8, a8, -1
	mov.n	a2, a8
	retw.n
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	entry	sp, 112
	s32i	a2, sp, 64
	l32i	a8, sp, 64
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	extui	a8, a8, 0, 16
	bnez.n	a8, .L816
	movi.n	a8, 0x10
	j	.L817
.L816:
	movi.n	a8, 0
.L817:
	s32i	a8, sp, 4
	l32i	a9, sp, 0
	l32i	a8, sp, 4
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 8
	l32i	a8, sp, 4
	s32i	a8, sp, 12
	l32i	a8, sp, 8
	extui	a8, a8, 0, 8
	bnez.n	a8, .L818
	movi.n	a8, 8
	j	.L819
.L818:
	movi.n	a8, 0
.L819:
	s32i	a8, sp, 16
	l32i	a9, sp, 8
	l32i	a8, sp, 16
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 20
	l32i	a8, sp, 16
	l32i	a9, sp, 12
	add.n	a8, a9, a8
	s32i	a8, sp, 24
	l32i	a8, sp, 20
	extui	a8, a8, 0, 4
	bnez.n	a8, .L820
	movi.n	a8, 4
	j	.L821
.L820:
	movi.n	a8, 0
.L821:
	s32i	a8, sp, 28
	l32i	a9, sp, 20
	l32i	a8, sp, 28
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 32
	l32i	a8, sp, 28
	l32i	a9, sp, 24
	add.n	a8, a9, a8
	s32i	a8, sp, 36
	l32i	a8, sp, 32
	extui	a8, a8, 0, 2
	bnez.n	a8, .L822
	movi.n	a8, 2
	j	.L823
.L822:
	movi.n	a8, 0
.L823:
	s32i	a8, sp, 40
	l32i	a9, sp, 32
	l32i	a8, sp, 40
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 44
	l32i	a8, sp, 44
	extui	a8, a8, 0, 2
	s32i	a8, sp, 48
	l32i	a8, sp, 40
	l32i	a9, sp, 36
	add.n	a8, a9, a8
	s32i	a8, sp, 52
	l32i	a9, sp, 48
	movi.n	a8, -1
	xor	a8, a9, a8
	extui	a9, a8, 0, 1
	l32i	a8, sp, 48
	srli	a8, a8, 1
	movi.n	a10, 2
	sub	a8, a10, a8
	neg	a9, a9
	and	a9, a9, a8
	l32i	a8, sp, 52
	add.n	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	s32i	a4, sp, 40
	movi.n	a8, 0x20
	s32i	a8, sp, 0
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	l32i	a9, sp, 40
	l32i	a8, sp, 0
	and	a8, a9, a8
	beqz.n	a8, .L826
	movi.n	a8, 0
	s32i	a8, sp, 16
	l32i	a9, sp, 8
	l32i	a10, sp, 40
	l32i	a8, sp, 0
	sub	a8, a10, a8
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 20
	j	.L827
.L826:
	l32i	a8, sp, 40
	bnez.n	a8, .L828
	l32i	a9, sp, 32
	l32i	a8, sp, 36
	j	.L830
.L828:
	l32i	a9, sp, 8
	l32i	a8, sp, 40
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 16
	l32i	a9, sp, 8
	l32i	a10, sp, 0
	l32i	a8, sp, 40
	sub	a8, a10, a8
	ssl	a8
	sll	a9, a9
	l32i	a10, sp, 12
	l32i	a8, sp, 40
	ssr	a8
	srl	a8, a10
	or	a8, a9, a8
	s32i	a8, sp, 20
.L827:
	l32i	a9, sp, 16
	l32i	a8, sp, 20
.L830:
	mov.n	a2, a9
	mov.n	a3, a8
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	movi.n	a8, 0x10
	s32i	a8, sp, 0
	movi.n	a9, -1
	l32i	a8, sp, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 4
	l32i	a9, sp, 32
	l32i	a8, sp, 4
	and	a9, a9, a8
	l32i	a10, sp, 36
	l32i	a8, sp, 4
	and	a8, a10, a8
	mull	a8, a9, a8
	s32i	a8, sp, 28
	l32i	a9, sp, 28
	l32i	a8, sp, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 8
	l32i	a9, sp, 28
	l32i	a8, sp, 4
	and	a8, a9, a8
	s32i	a8, sp, 28
	l32i	a9, sp, 32
	l32i	a8, sp, 0
	ssr	a8
	srl	a9, a9
	l32i	a10, sp, 36
	l32i	a8, sp, 4
	and	a8, a10, a8
	mull	a8, a9, a8
	l32i	a9, sp, 8
	add.n	a8, a9, a8
	s32i	a8, sp, 12
	l32i	a9, sp, 28
	l32i	a10, sp, 12
	l32i	a8, sp, 4
	and	a10, a10, a8
	l32i	a8, sp, 0
	ssl	a8
	sll	a8, a10
	add.n	a8, a9, a8
	s32i	a8, sp, 28
	l32i	a9, sp, 12
	l32i	a8, sp, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 24
	l32i	a9, sp, 28
	l32i	a8, sp, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, sp, 16
	l32i	a9, sp, 28
	l32i	a8, sp, 4
	and	a8, a9, a8
	s32i	a8, sp, 28
	l32i	a9, sp, 36
	l32i	a8, sp, 0
	ssr	a8
	srl	a9, a9
	l32i	a10, sp, 32
	l32i	a8, sp, 4
	and	a8, a10, a8
	mull	a8, a9, a8
	l32i	a9, sp, 16
	add.n	a8, a9, a8
	s32i	a8, sp, 20
	l32i	a9, sp, 28
	l32i	a10, sp, 20
	l32i	a8, sp, 4
	and	a10, a10, a8
	l32i	a8, sp, 0
	ssl	a8
	sll	a8, a10
	add.n	a8, a9, a8
	s32i	a8, sp, 28
	l32i	a8, sp, 24
	mov.n	a10, a8
	l32i	a9, sp, 20
	l32i	a8, sp, 0
	ssr	a8
	srl	a8, a9
	add.n	a8, a10, a8
	s32i	a8, sp, 24
	l32i	a8, sp, 24
	mov.n	a11, a8
	l32i	a9, sp, 32
	l32i	a8, sp, 0
	ssr	a8
	srl	a9, a9
	l32i	a10, sp, 36
	l32i	a8, sp, 0
	ssr	a8
	srl	a8, a10
	mull	a8, a9, a8
	add.n	a8, a11, a8
	s32i	a8, sp, 24
	l32i	a8, sp, 24
	l32i	a9, sp, 28
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC147, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	s32i	a4, sp, 40
	s32i	a5, sp, 44
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	l32i	a8, sp, 40
	l32i	a9, sp, 44
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	l32i	a8, sp, 4
	l32i	a9, sp, 12
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC147
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i	a8, sp, 16
	s32i	a9, sp, 20
	l32i	a8, sp, 16
	mov.n	a10, a8
	l32i	a8, sp, 0
	mov.n	a9, a8
	l32i	a8, sp, 12
	mull	a9, a9, a8
	l32i	a8, sp, 4
	l32i	a11, sp, 8
	mull	a8, a8, a11
	add.n	a8, a9, a8
	add.n	a8, a10, a8
	s32i	a8, sp, 16
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	l32i	a8, sp, 0
	l32i	a9, sp, 4
	movi.n	a10, 0
	movi.n	a11, 0
	sub	a8, a11, a8
	bgeu	a10, a9, .L836
	addi.n	a8, a8, -1
.L836:
	sub	a9, a10, a9
	mov.n	a10, a8
	mov.n	a8, a9
	mov.n	a2, a10
	mov.n	a3, a8
	retw.n
	.size	__negdi2, .-__negdi2
	.literal_position
	.literal .LC148, 27030
	.align	4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	entry	sp, 80
	s32i	a2, sp, 32
	s32i	a3, sp, 36
	l32i	a8, sp, 32
	l32i	a9, sp, 36
	s32i	a8, sp, 16
	s32i	a9, sp, 20
	l32i	a8, sp, 16
	mov.n	a9, a8
	l32i	a8, sp, 20
	xor	a8, a9, a8
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	extui	a8, a8, 16, 16
	l32i	a9, sp, 0
	xor	a8, a9, a8
	s32i	a8, sp, 4
	l32i	a8, sp, 4
	srli	a8, a8, 8
	l32i	a9, sp, 4
	xor	a8, a9, a8
	s32i	a8, sp, 8
	l32i	a8, sp, 8
	srli	a8, a8, 4
	l32i	a9, sp, 8
	xor	a8, a9, a8
	s32i	a8, sp, 12
	l32i	a8, sp, 12
	extui	a8, a8, 0, 4
	l32r	a9, .LC148
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	mov.n	a2, a8
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC149, 27030
	.align	4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	entry	sp, 64
	s32i	a2, sp, 16
	l32i	a8, sp, 16
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	extui	a8, a8, 16, 16
	l32i	a9, sp, 0
	xor	a8, a9, a8
	s32i	a8, sp, 4
	l32i	a8, sp, 4
	srli	a8, a8, 8
	l32i	a9, sp, 4
	xor	a8, a9, a8
	s32i	a8, sp, 8
	l32i	a8, sp, 8
	srli	a8, a8, 4
	l32i	a9, sp, 8
	xor	a8, a9, a8
	s32i	a8, sp, 12
	l32i	a8, sp, 12
	extui	a8, a8, 0, 4
	l32r	a9, .LC149
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	mov.n	a2, a8
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC150, 1431655765
	.literal .LC151, 858993459
	.literal .LC152, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 96
	s32i	a2, sp, 48
	s32i	a3, sp, 52
	l32i	a8, sp, 48
	l32i	a9, sp, 52
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	l32i	a8, sp, 0
	slli	a9, a8, 31
	l32i	a8, sp, 4
	srli	a8, a8, 1
	or	a8, a9, a8
	l32i	a9, sp, 0
	srli	a10, a9, 1
	l32r	a9, .LC150
	and	a11, a10, a9
	l32r	a9, .LC150
	and	a9, a8, a9
	l32i	a8, sp, 0
	l32i	a10, sp, 4
	sub	a8, a8, a11
	bgeu	a10, a9, .L843
	addi.n	a8, a8, -1
.L843:
	sub	a9, a10, a9
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	l32i	a8, sp, 8
	slli	a9, a8, 30
	l32i	a8, sp, 12
	srli	a8, a8, 2
	or	a8, a9, a8
	l32i	a9, sp, 8
	srli	a10, a9, 2
	l32r	a9, .LC151
	and	a11, a10, a9
	l32r	a9, .LC151
	and	a9, a8, a9
	l32i	a10, sp, 8
	l32r	a8, .LC151
	and	a8, a10, a8
	l32i	a12, sp, 12
	l32r	a10, .LC151
	and	a10, a12, a10
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a9, a10, .L844
	addi.n	a8, a8, 1
.L844:
	s32i	a8, sp, 16
	s32i	a9, sp, 20
	l32i	a8, sp, 16
	slli	a8, a8, 28
	l32i	a9, sp, 20
	srli	a9, a9, 4
	or	a9, a8, a9
	l32i	a8, sp, 16
	srli	a11, a8, 4
	l32i	a8, sp, 16
	l32i	a10, sp, 20
	add.n	a8, a11, a8
	add.n	a9, a9, a10
	bgeu	a9, a10, .L845
	addi.n	a8, a8, 1
.L845:
	l32r	a10, .LC152
	and	a8, a8, a10
	s32i	a8, sp, 24
	l32r	a8, .LC152
	and	a8, a9, a8
	s32i	a8, sp, 28
	l32i	a8, sp, 28
	l32i	a9, sp, 24
	srli	a9, a9, 0
	add.n	a8, a8, a9
	s32i	a8, sp, 32
	l32i	a8, sp, 32
	extui	a8, a8, 16, 16
	l32i	a9, sp, 32
	add.n	a8, a9, a8
	s32i	a8, sp, 36
	l32i	a8, sp, 36
	srli	a9, a8, 8
	l32i	a8, sp, 36
	add.n	a8, a9, a8
	extui	a8, a8, 0, 7
	mov.n	a2, a8
	retw.n
	.size	__popcountdi2, .-__popcountdi2
	.literal_position
	.literal .LC153, 1431655765
	.literal .LC154, 858993459
	.literal .LC155, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 80
	s32i	a2, sp, 32
	l32i	a8, sp, 32
	s32i	a8, sp, 0
	l32i	a8, sp, 0
	srli	a9, a8, 1
	l32r	a8, .LC153
	and	a8, a9, a8
	l32i	a9, sp, 0
	sub	a8, a9, a8
	s32i	a8, sp, 4
	l32i	a8, sp, 4
	srli	a9, a8, 2
	l32r	a8, .LC154
	and	a9, a9, a8
	l32i	a10, sp, 4
	l32r	a8, .LC154
	and	a8, a10, a8
	add.n	a8, a9, a8
	s32i	a8, sp, 8
	l32i	a8, sp, 8
	srli	a9, a8, 4
	l32i	a8, sp, 8
	add.n	a9, a9, a8
	l32r	a8, .LC155
	and	a8, a9, a8
	s32i	a8, sp, 12
	l32i	a8, sp, 12
	extui	a8, a8, 16, 16
	l32i	a9, sp, 12
	add.n	a8, a9, a8
	s32i	a8, sp, 16
	l32i	a8, sp, 16
	srli	a9, a8, 8
	l32i	a8, sp, 16
	add.n	a8, a9, a8
	extui	a8, a8, 0, 6
	mov.n	a2, a8
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC157, __muldf3@PLT
	.literal .LC158, __divdf3@PLT
	.literal .LC159, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 64
	s32i.n	a2, sp, 16
	s32i.n	a3, sp, 20
	s32i	a4, sp, 24
	l32i	a8, sp, 24
	extui	a8, a8, 31, 1
	extui	a8, a8, 0, 8
	s32i	a8, sp, 8
	l32r	a8, .LC159
	movi.n	a9, 0
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L853:
	l32i	a8, sp, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L850
	l32r	a8, .LC157
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	l32i.n	a10, sp, 0
	l32i.n	a11, sp, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
.L850:
	l32i	a8, sp, 24
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, sp, 24
	l32i	a8, sp, 24
	beqz.n	a8, .L858
	l32r	a8, .LC157
	l32i.n	a12, sp, 16
	l32i.n	a13, sp, 20
	l32i.n	a10, sp, 16
	l32i.n	a11, sp, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
	j	.L853
.L858:
	nop.n
	l32i	a8, sp, 8
	beqz.n	a8, .L854
	l32r	a8, .LC158
	l32i.n	a12, sp, 0
	l32i.n	a13, sp, 4
	l32r	a10, .LC159
	movi.n	a11, 0
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	j	.L856
.L854:
	l32i.n	a8, sp, 0
	l32i.n	a9, sp, 4
.L856:
	nop.n
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC161, __mulsf3@PLT
	.literal .LC162, __divsf3@PLT
	.literal .LC163, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 64
	s32i.n	a2, sp, 16
	s32i	a3, sp, 20
	l32i	a8, sp, 20
	extui	a8, a8, 31, 1
	extui	a8, a8, 0, 8
	s32i	a8, sp, 4
	l32r	a8, .LC163
	s32i.n	a8, sp, 0
.L863:
	l32i	a8, sp, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L860
	l32r	a8, .LC161
	l32i.n	a11, sp, 16
	l32i.n	a10, sp, 0
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, sp, 0
.L860:
	l32i	a8, sp, 20
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, sp, 20
	l32i	a8, sp, 20
	beqz.n	a8, .L868
	l32r	a8, .LC161
	l32i.n	a11, sp, 16
	l32i.n	a10, sp, 16
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, sp, 16
	j	.L863
.L868:
	nop.n
	l32i	a8, sp, 4
	beqz.n	a8, .L864
	l32r	a8, .LC162
	l32i.n	a11, sp, 0
	l32r	a10, .LC163
	callx8	a8
	mov.n	a8, a10
	j	.L866
.L864:
	l32i.n	a8, sp, 0
.L866:
	nop.n
	mov.n	a2, a8
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 64
	s32i	a2, sp, 16
	s32i	a3, sp, 20
	s32i	a4, sp, 24
	s32i	a5, sp, 28
	l32i	a8, sp, 16
	l32i	a9, sp, 20
	s32i	a8, sp, 0
	s32i	a9, sp, 4
	l32i	a8, sp, 24
	l32i	a9, sp, 28
	s32i	a8, sp, 8
	s32i	a9, sp, 12
	l32i	a9, sp, 0
	l32i	a8, sp, 8
	bgeu	a9, a8, .L870
	movi.n	a8, 0
	j	.L875
.L870:
	l32i	a8, sp, 0
	l32i	a9, sp, 8
	bgeu	a9, a8, .L872
	movi.n	a8, 2
	j	.L875
.L872:
	l32i	a9, sp, 4
	l32i	a8, sp, 12
	bgeu	a9, a8, .L873
	movi.n	a8, 0
	j	.L875
.L873:
	l32i	a8, sp, 4
	l32i	a9, sp, 12
	bgeu	a9, a8, .L874
	movi.n	a8, 2
	j	.L875
.L874:
	movi.n	a8, 1
.L875:
	mov.n	a2, a8
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC164, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	s32i	a5, sp, 12
	l32i	a8, sp, 0
	l32i	a9, sp, 4
	l32i	a10, sp, 8
	l32i	a11, sp, 12
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a8
	mov.n	a11, a9
	l32r	a8, .LC164
	callx8	a8
	mov.n	a8, a10
	addi.n	a8, a8, -1
	mov.n	a2, a8
	retw.n
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.global	__divsf3
	.global	__umulsidi3
	.global	__umulsidi3
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
	.global	__divdf3
	.global	__gedf2
	.global	__muldf3
	.global	__nedf2
	.global	__adddf3
	.global	__mulsf3
	.global	__nesf2
	.global	__addsf3
	.global	__floatsidf
	.global	__moddi3
	.global	__divdi3
	.global	__umulsidi3
	.global	__umulsidi3
	.global	__ltsf2
	.global	__ltdf2
	.global	__subsf3
	.global	__gtsf2
	.global	__unordsf2
	.global	__subdf3
	.global	__gtdf2
	.global	__unorddf2
	.ident	"GCC: (GNU) 14.2.1 20240912 (Red Hat Cross 14.2.1-1)"
	.section	.note.GNU-stack,"",@progbits
