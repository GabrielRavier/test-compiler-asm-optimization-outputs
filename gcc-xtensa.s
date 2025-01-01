	.file	"mini-libc.c"
	.text
	.align	4
	.global	memmove
	.type	memmove, @function
memmove:
	entry	sp, 32
	mov.n	a8, a3
	bgeu	a3, a2, .L2
	add.n	a8, a3, a4
	add.n	a9, a2, a4
	beqz.n	a4, .L3
	sub	a10, a9, a2
	loop	a10, .L4_LEND
.L4:
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	l8ui	a11, a8, 0
	s8i	a11, a9, 0
	.L4_LEND:
	j	.L3
.L2:
	beq	a2, a3, .L3
	beqz.n	a4, .L3
	mov.n	a9, a2
.L5:
	l8ui	a10, a8, 0
	s8i	a10, a9, 0
	addi.n	a9, a9, 1
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L5
.L3:
	retw.n
	.size	memmove, .-memmove
	.align	4
	.global	memccpy
	.type	memccpy, @function
memccpy:
	entry	sp, 32
	mov.n	a8, a2
	extui	a4, a4, 0, 8
	mov.n	a10, a5
	bnez.n	a5, .L11
	j	.L12
.L13:
	addi.n	a5, a5, -1
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L11
	j	.L12
.L11:
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	bne	a9, a4, .L13
.L12:
	mov.n	a2, a5
	addi.n	a8, a8, 1
	movnez	a2, a8, a5
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	mov.n	a8, a4
	bnez.n	a4, .L20
	j	.L21
.L22:
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	addi.n	a8, a8, -1
	bnez.n	a8, .L20
	j	.L21
.L20:
	l8ui	a9, a2, 0
	bne	a9, a3, .L22
.L21:
	moveqz	a2, a4, a4
	retw.n
	.size	memchr, .-memchr
	.align	4
	.global	memcmp
	.type	memcmp, @function
memcmp:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a4
	bnez.n	a4, .L30
	j	.L31
.L32:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
	addi.n	a9, a9, -1
	bnez.n	a9, .L30
	j	.L31
.L30:
	l8ui	a11, a8, 0
	l8ui	a10, a3, 0
	beq	a11, a10, .L32
.L31:
	mov.n	a2, a4
	beqz.n	a4, .L29
	l8ui	a2, a8, 0
	l8ui	a8, a3, 0
	sub	a2, a2, a8
.L29:
	retw.n
	.size	memcmp, .-memcmp
	.literal_position
	.literal .LC0, memcpy@PLT
	.align	4
	.global	memcpy
	.type	memcpy, @function
memcpy:
	entry	sp, 32
	mov.n	a11, a3
	mov.n	a12, a4
	beqz.n	a4, .L39
	mov.n	a10, a2
	l32r	a8, .LC0
	callx8	a8
.L39:
	retw.n
	.size	memcpy, .-memcpy
	.align	4
	.global	memrchr
	.type	memrchr, @function
memrchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	addi.n	a4, a4, -1
	add.n	a8, a2, a4
	addi.n	a10, a2, -1
	j	.L41
.L43:
	mov.n	a2, a8
	addi.n	a8, a8, -1
	l8ui	a9, a2, 0
	beq	a9, a3, .L40
.L41:
	bne	a8, a10, .L43
	movi.n	a2, 0
.L40:
	retw.n
	.size	memrchr, .-memrchr
	.align	4
	.global	memset
	.type	memset, @function
memset:
	entry	sp, 32
	beqz.n	a4, .L45
	mov.n	a8, a2
.L46:
	s8i	a3, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L46
.L45:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L50
.L51:
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	bnez.n	a8, .L51
.L50:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	extui	a3, a3, 0, 8
	l8ui	a8, a2, 0
	bnez.n	a8, .L54
	j	.L53
.L56:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	beqz.n	a8, .L53
.L54:
	bne	a8, a3, .L56
.L53:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L61:
	l8ui	a8, a2, 0
	beq	a8, a3, .L60
	addi.n	a2, a2, 1
	bnez.n	a8, .L61
	mov.n	a2, a8
.L60:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	beqz.n	a8, .L64
.L68:
	bne	a8, a9, .L64
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	beqz.n	a8, .L64
	j	.L68
.L64:
	sub	a2, a8, a9
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L72
	mov.n	a8, a2
.L71:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	bnez.n	a9, .L71
	j	.L70
.L72:
	mov.n	a8, a2
.L70:
	sub	a2, a8, a2
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a11, a2
	mov.n	a2, a4
	beqz.n	a4, .L74
	l8ui	a10, a11, 0
	beqz.n	a10, .L81
	addi.n	a4, a4, -1
	mov.n	a9, a3
	movi.n	a13, 1
	movi.n	a12, 0
	add.n	a2, a3, a4
	j	.L77
.L78:
	addi.n	a11, a11, 1
	addi.n	a9, a9, 1
	l8ui	a10, a11, 0
	beqz.n	a10, .L76
.L77:
	l8ui	a8, a9, 0
	mov.n	a15, a12
	movnez	a15, a13, a8
	sub	a8, a8, a10
	mov.n	a14, a12
	moveqz	a14, a13, a8
	bnone	a15, a14, .L76
	bne	a9, a2, .L78
	j	.L76
.L81:
	mov.n	a9, a3
.L76:
	l8ui	a8, a9, 0
	sub	a2, a10, a8
.L74:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L82
	movi.n	a8, -2
	and	a8, a4, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L84_LEND
.L84:
	l8ui	a9, a2, 1
	s8i	a9, a3, 0
	l8ui	a9, a2, 0
	s8i	a9, a3, 1
	addi.n	a3, a3, 2
	addi.n	a2, a2, 2
	.L84_LEND:
.L82:
	retw.n
	.size	swab, .-swab
	.align	4
	.global	isalpha
	.type	isalpha, @function
isalpha:
	entry	sp, 32
	movi.n	a8, 0x20
	or	a8, a2, a8
	addi	a8, a8, -97
	movi.n	a2, 1
	movi.n	a9, 0x19
	bgeu	a9, a8, .L88
	movi.n	a2, 0
.L88:
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi.n	a8, 1
	movi	a9, 0x7f
	bgeu	a9, a2, .L90
	movi.n	a8, 0
.L90:
	mov.n	a2, a8
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 32
	addi	a8, a2, -32
	movi.n	a9, 1
	movi.n	a10, 0
	mov.n	a11, a10
	moveqz	a11, a9, a8
	addi	a8, a2, -9
	movnez	a9, a10, a8
	or	a2, a11, a9
	retw.n
	.size	isblank, .-isblank
	.align	4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a9, 0x1f
	bgeu	a9, a2, .L93
	movi.n	a8, 0
.L93:
	addi	a2, a2, -127
	nsau	a2, a2
	srli	a2, a2, 5
	or	a2, a2, a8
	extui	a2, a2, 0, 1
	retw.n
	.size	iscntrl, .-iscntrl
	.align	4
	.global	isdigit
	.type	isdigit, @function
isdigit:
	entry	sp, 32
	addi	a8, a2, -48
	movi.n	a2, 1
	movi.n	a9, 9
	bgeu	a9, a8, .L95
	movi.n	a2, 0
.L95:
	retw.n
	.size	isdigit, .-isdigit
	.align	4
	.global	isgraph
	.type	isgraph, @function
isgraph:
	entry	sp, 32
	addi	a8, a2, -33
	movi.n	a2, 1
	movi.n	a9, 0x5d
	bgeu	a9, a8, .L97
	movi.n	a2, 0
.L97:
	retw.n
	.size	isgraph, .-isgraph
	.align	4
	.global	islower
	.type	islower, @function
islower:
	entry	sp, 32
	addi	a8, a2, -97
	movi.n	a2, 1
	movi.n	a9, 0x19
	bgeu	a9, a8, .L99
	movi.n	a2, 0
.L99:
	retw.n
	.size	islower, .-islower
	.align	4
	.global	isprint
	.type	isprint, @function
isprint:
	entry	sp, 32
	addi	a8, a2, -32
	movi.n	a2, 1
	movi.n	a9, 0x5e
	bgeu	a9, a8, .L101
	movi.n	a2, 0
.L101:
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a9, a2, -9
	movi.n	a8, 1
	bltui	a9, 5, .L103
	movi.n	a8, 0
.L103:
	addi	a2, a2, -32
	nsau	a2, a2
	srli	a2, a2, 5
	or	a2, a2, a8
	extui	a2, a2, 0, 1
	retw.n
	.size	isspace, .-isspace
	.align	4
	.global	isupper
	.type	isupper, @function
isupper:
	entry	sp, 32
	addi	a8, a2, -65
	movi.n	a2, 1
	movi.n	a9, 0x19
	bgeu	a9, a8, .L105
	movi.n	a2, 0
.L105:
	retw.n
	.size	isupper, .-isupper
	.literal_position
	.literal .LC1, -8232
	.literal .LC2, -65529
	.align	4
	.global	iswcntrl
	.type	iswcntrl, @function
iswcntrl:
	entry	sp, 32
	mov.n	a8, a2
	addi	a9, a2, -127
	movi.n	a10, 1
	movi.n	a11, 0x20
	bgeu	a11, a9, .L108
	movi.n	a10, 0
.L108:
	extui	a9, a10, 0, 8
	bnez.n	a9, .L111
	movi.n	a9, 1
	movi.n	a11, 0x1f
	bgeu	a11, a8, .L109
	mov.n	a9, a10
.L109:
	extui	a9, a9, 0, 8
	bnez.n	a9, .L111
	l32r	a10, .LC1
	add.n	a10, a8, a10
	movi.n	a2, 1
	bltui	a10, 2, .L106
	l32r	a10, .LC2
	add.n	a8, a8, a10
	bltui	a8, 3, .L106
	mov.n	a2, a9
	j	.L106
.L111:
	movi.n	a2, 1
.L106:
	retw.n
	.size	iswcntrl, .-iswcntrl
	.align	4
	.global	iswdigit
	.type	iswdigit, @function
iswdigit:
	entry	sp, 32
	addi	a8, a2, -48
	movi.n	a2, 1
	movi.n	a9, 9
	bgeu	a9, a8, .L114
	movi.n	a2, 0
.L114:
	retw.n
	.size	iswdigit, .-iswdigit
	.literal_position
	.literal .LC3, -8234
	.literal .LC4, 47061
	.literal .LC5, 8231
	.literal .LC6, -57344
	.literal .LC7, 8184
	.literal .LC8, -65532
	.literal .LC9, 1048579
	.literal .LC10, 65534
	.align	4
	.global	iswprint
	.type	iswprint, @function
iswprint:
	entry	sp, 32
	mov.n	a8, a2
	movi	a9, 0xfe
	bltu	a9, a2, .L116
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a2, 1
	movi.n	a9, 0x20
	bltu	a9, a8, .L115
	movi.n	a2, 0
	j	.L115
.L116:
	l32r	a9, .LC3
	add.n	a9, a2, a9
	movi.n	a10, 1
	l32r	a11, .LC4
	bgeu	a11, a9, .L119
	movi.n	a10, 0
.L119:
	extui	a9, a10, 0, 8
	bnez.n	a9, .L121
	movi.n	a9, 1
	l32r	a11, .LC5
	bgeu	a11, a8, .L120
	mov.n	a9, a10
.L120:
	extui	a9, a9, 0, 8
	bnez.n	a9, .L121
	l32r	a10, .LC6
	add.n	a10, a8, a10
	l32r	a11, .LC7
	movi.n	a2, 1
	bgeu	a11, a10, .L115
	l32r	a10, .LC8
	add.n	a10, a8, a10
	l32r	a11, .LC9
	mov.n	a2, a9
	bltu	a11, a10, .L115
	l32r	a10, .LC10
	and	a8, a8, a10
	xor	a8, a8, a10
	movi.n	a2, 1
	moveqz	a2, a9, a8
	j	.L115
.L121:
	movi.n	a2, 1
.L115:
	retw.n
	.size	iswprint, .-iswprint
	.align	4
	.global	iswxdigit
	.type	iswxdigit, @function
iswxdigit:
	entry	sp, 32
	mov.n	a8, a2
	addi	a9, a2, -48
	movi.n	a10, 9
	movi.n	a2, 1
	bgeu	a10, a9, .L124
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L124
	movi.n	a2, 0
.L124:
	retw.n
	.size	iswxdigit, .-iswxdigit
	.align	4
	.global	toascii
	.type	toascii, @function
toascii:
	entry	sp, 32
	extui	a2, a2, 0, 7
	retw.n
	.size	toascii, .-toascii
	.literal_position
	.literal .LC12, __unorddf2@PLT
	.literal .LC13, __gtdf2@PLT
	.literal .LC14, __subdf3@PLT
	.align	4
	.global	fdim
	.type	fdim, @function
fdim:
	entry	sp, 32
	l32r	a7, .LC12
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bnez.n	a10, .L129
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L133
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC13
	callx8	a8
	blti	a10, 1, .L136
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC14
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L129
.L133:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L129
.L136:
	movi.n	a2, 0
	movi.n	a3, 0
.L129:
	retw.n
	.size	fdim, .-fdim
	.literal_position
	.literal .LC16, __unordsf2@PLT
	.literal .LC17, __gtsf2@PLT
	.literal .LC18, __subsf3@PLT
	.align	4
	.global	fdimf
	.type	fdimf, @function
fdimf:
	entry	sp, 32
	l32r	a7, .LC16
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a7
	bnez.n	a10, .L137
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L141
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC17
	callx8	a8
	blti	a10, 1, .L144
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC18
	callx8	a8
	mov.n	a2, a10
	j	.L137
.L141:
	mov.n	a2, a3
	j	.L137
.L144:
	movi.n	a2, 0
.L137:
	retw.n
	.size	fdimf, .-fdimf
	.literal_position
	.literal .LC19, __unorddf2@PLT
	.literal .LC20, -2147483648
	.literal .LC21, __ltdf2@PLT
	.align	4
	.global	fmax
	.type	fmax, @function
fmax:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a3, .LC19
	mov.n	a12, a2
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a3
	bnez.n	a10, .L151
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	mov.n	a3, a10
	bnez.n	a10, .L152
	l32r	a8, .LC20
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L147
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a9, .L145
	j	.L152
.L147:
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC21
	callx8	a8
	bltz	a10, .L150
	mov.n	a2, a3
.L150:
	extui	a8, a2, 0, 8
	mov.n	a2, a6
	mov.n	a3, a7
	beqz.n	a8, .L145
.L151:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L145
.L152:
	mov.n	a2, a6
	mov.n	a3, a7
.L145:
	retw.n
	.size	fmax, .-fmax
	.literal_position
	.literal .LC22, __unordsf2@PLT
	.literal .LC23, -2147483648
	.literal .LC24, __ltsf2@PLT
	.align	4
	.global	fmaxf
	.type	fmaxf, @function
fmaxf:
	entry	sp, 32
	l32r	a7, .LC22
	mov.n	a11, a2
	mov.n	a10, a2
	callx8	a7
	bnez.n	a10, .L160
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	mov.n	a7, a10
	bnez.n	a10, .L154
	l32r	a8, .LC23
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L156
	movnez	a2, a3, a9
	j	.L154
.L156:
	movi.n	a6, 1
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC24
	callx8	a8
	bltz	a10, .L159
	mov.n	a6, a7
.L159:
	extui	a6, a6, 0, 8
	movnez	a2, a3, a6
	j	.L154
.L160:
	mov.n	a2, a3
.L154:
	retw.n
	.size	fmaxf, .-fmaxf
	.literal_position
	.literal .LC25, __unorddf2@PLT
	.literal .LC26, -2147483648
	.literal .LC27, __ltdf2@PLT
	.align	4
	.global	fmaxl
	.type	fmaxl, @function
fmaxl:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a3, .LC25
	mov.n	a12, a2
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a3
	bnez.n	a10, .L169
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	mov.n	a3, a10
	bnez.n	a10, .L170
	l32r	a8, .LC26
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L165
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a9, .L163
	j	.L170
.L165:
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a7
	l32r	a8, .LC27
	callx8	a8
	bltz	a10, .L168
	mov.n	a2, a3
.L168:
	extui	a8, a2, 0, 8
	mov.n	a2, a6
	mov.n	a3, a7
	beqz.n	a8, .L163
.L169:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L163
.L170:
	mov.n	a2, a6
	mov.n	a3, a7
.L163:
	retw.n
	.size	fmaxl, .-fmaxl
	.literal_position
	.literal .LC28, __unorddf2@PLT
	.literal .LC29, -2147483648
	.literal .LC30, __ltdf2@PLT
	.align	4
	.global	fmin
	.type	fmin, @function
fmin:
	entry	sp, 32
	l32r	a7, .LC28
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bnez.n	a10, .L178
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	mov.n	a7, a10
	bnez.n	a10, .L172
	l32r	a8, .LC29
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L174
	bnez.n	a9, .L172
	j	.L178
.L174:
	movi.n	a6, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC30
	callx8	a8
	bltz	a10, .L177
	mov.n	a6, a7
.L177:
	extui	a10, a6, 0, 8
	beqz.n	a10, .L178
	mov.n	a4, a2
	mov.n	a5, a3
.L178:
	mov.n	a2, a4
	mov.n	a3, a5
.L172:
	retw.n
	.size	fmin, .-fmin
	.literal_position
	.literal .LC31, __unordsf2@PLT
	.literal .LC32, -2147483648
	.literal .LC33, __ltsf2@PLT
	.align	4
	.global	fminf
	.type	fminf, @function
fminf:
	entry	sp, 32
	mov.n	a7, a2
	l32r	a2, .LC31
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a2
	bnez.n	a10, .L187
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a2
	mov.n	a2, a10
	bnez.n	a10, .L188
	l32r	a8, .LC32
	and	a9, a8, a7
	and	a8, a8, a3
	beq	a9, a8, .L183
	movnez	a3, a7, a9
	mov.n	a2, a3
	j	.L181
.L183:
	movi.n	a6, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC33
	callx8	a8
	bltz	a10, .L186
	mov.n	a6, a2
.L186:
	extui	a6, a6, 0, 8
	moveqz	a7, a3, a6
	mov.n	a2, a7
	j	.L181
.L187:
	mov.n	a2, a3
	j	.L181
.L188:
	mov.n	a2, a7
.L181:
	retw.n
	.size	fminf, .-fminf
	.literal_position
	.literal .LC34, __unorddf2@PLT
	.literal .LC35, -2147483648
	.literal .LC36, __ltdf2@PLT
	.align	4
	.global	fminl
	.type	fminl, @function
fminl:
	entry	sp, 32
	l32r	a7, .LC34
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a7
	bnez.n	a10, .L196
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	mov.n	a7, a10
	bnez.n	a10, .L190
	l32r	a8, .LC35
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L192
	bnez.n	a9, .L190
	j	.L196
.L192:
	movi.n	a6, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC36
	callx8	a8
	bltz	a10, .L195
	mov.n	a6, a7
.L195:
	extui	a10, a6, 0, 8
	beqz.n	a10, .L196
	mov.n	a4, a2
	mov.n	a5, a3
.L196:
	mov.n	a2, a4
	mov.n	a3, a5
.L190:
	retw.n
	.size	fminl, .-fminl
	.literal_position
	.literal .LC37, s.0
	.literal .LC38, digits
	.align	4
	.global	l64a
	.type	l64a, @function
l64a:
	entry	sp, 32
	l32r	a9, .LC37
	beqz.n	a2, .L200
	l32r	a10, .LC38
.L201:
	extui	a8, a2, 0, 6
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	srli	a2, a2, 6
	bnez.n	a2, .L201
.L200:
	movi.n	a8, 0
	s8i	a8, a9, 0
	l32r	a2, .LC37
	retw.n
	.size	l64a, .-l64a
	.literal_position
	.literal .LC39, seed
	.align	4
	.global	srand
	.type	srand, @function
srand:
	entry	sp, 32
	l32r	a8, .LC39
	addi.n	a2, a2, -1
	s32i	a2, a8, 4
	movi.n	a9, 0
	s32i	a9, a8, 0
	retw.n
	.size	srand, .-srand
	.literal_position
	.literal .LC40, seed
	.literal .LC41, 1284865837
	.literal .LC42, 1481765933
	.literal .LC43, __umulsidi3@PLT
	.align	4
	.global	rand
	.type	rand, @function
rand:
	entry	sp, 32
	l32r	a8, .LC40
	l32i	a2, a8, 0
	l32r	a11, .LC41
	mull	a2, a2, a11
	l32i	a10, a8, 4
	l32r	a8, .LC42
	mull	a8, a10, a8
	add.n	a2, a2, a8
	l32r	a8, .LC43
	callx8	a8
	add.n	a2, a2, a10
	addi.n	a11, a11, 1
	nsau	a8, a11
	srli	a8, a8, 5
	add.n	a2, a2, a8
	l32r	a8, .LC40
	s32i	a2, a8, 0
	s32i	a11, a8, 4
	srli	a2, a2, 1
	retw.n
	.size	rand, .-rand
	.align	4
	.global	insque
	.type	insque, @function
insque:
	entry	sp, 32
	bnez.n	a3, .L208
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	j	.L207
.L208:
	l32i	a8, a3, 0
	s32i	a8, a2, 0
	s32i	a3, a2, 4
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L207
	s32i	a2, a8, 4
.L207:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L211
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L211:
	l32i	a8, a2, 4
	beqz.n	a8, .L210
	l32i	a9, a2, 0
	s32i	a9, a8, 0
.L210:
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC44, memcpy@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	l32i	a7, a4, 0
	beqz.n	a7, .L214
	movi.n	a4, 0
.L216:
	s32i	a3, sp, 0
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a6
	beqz.n	a10, .L213
	addi.n	a4, a4, 1
	add.n	a3, a3, a5
	bne	a7, a4, .L216
.L214:
	addi.n	a8, a7, 1
	l32i	a9, sp, 8
	s32i	a8, a9, 0
	mull	a10, a5, a7
	mov.n	a12, a5
	mov.n	a11, a2
	l32i	a8, sp, 4
	add.n	a10, a8, a10
	l32r	a8, .LC44
	callx8	a8
	s32i	a10, sp, 0
.L213:
	l32i	a2, sp, 0
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 48
	mov.n	a7, a2
	l32i	a4, a4, 0
	beqz.n	a4, .L219
	movi.n	a2, 0
.L221:
	s32i	a3, sp, 0
	mov.n	a11, a3
	mov.n	a10, a7
	callx8	a6
	beqz.n	a10, .L218
	addi.n	a2, a2, 1
	add.n	a3, a3, a5
	bne	a4, a2, .L221
.L219:
	movi.n	a8, 0
	s32i	a8, sp, 0
.L218:
	l32i	a2, sp, 0
	retw.n
	.size	lfind, .-lfind
	.align	4
	.global	abs
	.type	abs, @function
abs:
	entry	sp, 32
	abs	a2, a2
	retw.n
	.size	abs, .-abs
	.literal_position
	.literal .LC45, isspace@PLT
	.align	4
	.global	atoi
	.type	atoi, @function
atoi:
	entry	sp, 32
	l32r	a6, .LC45
	j	.L225
.L226:
	addi.n	a2, a2, 1
.L225:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L226
	movi.n	a8, 0x2b
	beq	a7, a8, .L232
	movi.n	a8, 0x2d
	mov.n	a12, a10
	bne	a7, a8, .L228
	movi.n	a12, 1
	j	.L227
.L232:
	mov.n	a12, a10
.L227:
	addi.n	a2, a2, 1
	j	.L228
.L229:
	addx4	a10, a10, a10
	addi.n	a2, a2, 1
	addi	a8, a8, -48
	subx2	a10, a10, a8
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	bgeu	a11, a9, .L229
	j	.L230
.L228:
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	movi.n	a13, 9
	mov.n	a11, a13
	bgeu	a13, a9, .L229
.L230:
	neg	a2, a10
	movnez	a2, a10, a12
	retw.n
	.size	atoi, .-atoi
	.literal_position
	.literal .LC46, isspace@PLT
	.align	4
	.global	atol
	.type	atol, @function
atol:
	entry	sp, 32
	l32r	a6, .LC46
	j	.L237
.L238:
	addi.n	a2, a2, 1
.L237:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L238
	movi.n	a8, 0x2b
	beq	a7, a8, .L244
	movi.n	a8, 0x2d
	mov.n	a12, a10
	bne	a7, a8, .L240
	movi.n	a12, 1
	j	.L239
.L244:
	mov.n	a12, a10
.L239:
	addi.n	a2, a2, 1
	j	.L240
.L241:
	addx4	a10, a10, a10
	addi.n	a2, a2, 1
	addi	a8, a8, -48
	subx2	a10, a10, a8
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	bgeu	a11, a9, .L241
	j	.L242
.L240:
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	movi.n	a13, 9
	mov.n	a11, a13
	bgeu	a13, a9, .L241
.L242:
	neg	a2, a10
	movnez	a2, a10, a12
	retw.n
	.size	atol, .-atol
	.literal_position
	.literal .LC47, isspace@PLT
	.literal .LC48, __umulsidi3@PLT
	.align	4
	.global	atoll
	.type	atoll, @function
atoll:
	entry	sp, 32
	mov.n	a3, a2
	l32r	a5, .LC47
	j	.L249
.L250:
	addi.n	a3, a3, 1
.L249:
	l8ui	a6, a3, 0
	mov.n	a10, a6
	callx8	a5
	mov.n	a7, a10
	bnez.n	a10, .L250
	movi.n	a8, 0x2b
	beq	a6, a8, .L251
	movi.n	a8, 0x2d
	bne	a6, a8, .L252
	movi.n	a7, 1
.L251:
	addi.n	a3, a3, 1
	j	.L252
.L254:
	mull	a2, a6, a2
	mov.n	a10, a6
	l32r	a8, .LC48
	callx8	a8
	add.n	a2, a2, a10
	addi.n	a3, a3, 1
	addi	a8, a4, -48
	srai	a9, a8, 31
	sub	a2, a2, a9
	bgeu	a11, a8, .L253
	addi.n	a2, a2, -1
.L253:
	sub	a11, a11, a8
	l8ui	a4, a3, 0
	addi	a9, a4, -48
	bgeu	a5, a9, .L254
	j	.L255
.L252:
	l8ui	a4, a3, 0
	addi	a9, a4, -48
	movi.n	a10, 9
	movi.n	a11, 0
	mov.n	a2, a11
	movi.n	a6, 0xa
	mov.n	a5, a10
	bgeu	a10, a9, .L254
.L255:
	bnez.n	a7, .L248
	neg	a2, a2
	movi.n	a8, 1
	moveqz	a8, a11, a11
	sub	a2, a2, a8
	sub	a11, a7, a11
.L248:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L269:
	beqz.n	a4, .L263
	srli	a7, a4, 1
	mull	a2, a7, a5
	add.n	a2, a3, a2
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	bltz	a10, .L267
	blti	a10, 1, .L262
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
	sub	a4, a4, a7
	j	.L269
.L267:
	mov.n	a4, a7
	j	.L269
.L263:
	movi.n	a2, 0
.L262:
	retw.n
	.size	bsearch, .-bsearch
	.align	4
	.global	bsearch_r
	.type	bsearch_r, @function
bsearch_r:
	entry	sp, 48
	s32i	a7, sp, 0
	mov.n	a7, a4
	mov.n	a4, a6
	beqz.n	a7, .L271
.L274:
	srai	a6, a7, 1
	mull	a6, a6, a5
	add.n	a6, a3, a6
	l32i	a12, sp, 0
	mov.n	a11, a6
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L270
	blti	a10, 1, .L273
	add.n	a3, a6, a5
	addi.n	a7, a7, -1
.L273:
	srai	a7, a7, 1
	bnez.n	a7, .L274
.L271:
	movi.n	a6, 0
.L270:
	mov.n	a2, a6
	retw.n
	.size	bsearch_r, .-bsearch_r
	.align	4
	.global	div
	.type	div, @function
div:
	entry	sp, 48
	mov.n	a8, a2
	quos	a2, a2, a3
	rems	a3, a8, a3
	retw.n
	.size	div, .-div
	.align	4
	.global	imaxabs
	.type	imaxabs, @function
imaxabs:
	entry	sp, 32
	srai	a8, a2, 31
	xor	a2, a8, a2
	xor	a3, a8, a3
	sub	a2, a2, a8
	bgeu	a3, a8, .L279
	addi.n	a2, a2, -1
.L279:
	sub	a3, a3, a8
	retw.n
	.size	imaxabs, .-imaxabs
	.literal_position
	.literal .LC49, __divdi3@PLT
	.literal .LC50, __moddi3@PLT
	.align	4
	.global	imaxdiv
	.type	imaxdiv, @function
imaxdiv:
	entry	sp, 48
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC49
	callx8	a8
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC50
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
	l32i	a2, sp, 0
	l32i	a3, sp, 4
	retw.n
	.size	imaxdiv, .-imaxdiv
	.align	4
	.global	labs
	.type	labs, @function
labs:
	entry	sp, 32
	abs	a2, a2
	retw.n
	.size	labs, .-labs
	.align	4
	.global	ldiv
	.type	ldiv, @function
ldiv:
	entry	sp, 48
	mov.n	a8, a2
	quos	a2, a2, a3
	rems	a3, a8, a3
	retw.n
	.size	ldiv, .-ldiv
	.align	4
	.global	llabs
	.type	llabs, @function
llabs:
	entry	sp, 32
	srai	a8, a2, 31
	xor	a2, a8, a2
	xor	a3, a8, a3
	sub	a2, a2, a8
	bgeu	a3, a8, .L285
	addi.n	a2, a2, -1
.L285:
	sub	a3, a3, a8
	retw.n
	.size	llabs, .-llabs
	.literal_position
	.literal .LC51, __divdi3@PLT
	.literal .LC52, __moddi3@PLT
	.align	4
	.global	lldiv
	.type	lldiv, @function
lldiv:
	entry	sp, 48
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC51
	callx8	a8
	s32i	a10, sp, 0
	s32i	a11, sp, 4
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC52
	callx8	a8
	mov.n	a4, a10
	mov.n	a5, a11
	l32i	a2, sp, 0
	l32i	a3, sp, 4
	retw.n
	.size	lldiv, .-lldiv
	.align	4
	.global	wcschr
	.type	wcschr, @function
wcschr:
	entry	sp, 32
	l32i	a8, a2, 0
	beq	a3, a8, .L288
.L293:
	beqz.n	a8, .L288
	addi.n	a2, a2, 4
	l32i	a8, a2, 0
	beq	a8, a3, .L288
	j	.L293
.L288:
	moveqz	a2, a8, a8
	retw.n
	.size	wcschr, .-wcschr
	.align	4
	.global	wcscmp
	.type	wcscmp, @function
wcscmp:
	entry	sp, 32
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	movi.n	a10, 1
	movi.n	a11, 0
	mov.n	a12, a11
	movnez	a12, a10, a8
	sub	a13, a8, a9
	movnez	a10, a11, a13
	bnone	a12, a10, .L295
	beqz.n	a9, .L295
	movi.n	a11, 1
	movi.n	a10, 0
.L296:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	mov.n	a13, a10
	movnez	a13, a11, a8
	sub	a14, a8, a9
	mov.n	a12, a10
	moveqz	a12, a11, a14
	bnone	a13, a12, .L295
	bnez.n	a9, .L296
.L295:
	movi.n	a2, -1
	blt	a8, a9, .L294
	movi.n	a2, 1
	blt	a9, a8, .L294
	movi.n	a2, 0
.L294:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L303:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L303
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L308
	mov.n	a8, a2
.L307:
	addi.n	a8, a8, 4
	l32i	a9, a8, 0
	bnez.n	a9, .L307
	j	.L306
.L308:
	mov.n	a8, a2
.L306:
	sub	a2, a8, a2
	srai	a2, a2, 2
	retw.n
	.size	wcslen, .-wcslen
	.align	4
	.global	wcsncmp
	.type	wcsncmp, @function
wcsncmp:
	entry	sp, 32
	mov.n	a9, a2
	movi.n	a13, 1
	movi.n	a12, 0
	mov.n	a11, a4
	bnez.n	a4, .L311
	j	.L312
.L313:
	addi.n	a4, a4, -1
	addi.n	a9, a9, 4
	addi.n	a3, a3, 4
	addi.n	a11, a11, -1
	bnez.n	a11, .L311
	j	.L312
.L311:
	l32i	a8, a9, 0
	l32i	a10, a3, 0
	mov.n	a15, a12
	movnez	a15, a13, a8
	sub	a8, a8, a10
	mov.n	a14, a12
	moveqz	a14, a13, a8
	bnone	a15, a14, .L312
	bnez.n	a10, .L313
.L312:
	mov.n	a2, a4
	beqz.n	a4, .L310
	l32i	a8, a9, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a8, a9, .L310
	movi.n	a2, 1
	blt	a9, a8, .L310
	movi.n	a2, 0
.L310:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L323
	j	.L324
.L325:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L323
	j	.L324
.L323:
	l32i	a9, a2, 0
	bne	a9, a3, .L325
.L324:
	moveqz	a2, a4, a4
	retw.n
	.size	wmemchr, .-wmemchr
	.align	4
	.global	wmemcmp
	.type	wmemcmp, @function
wmemcmp:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a4
	bnez.n	a4, .L333
	j	.L334
.L335:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L333
	j	.L334
.L333:
	l32i	a11, a8, 0
	l32i	a10, a3, 0
	beq	a11, a10, .L335
.L334:
	mov.n	a2, a4
	beqz.n	a4, .L332
	l32i	a8, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a8, a9, .L332
	movi.n	a2, 1
	blt	a9, a8, .L332
	movi.n	a2, 0
.L332:
	retw.n
	.size	wmemcmp, .-wmemcmp
	.literal_position
	.literal .LC53, memcpy@PLT
	.align	4
	.global	wmemcpy
	.type	wmemcpy, @function
wmemcpy:
	entry	sp, 32
	mov.n	a11, a3
	beqz.n	a4, .L344
	slli	a12, a4, 2
	mov.n	a10, a2
	l32r	a8, .LC53
	callx8	a8
.L344:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L346
	mov.n	a10, a2
	mov.n	a8, a3
	addi.n	a9, a4, -1
	sub	a11, a2, a3
	slli	a12, a4, 2
	bltu	a11, a12, .L347
	addi.n	a9, a9, 1
	bnez.n	a4, .L348
	j	.L346
.L347:
	beqz.n	a4, .L346
	addx4	a10, a9, a3
	addx4	a9, a9, a2
	sub	a8, a10, a3
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L349_LEND
.L349:
	l32i	a11, a10, 0
	s32i	a11, a9, 0
	addi	a10, a10, -4
	addi	a9, a9, -4
	.L349_LEND:
	j	.L346
.L348:
	l32i	a11, a8, 0
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	addi.n	a8, a8, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L348
.L346:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L356
	mov.n	a9, a2
	mov.n	a8, a4
	loop	a8, .L357_LEND
.L357:
	s32i	a3, a9, 0
	addi.n	a9, a9, 4
	.L357_LEND:
.L356:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a3
	bgeu	a2, a3, .L361
	add.n	a10, a2, a4
	add.n	a9, a3, a4
	beqz.n	a4, .L360
	sub	a8, a10, a2
	loop	a8, .L363_LEND
.L363:
	addi.n	a10, a10, -1
	addi.n	a9, a9, -1
	l8ui	a11, a10, 0
	s8i	a11, a9, 0
	.L363_LEND:
	j	.L360
.L361:
	beq	a2, a3, .L360
	beqz.n	a4, .L360
.L364:
	l8ui	a10, a8, 0
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L364
.L360:
	retw.n
	.size	bcopy, .-bcopy
	.align	4
	.global	rotl64
	.type	rotl64, @function
rotl64:
	entry	sp, 32
	mov.n	a8, a3
	movi.n	a11, 0x20
	and	a12, a4, a11
	movi.n	a13, 0
	srli	a10, a3, 1
	movi.n	a9, -1
	xor	a9, a4, a9
	ssr	a9
	srl	a10, a10
	ssl	a4
	sll	a9, a2
	or	a9, a10, a9
	ssl	a4
	sll	a3, a3
	movnez	a9, a3, a12
	movnez	a3, a13, a12
	neg	a4, a4
	extui	a10, a4, 0, 6
	and	a4, a4, a11
	add.n	a11, a2, a2
	movi.n	a12, -1
	xor	a12, a10, a12
	ssl	a12
	sll	a11, a11
	ssr	a10
	srl	a8, a8
	or	a8, a11, a8
	ssr	a10
	srl	a2, a2
	movnez	a8, a2, a4
	movnez	a2, a13, a4
	or	a2, a2, a9
	or	a3, a8, a3
	retw.n
	.size	rotl64, .-rotl64
	.align	4
	.global	rotr64
	.type	rotr64, @function
rotr64:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a3
	movi.n	a12, 0x20
	and	a14, a4, a12
	movi.n	a13, 0
	add.n	a10, a2, a2
	movi.n	a11, -1
	xor	a11, a4, a11
	ssl	a11
	sll	a10, a10
	ssr	a4
	srl	a3, a3
	or	a3, a10, a3
	ssr	a4
	srl	a2, a2
	movnez	a3, a2, a14
	movnez	a2, a13, a14
	neg	a4, a4
	extui	a10, a4, 0, 6
	and	a4, a4, a12
	srli	a11, a9, 1
	movi.n	a12, -1
	xor	a12, a10, a12
	ssr	a12
	srl	a11, a11
	ssl	a10
	sll	a8, a8
	or	a8, a11, a8
	ssl	a10
	sll	a9, a9
	movnez	a8, a9, a4
	movnez	a9, a13, a4
	or	a2, a8, a2
	or	a3, a9, a3
	retw.n
	.size	rotr64, .-rotr64
	.align	4
	.global	rotl32
	.type	rotl32, @function
rotl32:
	entry	sp, 32
	ssl	a3
	src	a2, a2, a2
	retw.n
	.size	rotl32, .-rotl32
	.align	4
	.global	rotr32
	.type	rotr32, @function
rotr32:
	entry	sp, 32
	ssr	a3
	src	a2, a2, a2
	retw.n
	.size	rotr32, .-rotr32
	.align	4
	.global	rotl_sz
	.type	rotl_sz, @function
rotl_sz:
	entry	sp, 32
	ssl	a3
	src	a2, a2, a2
	retw.n
	.size	rotl_sz, .-rotl_sz
	.align	4
	.global	rotr_sz
	.type	rotr_sz, @function
rotr_sz:
	entry	sp, 32
	ssr	a3
	src	a2, a2, a2
	retw.n
	.size	rotr_sz, .-rotr_sz
	.align	4
	.global	rotl16
	.type	rotl16, @function
rotl16:
	entry	sp, 32
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 4
	ssl	a3
	sll	a8, a2
	neg	a3, a3
	extui	a3, a3, 0, 4
	ssr	a3
	srl	a2, a2
	or	a2, a8, a2
	extui	a2, a2, 0, 16
	retw.n
	.size	rotl16, .-rotl16
	.align	4
	.global	rotr16
	.type	rotr16, @function
rotr16:
	entry	sp, 32
	extui	a2, a2, 0, 16
	extui	a3, a3, 0, 4
	ssr	a3
	srl	a8, a2
	neg	a3, a3
	extui	a3, a3, 0, 4
	ssl	a3
	sll	a2, a2
	or	a2, a8, a2
	extui	a2, a2, 0, 16
	retw.n
	.size	rotr16, .-rotr16
	.align	4
	.global	rotl8
	.type	rotl8, @function
rotl8:
	entry	sp, 32
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 3
	ssl	a3
	sll	a8, a2
	neg	a3, a3
	extui	a3, a3, 0, 3
	ssr	a3
	srl	a2, a2
	or	a2, a8, a2
	extui	a2, a2, 0, 8
	retw.n
	.size	rotl8, .-rotl8
	.align	4
	.global	rotr8
	.type	rotr8, @function
rotr8:
	entry	sp, 32
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 3
	ssr	a3
	srl	a8, a2
	neg	a3, a3
	extui	a3, a3, 0, 3
	ssl	a3
	sll	a2, a2
	or	a2, a8, a2
	extui	a2, a2, 0, 8
	retw.n
	.size	rotr8, .-rotr8
	.align	4
	.global	bswap_16
	.type	bswap_16, @function
bswap_16:
	entry	sp, 32
	extui	a8, a2, 0, 16
	extui	a2, a2, 8, 8
	slli	a8, a8, 8
	or	a2, a2, a8
	extui	a2, a2, 0, 16
	retw.n
	.size	bswap_16, .-bswap_16
	.align	4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	entry	sp, 32
	slli	a8, a2, 24
	extui	a9, a2, 24, 8
	or	a8, a8, a9
	srli	a9, a2, 8
	extui	a9, a9, 8, 8
	slli	a9, a9, 8
	or	a8, a8, a9
	slli	a2, a2, 8
	extui	a2, a2, 16, 8
	slli	a2, a2, 16
	or	a2, a8, a2
	retw.n
	.size	bswap_32, .-bswap_32
	.literal_position
	.literal .LC56, 65280
	.literal .LC57, 16711680
	.align	4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	entry	sp, 32
	mov.n	a8, a3
	slli	a10, a3, 24
	extui	a9, a2, 24, 8
	srli	a11, a2, 8
	l32r	a12, .LC56
	and	a11, a11, a12
	or	a9, a9, a11
	ssai	24
	src	a11, a2, a3
	l32r	a13, .LC57
	and	a11, a11, a13
	or	a9, a9, a11
	slli	a3, a2, 24
	slli	a11, a8, 8
	extui	a14, a8, 24, 8
	or	a10, a10, a14
	ssai	8
	src	a8, a2, a8
	and	a8, a8, a12
	or	a8, a10, a8
	and	a2, a11, a13
	or	a2, a8, a2
	or	a3, a9, a3
	retw.n
	.size	bswap_64, .-bswap_64
	.align	4
	.global	ffs
	.type	ffs, @function
ffs:
	entry	sp, 32
	movi.n	a8, 0
	movi.n	a10, 0x20
	loop	a10, .L385_LEND
.L385:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L383
	mov.n	a2, a8
	j	.L382
.L383:
	nop.n
	.L385_LEND:
	mov.n	a2, a11
.L382:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	beqz.n	a2, .L388
	extui	a2, a2, 0, 1
	bbsi	a8, 31, .L388
	movi.n	a2, 1
.L390:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L390
.L388:
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
	mov.n	a7, a2
	l32r	a11, .LC64
	mov.n	a10, a2
	l32r	a8, .LC60
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L393
	l32r	a11, .LC63
	mov.n	a10, a7
	l32r	a8, .LC62
	callx8	a8
	bgei	a10, 1, .L393
	movi.n	a2, 0
.L393:
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
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC70
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC66
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L397
	l32r	a12, .LC69
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC68
	callx8	a8
	bgei	a10, 1, .L397
	movi.n	a2, 0
.L397:
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
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC76
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC72
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L401
	l32r	a12, .LC75
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC74
	callx8	a8
	bgei	a10, 1, .L401
	movi.n	a2, 0
.L401:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC77, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
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
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC80
	callx8	a8
	bnez.n	a10, .L407
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC81
	callx8	a8
	mov.n	a11, a2
	l32r	a8, .LC82
	callx8	a8
	beqz.n	a10, .L407
	l32r	a7, .LC84
	l32r	a8, .LC85
	movgez	a7, a8, a3
	l32r	a5, .LC83
	mov.n	a6, a5
.L411:
	bbci	a3, 31, .L410
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L410:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L407
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	mov.n	a7, a10
	j	.L411
.L407:
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
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC88
	callx8	a9
	bnez.n	a10, .L415
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC89
	callx8	a9
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a9, .LC90
	callx8	a9
	beqz.n	a10, .L415
	l32r	a6, .LC93
	movi.n	a7, 0
	bgez	a4, .L417
	l32r	a6, .LC92
	movi.n	a7, 0
.L417:
	l32r	a5, .LC91
.L419:
	bbci	a4, 31, .L418
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC91
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L418:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L415
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L419
.L415:
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
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC96
	callx8	a9
	bnez.n	a10, .L423
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC97
	callx8	a9
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a9, .LC98
	callx8	a9
	beqz.n	a10, .L423
	l32r	a6, .LC101
	movi.n	a7, 0
	bgez	a4, .L425
	l32r	a6, .LC100
	movi.n	a7, 0
.L425:
	l32r	a5, .LC99
.L427:
	bbci	a4, 31, .L426
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC99
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L426:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L423
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L427
.L423:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L431
	mov.n	a8, a2
.L432:
	l8ui	a9, a8, 0
	l8ui	a10, a3, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L432
.L431:
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC102, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC102
	callx8	a8
	add.n	a10, a2, a10
	mov.n	a9, a4
	bnez.n	a4, .L436
	j	.L437
.L438:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L436
	j	.L437
.L436:
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	bnez.n	a8, .L438
.L437:
	bnez.n	a4, .L439
	s8i	a4, a10, 0
.L439:
	retw.n
	.size	strncat, .-strncat
	.align	4
	.global	strnlen
	.type	strnlen, @function
strnlen:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	sub	a10, a3, a2
	bnez.n	a3, .L444
	mov.n	a2, a3
	j	.L443
.L446:
	addi.n	a2, a2, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L444
	j	.L443
.L444:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L446
.L443:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L453
	j	.L457
.L455:
	addi.n	a8, a8, 1
	beq	a9, a10, .L454
.L456:
	l8ui	a9, a8, 0
	bnez.n	a9, .L455
	addi.n	a2, a2, 1
	l8ui	a10, a2, 0
	beqz.n	a10, .L457
.L453:
	mov.n	a8, a3
	j	.L456
.L457:
	mov.n	a2, a10
.L454:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L461:
	l8ui	a9, a8, 0
	sub	a10, a9, a3
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L461
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
	entry	sp, 48
	s32i	a2, sp, 0
	mov.n	a10, a3
	l32r	a9, .LC103
	callx8	a9
	mov.n	a7, a10
	mov.n	a8, a2
	beqz.n	a10, .L464
	l8ui	a5, a3, 0
	l32r	a6, .LC105
	l32r	a4, .LC104
	j	.L466
.L467:
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L464
	addi.n	a8, a2, 1
.L466:
	mov.n	a11, a5
	mov.n	a10, a8
	callx8	a6
	mov.n	a2, a10
	bnez.n	a10, .L467
.L464:
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
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC107
	callx8	a8
	bgez	a10, .L470
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC108
	callx8	a8
	bgei	a10, 1, .L472
.L470:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC108
	callx8	a8
	blti	a10, 1, .L473
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC107
	callx8	a8
	bgez	a10, .L473
.L472:
	l32r	a10, .LC109
	xor	a8, a2, a10
	mov.n	a2, a8
.L473:
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC110, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 48
	mov.n	a7, a2
	beqz.n	a5, .L478
	bltu	a3, a5, .L484
	sub	a3, a3, a5
	add.n	a3, a2, a3
	bltu	a3, a2, .L484
	l8ui	a6, a4, 0
	addi.n	a8, a5, -1
	s32i	a8, sp, 0
	addi.n	a5, a4, 1
	l32r	a4, .LC110
.L481:
	l8ui	a8, a7, 0
	mov.n	a2, a7
	addi.n	a7, a7, 1
	bne	a8, a6, .L480
	l32i	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a7
	callx8	a4
	beqz.n	a10, .L478
.L480:
	bgeu	a3, a7, .L481
.L484:
	movi.n	a2, 0
.L478:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC111, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
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
	s32i	a4, sp, 0
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	movi.n	a5, 0
	bgez	a10, .L488
	l32r	a10, .LC114
	xor	a8, a2, a10
	mov.n	a2, a8
	movi.n	a5, 1
	j	.L488
.L488:
	l32r	a12, .LC122
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC116
	callx8	a8
	movi.n	a4, 0
	bltz	a10, .L506
	l32r	a6, .LC118
	l32r	a7, .LC116
.L492:
	addi.n	a4, a4, 1
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC122
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a7
	bgez	a10, .L492
	j	.L493
.L506:
	movi.n	a7, 1
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC119
	callx8	a8
	bnez.n	a10, .L494
	mov.n	a7, a10
.L494:
	extui	a7, a7, 0, 8
	movi.n	a4, 0
	beqz.n	a7, .L493
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC113
	callx8	a8
	bgez	a10, .L493
	l32r	a6, .LC120
	l32r	a7, .LC113
.L496:
	addi.n	a4, a4, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC121
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a7
	bltz	a10, .L496
.L493:
	l32i	a8, sp, 0
	s32i	a4, a8, 0
	beqz.n	a5, .L497
	l32r	a10, .LC114
	xor	a8, a2, a10
	mov.n	a2, a8
.L497:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC123, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	mov.n	a8, a2
	mov.n	a14, a3
	mov.n	a9, a4
	mov.n	a2, a5
	mov.n	a3, a8
	mov.n	a5, a14
	or	a14, a14, a8
	beqz.n	a14, .L512
	movi.n	a4, 0
	mov.n	a6, a4
	l32r	a8, .LC123
	s32i	a8, sp, 4
.L511:
	extui	a10, a5, 0, 1
	mull	a7, a9, a10
	s32i	a9, sp, 0
	mov.n	a11, a2
	l32i	a8, sp, 4
	callx8	a8
	add.n	a7, a7, a10
	add.n	a11, a4, a11
	movi.n	a8, 1
	l32i	a9, sp, 0
	bltu	a11, a4, .L510
	movi.n	a8, 0
.L510:
	add.n	a7, a6, a7
	add.n	a6, a8, a7
	mov.n	a4, a11
	ssai	31
	src	a9, a9, a2
	add.n	a2, a2, a2
	ssai	1
	src	a8, a3, a5
	srli	a3, a3, 1
	mov.n	a5, a8
	or	a8, a3, a8
	bnez.n	a8, .L511
	j	.L507
.L512:
	mov.n	a4, a14
	mov.n	a6, a14
.L507:
	mov.n	a2, a6
	mov.n	a3, a4
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L531
	movi.n	a11, 1
	movi.n	a14, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L515
.L531:
	movi.n	a8, 1
	j	.L516
.L521:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a9, a11
	bltu	a3, a2, .L518
	mov.n	a9, a14
.L518:
	extui	a9, a9, 0, 8
	beqz.n	a9, .L516
	mov.n	a9, a12
	movnez	a9, a13, a8
	bnez.n	a9, .L515
.L516:
	movi.n	a9, 0
	bnez.n	a8, .L519
	mov.n	a9, a8
	j	.L520
.L515:
	bgez	a3, .L521
	j	.L516
.L519:
	bltu	a2, a3, .L522
	sub	a2, a2, a3
	or	a9, a9, a8
.L522:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L519
.L520:
	moveqz	a2, a9, a4
	retw.n
	.size	udivmodsi4, .-udivmodsi4
	.align	4
	.global	__clrsbqi2
	.type	__clrsbqi2, @function
__clrsbqi2:
	entry	sp, 32
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
	srai	a9, a2, 31
	xor	a10, a2, a9
	xor	a8, a3, a9
	bne	a2, a9, .L541
	beq	a3, a2, .L542
.L541:
	nsau	a9, a10
	nsau	a2, a8
	addi	a2, a2, 32
	movnez	a2, a9, a10
	addi.n	a2, a2, -1
	j	.L535
.L542:
	movi.n	a2, 0x3f
.L535:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L546
	movi.n	a2, 0
.L545:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L545
	j	.L543
.L546:
.L543:
	retw.n
	.size	__mulsi3, .-__mulsi3
	.align	4
	.global	__cmovd
	.type	__cmovd, @function
__cmovd:
	entry	sp, 32
	srli	a8, a4, 3
	movi.n	a12, -8
	and	a12, a4, a12
	bltu	a2, a3, .L549
	add.n	a9, a3, a4
	bltu	a9, a2, .L549
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L550
	j	.L548
.L549:
	beqz.n	a8, .L552
	mov.n	a13, a2
	mov.n	a9, a3
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	addi.n	a8, a8, 1
	loop	a8, .L553_LEND
.L553:
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	s32i	a10, a13, 0
	s32i	a11, a13, 4
	addi.n	a9, a9, 8
	addi.n	a13, a13, 8
	.L553_LEND:
.L552:
	bgeu	a12, a4, .L548
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L554:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L554
	j	.L548
.L550:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L550
.L548:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a8, a4, 1
	bltu	a2, a3, .L563
	add.n	a9, a3, a4
	bltu	a9, a2, .L563
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L564
	j	.L562
.L563:
	beqz.n	a8, .L566
	mov.n	a10, a2
	mov.n	a9, a3
	add.n	a8, a8, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L567_LEND
.L567:
	l16ui	a11, a9, 0
	s16i	a11, a10, 0
	addi.n	a9, a9, 2
	addi.n	a10, a10, 2
	.L567_LEND:
.L566:
	bbci	a4, 31, .L562
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a2, a2, a4
	s8i	a8, a2, 0
	j	.L562
.L564:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L564
.L562:
	retw.n
	.size	__cmovh, .-__cmovh
	.align	4
	.global	__cmovw
	.type	__cmovw, @function
__cmovw:
	entry	sp, 32
	srli	a8, a4, 2
	movi.n	a12, -4
	and	a12, a4, a12
	bltu	a2, a3, .L574
	add.n	a9, a3, a4
	bltu	a9, a2, .L574
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L575
	j	.L573
.L574:
	beqz.n	a8, .L577
	mov.n	a10, a2
	mov.n	a9, a3
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L578_LEND
.L578:
	l32i	a11, a9, 0
	s32i	a11, a10, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, 4
	.L578_LEND:
.L577:
	bgeu	a12, a4, .L573
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L579:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L579
	j	.L573
.L575:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L575
.L573:
	retw.n
	.size	__cmovw, .-__cmovw
	.align	4
	.global	__modi
	.type	__modi, @function
__modi:
	entry	sp, 32
	rems	a2, a2, a3
	retw.n
	.size	__modi, .-__modi
	.literal_position
	.literal .LC124, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC124
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC125, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC125
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC126, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC126
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC127, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC127
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__ulltof, .-__ulltof
	.align	4
	.global	__umodi
	.type	__umodi, @function
__umodi:
	entry	sp, 32
	remu	a2, a2, a3
	retw.n
	.size	__umodi, .-__umodi
	.align	4
	.global	__clzhi2
	.type	__clzhi2, @function
__clzhi2:
	entry	sp, 32
	extui	a10, a2, 0, 16
	movi.n	a2, 0
	movi.n	a8, 0x10
	loop	a8, .L595_LEND
.L595:
	addi	a9, a2, 16
	bbs	a10, a9, .L593
	addi.n	a2, a2, 1
	.L595_LEND:
.L593:
	retw.n
	.size	__clzhi2, .-__clzhi2
	.align	4
	.global	__ctzhi2
	.type	__ctzhi2, @function
__ctzhi2:
	entry	sp, 32
	extui	a10, a2, 0, 16
	movi.n	a2, 0
	movi.n	a8, 0x10
	loop	a8, .L600_LEND
.L600:
	ssr	a2
	sra	a9, a10
	bbsi	a9, 31, .L598
	addi.n	a2, a2, 1
	.L600_LEND:
.L598:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC128, 0x47000000
	.literal .LC129, __gesf2@PLT
	.literal .LC130, __subsf3@PLT
	.literal .LC131, __fixsfsi@PLT
	.literal .LC132, 32768
	.literal .LC133, .LC128
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a8, .LC133
	l32i.n	a11, a8, 0
	mov.n	a10, a2
	l32r	a8, .LC129
	callx8	a8
	bltz	a10, .L608
	l32r	a8, .LC133
	l32i.n	a11, a8, 0
	mov.n	a10, a2
	l32r	a8, .LC130
	callx8	a8
	l32r	a8, .LC131
	callx8	a8
	l32r	a8, .LC132
	add.n	a2, a10, a8
	j	.L603
.L608:
	mov.n	a10, a2
	l32r	a8, .LC131
	callx8	a8
	mov.n	a2, a10
.L603:
	retw.n
	.size	__fixunssfsi, .-__fixunssfsi
	.align	4
	.global	__parityhi2
	.type	__parityhi2, @function
__parityhi2:
	entry	sp, 32
	extui	a11, a2, 0, 16
	movi.n	a2, 0
	mov.n	a10, a2
	movi.n	a9, 0x10
	loop	a9, .L610_LEND
.L610:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L610_LEND:
	extui	a2, a2, 0, 1
	retw.n
	.size	__parityhi2, .-__parityhi2
	.align	4
	.global	__popcounthi2
	.type	__popcounthi2, @function
__popcounthi2:
	entry	sp, 32
	extui	a11, a2, 0, 16
	movi.n	a2, 0
	mov.n	a10, a2
	movi.n	a9, 0x10
	loop	a9, .L614_LEND
.L614:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L614_LEND:
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L620
	movi.n	a2, 0
.L619:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L619
	j	.L617
.L620:
.L617:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L622
	beqz.n	a3, .L626
	movi.n	a2, 0
.L624:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	add.n	a2, a2, a8
	add.n	a9, a9, a9
	srli	a3, a3, 1
	bnez.n	a3, .L624
	j	.L622
.L626:
	mov.n	a2, a3
.L622:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L645
	movi.n	a11, 1
	movi.n	a14, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L629
.L645:
	movi.n	a8, 1
	j	.L630
.L635:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a9, a11
	bltu	a3, a2, .L632
	mov.n	a9, a14
.L632:
	extui	a9, a9, 0, 8
	beqz.n	a9, .L630
	mov.n	a9, a12
	movnez	a9, a13, a8
	bnez.n	a9, .L629
.L630:
	movi.n	a9, 0
	bnez.n	a8, .L633
	mov.n	a9, a8
	j	.L634
.L629:
	bgez	a3, .L635
	j	.L630
.L633:
	bltu	a2, a3, .L636
	sub	a2, a2, a3
	or	a9, a9, a8
.L636:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L633
.L634:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC134, __ltsf2@PLT
	.literal .LC135, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	mov.n	a7, a2
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC134
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L646
	movi.n	a2, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC135
	callx8	a8
	bgei	a10, 1, .L646
	movi.n	a2, 0
.L646:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC136, __ltdf2@PLT
	.literal .LC137, __gtdf2@PLT
	.align	4
	.global	__mspabi_cmpd
	.type	__mspabi_cmpd, @function
__mspabi_cmpd:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC136
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L650
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC137
	callx8	a8
	bgei	a10, 1, .L650
	movi.n	a2, 0
.L650:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC138, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	srai	a7, a2, 31
	srai	a8, a3, 31
	mull	a7, a7, a3
	mull	a8, a8, a2
	add.n	a7, a7, a8
	l32r	a8, .LC138
	callx8	a8
	add.n	a2, a7, a10
	mov.n	a3, a11
	retw.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.literal_position
	.literal .LC139, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC139
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
	mov.n	a10, a2
	movi.n	a15, 0
	bgez	a3, .L657
	neg	a3, a3
	movi.n	a15, 1
.L657:
	beqz.n	a3, .L664
	movi.n	a11, 0
	mov.n	a9, a11
	movi.n	a13, 1
	movi.n	a12, 0x1f
	movi.n	a14, 0
.L659:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	add.n	a11, a11, a8
	add.n	a10, a10, a10
	srai	a3, a3, 1
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
	beqz.n	a3, .L658
	mov.n	a8, a13
	bgeu	a12, a9, .L661
	mov.n	a8, a14
.L661:
	extui	a8, a8, 0, 8
	bnez.n	a8, .L659
	j	.L658
.L664:
	mov.n	a11, a3
.L658:
	neg	a2, a11
	moveqz	a2, a11, a15
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC140, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	movi.n	a3, 0
	bgez	a2, .L667
	neg	a10, a2
	movi.n	a3, 1
.L667:
	bgez	a11, .L668
	neg	a11, a11
	movi.n	a8, 1
	xor	a3, a3, a8
.L668:
	movi.n	a12, 0
	l32r	a8, .LC140
	callx8	a8
	neg	a2, a10
	moveqz	a2, a10, a3
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC141, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	mov.n	a10, a2
	movi.n	a2, 0
	bgez	a10, .L672
	neg	a10, a10
	movi.n	a2, 1
.L672:
	movi.n	a12, 1
	abs	a11, a3
	l32r	a8, .LC141
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
	extui	a11, a2, 0, 16
	extui	a8, a3, 0, 16
	movi.n	a9, 1
	bgeu	a8, a11, .L692
	movi.n	a12, 1
	movi.n	a15, 0
	mov.n	a14, a9
	movi.n	a13, 0
	j	.L676
.L692:
	movi.n	a9, 1
	j	.L677
.L682:
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
	add.n	a9, a9, a9
	extui	a9, a9, 0, 16
	mov.n	a10, a12
	bltu	a8, a11, .L679
	mov.n	a10, a15
.L679:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L677
	mov.n	a10, a13
	movnez	a10, a14, a9
	bnez.n	a10, .L676
.L677:
	movi.n	a10, 0
	bnez.n	a9, .L680
	mov.n	a10, a9
	j	.L681
.L676:
	sext	a10, a8, 15
	bgez	a10, .L682
	j	.L677
.L680:
	bltu	a11, a8, .L683
	sub	a11, a11, a8
	extui	a11, a11, 0, 16
	or	a10, a9, a10
	extui	a10, a10, 0, 16
.L683:
	srli	a9, a9, 1
	srli	a8, a8, 1
	bnez.n	a9, .L680
.L681:
	moveqz	a11, a10, a4
	mov.n	a2, a11
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L710
	movi.n	a11, 1
	movi.n	a14, 0
	mov.n	a13, a8
	movi.n	a12, 0
	j	.L694
.L710:
	movi.n	a8, 1
	j	.L695
.L700:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a9, a11
	bltu	a3, a2, .L697
	mov.n	a9, a14
.L697:
	extui	a9, a9, 0, 8
	beqz.n	a9, .L695
	mov.n	a9, a12
	movnez	a9, a13, a8
	bnez.n	a9, .L694
.L695:
	movi.n	a9, 0
	bnez.n	a8, .L698
	mov.n	a9, a8
	j	.L699
.L694:
	bgez	a3, .L700
	j	.L695
.L698:
	bltu	a2, a3, .L701
	sub	a2, a2, a3
	or	a9, a9, a8
.L701:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L698
.L699:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L712
	ssl	a4
	sll	a2, a3
	movi.n	a9, 0
	j	.L713
.L712:
	beqz.n	a4, .L714
	ssl	a4
	sll	a9, a3
	addi	a8, a4, -32
	neg	a8, a8
	ssr	a8
	srl	a8, a3
	ssl	a4
	sll	a2, a2
	or	a2, a8, a2
.L713:
	mov.n	a3, a9
.L714:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L717
	srai	a9, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L718
.L717:
	beqz.n	a4, .L719
	ssr	a4
	sra	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L718:
	mov.n	a2, a9
.L719:
	retw.n
	.size	__ashrdi3, .-__ashrdi3
	.literal_position
	.literal .LC142, 65280
	.literal .LC143, 16711680
	.align	4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	entry	sp, 32
	mov.n	a8, a3
	extui	a9, a2, 24, 8
	slli	a10, a3, 24
	srli	a11, a2, 8
	l32r	a12, .LC142
	and	a11, a11, a12
	or	a9, a9, a11
	ssai	24
	src	a11, a2, a3
	l32r	a13, .LC143
	and	a11, a11, a13
	or	a9, a9, a11
	slli	a3, a2, 24
	slli	a11, a8, 8
	extui	a14, a8, 24, 8
	or	a10, a10, a14
	ssai	8
	src	a8, a2, a8
	and	a8, a8, a12
	or	a8, a10, a8
	and	a2, a11, a13
	or	a2, a8, a2
	or	a3, a9, a3
	retw.n
	.size	__bswapdi2, .-__bswapdi2
	.align	4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	entry	sp, 32
	extui	a8, a2, 24, 8
	slli	a9, a2, 24
	or	a8, a8, a9
	srli	a9, a2, 8
	extui	a9, a9, 8, 8
	slli	a9, a9, 8
	or	a8, a8, a9
	slli	a2, a2, 8
	extui	a2, a2, 16, 8
	slli	a2, a2, 16
	or	a2, a8, a2
	retw.n
	.size	__bswapsi2, .-__bswapsi2
	.literal_position
	.literal .LC147, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	movi.n	a11, 1
	l32r	a8, .LC147
	bgeu	a8, a2, .L724
	movi.n	a11, 0
.L724:
	slli	a11, a11, 4
	addi	a8, a11, -16
	neg	a8, a8
	ssr	a8
	srl	a8, a2
	extui	a13, a8, 8, 8
	slli	a13, a13, 8
	movi.n	a9, 1
	movi.n	a12, 0
	mov.n	a10, a12
	moveqz	a10, a9, a13
	slli	a10, a10, 3
	addi	a13, a10, -8
	neg	a13, a13
	ssr	a13
	srl	a8, a8
	add.n	a11, a10, a11
	movi	a13, 0xf0
	and	a13, a8, a13
	mov.n	a10, a12
	moveqz	a10, a9, a13
	slli	a10, a10, 2
	addi	a13, a10, -4
	neg	a13, a13
	ssr	a13
	srl	a8, a8
	add.n	a10, a10, a11
	movi.n	a11, 0xc
	and	a11, a8, a11
	movnez	a9, a12, a11
	add.n	a9, a9, a9
	addi	a11, a9, -2
	neg	a11, a11
	ssr	a11
	srl	a8, a8
	addi	a2, a8, -2
	neg	a2, a2
	movi.n	a11, 2
	and	a8, a8, a11
	movnez	a2, a12, a8
	add.n	a9, a9, a10
	add.n	a2, a2, a9
	retw.n
	.size	__clzsi2, .-__clzsi2
	.align	4
	.global	__cmpdi2
	.type	__cmpdi2, @function
__cmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	blt	a8, a4, .L725
	movi.n	a2, 2
	blt	a4, a8, .L725
	movi.n	a2, 0
	bltu	a3, a5, .L725
	movi.n	a2, 2
	bltu	a5, a3, .L725
	movi.n	a2, 1
.L725:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC149, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC149
	callx8	a8
	addi.n	a2, a10, -1
	retw.n
	.size	__aeabi_lcmp, .-__aeabi_lcmp
	.align	4
	.global	__ctzsi2
	.type	__ctzsi2, @function
__ctzsi2:
	entry	sp, 32
	extui	a8, a2, 0, 16
	movi.n	a9, 1
	movi.n	a11, 0
	mov.n	a12, a11
	moveqz	a12, a9, a8
	slli	a12, a12, 4
	ssr	a12
	srl	a8, a2
	extui	a13, a8, 0, 8
	mov.n	a10, a11
	moveqz	a10, a9, a13
	ssa8l	a10
	srl	a8, a8
	addx8	a12, a10, a12
	extui	a13, a8, 0, 4
	mov.n	a10, a11
	moveqz	a10, a9, a13
	slli	a10, a10, 2
	ssr	a10
	srl	a8, a8
	add.n	a10, a10, a12
	extui	a12, a8, 0, 2
	movnez	a9, a11, a12
	add.n	a9, a9, a9
	ssr	a9
	srl	a8, a8
	extui	a8, a8, 0, 2
	movi.n	a2, -1
	xor	a2, a8, a2
	extui	a2, a2, 0, 1
	srli	a8, a8, 1
	addi	a8, a8, -2
	neg	a8, a8
	neg	a2, a2
	and	a2, a2, a8
	add.n	a9, a9, a10
	add.n	a2, a2, a9
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	bbci	a4, 26, .L734
	ssr	a4
	srl	a3, a2
	movi.n	a9, 0
	j	.L735
.L734:
	beqz.n	a4, .L736
	ssr	a4
	srl	a9, a2
	addi	a8, a4, -32
	neg	a8, a8
	ssl	a8
	sll	a8, a2
	ssr	a4
	srl	a3, a3
	or	a3, a8, a3
.L735:
	mov.n	a2, a9
.L736:
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 32
	extui	a9, a2, 0, 16
	extui	a8, a3, 0, 16
	mull	a11, a9, a8
	extui	a10, a11, 16, 16
	extui	a2, a2, 16, 16
	mull	a8, a8, a2
	add.n	a8, a8, a10
	extui	a12, a8, 0, 16
	extui	a10, a3, 16, 16
	mull	a9, a9, a10
	add.n	a9, a9, a12
	extui	a11, a11, 0, 16
	slli	a3, a9, 16
	extui	a8, a8, 16, 16
	mull	a2, a2, a10
	add.n	a8, a8, a2
	extui	a2, a9, 16, 16
	add.n	a2, a8, a2
	add.n	a3, a11, a3
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC150, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mov.n	a11, a5
	mov.n	a10, a3
	l32r	a8, .LC150
	callx8	a8
	mull	a5, a5, a2
	mull	a7, a3, a4
	add.n	a5, a5, a7
	add.n	a2, a5, a10
	mov.n	a3, a11
	retw.n
	.size	__muldi3_compiler_rt, .-__muldi3_compiler_rt
	.align	4
	.global	__negdi2
	.type	__negdi2, @function
__negdi2:
	entry	sp, 32
	neg	a2, a2
	movi.n	a8, 1
	moveqz	a8, a3, a3
	sub	a2, a2, a8
	neg	a3, a3
	retw.n
	.size	__negdi2, .-__negdi2
	.literal_position
	.literal .LC151, 27030
	.align	4
	.global	__paritydi2
	.type	__paritydi2, @function
__paritydi2:
	entry	sp, 32
	xor	a2, a2, a3
	extui	a8, a2, 16, 16
	xor	a8, a8, a2
	srli	a9, a8, 8
	xor	a9, a9, a8
	srli	a8, a9, 4
	xor	a8, a8, a9
	extui	a8, a8, 0, 4
	l32r	a2, .LC151
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC152, 27030
	.align	4
	.global	__paritysi2
	.type	__paritysi2, @function
__paritysi2:
	entry	sp, 32
	extui	a8, a2, 16, 16
	xor	a8, a8, a2
	srli	a2, a8, 8
	xor	a2, a2, a8
	srli	a8, a2, 4
	xor	a8, a8, a2
	extui	a8, a8, 0, 4
	l32r	a2, .LC152
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC153, 1431655765
	.literal .LC154, 858993459
	.literal .LC155, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	l32r	a10, .LC153
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L745
	addi.n	a2, a2, -1
.L745:
	sub	a3, a3, a8
	ssai	2
	src	a8, a2, a3
	srli	a10, a2, 2
	l32r	a9, .LC154
	and	a10, a10, a9
	and	a8, a8, a9
	and	a2, a2, a9
	and	a3, a3, a9
	add.n	a10, a10, a2
	add.n	a8, a8, a3
	bgeu	a8, a3, .L746
	addi.n	a10, a10, 1
.L746:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a9, a9, a10
	add.n	a8, a11, a8
	bgeu	a8, a11, .L747
	addi.n	a9, a9, 1
.L747:
	l32r	a10, .LC155
	and	a9, a9, a10
	and	a8, a8, a10
	add.n	a8, a9, a8
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 7
	retw.n
	.size	__popcountdi2, .-__popcountdi2
	.literal_position
	.literal .LC156, 1431655765
	.literal .LC157, 858993459
	.literal .LC158, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	srli	a8, a2, 1
	l32r	a9, .LC156
	and	a8, a8, a9
	sub	a2, a2, a8
	srli	a9, a2, 2
	l32r	a8, .LC157
	and	a9, a9, a8
	and	a2, a2, a8
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC158
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC160, __muldf3@PLT
	.literal .LC161, __divdf3@PLT
	.literal .LC162, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	s32i	a4, sp, 0
	l32r	a2, .LC162
	movi.n	a3, 0
	l32r	a5, .LC160
.L752:
	bbci	a4, 31, .L750
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC160
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L750:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L751
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L752
.L751:
	l32i	a8, sp, 0
	bgez	a8, .L749
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a10, .LC162
	movi.n	a11, 0
	l32r	a8, .LC161
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L749:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC164, __mulsf3@PLT
	.literal .LC165, __divsf3@PLT
	.literal .LC166, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a4, a2
	mov.n	a7, a3
	l32r	a2, .LC166
	l32r	a5, .LC164
	mov.n	a6, a5
.L757:
	bbci	a7, 31, .L755
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L755:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L756
	mov.n	a11, a4
	mov.n	a10, a4
	callx8	a6
	mov.n	a4, a10
	j	.L757
.L756:
	bgez	a3, .L754
	mov.n	a11, a2
	l32r	a10, .LC166
	l32r	a8, .LC165
	callx8	a8
	mov.n	a2, a10
.L754:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L759
	movi.n	a2, 2
	bltu	a4, a8, .L759
	movi.n	a2, 0
	bltu	a3, a5, .L759
	movi.n	a2, 2
	bltu	a5, a3, .L759
	movi.n	a2, 1
.L759:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC167, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC167
	callx8	a8
	addi.n	a2, a10, -1
	retw.n
	.size	__aeabi_ulcmp, .-__aeabi_ulcmp
	.local	s.0
	.comm	s.0,7,4
	.local	seed
	.comm	seed,8,8
	.section	.rodata
	.align	4
	.type	digits, @object
	.size	digits, 65
digits:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
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
	.global	__umulsidi3
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
