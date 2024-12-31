	.file	"mini-libc.c"
	.text
	.align	4
	.global	memmove
	.type	memmove, @function
memmove:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	l32i	a9, a7, 4
	l32i	a8, a7, 0
	bgeu	a9, a8, .L2
	l32i	a9, a7, 4
	l32i	a8, a7, 24
	add.n	a8, a9, a8
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 24
	add.n	a8, a9, a8
	s32i	a8, a7, 0
	j	.L3
.L4:
	l32i	a8, a7, 4
	addi.n	a8, a8, -1
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	addi.n	a8, a8, -1
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	l8ui	a9, a8, 0
	l32i	a8, a7, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L3:
	l32i	a8, a7, 24
	bnez.n	a8, .L4
	j	.L5
.L2:
	l32i	a9, a7, 4
	l32i	a8, a7, 0
	beq	a9, a8, .L5
	j	.L6
.L7:
	l32i	a9, a7, 4
	addi.n	a8, a9, 1
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	addi.n	a10, a8, 1
	s32i	a10, a7, 0
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L6:
	l32i	a8, a7, 24
	bnez.n	a8, .L7
.L5:
	l32i	a8, a7, 16
	mov.n	a2, a8
	retw.n
	.size	memmove, .-memmove
	.align	4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	l32i	a8, a7, 24
	extui	a8, a8, 0, 8
	s32i	a8, a7, 24
	j	.L10
.L12:
	l32i	a8, a7, 28
	addi.n	a8, a8, -1
	s32i	a8, a7, 28
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L10:
	l32i	a8, a7, 28
	beqz.n	a8, .L11
	l32i	a8, a7, 4
	l8ui	a9, a8, 0
	l32i	a8, a7, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, a7, 24
	bne	a8, a9, .L12
.L11:
	l32i	a8, a7, 28
	beqz.n	a8, .L13
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	extui	a8, a8, 0, 8
	s32i	a8, a7, 20
	j	.L16
.L18:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L16:
	l32i	a8, a7, 24
	beqz.n	a8, .L17
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, a7, 20
	bne	a8, a9, .L18
.L17:
	l32i	a8, a7, 24
	beqz.n	a8, .L19
	l32i	a8, a7, 0
	j	.L21
.L19:
	movi.n	a8, 0
.L21:
	mov.n	a2, a8
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	j	.L23
.L25:
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
.L23:
	l32i	a8, a7, 24
	beqz.n	a8, .L24
	l32i	a8, a7, 0
	l8ui	a9, a8, 0
	l32i	a8, a7, 4
	l8ui	a8, a8, 0
	beq	a9, a8, .L25
.L24:
	l32i	a8, a7, 24
	beqz.n	a8, .L26
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, a7, 4
	l8ui	a8, a8, 0
	sub	a8, a9, a8
	j	.L28
.L26:
	movi.n	a8, 0
.L28:
	mov.n	a2, a8
	retw.n
	.size	memcmp, .-memcmp
	.align	4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	j	.L30
.L31:
	l32i	a9, a7, 4
	addi.n	a8, a9, 1
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	addi.n	a10, a8, 1
	s32i	a10, a7, 0
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L30:
	l32i	a8, a7, 24
	bnez.n	a8, .L31
	l32i	a8, a7, 16
	mov.n	a2, a8
	retw.n
	.size	memcpy, .-memcpy
	.align	4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	extui	a8, a8, 0, 8
	s32i	a8, a7, 20
	j	.L34
.L36:
	l32i	a9, a7, 0
	l32i	a8, a7, 24
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, a7, 20
	bne	a8, a9, .L34
	l32i	a9, a7, 0
	l32i	a8, a7, 24
	add.n	a8, a9, a8
	j	.L35
.L34:
	l32i	a8, a7, 24
	addi.n	a9, a8, -1
	s32i	a9, a7, 24
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	j	.L38
.L39:
	l32i	a8, a7, 20
	extui	a9, a8, 0, 8
	l32i	a8, a7, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L38:
	l32i	a8, a7, 24
	bnez.n	a8, .L39
	l32i	a8, a7, 16
	mov.n	a2, a8
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	j	.L42
.L43:
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L42:
	l32i	a8, a7, 4
	l8ui	a9, a8, 0
	l32i	a8, a7, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L43
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a8, a7, 4
	extui	a8, a8, 0, 8
	s32i	a8, a7, 4
	j	.L46
.L48:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L46:
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	beqz.n	a8, .L47
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, a7, 4
	bne	a8, a9, .L48
.L47:
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 48
	mov.n	a7, sp
	mov.n	a8, a2
	s32i	a3, a7, 0
.L53:
	l8ui	a9, a8, 0
	mov.n	a10, a9
	l32i	a9, a7, 0
	bne	a9, a10, .L51
	j	.L52
.L51:
	mov.n	a9, a8
	addi.n	a8, a9, 1
	l8ui	a9, a9, 0
	bnez.n	a9, .L53
	movi.n	a8, 0
.L52:
	mov.n	a2, a8
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	j	.L55
.L57:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
.L55:
	l32i	a8, a7, 0
	l8ui	a9, a8, 0
	l32i	a8, a7, 4
	l8ui	a8, a8, 0
	bne	a9, a8, .L56
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L57
.L56:
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	j	.L60
.L61:
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
.L60:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	bnez.n	a8, .L61
	l32i	a9, a7, 16
	l32i	a8, a7, 0
	sub	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	l32i	a8, a7, 24
	addi.n	a9, a8, -1
	s32i	a9, a7, 24
	bnez.n	a8, .L66
	movi.n	a8, 0
	j	.L65
.L68:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L66:
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	beqz.n	a8, .L67
	l32i	a8, a7, 4
	l8ui	a8, a8, 0
	beqz.n	a8, .L67
	l32i	a8, a7, 24
	beqz.n	a8, .L67
	l32i	a8, a7, 0
	l8ui	a9, a8, 0
	l32i	a8, a7, 4
	l8ui	a8, a8, 0
	beq	a9, a8, .L68
.L67:
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	mov.n	a9, a8
	l32i	a8, a7, 4
	l8ui	a8, a8, 0
	sub	a8, a9, a8
.L65:
	mov.n	a2, a8
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	j	.L70
.L71:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	l32i	a8, a7, 4
	s8i	a9, a8, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	l32i	a9, a7, 0
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 2
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	addi.n	a8, a8, 2
	s32i	a8, a7, 0
	l32i	a8, a7, 24
	addi	a8, a8, -2
	s32i	a8, a7, 24
.L70:
	l32i	a8, a7, 24
	bgei	a8, 2, .L71
	nop.n
	nop.n
	retw.n
	.size	swab, .-swab
	.align	4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a9, a7, 0
	movi.n	a8, 0x20
	or	a8, a9, a8
	addi	a9, a8, -97
	movi.n	a8, 1
	movi.n	a10, 0x19
	bgeu	a10, a9, .L73
	movi.n	a8, 0
.L73:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a9, a7, 0
	movi.n	a8, 1
	bltui	a9, 128, .L76
	movi.n	a8, 0
.L76:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	beqi	a8, 32, .L79
	l32i	a9, a7, 0
	movi.n	a8, 9
	bne	a9, a8, .L80
.L79:
	movi.n	a8, 1
	j	.L82
.L80:
	movi.n	a8, 0
.L82:
	mov.n	a2, a8
	retw.n
	.size	isblank, .-isblank
	.align	4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	bltui	a8, 32, .L84
	l32i	a9, a7, 0
	movi	a8, 0x7f
	bne	a9, a8, .L85
.L84:
	movi.n	a8, 1
	j	.L87
.L85:
	movi.n	a8, 0
.L87:
	mov.n	a2, a8
	retw.n
	.size	iscntrl, .-iscntrl
	.align	4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	addi	a9, a8, -48
	movi.n	a8, 1
	bltui	a9, 10, .L89
	movi.n	a8, 0
.L89:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isdigit, .-isdigit
	.align	4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	addi	a9, a8, -33
	movi.n	a8, 1
	movi.n	a10, 0x5d
	bgeu	a10, a9, .L92
	movi.n	a8, 0
.L92:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isgraph, .-isgraph
	.align	4
	.global	islower
	.type	islower, @function
islower:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	addi	a9, a8, -97
	movi.n	a8, 1
	movi.n	a10, 0x19
	bgeu	a10, a9, .L95
	movi.n	a8, 0
.L95:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	islower, .-islower
	.align	4
	.global	isprint
	.type	isprint, @function
isprint:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	addi	a9, a8, -32
	movi.n	a8, 1
	movi.n	a10, 0x5e
	bgeu	a10, a9, .L98
	movi.n	a8, 0
.L98:
	extui	a8, a8, 0, 8
	mov.n	a2, a8
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	beqi	a8, 32, .L101
	l32i	a8, a7, 0
	addi	a8, a8, -9
	bgeui	a8, 5, .L102
.L101:
	movi.n	a8, 1
	j	.L104
.L102:
	movi.n	a8, 0
.L104:
	mov.n	a2, a8
	retw.n
	.size	isspace, .-isspace
	.align	4
	.global	isupper
	.type	isupper, @function
isupper:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	addi	a9, a8, -65
	movi.n	a8, 1
	movi.n	a10, 0x19
	bgeu	a10, a9, .L106
	movi.n	a8, 0
.L106:
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	bltui	a8, 32, .L109
	l32i	a8, a7, 0
	addi	a8, a8, -127
	movi.n	a9, 0x20
	bgeu	a9, a8, .L109
	l32i	a9, a7, 0
	l32r	a8, .LC0
	add.n	a8, a9, a8
	bltui	a8, 2, .L109
	l32i	a9, a7, 0
	l32r	a8, .LC1
	add.n	a8, a9, a8
	bgeui	a8, 3, .L110
.L109:
	movi.n	a8, 1
	j	.L112
.L110:
	movi.n	a8, 0
.L112:
	mov.n	a2, a8
	retw.n
	.size	iswcntrl, .-iswcntrl
	.align	4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	addi	a9, a8, -48
	movi.n	a8, 1
	bltui	a9, 10, .L114
	movi.n	a8, 0
.L114:
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	movi	a9, 0xfe
	bltu	a9, a8, .L117
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	extui	a9, a8, 0, 7
	movi.n	a8, 1
	movi.n	a10, 0x20
	bltu	a10, a9, .L118
	movi.n	a8, 0
.L118:
	extui	a8, a8, 0, 8
	j	.L119
.L117:
	l32i	a8, a7, 0
	l32r	a9, .LC2
	bgeu	a9, a8, .L120
	l32i	a9, a7, 0
	l32r	a8, .LC3
	add.n	a8, a9, a8
	l32r	a9, .LC4
	bgeu	a9, a8, .L120
	l32i	a9, a7, 0
	l32r	a8, .LC5
	add.n	a8, a9, a8
	l32r	a9, .LC6
	bltu	a9, a8, .L121
.L120:
	movi.n	a8, 1
	j	.L119
.L121:
	l32i	a9, a7, 0
	l32r	a8, .LC7
	add.n	a8, a9, a8
	l32r	a9, .LC8
	bltu	a9, a8, .L122
	l32i	a9, a7, 0
	l32r	a8, .LC9
	and	a9, a9, a8
	l32r	a8, .LC9
	bne	a9, a8, .L123
.L122:
	movi.n	a8, 0
	j	.L119
.L123:
	movi.n	a8, 1
.L119:
	mov.n	a2, a8
	retw.n
	.size	iswprint, .-iswprint
	.align	4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L125
	l32i	a9, a7, 0
	movi.n	a8, 0x20
	or	a8, a9, a8
	addi	a8, a8, -97
	bgeui	a8, 6, .L126
.L125:
	movi.n	a8, 1
	j	.L128
.L126:
	movi.n	a8, 0
.L128:
	mov.n	a2, a8
	retw.n
	.size	iswxdigit, .-iswxdigit
	.align	4
	.global	toascii
	.type	toascii, @function
toascii:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	s32i.n	a4, a7, 8
	s32i.n	a5, a7, 12
	l32r	a8, .LC10
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L143
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L134
.L143:
	l32r	a8, .LC10
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 8
	l32i.n	a11, a7, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L144
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L134
.L144:
	l32r	a8, .LC11
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L145
	l32r	a8, .LC12
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	j	.L134
.L145:
	movi.n	a8, 0
	movi.n	a9, 0
.L134:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	l32r	a8, .LC14
	l32i.n	a11, a7, 0
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L158
	l32i.n	a8, a7, 0
	j	.L149
.L158:
	l32r	a8, .LC14
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L159
	l32i.n	a8, a7, 4
	j	.L149
.L159:
	l32r	a8, .LC15
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L160
	l32r	a8, .LC16
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	j	.L149
.L160:
	movi.n	a8, 0
.L149:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	s32i.n	a4, a7, 8
	s32i.n	a5, a7, 12
	l32r	a8, .LC18
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L176
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L164
.L176:
	l32r	a8, .LC18
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 8
	l32i.n	a11, a7, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L177
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L164
.L177:
	l32i	a9, a7, 0
	l32r	a8, .LC19
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, a7, 8
	l32r	a8, .LC19
	and	a8, a9, a8
	beq	a10, a8, .L167
	l32i	a9, a7, 0
	l32r	a8, .LC19
	and	a8, a9, a8
	beqz.n	a8, .L168
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L164
.L168:
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L164
.L167:
	l32r	a8, .LC20
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L178
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L164
.L178:
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
.L164:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	l32r	a8, .LC21
	l32i.n	a11, a7, 0
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L194
	l32i.n	a8, a7, 4
	j	.L182
.L194:
	l32r	a8, .LC21
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L195
	l32i.n	a8, a7, 0
	j	.L182
.L195:
	l32i	a9, a7, 0
	l32r	a8, .LC22
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, a7, 4
	l32r	a8, .LC22
	and	a8, a9, a8
	beq	a10, a8, .L185
	l32i	a9, a7, 0
	l32r	a8, .LC22
	and	a8, a9, a8
	beqz.n	a8, .L186
	l32i.n	a8, a7, 4
	j	.L182
.L186:
	l32i.n	a8, a7, 0
	j	.L182
.L185:
	l32r	a8, .LC23
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L196
	l32i.n	a8, a7, 4
	j	.L182
.L196:
	l32i.n	a8, a7, 0
.L182:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	s32i.n	a4, a7, 8
	s32i.n	a5, a7, 12
	l32r	a8, .LC24
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L212
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L200
.L212:
	l32r	a8, .LC24
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 8
	l32i.n	a11, a7, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L213
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L200
.L213:
	l32i	a9, a7, 0
	l32r	a8, .LC25
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, a7, 8
	l32r	a8, .LC25
	and	a8, a9, a8
	beq	a10, a8, .L203
	l32i	a9, a7, 0
	l32r	a8, .LC25
	and	a8, a9, a8
	beqz.n	a8, .L204
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L200
.L204:
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L200
.L203:
	l32r	a8, .LC26
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L214
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L200
.L214:
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
.L200:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	s32i.n	a4, a7, 8
	s32i.n	a5, a7, 12
	l32r	a8, .LC27
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L230
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L218
.L230:
	l32r	a8, .LC27
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 8
	l32i.n	a11, a7, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L231
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L218
.L231:
	l32i	a9, a7, 0
	l32r	a8, .LC28
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, a7, 8
	l32r	a8, .LC28
	and	a8, a9, a8
	beq	a10, a8, .L221
	l32i	a9, a7, 0
	l32r	a8, .LC28
	and	a8, a9, a8
	beqz.n	a8, .L222
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L218
.L222:
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L218
.L221:
	l32r	a8, .LC29
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L232
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L218
.L232:
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
.L218:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	l32r	a8, .LC30
	l32i.n	a11, a7, 0
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L248
	l32i.n	a8, a7, 4
	j	.L236
.L248:
	l32r	a8, .LC30
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L249
	l32i.n	a8, a7, 0
	j	.L236
.L249:
	l32i	a9, a7, 0
	l32r	a8, .LC31
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, a7, 4
	l32r	a8, .LC31
	and	a8, a9, a8
	beq	a10, a8, .L239
	l32i	a9, a7, 0
	l32r	a8, .LC31
	and	a8, a9, a8
	beqz.n	a8, .L240
	l32i.n	a8, a7, 0
	j	.L236
.L240:
	l32i.n	a8, a7, 4
	j	.L236
.L239:
	l32r	a8, .LC32
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L250
	l32i.n	a8, a7, 0
	j	.L236
.L250:
	l32i.n	a8, a7, 4
.L236:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	s32i.n	a4, a7, 8
	s32i.n	a5, a7, 12
	l32r	a8, .LC33
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L266
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L254
.L266:
	l32r	a8, .LC33
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 8
	l32i.n	a11, a7, 12
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L267
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L254
.L267:
	l32i	a9, a7, 0
	l32r	a8, .LC34
	and	a8, a9, a8
	mov.n	a10, a8
	l32i	a9, a7, 8
	l32r	a8, .LC34
	and	a8, a9, a8
	beq	a10, a8, .L257
	l32i	a9, a7, 0
	l32r	a8, .LC34
	and	a8, a9, a8
	beqz.n	a8, .L258
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L254
.L258:
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
	j	.L254
.L257:
	l32r	a8, .LC35
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L268
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	j	.L254
.L268:
	l32i.n	a8, a7, 8
	l32i.n	a9, a7, 12
.L254:
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 4
	l32r	a8, .LC36
	s32i	a8, a7, 0
	j	.L270
.L271:
	l32i	a8, a7, 4
	extui	a8, a8, 0, 6
	l32r	a9, .LC37
	add.n	a8, a9, a8
	l8ui	a9, a8, 0
	l32i	a8, a7, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	srli	a8, a8, 6
	s32i	a8, a7, 4
.L270:
	l32i	a8, a7, 4
	bnez.n	a8, .L271
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a10, a7, 0
	addi.n	a10, a10, -1
	mov.n	a9, a10
	movi.n	a8, 0
	l32r	a10, .LC38
	s32i	a8, a10, 0
	s32i	a9, a10, 4
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
	entry	sp, 48
	mov.n	a7, sp
	l32r	a8, .LC39
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	l32r	a10, .LC40
	mull	a11, a8, a10
	l32r	a10, .LC41
	mull	a10, a9, a10
	add.n	a6, a11, a10
	l32r	a10, .LC40
	mov.n	a11, a10
	mov.n	a10, a9
	l32r	a8, .LC42
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	add.n	a10, a6, a8
	mov.n	a8, a10
	movi.n	a3, 1
	movi.n	a2, 0
	add.n	a4, a8, a2
	add.n	a5, a9, a3
	bgeu	a5, a3, .L275
	addi.n	a4, a4, 1
.L275:
	l32r	a8, .LC39
	s32i	a4, a8, 0
	s32i	a5, a8, 4
	l32r	a8, .LC39
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	srli	a8, a8, 1
	s32i	a8, a7, 4
	movi.n	a8, 0
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	mov.n	a2, a8
	retw.n
	.size	rand, .-rand
	.align	4
	.global	insque
	.type	insque, @function
insque:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	l32i	a8, a7, 4
	bnez.n	a8, .L278
	l32i	a8, a7, 0
	movi.n	a9, 0
	s32i	a9, a8, 4
	l32i	a8, a7, 0
	l32i	a9, a8, 4
	l32i	a8, a7, 0
	s32i	a9, a8, 0
	j	.L277
.L278:
	l32i	a8, a7, 4
	l32i	a9, a8, 0
	l32i	a8, a7, 0
	s32i	a9, a8, 0
	l32i	a8, a7, 0
	l32i	a9, a7, 4
	s32i	a9, a8, 4
	l32i	a8, a7, 4
	l32i	a9, a7, 0
	s32i	a9, a8, 0
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L277
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	l32i	a9, a7, 0
	s32i	a9, a8, 4
.L277:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L281
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	l32i	a9, a7, 0
	l32i	a9, a9, 4
	s32i	a9, a8, 4
.L281:
	l32i	a8, a7, 0
	l32i	a8, a8, 4
	beqz.n	a8, .L283
	l32i	a8, a7, 0
	l32i	a8, a8, 4
	l32i	a9, a7, 0
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L283:
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	s32i	a6, a7, 32
	l32i	a6, a7, 28
	mov.n	a12, a6
	addi.n	a12, a12, -1
	s32i	a12, a7, 4
	mov.n	a9, a6
	movi.n	a8, 0
	extui	a12, a9, 29, 3
	slli	a10, a8, 3
	or	a10, a12, a10
	slli	a11, a9, 3
	l32i	a8, a7, 20
	s32i	a8, a7, 8
	l32i	a8, a7, 24
	l32i	a8, a8, 0
	s32i	a8, a7, 12
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L285
.L288:
	l32i	a8, a7, 0
	mull	a8, a6, a8
	l32i	a9, a7, 8
	add.n	a9, a9, a8
	l32i	a8, a7, 32
	mov.n	a11, a9
	l32i	a10, a7, 16
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L286
	l32i	a8, a7, 0
	mull	a8, a6, a8
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	j	.L287
.L286:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L285:
	l32i	a9, a7, 0
	l32i	a8, a7, 12
	bltu	a9, a8, .L288
	l32i	a8, a7, 12
	addi.n	a9, a8, 1
	l32i	a8, a7, 24
	s32i	a9, a8, 0
	l32i	a8, a7, 12
	mull	a8, a6, a8
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	l32i	a12, a7, 28
	l32i	a11, a7, 16
	mov.n	a10, a8
	l32r	a8, .LC43
	callx8	a8
	mov.n	a8, a10
.L287:
	mov.n	a2, a8
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	s32i	a6, a7, 32
	l32i	a6, a7, 28
	mov.n	a12, a6
	addi.n	a12, a12, -1
	s32i	a12, a7, 4
	mov.n	a9, a6
	movi.n	a8, 0
	extui	a12, a9, 29, 3
	slli	a10, a8, 3
	or	a10, a12, a10
	slli	a11, a9, 3
	l32i	a8, a7, 20
	s32i	a8, a7, 8
	l32i	a8, a7, 24
	l32i	a8, a8, 0
	s32i	a8, a7, 12
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L290
.L293:
	l32i	a8, a7, 0
	mull	a8, a6, a8
	l32i	a9, a7, 8
	add.n	a9, a9, a8
	l32i	a8, a7, 32
	mov.n	a11, a9
	l32i	a10, a7, 16
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L291
	l32i	a8, a7, 0
	mull	a8, a6, a8
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	j	.L292
.L291:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L290:
	l32i	a9, a7, 0
	l32i	a8, a7, 12
	bltu	a9, a8, .L293
	movi.n	a8, 0
.L292:
	mov.n	a2, a8
	retw.n
	.size	lfind, .-lfind
	.align	4
	.global	abs
	.type	abs, @function
abs:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	movi.n	a8, 0
	s32i	a8, a7, 0
	movi.n	a8, 0
	s32i	a8, a7, 4
	j	.L297
.L298:
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
.L297:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	mov.n	a10, a8
	l32r	a8, .LC44
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L298
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L299
	movi.n	a9, 0x2d
	bne	a8, a9, .L301
	movi.n	a8, 1
	s32i	a8, a7, 4
.L299:
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
	j	.L301
.L302:
	l32i	a9, a7, 0
	mov.n	a8, a9
	slli	a8, a8, 2
	add.n	a8, a8, a9
	add.n	a8, a8, a8
	mov.n	a10, a8
	l32i	a8, a7, 16
	addi.n	a9, a8, 1
	s32i	a9, a7, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	sub	a8, a10, a8
	s32i	a8, a7, 0
.L301:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L302
	l32i	a8, a7, 4
	bnez.n	a8, .L303
	l32i	a8, a7, 0
	neg	a8, a8
	j	.L305
.L303:
	l32i	a8, a7, 0
.L305:
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	movi.n	a8, 0
	s32i	a8, a7, 0
	movi.n	a8, 0
	s32i	a8, a7, 4
	j	.L307
.L308:
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
.L307:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	mov.n	a10, a8
	l32r	a8, .LC45
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L308
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L309
	movi.n	a9, 0x2d
	bne	a8, a9, .L311
	movi.n	a8, 1
	s32i	a8, a7, 4
.L309:
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
	j	.L311
.L312:
	l32i	a9, a7, 0
	mov.n	a8, a9
	slli	a8, a8, 2
	add.n	a8, a8, a9
	add.n	a8, a8, a8
	mov.n	a10, a8
	l32i	a8, a7, 16
	addi.n	a9, a8, 1
	s32i	a9, a7, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	sub	a8, a10, a8
	s32i	a8, a7, 0
.L311:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L312
	l32i	a8, a7, 4
	bnez.n	a8, .L313
	l32i	a8, a7, 0
	neg	a8, a8
	j	.L315
.L313:
	l32i	a8, a7, 0
.L315:
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
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 16
	movi.n	a8, 0
	movi.n	a9, 0
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	movi.n	a8, 0
	s32i	a8, a7, 8
	j	.L317
.L318:
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
.L317:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	mov.n	a10, a8
	l32r	a8, .LC47
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L318
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L319
	movi.n	a9, 0x2d
	bne	a8, a9, .L321
	movi.n	a8, 1
	s32i	a8, a7, 8
.L319:
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
	j	.L321
.L323:
	l32i	a9, a7, 0
	movi.n	a8, 0xa
	mull	a9, a9, a8
	l32i	a10, a7, 4
	movi.n	a8, 0
	mull	a8, a10, a8
	add.n	a6, a9, a8
	l32i	a8, a7, 4
	movi.n	a9, 0xa
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC48
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	add.n	a10, a6, a8
	mov.n	a8, a10
	l32i	a10, a7, 16
	addi.n	a11, a10, 1
	s32i	a11, a7, 16
	l8ui	a10, a10, 0
	addi	a10, a10, -48
	s32i	a10, a7, 36
	srai	a10, a10, 31
	s32i	a10, a7, 32
	addi	a10, a7, 32
	l32i	a11, a10, 4
	l32i	a10, a10, 0
	mov.n	a12, a10
	sub	a12, a8, a12
	s32i	a12, a7, 24
	mov.n	a10, a11
	bgeu	a9, a10, .L322
	l32i	a10, a7, 24
	addi.n	a10, a10, -1
	s32i	a10, a7, 24
.L322:
	l32i	a10, a7, 36
	sub	a8, a9, a10
	s32i	a8, a7, 28
	addi	a8, a7, 24
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	s32i	a8, a7, 0
	s32i	a9, a7, 4
.L321:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	addi	a8, a8, -48
	bltui	a8, 10, .L323
	l32i	a8, a7, 8
	bnez.n	a8, .L324
	movi.n	a8, 0
	s32i	a8, a7, 44
	s32i	a8, a7, 40
	l32i	a8, a7, 0
	l32i	a9, a7, 4
	addi	a10, a7, 40
	l32i	a11, a10, 4
	l32i	a10, a10, 0
	mov.n	a12, a10
	sub	a4, a12, a8
	mov.n	a10, a11
	bgeu	a10, a9, .L325
	addi.n	a4, a4, -1
.L325:
	l32i	a10, a7, 44
	sub	a5, a10, a9
	j	.L327
.L324:
	l32i	a4, a7, 0
	l32i	a5, a7, 4
.L327:
	mov.n	a8, a4
	mov.n	a9, a5
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	s32i	a6, a7, 32
	j	.L329
.L334:
	l32i	a8, a7, 24
	srli	a9, a8, 1
	l32i	a8, a7, 28
	mull	a8, a9, a8
	l32i	a9, a7, 20
	add.n	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 32
	l32i	a11, a7, 0
	l32i	a10, a7, 16
	callx8	a8
	s32i	a10, a7, 4
	l32i	a8, a7, 4
	bgez	a8, .L330
	l32i	a8, a7, 24
	srli	a8, a8, 1
	s32i	a8, a7, 24
	j	.L329
.L330:
	l32i	a8, a7, 4
	blti	a8, 1, .L332
	l32i	a9, a7, 0
	l32i	a8, a7, 28
	add.n	a8, a9, a8
	s32i	a8, a7, 20
	l32i	a8, a7, 24
	srli	a8, a8, 1
	l32i	a9, a7, 24
	sub	a8, a9, a8
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
	j	.L329
.L332:
	l32i	a8, a7, 0
	j	.L333
.L329:
	l32i	a8, a7, 24
	bnez.n	a8, .L334
	movi.n	a8, 0
.L333:
	mov.n	a2, a8
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 80
	mov.n	a8, a7
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	s32i	a6, a7, 32
	s32i	a8, a7, 36
	l32i	a8, a7, 20
	s32i	a8, a7, 0
	l32i	a8, a7, 24
	s32i	a8, a7, 4
	j	.L336
.L340:
	l32i	a8, a7, 4
	srai	a8, a8, 1
	mov.n	a9, a8
	l32i	a8, a7, 28
	mull	a8, a9, a8
	l32i	a9, a7, 0
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a8, a7, 32
	l32i	a12, a7, 36
	l32i	a11, a7, 8
	l32i	a10, a7, 16
	callx8	a8
	s32i	a10, a7, 12
	l32i	a8, a7, 12
	bnez.n	a8, .L337
	l32i	a8, a7, 8
	j	.L338
.L337:
	l32i	a8, a7, 12
	blti	a8, 1, .L339
	l32i	a9, a7, 8
	l32i	a8, a7, 28
	add.n	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, -1
	s32i	a8, a7, 4
.L339:
	l32i	a8, a7, 4
	srai	a8, a8, 1
	s32i	a8, a7, 4
.L336:
	l32i	a8, a7, 4
	bnez.n	a8, .L340
	movi.n	a8, 0
.L338:
	mov.n	a2, a8
	retw.n
	.size	bsearch_r, .-bsearch_r
	.align	4
	.global	div
	.type	div, @function
div:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	quos	a9, a9, a8
	l32i	a10, a7, 16
	l32i	a8, a7, 20
	rems	a8, a10, a8
	s32i	a9, a7, 0
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	mov.n	a12, a9
	mov.n	a13, a8
	mov.n	a8, a12
	mov.n	a9, a13
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	div, .-div
	.align	4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a14, a7, 0
	srai	a9, a14, 31
	l32i	a14, a7, 0
	srai	a8, a14, 31
	l32i	a14, a7, 0
	xor	a10, a14, a8
	l32i	a14, a7, 4
	xor	a11, a14, a9
	sub	a12, a10, a8
	bgeu	a11, a9, .L345
	addi.n	a12, a12, -1
.L345:
	sub	a13, a11, a9
	mov.n	a10, a12
	mov.n	a11, a13
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a2, a8
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
	entry	sp, 96
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	s32i	a5, a7, 44
	l32r	a8, .LC49
	l32i	a12, a7, 40
	l32i	a13, a7, 44
	l32i	a10, a7, 32
	l32i	a11, a7, 36
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a4, a8
	mov.n	a5, a9
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	l32r	a14, .LC50
	l32i	a12, a7, 40
	l32i	a13, a7, 44
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a8, a10
	mov.n	a9, a11
	s32i	a4, a7, 0
	s32i	a5, a7, 4
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a11, a7, 0
	l32i	a10, a7, 4
	l32i	a9, a7, 8
	l32i	a8, a7, 12
	s32i	a11, a7, 48
	s32i	a10, a7, 52
	s32i	a9, a7, 56
	s32i	a8, a7, 60
	l32i	a8, a7, 48
	l32i	a9, a7, 52
	l32i	a10, a7, 56
	l32i	a11, a7, 60
	mov.n	a2, a8
	mov.n	a3, a9
	mov.n	a4, a10
	mov.n	a5, a11
	retw.n
	.size	imaxdiv, .-imaxdiv
	.align	4
	.global	labs
	.type	labs, @function
labs:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	abs	a8, a8
	mov.n	a2, a8
	retw.n
	.size	labs, .-labs
	.align	4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	quos	a9, a9, a8
	l32i	a10, a7, 16
	l32i	a8, a7, 20
	rems	a8, a10, a8
	s32i	a9, a7, 0
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	mov.n	a12, a9
	mov.n	a13, a8
	mov.n	a8, a12
	mov.n	a9, a13
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	ldiv, .-ldiv
	.align	4
	.global	llabs
	.type	llabs, @function
llabs:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a14, a7, 0
	srai	a9, a14, 31
	l32i	a14, a7, 0
	srai	a8, a14, 31
	l32i	a14, a7, 0
	xor	a10, a14, a8
	l32i	a14, a7, 4
	xor	a11, a14, a9
	sub	a12, a10, a8
	bgeu	a11, a9, .L355
	addi.n	a12, a12, -1
.L355:
	sub	a13, a11, a9
	mov.n	a10, a12
	mov.n	a11, a13
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a2, a8
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
	entry	sp, 96
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	s32i	a5, a7, 44
	l32r	a8, .LC51
	l32i	a12, a7, 40
	l32i	a13, a7, 44
	l32i	a10, a7, 32
	l32i	a11, a7, 36
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a4, a8
	mov.n	a5, a9
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	l32r	a14, .LC52
	l32i	a12, a7, 40
	l32i	a13, a7, 44
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a8, a10
	mov.n	a9, a11
	s32i	a4, a7, 0
	s32i	a5, a7, 4
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a11, a7, 0
	l32i	a10, a7, 4
	l32i	a9, a7, 8
	l32i	a8, a7, 12
	s32i	a11, a7, 48
	s32i	a10, a7, 52
	s32i	a9, a7, 56
	s32i	a8, a7, 60
	l32i	a8, a7, 48
	l32i	a9, a7, 52
	l32i	a10, a7, 56
	l32i	a11, a7, 60
	mov.n	a2, a8
	mov.n	a3, a9
	mov.n	a4, a10
	mov.n	a5, a11
	retw.n
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	j	.L360
.L362:
	l32i	a8, a7, 0
	addi.n	a8, a8, 4
	s32i	a8, a7, 0
.L360:
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L361
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	l32i	a9, a7, 4
	bne	a9, a8, .L362
.L361:
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L363
	l32i	a8, a7, 0
	j	.L365
.L363:
	movi.n	a8, 0
.L365:
	mov.n	a2, a8
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	j	.L367
.L369:
	l32i	a8, a7, 0
	addi.n	a8, a8, 4
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 4
	s32i	a8, a7, 4
.L367:
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	bne	a9, a8, .L368
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L368
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	bnez.n	a8, .L369
.L368:
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	blt	a9, a8, .L370
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a10, a8, 0
	movi.n	a8, 1
	blt	a10, a9, .L371
	movi.n	a8, 0
.L371:
	extui	a8, a8, 0, 8
	j	.L373
.L370:
	movi.n	a8, -1
.L373:
	mov.n	a2, a8
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	nop.n
.L375:
	l32i	a9, a7, 20
	addi.n	a8, a9, 4
	s32i	a8, a7, 20
	l32i	a8, a7, 16
	addi.n	a10, a8, 4
	s32i	a10, a7, 16
	l32i	a9, a9, 0
	s32i	a9, a8, 0
	l32i	a8, a8, 0
	bnez.n	a8, .L375
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	j	.L378
.L379:
	l32i	a8, a7, 16
	addi.n	a8, a8, 4
	s32i	a8, a7, 16
.L378:
	l32i	a8, a7, 16
	l32i	a8, a8, 0
	bnez.n	a8, .L379
	l32i	a9, a7, 16
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	j	.L382
.L384:
	l32i	a8, a7, 8
	addi.n	a8, a8, -1
	s32i	a8, a7, 8
	l32i	a8, a7, 0
	addi.n	a8, a8, 4
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 4
	s32i	a8, a7, 4
.L382:
	l32i	a8, a7, 8
	beqz.n	a8, .L383
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	bne	a9, a8, .L383
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	beqz.n	a8, .L383
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	bnez.n	a8, .L384
.L383:
	l32i	a8, a7, 8
	beqz.n	a8, .L385
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	blt	a9, a8, .L386
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a10, a8, 0
	movi.n	a8, 1
	blt	a10, a9, .L387
	movi.n	a8, 0
.L387:
	extui	a8, a8, 0, 8
	j	.L390
.L386:
	movi.n	a8, -1
	j	.L390
.L385:
	movi.n	a8, 0
.L390:
	mov.n	a2, a8
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	j	.L392
.L394:
	l32i	a8, a7, 8
	addi.n	a8, a8, -1
	s32i	a8, a7, 8
	l32i	a8, a7, 0
	addi.n	a8, a8, 4
	s32i	a8, a7, 0
.L392:
	l32i	a8, a7, 8
	beqz.n	a8, .L393
	l32i	a8, a7, 0
	l32i	a8, a8, 0
	l32i	a9, a7, 4
	bne	a9, a8, .L394
.L393:
	l32i	a8, a7, 8
	beqz.n	a8, .L395
	l32i	a8, a7, 0
	j	.L397
.L395:
	movi.n	a8, 0
.L397:
	mov.n	a2, a8
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	j	.L399
.L401:
	l32i	a8, a7, 8
	addi.n	a8, a8, -1
	s32i	a8, a7, 8
	l32i	a8, a7, 0
	addi.n	a8, a8, 4
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 4
	s32i	a8, a7, 4
.L399:
	l32i	a8, a7, 8
	beqz.n	a8, .L400
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	beq	a9, a8, .L401
.L400:
	l32i	a8, a7, 8
	beqz.n	a8, .L402
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a8, a8, 0
	blt	a9, a8, .L403
	l32i	a8, a7, 0
	l32i	a9, a8, 0
	l32i	a8, a7, 4
	l32i	a10, a8, 0
	movi.n	a8, 1
	blt	a10, a9, .L404
	movi.n	a8, 0
.L404:
	extui	a8, a8, 0, 8
	j	.L407
.L403:
	movi.n	a8, -1
	j	.L407
.L402:
	movi.n	a8, 0
.L407:
	mov.n	a2, a8
	retw.n
	.size	wmemcmp, .-wmemcmp
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	j	.L409
.L410:
	l32i	a9, a7, 20
	addi.n	a8, a9, 4
	s32i	a8, a7, 20
	l32i	a8, a7, 16
	addi.n	a10, a8, 4
	s32i	a10, a7, 16
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L409:
	l32i	a8, a7, 24
	addi.n	a9, a8, -1
	s32i	a9, a7, 24
	bnez.n	a8, .L410
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	bne	a9, a8, .L413
	l32i	a8, a7, 16
	j	.L414
.L413:
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	sub	a9, a9, a8
	l32i	a8, a7, 24
	slli	a8, a8, 2
	bgeu	a9, a8, .L419
	j	.L416
.L417:
	l32i	a8, a7, 24
	slli	a8, a8, 2
	l32i	a9, a7, 20
	add.n	a9, a9, a8
	l32i	a8, a7, 24
	slli	a8, a8, 2
	l32i	a10, a7, 16
	add.n	a8, a10, a8
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L416:
	l32i	a8, a7, 24
	addi.n	a9, a8, -1
	s32i	a9, a7, 24
	bnez.n	a8, .L417
	j	.L418
.L420:
	l32i	a9, a7, 20
	addi.n	a8, a9, 4
	s32i	a8, a7, 20
	l32i	a8, a7, 16
	addi.n	a10, a8, 4
	s32i	a10, a7, 16
	l32i	a9, a9, 0
	s32i	a9, a8, 0
.L419:
	l32i	a8, a7, 24
	addi.n	a9, a8, -1
	s32i	a9, a7, 24
	bnez.n	a8, .L420
.L418:
	l32i	a8, a7, 0
.L414:
	mov.n	a2, a8
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	j	.L422
.L423:
	l32i	a8, a7, 16
	addi.n	a9, a8, 4
	s32i	a9, a7, 16
	l32i	a9, a7, 20
	s32i	a9, a8, 0
.L422:
	l32i	a8, a7, 24
	addi.n	a9, a8, -1
	s32i	a9, a7, 24
	bnez.n	a8, .L423
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	bgeu	a9, a8, .L426
	l32i	a9, a7, 0
	l32i	a8, a7, 24
	add.n	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a9, a7, 4
	l32i	a8, a7, 24
	add.n	a8, a9, a8
	s32i	a8, a7, 4
	j	.L427
.L428:
	l32i	a8, a7, 0
	addi.n	a8, a8, -1
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, -1
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	l8ui	a9, a8, 0
	l32i	a8, a7, 4
	s8i	a9, a8, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L427:
	l32i	a8, a7, 24
	bnez.n	a8, .L428
	j	.L432
.L426:
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	beq	a9, a8, .L432
	j	.L430
.L431:
	l32i	a9, a7, 0
	addi.n	a8, a9, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	addi.n	a10, a8, 1
	s32i	a10, a7, 4
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L430:
	l32i	a8, a7, 24
	bnez.n	a8, .L431
.L432:
	nop.n
	retw.n
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	l32i	a12, a7, 0
	l32i	a13, a7, 4
	l32i	a15, a7, 8
	movi.n	a14, 0x20
	and	a14, a15, a14
	movi.n	a15, 0
	srli	a5, a13, 1
	l32i	a4, a7, 8
	movi.n	a6, -1
	xor	a6, a4, a6
	ssr	a6
	srl	a6, a5
	l32i	a5, a7, 8
	ssl	a5
	sll	a10, a12
	or	a10, a6, a10
	l32i	a6, a7, 8
	ssl	a6
	sll	a11, a13
	movnez	a10, a11, a14
	movnez	a11, a15, a14
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	movi.n	a15, 0x20
	and	a15, a14, a15
	movi.n	a6, 0
	add.n	a5, a12, a12
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	movi.n	a4, -1
	xor	a14, a14, a4
	ssl	a14
	sll	a5, a5
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	ssr	a14
	srl	a9, a13
	or	a9, a5, a9
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	ssr	a14
	srl	a8, a12
	movnez	a9, a8, a15
	movnez	a8, a6, a15
	or	a12, a8, a10
	s32i	a12, a7, 16
	or	a8, a9, a11
	s32i	a8, a7, 20
	addi	a8, a7, 16
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	l32i	a12, a7, 0
	l32i	a13, a7, 4
	l32i	a15, a7, 8
	movi.n	a14, 0x20
	and	a14, a15, a14
	movi.n	a15, 0
	add.n	a5, a12, a12
	l32i	a4, a7, 8
	movi.n	a6, -1
	xor	a6, a4, a6
	ssl	a6
	sll	a6, a5
	l32i	a5, a7, 8
	ssr	a5
	srl	a11, a13
	or	a11, a6, a11
	l32i	a6, a7, 8
	ssr	a6
	srl	a10, a12
	movnez	a11, a10, a14
	movnez	a10, a15, a14
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	movi.n	a15, 0x20
	and	a15, a14, a15
	movi.n	a6, 0
	srli	a5, a13, 1
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	movi.n	a4, -1
	xor	a14, a14, a4
	ssr	a14
	srl	a5, a5
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	ssl	a14
	sll	a8, a12
	or	a8, a5, a8
	l32i	a14, a7, 8
	neg	a14, a14
	extui	a14, a14, 0, 6
	ssl	a14
	sll	a9, a13
	movnez	a8, a9, a15
	movnez	a9, a6, a15
	or	a12, a8, a10
	s32i	a12, a7, 16
	or	a8, a9, a11
	s32i	a8, a7, 20
	addi	a8, a7, 16
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	rotr64, .-rotr64
	.align	4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	mov.n	a8, a2
	s32i	a3, a7, 4
	s16i	a8, a7, 0
	l16ui	a9, a7, 0
	l32i	a8, a7, 4
	ssl	a8
	sll	a8, a9
	extui	a9, a8, 0, 16
	l16ui	a10, a7, 0
	movi.n	a11, 0x10
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	mov.n	a8, a2
	s32i	a3, a7, 4
	s16i	a8, a7, 0
	l16ui	a9, a7, 0
	l32i	a8, a7, 4
	ssr	a8
	srl	a8, a9
	extui	a9, a8, 0, 16
	l16ui	a10, a7, 0
	movi.n	a11, 0x10
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	mov.n	a8, a2
	s32i	a3, a7, 4
	s8i	a8, a7, 0
	l8ui	a9, a7, 0
	l32i	a8, a7, 4
	ssl	a8
	sll	a8, a9
	extui	a9, a8, 0, 8
	l8ui	a10, a7, 0
	movi.n	a11, 8
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	mov.n	a8, a2
	s32i	a3, a7, 4
	s8i	a8, a7, 0
	l8ui	a9, a7, 0
	l32i	a8, a7, 4
	ssr	a8
	srl	a8, a9
	extui	a9, a8, 0, 8
	l8ui	a10, a7, 0
	movi.n	a11, 8
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	mov.n	a8, a2
	s16i	a8, a7, 16
	movi	a8, 0xff
	s32i	a8, a7, 0
	l16ui	a9, a7, 16
	l32i	a8, a7, 0
	slli	a8, a8, 8
	and	a8, a9, a8
	srli	a8, a8, 8
	extui	a9, a8, 0, 16
	l32i	a8, a7, 0
	extui	a10, a8, 0, 16
	l16ui	a8, a7, 16
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	movi	a8, 0xff
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	slli	a9, a8, 24
	l32i	a8, a7, 16
	and	a8, a9, a8
	extui	a9, a8, 24, 8
	l32i	a8, a7, 0
	slli	a10, a8, 16
	l32i	a8, a7, 16
	and	a8, a10, a8
	srli	a8, a8, 8
	or	a9, a9, a8
	l32i	a8, a7, 0
	slli	a10, a8, 8
	l32i	a8, a7, 16
	and	a8, a10, a8
	slli	a8, a8, 8
	or	a9, a9, a8
	l32i	a10, a7, 16
	l32i	a8, a7, 0
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
	entry	sp, 272
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	movi	a9, 0xff
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	l32i	a8, a7, 4
	slli	a10, a8, 24
	movi.n	a11, 0
	l32i	a8, a7, 16
	and	a4, a8, a10
	l32i	a8, a7, 20
	and	a5, a8, a11
	extui	a8, a4, 24, 8
	s32i	a8, a7, 84
	movi.n	a10, 0
	s32i	a10, a7, 80
	l32i	a8, a7, 4
	slli	a12, a8, 16
	movi.n	a13, 0
	l32i	a8, a7, 16
	and	a8, a8, a12
	s32i	a8, a7, 88
	l32i	a8, a7, 20
	and	a8, a8, a13
	s32i	a8, a7, 92
	l32i	a8, a7, 88
	srli	a15, a8, 8
	movi.n	a14, 0
	addi	a8, a7, 80
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a11, a8
	or	a11, a11, a14
	s32i	a11, a7, 96
	mov.n	a8, a9
	or	a8, a8, a15
	s32i	a8, a7, 100
	l32i	a8, a7, 4
	slli	a8, a8, 8
	s32i	a8, a7, 104
	mov.n	a12, a10
	s32i	a12, a7, 108
	l32i	a8, a7, 16
	addi	a9, a7, 104
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a8, a9
	s32i	a8, a7, 112
	l32i	a8, a7, 20
	mov.n	a9, a11
	and	a8, a8, a9
	s32i	a8, a7, 116
	addi	a8, a7, 112
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a8, a10
	slli	a8, a8, 8
	mov.n	a9, a11
	extui	a9, a9, 24, 8
	s32i	a9, a7, 28
	l32i	a9, a7, 28
	or	a8, a8, a9
	s32i	a8, a7, 28
	mov.n	a8, a10
	extui	a8, a8, 24, 8
	s32i	a8, a7, 24
	addi	a8, a7, 96
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a13, a10
	addi	a8, a7, 24
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a14, a8
	or	a13, a13, a14
	s32i	a13, a7, 120
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 124
	l32i	a8, a7, 4
	slli	a8, a8, 0
	s32i	a8, a7, 128
	s32i	a12, a7, 132
	l32i	a8, a7, 16
	movi	a9, 0x80
	add.n	a9, a9, a7
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a8, a9
	s32i	a8, a7, 136
	l32i	a8, a7, 20
	mov.n	a9, a11
	and	a8, a8, a9
	s32i	a8, a7, 140
	movi	a8, 0x88
	add.n	a8, a8, a7
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a8, a10
	slli	a8, a8, 24
	mov.n	a9, a11
	srli	a9, a9, 8
	s32i	a9, a7, 36
	l32i	a9, a7, 36
	or	a8, a8, a9
	s32i	a8, a7, 36
	mov.n	a8, a10
	srli	a8, a8, 8
	s32i	a8, a7, 32
	addi	a8, a7, 120
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a13, a10
	addi	a8, a7, 32
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a14, a8
	or	a13, a13, a14
	s32i	a13, a7, 144
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 148
	l32i	a8, a7, 4
	srli	a9, a8, 8
	l32i	a8, a7, 0
	slli	a8, a8, 24
	s32i	a8, a7, 40
	l32i	a8, a7, 40
	or	a8, a9, a8
	s32i	a8, a7, 40
	l32i	a8, a7, 4
	slli	a8, a8, 24
	s32i	a8, a7, 44
	l32i	a8, a7, 16
	addi	a9, a7, 40
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a8, a9
	s32i	a8, a7, 152
	l32i	a8, a7, 20
	mov.n	a9, a11
	and	a8, a8, a9
	s32i	a8, a7, 156
	movi	a8, 0x98
	add.n	a8, a8, a7
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a8, a11
	extui	a8, a8, 24, 8
	mov.n	a9, a10
	slli	a9, a9, 8
	s32i	a9, a7, 48
	l32i	a9, a7, 48
	or	a8, a8, a9
	s32i	a8, a7, 48
	mov.n	a8, a11
	slli	a8, a8, 8
	s32i	a8, a7, 52
	movi	a8, 0x90
	add.n	a8, a8, a7
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a13, a10
	addi	a8, a7, 48
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a14, a8
	or	a13, a13, a14
	s32i	a13, a7, 160
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 164
	l32i	a8, a7, 4
	extui	a9, a8, 16, 16
	l32i	a8, a7, 0
	slli	a8, a8, 16
	s32i	a8, a7, 56
	l32i	a8, a7, 56
	or	a8, a9, a8
	s32i	a8, a7, 56
	l32i	a8, a7, 4
	slli	a8, a8, 16
	s32i	a8, a7, 60
	l32i	a8, a7, 16
	addi	a9, a7, 56
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a8, a9
	s32i	a8, a7, 168
	l32i	a8, a7, 20
	mov.n	a9, a11
	and	a8, a8, a9
	s32i	a8, a7, 172
	movi	a8, 0xa8
	add.n	a8, a8, a7
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a8, a11
	srli	a8, a8, 8
	mov.n	a9, a10
	slli	a9, a9, 24
	s32i	a9, a7, 64
	l32i	a9, a7, 64
	or	a8, a8, a9
	s32i	a8, a7, 64
	mov.n	a8, a11
	slli	a8, a8, 24
	s32i	a8, a7, 68
	movi	a8, 0xa0
	add.n	a8, a8, a7
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a13, a10
	addi	a8, a7, 64
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a14, a8
	or	a13, a13, a14
	s32i	a13, a7, 176
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 180
	l32i	a8, a7, 4
	extui	a9, a8, 24, 8
	l32i	a8, a7, 0
	slli	a8, a8, 8
	s32i	a8, a7, 72
	l32i	a8, a7, 72
	or	a8, a9, a8
	s32i	a8, a7, 72
	l32i	a8, a7, 4
	slli	a8, a8, 8
	s32i	a8, a7, 76
	l32i	a8, a7, 16
	addi	a9, a7, 72
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a8, a9
	s32i	a8, a7, 184
	l32i	a8, a7, 20
	mov.n	a9, a11
	and	a8, a8, a9
	s32i	a8, a7, 188
	l32i	a8, a7, 188
	slli	a8, a8, 8
	s32i	a8, a7, 192
	s32i	a12, a7, 196
	movi	a8, 0xb0
	add.n	a8, a8, a7
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a13, a10
	movi	a8, 0xc0
	add.n	a8, a8, a7
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a14, a8
	or	a13, a13, a14
	s32i	a13, a7, 200
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 204
	l32i	a9, a7, 16
	l32i	a8, a7, 0
	and	a8, a9, a8
	s32i	a8, a7, 208
	l32i	a9, a7, 20
	l32i	a8, a7, 4
	and	a8, a9, a8
	s32i	a8, a7, 212
	l32i	a8, a7, 212
	slli	a8, a8, 24
	s32i	a8, a7, 216
	s32i	a12, a7, 220
	movi	a8, 0xc8
	add.n	a8, a8, a7
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a12, a10
	movi	a8, 0xd8
	add.n	a8, a8, a7
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a13, a8
	or	a12, a12, a13
	s32i	a12, a7, 224
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 228
	movi	a8, 0xe0
	add.n	a8, a8, a7
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	bswap_64, .-bswap_64
	.align	4
	.global	ffs
	.type	ffs, @function
ffs:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L460
.L463:
	l32i	a9, a7, 16
	l32i	a8, a7, 0
	ssr	a8
	srl	a8, a9
	extui	a8, a8, 0, 1
	beqz.n	a8, .L461
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	j	.L462
.L461:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L460:
	l32i	a8, a7, 0
	bltui	a8, 32, .L463
	movi.n	a8, 0
.L462:
	mov.n	a2, a8
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	bnez.n	a8, .L465
	movi.n	a8, 0
	j	.L466
.L465:
	movi.n	a6, 1
	j	.L467
.L468:
	srai	a8, a8, 1
	addi.n	a6, a6, 1
.L467:
	extui	a9, a8, 0, 1
	beqz.n	a9, .L468
	mov.n	a8, a6
.L466:
	mov.n	a2, a8
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	l32r	a8, .LC55
	l32r	a11, .LC58
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L470
	l32r	a8, .LC57
	l32r	a11, .LC59
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L475
.L470:
	movi.n	a8, 1
	j	.L474
.L475:
	movi.n	a8, 0
.L474:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	l32r	a8, .LC61
	l32r	a12, .LC64
	movi.n	a13, -1
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L477
	l32r	a8, .LC63
	l32r	a12, .LC65
	movi.n	a13, -1
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L482
.L477:
	movi.n	a8, 1
	j	.L481
.L482:
	movi.n	a8, 0
.L481:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	l32r	a8, .LC67
	l32r	a12, .LC70
	movi.n	a13, -1
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L484
	l32r	a8, .LC69
	l32r	a12, .LC71
	movi.n	a13, -1
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L489
.L484:
	movi.n	a8, 1
	j	.L488
.L489:
	movi.n	a8, 0
.L488:
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32r	a8, .LC72
	l32i	a10, a7, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	l32i	a10, a7, 0
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
	mov.n	a7, sp
	s32i.n	a2, a7, 16
	s32i	a3, a7, 20
	l32r	a8, .LC73
	l32i.n	a11, a7, 16
	l32i.n	a10, a7, 16
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L492
	l32i.n	a9, a7, 16
	l32r	a8, .LC74
	mov.n	a11, a9
	mov.n	a10, a9
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a8
	l32r	a8, .LC75
	mov.n	a11, a9
	l32i.n	a10, a7, 16
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L492
	l32i	a8, a7, 20
	bgez	a8, .L494
	l32r	a8, .LC79
	j	.L495
.L494:
	l32r	a8, .LC80
.L495:
	s32i.n	a8, a7, 0
.L498:
	l32i	a8, a7, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L496
	l32r	a8, .LC78
	l32i.n	a11, a7, 0
	l32i.n	a10, a7, 16
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, a7, 16
.L496:
	l32i	a8, a7, 20
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, a7, 20
	l32i	a8, a7, 20
	beqz.n	a8, .L501
	l32r	a8, .LC78
	l32i.n	a11, a7, 0
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, a7, 0
	j	.L498
.L501:
	nop.n
.L492:
	l32i.n	a8, a7, 16
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
	mov.n	a7, sp
	s32i.n	a2, a7, 16
	s32i.n	a3, a7, 20
	s32i	a4, a7, 24
	l32r	a8, .LC81
	l32i.n	a12, a7, 16
	l32i.n	a13, a7, 20
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L503
	l32i.n	a8, a7, 16
	l32i.n	a9, a7, 20
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
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L503
	l32i	a8, a7, 24
	bgez	a8, .L505
	l32r	a8, .LC87
	movi.n	a9, 0
	j	.L506
.L505:
	l32r	a8, .LC88
	movi.n	a9, 0
.L506:
	s32i.n	a8, a7, 0
	s32i.n	a9, a7, 4
.L509:
	l32i	a8, a7, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L507
	l32r	a8, .LC86
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
.L507:
	l32i	a8, a7, 24
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, a7, 24
	l32i	a8, a7, 24
	beqz.n	a8, .L512
	l32r	a8, .LC86
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 0
	s32i.n	a9, a7, 4
	j	.L509
.L512:
	nop.n
.L503:
	l32i.n	a8, a7, 16
	l32i.n	a9, a7, 20
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
	mov.n	a7, sp
	s32i.n	a2, a7, 16
	s32i.n	a3, a7, 20
	s32i	a4, a7, 24
	l32r	a8, .LC89
	l32i.n	a12, a7, 16
	l32i.n	a13, a7, 20
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L514
	l32i.n	a8, a7, 16
	l32i.n	a9, a7, 20
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
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L514
	l32i	a8, a7, 24
	bgez	a8, .L516
	l32r	a8, .LC95
	movi.n	a9, 0
	j	.L517
.L516:
	l32r	a8, .LC96
	movi.n	a9, 0
.L517:
	s32i.n	a8, a7, 0
	s32i.n	a9, a7, 4
.L520:
	l32i	a8, a7, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L518
	l32r	a8, .LC94
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
.L518:
	l32i	a8, a7, 24
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, a7, 24
	l32i	a8, a7, 24
	beqz.n	a8, .L523
	l32r	a8, .LC94
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 0
	s32i.n	a9, a7, 4
	j	.L520
.L523:
	nop.n
.L514:
	l32i.n	a8, a7, 16
	l32i.n	a9, a7, 20
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 20
	s32i	a8, a7, 0
	l32i	a8, a7, 16
	s32i	a8, a7, 4
	j	.L525
.L526:
	l32i	a8, a7, 0
	addi.n	a9, a8, 1
	s32i	a9, a7, 0
	l8ui	a10, a8, 0
	l32i	a8, a7, 4
	addi.n	a9, a8, 1
	s32i	a9, a7, 4
	l8ui	a9, a8, 0
	xor	a9, a10, a9
	extui	a9, a9, 0, 8
	s8i	a9, a8, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L525:
	l32i	a8, a7, 24
	bnez.n	a8, .L526
	l32i	a8, a7, 16
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a10, a7, 16
	l32r	a8, .LC97
	callx8	a8
	mov.n	a9, a10
	l32i	a8, a7, 16
	add.n	a8, a8, a9
	s32i	a8, a7, 0
	j	.L529
.L531:
	l32i	a8, a7, 20
	addi.n	a8, a8, 1
	s32i	a8, a7, 20
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	s32i	a8, a7, 24
.L529:
	l32i	a8, a7, 24
	beqz.n	a8, .L530
	l32i	a8, a7, 20
	l8ui	a9, a8, 0
	l32i	a8, a7, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L531
.L530:
	l32i	a8, a7, 24
	bnez.n	a8, .L532
	l32i	a8, a7, 0
	movi.n	a9, 0
	s8i	a9, a8, 0
.L532:
	l32i	a8, a7, 16
	mov.n	a2, a8
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L535
.L540:
	nop.n
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L535:
	l32i	a9, a7, 0
	l32i	a8, a7, 20
	bgeu	a9, a8, .L536
	l32i	a9, a7, 16
	l32i	a8, a7, 0
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	bnez.n	a8, .L540
.L536:
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	j	.L542
.L546:
	l32i	a8, a7, 20
	s32i	a8, a7, 0
	j	.L543
.L545:
	l32i	a8, a7, 0
	addi.n	a9, a8, 1
	s32i	a9, a7, 0
	l8ui	a9, a8, 0
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	bne	a9, a8, .L543
	l32i	a8, a7, 16
	j	.L544
.L543:
	l32i	a8, a7, 0
	l8ui	a8, a8, 0
	bnez.n	a8, .L545
	l32i	a8, a7, 16
	addi.n	a8, a8, 1
	s32i	a8, a7, 16
.L542:
	l32i	a8, a7, 16
	l8ui	a8, a8, 0
	bnez.n	a8, .L546
	movi.n	a8, 0
.L544:
	mov.n	a2, a8
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a8, a2
	s32i	a3, a7, 16
	movi.n	a9, 0
	s32i	a9, a7, 0
.L549:
	l8ui	a9, a8, 0
	mov.n	a10, a9
	l32i	a9, a7, 16
	bne	a9, a10, .L548
	s32i	a8, a7, 0
.L548:
	mov.n	a9, a8
	addi.n	a8, a9, 1
	l8ui	a9, a9, 0
	bnez.n	a9, .L549
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a10, a7, 20
	l32r	a8, .LC98
	callx8	a8
	s32i	a10, a7, 4
	l32i	a8, a7, 4
	bnez.n	a8, .L554
	l32i	a8, a7, 16
	j	.L553
.L556:
	l32i	a12, a7, 4
	l32i	a11, a7, 20
	l32i	a10, a7, 0
	l32r	a8, .LC99
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L555
	l32i	a8, a7, 0
	j	.L553
.L555:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L554:
	l32i	a8, a7, 20
	l8ui	a8, a8, 0
	mov.n	a11, a8
	l32i	a10, a7, 0
	l32r	a8, .LC100
	callx8	a8
	s32i	a10, a7, 0
	l32i	a8, a7, 0
	bnez.n	a8, .L556
	movi.n	a8, 0
.L553:
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
	entry	sp, 64
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	s32i.n	a4, a7, 8
	s32i.n	a5, a7, 12
	l32r	a8, .LC102
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L558
	l32r	a8, .LC103
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, a7, 8
	l32i.n	a11, a7, 12
	callx8	a8
	mov.n	a8, a10
	bgei	a8, 1, .L560
.L558:
	l32r	a8, .LC103
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L561
	l32r	a8, .LC102
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, a7, 8
	l32i.n	a11, a7, 12
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L561
.L560:
	l32i	a9, a7, 0
	l32r	a8, .LC104
	xor	a8, a9, a8
	s32i	a8, a7, 16
	l32i	a8, a7, 4
	s32i	a8, a7, 20
	j	.L564
.L561:
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
.L564:
	addi	a8, a7, 16
	l32i.n	a9, a8, 4
	l32i.n	a8, a8, 0
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC105, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	l32i	a9, a7, 20
	l32i	a8, a7, 28
	sub	a8, a9, a8
	l32i	a9, a7, 16
	add.n	a8, a9, a8
	s32i	a8, a7, 4
	l32i	a8, a7, 28
	bnez.n	a8, .L568
	l32i	a8, a7, 16
	j	.L569
.L568:
	movi.n	a8, 1
	l32i	a10, a7, 20
	l32i	a9, a7, 28
	bltu	a10, a9, .L570
	movi.n	a8, 0
.L570:
	extui	a8, a8, 0, 8
	beqz.n	a8, .L571
	movi.n	a8, 0
	j	.L569
.L571:
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	j	.L572
.L574:
	l32i	a8, a7, 0
	l8ui	a9, a8, 0
	l32i	a8, a7, 24
	l8ui	a8, a8, 0
	bne	a9, a8, .L573
	l32i	a8, a7, 0
	addi.n	a9, a8, 1
	l32i	a8, a7, 24
	addi.n	a10, a8, 1
	l32i	a8, a7, 28
	addi.n	a8, a8, -1
	mov.n	a12, a8
	mov.n	a11, a10
	mov.n	a10, a9
	l32r	a8, .LC105
	callx8	a8
	mov.n	a8, a10
	bnez.n	a8, .L573
	l32i	a8, a7, 0
	j	.L569
.L573:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L572:
	l32i	a8, a7, 0
	l32i	a9, a7, 4
	bgeu	a9, a8, .L574
	movi.n	a8, 0
.L569:
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	l32i	a12, a7, 8
	l32i	a11, a7, 4
	l32i	a10, a7, 0
	l32r	a8, .LC106
	callx8	a8
	mov.n	a9, a10
	l32i	a8, a7, 8
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
	mov.n	a7, sp
	s32i.n	a2, a7, 16
	s32i.n	a3, a7, 20
	s32i	a4, a7, 24
	movi.n	a8, 0
	s32i	a8, a7, 4
	movi.n	a8, 0
	s32i	a8, a7, 0
	l32r	a8, .LC108
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L578
	l32i	a9, a7, 16
	l32r	a8, .LC109
	xor	a8, a9, a8
	s32i	a8, a7, 32
	l32i	a8, a7, 20
	s32i	a8, a7, 36
	addi	a8, a7, 32
	l32i.n	a9, a8, 4
	l32i.n	a8, a8, 0
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
	movi.n	a8, 1
	s32i	a8, a7, 0
.L578:
	l32r	a8, .LC111
	l32r	a12, .LC117
	movi.n	a13, 0
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L595
	j	.L582
.L583:
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
	l32r	a8, .LC113
	l32r	a12, .LC118
	movi.n	a13, 0
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
.L582:
	l32r	a8, .LC111
	l32r	a12, .LC117
	movi.n	a13, 0
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L583
	j	.L584
.L595:
	l32r	a8, .LC108
	l32r	a12, .LC119
	movi.n	a13, 0
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L584
	l32r	a8, .LC115
	movi.n	a12, 0
	movi.n	a13, 0
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	beqz.n	a8, .L584
	j	.L587
.L588:
	l32i	a8, a7, 4
	addi.n	a8, a8, -1
	s32i	a8, a7, 4
	l32i.n	a8, a7, 16
	l32i.n	a9, a7, 20
	l32r	a14, .LC116
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a10, a8
	mov.n	a11, a9
	callx8	a14
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
.L587:
	l32r	a8, .LC108
	l32r	a12, .LC119
	movi.n	a13, 0
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L588
.L584:
	l32i	a8, a7, 24
	l32i	a9, a7, 4
	s32i	a9, a8, 0
	l32i	a8, a7, 0
	beqz.n	a8, .L589
	l32i	a9, a7, 16
	l32r	a8, .LC109
	xor	a8, a9, a8
	s32i	a8, a7, 40
	l32i	a8, a7, 20
	s32i	a8, a7, 44
	addi	a8, a7, 40
	l32i.n	a9, a8, 4
	l32i.n	a8, a8, 0
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
.L589:
	l32i.n	a8, a7, 16
	l32i.n	a9, a7, 20
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	frexp, .-frexp
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	movi.n	a14, 0
	movi.n	a15, 0
	s32i	a14, a7, 0
	s32i	a15, a7, 4
	l32i	a14, a7, 16
	l32i	a15, a7, 20
	s32i	a14, a7, 8
	s32i	a15, a7, 12
	j	.L597
.L601:
	l32i	a15, a7, 8
	movi.n	a14, 0
	and	a14, a15, a14
	s32i	a14, a7, 32
	l32i	a14, a7, 12
	extui	a14, a14, 0, 1
	s32i	a14, a7, 36
	addi	a14, a7, 32
	l32i	a4, a14, 0
	l32i	a5, a14, 4
	mov.n	a14, a4
	mov.n	a15, a5
	or	a14, a14, a15
	beqz.n	a14, .L598
	l32i	a4, a7, 0
	l32i	a5, a7, 4
	l32i	a14, a7, 24
	l32i	a15, a7, 28
	add.n	a8, a4, a14
	add.n	a9, a5, a15
	bgeu	a9, a15, .L600
	addi.n	a8, a8, 1
.L600:
	s32i	a8, a7, 0
	s32i	a9, a7, 4
.L598:
	l32i	a14, a7, 28
	extui	a15, a14, 31, 1
	l32i	a14, a7, 24
	add.n	a10, a14, a14
	or	a10, a15, a10
	l32i	a14, a7, 28
	add.n	a11, a14, a14
	s32i	a10, a7, 24
	s32i	a11, a7, 28
	l32i	a14, a7, 8
	slli	a14, a14, 31
	l32i	a15, a7, 12
	srli	a13, a15, 1
	or	a13, a14, a13
	l32i	a14, a7, 8
	srli	a12, a14, 1
	s32i	a12, a7, 8
	s32i	a13, a7, 12
.L597:
	l32i	a14, a7, 8
	l32i	a15, a7, 12
	or	a14, a14, a15
	bnez.n	a14, .L601
	l32i	a8, a7, 0
	l32i	a9, a7, 4
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	movi.n	a8, 1
	s32i	a8, a7, 0
	movi.n	a8, 0
	s32i	a8, a7, 4
	j	.L604
.L606:
	l32i	a8, a7, 20
	add.n	a8, a8, a8
	s32i	a8, a7, 20
	l32i	a8, a7, 0
	add.n	a8, a8, a8
	s32i	a8, a7, 0
.L604:
	l32i	a9, a7, 20
	l32i	a8, a7, 16
	bgeu	a9, a8, .L607
	l32i	a8, a7, 0
	beqz.n	a8, .L607
	l32i	a8, a7, 20
	bgez	a8, .L606
	j	.L607
.L609:
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	bltu	a9, a8, .L608
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	sub	a8, a9, a8
	s32i	a8, a7, 16
	l32i	a9, a7, 4
	l32i	a8, a7, 0
	or	a8, a9, a8
	s32i	a8, a7, 4
.L608:
	l32i	a8, a7, 0
	srli	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	srli	a8, a8, 1
	s32i	a8, a7, 20
.L607:
	l32i	a8, a7, 0
	bnez.n	a8, .L609
	l32i	a8, a7, 24
	beqz.n	a8, .L610
	l32i	a8, a7, 16
	j	.L611
.L610:
	l32i	a8, a7, 4
.L611:
	mov.n	a2, a8
	retw.n
	.size	udivmodsi4, .-udivmodsi4
	.align	4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a8, a2
	s8i	a8, a7, 16
	l8ui	a8, a7, 16
	bnez.n	a8, .L613
	movi.n	a8, 7
	j	.L614
.L613:
	l8ui	a8, a7, 16
	slli	a8, a8, 8
	nsau	a8, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	addi.n	a8, a8, -1
.L614:
	mov.n	a2, a8
	retw.n
	.size	__clrsbqi2, .-__clrsbqi2
	.align	4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a10, a7, 16
	bgez	a10, .L616
	l32i	a11, a7, 16
	movi.n	a10, -1
	xor	a8, a11, a10
	l32i	a11, a7, 20
	movi.n	a10, -1
	xor	a9, a11, a10
	s32i	a8, a7, 16
	s32i	a9, a7, 20
.L616:
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	or	a8, a8, a9
	bnez.n	a8, .L618
	movi.n	a8, 0x3f
	j	.L619
.L618:
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	beqz.n	a8, .L620
	nsau	a8, a8
	j	.L621
.L620:
	nsau	a8, a9
	addi	a8, a8, 32
.L621:
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	addi.n	a8, a8, -1
.L619:
	mov.n	a2, a8
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L623
.L625:
	l32i	a8, a7, 16
	extui	a8, a8, 0, 1
	beqz.n	a8, .L624
	l32i	a9, a7, 0
	l32i	a8, a7, 20
	add.n	a8, a9, a8
	s32i	a8, a7, 0
.L624:
	l32i	a8, a7, 16
	srli	a8, a8, 1
	s32i	a8, a7, 16
	l32i	a8, a7, 20
	add.n	a8, a8, a8
	s32i	a8, a7, 20
.L623:
	l32i	a8, a7, 16
	bnez.n	a8, .L625
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	l32i	a8, a7, 40
	srli	a8, a8, 3
	s32i	a8, a7, 8
	l32i	a9, a7, 40
	movi.n	a8, -8
	and	a8, a9, a8
	s32i	a8, a7, 4
	l32i	a8, a7, 32
	s32i	a8, a7, 12
	l32i	a8, a7, 36
	s32i	a8, a7, 16
	l32i	a9, a7, 12
	l32i	a8, a7, 16
	bltu	a9, a8, .L628
	l32i	a9, a7, 16
	l32i	a8, a7, 40
	add.n	a9, a9, a8
	l32i	a8, a7, 12
	bgeu	a9, a8, .L635
.L628:
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L630
.L631:
	l32i	a8, a7, 0
	slli	a8, a8, 3
	l32i	a9, a7, 36
	add.n	a8, a9, a8
	l32i	a9, a7, 0
	slli	a9, a9, 3
	l32i	a10, a7, 32
	add.n	a10, a10, a9
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	s32i	a8, a10, 0
	s32i	a9, a10, 4
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L630:
	l32i	a9, a7, 0
	l32i	a8, a7, 8
	bltu	a9, a8, .L631
	j	.L632
.L633:
	l32i	a9, a7, 16
	l32i	a8, a7, 4
	add.n	a9, a9, a8
	l32i	a10, a7, 12
	l32i	a8, a7, 4
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
.L632:
	l32i	a8, a7, 40
	l32i	a9, a7, 4
	bltu	a9, a8, .L633
	j	.L634
.L636:
	l32i	a9, a7, 16
	l32i	a8, a7, 40
	add.n	a9, a9, a8
	l32i	a10, a7, 12
	l32i	a8, a7, 40
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
.L635:
	l32i	a8, a7, 40
	addi.n	a9, a8, -1
	s32i	a9, a7, 40
	bnez.n	a8, .L636
	nop.n
.L634:
	nop.n
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 24
	srli	a8, a8, 1
	s32i	a8, a7, 4
	l32i	a8, a7, 16
	s32i	a8, a7, 8
	l32i	a8, a7, 20
	s32i	a8, a7, 12
	l32i	a9, a7, 8
	l32i	a8, a7, 12
	bltu	a9, a8, .L638
	l32i	a9, a7, 12
	l32i	a8, a7, 24
	add.n	a9, a9, a8
	l32i	a8, a7, 8
	bgeu	a9, a8, .L644
.L638:
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L640
.L641:
	l32i	a8, a7, 0
	add.n	a8, a8, a8
	l32i	a9, a7, 20
	add.n	a9, a9, a8
	l32i	a8, a7, 0
	add.n	a8, a8, a8
	l32i	a10, a7, 16
	add.n	a8, a10, a8
	l16ui	a9, a9, 0
	sext	a9, a9, 15
	s16i	a9, a8, 0
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L640:
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	bltu	a9, a8, .L641
	l32i	a8, a7, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L643
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	l32i	a9, a7, 12
	add.n	a9, a9, a8
	l32i	a8, a7, 24
	addi.n	a8, a8, -1
	l32i	a10, a7, 8
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	j	.L643
.L645:
	l32i	a9, a7, 12
	l32i	a8, a7, 24
	add.n	a9, a9, a8
	l32i	a10, a7, 8
	l32i	a8, a7, 24
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
.L644:
	l32i	a8, a7, 24
	addi.n	a9, a8, -1
	s32i	a9, a7, 24
	bnez.n	a8, .L645
	nop.n
.L643:
	nop.n
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	l32i	a8, a7, 40
	srli	a8, a8, 2
	s32i	a8, a7, 8
	l32i	a9, a7, 40
	movi.n	a8, -4
	and	a8, a9, a8
	s32i	a8, a7, 4
	l32i	a8, a7, 32
	s32i	a8, a7, 12
	l32i	a8, a7, 36
	s32i	a8, a7, 16
	l32i	a9, a7, 12
	l32i	a8, a7, 16
	bltu	a9, a8, .L647
	l32i	a9, a7, 16
	l32i	a8, a7, 40
	add.n	a9, a9, a8
	l32i	a8, a7, 12
	bgeu	a9, a8, .L654
.L647:
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L649
.L650:
	l32i	a8, a7, 0
	slli	a8, a8, 2
	l32i	a9, a7, 36
	add.n	a9, a9, a8
	l32i	a8, a7, 0
	slli	a8, a8, 2
	l32i	a10, a7, 32
	add.n	a8, a10, a8
	l32i	a9, a9, 0
	s32i	a9, a8, 0
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L649:
	l32i	a9, a7, 0
	l32i	a8, a7, 8
	bltu	a9, a8, .L650
	j	.L651
.L652:
	l32i	a9, a7, 16
	l32i	a8, a7, 4
	add.n	a9, a9, a8
	l32i	a10, a7, 12
	l32i	a8, a7, 4
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
.L651:
	l32i	a8, a7, 40
	l32i	a9, a7, 4
	bltu	a9, a8, .L652
	j	.L653
.L655:
	l32i	a9, a7, 16
	l32i	a8, a7, 40
	add.n	a9, a9, a8
	l32i	a10, a7, 12
	l32i	a8, a7, 40
	add.n	a8, a10, a8
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
.L654:
	l32i	a8, a7, 40
	addi.n	a9, a8, -1
	s32i	a9, a7, 40
	bnez.n	a8, .L655
	nop.n
.L653:
	nop.n
	retw.n
	.size	__cmovw, .-__cmovw
	.align	4
	.global	__modi
	.type	__modi, @function
__modi:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32r	a8, .LC121
	l32i	a10, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32r	a8, .LC122
	l32i	a10, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32r	a8, .LC123
	l32i	a10, a7, 0
	l32i	a11, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32r	a8, .LC124
	l32i	a10, a7, 0
	l32i	a11, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	remu	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__umodi, .-__umodi
	.align	4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a8, a2
	s16i	a8, a7, 16
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L669
.L672:
	l16ui	a9, a7, 16
	movi.n	a10, 0xf
	l32i	a8, a7, 0
	sub	a8, a10, a8
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	bnez.n	a8, .L674
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L669:
	l32i	a8, a7, 0
	blti	a8, 16, .L672
	j	.L671
.L674:
	nop.n
.L671:
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a8, a2
	s16i	a8, a7, 16
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L676
.L679:
	l16ui	a9, a7, 16
	l32i	a8, a7, 0
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	bnez.n	a8, .L681
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L676:
	l32i	a8, a7, 0
	blti	a8, 16, .L679
	j	.L678
.L681:
	nop.n
.L678:
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	l32r	a8, .LC126
	l32r	a11, .LC130
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	bltz	a8, .L687
	l32r	a8, .LC127
	l32r	a11, .LC130
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a8
	l32r	a8, .LC128
	mov.n	a10, a9
	callx8	a8
	mov.n	a9, a10
	l32r	a8, .LC129
	add.n	a8, a9, a8
	j	.L685
.L687:
	l32r	a8, .LC128
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
.L685:
	mov.n	a2, a8
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a8, a2
	s16i	a8, a7, 16
	movi.n	a8, 0
	s32i	a8, a7, 4
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L689
.L691:
	l16ui	a9, a7, 16
	l32i	a8, a7, 0
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	beqz.n	a8, .L690
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
.L690:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L689:
	l32i	a8, a7, 0
	blti	a8, 16, .L691
	l32i	a8, a7, 4
	extui	a8, a8, 0, 1
	mov.n	a2, a8
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a8, a2
	s16i	a8, a7, 16
	movi.n	a8, 0
	s32i	a8, a7, 4
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L694
.L696:
	l16ui	a9, a7, 16
	l32i	a8, a7, 0
	ssr	a8
	sra	a8, a9
	extui	a8, a8, 0, 1
	beqz.n	a8, .L695
	l32i	a8, a7, 4
	addi.n	a8, a8, 1
	s32i	a8, a7, 4
.L695:
	l32i	a8, a7, 0
	addi.n	a8, a8, 1
	s32i	a8, a7, 0
.L694:
	l32i	a8, a7, 0
	blti	a8, 16, .L696
	l32i	a8, a7, 4
	mov.n	a2, a8
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	s32i	a8, a7, 0
	j	.L699
.L701:
	l32i	a8, a7, 16
	extui	a8, a8, 0, 1
	beqz.n	a8, .L700
	l32i	a9, a7, 0
	l32i	a8, a7, 20
	add.n	a8, a9, a8
	s32i	a8, a7, 0
.L700:
	l32i	a8, a7, 16
	srli	a8, a8, 1
	s32i	a8, a7, 16
	l32i	a8, a7, 20
	add.n	a8, a8, a8
	s32i	a8, a7, 20
.L699:
	l32i	a8, a7, 16
	bnez.n	a8, .L701
	l32i	a8, a7, 0
	mov.n	a2, a8
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	s32i	a8, a7, 0
	l32i	a8, a7, 16
	bnez.n	a8, .L706
	movi.n	a8, 0
	j	.L705
.L708:
	l32i	a8, a7, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L707
	l32i	a9, a7, 0
	l32i	a8, a7, 16
	add.n	a8, a9, a8
	s32i	a8, a7, 0
.L707:
	l32i	a8, a7, 16
	add.n	a8, a8, a8
	s32i	a8, a7, 16
	l32i	a8, a7, 20
	srli	a8, a8, 1
	s32i	a8, a7, 20
.L706:
	l32i	a8, a7, 20
	bnez.n	a8, .L708
	l32i	a8, a7, 0
.L705:
	mov.n	a2, a8
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	movi.n	a8, 1
	s32i	a8, a7, 0
	movi.n	a8, 0
	s32i	a8, a7, 4
	j	.L710
.L712:
	l32i	a8, a7, 20
	add.n	a8, a8, a8
	s32i	a8, a7, 20
	l32i	a8, a7, 0
	add.n	a8, a8, a8
	s32i	a8, a7, 0
.L710:
	l32i	a9, a7, 20
	l32i	a8, a7, 16
	bgeu	a9, a8, .L713
	l32i	a8, a7, 0
	beqz.n	a8, .L713
	l32i	a8, a7, 20
	bgez	a8, .L712
	j	.L713
.L715:
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	bltu	a9, a8, .L714
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	sub	a8, a9, a8
	s32i	a8, a7, 16
	l32i	a9, a7, 4
	l32i	a8, a7, 0
	or	a8, a9, a8
	s32i	a8, a7, 4
.L714:
	l32i	a8, a7, 0
	srli	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	srli	a8, a8, 1
	s32i	a8, a7, 20
.L713:
	l32i	a8, a7, 0
	bnez.n	a8, .L715
	l32i	a8, a7, 24
	beqz.n	a8, .L716
	l32i	a8, a7, 16
	j	.L717
.L716:
	l32i	a8, a7, 4
.L717:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	l32r	a8, .LC131
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L726
	movi.n	a8, -1
	j	.L721
.L726:
	l32r	a8, .LC132
	l32i.n	a11, a7, 4
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L727
	movi.n	a8, 1
	j	.L721
.L727:
	movi.n	a8, 0
.L721:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 0
	s32i.n	a3, a7, 4
	s32i.n	a4, a7, 8
	s32i.n	a5, a7, 12
	l32r	a8, .LC133
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	bgez	a8, .L736
	movi.n	a8, -1
	j	.L731
.L736:
	l32r	a8, .LC134
	l32i.n	a12, a7, 8
	l32i.n	a13, a7, 12
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	blti	a8, 1, .L737
	movi.n	a8, 1
	j	.L731
.L737:
	movi.n	a8, 0
.L731:
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a12, a7, 0
	mov.n	a9, a12
	srai	a12, a12, 31
	mov.n	a8, a12
	l32i	a12, a7, 4
	mov.n	a11, a12
	srai	a12, a12, 31
	mov.n	a10, a12
	mull	a13, a8, a11
	mull	a12, a10, a9
	add.n	a6, a13, a12
	mov.n	a10, a9
	l32r	a8, .LC135
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	add.n	a10, a6, a8
	mov.n	a8, a10
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a12, a7, 0
	mov.n	a9, a12
	movi.n	a8, 0
	l32i	a12, a7, 4
	mov.n	a11, a12
	movi.n	a10, 0
	mull	a13, a8, a11
	mull	a12, a10, a9
	add.n	a6, a13, a12
	mov.n	a10, a9
	l32r	a8, .LC136
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	add.n	a10, a6, a8
	mov.n	a8, a10
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	s32i	a8, a7, 4
	movi.n	a8, 0
	s32i	a8, a7, 8
	l32i	a8, a7, 20
	bgez	a8, .L743
	l32i	a8, a7, 20
	neg	a8, a8
	s32i	a8, a7, 20
	movi.n	a8, 1
	s32i	a8, a7, 4
.L743:
	movi.n	a8, 0
	s8i	a8, a7, 0
	j	.L744
.L747:
	l32i	a8, a7, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L745
	l32i	a9, a7, 8
	l32i	a8, a7, 16
	add.n	a8, a9, a8
	s32i	a8, a7, 8
.L745:
	l32i	a8, a7, 16
	add.n	a8, a8, a8
	s32i	a8, a7, 16
	l32i	a8, a7, 20
	srai	a8, a8, 1
	s32i	a8, a7, 20
	l8ui	a8, a7, 0
	addi.n	a8, a8, 1
	s8i	a8, a7, 0
.L744:
	l32i	a8, a7, 20
	beqz.n	a8, .L746
	l8ui	a8, a7, 0
	bltui	a8, 32, .L747
.L746:
	l32i	a8, a7, 4
	beqz.n	a8, .L748
	l32i	a8, a7, 8
	neg	a8, a8
	j	.L750
.L748:
	l32i	a8, a7, 8
.L750:
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	s32i	a8, a7, 0
	l32i	a8, a7, 16
	bgez	a8, .L752
	l32i	a8, a7, 16
	neg	a8, a8
	s32i	a8, a7, 16
	l32i	a10, a7, 0
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a10
	extui	a8, a8, 0, 8
	s32i	a8, a7, 0
.L752:
	l32i	a8, a7, 20
	bgez	a8, .L753
	l32i	a8, a7, 20
	neg	a8, a8
	s32i	a8, a7, 20
	l32i	a10, a7, 0
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a10
	extui	a8, a8, 0, 8
	s32i	a8, a7, 0
.L753:
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	movi.n	a12, 0
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC137
	callx8	a8
	mov.n	a8, a10
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	beqz.n	a8, .L754
	l32i	a8, a7, 4
	neg	a8, a8
	s32i	a8, a7, 4
.L754:
	l32i	a8, a7, 4
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	movi.n	a8, 0
	s32i	a8, a7, 0
	l32i	a8, a7, 16
	bgez	a8, .L757
	l32i	a8, a7, 16
	neg	a8, a8
	s32i	a8, a7, 16
	movi.n	a8, 1
	s32i	a8, a7, 0
.L757:
	l32i	a8, a7, 20
	bgez	a8, .L758
	l32i	a8, a7, 20
	neg	a8, a8
	s32i	a8, a7, 20
.L758:
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	movi.n	a12, 1
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC138
	callx8	a8
	mov.n	a8, a10
	s32i	a8, a7, 4
	l32i	a8, a7, 0
	beqz.n	a8, .L759
	l32i	a8, a7, 4
	neg	a8, a8
	s32i	a8, a7, 4
.L759:
	l32i	a8, a7, 4
	mov.n	a2, a8
	retw.n
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a8, a2
	mov.n	a9, a3
	s32i	a4, a7, 24
	s16i	a8, a7, 16
	mov.n	a8, a9
	s16i	a8, a7, 20
	movi.n	a8, 1
	s16i	a8, a7, 0
	movi.n	a8, 0
	s16i	a8, a7, 2
	j	.L762
.L764:
	l16ui	a8, a7, 20
	add.n	a8, a8, a8
	s16i	a8, a7, 20
	l16ui	a8, a7, 0
	add.n	a8, a8, a8
	s16i	a8, a7, 0
.L762:
	l16ui	a9, a7, 20
	l16ui	a8, a7, 16
	bgeu	a9, a8, .L765
	l16ui	a8, a7, 0
	beqz.n	a8, .L765
	l16ui	a8, a7, 20
	sext	a8, a8, 15
	bgez	a8, .L764
	j	.L765
.L767:
	l16ui	a9, a7, 16
	l16ui	a8, a7, 20
	bltu	a9, a8, .L766
	l16ui	a9, a7, 16
	l16ui	a8, a7, 20
	sub	a8, a9, a8
	s16i	a8, a7, 16
	l16ui	a9, a7, 2
	l16ui	a8, a7, 0
	or	a8, a9, a8
	s16i	a8, a7, 2
.L766:
	l16ui	a8, a7, 0
	srli	a8, a8, 1
	s16i	a8, a7, 0
	l16ui	a8, a7, 20
	srli	a8, a8, 1
	s16i	a8, a7, 20
.L765:
	l16ui	a8, a7, 0
	bnez.n	a8, .L767
	l32i	a8, a7, 24
	beqz.n	a8, .L768
	l16ui	a8, a7, 16
	j	.L769
.L768:
	l16ui	a8, a7, 2
.L769:
	mov.n	a2, a8
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	movi.n	a8, 1
	s32i	a8, a7, 0
	movi.n	a8, 0
	s32i	a8, a7, 4
	j	.L771
.L773:
	l32i	a8, a7, 20
	add.n	a8, a8, a8
	s32i	a8, a7, 20
	l32i	a8, a7, 0
	add.n	a8, a8, a8
	s32i	a8, a7, 0
.L771:
	l32i	a9, a7, 20
	l32i	a8, a7, 16
	bgeu	a9, a8, .L774
	l32i	a8, a7, 0
	beqz.n	a8, .L774
	l32i	a8, a7, 20
	bgez	a8, .L773
	j	.L774
.L776:
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	bltu	a9, a8, .L775
	l32i	a9, a7, 16
	l32i	a8, a7, 20
	sub	a8, a9, a8
	s32i	a8, a7, 16
	l32i	a9, a7, 4
	l32i	a8, a7, 0
	or	a8, a9, a8
	s32i	a8, a7, 4
.L775:
	l32i	a8, a7, 0
	srli	a8, a8, 1
	s32i	a8, a7, 0
	l32i	a8, a7, 20
	srli	a8, a8, 1
	s32i	a8, a7, 20
.L774:
	l32i	a8, a7, 0
	bnez.n	a8, .L776
	l32i	a8, a7, 24
	beqz.n	a8, .L777
	l32i	a8, a7, 16
	j	.L778
.L777:
	l32i	a8, a7, 4
.L778:
	mov.n	a2, a8
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	movi.n	a8, 0x20
	s32i	a8, a7, 0
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a9, a7, 40
	l32i	a8, a7, 0
	and	a8, a9, a8
	beqz.n	a8, .L780
	movi.n	a8, 0
	s32i	a8, a7, 20
	l32i	a9, a7, 12
	l32i	a10, a7, 40
	l32i	a8, a7, 0
	sub	a8, a10, a8
	ssl	a8
	sll	a8, a9
	s32i	a8, a7, 16
	j	.L781
.L780:
	l32i	a8, a7, 40
	bnez.n	a8, .L782
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	j	.L784
.L782:
	l32i	a9, a7, 12
	l32i	a8, a7, 40
	ssl	a8
	sll	a8, a9
	s32i	a8, a7, 20
	l32i	a8, a7, 8
	mov.n	a9, a8
	l32i	a8, a7, 40
	ssl	a8
	sll	a9, a9
	l32i	a10, a7, 12
	l32i	a11, a7, 0
	l32i	a8, a7, 40
	sub	a8, a11, a8
	ssr	a8
	srl	a8, a10
	or	a8, a9, a8
	s32i	a8, a7, 16
.L781:
	l32i	a8, a7, 16
	l32i	a9, a7, 20
.L784:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	movi.n	a8, 0x20
	s32i	a8, a7, 0
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a9, a7, 40
	l32i	a8, a7, 0
	and	a8, a9, a8
	beqz.n	a8, .L786
	l32i	a9, a7, 8
	l32i	a8, a7, 0
	addi.n	a8, a8, -1
	ssr	a8
	sra	a8, a9
	s32i	a8, a7, 16
	l32i	a9, a7, 8
	l32i	a10, a7, 40
	l32i	a8, a7, 0
	sub	a8, a10, a8
	ssr	a8
	sra	a8, a9
	s32i	a8, a7, 20
	j	.L787
.L786:
	l32i	a8, a7, 40
	bnez.n	a8, .L788
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	j	.L790
.L788:
	l32i	a9, a7, 8
	l32i	a8, a7, 40
	ssr	a8
	sra	a8, a9
	s32i	a8, a7, 16
	l32i	a8, a7, 8
	mov.n	a10, a8
	l32i	a9, a7, 0
	l32i	a8, a7, 40
	sub	a8, a9, a8
	ssl	a8
	sll	a9, a10
	l32i	a10, a7, 12
	l32i	a8, a7, 40
	ssr	a8
	srl	a8, a10
	or	a8, a9, a8
	s32i	a8, a7, 20
.L787:
	l32i	a8, a7, 16
	l32i	a9, a7, 20
.L790:
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
	entry	sp, 176
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a8, a7, 0
	extui	a5, a8, 24, 8
	movi.n	a4, 0
	l32i	a8, a7, 0
	srli	a11, a8, 8
	movi.n	a10, 0
	movi.n	a8, 0
	and	a12, a10, a8
	l32r	a8, .LC139
	and	a13, a11, a8
	or	a8, a4, a12
	s32i	a8, a7, 32
	or	a8, a5, a13
	s32i	a8, a7, 36
	l32i	a8, a7, 0
	slli	a9, a8, 8
	l32i	a8, a7, 4
	extui	a15, a8, 24, 8
	or	a15, a9, a15
	l32i	a8, a7, 0
	extui	a14, a8, 24, 8
	movi.n	a8, 0
	and	a8, a14, a8
	s32i	a8, a7, 40
	l32r	a8, .LC140
	and	a8, a15, a8
	s32i	a8, a7, 44
	addi	a8, a7, 32
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a12, a10
	addi	a8, a7, 40
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a13, a8
	or	a12, a12, a13
	s32i	a12, a7, 48
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 52
	l32i	a8, a7, 0
	slli	a9, a8, 24
	l32i	a8, a7, 4
	srli	a8, a8, 8
	s32i	a8, a7, 12
	l32i	a8, a7, 12
	or	a8, a9, a8
	s32i	a8, a7, 12
	l32i	a8, a7, 0
	srli	a8, a8, 8
	s32i	a8, a7, 8
	movi.n	a8, 0
	addi.n	a9, a7, 8
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a9, a8
	s32i	a8, a7, 56
	l32r	a8, .LC141
	mov.n	a9, a11
	and	a8, a9, a8
	s32i	a8, a7, 60
	addi	a8, a7, 48
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a12, a10
	addi	a8, a7, 56
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a13, a8
	or	a12, a12, a13
	s32i	a12, a7, 64
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 68
	l32i	a8, a7, 4
	extui	a9, a8, 24, 8
	l32i	a8, a7, 0
	slli	a8, a8, 8
	s32i	a8, a7, 16
	l32i	a8, a7, 16
	or	a8, a9, a8
	s32i	a8, a7, 16
	l32i	a8, a7, 4
	slli	a8, a8, 8
	s32i	a8, a7, 20
	addi	a8, a7, 16
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a8, a10
	extui	a8, a8, 0, 8
	s32i	a8, a7, 72
	movi.n	a8, 0
	mov.n	a9, a11
	and	a8, a9, a8
	s32i	a8, a7, 76
	addi	a8, a7, 64
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a12, a10
	addi	a8, a7, 72
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a13, a8
	or	a12, a12, a13
	s32i	a12, a7, 80
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 84
	l32i	a8, a7, 4
	srli	a9, a8, 8
	l32i	a8, a7, 0
	slli	a8, a8, 24
	s32i	a8, a7, 24
	l32i	a8, a7, 24
	or	a8, a9, a8
	s32i	a8, a7, 24
	l32i	a8, a7, 4
	slli	a8, a8, 24
	s32i	a8, a7, 28
	l32r	a8, .LC139
	addi	a9, a7, 24
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a9, a8
	s32i	a8, a7, 88
	movi.n	a8, 0
	mov.n	a9, a11
	and	a8, a9, a8
	s32i	a8, a7, 92
	addi	a8, a7, 80
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a12, a10
	addi	a8, a7, 88
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a13, a8
	or	a12, a12, a13
	s32i	a12, a7, 96
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 100
	l32i	a8, a7, 4
	slli	a8, a8, 8
	s32i	a8, a7, 104
	movi.n	a12, 0
	s32i	a12, a7, 108
	l32r	a8, .LC140
	addi	a9, a7, 104
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a9, a8
	s32i	a8, a7, 112
	movi.n	a8, 0
	mov.n	a9, a11
	and	a8, a9, a8
	s32i	a8, a7, 116
	addi	a8, a7, 96
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a13, a10
	addi	a8, a7, 112
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a14, a8
	or	a13, a13, a14
	s32i	a13, a7, 120
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 124
	l32i	a8, a7, 4
	slli	a8, a8, 24
	s32i	a8, a7, 128
	s32i	a12, a7, 132
	addi	a8, a7, 120
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a12, a10
	movi	a8, 0x80
	add.n	a8, a8, a7
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a13, a8
	or	a12, a12, a13
	s32i	a12, a7, 136
	mov.n	a10, a11
	mov.n	a8, a9
	or	a8, a10, a8
	s32i	a8, a7, 140
	movi	a8, 0x88
	add.n	a8, a8, a7
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a2, a8
	mov.n	a3, a9
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	l32i	a8, a7, 0
	extui	a9, a8, 24, 8
	l32i	a8, a7, 0
	srli	a10, a8, 8
	l32r	a8, .LC142
	and	a8, a10, a8
	or	a9, a9, a8
	l32i	a8, a7, 0
	slli	a10, a8, 8
	l32r	a8, .LC143
	and	a8, a10, a8
	or	a9, a9, a8
	l32i	a8, a7, 0
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
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	l32r	a9, .LC144
	bltu	a9, a8, .L796
	movi.n	a8, 0x10
	j	.L797
.L796:
	movi.n	a8, 0
.L797:
	s32i	a8, a7, 4
	movi.n	a9, 0x10
	l32i	a8, a7, 4
	sub	a8, a9, a8
	l32i	a9, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	s32i	a8, a7, 8
	l32i	a9, a7, 0
	l32r	a8, .LC145
	and	a8, a9, a8
	bnez.n	a8, .L798
	movi.n	a8, 8
	j	.L799
.L798:
	movi.n	a8, 0
.L799:
	s32i	a8, a7, 4
	movi.n	a9, 8
	l32i	a8, a7, 4
	sub	a8, a9, a8
	l32i	a9, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a9, a7, 0
	movi	a8, 0xf0
	and	a8, a9, a8
	bnez.n	a8, .L800
	movi.n	a8, 4
	j	.L801
.L800:
	movi.n	a8, 0
.L801:
	s32i	a8, a7, 4
	movi.n	a9, 4
	l32i	a8, a7, 4
	sub	a8, a9, a8
	l32i	a9, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a9, a7, 0
	movi.n	a8, 0xc
	and	a8, a9, a8
	bnez.n	a8, .L802
	movi.n	a8, 2
	j	.L803
.L802:
	movi.n	a8, 0
.L803:
	s32i	a8, a7, 4
	movi.n	a9, 2
	l32i	a8, a7, 4
	sub	a8, a9, a8
	l32i	a9, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a9, a7, 0
	movi.n	a8, 2
	and	a10, a9, a8
	movi.n	a9, 1
	movi.n	a8, 0
	moveqz	a8, a9, a10
	extui	a8, a8, 0, 8
	mov.n	a10, a8
	movi.n	a9, 2
	l32i	a8, a7, 0
	sub	a8, a9, a8
	mull	a9, a10, a8
	l32i	a8, a7, 8
	add.n	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	l32i	a8, a7, 24
	l32i	a9, a7, 28
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a9, a7, 0
	l32i	a8, a7, 8
	bge	a9, a8, .L806
	movi.n	a8, 0
	j	.L811
.L806:
	l32i	a8, a7, 0
	l32i	a9, a7, 8
	bge	a9, a8, .L808
	movi.n	a8, 2
	j	.L811
.L808:
	l32i	a9, a7, 4
	l32i	a8, a7, 12
	bgeu	a9, a8, .L809
	movi.n	a8, 0
	j	.L811
.L809:
	l32i	a8, a7, 4
	l32i	a9, a7, 12
	bgeu	a9, a8, .L810
	movi.n	a8, 2
	j	.L811
.L810:
	movi.n	a8, 1
.L811:
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	s32i	a5, a7, 12
	l32i	a10, a7, 8
	l32i	a11, a7, 12
	l32i	a8, a7, 0
	l32i	a9, a7, 4
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
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	extui	a8, a8, 0, 16
	bnez.n	a8, .L815
	movi.n	a8, 0x10
	j	.L816
.L815:
	movi.n	a8, 0
.L816:
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	s32i	a8, a7, 8
	l32i	a8, a7, 0
	extui	a8, a8, 0, 8
	bnez.n	a8, .L817
	movi.n	a8, 8
	j	.L818
.L817:
	movi.n	a8, 0
.L818:
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a8, a7, 0
	extui	a8, a8, 0, 4
	bnez.n	a8, .L819
	movi.n	a8, 4
	j	.L820
.L819:
	movi.n	a8, 0
.L820:
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a8, a7, 0
	extui	a8, a8, 0, 2
	bnez.n	a8, .L821
	movi.n	a8, 2
	j	.L822
.L821:
	movi.n	a8, 0
.L822:
	s32i	a8, a7, 4
	l32i	a9, a7, 0
	l32i	a8, a7, 4
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	extui	a8, a8, 0, 2
	s32i	a8, a7, 0
	l32i	a8, a7, 4
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a9, a7, 0
	movi.n	a8, -1
	xor	a8, a9, a8
	extui	a9, a8, 0, 1
	l32i	a8, a7, 0
	srli	a8, a8, 1
	movi.n	a10, 2
	sub	a8, a10, a8
	neg	a9, a9
	and	a9, a9, a8
	l32i	a8, a7, 8
	add.n	a8, a9, a8
	mov.n	a2, a8
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	movi.n	a8, 0x20
	s32i	a8, a7, 0
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a9, a7, 40
	l32i	a8, a7, 0
	and	a8, a9, a8
	beqz.n	a8, .L825
	movi.n	a8, 0
	s32i	a8, a7, 16
	l32i	a9, a7, 8
	l32i	a10, a7, 40
	l32i	a8, a7, 0
	sub	a8, a10, a8
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 20
	j	.L826
.L825:
	l32i	a8, a7, 40
	bnez.n	a8, .L827
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	j	.L829
.L827:
	l32i	a9, a7, 8
	l32i	a8, a7, 40
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 16
	l32i	a9, a7, 8
	l32i	a10, a7, 0
	l32i	a8, a7, 40
	sub	a8, a10, a8
	ssl	a8
	sll	a9, a9
	l32i	a10, a7, 12
	l32i	a8, a7, 40
	ssr	a8
	srl	a8, a10
	or	a8, a9, a8
	s32i	a8, a7, 20
.L826:
	l32i	a8, a7, 16
	l32i	a9, a7, 20
.L829:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 80
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	movi.n	a8, 0x10
	s32i	a8, a7, 0
	movi.n	a9, -1
	l32i	a8, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 4
	l32i	a9, a7, 32
	l32i	a8, a7, 4
	and	a9, a9, a8
	l32i	a10, a7, 36
	l32i	a8, a7, 4
	and	a8, a10, a8
	mull	a8, a9, a8
	s32i	a8, a7, 20
	l32i	a9, a7, 20
	l32i	a8, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 8
	l32i	a9, a7, 20
	l32i	a8, a7, 4
	and	a8, a9, a8
	s32i	a8, a7, 20
	l32i	a9, a7, 32
	l32i	a8, a7, 0
	ssr	a8
	srl	a9, a9
	l32i	a10, a7, 36
	l32i	a8, a7, 4
	and	a8, a10, a8
	mull	a8, a9, a8
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a9, a7, 20
	l32i	a10, a7, 8
	l32i	a8, a7, 4
	and	a10, a10, a8
	l32i	a8, a7, 0
	ssl	a8
	sll	a8, a10
	add.n	a8, a9, a8
	s32i	a8, a7, 20
	l32i	a9, a7, 8
	l32i	a8, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 16
	l32i	a9, a7, 20
	l32i	a8, a7, 0
	ssr	a8
	srl	a8, a9
	s32i	a8, a7, 8
	l32i	a9, a7, 20
	l32i	a8, a7, 4
	and	a8, a9, a8
	s32i	a8, a7, 20
	l32i	a9, a7, 36
	l32i	a8, a7, 0
	ssr	a8
	srl	a9, a9
	l32i	a10, a7, 32
	l32i	a8, a7, 4
	and	a8, a10, a8
	mull	a8, a9, a8
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a9, a7, 20
	l32i	a10, a7, 8
	l32i	a8, a7, 4
	and	a10, a10, a8
	l32i	a8, a7, 0
	ssl	a8
	sll	a8, a10
	add.n	a8, a9, a8
	s32i	a8, a7, 20
	l32i	a8, a7, 16
	mov.n	a10, a8
	l32i	a9, a7, 8
	l32i	a8, a7, 0
	ssr	a8
	srl	a8, a9
	add.n	a8, a10, a8
	s32i	a8, a7, 16
	l32i	a8, a7, 16
	mov.n	a11, a8
	l32i	a9, a7, 32
	l32i	a8, a7, 0
	ssr	a8
	srl	a9, a9
	l32i	a10, a7, 36
	l32i	a8, a7, 0
	ssr	a8
	srl	a8, a10
	mull	a8, a9, a8
	add.n	a8, a11, a8
	s32i	a8, a7, 16
	l32i	a8, a7, 16
	l32i	a9, a7, 20
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
	mov.n	a7, sp
	s32i	a2, a7, 32
	s32i	a3, a7, 36
	s32i	a4, a7, 40
	s32i	a5, a7, 44
	l32i	a8, a7, 32
	l32i	a9, a7, 36
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	l32i	a8, a7, 40
	l32i	a9, a7, 44
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a8, a7, 4
	l32i	a9, a7, 12
	mov.n	a11, a9
	mov.n	a10, a8
	l32r	a8, .LC147
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i	a8, a7, 16
	s32i	a9, a7, 20
	l32i	a8, a7, 16
	mov.n	a10, a8
	l32i	a8, a7, 0
	mov.n	a9, a8
	l32i	a8, a7, 12
	mull	a9, a9, a8
	l32i	a8, a7, 4
	l32i	a11, a7, 8
	mull	a8, a8, a11
	add.n	a8, a9, a8
	add.n	a8, a10, a8
	s32i	a8, a7, 16
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a12, a7, 0
	l32i	a13, a7, 4
	movi.n	a9, 0
	movi.n	a8, 0
	sub	a10, a8, a12
	bgeu	a9, a13, .L835
	addi.n	a10, a10, -1
.L835:
	sub	a11, a9, a13
	mov.n	a8, a10
	mov.n	a9, a11
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	__negdi2, .-__negdi2
	.literal_position
	.literal .LC148, 27030
	.align	4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a8, a7, 8
	mov.n	a9, a8
	l32i	a8, a7, 12
	xor	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	extui	a8, a8, 16, 16
	l32i	a9, a7, 0
	xor	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a8, a8, 8
	l32i	a9, a7, 0
	xor	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a8, a8, 4
	l32i	a9, a7, 0
	xor	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	extui	a8, a8, 16, 16
	l32i	a9, a7, 0
	xor	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a8, a8, 8
	l32i	a9, a7, 0
	xor	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a8, a8, 4
	l32i	a9, a7, 0
	xor	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
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
	entry	sp, 112
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	l32i	a8, a7, 0
	slli	a9, a8, 31
	l32i	a8, a7, 4
	srli	a11, a8, 1
	or	a11, a9, a11
	l32i	a8, a7, 0
	srli	a10, a8, 1
	l32r	a8, .LC150
	and	a4, a10, a8
	l32r	a8, .LC150
	and	a5, a11, a8
	l32i	a8, a7, 0
	l32i	a9, a7, 4
	sub	a12, a8, a4
	bgeu	a9, a5, .L842
	addi.n	a12, a12, -1
.L842:
	sub	a13, a9, a5
	s32i	a12, a7, 0
	s32i	a13, a7, 4
	l32i	a8, a7, 0
	slli	a9, a8, 30
	l32i	a8, a7, 4
	srli	a8, a8, 2
	s32i	a8, a7, 28
	l32i	a8, a7, 28
	or	a8, a9, a8
	s32i	a8, a7, 28
	l32i	a8, a7, 0
	srli	a8, a8, 2
	s32i	a8, a7, 24
	l32r	a8, .LC151
	addi	a9, a7, 24
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	mov.n	a9, a10
	and	a8, a9, a8
	s32i	a8, a7, 48
	l32r	a8, .LC151
	mov.n	a9, a11
	and	a8, a9, a8
	s32i	a8, a7, 52
	l32i	a9, a7, 0
	l32r	a8, .LC151
	and	a8, a9, a8
	s32i	a8, a7, 56
	l32i	a9, a7, 4
	l32r	a8, .LC151
	and	a8, a9, a8
	s32i	a8, a7, 60
	addi	a8, a7, 48
	l32i	a10, a8, 0
	l32i	a11, a8, 4
	mov.n	a12, a10
	addi	a8, a7, 56
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	mov.n	a13, a8
	add.n	a12, a12, a13
	s32i	a12, a7, 40
	mov.n	a10, a11
	mov.n	a11, a9
	add.n	a10, a10, a11
	s32i	a10, a7, 44
	addi	a10, a7, 40
	l32i	a11, a10, 4
	l32i	a10, a10, 0
	mov.n	a12, a11
	mov.n	a8, a9
	bgeu	a12, a8, .L843
	mov.n	a8, a10
	addi.n	a8, a8, 1
	s32i	a8, a7, 40
.L843:
	addi	a8, a7, 40
	l32i	a9, a8, 4
	l32i	a8, a8, 0
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	l32i	a8, a7, 0
	slli	a8, a8, 28
	l32i	a9, a7, 4
	srli	a9, a9, 4
	s32i	a9, a7, 36
	l32i	a9, a7, 36
	or	a8, a8, a9
	s32i	a8, a7, 36
	l32i	a8, a7, 0
	srli	a8, a8, 4
	s32i	a8, a7, 32
	l32i	a8, a7, 0
	l32i	a9, a7, 4
	addi	a10, a7, 32
	l32i	a11, a10, 4
	l32i	a10, a10, 0
	mov.n	a12, a10
	add.n	a14, a12, a8
	mov.n	a10, a11
	add.n	a15, a10, a9
	bgeu	a15, a9, .L844
	addi.n	a14, a14, 1
.L844:
	l32r	a8, .LC152
	and	a8, a14, a8
	s32i	a8, a7, 0
	l32r	a8, .LC152
	and	a8, a15, a8
	s32i	a8, a7, 4
	l32i	a8, a7, 4
	l32i	a9, a7, 0
	srli	a9, a9, 0
	s32i	a9, a7, 68
	movi.n	a9, 0
	s32i	a9, a7, 64
	l32i	a9, a7, 68
	add.n	a8, a8, a9
	s32i	a8, a7, 8
	l32i	a8, a7, 8
	extui	a8, a8, 16, 16
	l32i	a9, a7, 8
	add.n	a8, a9, a8
	s32i	a8, a7, 8
	l32i	a8, a7, 8
	srli	a9, a8, 8
	l32i	a8, a7, 8
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
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	l32i	a8, a7, 16
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a9, a8, 1
	l32r	a8, .LC153
	and	a8, a9, a8
	l32i	a9, a7, 0
	sub	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a9, a8, 2
	l32r	a8, .LC154
	and	a9, a9, a8
	l32i	a10, a7, 0
	l32r	a8, .LC154
	and	a8, a10, a8
	add.n	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a9, a8, 4
	l32i	a8, a7, 0
	add.n	a9, a9, a8
	l32r	a8, .LC155
	and	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	extui	a8, a8, 16, 16
	l32i	a9, a7, 0
	add.n	a8, a9, a8
	s32i	a8, a7, 0
	l32i	a8, a7, 0
	srli	a9, a8, 8
	l32i	a8, a7, 0
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
	mov.n	a7, sp
	s32i.n	a2, a7, 16
	s32i.n	a3, a7, 20
	s32i	a4, a7, 24
	l32i	a8, a7, 24
	extui	a8, a8, 31, 1
	extui	a8, a8, 0, 8
	s32i	a8, a7, 8
	l32r	a8, .LC159
	movi.n	a9, 0
	s32i.n	a8, a7, 0
	s32i.n	a9, a7, 4
.L852:
	l32i	a8, a7, 24
	extui	a8, a8, 0, 1
	beqz.n	a8, .L849
	l32r	a8, .LC157
	l32i.n	a12, a7, 16
	l32i.n	a13, a7, 20
	l32i.n	a10, a7, 0
	l32i.n	a11, a7, 4
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 0
	s32i.n	a9, a7, 4
.L849:
	l32i	a8, a7, 24
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, a7, 24
	l32i	a8, a7, 24
	beqz.n	a8, .L857
	l32r	a8, .LC157
	l32i.n	a12, a7, 16
	l32i.n	a13, a7, 20
	l32i.n	a10, a7, 16
	l32i.n	a11, a7, 20
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	s32i.n	a8, a7, 16
	s32i.n	a9, a7, 20
	j	.L852
.L857:
	nop.n
	l32i	a8, a7, 8
	beqz.n	a8, .L853
	l32r	a8, .LC158
	l32i.n	a12, a7, 0
	l32i.n	a13, a7, 4
	l32r	a10, .LC159
	movi.n	a11, 0
	callx8	a8
	mov.n	a8, a10
	mov.n	a9, a11
	j	.L855
.L853:
	l32i.n	a8, a7, 0
	l32i.n	a9, a7, 4
.L855:
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
	mov.n	a7, sp
	s32i.n	a2, a7, 16
	s32i	a3, a7, 20
	l32i	a8, a7, 20
	extui	a8, a8, 31, 1
	extui	a8, a8, 0, 8
	s32i	a8, a7, 4
	l32r	a8, .LC163
	s32i.n	a8, a7, 0
.L862:
	l32i	a8, a7, 20
	extui	a8, a8, 0, 1
	beqz.n	a8, .L859
	l32r	a8, .LC161
	l32i.n	a11, a7, 16
	l32i.n	a10, a7, 0
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, a7, 0
.L859:
	l32i	a8, a7, 20
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	s32i	a8, a7, 20
	l32i	a8, a7, 20
	beqz.n	a8, .L867
	l32r	a8, .LC161
	l32i.n	a11, a7, 16
	l32i.n	a10, a7, 16
	callx8	a8
	mov.n	a8, a10
	s32i.n	a8, a7, 16
	j	.L862
.L867:
	nop.n
	l32i	a8, a7, 4
	beqz.n	a8, .L863
	l32r	a8, .LC162
	l32i.n	a11, a7, 0
	l32r	a10, .LC163
	callx8	a8
	mov.n	a8, a10
	j	.L865
.L863:
	l32i.n	a8, a7, 0
.L865:
	mov.n	a2, a8
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 64
	mov.n	a7, sp
	s32i	a2, a7, 16
	s32i	a3, a7, 20
	s32i	a4, a7, 24
	s32i	a5, a7, 28
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	l32i	a8, a7, 24
	l32i	a9, a7, 28
	s32i	a8, a7, 8
	s32i	a9, a7, 12
	l32i	a9, a7, 0
	l32i	a8, a7, 8
	bgeu	a9, a8, .L869
	movi.n	a8, 0
	j	.L874
.L869:
	l32i	a8, a7, 0
	l32i	a9, a7, 8
	bgeu	a9, a8, .L871
	movi.n	a8, 2
	j	.L874
.L871:
	l32i	a9, a7, 4
	l32i	a8, a7, 12
	bgeu	a9, a8, .L872
	movi.n	a8, 0
	j	.L874
.L872:
	l32i	a8, a7, 4
	l32i	a9, a7, 12
	bgeu	a9, a8, .L873
	movi.n	a8, 2
	j	.L874
.L873:
	movi.n	a8, 1
.L874:
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
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	s32i	a5, a7, 12
	l32i	a8, a7, 0
	l32i	a9, a7, 4
	l32i	a10, a7, 8
	l32i	a11, a7, 12
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
