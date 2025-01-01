	.file	"mini-libc.c"
	.text
	.align	4
	.global	memmove
	.type	memmove, @function
memmove:
	entry	sp, 32
	mov.n	a7, sp
	bgeu	a3, a2, .L2
	add.n	a9, a3, a4
	add.n	a8, a2, a4
	j	.L3
.L4:
	addi.n	a9, a9, -1
	addi.n	a8, a8, -1
	l8ui	a10, a9, 0
	s8i	a10, a8, 0
.L3:
	bne	a9, a3, .L4
	j	.L5
.L2:
	beq	a2, a3, .L5
	mov.n	a9, a2
	add.n	a8, a2, a4
	j	.L6
.L7:
	l8ui	a10, a3, 0
	s8i	a10, a9, 0
	addi.n	a9, a9, 1
	addi.n	a3, a3, 1
.L6:
	bne	a9, a8, .L7
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
	bne	a4, a8, .L11
.L10:
	addi.n	a2, a2, 1
	movi.n	a8, 0
	moveqz	a2, a8, a5
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
	movi.n	a8, 0
	moveqz	a2, a8, a4
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L21
.L23:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
.L21:
	beqz.n	a4, .L22
	l8ui	a10, a8, 0
	l8ui	a9, a3, 0
	beq	a10, a9, .L23
.L22:
	movi.n	a2, 0
	beqz.n	a4, .L24
	l8ui	a2, a8, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
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
	l8ui	a8, a8, 0
	addi.n	a9, a4, -1
	bne	a3, a8, .L33
	add.n	a2, a2, a4
	j	.L31
.L33:
	mov.n	a4, a9
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
	l8ui	a8, a2, 0
	beq	a3, a8, .L45
	addi.n	a2, a2, 1
	addi.n	a8, a2, -1
	l8ui	a8, a8, 0
	bnez.n	a8, .L46
	movi.n	a2, 0
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
	mov.n	a12, a2
	movi.n	a2, 0
	beqz.n	a4, .L57
	mov.n	a9, a12
	j	.L58
.L60:
	addi.n	a9, a9, 1
	addi.n	a3, a3, 1
.L58:
	l8ui	a8, a9, 0
	beqz.n	a8, .L59
	l8ui	a11, a3, 0
	addi.n	a8, a4, -1
	add.n	a8, a8, a12
	sub	a8, a8, a9
	movi.n	a10, 1
	moveqz	a10, a8, a8
	movi.n	a8, 1
	moveqz	a8, a11, a11
	bnone	a10, a8, .L59
	l8ui	a10, a9, 0
	beq	a10, a11, .L60
.L59:
	l8ui	a2, a9, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
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
	extui	a2, a2, 0, 1
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
	extui	a2, a8, 0, 1
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -32
	nsau	a8, a8
	srli	a8, a8, 5
	addi	a2, a2, -9
	nsau	a2, a2
	srli	a2, a2, 5
	or	a2, a2, a8
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
	extui	a8, a8, 0, 8
	addi	a2, a2, -127
	nsau	a2, a2
	srli	a2, a2, 5
	or	a2, a8, a2
	retw.n
	.size	iscntrl, .-iscntrl
	.align	4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -48
	movi.n	a2, 1
	movi.n	a9, 9
	bgeu	a9, a8, .L73
	movi.n	a2, 0
.L73:
	extui	a2, a2, 0, 1
	retw.n
	.size	isdigit, .-isdigit
	.align	4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -33
	movi.n	a2, 1
	movi.n	a9, 0x5d
	bgeu	a9, a8, .L75
	movi.n	a2, 0
.L75:
	extui	a2, a2, 0, 1
	retw.n
	.size	isgraph, .-isgraph
	.align	4
	.global	islower
	.type	islower, @function
islower:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -97
	movi.n	a2, 1
	movi.n	a9, 0x19
	bgeu	a9, a8, .L77
	movi.n	a2, 0
.L77:
	extui	a2, a2, 0, 1
	retw.n
	.size	islower, .-islower
	.align	4
	.global	isprint
	.type	isprint, @function
isprint:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -32
	movi.n	a2, 1
	movi.n	a9, 0x5e
	bgeu	a9, a8, .L79
	movi.n	a2, 0
.L79:
	extui	a2, a2, 0, 1
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -32
	nsau	a8, a8
	srli	a8, a8, 5
	addi	a2, a2, -9
	movi.n	a9, 1
	bltui	a2, 5, .L81
	movi.n	a9, 0
.L81:
	extui	a2, a9, 0, 8
	or	a2, a2, a8
	retw.n
	.size	isspace, .-isspace
	.align	4
	.global	isupper
	.type	isupper, @function
isupper:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -65
	movi.n	a2, 1
	movi.n	a9, 0x19
	bgeu	a9, a8, .L83
	movi.n	a2, 0
.L83:
	extui	a2, a2, 0, 1
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
	mov.n	a9, a2
	movi.n	a8, 1
	movi.n	a10, 0x1f
	bgeu	a10, a2, .L85
	movi.n	a8, 0
.L85:
	extui	a8, a8, 0, 8
	addi	a11, a9, -127
	movi.n	a10, 1
	movi.n	a12, 0x20
	bgeu	a12, a11, .L86
	movi.n	a10, 0
.L86:
	extui	a10, a10, 0, 8
	or	a8, a8, a10
	movi.n	a2, 1
	bnez.n	a8, .L87
	l32r	a8, .LC0
	add.n	a8, a9, a8
	bltui	a8, 2, .L87
	l32r	a8, .LC1
	add.n	a9, a9, a8
	movi.n	a2, 0
	bgeui	a9, 3, .L87
	movi.n	a2, 1
.L87:
	retw.n
	.size	iswcntrl, .-iswcntrl
	.align	4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	entry	sp, 32
	mov.n	a7, sp
	addi	a8, a2, -48
	movi.n	a2, 1
	movi.n	a9, 9
	bgeu	a9, a8, .L92
	movi.n	a2, 0
.L92:
	extui	a2, a2, 0, 1
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
	mov.n	a8, a2
	movi	a9, 0xfe
	bltu	a9, a2, .L94
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a2, 1
	movi.n	a9, 0x20
	bltu	a9, a8, .L95
	movi.n	a2, 0
.L95:
	extui	a2, a2, 0, 8
	j	.L96
.L94:
	movi.n	a9, 1
	l32r	a10, .LC2
	bgeu	a10, a2, .L97
	movi.n	a9, 0
.L97:
	extui	a9, a9, 0, 8
	l32r	a11, .LC3
	add.n	a11, a8, a11
	movi.n	a10, 1
	l32r	a12, .LC4
	bgeu	a12, a11, .L98
	movi.n	a10, 0
.L98:
	extui	a10, a10, 0, 8
	or	a9, a9, a10
	movi.n	a2, 1
	bnez.n	a9, .L96
	l32r	a9, .LC5
	add.n	a9, a8, a9
	l32r	a10, .LC6
	bgeu	a10, a9, .L96
	l32r	a9, .LC7
	add.n	a9, a8, a9
	l32r	a10, .LC8
	movi.n	a2, 0
	bltu	a10, a9, .L96
	l32r	a9, .LC9
	and	a8, a8, a9
	xor	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a8, a8
.L96:
	retw.n
	.size	iswprint, .-iswprint
	.align	4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	addi	a9, a2, -48
	movi.n	a10, 9
	movi.n	a2, 1
	bgeu	a10, a9, .L104
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	movi.n	a2, 0
	bgeui	a8, 6, .L104
	movi.n	a2, 1
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
	bnez.n	a10, .L129
	l32r	a8, .LC19
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L126
	mov.n	a8, a2
	mov.n	a9, a3
	bgez	a2, .L125
	mov.n	a8, a4
	mov.n	a9, a5
	j	.L125
.L126:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC20
	callx8	a8
	mov.n	a8, a4
	mov.n	a9, a5
	bltz	a10, .L125
	j	.L133
.L128:
	mov.n	a8, a4
	mov.n	a9, a5
	j	.L125
.L129:
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L125
.L133:
	mov.n	a8, a2
	mov.n	a9, a3
.L125:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a6, a2
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L138
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC21
	callx8	a8
	bnez.n	a10, .L139
	l32r	a8, .LC22
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L136
	movgez	a3, a2, a2
	mov.n	a2, a3
	j	.L135
.L136:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC23
	callx8	a8
	movltz	a6, a3, a10
	mov.n	a2, a6
	j	.L135
.L138:
	mov.n	a2, a3
	j	.L135
.L139:
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
	bnez.n	a10, .L147
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC24
	callx8	a8
	bnez.n	a10, .L148
	l32r	a8, .LC25
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L145
	mov.n	a8, a2
	mov.n	a9, a3
	bgez	a2, .L144
	mov.n	a8, a4
	mov.n	a9, a5
	j	.L144
.L145:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC26
	callx8	a8
	mov.n	a8, a4
	mov.n	a9, a5
	bltz	a10, .L144
	j	.L152
.L147:
	mov.n	a8, a4
	mov.n	a9, a5
	j	.L144
.L148:
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L144
.L152:
	mov.n	a8, a2
	mov.n	a9, a3
.L144:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC27
	callx8	a8
	bnez.n	a10, .L157
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC27
	callx8	a8
	bnez.n	a10, .L158
	l32r	a8, .LC28
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L155
	mov.n	a8, a4
	mov.n	a9, a5
	bgez	a2, .L154
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L154
.L155:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC29
	callx8	a8
	mov.n	a8, a2
	mov.n	a9, a3
	bltz	a10, .L154
	j	.L162
.L157:
	mov.n	a8, a4
	mov.n	a9, a5
	j	.L154
.L158:
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L154
.L162:
	mov.n	a8, a4
	mov.n	a9, a5
.L154:
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
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a6, a2
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L167
	mov.n	a11, a3
	mov.n	a10, a3
	l32r	a8, .LC30
	callx8	a8
	bnez.n	a10, .L168
	l32r	a8, .LC31
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L165
	movgez	a6, a3, a2
	mov.n	a2, a6
	j	.L164
.L165:
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC32
	callx8	a8
	movltz	a3, a2, a10
	mov.n	a2, a3
	j	.L164
.L167:
	mov.n	a2, a3
	j	.L164
.L168:
.L164:
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
	bnez.n	a10, .L176
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC33
	callx8	a8
	bnez.n	a10, .L177
	l32r	a8, .LC34
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L174
	mov.n	a8, a4
	mov.n	a9, a5
	bgez	a2, .L173
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L173
.L174:
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC35
	callx8	a8
	mov.n	a8, a2
	mov.n	a9, a3
	bltz	a10, .L173
	j	.L181
.L176:
	mov.n	a8, a4
	mov.n	a9, a5
	j	.L173
.L177:
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L173
.L181:
	mov.n	a8, a4
	mov.n	a9, a5
.L173:
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
	entry	sp, 32
	mov.n	a7, sp
	l32r	a9, .LC36
	j	.L183
.L184:
	extui	a10, a2, 0, 6
	l32r	a8, .LC37
	add.n	a8, a8, a10
	l8ui	a8, a8, 0
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	srli	a2, a2, 6
.L183:
	bnez.n	a2, .L184
	movi.n	a8, 0
	s8i	a8, a9, 0
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
	movi.n	a13, 1
	mov.n	a8, a10
	add.n	a9, a11, a13
	bgeu	a9, a13, .L187
	add.n	a8, a10, a13
.L187:
	l32r	a10, .LC39
	s32i	a8, a10, 0
	s32i	a9, a10, 4
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
	bnez.n	a3, .L189
	movi.n	a8, 0
	s32i	a8, a2, 4
	s32i	a8, a2, 0
	j	.L188
.L189:
	l32i	a8, a3, 0
	s32i	a8, a2, 0
	s32i	a3, a2, 4
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L188
	s32i	a2, a8, 4
.L188:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	mov.n	a7, sp
	l32i	a8, a2, 0
	beqz.n	a8, .L192
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L192:
	l32i	a8, a2, 4
	beqz.n	a8, .L191
	l32i	a9, a2, 0
	s32i	a9, a8, 0
.L191:
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
	s32i	a3, a7, 4
	s32i	a4, a7, 8
	l32i	a2, a4, 0
	movi.n	a4, 0
	j	.L195
.L198:
	mov.n	a11, a3
	l32i	a10, a7, 0
	callx8	a6
	add.n	a3, a3, a5
	bnez.n	a10, .L196
	mull	a4, a4, a5
	l32i	a8, a7, 4
	add.n	a2, a8, a4
	j	.L197
.L196:
	addi.n	a4, a4, 1
.L195:
	bne	a4, a2, .L198
	addi.n	a8, a2, 1
	l32i	a9, a7, 8
	s32i	a8, a9, 0
	mull	a10, a5, a2
	mov.n	a12, a5
	l32i	a11, a7, 0
	l32i	a8, a7, 4
	add.n	a10, a8, a10
	l32r	a8, .LC43
	callx8	a8
	mov.n	a2, a10
.L197:
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	s32i	a3, a7, 4
	l32i	a2, a4, 0
	movi.n	a4, 0
	j	.L200
.L203:
	mov.n	a11, a3
	l32i	a10, a7, 0
	callx8	a6
	add.n	a3, a3, a5
	bnez.n	a10, .L201
	mull	a4, a4, a5
	l32i	a8, a7, 4
	add.n	a2, a8, a4
	j	.L202
.L201:
	addi.n	a4, a4, 1
.L200:
	bne	a4, a2, .L203
	movi.n	a2, 0
.L202:
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
	j	.L206
.L207:
	addi.n	a2, a2, 1
.L206:
	l8ui	a10, a2, 0
	l32r	a8, .LC44
	callx8	a8
	bnez.n	a10, .L207
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L213
	movi.n	a9, 0x2d
	movi.n	a12, 0
	bne	a8, a9, .L209
	movi.n	a12, 1
	j	.L208
.L213:
	movi.n	a12, 0
.L208:
	addi.n	a2, a2, 1
.L209:
	mov.n	a8, a2
	movi.n	a9, 0
	j	.L210
.L211:
	addx4	a9, a9, a9
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	subx2	a9, a9, a10
	addi.n	a8, a8, 1
.L210:
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	movi.n	a11, 9
	bgeu	a11, a10, .L211
	neg	a2, a9
	movnez	a2, a9, a12
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
	j	.L217
.L218:
	addi.n	a2, a2, 1
.L217:
	l8ui	a10, a2, 0
	l32r	a8, .LC45
	callx8	a8
	bnez.n	a10, .L218
	l8ui	a8, a2, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L224
	movi.n	a9, 0x2d
	movi.n	a12, 0
	bne	a8, a9, .L220
	movi.n	a12, 1
	j	.L219
.L224:
	movi.n	a12, 0
.L219:
	addi.n	a2, a2, 1
.L220:
	mov.n	a8, a2
	movi.n	a9, 0
	j	.L221
.L222:
	addx4	a9, a9, a9
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	subx2	a9, a9, a10
	addi.n	a8, a8, 1
.L221:
	l8ui	a10, a8, 0
	addi	a10, a10, -48
	movi.n	a11, 9
	bgeu	a11, a10, .L222
	neg	a2, a9
	movnez	a2, a9, a12
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
	j	.L228
.L229:
	addi.n	a6, a6, 1
.L228:
	l8ui	a10, a6, 0
	l32r	a8, .LC46
	callx8	a8
	bnez.n	a10, .L229
	l8ui	a8, a6, 0
	movi.n	a9, 0x2b
	beq	a8, a9, .L237
	movi.n	a9, 0x2d
	s32i	a10, a7, 4
	bne	a8, a9, .L231
	movi.n	a8, 1
	s32i	a8, a7, 4
	j	.L230
.L237:
	movi.n	a8, 0
	s32i	a8, a7, 4
.L230:
	addi.n	a6, a6, 1
.L231:
	movi.n	a3, 0
	mov.n	a2, a3
	j	.L232
.L234:
	movi.n	a10, 0xa
	mull	a8, a10, a2
	s32i	a8, a7, 0
	mov.n	a11, a3
	l32r	a8, .LC47
	callx8	a8
	l32i	a8, a7, 0
	add.n	a10, a8, a10
	l8ui	a8, a6, 0
	addi	a8, a8, -48
	mov.n	a5, a8
	srai	a4, a8, 31
	sub	a2, a10, a4
	bgeu	a11, a8, .L233
	addi.n	a2, a2, -1
.L233:
	sub	a3, a11, a5
	addi.n	a6, a6, 1
.L232:
	l8ui	a8, a6, 0
	addi	a8, a8, -48
	movi.n	a9, 9
	bgeu	a9, a8, .L234
	mov.n	a10, a2
	mov.n	a11, a3
	l32i	a8, a7, 4
	bnez.n	a8, .L235
	movi.n	a9, 0
	neg	a10, a2
	bgeu	a9, a3, .L236
	addi.n	a10, a10, -1
.L236:
	sub	a11, a9, a3
.L235:
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	mov.n	a7, sp
	s32i	a2, a7, 0
	j	.L241
.L245:
	srli	a2, a4, 1
	mull	a2, a2, a5
	add.n	a2, a3, a2
	mov.n	a11, a2
	l32i	a10, a7, 0
	callx8	a6
	bgez	a10, .L242
	srli	a4, a4, 1
	j	.L241
.L242:
	blti	a10, 1, .L244
	add.n	a3, a2, a5
	srli	a8, a4, 1
	addi.n	a4, a4, -1
	sub	a4, a4, a8
.L241:
	bnez.n	a4, .L245
	movi.n	a2, 0
.L244:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 4
	mov.n	a7, sp
	s32i	a2, a7, 0
	j	.L248
.L251:
	srai	a2, a4, 1
	mull	a2, a2, a5
	add.n	a2, a3, a2
	l32i	a12, a7, 4
	mov.n	a11, a2
	l32i	a10, a7, 0
	callx8	a6
	beqz.n	a10, .L249
	blti	a10, 1, .L250
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
.L250:
	srai	a4, a4, 1
.L248:
	bnez.n	a4, .L251
	movi.n	a2, 0
.L249:
	retw.n
	.size	bsearch_r, .-bsearch_r
	.align	4
	.global	div
	.type	div, @function
div:
	entry	sp, 48
	mov.n	a7, sp
	mov.n	a9, a2
	mov.n	a8, a3
	quos	a2, a9, a8
	rems	a3, a9, a8
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
	bgeu	a11, a9, .L256
	addi.n	a2, a2, -1
.L256:
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
	mov.n	a5, a11
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a14, a10
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
	mov.n	a9, a2
	mov.n	a8, a3
	quos	a2, a9, a8
	rems	a3, a9, a8
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
	bgeu	a11, a9, .L262
	addi.n	a2, a2, -1
.L262:
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
	mov.n	a5, a11
	l32i	a8, a7, 16
	l32i	a9, a7, 20
	mov.n	a12, a8
	mov.n	a13, a9
	mov.n	a14, a10
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
	j	.L265
.L267:
	addi.n	a2, a2, 4
.L265:
	l32i	a8, a2, 0
	beqz.n	a8, .L266
	bne	a3, a8, .L267
.L266:
	l32i	a9, a2, 0
	movi.n	a8, 0
	moveqz	a2, a8, a9
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L271
.L273:
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L271:
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	bne	a10, a9, .L272
	beqz.n	a10, .L272
	l32i	a9, a3, 0
	bnez.n	a9, .L273
.L272:
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L274
	movi.n	a2, 1
	blt	a9, a10, .L275
	movi.n	a2, 0
.L275:
	extui	a2, a2, 0, 8
.L274:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
.L278:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L278
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L281
.L282:
	addi.n	a8, a8, 4
.L281:
	l32i	a9, a8, 0
	bnez.n	a9, .L282
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
	mov.n	a8, a2
	j	.L284
.L286:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L284:
	beqz.n	a4, .L285
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	bne	a10, a9, .L285
	beqz.n	a10, .L285
	l32i	a9, a3, 0
	bnez.n	a9, .L286
.L285:
	movi.n	a2, 0
	beqz.n	a4, .L287
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L287
	movi.n	a2, 1
	blt	a9, a10, .L288
	movi.n	a2, 0
.L288:
	extui	a2, a2, 0, 8
.L287:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a7, sp
	j	.L292
.L294:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
.L292:
	beqz.n	a4, .L293
	l32i	a8, a2, 0
	bne	a3, a8, .L294
.L293:
	movi.n	a8, 0
	moveqz	a2, a8, a4
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L298
.L300:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L298:
	beqz.n	a4, .L299
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	beq	a10, a9, .L300
.L299:
	movi.n	a2, 0
	beqz.n	a4, .L301
	l32i	a10, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a10, a9, .L301
	movi.n	a2, 1
	blt	a9, a10, .L302
	movi.n	a2, 0
.L302:
	extui	a2, a2, 0, 8
.L301:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L306
.L307:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
.L306:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L307
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a9, a3
	beq	a2, a3, .L309
	sub	a8, a2, a3
	slli	a10, a4, 2
	bltu	a8, a10, .L310
	mov.n	a8, a2
	j	.L311
.L310:
	addi.n	a4, a4, -1
	addx4	a9, a4, a3
	addx4	a8, a4, a2
	addi	a11, a2, -4
	j	.L312
.L313:
	l32i	a10, a9, 0
	s32i	a10, a8, 0
	addi	a9, a9, -4
	addi	a8, a8, -4
.L312:
	bne	a8, a11, .L313
	j	.L309
.L314:
	l32i	a10, a9, 0
	s32i	a10, a8, 0
	addi.n	a8, a8, 4
	addi.n	a9, a9, 4
.L311:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L314
.L309:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	j	.L316
.L317:
	s32i	a3, a8, 0
	addi.n	a8, a8, 4
.L316:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L317
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a3
	bgeu	a2, a3, .L319
	add.n	a9, a2, a4
	add.n	a8, a3, a4
	j	.L320
.L321:
	addi.n	a9, a9, -1
	addi.n	a8, a8, -1
	l8ui	a10, a9, 0
	s8i	a10, a8, 0
.L320:
	bne	a9, a2, .L321
	j	.L318
.L319:
	beq	a2, a3, .L318
	mov.n	a9, a2
	add.n	a2, a2, a4
	j	.L323
.L324:
	l8ui	a10, a9, 0
	s8i	a10, a8, 0
	addi.n	a9, a9, 1
	addi.n	a8, a8, 1
.L323:
	bne	a9, a2, .L324
.L318:
	retw.n
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a11, 0x20
	and	a12, a4, a11
	movi.n	a14, 0
	srli	a10, a3, 1
	movi.n	a8, -1
	xor	a8, a4, a8
	ssr	a8
	srl	a10, a10
	ssl	a4
	sll	a8, a2
	or	a8, a10, a8
	ssl	a4
	sll	a9, a3
	movnez	a8, a9, a12
	movnez	a9, a14, a12
	neg	a4, a4
	extui	a12, a4, 0, 6
	and	a4, a4, a11
	add.n	a13, a2, a2
	movi.n	a10, -1
	xor	a10, a12, a10
	ssl	a10
	sll	a13, a13
	ssr	a12
	srl	a11, a3
	or	a11, a13, a11
	ssr	a12
	srl	a10, a2
	movnez	a11, a10, a4
	movnez	a10, a14, a4
	or	a2, a10, a8
	or	a3, a11, a9
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a11, 0x20
	and	a12, a4, a11
	movi.n	a14, 0
	add.n	a10, a2, a2
	movi.n	a8, -1
	xor	a8, a4, a8
	ssl	a8
	sll	a10, a10
	ssr	a4
	srl	a9, a3
	or	a9, a10, a9
	ssr	a4
	srl	a8, a2
	movnez	a9, a8, a12
	movnez	a8, a14, a12
	neg	a4, a4
	extui	a12, a4, 0, 6
	and	a4, a4, a11
	srli	a13, a3, 1
	movi.n	a10, -1
	xor	a10, a12, a10
	ssr	a10
	srl	a13, a13
	ssl	a12
	sll	a10, a2
	or	a10, a13, a10
	ssl	a12
	sll	a11, a3
	movnez	a10, a11, a4
	movnez	a11, a14, a4
	or	a2, a10, a8
	or	a3, a11, a9
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
	extui	a8, a2, 8, 8
	extui	a2, a2, 0, 8
	slli	a2, a2, 8
	or	a2, a8, a2
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
	j	.L339
.L342:
	ssr	a8
	srl	a9, a2
	bbci	a9, 31, .L340
	addi.n	a2, a8, 1
	j	.L341
.L340:
	addi.n	a8, a8, 1
.L339:
	bnei	a8, 32, .L342
	movi.n	a2, 0
.L341:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L344
	movi.n	a2, 1
	j	.L345
.L346:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
.L345:
	bbci	a8, 31, .L346
.L344:
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
	mov.n	a6, a2
	l32r	a11, .LC64
	mov.n	a10, a2
	l32r	a8, .LC60
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L349
	l32r	a11, .LC63
	mov.n	a10, a6
	l32r	a8, .LC62
	callx8	a8
	bgei	a10, 1, .L349
	movi.n	a2, 0
.L349:
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
	mov.n	a4, a2
	mov.n	a5, a3
	l32r	a12, .LC70
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC66
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L355
	l32r	a12, .LC69
	movi.n	a13, -1
	mov.n	a10, a4
	mov.n	a11, a3
	l32r	a8, .LC68
	callx8	a8
	bgei	a10, 1, .L355
	movi.n	a2, 0
.L355:
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
	mov.n	a4, a2
	mov.n	a5, a3
	l32r	a12, .LC76
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC72
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L361
	l32r	a12, .LC75
	movi.n	a13, -1
	mov.n	a10, a4
	mov.n	a11, a3
	l32r	a8, .LC74
	callx8	a8
	bgei	a10, 1, .L361
	movi.n	a2, 0
.L361:
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
	.literal .LC84, 1056964608
	.literal .LC85, 1073741824
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
	bnez.n	a10, .L368
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC81
	callx8	a8
	mov.n	a11, a10
	mov.n	a10, a2
	l32r	a8, .LC82
	callx8	a8
	beqz.n	a10, .L368
	l32r	a6, .LC84
	l32r	a8, .LC85
	movgez	a6, a8, a3
.L372:
	bbci	a3, 31, .L371
	mov.n	a11, a6
	mov.n	a10, a2
	l32r	a8, .LC83
	callx8	a8
	mov.n	a2, a10
.L371:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L368
	mov.n	a11, a6
	mov.n	a10, a6
	l32r	a8, .LC83
	callx8	a8
	mov.n	a6, a10
	j	.L372
.L368:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC88, __unorddf2@PLT
	.literal .LC89, __adddf3@PLT
	.literal .LC90, __nedf2@PLT
	.literal .LC91, __muldf3@PLT
	.literal .LC92, 1071644672
	.literal .LC93, 1073741824
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
	bnez.n	a10, .L376
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
	beqz.n	a10, .L376
	l32r	a4, .LC93
	movi.n	a5, 0
	bgez	a6, .L380
	l32r	a4, .LC92
	movi.n	a5, 0
.L380:
	bbci	a6, 31, .L379
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC91
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L379:
	extui	a8, a6, 31, 1
	add.n	a8, a8, a6
	srai	a6, a8, 1
	beqz.n	a6, .L376
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC91
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
	j	.L380
.L376:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC96, __unorddf2@PLT
	.literal .LC97, __adddf3@PLT
	.literal .LC98, __nedf2@PLT
	.literal .LC99, __muldf3@PLT
	.literal .LC100, 1071644672
	.literal .LC101, 1073741824
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
	bnez.n	a10, .L384
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
	beqz.n	a10, .L384
	l32r	a4, .LC101
	movi.n	a5, 0
	bgez	a6, .L388
	l32r	a4, .LC100
	movi.n	a5, 0
.L388:
	bbci	a6, 31, .L387
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC99
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L387:
	extui	a8, a6, 31, 1
	add.n	a8, a8, a6
	srai	a6, a8, 1
	beqz.n	a6, .L384
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC99
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
	j	.L388
.L384:
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
	j	.L392
.L393:
	l8ui	a10, a3, 0
	l8ui	a9, a8, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
.L392:
	bne	a8, a4, .L393
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
	j	.L395
.L397:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
.L395:
	beqz.n	a4, .L396
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	bnez.n	a8, .L397
.L396:
	bnez.n	a4, .L398
	movi.n	a8, 0
	s8i	a8, a10, 0
.L398:
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
	j	.L400
.L402:
	addi.n	a2, a2, 1
.L400:
	beq	a2, a3, .L401
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L402
.L401:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	mov.n	a7, sp
	j	.L404
.L406:
	l8ui	a10, a8, 0
	l8ui	a9, a2, 0
	addi.n	a8, a8, 1
	beq	a10, a9, .L405
.L407:
	l8ui	a9, a8, 0
	bnez.n	a9, .L406
	addi.n	a2, a2, 1
.L404:
	l8ui	a8, a2, 0
	beqz.n	a8, .L409
	mov.n	a8, a3
	j	.L407
.L409:
	movi.n	a2, 0
.L405:
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
.L412:
	l8ui	a9, a8, 0
	sub	a9, a3, a9
	moveqz	a2, a8, a9
	addi.n	a8, a8, 1
	addi.n	a9, a8, -1
	l8ui	a9, a9, 0
	bnez.n	a9, .L412
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
	mov.n	a5, a2
	mov.n	a10, a3
	l32r	a8, .LC103
	callx8	a8
	mov.n	a6, a10
	beqz.n	a10, .L416
	l8ui	a4, a3, 0
	j	.L417
.L418:
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a5
	l32r	a8, .LC104
	callx8	a8
	beqz.n	a10, .L420
	addi.n	a5, a5, 1
.L417:
	mov.n	a11, a4
	mov.n	a10, a5
	l32r	a8, .LC105
	callx8	a8
	mov.n	a5, a10
	bnez.n	a10, .L418
	movi.n	a2, 0
	j	.L416
.L420:
	mov.n	a2, a5
.L416:
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
	bgez	a10, .L422
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC108
	callx8	a8
	bgei	a10, 1, .L424
.L422:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC108
	callx8	a8
	blti	a10, 1, .L432
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC107
	callx8	a8
	bgez	a10, .L433
.L424:
	l32r	a10, .LC109
	xor	a8, a2, a10
	mov.n	a9, a3
	j	.L425
.L432:
	mov.n	a8, a2
	mov.n	a9, a3
	j	.L425
.L433:
	mov.n	a8, a2
	mov.n	a9, a3
.L425:
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
	mov.n	a8, a2
	sub	a6, a3, a5
	add.n	a6, a2, a6
	beqz.n	a5, .L435
	movi.n	a9, 1
	bltu	a3, a5, .L436
	movi.n	a9, 0
.L436:
	extui	a9, a9, 0, 8
	bnez.n	a9, .L441
	mov.n	a2, a8
	j	.L437
.L439:
	l8ui	a9, a2, 0
	l8ui	a8, a4, 0
	bne	a9, a8, .L438
	addi.n	a12, a5, -1
	addi.n	a11, a4, 1
	addi.n	a10, a2, 1
	l32r	a8, .LC110
	callx8	a8
	beqz.n	a10, .L435
.L438:
	addi.n	a2, a2, 1
.L437:
	bgeu	a6, a2, .L439
	movi.n	a2, 0
	j	.L435
.L441:
	movi.n	a2, 0
.L435:
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
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	bgez	a10, .L461
	l32r	a10, .LC114
	xor	a8, a2, a10
	mov.n	a2, a8
	movi.n	a5, 1
	j	.L445
.L461:
	movi.n	a5, 0
.L445:
	l32r	a12, .LC122
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC116
	callx8	a8
	movi.n	a6, 0
	bgez	a10, .L447
	j	.L462
.L449:
	addi.n	a6, a6, 1
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC118
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L447:
	l32r	a12, .LC122
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC116
	callx8	a8
	bgez	a10, .L449
	j	.L450
.L462:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC119
	callx8	a8
	movi.n	a6, 1
	moveqz	a6, a10, a10
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	extui	a10, a10, 31, 1
	bany	a10, a6, .L458
	movi.n	a6, 0
	j	.L450
.L454:
	addi.n	a6, a6, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC120
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L453
.L458:
	movi.n	a6, 0
.L453:
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	bltz	a10, .L454
.L450:
	s32i	a6, a4, 0
	beqz.n	a5, .L455
	l32r	a10, .LC114
	xor	a8, a2, a10
	mov.n	a2, a8
.L455:
	retw.n
	.size	frexp, .-frexp
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	mov.n	a7, sp
	movi.n	a10, 0
	s32i	a10, a7, 4
	s32i	a10, a7, 0
	j	.L464
.L468:
	movi.n	a14, 0
	extui	a15, a3, 0, 1
	or	a10, a14, a15
	beqz.n	a10, .L465
	l32i	a6, a7, 4
	add.n	a11, a6, a5
	movi.n	a6, 1
	s32i	a6, a7, 8
	l32i	a6, a7, 4
	bltu	a11, a6, .L467
	s32i	a14, a7, 8
.L467:
	l32i	a6, a7, 0
	add.n	a10, a6, a4
	l32i	a6, a7, 8
	add.n	a10, a6, a10
	s32i	a10, a7, 0
	s32i	a11, a7, 4
.L465:
	extui	a10, a5, 31, 1
	add.n	a12, a4, a4
	or	a12, a10, a12
	add.n	a13, a5, a5
	mov.n	a4, a12
	mov.n	a5, a13
	slli	a10, a2, 31
	srli	a9, a3, 1
	or	a9, a10, a9
	srli	a8, a2, 1
	mov.n	a2, a8
	mov.n	a3, a9
.L464:
	or	a10, a2, a3
	bnez.n	a10, .L468
	l32i	a2, a7, 0
	l32i	a3, a7, 4
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	j	.L470
.L473:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L470:
	movi.n	a9, 1
	bltu	a3, a2, .L471
	movi.n	a9, 0
.L471:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bnone	a10, a9, .L478
	bgez	a3, .L473
	movi.n	a9, 0
	j	.L475
.L476:
	bltu	a2, a3, .L474
	sub	a2, a2, a3
	or	a9, a9, a8
.L474:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L475
.L478:
	movi.n	a9, 0
.L475:
	bnez.n	a8, .L476
	moveqz	a2, a9, a4
	retw.n
	.size	udivmodsi4, .-udivmodsi4
	.align	4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a2, a2, 0, 8
	slli	a8, a2, 8
	nsau	a8, a8
	addi.n	a8, a8, -1
	movi.n	a9, 7
	movnez	a9, a8, a2
	mov.n	a2, a9
	retw.n
	.size	__clrsbqi2, .-__clrsbqi2
	.align	4
	.global	__clrsbdi2
	.type	__clrsbdi2, @function
__clrsbdi2:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a14, a2
	mov.n	a15, a3
	bgez	a2, .L484
	movi.n	a12, -1
	xor	a10, a2, a12
	xor	a11, a3, a12
	mov.n	a14, a10
	mov.n	a15, a11
.L484:
	or	a10, a14, a15
	movi.n	a2, 0x3f
	beqz.n	a10, .L486
	nsau	a10, a14
	nsau	a2, a15
	addi	a2, a2, 32
	movnez	a2, a10, a14
	addi.n	a2, a2, -1
.L486:
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
	j	.L492
.L494:
	extui	a10, a8, 0, 1
	add.n	a9, a2, a3
	movnez	a2, a9, a10
	srli	a8, a8, 1
	add.n	a3, a3, a3
.L492:
	bnez.n	a8, .L494
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 32
	mov.n	a7, sp
	srli	a13, a4, 3
	movi.n	a8, -8
	and	a8, a4, a8
	bltu	a2, a3, .L496
	add.n	a9, a3, a4
	bgeu	a9, a2, .L497
.L496:
	mov.n	a9, a3
	mov.n	a12, a2
	addx8	a13, a13, a3
	j	.L498
.L499:
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	s32i	a10, a12, 0
	s32i	a11, a12, 4
	addi.n	a9, a9, 8
	addi.n	a12, a12, 8
.L498:
	bne	a9, a13, .L499
	j	.L500
.L501:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
.L500:
	bltu	a8, a4, .L501
	j	.L495
.L503:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L497:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L503
.L495:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	mov.n	a7, sp
	srli	a11, a4, 1
	bltu	a2, a3, .L506
	add.n	a8, a3, a4
	bgeu	a8, a2, .L507
.L506:
	mov.n	a8, a3
	mov.n	a9, a2
	addx2	a11, a11, a3
	j	.L508
.L509:
	l16ui	a10, a8, 0
	s16i	a10, a9, 0
	addi.n	a8, a8, 2
	addi.n	a9, a9, 2
.L508:
	bne	a8, a11, .L509
	bbci	a4, 31, .L505
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	add.n	a2, a2, a4
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	j	.L505
.L511:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L507:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L511
.L505:
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	mov.n	a7, sp
	srli	a12, a4, 2
	movi.n	a8, -4
	and	a8, a4, a8
	bltu	a2, a3, .L514
	add.n	a9, a3, a4
	bgeu	a9, a2, .L515
.L514:
	mov.n	a9, a3
	mov.n	a10, a2
	addx4	a12, a12, a3
	j	.L516
.L517:
	l32i	a11, a9, 0
	s32i	a11, a10, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, 4
.L516:
	bne	a9, a12, .L517
	j	.L518
.L519:
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, a2, a8
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
.L518:
	bltu	a8, a4, .L519
	j	.L513
.L521:
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	s8i	a9, a8, 0
.L515:
	addi.n	a4, a4, -1
	bnei	a4, -1, .L521
.L513:
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
	j	.L530
.L532:
	addi	a8, a2, 16
	bbs	a9, a8, .L531
	addi.n	a2, a2, 1
.L530:
	bnei	a2, 16, .L532
.L531:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a9, a2, 0, 16
	movi.n	a2, 0
	j	.L534
.L536:
	ssr	a2
	sra	a8, a9
	bbsi	a8, 31, .L535
	addi.n	a2, a2, 1
.L534:
	bnei	a2, 16, .L536
.L535:
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
	bltz	a10, .L542
	l32r	a11, .LC132
	mov.n	a10, a2
	l32r	a8, .LC129
	callx8	a8
	l32r	a8, .LC130
	callx8	a8
	l32r	a8, .LC131
	add.n	a2, a10, a8
	j	.L540
.L542:
	mov.n	a10, a2
	l32r	a8, .LC130
	callx8	a8
	mov.n	a2, a10
.L540:
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a10, a2, 0, 16
	movi.n	a2, 0
	mov.n	a8, a2
	j	.L544
.L546:
	ssr	a8
	sra	a9, a10
	extui	a9, a9, 0, 1
	add.n	a2, a2, a9
	addi.n	a8, a8, 1
.L544:
	bnei	a8, 16, .L546
	extui	a2, a2, 0, 1
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 32
	mov.n	a7, sp
	extui	a10, a2, 0, 16
	movi.n	a2, 0
	mov.n	a8, a2
	j	.L548
.L550:
	ssr	a8
	sra	a9, a10
	extui	a9, a9, 0, 1
	add.n	a2, a2, a9
	addi.n	a8, a8, 1
.L548:
	bnei	a8, 16, .L550
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
	j	.L552
.L554:
	extui	a10, a8, 0, 1
	add.n	a9, a2, a3
	movnez	a2, a9, a10
	srli	a8, a8, 1
	add.n	a3, a3, a3
.L552:
	bnez.n	a8, .L554
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
	beqz.n	a8, .L556
	j	.L557
.L559:
	extui	a10, a3, 0, 1
	add.n	a9, a2, a8
	movnez	a2, a9, a10
	add.n	a8, a8, a8
	srli	a3, a3, 1
.L557:
	bnez.n	a3, .L559
.L556:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	j	.L562
.L565:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L562:
	movi.n	a9, 1
	bltu	a3, a2, .L563
	movi.n	a9, 0
.L563:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bnone	a10, a9, .L570
	bgez	a3, .L565
	movi.n	a9, 0
	j	.L567
.L568:
	bltu	a2, a3, .L566
	sub	a2, a2, a3
	or	a9, a9, a8
.L566:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L567
.L570:
	movi.n	a9, 0
.L567:
	bnez.n	a8, .L568
	moveqz	a2, a9, a4
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
	mov.n	a6, a2
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC133
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L573
	mov.n	a11, a3
	mov.n	a10, a6
	l32r	a8, .LC134
	callx8	a8
	movi.n	a2, 1
	bgei	a10, 1, .L573
	movi.n	a2, 0
.L573:
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
	movi.n	a8, -1
	bltz	a10, .L577
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC136
	callx8	a8
	movi.n	a8, 1
	bgei	a10, 1, .L577
	movi.n	a8, 0
.L577:
	mov.n	a2, a8
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
	movi.n	a13, 0
	bgez	a3, .L583
	neg	a3, a3
	movi.n	a13, 1
.L583:
	movi.n	a9, 0
	mov.n	a8, a9
	j	.L584
.L587:
	extui	a11, a3, 0, 1
	add.n	a10, a9, a2
	movnez	a9, a10, a11
	add.n	a2, a2, a2
	srai	a3, a3, 1
	addi.n	a8, a8, 1
	extui	a8, a8, 0, 8
.L584:
	movi.n	a11, 1
	moveqz	a11, a3, a3
	movi.n	a10, 1
	movi.n	a12, 0x1f
	bgeu	a12, a8, .L586
	movi.n	a10, 0
.L586:
	bany	a11, a10, .L587
	neg	a2, a9
	moveqz	a2, a9, a13
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
	movi.n	a3, 0
	bgez	a2, .L592
	neg	a10, a2
	movi.n	a3, 1
.L592:
	bgez	a11, .L593
	neg	a11, a11
	nsau	a3, a3
	srli	a3, a3, 5
	extui	a3, a3, 0, 8
.L593:
	movi.n	a12, 0
	l32r	a8, .LC139
	callx8	a8
	neg	a2, a10
	moveqz	a2, a10, a3
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
	movi.n	a2, 0
	bgez	a10, .L597
	neg	a10, a10
	movi.n	a2, 1
.L597:
	movi.n	a12, 1
	abs	a11, a3
	l32r	a8, .LC140
	callx8	a8
	neg	a8, a10
	movnez	a10, a8, a2
	mov.n	a2, a10
	retw.n
	.size	__modsi3, .-__modsi3
	.align	4
	.global	__udivmodhi4
	.type	__udivmodhi4, @function
__udivmodhi4:
	entry	sp, 32
	mov.n	a7, sp
	extui	a9, a2, 0, 16
	extui	a3, a3, 0, 16
	movi.n	a8, 1
	j	.L602
.L605:
	add.n	a3, a3, a3
	extui	a3, a3, 0, 16
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
.L602:
	movi.n	a10, 1
	bltu	a3, a9, .L603
	movi.n	a10, 0
.L603:
	movi.n	a11, 1
	moveqz	a11, a8, a8
	bnone	a11, a10, .L610
	sext	a10, a3, 15
	bgez	a10, .L605
	movi.n	a2, 0
	j	.L607
.L608:
	bltu	a9, a3, .L606
	sub	a9, a9, a3
	extui	a9, a9, 0, 16
	or	a2, a2, a8
.L606:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L607
.L610:
	movi.n	a2, 0
.L607:
	bnez.n	a8, .L608
	movnez	a2, a9, a4
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	mov.n	a7, sp
	movi.n	a8, 1
	j	.L613
.L616:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
.L613:
	movi.n	a9, 1
	bltu	a3, a2, .L614
	movi.n	a9, 0
.L614:
	movi.n	a10, 1
	moveqz	a10, a8, a8
	bnone	a10, a9, .L621
	bgez	a3, .L616
	movi.n	a9, 0
	j	.L618
.L619:
	bltu	a2, a3, .L617
	sub	a2, a2, a3
	or	a9, a9, a8
.L617:
	srli	a8, a8, 1
	srli	a3, a3, 1
	j	.L618
.L621:
	movi.n	a9, 0
.L618:
	bnez.n	a8, .L619
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a10, a2
	mov.n	a11, a3
	bbci	a4, 26, .L624
	movi.n	a3, 0
	ssl	a4
	sll	a2, a11
	j	.L626
.L624:
	beqz.n	a4, .L626
	ssl	a4
	sll	a3, a11
	ssl	a4
	sll	a8, a10
	addi	a4, a4, -32
	neg	a4, a4
	ssr	a4
	srl	a4, a11
	or	a2, a4, a8
.L626:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	mov.n	a9, a3
	bbci	a4, 26, .L629
	srai	a2, a8, 31
	ssr	a4
	sra	a3, a8
	j	.L631
.L629:
	beqz.n	a4, .L631
	ssr	a4
	sra	a2, a8
	addi	a10, a4, -32
	neg	a10, a10
	ssl	a10
	sll	a10, a8
	ssr	a4
	srl	a4, a9
	or	a3, a10, a4
.L631:
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
	s32i	a4, a7, 8
	l32r	a10, .LC141
	and	a8, a9, a10
	s32i	a8, a7, 12
	slli	a15, a2, 8
	extui	a9, a3, 24, 8
	or	a9, a15, a9
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
	or	a10, a10, a15
	s32i	a10, a7, 0
	slli	a10, a3, 8
	s32i	a10, a7, 4
	l32i	a10, a7, 0
	extui	a10, a10, 0, 8
	s32i	a10, a7, 24
	srli	a12, a3, 8
	or	a10, a12, a14
	slli	a11, a3, 24
	l32r	a13, .LC141
	and	a14, a10, a13
	l32i	a2, a7, 4
	and	a12, a2, a6
	mov.n	a3, a5
	l32i	a4, a7, 8
	l32i	a5, a7, 12
	or	a10, a11, a4
	or	a11, a3, a5
	l32i	a4, a7, 16
	l32i	a5, a7, 20
	or	a2, a10, a4
	or	a3, a11, a5
	or	a10, a2, a8
	or	a11, a3, a9
	l32i	a6, a7, 24
	or	a8, a10, a6
	or	a10, a8, a14
	or	a2, a10, a12
	mov.n	a3, a11
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
	movi.n	a10, 0
	bltu	a8, a2, .L636
	movi.n	a10, 0x10
.L636:
	addi	a8, a10, -16
	neg	a8, a8
	ssr	a8
	srl	a2, a2
	extui	a8, a2, 8, 8
	slli	a8, a8, 8
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a8, a8, 3
	addi	a9, a8, -8
	neg	a9, a9
	ssr	a9
	srl	a2, a2
	add.n	a10, a10, a8
	movi	a8, 0xf0
	and	a8, a2, a8
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a8, a8, 2
	addi	a9, a8, -4
	neg	a9, a9
	ssr	a9
	srl	a2, a2
	add.n	a10, a10, a8
	movi.n	a8, 0xc
	and	a8, a2, a8
	nsau	a8, a8
	srli	a8, a8, 5
	add.n	a8, a8, a8
	addi	a9, a8, -2
	neg	a9, a9
	ssr	a9
	srl	a2, a2
	add.n	a10, a10, a8
	movi.n	a9, 2
	and	a9, a2, a9
	nsau	a9, a9
	srli	a9, a9, 5
	addi	a8, a2, -2
	neg	a8, a8
	mull	a9, a9, a8
	add.n	a2, a10, a9
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
	blt	a8, a4, .L645
	movi.n	a2, 2
	blt	a4, a8, .L645
	movi.n	a2, 0
	bltu	a3, a5, .L645
	movi.n	a2, 2
	bltu	a5, a3, .L645
	movi.n	a2, 1
.L645:
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
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a8, a8, 4
	ssr	a8
	srl	a2, a2
	extui	a9, a2, 0, 8
	nsau	a9, a9
	srli	a9, a9, 5
	slli	a9, a9, 3
	ssr	a9
	srl	a2, a2
	add.n	a9, a8, a9
	extui	a8, a2, 0, 4
	nsau	a8, a8
	srli	a8, a8, 5
	slli	a8, a8, 2
	ssr	a8
	srl	a2, a2
	add.n	a9, a9, a8
	extui	a8, a2, 0, 2
	nsau	a8, a8
	srli	a8, a8, 5
	add.n	a8, a8, a8
	ssr	a8
	srl	a2, a2
	extui	a2, a2, 0, 2
	add.n	a9, a9, a8
	movi.n	a10, -1
	xor	a10, a2, a10
	extui	a10, a10, 0, 1
	srli	a8, a2, 1
	addi	a8, a8, -2
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
	mov.n	a8, a2
	mov.n	a9, a3
	bbci	a4, 26, .L661
	movi.n	a3, 0
	mov.n	a2, a3
	ssr	a4
	srl	a3, a8
	j	.L663
.L661:
	beqz.n	a4, .L663
	ssr	a4
	srl	a2, a8
	addi	a10, a4, -32
	neg	a10, a10
	ssl	a10
	sll	a10, a8
	ssr	a4
	srl	a4, a9
	or	a3, a10, a4
.L663:
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a13, a2
	mov.n	a9, a3
	extui	a11, a2, 0, 16
	extui	a12, a3, 0, 16
	mull	a10, a11, a12
	extui	a8, a10, 16, 16
	extui	a10, a10, 0, 16
	extui	a13, a13, 16, 16
	mull	a12, a13, a12
	add.n	a8, a8, a12
	slli	a12, a8, 16
	add.n	a3, a12, a10
	extui	a2, a8, 16, 16
	extui	a8, a3, 16, 16
	extui	a10, a3, 0, 16
	extui	a9, a9, 16, 16
	mull	a11, a11, a9
	add.n	a8, a8, a11
	slli	a11, a8, 16
	add.n	a3, a11, a10
	extui	a8, a8, 16, 16
	add.n	a8, a8, a2
	mull	a9, a13, a9
	add.n	a2, a9, a8
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC149, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a11, a5
	mov.n	a10, a3
	l32r	a8, .LC149
	callx8	a8
	mull	a8, a2, a5
	mull	a4, a4, a3
	add.n	a8, a8, a4
	add.n	a12, a8, a10
	mov.n	a2, a12
	mov.n	a3, a11
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
	bgeu	a9, a11, .L668
	addi.n	a2, a2, -1
.L668:
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
	xor	a2, a8, a2
	srli	a8, a2, 8
	xor	a2, a2, a8
	srli	a8, a2, 4
	xor	a2, a2, a8
	extui	a2, a2, 0, 4
	l32r	a8, .LC151
	ssr	a2
	sra	a2, a8
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
	srli	a9, a3, 1
	or	a9, a10, a9
	srli	a8, a2, 1
	l32r	a12, .LC152
	and	a10, a8, a12
	and	a11, a9, a12
	sub	a8, a2, a10
	bgeu	a3, a11, .L673
	addi.n	a8, a8, -1
.L673:
	sub	a9, a3, a11
	slli	a12, a8, 30
	srli	a11, a9, 2
	or	a11, a12, a11
	srli	a10, a8, 2
	l32r	a14, .LC153
	and	a12, a10, a14
	and	a13, a11, a14
	and	a10, a14, a8
	and	a11, a14, a9
	add.n	a2, a12, a10
	add.n	a3, a13, a11
	bgeu	a3, a11, .L674
	addi.n	a2, a2, 1
.L674:
	slli	a8, a2, 28
	srli	a11, a3, 4
	or	a11, a8, a11
	srli	a10, a2, 4
	add.n	a8, a10, a2
	add.n	a9, a11, a3
	bgeu	a9, a3, .L675
	addi.n	a8, a8, 1
.L675:
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
	sub	a2, a2, a8
	srli	a8, a2, 2
	l32r	a9, .LC156
	and	a8, a8, a9
	and	a2, a2, a9
	add.n	a2, a8, a2
	srli	a8, a2, 4
	add.n	a2, a8, a2
	l32r	a8, .LC157
	and	a2, a2, a8
	extui	a8, a2, 16, 16
	add.n	a2, a2, a8
	srli	a8, a2, 8
	add.n	a2, a8, a2
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
.L680:
	bbci	a6, 31, .L678
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC159
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
.L678:
	extui	a8, a6, 31, 1
	add.n	a8, a8, a6
	srai	a6, a8, 1
	beqz.n	a6, .L679
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC159
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L680
.L679:
	mov.n	a2, a4
	mov.n	a3, a5
	l32i	a8, a7, 0
	beqz.n	a8, .L681
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a10, .LC161
	movi.n	a11, 0
	l32r	a8, .LC160
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L681:
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
	extui	a5, a3, 31, 1
	l32r	a6, .LC165
.L686:
	bbci	a3, 31, .L684
	mov.n	a11, a2
	mov.n	a10, a6
	l32r	a8, .LC163
	callx8	a8
	mov.n	a6, a10
.L684:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L685
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC163
	callx8	a8
	mov.n	a2, a10
	j	.L686
.L685:
	mov.n	a2, a6
	beqz.n	a5, .L687
	mov.n	a11, a6
	l32r	a10, .LC165
	l32r	a8, .LC164
	callx8	a8
	mov.n	a2, a10
.L687:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a7, sp
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L690
	movi.n	a2, 2
	bltu	a4, a8, .L690
	movi.n	a2, 0
	bltu	a3, a5, .L690
	movi.n	a2, 2
	bltu	a5, a3, .L690
	movi.n	a2, 1
.L690:
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
