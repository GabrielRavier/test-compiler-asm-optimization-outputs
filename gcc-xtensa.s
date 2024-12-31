	.file	"mini-libc.c"
	.text
	.align	4
	.global	memmove
	.type	memmove, @function
memmove:
	entry	sp, 32
	mov.n	a7, sp
	bgeu	a3, a2, .L2
	add.n	a8, a3, a4
	add.n	a4, a2, a4
	j	.L3
.L4:
	addi.n	a8, a8, -1
	addi.n	a4, a4, -1
	l8ui	a9, a8, 0
	s8i	a9, a4, 0
.L3:
	bne	a8, a3, .L4
	j	.L5
.L2:
	beq	a2, a3, .L5
	mov.n	a8, a2
	add.n	a4, a2, a4
	j	.L6
.L7:
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
.L6:
	bne	a8, a4, .L7
.L5:
	retw.n
	.size	memmove, .-memmove
	.align	4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	entry	sp, 32
	mov.n	a7, sp
	extui	a4, a4, 0, 8
	j	.L9
.L11:
	addi.n	a5, a5, -1
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
.L9:
	beqz.n	a5, .L10
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	extui	a8, a8, 0, 8
	bne	a4, a8, .L11
.L10:
	beqz.n	a5, .L13
	addi.n	a2, a2, 1
	j	.L12
.L13:
	movi.n	a2, 0
.L12:
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 32
	mov.n	a7, sp
	extui	a3, a3, 0, 8
	j	.L15
.L17:
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
.L15:
	beqz.n	a4, .L16
	l8ui	a8, a2, 0
	bne	a3, a8, .L17
.L16:
	bnez.n	a4, .L18
	movi.n	a2, 0
.L18:
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a7, sp
	j	.L21
.L23:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
.L21:
	beqz.n	a4, .L22
	l8ui	a9, a2, 0
	l8ui	a8, a3, 0
	beq	a9, a8, .L23
.L22:
	beqz.n	a4, .L25
	l8ui	a2, a2, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
	j	.L24
.L25:
	movi.n	a2, 0
.L24:
	retw.n
	.size	memcmp, .-memcmp
	.align	4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	add.n	a4, a2, a4
	j	.L27
.L28:
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
.L27:
	bne	a8, a4, .L28
	retw.n
	.size	memcpy, .-memcpy
	.align	4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	entry	sp, 32
	mov.n	a7, sp
	extui	a3, a3, 0, 8
	addi.n	a4, a4, -1
	j	.L30
.L32:
	add.n	a8, a2, a4
	l8ui	a9, a8, 0
	addi.n	a8, a4, -1
	bne	a3, a9, .L33
	add.n	a2, a2, a4
	j	.L31
.L33:
	mov.n	a4, a8
.L30:
	bnei	a4, -1, .L32
	movi.n	a2, 0
.L31:
	retw.n
	.size	memrchr, .-memrchr
	.align	4
	.global	memset
	.type	memset, @function
memset:
	entry	sp, 32
	mov.n	a7, sp
	add.n	a4, a2, a4
	mov.n	a8, a2
	j	.L35
.L36:
	s8i	a3, a8, 0
	addi.n	a8, a8, 1
.L35:
	bne	a8, a4, .L36
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	mov.n	a7, sp
	j	.L38
.L39:
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
.L38:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	extui	a8, a8, 0, 8
	bnez.n	a8, .L39
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	mov.n	a7, sp
	extui	a3, a3, 0, 8
	j	.L41
.L43:
	addi.n	a2, a2, 1
.L41:
	l8ui	a8, a2, 0
	beqz.n	a8, .L42
	bne	a3, a8, .L43
.L42:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
	mov.n	a7, sp
.L46:
	mov.n	a8, a2
	l8ui	a9, a2, 0
	beq	a3, a9, .L47
	addi.n	a2, a2, 1
	addi.n	a8, a2, -1
	l8ui	a8, a8, 0
	bnez.n	a8, .L46
	movi.n	a2, 0
	j	.L45
.L47:
.L45:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	mov.n	a7, sp
	j	.L50
.L52:
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
.L50:
	l8ui	a9, a2, 0
	l8ui	a8, a3, 0
	bne	a9, a8, .L51
	bnez.n	a9, .L52
.L51:
	l8ui	a2, a2, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L54
.L55:
	addi.n	a8, a8, 1
.L54:
	l8ui	a9, a8, 0
	bnez.n	a9, .L55
	sub	a2, a8, a2
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a7, sp
	beqz.n	a4, .L61
	mov.n	a8, a2
	j	.L58
.L60:
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
.L58:
	l8ui	a9, a8, 0
	beqz.n	a9, .L59
	l8ui	a12, a3, 0
	addi.n	a9, a4, -1
	add.n	a9, a9, a2
	sub	a9, a9, a8
	movi.n	a10, 1
	moveqz	a10, a9, a9
	movi.n	a9, 1
	movi.n	a11, 0
	moveqz	a9, a11, a12
	bnone	a9, a10, .L59
	l8ui	a10, a8, 0
	beq	a10, a12, .L60
.L59:
	l8ui	a2, a8, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
	j	.L57
.L61:
	movi.n	a2, 0
.L57:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L63
.L64:
	l8ui	a9, a8, 1
	s8i	a9, a3, 0
	l8ui	a9, a8, 0
	s8i	a9, a3, 1
	addi.n	a3, a3, 2
	addi.n	a8, a8, 2
.L63:
	add.n	a9, a2, a4
	sub	a9, a9, a8
	bgei	a9, 2, .L64
	retw.n
	.size	swab, .-swab
	.align	4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 0x20
	or	a8, a2, a8
	addi	a8, a8, -97
	movi.n	a2, 1
	movi.n	a9, 0x19
	bgeu	a9, a8, .L66
	movi.n	a2, 0
.L66:
	extui	a2, a2, 0, 8
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	movi	a9, 0x7f
	bgeu	a9, a2, .L68
	movi.n	a8, 0
.L68:
	extui	a2, a8, 0, 8
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 32
	mov.n	a7, sp
	addi	a9, a2, -32
	nsau	a9, a9
	srli	a9, a9, 5
	addi	a8, a2, -9
	movi.n	a2, 1
	movi.n	a10, 0
	movnez	a2, a10, a8
	extui	a2, a2, 0, 8
	or	a2, a2, a9
	retw.n
	.size	isblank, .-isblank
	.align	4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	movi.n	a9, 0x1f
	bgeu	a9, a2, .L71
	movi.n	a8, 0
.L71:
	extui	a9, a8, 0, 8
	addi	a8, a2, -127
	nsau	a8, a8
	srli	a8, a8, 5
	or	a2, a9, a8
	retw.n
	.size	iscntrl, .-iscntrl
	.align	4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	entry	sp, 32
	mov.n	a7, sp
	addi	a2, a2, -48
	movi.n	a8, 1
	movi.n	a9, 9
	bgeu	a9, a2, .L73
	movi.n	a8, 0
.L73:
	extui	a2, a8, 0, 8
	retw.n
	.size	isdigit, .-isdigit
	.align	4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	entry	sp, 32
	mov.n	a7, sp
	addi	a2, a2, -33
	movi.n	a8, 1
	movi.n	a9, 0x5d
	bgeu	a9, a2, .L75
	movi.n	a8, 0
.L75:
	extui	a2, a8, 0, 8
	retw.n
	.size	isgraph, .-isgraph
	.align	4
	.global	islower
	.type	islower, @function
islower:
	entry	sp, 32
	mov.n	a7, sp
	addi	a2, a2, -97
	movi.n	a8, 1
	movi.n	a9, 0x19
	bgeu	a9, a2, .L77
	movi.n	a8, 0
.L77:
	extui	a2, a8, 0, 8
	retw.n
	.size	islower, .-islower
	.align	4
	.global	isprint
	.type	isprint, @function
isprint:
	entry	sp, 32
	mov.n	a7, sp
	addi	a2, a2, -32
	movi.n	a8, 1
	movi.n	a9, 0x5e
	bgeu	a9, a2, .L79
	movi.n	a8, 0
.L79:
	extui	a2, a8, 0, 8
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	mov.n	a7, sp
	addi	a9, a2, -32
	nsau	a9, a9
	srli	a9, a9, 5
	addi	a2, a2, -9
	movi.n	a8, 1
	bltui	a2, 5, .L81
	movi.n	a8, 0
.L81:
	extui	a2, a8, 0, 8
	or	a2, a2, a9
	retw.n
	.size	isspace, .-isspace
	.align	4
	.global	isupper
	.type	isupper, @function
isupper:
	entry	sp, 32
	mov.n	a7, sp
	addi	a2, a2, -65
	movi.n	a8, 1
	movi.n	a9, 0x19
	bgeu	a9, a2, .L83
	movi.n	a8, 0
.L83:
	extui	a2, a8, 0, 8
	retw.n
	.size	isupper, .-isupper
	.literal_position
	.literal .LC0, -8232
	.literal .LC1, -65529
	.align	4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	movi.n	a9, 0x1f
	bgeu	a9, a2, .L85
	movi.n	a8, 0
.L85:
	extui	a8, a8, 0, 8
	addi	a10, a2, -127
	movi.n	a9, 1
	movi.n	a11, 0x20
	bgeu	a11, a10, .L86
	movi.n	a9, 0
.L86:
	extui	a9, a9, 0, 8
	or	a8, a8, a9
	bnez.n	a8, .L88
	l32r	a8, .LC0
	add.n	a8, a2, a8
	bltui	a8, 2, .L89
	l32r	a8, .LC1
	add.n	a2, a2, a8
	bgeui	a2, 3, .L90
	movi.n	a2, 1
	j	.L87
.L88:
	movi.n	a2, 1
	j	.L87
.L89:
	movi.n	a2, 1
	j	.L87
.L90:
	movi.n	a2, 0
.L87:
	retw.n
	.size	iswcntrl, .-iswcntrl
	.align	4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	entry	sp, 32
	mov.n	a7, sp
	addi	a2, a2, -48
	movi.n	a8, 1
	movi.n	a9, 9
	bgeu	a9, a2, .L92
	movi.n	a8, 0
.L92:
	extui	a2, a8, 0, 8
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
	entry	sp, 32
	mov.n	a7, sp
	movi	a8, 0xfe
	bltu	a8, a2, .L94
	addi.n	a2, a2, 1
	extui	a8, a2, 0, 7
	movi.n	a2, 1
	movi.n	a9, 0x20
	bltu	a9, a8, .L95
	movi.n	a2, 0
.L95:
	extui	a2, a2, 0, 8
	j	.L96
.L94:
	movi.n	a8, 1
	l32r	a9, .LC2
	bgeu	a9, a2, .L97
	movi.n	a8, 0
.L97:
	extui	a8, a8, 0, 8
	l32r	a10, .LC3
	add.n	a10, a2, a10
	movi.n	a9, 1
	l32r	a11, .LC4
	bgeu	a11, a10, .L98
	movi.n	a9, 0
.L98:
	extui	a9, a9, 0, 8
	or	a8, a8, a9
	bnez.n	a8, .L99
	l32r	a8, .LC5
	add.n	a8, a2, a8
	l32r	a9, .LC6
	bgeu	a9, a8, .L100
	l32r	a8, .LC7
	add.n	a8, a2, a8
	l32r	a9, .LC8
	bltu	a9, a8, .L101
	l32r	a8, .LC9
	ball	a2, a8, .L102
	movi.n	a2, 1
	j	.L96
.L99:
	movi.n	a2, 1
	j	.L96
.L100:
	movi.n	a2, 1
	j	.L96
.L101:
	movi.n	a2, 0
	j	.L96
.L102:
	movi.n	a2, 0
.L96:
	retw.n
	.size	iswprint, .-iswprint
	.align	4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -48
	movi.n	a9, 9
	bgeu	a9, a8, .L105
	movi.n	a8, 0x20
	or	a2, a2, a8
	addi	a2, a2, -97
	bgeui	a2, 6, .L106
	movi.n	a2, 1
	j	.L104
.L105:
	movi.n	a2, 1
	j	.L104
.L106:
	movi.n	a2, 0
.L104:
	retw.n
	.size	iswxdigit, .-iswxdigit
	.align	4
	.global	toascii
	.type	toascii, @function
toascii:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 7
	retw.n
	.size	toascii, .-toascii
	.literal_position
	.literal .LC11, __unorddf2@PLT
	.literal .LC12, __gtdf2@PLT
	.literal .LC13, __subdf3@PLT
	.align	4
	.global	fdim
	.type	fdim, @function
fdim:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC11
	callx8	a8
	bnez.n	a10, .L109
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC11
	callx8	a8
	bnez.n	a10, .L112
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC12
	callx8	a8
	blti	a10, 1, .L115
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC13
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L109
.L112:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L109
.L115:
	movi.n	a2, 0
	movi.n	a3, 0
.L109:
	retw.n
	.size	fdim, .-fdim
	.literal_position
	.literal .LC15, __unordsf2@PLT
	.literal .LC16, __gtsf2@PLT
	.literal .LC17, __subsf3@PLT
	.align	4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC15
	callx8	a8
	bnez.n	a10, .L117
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC15
	callx8	a8
	bnez.n	a10, .L120
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC16
	callx8	a8
	blti	a10, 1, .L123
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC17
	callx8	a8
	mov.n	a2, a10
	j	.L117
.L120:
	mov.n	a2, a3
	j	.L117
.L123:
	movi.n	a2, 0
.L117:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC18
	callx8	a8
	bnez.n	a10, .L128
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC18
	callx8	a8
	bnez.n	a10, .L125
	l32r	a10, .LC19
	and	a8, a2, a10
	and	a9, a4, a10
	beq	a8, a9, .L126
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	beqz.n	a8, .L125
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L125
.L126:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC20
	callx8	a8
	bgez	a10, .L125
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L125
.L128:
	mov.n	a2, a4
	mov.n	a3, a5
.L125:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L138
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L135
	l32r	a10, .LC22
	and	a8, a2, a10
	and	a9, a3, a10
	beq	a8, a9, .L136
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	beqz.n	a8, .L135
	mov.n	a2, a3
	j	.L135
.L136:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC23
	callx8	a8
	bgez	a10, .L135
	mov.n	a2, a3
	j	.L135
.L138:
	mov.n	a2, a3
.L135:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L148
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L145
	l32r	a10, .LC25
	and	a8, a2, a10
	and	a9, a4, a10
	beq	a8, a9, .L146
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	beqz.n	a8, .L145
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L145
.L146:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC26
	callx8	a8
	bgez	a10, .L145
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L145
.L148:
	mov.n	a2, a4
	mov.n	a3, a5
.L145:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC27
	callx8	a8
	bnez.n	a10, .L158
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC27
	callx8	a8
	bnez.n	a10, .L155
	l32r	a10, .LC28
	and	a8, a2, a10
	and	a9, a4, a10
	beq	a8, a9, .L156
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	beqz.n	a8, .L160
	j	.L155
.L156:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC29
	callx8	a8
	bgez	a10, .L163
	j	.L155
.L158:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L155
.L160:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L155
.L163:
	mov.n	a2, a4
	mov.n	a3, a5
.L155:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a6, a2
	mov.n	a2, a3
	mov.n	a11, a6
	mov.n	a10, a6
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L165
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L169
	l32r	a10, .LC31
	and	a8, a6, a10
	and	a9, a3, a10
	beq	a8, a9, .L166
	extui	a8, a6, 31, 1
	slli	a8, a8, 31
	beqz.n	a8, .L165
	mov.n	a2, a6
	j	.L165
.L166:
	mov.n	a11, a3
	mov.n	a10, a6
	l32r	a8, .LC32
	callx8	a8
	bgez	a10, .L165
	mov.n	a2, a6
	j	.L165
.L169:
	mov.n	a2, a6
.L165:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC33
	callx8	a8
	bnez.n	a10, .L178
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC33
	callx8	a8
	bnez.n	a10, .L175
	l32r	a10, .LC34
	and	a8, a2, a10
	and	a9, a4, a10
	beq	a8, a9, .L176
	extui	a8, a2, 31, 1
	slli	a8, a8, 31
	beqz.n	a8, .L180
	j	.L175
.L176:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC35
	callx8	a8
	bgez	a10, .L183
	j	.L175
.L178:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L175
.L180:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L175
.L183:
	mov.n	a2, a4
	mov.n	a3, a5
.L175:
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
	entry	sp, 32
	mov.n	a7, sp
	l32r	a8, .LC36
	j	.L185
.L186:
	extui	a10, a2, 0, 6
	l32r	a9, .LC37
	add.n	a9, a9, a10
	l8ui	a9, a9, 0
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
	srli	a2, a2, 6
.L185:
	bnez.n	a2, .L186
	movi.n	a9, 0
	s8i	a9, a8, 0
	l32r	a2, .LC36
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
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a9, 0
	mov.n	a8, a9
	addi.n	a9, a2, -1
	l32r	a10, .LC38
	s32i	a8, a10, 0
	s32i	a9, a10, 4
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
	mov.n	a7, sp
	l32r	a8, .LC39
	l32i	a12, a8, 0
	l32i	a13, a8, 4
	l32r	a11, .LC40
	mull	a6, a12, a11
	l32r	a8, .LC41
	mull	a8, a13, a8
	add.n	a6, a6, a8
	mov.n	a10, a13
	l32r	a8, .LC42
	callx8	a8
	add.n	a10, a6, a10
	movi.n	a13, 0
	mov.n	a12, a13
	movi.n	a13, 1
	mov.n	a9, a12
	mov.n	a8, a10
	add.n	a9, a11, a13
	bgeu	a9, a13, .L189
	add.n	a8, a10, a13
.L189:
	l32r	a10, .LC39
	s32i	a8, a10, 0
	s32i	a9, a10, 4
	movi.n	a11, 0
	srli	a11, a8, 1
	mov.n	a2, a11
	retw.n
	.size	rand, .-rand
	.align	4
	.global	insque
	.type	insque, @function
insque:
	entry	sp, 32
	mov.n	a7, sp
	bnez.n	a3, .L191
	movi.n	a8, 0
	s32i	a8, a2, 4
	s32i	a8, a2, 0
	j	.L190
.L191:
	l32i	a8, a3, 0
	s32i	a8, a2, 0
	s32i	a3, a2, 4
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L190
	s32i	a2, a8, 4
.L190:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	mov.n	a7, sp
	l32i	a8, a2, 0
	beqz.n	a8, .L194
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L194:
	l32i	a8, a2, 4
	beqz.n	a8, .L193
	l32i	a9, a2, 0
	s32i	a9, a8, 0
.L193:
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC43, memcpy@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a4, a7, 4
	s32i	a6, a7, 8
	l32i	a6, a4, 0
	mov.n	a4, a3
	movi.n	a2, 0
	j	.L197
.L200:
	mov.n	a11, a4
	l32i	a10, a7, 0
	l32i	a8, a7, 8
	callx8	a8
	add.n	a4, a4, a5
	bnez.n	a10, .L198
	mull	a2, a2, a5
	add.n	a2, a3, a2
	j	.L199
.L198:
	addi.n	a2, a2, 1
.L197:
	bne	a2, a6, .L200
	addi.n	a8, a6, 1
	l32i	a9, a7, 4
	s32i	a8, a9, 0
	mull	a6, a5, a6
	add.n	a10, a3, a6
	mov.n	a12, a5
	l32i	a11, a7, 0
	l32r	a8, .LC43
	callx8	a8
	mov.n	a2, a10
.L199:
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a6, a7, 4
	l32i	a2, a4, 0
	mov.n	a4, a3
	movi.n	a6, 0
	j	.L202
.L205:
	mov.n	a11, a4
	l32i	a10, a7, 0
	l32i	a8, a7, 4
	callx8	a8
	add.n	a4, a4, a5
	bnez.n	a10, .L203
	mull	a6, a6, a5
	add.n	a2, a3, a6
	j	.L204
.L203:
	addi.n	a6, a6, 1
.L202:
	bne	a6, a2, .L205
	movi.n	a2, 0
.L204:
	retw.n
	.size	lfind, .-lfind
	.align	4
	.global	abs
	.type	abs, @function
abs:
	entry	sp, 32
	mov.n	a7, sp
	abs	a2, a2
	retw.n
	.size	abs, .-abs
	.literal_position
	.literal .LC44, isspace@PLT
	.align	4
	.global	atoi
	.type	atoi, @function
atoi:
	entry	sp, 32
	mov.n	a7, sp
	j	.L208
.L209:
	addi.n	a2, a2, 1
.L208:
	l8ui	a10, a2, 0
	l32r	a8, .LC44
	callx8	a8
	bnez.n	a10, .L209
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L215
	movi.n	a9, 0x2d
	bne	a8, a9, .L216
	movi.n	a9, 1
	j	.L210
.L215:
	movi.n	a9, 0
.L210:
	addi.n	a2, a2, 1
	j	.L211
.L216:
	movi.n	a9, 0
.L211:
	mov.n	a8, a2
	movi.n	a2, 0
	j	.L212
.L213:
	addx4	a2, a2, a2
	add.n	a10, a2, a2
	l8ui	a2, a8, 0
	addi	a2, a2, -48
	sub	a2, a10, a2
	addi.n	a8, a8, 1
.L212:
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	movi.n	a11, 9
	bgeu	a11, a10, .L213
	bnez.n	a9, .L214
	neg	a2, a2
.L214:
	retw.n
	.size	atoi, .-atoi
	.literal_position
	.literal .LC45, isspace@PLT
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	mov.n	a7, sp
	j	.L219
.L220:
	addi.n	a2, a2, 1
.L219:
	l8ui	a10, a2, 0
	l32r	a8, .LC45
	callx8	a8
	bnez.n	a10, .L220
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L226
	movi.n	a9, 0x2d
	bne	a8, a9, .L227
	movi.n	a9, 1
	j	.L221
.L226:
	movi.n	a9, 0
.L221:
	addi.n	a2, a2, 1
	j	.L222
.L227:
	movi.n	a9, 0
.L222:
	mov.n	a8, a2
	movi.n	a2, 0
	j	.L223
.L224:
	addx4	a2, a2, a2
	add.n	a10, a2, a2
	l8ui	a2, a8, 0
	addi	a2, a2, -48
	sub	a2, a10, a2
	addi.n	a8, a8, 1
.L223:
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	movi.n	a11, 9
	bgeu	a11, a10, .L224
	bnez.n	a9, .L225
	neg	a2, a2
.L225:
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC46, isspace@PLT
	.literal .LC47, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 48
	mov.n	a7, sp
	mov.n	a6, a2
	j	.L230
.L231:
	addi.n	a6, a6, 1
.L230:
	l8ui	a10, a6, 0
	l32r	a8, .LC46
	callx8	a8
	bnez.n	a10, .L231
	l8ui	a8, a6, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L239
	movi.n	a9, 0x2d
	bne	a8, a9, .L240
	movi.n	a8, 1
	s32i	a8, a7, 0
	j	.L232
.L239:
	movi.n	a8, 0
	s32i	a8, a7, 0
.L232:
	addi.n	a6, a6, 1
	j	.L233
.L240:
	movi.n	a8, 0
	s32i	a8, a7, 0
.L233:
	movi.n	a3, 0
	mov.n	a2, a3
	j	.L234
.L236:
	movi.n	a10, 0xa
	mull	a8, a10, a2
	s32i	a8, a7, 4
	mov.n	a11, a3
	l32r	a8, .LC47
	callx8	a8
	l32i	a8, a7, 4
	add.n	a10, a8, a10
	l8ui	a8, a6, 0
	addi	a8, a8, -48
	mov.n	a5, a8
	srai	a4, a8, 31
	sub	a2, a10, a4
	bgeu	a11, a8, .L235
	addi.n	a2, a2, -1
.L235:
	sub	a3, a11, a5
	addi.n	a6, a6, 1
.L234:
	l8ui	a8, a6, 0
	addi	a8, a8, -48
	movi.n	a9, 9
	bgeu	a9, a8, .L236
	l32i	a8, a7, 0
	bnez.n	a8, .L241
	movi.n	a11, 0
	neg	a8, a2
	bgeu	a11, a3, .L238
	addi.n	a8, a8, -1
.L238:
	sub	a9, a11, a3
	j	.L237
.L241:
	mov.n	a8, a2
	mov.n	a9, a3
.L237:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	j	.L243
.L247:
	srli	a2, a4, 1
	mull	a2, a2, a5
	add.n	a2, a3, a2
	mov.n	a11, a2
	l32i	a10, a7, 0
	callx8	a6
	bgez	a10, .L244
	srli	a4, a4, 1
	j	.L243
.L244:
	blti	a10, 1, .L246
	add.n	a3, a2, a5
	srli	a8, a4, 1
	addi.n	a4, a4, -1
	sub	a4, a4, a8
.L243:
	bnez.n	a4, .L247
	movi.n	a2, 0
.L246:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	mov.n	a8, a7
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a8, a7, 4
	j	.L250
.L253:
	srai	a2, a4, 1
	mull	a2, a2, a5
	add.n	a2, a3, a2
	l32i	a12, a7, 4
	mov.n	a11, a2
	l32i	a10, a7, 0
	callx8	a6
	beqz.n	a10, .L251
	blti	a10, 1, .L252
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
.L252:
	srai	a4, a4, 1
.L250:
	bnez.n	a4, .L253
	movi.n	a2, 0
.L251:
	retw.n
	.size	bsearch_r, .-bsearch_r
	.align	4
	.global	div
	.type	div, @function
div:
	entry	sp, 48
	mov.n	a7, sp
	quos	a10, a2, a3
	rems	a3, a2, a3
	s32i	a10, a7, 0
	s32i	a3, a7, 4
	mov.n	a2, a10
	retw.n
	.size	div, .-div
	.align	4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	entry	sp, 32
	mov.n	a7, sp
	srai	a9, a2, 31
	xor	a10, a9, a2
	xor	a11, a9, a3
	sub	a2, a10, a9
	bgeu	a11, a9, .L258
	addi.n	a2, a2, -1
.L258:
	sub	a3, a11, a9
	retw.n
	.size	imaxabs, .-imaxabs
	.literal_position
	.literal .LC48, __divdi3@PLT
	.literal .LC49, __moddi3@PLT
	.align	4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC48
	callx8	a8
	s32i	a10, a7, 16
	s32i	a11, a7, 20
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC49
	callx8	a8
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	s32i	a10, a7, 8
	s32i	a11, a7, 12
	l32i	a5, a7, 12
	movi.n	a12, 0
	l32i	a12, a7, 0
	l32i	a13, a7, 4
	l32i	a14, a7, 8
	mov.n	a2, a12
	mov.n	a3, a13
	mov.n	a4, a14
	retw.n
	.size	imaxdiv, .-imaxdiv
	.align	4
	.global	labs
	.type	labs, @function
labs:
	entry	sp, 32
	mov.n	a7, sp
	abs	a2, a2
	retw.n
	.size	labs, .-labs
	.align	4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	entry	sp, 48
	mov.n	a7, sp
	quos	a10, a2, a3
	rems	a3, a2, a3
	s32i	a10, a7, 0
	s32i	a3, a7, 4
	mov.n	a2, a10
	retw.n
	.size	ldiv, .-ldiv
	.align	4
	.global	llabs
	.type	llabs, @function
llabs:
	entry	sp, 32
	mov.n	a7, sp
	srai	a9, a2, 31
	xor	a10, a9, a2
	xor	a11, a9, a3
	sub	a2, a10, a9
	bgeu	a11, a9, .L264
	addi.n	a2, a2, -1
.L264:
	sub	a3, a11, a9
	retw.n
	.size	llabs, .-llabs
	.literal_position
	.literal .LC50, __divdi3@PLT
	.literal .LC51, __moddi3@PLT
	.align	4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	entry	sp, 64
	mov.n	a7, sp
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC50
	callx8	a8
	s32i	a10, a7, 16
	s32i	a11, a7, 20
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC51
	callx8	a8
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	s32i	a8, a7, 0
	s32i	a9, a7, 4
	s32i	a10, a7, 8
	s32i	a11, a7, 12
	l32i	a5, a7, 12
	movi.n	a12, 0
	l32i	a12, a7, 0
	l32i	a13, a7, 4
	l32i	a14, a7, 8
	mov.n	a2, a12
	mov.n	a3, a13
	mov.n	a4, a14
	retw.n
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 32
	mov.n	a7, sp
	j	.L267
.L269:
	addi.n	a2, a2, 4
.L267:
	l32i	a8, a2, 0
	beqz.n	a8, .L268
	bne	a3, a8, .L269
.L268:
	l32i	a8, a2, 0
	bnez.n	a8, .L270
	movi.n	a2, 0
.L270:
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	mov.n	a7, sp
	j	.L273
.L275:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
.L273:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bne	a9, a8, .L274
	beqz.n	a9, .L274
	l32i	a8, a3, 0
	bnez.n	a8, .L275
.L274:
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	blt	a9, a8, .L278
	mov.n	a8, a9
	l32i	a9, a3, 0
	movi.n	a2, 1
	blt	a9, a8, .L277
	movi.n	a2, 0
.L277:
	extui	a2, a2, 0, 8
	j	.L276
.L278:
	movi.n	a2, -1
.L276:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
.L280:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L280
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L283
.L284:
	addi.n	a8, a8, 4
.L283:
	l32i	a9, a8, 0
	bnez.n	a9, .L284
	sub	a2, a8, a2
	srai	a2, a2, 2
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a7, sp
	j	.L286
.L288:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
.L286:
	beqz.n	a4, .L287
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	bne	a9, a8, .L287
	beqz.n	a9, .L287
	l32i	a8, a3, 0
	bnez.n	a8, .L288
.L287:
	beqz.n	a4, .L291
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	blt	a9, a8, .L292
	mov.n	a8, a9
	l32i	a9, a3, 0
	movi.n	a2, 1
	blt	a9, a8, .L290
	movi.n	a2, 0
.L290:
	extui	a2, a2, 0, 8
	j	.L289
.L291:
	movi.n	a2, 0
	j	.L289
.L292:
	movi.n	a2, -1
.L289:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a7, sp
	j	.L294
.L296:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
.L294:
	beqz.n	a4, .L295
	l32i	a8, a2, 0
	bne	a3, a8, .L296
.L295:
	bnez.n	a4, .L297
	movi.n	a2, 0
.L297:
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a7, sp
	j	.L300
.L302:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
.L300:
	beqz.n	a4, .L301
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	beq	a9, a8, .L302
.L301:
	beqz.n	a4, .L305
	l32i	a9, a2, 0
	l32i	a8, a3, 0
	blt	a9, a8, .L306
	mov.n	a8, a9
	l32i	a9, a3, 0
	movi.n	a2, 1
	blt	a9, a8, .L304
	movi.n	a2, 0
.L304:
	extui	a2, a2, 0, 8
	j	.L303
.L305:
	movi.n	a2, 0
	j	.L303
.L306:
	movi.n	a2, -1
.L303:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L308
.L309:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L308:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L309
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	mov.n	a7, sp
	beq	a2, a3, .L311
	sub	a8, a2, a3
	slli	a9, a4, 2
	bltu	a8, a9, .L312
	mov.n	a8, a2
	j	.L313
.L312:
	addi.n	a4, a4, -1
	slli	a8, a4, 2
	addx4	a3, a4, a3
	add.n	a8, a2, a8
	addi	a9, a2, -4
	j	.L314
.L315:
	l32i	a10, a3, 0
	s32i	a10, a8, 0
	addi	a3, a3, -4
	addi	a8, a8, -4
.L314:
	bne	a8, a9, .L315
	j	.L311
.L316:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L313:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L316
.L311:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L318
.L319:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
.L318:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L319
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a7, sp
	bgeu	a2, a3, .L321
	add.n	a8, a2, a4
	add.n	a3, a3, a4
	j	.L322
.L323:
	addi.n	a8, a8, -1
	addi.n	a3, a3, -1
	l8ui	a9, a8, 0
	s8i	a9, a3, 0
.L322:
	bne	a8, a2, .L323
	j	.L320
.L321:
	beq	a2, a3, .L320
	add.n	a4, a2, a4
	j	.L325
.L326:
	l8ui	a8, a2, 0
	s8i	a8, a3, 0
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
.L325:
	bne	a2, a4, .L326
.L320:
	retw.n
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a13, 0x20
	and	a12, a4, a13
	movi.n	a14, 0
	srli	a8, a3, 1
	movi.n	a9, -1
	xor	a9, a4, a9
	ssr	a9
	srl	a8, a8
	mov.n	a11, a14
	ssl	a4
	sll	a10, a2
	or	a10, a8, a10
	ssl	a4
	sll	a11, a3
	movnez	a10, a11, a12
	movnez	a11, a14, a12
	neg	a4, a4
	extui	a12, a4, 0, 6
	and	a4, a4, a13
	add.n	a13, a2, a2
	movi.n	a8, -1
	xor	a8, a12, a8
	ssl	a8
	sll	a13, a13
	mov.n	a9, a14
	ssr	a12
	srl	a9, a3
	or	a9, a13, a9
	ssr	a12
	srl	a8, a2
	movnez	a9, a8, a4
	movnez	a8, a14, a4
	mov.n	a3, a14
	or	a2, a8, a10
	or	a3, a9, a11
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a13, 0x20
	and	a12, a4, a13
	movi.n	a14, 0
	add.n	a8, a2, a2
	movi.n	a9, -1
	xor	a9, a4, a9
	ssl	a9
	sll	a8, a8
	mov.n	a11, a14
	ssr	a4
	srl	a11, a3
	or	a11, a8, a11
	ssr	a4
	srl	a10, a2
	movnez	a11, a10, a12
	movnez	a10, a14, a12
	neg	a4, a4
	extui	a12, a4, 0, 6
	and	a4, a4, a13
	srli	a13, a3, 1
	movi.n	a8, -1
	xor	a8, a12, a8
	ssr	a8
	srl	a13, a13
	mov.n	a9, a14
	ssl	a12
	sll	a8, a2
	or	a8, a13, a8
	ssl	a12
	sll	a9, a3
	movnez	a8, a9, a4
	movnez	a9, a14, a4
	mov.n	a3, a14
	or	a2, a8, a10
	or	a3, a9, a11
	retw.n
	.size	rotr64, .-rotr64
	.align	4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	entry	sp, 32
	mov.n	a7, sp
	ssl	a3
	src	a2, a2, a2
	retw.n
	.size	rotl32, .-rotl32
	.align	4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	entry	sp, 32
	mov.n	a7, sp
	ssr	a3
	src	a2, a2, a2
	retw.n
	.size	rotr32, .-rotr32
	.align	4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	entry	sp, 32
	mov.n	a7, sp
	ssl	a3
	src	a2, a2, a2
	retw.n
	.size	rotl_sz, .-rotl_sz
	.align	4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	entry	sp, 32
	mov.n	a7, sp
	ssr	a3
	src	a2, a2, a2
	retw.n
	.size	rotr_sz, .-rotr_sz
	.align	4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 16
	ssl	a3
	sll	a8, a2
	addi	a3, a3, -16
	neg	a3, a3
	ssr	a3
	srl	a2, a2
	or	a2, a2, a8
	extui	a2, a2, 0, 16
	retw.n
	.size	rotl16, .-rotl16
	.align	4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 16
	ssr	a3
	srl	a8, a2
	addi	a3, a3, -16
	neg	a3, a3
	ssl	a3
	sll	a2, a2
	or	a2, a2, a8
	extui	a2, a2, 0, 16
	retw.n
	.size	rotr16, .-rotr16
	.align	4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 8
	ssl	a3
	sll	a8, a2
	addi	a3, a3, -8
	neg	a3, a3
	ssr	a3
	srl	a2, a2
	or	a2, a2, a8
	extui	a2, a2, 0, 8
	retw.n
	.size	rotl8, .-rotl8
	.align	4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 8
	ssr	a3
	srl	a8, a2
	addi	a3, a3, -8
	neg	a3, a3
	ssl	a3
	sll	a2, a2
	or	a2, a2, a8
	extui	a2, a2, 0, 8
	retw.n
	.size	rotr8, .-rotr8
	.align	4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	entry	sp, 32
	mov.n	a7, sp
	extui	a8, a2, 0, 16
	srli	a2, a8, 8
	extui	a8, a8, 0, 8
	slli	a8, a8, 8
	or	a2, a2, a8
	retw.n
	.size	bswap_16, .-bswap_16
	.align	4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	entry	sp, 32
	mov.n	a7, sp
	extui	a9, a2, 24, 8
	extui	a8, a2, 16, 8
	slli	a8, a8, 16
	srli	a8, a8, 8
	or	a8, a8, a9
	extui	a9, a2, 8, 8
	slli	a9, a9, 8
	slli	a9, a9, 8
	or	a8, a8, a9
	slli	a2, a2, 24
	or	a2, a8, a2
	retw.n
	.size	bswap_32, .-bswap_32
	.literal_position
	.literal .LC56, -16777216
	.literal .LC57, 16711680
	.literal .LC58, 65280
	.align	4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	entry	sp, 32
	mov.n	a7, sp
	l32r	a9, .LC56
	movi.n	a13, 0
	and	a12, a2, a9
	mov.n	a8, a13
	extui	a11, a12, 24, 8
	l32r	a6, .LC57
	and	a14, a2, a6
	srli	a13, a14, 8
	or	a15, a13, a11
	l32r	a5, .LC58
	and	a12, a2, a5
	slli	a11, a12, 8
	extui	a10, a12, 24, 8
	or	a12, a8, a10
	or	a13, a15, a11
	extui	a14, a2, 0, 8
	slli	a11, a14, 24
	srli	a10, a14, 8
	or	a14, a12, a10
	or	a15, a13, a11
	and	a11, a3, a9
	extui	a9, a11, 24, 8
	slli	a12, a8, 8
	or	a12, a9, a12
	slli	a13, a11, 8
	or	a10, a14, a12
	or	a11, a15, a13
	and	a13, a3, a6
	srli	a9, a13, 8
	slli	a14, a8, 24
	or	a14, a9, a14
	slli	a15, a13, 24
	or	a12, a10, a14
	or	a13, a11, a15
	and	a11, a3, a5
	slli	a14, a11, 8
	or	a10, a12, a14
	mov.n	a11, a13
	extui	a15, a3, 0, 8
	slli	a12, a15, 24
	or	a2, a10, a12
	mov.n	a3, a11
	retw.n
	.size	bswap_64, .-bswap_64
	.align	4
	.global	ffs
	.type	ffs, @function
ffs:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 0
	j	.L341
.L344:
	ssr	a8
	srl	a9, a2
	bbci	a9, 31, .L342
	addi.n	a2, a8, 1
	j	.L343
.L342:
	addi.n	a8, a8, 1
.L341:
	bnei	a8, 32, .L344
	movi.n	a2, 0
.L343:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a7, sp
	beqz.n	a2, .L349
	movi.n	a8, 1
	j	.L347
.L348:
	srai	a2, a2, 1
	addi.n	a8, a8, 1
.L347:
	bbci	a2, 31, .L348
	mov.n	a2, a8
	j	.L346
.L349:
	movi.n	a2, 0
.L346:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC60, __ltsf2@PLT
	.literal .LC62, __gtsf2@PLT
	.literal .LC63, 2139095039
	.literal .LC64, -8388609
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	mov.n	a7, sp
	l32r	a11, .LC64
	mov.n	a10, a2
	l32r	a8, .LC60
	callx8	a8
	bltz	a10, .L353
	l32r	a11, .LC63
	mov.n	a10, a2
	l32r	a8, .LC62
	callx8	a8
	blti	a10, 1, .L356
	movi.n	a2, 1
	j	.L351
.L353:
	movi.n	a2, 1
	j	.L351
.L356:
	movi.n	a2, 0
.L351:
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC66, __ltdf2@PLT
	.literal .LC68, __gtdf2@PLT
	.literal .LC69, 2146435071
	.literal .LC70, -1048577
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	mov.n	a7, sp
	l32r	a12, .LC70
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC66
	callx8	a8
	bltz	a10, .L360
	l32r	a12, .LC69
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC68
	callx8	a8
	blti	a10, 1, .L363
	movi.n	a2, 1
	j	.L358
.L360:
	movi.n	a2, 1
	j	.L358
.L363:
	movi.n	a2, 0
.L358:
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC72, __ltdf2@PLT
	.literal .LC74, __gtdf2@PLT
	.literal .LC75, 2146435071
	.literal .LC76, -1048577
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 32
	mov.n	a7, sp
	l32r	a12, .LC76
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC72
	callx8	a8
	bltz	a10, .L367
	l32r	a12, .LC75
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC74
	callx8	a8
	blti	a10, 1, .L370
	movi.n	a2, 1
	j	.L365
.L367:
	movi.n	a2, 1
	j	.L365
.L370:
	movi.n	a2, 0
.L365:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC77, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a3
	l32r	a8, .LC77
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC80, __unordsf2@PLT
	.literal .LC81, __addsf3@PLT
	.literal .LC82, __nesf2@PLT
	.literal .LC83, __mulsf3@PLT
	.literal .LC84, 1073741824
	.literal .LC85, 1056964608
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC80
	callx8	a8
	bnez.n	a10, .L373
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC81
	callx8	a8
	mov.n	a11, a10
	mov.n	a10, a2
	l32r	a8, .LC82
	callx8	a8
	beqz.n	a10, .L373
	bgez	a3, .L378
	l32r	a6, .LC85
	j	.L377
.L378:
	l32r	a6, .LC84
.L377:
	bbci	a3, 31, .L376
	mov.n	a11, a6
	mov.n	a10, a2
	l32r	a8, .LC83
	callx8	a8
	mov.n	a2, a10
.L376:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L373
	mov.n	a11, a6
	mov.n	a10, a6
	l32r	a8, .LC83
	callx8	a8
	mov.n	a6, a10
	j	.L377
.L373:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC88, __unorddf2@PLT
	.literal .LC89, __adddf3@PLT
	.literal .LC90, __nedf2@PLT
	.literal .LC91, __muldf3@PLT
	.literal .LC92, 1073741824
	.literal .LC93, 1071644672
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a6, a4
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC88
	callx8	a8
	bnez.n	a10, .L381
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC89
	callx8	a8
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC90
	callx8	a8
	beqz.n	a10, .L381
	bgez	a4, .L386
	l32r	a4, .LC93
	movi.n	a5, 0
	j	.L385
.L386:
	l32r	a4, .LC92
	movi.n	a5, 0
.L385:
	bbci	a6, 31, .L384
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC91
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L384:
	extui	a8, a6, 31, 1
	add.n	a8, a8, a6
	srai	a6, a8, 1
	beqz.n	a6, .L381
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC91
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
	j	.L385
.L381:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC96, __unorddf2@PLT
	.literal .LC97, __adddf3@PLT
	.literal .LC98, __nedf2@PLT
	.literal .LC99, __muldf3@PLT
	.literal .LC100, 1073741824
	.literal .LC101, 1071644672
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a6, a4
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC96
	callx8	a8
	bnez.n	a10, .L389
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC97
	callx8	a8
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC98
	callx8	a8
	beqz.n	a10, .L389
	bgez	a4, .L394
	l32r	a4, .LC101
	movi.n	a5, 0
	j	.L393
.L394:
	l32r	a4, .LC100
	movi.n	a5, 0
.L393:
	bbci	a6, 31, .L392
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC99
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L392:
	extui	a8, a6, 31, 1
	add.n	a8, a8, a6
	srai	a6, a8, 1
	beqz.n	a6, .L389
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC99
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
	j	.L393
.L389:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	add.n	a4, a2, a4
	j	.L397
.L398:
	l8ui	a10, a3, 0
	l8ui	a9, a8, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
.L397:
	bne	a8, a4, .L398
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC102, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	l32r	a8, .LC102
	callx8	a8
	add.n	a10, a2, a10
	j	.L400
.L402:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
.L400:
	beqz.n	a4, .L401
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	extui	a8, a8, 0, 8
	bnez.n	a8, .L402
.L401:
	bnez.n	a4, .L403
	movi.n	a8, 0
	s8i	a8, a10, 0
.L403:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
	j	.L405
.L407:
	addi.n	a2, a2, 1
.L405:
	beq	a2, a3, .L406
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L407
.L406:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	mov.n	a7, sp
	j	.L409
.L411:
	l8ui	a10, a8, 0
	l8ui	a9, a2, 0
	addi.n	a8, a8, 1
	beq	a10, a9, .L410
.L412:
	l8ui	a9, a8, 0
	bnez.n	a9, .L411
	addi.n	a2, a2, 1
.L409:
	l8ui	a8, a2, 0
	beqz.n	a8, .L414
	mov.n	a8, a3
	j	.L412
.L414:
	movi.n	a2, 0
.L410:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
.L417:
	mov.n	a9, a8
	l8ui	a10, a8, 0
	bne	a3, a10, .L416
	mov.n	a2, a8
.L416:
	addi.n	a8, a8, 1
	addi.n	a9, a8, -1
	l8ui	a9, a9, 0
	bnez.n	a9, .L417
	retw.n
	.size	strrchr, .-strrchr
	.literal_position
	.literal .LC103, strlen@PLT
	.literal .LC104, strncmp@PLT
	.literal .LC105, strchr@PLT
	.align	4
	.global	strstr
	.type	strstr, @function
strstr:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a3
	l32r	a8, .LC103
	callx8	a8
	mov.n	a6, a10
	beqz.n	a10, .L421
	l8ui	a5, a3, 0
	j	.L422
.L423:
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC104
	callx8	a8
	beqz.n	a10, .L421
	addi.n	a2, a2, 1
.L422:
	mov.n	a11, a5
	mov.n	a10, a2
	l32r	a8, .LC105
	callx8	a8
	mov.n	a2, a10
	bnez.n	a10, .L423
.L421:
	retw.n
	.size	strstr, .-strstr
	.literal_position
	.literal .LC107, __ltdf2@PLT
	.literal .LC108, __gtdf2@PLT
	.literal .LC109, -2147483648
	.align	4
	.global	copysign
	.type	copysign, @function
copysign:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC107
	callx8	a8
	bgez	a10, .L427
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC108
	callx8	a8
	bgei	a10, 1, .L429
.L427:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC108
	callx8	a8
	blti	a10, 1, .L437
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC107
	callx8	a8
	bgez	a10, .L438
.L429:
	l32r	a10, .LC109
	xor	a8, a2, a10
	mov.n	a9, a3
	j	.L430
.L437:
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L430
.L438:
	mov.n	a8, a2
	mov.n	a9, a3
.L430:
	mov.n	a2, a8
	mov.n	a3, a9
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC110, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 32
	mov.n	a7, sp
	sub	a6, a3, a5
	add.n	a6, a2, a6
	beqz.n	a5, .L440
	movi.n	a8, 1
	bltu	a3, a5, .L441
	movi.n	a8, 0
.L441:
	extui	a8, a8, 0, 8
	bnez.n	a8, .L446
	j	.L442
.L444:
	l8ui	a9, a2, 0
	l8ui	a8, a4, 0
	bne	a9, a8, .L443
	addi.n	a10, a2, 1
	addi.n	a12, a5, -1
	addi.n	a11, a4, 1
	l32r	a8, .LC110
	callx8	a8
	beqz.n	a10, .L440
.L443:
	addi.n	a2, a2, 1
.L442:
	bgeu	a6, a2, .L444
	movi.n	a2, 0
	j	.L440
.L446:
	movi.n	a2, 0
.L440:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC111, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	l32r	a8, .LC111
	callx8	a8
	add.n	a2, a10, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC113, __ltdf2@PLT
	.literal .LC114, -2147483648
	.literal .LC116, __gedf2@PLT
	.literal .LC118, __muldf3@PLT
	.literal .LC119, __nedf2@PLT
	.literal .LC120, __adddf3@PLT
	.literal .LC121, 1071644672
	.literal .LC122, 1072693248
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a4, a7, 0
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	bgez	a10, .L465
	l32r	a10, .LC114
	xor	a8, a2, a10
	mov.n	a9, a3
	mov.n	a2, a8
	movi.n	a5, 1
	j	.L450
.L465:
	movi.n	a5, 0
.L450:
	l32r	a12, .LC122
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC116
	callx8	a8
	bgez	a10, .L462
	j	.L466
.L454:
	addi.n	a6, a6, 1
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC118
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L452
.L462:
	movi.n	a6, 0
.L452:
	l32r	a12, .LC122
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC116
	callx8	a8
	bgez	a10, .L454
	j	.L455
.L466:
	movi.n	a6, 1
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC119
	callx8	a8
	bnez.n	a10, .L456
	movi.n	a6, 0
.L456:
	extui	a6, a6, 0, 8
	movi.n	a4, 1
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	bltz	a10, .L457
	movi.n	a4, 0
.L457:
	bany	a6, a4, .L463
	movi.n	a6, 0
	j	.L455
.L459:
	addi.n	a6, a6, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC120
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L458
.L463:
	movi.n	a6, 0
.L458:
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	bltz	a10, .L459
.L455:
	l32i	a8, a7, 0
	s32i	a6, a8, 0
	beqz.n	a5, .L460
	l32r	a10, .LC114
	xor	a8, a2, a10
	mov.n	a9, a3
	mov.n	a2, a8
.L460:
	retw.n
	.size	frexp, .-frexp
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	mov.n	a7, sp
	mov.n	a8, a2
	mov.n	a9, a3
	movi.n	a3, 0
	mov.n	a2, a3
	j	.L468
.L472:
	movi.n	a10, 0
	s32i	a10, a7, 0
	extui	a10, a9, 0, 1
	s32i	a10, a7, 4
	l32i	a11, a7, 4
	l32i	a10, a7, 0
	mov.n	a6, a10
	or	a10, a10, a11
	beqz.n	a10, .L469
	add.n	a11, a3, a5
	movi.n	a6, 1
	bltu	a11, a3, .L471
	movi.n	a6, 0
.L471:
	add.n	a10, a2, a4
	add.n	a10, a6, a10
	mov.n	a2, a10
	mov.n	a3, a11
.L469:
	extui	a10, a5, 31, 1
	add.n	a14, a4, a4
	or	a14, a10, a14
	add.n	a15, a5, a5
	mov.n	a4, a14
	mov.n	a5, a15
	slli	a10, a8, 31
	srli	a13, a9, 1
	or	a13, a10, a13
	srli	a12, a8, 1
	mov.n	a8, a12
	mov.n	a9, a13
.L468:
	or	a10, a8, a9
	bnez.n	a10, .L472
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	j	.L474
.L477:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L474:
	movi.n	a9, 1
	bltu	a3, a2, .L475
	movi.n	a9, 0
.L475:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bnone	a10, a9, .L482
	bgez	a3, .L477
	movi.n	a9, 0
	j	.L479
.L480:
	bltu	a2, a3, .L478
	sub	a2, a2, a3
	or	a9, a9, a8
.L478:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L479
.L482:
	movi.n	a9, 0
.L479:
	bnez.n	a8, .L480
	bnez.n	a4, .L481
	mov.n	a2, a9
.L481:
	retw.n
	.size	udivmodsi4, .-udivmodsi4
	.align	4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 8
	beqz.n	a2, .L486
	slli	a2, a2, 8
	nsau	a2, a2
	addi.n	a2, a2, -1
	j	.L485
.L486:
	movi.n	a2, 7
.L485:
	retw.n
	.size	__clrsbqi2, .-__clrsbqi2
	.align	4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	entry	sp, 32
	mov.n	a7, sp
	bgez	a2, .L488
	movi.n	a9, 0
	movi.n	a10, -1
	xor	a8, a2, a10
	xor	a9, a3, a10
	mov.n	a2, a8
	mov.n	a3, a9
.L488:
	or	a8, a2, a3
	beqz.n	a8, .L494
	beqz.n	a2, .L492
	nsau	a2, a2
	j	.L493
.L492:
	nsau	a2, a3
	addi	a2, a2, 32
.L493:
	addi.n	a2, a2, -1
	j	.L490
.L494:
	movi.n	a2, 0x3f
.L490:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
	j	.L496
.L498:
	bbci	a8, 31, .L497
	add.n	a2, a2, a3
.L497:
	srli	a8, a8, 1
	add.n	a3, a3, a3
.L496:
	bnez.n	a8, .L498
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 32
	mov.n	a7, sp
	srli	a12, a4, 3
	movi.n	a10, -8
	and	a10, a4, a10
	bltu	a2, a3, .L500
	add.n	a8, a3, a4
	bgeu	a8, a2, .L501
.L500:
	mov.n	a11, a3
	mov.n	a13, a2
	addx8	a12, a12, a3
	j	.L502
.L503:
	l32i	a8, a11, 0
	l32i	a9, a11, 4
	s32i	a8, a13, 0
	s32i	a9, a13, 4
	addi.n	a11, a11, 8
	addi.n	a13, a13, 8
.L502:
	bne	a11, a12, .L503
	j	.L504
.L505:
	add.n	a8, a3, a10
	l8ui	a9, a8, 0
	add.n	a8, a2, a10
	s8i	a9, a8, 0
	addi.n	a10, a10, 1
.L504:
	bltu	a10, a4, .L505
	j	.L499
.L507:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L501:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L507
.L499:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	mov.n	a7, sp
	srli	a9, a4, 1
	bltu	a2, a3, .L510
	add.n	a8, a3, a4
	bgeu	a8, a2, .L511
.L510:
	mov.n	a8, a3
	mov.n	a10, a2
	addx2	a9, a9, a3
	j	.L512
.L513:
	l16si	a11, a8, 0
	s16i	a11, a10, 0
	addi.n	a8, a8, 2
	addi.n	a10, a10, 2
.L512:
	bne	a8, a9, .L513
	bbci	a4, 31, .L509
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	add.n	a2, a2, a4
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	j	.L509
.L515:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L511:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L515
.L509:
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	mov.n	a7, sp
	srli	a10, a4, 2
	movi.n	a8, -4
	and	a8, a4, a8
	bltu	a2, a3, .L518
	add.n	a9, a3, a4
	bgeu	a9, a2, .L519
.L518:
	mov.n	a9, a3
	mov.n	a11, a2
	addx4	a10, a10, a3
	j	.L520
.L521:
	l32i	a12, a9, 0
	s32i	a12, a11, 0
	addi.n	a9, a9, 4
	addi.n	a11, a11, 4
.L520:
	bne	a9, a10, .L521
	j	.L522
.L523:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
.L522:
	bltu	a8, a4, .L523
	j	.L517
.L525:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L519:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L525
.L517:
	retw.n
	.size	__cmovw, .-__cmovw
	.align	4
	.global	__modi
	.type	__modi, @function
__modi:
	entry	sp, 32
	mov.n	a7, sp
	rems	a2, a2, a3
	retw.n
	.size	__modi, .-__modi
	.literal_position
	.literal .LC123, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	l32r	a8, .LC123
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC124, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	l32r	a8, .LC124
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC125, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC125
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC126, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC126
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__ulltof, .-__ulltof
	.align	4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	entry	sp, 32
	mov.n	a7, sp
	remu	a2, a2, a3
	retw.n
	.size	__umodi, .-__umodi
	.align	4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a9, a2, 0, 16
	movi.n	a2, 0
	j	.L534
.L536:
	addi	a8, a2, -15
	neg	a8, a8
	ssr	a8
	sra	a8, a9
	bbsi	a8, 31, .L535
	addi.n	a2, a2, 1
.L534:
	bnei	a2, 16, .L536
.L535:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a8, a2, 0, 16
	movi.n	a2, 0
	j	.L538
.L540:
	ssr	a2
	sra	a9, a8
	bbsi	a9, 31, .L539
	addi.n	a2, a2, 1
.L538:
	bnei	a2, 16, .L540
.L539:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC128, __gesf2@PLT
	.literal .LC129, __subsf3@PLT
	.literal .LC130, __fixsfsi@PLT
	.literal .LC131, 32768
	.literal .LC132, 1191182336
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	mov.n	a7, sp
	l32r	a11, .LC132
	mov.n	a10, a2
	l32r	a8, .LC128
	callx8	a8
	bltz	a10, .L546
	l32r	a11, .LC132
	mov.n	a10, a2
	l32r	a8, .LC129
	callx8	a8
	l32r	a8, .LC130
	callx8	a8
	l32r	a8, .LC131
	add.n	a2, a10, a8
	j	.L544
.L546:
	mov.n	a10, a2
	l32r	a8, .LC130
	callx8	a8
	mov.n	a2, a10
.L544:
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 16
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L548
.L550:
	ssr	a9
	sra	a10, a2
	bbci	a10, 31, .L549
	addi.n	a8, a8, 1
.L549:
	addi.n	a9, a9, 1
.L548:
	bnei	a9, 16, .L550
	extui	a2, a8, 0, 1
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a9, a2, 0, 16
	movi.n	a2, 0
	mov.n	a8, a2
	j	.L552
.L554:
	ssr	a8
	sra	a10, a9
	bbci	a10, 31, .L553
	addi.n	a2, a2, 1
.L553:
	addi.n	a8, a8, 1
.L552:
	bnei	a8, 16, .L554
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
	j	.L556
.L558:
	bbci	a8, 31, .L557
	add.n	a2, a2, a3
.L557:
	srli	a8, a8, 1
	add.n	a3, a3, a3
.L556:
	bnez.n	a8, .L558
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a7, sp
	beqz.n	a2, .L564
	movi.n	a8, 0
	j	.L561
.L563:
	bbci	a3, 31, .L562
	add.n	a8, a8, a2
.L562:
	add.n	a2, a2, a2
	srli	a3, a3, 1
.L561:
	bnez.n	a3, .L563
	mov.n	a2, a8
	j	.L560
.L564:
	movi.n	a2, 0
.L560:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	j	.L566
.L569:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L566:
	movi.n	a9, 1
	bltu	a3, a2, .L567
	movi.n	a9, 0
.L567:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bnone	a10, a9, .L574
	bgez	a3, .L569
	movi.n	a9, 0
	j	.L571
.L572:
	bltu	a2, a3, .L570
	sub	a2, a2, a3
	or	a9, a9, a8
.L570:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L571
.L574:
	movi.n	a9, 0
.L571:
	bnez.n	a8, .L572
	bnez.n	a4, .L573
	mov.n	a2, a9
.L573:
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC133, __ltsf2@PLT
	.literal .LC134, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC133
	callx8	a8
	bltz	a10, .L578
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC134
	callx8	a8
	bgei	a10, 1, .L579
	movi.n	a2, 0
	j	.L577
.L578:
	movi.n	a2, -1
	j	.L577
.L579:
	movi.n	a2, 1
.L577:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC135, __ltdf2@PLT
	.literal .LC136, __gtdf2@PLT
	.align	4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC135
	callx8	a8
	bltz	a10, .L582
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC136
	callx8	a8
	bgei	a10, 1, .L583
	movi.n	a2, 0
	j	.L581
.L582:
	movi.n	a2, -1
	j	.L581
.L583:
	movi.n	a2, 1
.L581:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC137, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	mov.n	a7, sp
	srai	a12, a2, 31
	mov.n	a11, a3
	srai	a10, a3, 31
	mull	a6, a12, a3
	mull	a8, a10, a2
	add.n	a6, a6, a8
	mov.n	a10, a2
	l32r	a8, .LC137
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	add.n	a2, a6, a2
	retw.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.literal_position
	.literal .LC138, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a9, 0
	mov.n	a8, a9
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC138
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__mspabi_mpyull, .-__mspabi_mpyull
	.align	4
	.global	__mulhi3
	.type	__mulhi3, @function
__mulhi3:
	entry	sp, 32
	mov.n	a7, sp
	bgez	a3, .L593
	neg	a3, a3
	movi.n	a10, 1
	j	.L587
.L593:
	movi.n	a10, 0
.L587:
	movi.n	a8, 0
	mov.n	a9, a8
	j	.L588
.L591:
	bbci	a3, 31, .L589
	add.n	a8, a8, a2
.L589:
	add.n	a2, a2, a2
	srai	a3, a3, 1
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
.L588:
	movi.n	a12, 1
	moveqz	a12, a3, a3
	movi.n	a11, 1
	movi.n	a13, 0x1f
	bgeu	a13, a9, .L590
	movi.n	a11, 0
.L590:
	bany	a12, a11, .L591
	beqz.n	a10, .L594
	neg	a2, a8
	j	.L592
.L594:
	mov.n	a2, a8
.L592:
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC139, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	bgez	a2, .L599
	neg	a10, a2
	movi.n	a6, 1
	j	.L596
.L599:
	movi.n	a6, 0
.L596:
	bgez	a11, .L597
	neg	a11, a11
	nsau	a6, a6
	srli	a6, a6, 5
.L597:
	movi.n	a12, 0
	l32r	a8, .LC139
	callx8	a8
	mov.n	a2, a10
	beqz.n	a6, .L598
	neg	a2, a10
.L598:
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC140, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	bgez	a2, .L604
	neg	a10, a2
	movi.n	a3, 1
	j	.L601
.L604:
	movi.n	a3, 0
.L601:
	bgez	a11, .L602
	neg	a11, a11
.L602:
	movi.n	a12, 1
	l32r	a8, .LC140
	callx8	a8
	mov.n	a2, a10
	beqz.n	a3, .L603
	neg	a2, a10
.L603:
	retw.n
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 16
	movi.n	a8, 1
	j	.L606
.L609:
	add.n	a3, a3, a3
	extui	a3, a3, 0, 16
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
.L606:
	movi.n	a9, 1
	bltu	a3, a2, .L607
	movi.n	a9, 0
.L607:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bnone	a10, a9, .L614
	sext	a9, a3, 15
	bgez	a9, .L609
	movi.n	a9, 0
	j	.L611
.L612:
	bltu	a2, a3, .L610
	sub	a2, a2, a3
	extui	a2, a2, 0, 16
	or	a9, a9, a8
.L610:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L611
.L614:
	movi.n	a9, 0
.L611:
	bnez.n	a8, .L612
	bnez.n	a4, .L613
	mov.n	a2, a9
.L613:
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	j	.L617
.L620:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L617:
	movi.n	a9, 1
	bltu	a3, a2, .L618
	movi.n	a9, 0
.L618:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bnone	a10, a9, .L625
	bgez	a3, .L620
	movi.n	a9, 0
	j	.L622
.L623:
	bltu	a2, a3, .L621
	sub	a2, a2, a3
	or	a9, a9, a8
.L621:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L622
.L625:
	movi.n	a9, 0
.L622:
	bnez.n	a8, .L623
	bnez.n	a4, .L624
	mov.n	a2, a9
.L624:
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a2
	mov.n	a13, a3
	bbci	a4, 26, .L628
	movi.n	a9, 0
	ssl	a4
	sll	a4, a3
	mov.n	a8, a4
	j	.L629
.L628:
	beqz.n	a4, .L630
	ssl	a4
	sll	a9, a3
	ssl	a4
	sll	a10, a2
	addi	a4, a4, -32
	neg	a4, a4
	ssr	a4
	srl	a11, a3
	or	a11, a11, a10
	mov.n	a8, a11
.L629:
	mov.n	a2, a8
	mov.n	a3, a9
.L630:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a14, a2
	mov.n	a15, a3
	bbci	a4, 26, .L633
	srai	a8, a2, 31
	ssr	a4
	sra	a10, a2
	mov.n	a9, a10
	j	.L634
.L633:
	beqz.n	a4, .L635
	ssr	a4
	sra	a8, a2
	addi	a12, a4, -32
	neg	a12, a12
	ssl	a12
	sll	a10, a2
	ssr	a4
	srl	a4, a3
	or	a9, a10, a4
.L634:
	mov.n	a2, a8
	mov.n	a3, a9
.L635:
	retw.n
	.size	__ashrdi3, .-__ashrdi3
	.literal_position
	.literal .LC141, 65280
	.literal .LC142, 16711680
	.align	4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	entry	sp, 64
	mov.n	a7, sp
	movi.n	a5, 0
	mov.n	a4, a5
	extui	a5, a2, 24, 8
	srli	a9, a2, 8
	s32i	a4, a7, 12
	s32i	a4, a7, 8
	l32r	a10, .LC141
	and	a8, a9, a10
	s32i	a8, a7, 12
	slli	a15, a2, 8
	extui	a9, a3, 24, 8
	or	a9, a15, a9
	s32i	a4, a7, 20
	s32i	a4, a7, 16
	l32r	a6, .LC142
	and	a8, a9, a6
	s32i	a8, a7, 20
	slli	a14, a2, 24
	srli	a11, a3, 8
	or	a11, a14, a11
	mov.n	a8, a4
	extui	a9, a11, 24, 8
	slli	a9, a9, 24
	extui	a10, a3, 24, 8
	s32i	a4, a7, 4
	s32i	a4, a7, 0
	s32i	a15, a7, 0
	or	a10, a10, a15
	s32i	a10, a7, 0
	slli	a10, a3, 8
	s32i	a10, a7, 4
	s32i	a4, a7, 28
	s32i	a4, a7, 24
	l32i	a10, a7, 0
	extui	a10, a10, 0, 8
	s32i	a10, a7, 24
	srli	a12, a3, 8
	or	a10, a12, a14
	slli	a11, a3, 24
	mov.n	a15, a4
	l32r	a13, .LC141
	and	a14, a10, a13
	l32i	a2, a7, 4
	and	a12, a2, a6
	s32i	a4, a7, 4
	s32i	a4, a7, 0
	s32i	a11, a7, 0
	mov.n	a2, a11
	mov.n	a3, a5
	l32i	a4, a7, 8
	l32i	a5, a7, 12
	or	a10, a2, a4
	or	a11, a3, a5
	l32i	a4, a7, 16
	l32i	a5, a7, 20
	or	a2, a10, a4
	or	a3, a11, a5
	or	a10, a2, a8
	or	a11, a3, a9
	l32i	a6, a7, 24
	or	a8, a10, a6
	mov.n	a9, a11
	or	a10, a8, a14
	or	a2, a10, a12
	mov.n	a3, a9
	retw.n
	.size	__bswapdi2, .-__bswapdi2
	.align	4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a10, a2, 24, 8
	srli	a9, a2, 8
	extui	a9, a9, 8, 8
	slli	a9, a9, 8
	slli	a8, a2, 8
	extui	a8, a8, 16, 8
	slli	a8, a8, 16
	slli	a2, a2, 24
	or	a2, a2, a10
	or	a2, a2, a9
	or	a2, a2, a8
	retw.n
	.size	__bswapsi2, .-__bswapsi2
	.literal_position
	.literal .LC146, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	mov.n	a7, sp
	l32r	a8, .LC146
	bltu	a8, a2, .L644
	movi.n	a8, 0x10
	j	.L640
.L644:
	movi.n	a8, 0
.L640:
	addi	a9, a8, -16
	neg	a9, a9
	ssr	a9
	srl	a2, a2
	extui	a9, a2, 8, 8
	bnez.n	a9, .L645
	movi.n	a9, 8
	j	.L641
.L645:
	movi.n	a9, 0
.L641:
	addi	a10, a9, -8
	neg	a10, a10
	ssr	a10
	srl	a2, a2
	add.n	a8, a8, a9
	extui	a9, a2, 4, 4
	bnez.n	a9, .L646
	movi.n	a9, 4
	j	.L642
.L646:
	movi.n	a9, 0
.L642:
	addi	a10, a9, -4
	neg	a10, a10
	ssr	a10
	srl	a2, a2
	add.n	a8, a8, a9
	extui	a9, a2, 2, 2
	bnez.n	a9, .L647
	movi.n	a9, 2
	j	.L643
.L647:
	movi.n	a9, 0
.L643:
	movi.n	a10, 2
	sub	a11, a10, a9
	ssr	a11
	srl	a2, a2
	add.n	a8, a8, a9
	and	a9, a2, a10
	nsau	a9, a9
	srli	a9, a9, 5
	sub	a10, a10, a2
	mull	a9, a9, a10
	add.n	a2, a8, a9
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 32
	mov.n	a7, sp
	blt	a2, a4, .L650
	blt	a4, a2, .L651
	bltu	a3, a5, .L652
	bltu	a5, a3, .L653
	movi.n	a2, 1
	j	.L649
.L650:
	movi.n	a2, 0
	j	.L649
.L651:
	movi.n	a2, 2
	j	.L649
.L652:
	movi.n	a2, 0
	j	.L649
.L653:
	movi.n	a2, 2
.L649:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC148, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC148
	callx8	a8
	addi.n	a2, a10, -1
	retw.n
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a8, a2, 0, 16
	bnez.n	a8, .L660
	movi.n	a9, 0x10
	j	.L656
.L660:
	movi.n	a9, 0
.L656:
	ssr	a9
	srl	a2, a2
	extui	a8, a2, 0, 8
	bnez.n	a8, .L661
	movi.n	a8, 8
	j	.L657
.L661:
	movi.n	a8, 0
.L657:
	ssr	a8
	srl	a2, a2
	add.n	a9, a9, a8
	extui	a8, a2, 0, 4
	bnez.n	a8, .L662
	movi.n	a8, 4
	j	.L658
.L662:
	movi.n	a8, 0
.L658:
	ssr	a8
	srl	a2, a2
	add.n	a9, a9, a8
	extui	a8, a2, 0, 2
	bnez.n	a8, .L663
	movi.n	a8, 2
	j	.L659
.L663:
	movi.n	a8, 0
.L659:
	ssr	a8
	srl	a2, a2
	extui	a2, a2, 0, 2
	add.n	a9, a9, a8
	movi.n	a10, -1
	xor	a10, a2, a10
	extui	a10, a10, 0, 1
	srli	a2, a2, 1
	addi	a8, a2, -2
	neg	a8, a8
	neg	a10, a10
	and	a8, a8, a10
	add.n	a2, a9, a8
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a14, a2
	mov.n	a15, a3
	bbci	a4, 26, .L665
	movi.n	a9, 0
	mov.n	a8, a9
	ssr	a4
	srl	a9, a2
	j	.L666
.L665:
	beqz.n	a4, .L667
	ssr	a4
	srl	a8, a2
	addi	a12, a4, -32
	neg	a12, a12
	ssl	a12
	sll	a10, a2
	ssr	a4
	srl	a4, a3
	or	a9, a10, a4
.L666:
	mov.n	a2, a8
	mov.n	a3, a9
.L667:
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 32
	mov.n	a7, sp
	extui	a12, a2, 0, 16
	extui	a13, a3, 0, 16
	mull	a9, a12, a13
	extui	a8, a9, 16, 16
	extui	a9, a9, 0, 16
	extui	a2, a2, 16, 16
	mull	a13, a2, a13
	add.n	a8, a8, a13
	slli	a13, a8, 16
	add.n	a11, a13, a9
	extui	a8, a8, 16, 16
	mov.n	a10, a8
	extui	a8, a11, 16, 16
	extui	a9, a11, 0, 16
	extui	a3, a3, 16, 16
	mull	a12, a12, a3
	add.n	a8, a8, a12
	slli	a12, a8, 16
	add.n	a11, a12, a9
	extui	a8, a8, 16, 16
	add.n	a8, a8, a10
	mull	a2, a2, a3
	add.n	a2, a2, a8
	mov.n	a3, a11
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC149, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a3, a7, 0
	mov.n	a11, a5
	mov.n	a10, a3
	l32r	a8, .LC149
	callx8	a8
	mov.n	a12, a10
	mov.n	a13, a11
	mull	a6, a5, a2
	l32i	a10, a7, 0
	mull	a11, a10, a4
	add.n	a6, a6, a11
	add.n	a10, a6, a12
	mov.n	a2, a10
	mov.n	a3, a13
	retw.n
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	movi.n	a9, 0
	neg	a2, a10
	bgeu	a9, a11, .L672
	addi.n	a2, a2, -1
.L672:
	sub	a3, a9, a11
	retw.n
	.size	__negdi2, .-__negdi2
	.literal_position
	.literal .LC150, 27030
	.align	4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	entry	sp, 32
	mov.n	a7, sp
	xor	a2, a3, a2
	extui	a8, a2, 16, 16
	xor	a2, a2, a8
	srli	a8, a2, 8
	xor	a2, a2, a8
	srli	a8, a2, 4
	xor	a2, a2, a8
	extui	a2, a2, 0, 4
	l32r	a8, .LC150
	ssr	a2
	sra	a2, a8
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC151, 27030
	.align	4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a8, a2, 16, 16
	xor	a8, a2, a8
	srli	a9, a8, 8
	xor	a8, a8, a9
	srli	a9, a8, 4
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
	l32r	a2, .LC151
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC152, 1431655765
	.literal .LC153, 858993459
	.literal .LC154, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	mov.n	a7, sp
	slli	a10, a2, 31
	movi.n	a9, 0
	srli	a9, a3, 1
	or	a9, a10, a9
	srli	a8, a2, 1
	l32r	a12, .LC152
	movi.n	a11, 0
	and	a10, a8, a12
	and	a11, a9, a12
	movi.n	a9, 0
	sub	a8, a2, a10
	bgeu	a3, a11, .L677
	addi.n	a8, a8, -1
.L677:
	sub	a9, a3, a11
	mov.n	a2, a8
	mov.n	a3, a9
	slli	a10, a8, 30
	srli	a9, a3, 2
	or	a9, a10, a9
	srli	a8, a2, 2
	l32r	a12, .LC153
	and	a10, a8, a12
	and	a11, a9, a12
	and	a8, a2, a12
	and	a9, a3, a12
	add.n	a2, a10, a8
	add.n	a3, a11, a9
	bgeu	a3, a9, .L678
	addi.n	a2, a2, 1
.L678:
	slli	a8, a2, 28
	movi.n	a11, 0
	srli	a11, a3, 4
	or	a11, a8, a11
	srli	a10, a2, 4
	movi.n	a9, 0
	add.n	a8, a10, a2
	add.n	a9, a11, a3
	bgeu	a9, a3, .L679
	addi.n	a8, a8, 1
.L679:
	l32r	a10, .LC154
	and	a2, a8, a10
	and	a3, a9, a10
	add.n	a8, a2, a3
	extui	a9, a8, 16, 16
	add.n	a8, a8, a9
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 7
	retw.n
	.size	__popcountdi2, .-__popcountdi2
	.literal_position
	.literal .LC155, 1431655765
	.literal .LC156, 858993459
	.literal .LC157, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	mov.n	a7, sp
	srli	a8, a2, 1
	l32r	a9, .LC155
	and	a8, a8, a9
	sub	a8, a2, a8
	srli	a9, a8, 2
	l32r	a10, .LC156
	and	a9, a9, a10
	and	a8, a8, a10
	add.n	a8, a9, a8
	srli	a9, a8, 4
	add.n	a8, a9, a8
	l32r	a9, .LC157
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a8, a9
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC159, __muldf3@PLT
	.literal .LC160, __divdf3@PLT
	.literal .LC161, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a7, sp
	mov.n	a6, a4
	extui	a8, a4, 31, 1
	s32i	a8, a7, 0
	l32r	a4, .LC161
	movi.n	a5, 0
.L684:
	bbci	a6, 31, .L682
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC159
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
.L682:
	extui	a8, a6, 31, 1
	add.n	a8, a8, a6
	srai	a6, a8, 1
	beqz.n	a6, .L683
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC159
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L684
.L683:
	l32i	a8, a7, 0
	beqz.n	a8, .L686
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a10, .LC161
	movi.n	a11, 0
	l32r	a8, .LC160
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L685
.L686:
	mov.n	a2, a4
	mov.n	a3, a5
.L685:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC163, __mulsf3@PLT
	.literal .LC164, __divsf3@PLT
	.literal .LC165, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a6, a2
	extui	a5, a3, 31, 1
	l32r	a2, .LC165
.L690:
	bbci	a3, 31, .L688
	mov.n	a11, a6
	mov.n	a10, a2
	l32r	a8, .LC163
	callx8	a8
	mov.n	a2, a10
.L688:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L689
	mov.n	a11, a6
	mov.n	a10, a6
	l32r	a8, .LC163
	callx8	a8
	mov.n	a6, a10
	j	.L690
.L689:
	beqz.n	a5, .L691
	mov.n	a11, a2
	l32r	a10, .LC165
	l32r	a8, .LC164
	callx8	a8
	mov.n	a2, a10
.L691:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a7, sp
	bltu	a2, a4, .L695
	bltu	a4, a2, .L696
	bltu	a3, a5, .L697
	bltu	a5, a3, .L698
	movi.n	a2, 1
	j	.L694
.L695:
	movi.n	a2, 0
	j	.L694
.L696:
	movi.n	a2, 2
	j	.L694
.L697:
	movi.n	a2, 0
	j	.L694
.L698:
	movi.n	a2, 2
.L694:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC166, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC166
	callx8	a8
	addi.n	a2, a10, -1
	retw.n
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.global	__divsf3
	.global	__divdf3
	.global	__umulsidi3
	.global	__umulsidi3
	.global	__fixsfsi
	.global	__gesf2
	.global	__floatundisf
	.global	__floatundidf
	.global	__floatunsisf
	.global	__floatunsidf
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
