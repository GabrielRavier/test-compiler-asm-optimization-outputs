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
	bnez.n	a5, .L12
	j	.L13
.L14:
	addi.n	a5, a5, -1
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L12
	j	.L13
.L12:
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	bne	a9, a4, .L14
.L13:
	addi.n	a8, a8, 1
	movnez	a5, a8, a5
	mov.n	a2, a5
	retw.n
	.size	memccpy, .-memccpy
	.align	4
	.global	memchr
	.type	memchr, @function
memchr:
	entry	sp, 32
	extui	a3, a3, 0, 8
	mov.n	a8, a4
	bnez.n	a4, .L21
	j	.L22
.L23:
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	addi.n	a8, a8, -1
	bnez.n	a8, .L21
	j	.L22
.L21:
	l8ui	a9, a2, 0
	bne	a9, a3, .L23
.L22:
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
	bnez.n	a4, .L31
	j	.L32
.L33:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 1
	addi.n	a3, a3, 1
	addi.n	a9, a9, -1
	bnez.n	a9, .L31
	j	.L32
.L31:
	l8ui	a11, a8, 0
	l8ui	a10, a3, 0
	beq	a11, a10, .L33
.L32:
	mov.n	a2, a4
	beqz.n	a4, .L30
	l8ui	a4, a8, 0
	l8ui	a8, a3, 0
	sub	a2, a4, a8
.L30:
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
	beqz.n	a4, .L40
	mov.n	a10, a2
	l32r	a8, .LC0
	callx8	a8
.L40:
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
	j	.L42
.L44:
	mov.n	a2, a8
	addi.n	a8, a8, -1
	l8ui	a9, a2, 0
	beq	a9, a3, .L41
.L42:
	bne	a8, a10, .L44
	movi.n	a2, 0
.L41:
	retw.n
	.size	memrchr, .-memrchr
	.align	4
	.global	memset
	.type	memset, @function
memset:
	entry	sp, 32
	beqz.n	a4, .L46
	mov.n	a8, a2
.L47:
	s8i	a3, a8, 0
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L47
.L46:
	retw.n
	.size	memset, .-memset
	.align	4
	.global	stpcpy
	.type	stpcpy, @function
stpcpy:
	entry	sp, 32
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	beqz.n	a8, .L51
.L52:
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	bnez.n	a8, .L52
.L51:
	retw.n
	.size	stpcpy, .-stpcpy
	.align	4
	.global	strchrnul
	.type	strchrnul, @function
strchrnul:
	entry	sp, 32
	extui	a3, a3, 0, 8
	l8ui	a8, a2, 0
	bnez.n	a8, .L55
	j	.L54
.L57:
	addi.n	a2, a2, 1
	l8ui	a8, a2, 0
	beqz.n	a8, .L54
.L55:
	bne	a8, a3, .L57
.L54:
	retw.n
	.size	strchrnul, .-strchrnul
	.align	4
	.global	strchr
	.type	strchr, @function
strchr:
	entry	sp, 32
.L62:
	l8ui	a8, a2, 0
	beq	a8, a3, .L61
	addi.n	a2, a2, 1
	bnez.n	a8, .L62
	mov.n	a2, a8
.L61:
	retw.n
	.size	strchr, .-strchr
	.align	4
	.global	strcmp
	.type	strcmp, @function
strcmp:
	entry	sp, 32
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	beqz.n	a8, .L65
.L69:
	bne	a8, a9, .L65
	addi.n	a2, a2, 1
	addi.n	a3, a3, 1
	l8ui	a8, a2, 0
	l8ui	a9, a3, 0
	beqz.n	a8, .L65
	j	.L69
.L65:
	sub	a2, a8, a9
	retw.n
	.size	strcmp, .-strcmp
	.align	4
	.global	strlen
	.type	strlen, @function
strlen:
	entry	sp, 32
	l8ui	a8, a2, 0
	beqz.n	a8, .L73
	mov.n	a8, a2
.L72:
	addi.n	a8, a8, 1
	l8ui	a9, a8, 0
	bnez.n	a9, .L72
	j	.L71
.L73:
	mov.n	a8, a2
.L71:
	sub	a2, a8, a2
	retw.n
	.size	strlen, .-strlen
	.align	4
	.global	strncmp
	.type	strncmp, @function
strncmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a2, a4
	beqz.n	a4, .L75
	l8ui	a9, a10, 0
	beqz.n	a9, .L77
	addi.n	a4, a4, -1
	movi.n	a12, 0
	add.n	a11, a3, a4
	j	.L78
.L79:
	addi.n	a10, a10, 1
	addi.n	a3, a3, 1
	l8ui	a9, a10, 0
	beqz.n	a9, .L77
.L78:
	l8ui	a8, a3, 0
	movi.n	a14, 1
	moveqz	a14, a12, a8
	sub	a8, a8, a9
	movi.n	a13, 1
	movnez	a13, a12, a8
	bnone	a14, a13, .L77
	bne	a3, a11, .L79
.L77:
	l8ui	a8, a3, 0
	sub	a2, a9, a8
.L75:
	retw.n
	.size	strncmp, .-strncmp
	.align	4
	.global	swab
	.type	swab, @function
swab:
	entry	sp, 32
	blti	a4, 2, .L83
	movi.n	a8, -2
	and	a8, a4, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L85_LEND
.L85:
	l8ui	a9, a2, 1
	s8i	a9, a3, 0
	l8ui	a9, a2, 0
	s8i	a9, a3, 1
	addi.n	a3, a3, 2
	addi.n	a2, a2, 2
	.L85_LEND:
.L83:
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
	bgeu	a9, a8, .L89
	movi.n	a2, 0
.L89:
	retw.n
	.size	isalpha, .-isalpha
	.align	4
	.global	isascii
	.type	isascii, @function
isascii:
	entry	sp, 32
	movi.n	a8, 1
	movi	a9, 0x7f
	bgeu	a9, a2, .L91
	movi.n	a8, 0
.L91:
	mov.n	a2, a8
	retw.n
	.size	isascii, .-isascii
	.align	4
	.global	isblank
	.type	isblank, @function
isblank:
	entry	sp, 32
	addi	a8, a2, -32
	movi.n	a9, 0
	movi.n	a10, 1
	movnez	a10, a9, a8
	addi	a8, a2, -9
	movi.n	a11, 1
	moveqz	a9, a11, a8
	or	a2, a10, a9
	retw.n
	.size	isblank, .-isblank
	.align	4
	.global	iscntrl
	.type	iscntrl, @function
iscntrl:
	entry	sp, 32
	movi.n	a8, 1
	movi.n	a9, 0x1f
	bgeu	a9, a2, .L94
	movi.n	a8, 0
.L94:
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
	bgeu	a9, a8, .L96
	movi.n	a2, 0
.L96:
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
	bgeu	a9, a8, .L98
	movi.n	a2, 0
.L98:
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
	bgeu	a9, a8, .L100
	movi.n	a2, 0
.L100:
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
	bgeu	a9, a8, .L102
	movi.n	a2, 0
.L102:
	retw.n
	.size	isprint, .-isprint
	.align	4
	.global	isspace
	.type	isspace, @function
isspace:
	entry	sp, 32
	addi	a9, a2, -9
	movi.n	a8, 1
	bltui	a9, 5, .L104
	movi.n	a8, 0
.L104:
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
	bgeu	a9, a8, .L106
	movi.n	a2, 0
.L106:
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
	addi	a10, a2, -127
	movi.n	a9, 1
	movi.n	a11, 0x20
	bgeu	a11, a10, .L109
	movi.n	a9, 0
.L109:
	bbsi	a9, 31, .L112
	movi.n	a10, 1
	movi.n	a11, 0x1f
	bgeu	a11, a8, .L110
	mov.n	a10, a9
.L110:
	extui	a11, a10, 0, 8
	bbsi	a10, 31, .L112
	l32r	a9, .LC1
	add.n	a9, a8, a9
	movi.n	a2, 1
	bltui	a9, 2, .L107
	l32r	a9, .LC2
	add.n	a8, a8, a9
	bltui	a8, 3, .L107
	mov.n	a2, a11
	j	.L107
.L112:
	movi.n	a2, 1
.L107:
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
	bgeu	a9, a8, .L115
	movi.n	a2, 0
.L115:
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
	bltu	a9, a2, .L117
	addi.n	a8, a2, 1
	extui	a8, a8, 0, 7
	movi.n	a2, 1
	movi.n	a9, 0x20
	bltu	a9, a8, .L116
	movi.n	a2, 0
	j	.L116
.L117:
	l32r	a9, .LC3
	add.n	a9, a2, a9
	movi.n	a10, 1
	l32r	a11, .LC4
	bgeu	a11, a9, .L120
	movi.n	a10, 0
.L120:
	bbsi	a10, 31, .L122
	movi.n	a9, 1
	l32r	a11, .LC5
	bgeu	a11, a8, .L121
	mov.n	a9, a10
.L121:
	extui	a10, a9, 0, 8
	bbsi	a9, 31, .L122
	l32r	a9, .LC6
	add.n	a9, a8, a9
	l32r	a11, .LC7
	movi.n	a2, 1
	bgeu	a11, a9, .L116
	l32r	a9, .LC8
	add.n	a9, a8, a9
	l32r	a11, .LC9
	mov.n	a2, a10
	bltu	a11, a9, .L116
	l32r	a9, .LC10
	and	a8, a8, a9
	xor	a8, a8, a9
	movi.n	a2, 1
	moveqz	a2, a10, a8
	j	.L116
.L122:
	movi.n	a2, 1
.L116:
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
	bgeu	a10, a9, .L125
	movi.n	a9, 0x20
	or	a8, a8, a9
	addi	a8, a8, -97
	bltui	a8, 6, .L125
	movi.n	a2, 0
.L125:
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
	bnez.n	a10, .L130
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	bnez.n	a10, .L134
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC13
	callx8	a8
	blti	a10, 1, .L137
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC14
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	j	.L130
.L134:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L130
.L137:
	movi.n	a2, 0
	movi.n	a3, 0
.L130:
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
	bnez.n	a10, .L138
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	bnez.n	a10, .L142
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC17
	callx8	a8
	blti	a10, 1, .L145
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC18
	callx8	a8
	mov.n	a2, a10
	j	.L138
.L142:
	mov.n	a2, a3
	j	.L138
.L145:
	movi.n	a2, 0
.L138:
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
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a3, .LC19
	mov.n	a12, a2
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a3
	bnez.n	a10, .L152
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	mov.n	a3, a10
	bnez.n	a10, .L153
	l32r	a8, .LC20
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L148
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a9, .L146
	j	.L153
.L148:
	movi.n	a8, 1
	s32i	a8, sp, 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	l32r	a9, .LC21
	callx8	a9
	l32i	a8, sp, 0
	bltz	a10, .L151
	mov.n	a8, a3
.L151:
	mov.n	a2, a6
	mov.n	a3, a7
	bbci	a8, 31, .L146
.L152:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L146
.L153:
	mov.n	a2, a6
	mov.n	a3, a7
.L146:
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
	bnez.n	a10, .L161
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a7
	mov.n	a7, a10
	bnez.n	a10, .L155
	l32r	a8, .LC23
	and	a9, a8, a2
	and	a8, a8, a3
	beq	a9, a8, .L157
	movnez	a2, a3, a9
	j	.L155
.L157:
	movi.n	a6, 1
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC24
	callx8	a8
	bltz	a10, .L160
	mov.n	a6, a7
.L160:
	extui	a6, a6, 0, 8
	movnez	a2, a3, a6
	j	.L155
.L161:
	mov.n	a2, a3
.L155:
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
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a3, .LC25
	mov.n	a12, a2
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a7
	callx8	a3
	bnez.n	a10, .L170
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a3
	mov.n	a3, a10
	bnez.n	a10, .L171
	l32r	a8, .LC26
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L166
	mov.n	a2, a4
	mov.n	a3, a5
	bnez.n	a9, .L164
	j	.L171
.L166:
	movi.n	a8, 1
	s32i	a8, sp, 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a7
	l32r	a9, .LC27
	callx8	a9
	l32i	a8, sp, 0
	bltz	a10, .L169
	mov.n	a8, a3
.L169:
	mov.n	a2, a6
	mov.n	a3, a7
	bbci	a8, 31, .L164
.L170:
	mov.n	a2, a4
	mov.n	a3, a5
	j	.L164
.L171:
	mov.n	a2, a6
	mov.n	a3, a7
.L164:
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
	bnez.n	a10, .L179
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	mov.n	a7, a10
	bnez.n	a10, .L173
	l32r	a8, .LC29
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L175
	bnez.n	a9, .L173
	j	.L179
.L175:
	movi.n	a6, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC30
	callx8	a8
	bltz	a10, .L178
	mov.n	a6, a7
.L178:
	bbci	a6, 31, .L179
	mov.n	a4, a2
	mov.n	a5, a3
.L179:
	mov.n	a2, a4
	mov.n	a3, a5
.L173:
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
	bnez.n	a10, .L188
	mov.n	a11, a3
	mov.n	a10, a3
	callx8	a2
	mov.n	a2, a10
	bnez.n	a10, .L189
	l32r	a8, .LC32
	and	a9, a8, a7
	and	a8, a8, a3
	beq	a9, a8, .L184
	movnez	a3, a7, a9
	mov.n	a2, a3
	j	.L182
.L184:
	movi.n	a6, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC33
	callx8	a8
	bltz	a10, .L187
	mov.n	a6, a2
.L187:
	extui	a6, a6, 0, 8
	moveqz	a7, a3, a6
	mov.n	a2, a7
	j	.L182
.L188:
	mov.n	a2, a3
	j	.L182
.L189:
	mov.n	a2, a7
.L182:
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
	bnez.n	a10, .L197
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a4
	mov.n	a11, a5
	callx8	a7
	mov.n	a7, a10
	bnez.n	a10, .L191
	l32r	a8, .LC35
	and	a9, a8, a2
	and	a8, a8, a4
	beq	a9, a8, .L193
	bnez.n	a9, .L191
	j	.L197
.L193:
	movi.n	a6, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC36
	callx8	a8
	bltz	a10, .L196
	mov.n	a6, a7
.L196:
	bbci	a6, 31, .L197
	mov.n	a4, a2
	mov.n	a5, a3
.L197:
	mov.n	a2, a4
	mov.n	a3, a5
.L191:
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
	beqz.n	a2, .L201
	l32r	a10, .LC38
.L202:
	extui	a8, a2, 0, 6
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a9, 0
	addi.n	a9, a9, 1
	srli	a2, a2, 6
	bnez.n	a2, .L202
.L201:
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
	bnez.n	a3, .L209
	s32i	a3, a2, 4
	s32i	a3, a2, 0
	j	.L208
.L209:
	l32i	a8, a3, 0
	s32i	a8, a2, 0
	s32i	a3, a2, 4
	s32i	a2, a3, 0
	l32i	a8, a2, 0
	beqz.n	a8, .L208
	s32i	a2, a8, 4
.L208:
	retw.n
	.size	insque, .-insque
	.align	4
	.global	remque
	.type	remque, @function
remque:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L212
	l32i	a9, a2, 4
	s32i	a9, a8, 4
.L212:
	l32i	a8, a2, 4
	beqz.n	a8, .L211
	l32i	a9, a2, 0
	s32i	a9, a8, 0
.L211:
	retw.n
	.size	remque, .-remque
	.literal_position
	.literal .LC44, memcpy@PLT
	.align	4
	.global	lsearch
	.type	lsearch, @function
lsearch:
	entry	sp, 48
	s32i	a2, sp, 0
	s32i	a3, sp, 4
	s32i	a4, sp, 8
	l32i	a7, a4, 0
	beqz.n	a7, .L215
	mov.n	a2, a3
	movi.n	a4, 0
.L217:
	mov.n	a3, a2
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L214
	addi.n	a4, a4, 1
	add.n	a2, a2, a5
	bne	a7, a4, .L217
.L215:
	addi.n	a8, a7, 1
	l32i	a9, sp, 8
	s32i	a8, a9, 0
	mull	a10, a5, a7
	mov.n	a12, a5
	l32i	a11, sp, 0
	l32i	a8, sp, 4
	add.n	a10, a8, a10
	l32r	a8, .LC44
	callx8	a8
	mov.n	a3, a10
.L214:
	mov.n	a2, a3
	retw.n
	.size	lsearch, .-lsearch
	.align	4
	.global	lfind
	.type	lfind, @function
lfind:
	entry	sp, 48
	s32i	a2, sp, 0
	l32i	a4, a4, 0
	beqz.n	a4, .L220
	movi.n	a7, 0
.L222:
	mov.n	a2, a3
	mov.n	a11, a3
	l32i	a10, sp, 0
	callx8	a6
	beqz.n	a10, .L219
	addi.n	a7, a7, 1
	add.n	a3, a3, a5
	bne	a4, a7, .L222
.L220:
	movi.n	a2, 0
.L219:
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
	j	.L226
.L227:
	addi.n	a2, a2, 1
.L226:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L227
	movi.n	a8, 0x2b
	beq	a7, a8, .L233
	movi.n	a8, 0x2d
	mov.n	a12, a10
	bne	a7, a8, .L229
	movi.n	a12, 1
	j	.L228
.L233:
	mov.n	a12, a10
.L228:
	addi.n	a2, a2, 1
	j	.L229
.L230:
	addx4	a10, a10, a10
	addi.n	a2, a2, 1
	addi	a8, a8, -48
	subx2	a10, a10, a8
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	bgeu	a11, a9, .L230
	j	.L231
.L229:
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	movi.n	a13, 9
	mov.n	a11, a13
	bgeu	a13, a9, .L230
.L231:
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
	j	.L238
.L239:
	addi.n	a2, a2, 1
.L238:
	l8ui	a7, a2, 0
	mov.n	a10, a7
	callx8	a6
	bnez.n	a10, .L239
	movi.n	a8, 0x2b
	beq	a7, a8, .L245
	movi.n	a8, 0x2d
	mov.n	a12, a10
	bne	a7, a8, .L241
	movi.n	a12, 1
	j	.L240
.L245:
	mov.n	a12, a10
.L240:
	addi.n	a2, a2, 1
	j	.L241
.L242:
	addx4	a10, a10, a10
	addi.n	a2, a2, 1
	addi	a8, a8, -48
	subx2	a10, a10, a8
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	bgeu	a11, a9, .L242
	j	.L243
.L241:
	l8ui	a8, a2, 0
	addi	a9, a8, -48
	movi.n	a13, 9
	mov.n	a11, a13
	bgeu	a13, a9, .L242
.L243:
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
	l32r	a6, .LC47
	j	.L250
.L251:
	addi.n	a3, a3, 1
.L250:
	l8ui	a7, a3, 0
	mov.n	a10, a7
	callx8	a6
	mov.n	a4, a10
	bnez.n	a10, .L251
	movi.n	a8, 0x2b
	beq	a7, a8, .L252
	movi.n	a8, 0x2d
	bne	a7, a8, .L253
	movi.n	a4, 1
.L252:
	addi.n	a3, a3, 1
	j	.L253
.L255:
	mull	a2, a7, a2
	mov.n	a10, a7
	l32r	a8, .LC48
	callx8	a8
	add.n	a2, a2, a10
	addi.n	a3, a3, 1
	addi	a8, a5, -48
	srai	a9, a8, 31
	sub	a2, a2, a9
	bgeu	a11, a8, .L254
	addi.n	a2, a2, -1
.L254:
	sub	a11, a11, a8
	l8ui	a5, a3, 0
	addi	a9, a5, -48
	bgeu	a6, a9, .L255
	j	.L256
.L253:
	l8ui	a5, a3, 0
	addi	a9, a5, -48
	movi.n	a10, 9
	movi.n	a11, 0
	mov.n	a2, a11
	movi.n	a7, 0xa
	mov.n	a6, a10
	bgeu	a10, a9, .L255
.L256:
	bnez.n	a4, .L249
	neg	a2, a2
	movi.n	a8, 1
	moveqz	a8, a11, a11
	sub	a2, a2, a8
	sub	a11, a4, a11
.L249:
	mov.n	a3, a11
	retw.n
	.size	atoll, .-atoll
	.align	4
	.global	bsearch
	.type	bsearch, @function
bsearch:
	entry	sp, 48
	s32i	a2, sp, 0
.L270:
	beqz.n	a4, .L264
	srli	a7, a4, 1
	mull	a2, a7, a5
	add.n	a2, a3, a2
	mov.n	a11, a2
	l32i	a10, sp, 0
	callx8	a6
	bltz	a10, .L268
	blti	a10, 1, .L263
	add.n	a3, a2, a5
	addi.n	a4, a4, -1
	sub	a4, a4, a7
	j	.L270
.L268:
	mov.n	a4, a7
	j	.L270
.L264:
	movi.n	a2, 0
.L263:
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
	beqz.n	a7, .L272
.L275:
	srai	a6, a7, 1
	mull	a6, a6, a5
	add.n	a6, a3, a6
	l32i	a12, sp, 0
	mov.n	a11, a6
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L271
	blti	a10, 1, .L274
	add.n	a3, a6, a5
	addi.n	a7, a7, -1
.L274:
	srai	a7, a7, 1
	bnez.n	a7, .L275
.L272:
	movi.n	a6, 0
.L271:
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
	bgeu	a3, a8, .L280
	addi.n	a2, a2, -1
.L280:
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
	bgeu	a3, a8, .L286
	addi.n	a2, a2, -1
.L286:
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
	beq	a3, a8, .L289
.L294:
	beqz.n	a8, .L289
	addi.n	a2, a2, 4
	l32i	a8, a2, 0
	beq	a8, a3, .L289
	j	.L294
.L289:
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
	movi.n	a10, 0
	movi.n	a11, 1
	moveqz	a11, a10, a8
	sub	a12, a8, a9
	movi.n	a13, 1
	moveqz	a10, a13, a12
	bnone	a11, a10, .L296
	beqz.n	a9, .L296
	movi.n	a10, 0
.L297:
	addi.n	a2, a2, 4
	addi.n	a3, a3, 4
	l32i	a8, a2, 0
	l32i	a9, a3, 0
	movi.n	a12, 1
	moveqz	a12, a10, a8
	sub	a13, a8, a9
	movi.n	a11, 1
	movnez	a11, a10, a13
	bnone	a12, a11, .L296
	bnez.n	a9, .L297
.L296:
	movi.n	a2, -1
	blt	a8, a9, .L295
	movi.n	a2, 1
	blt	a9, a8, .L295
	movi.n	a2, 0
.L295:
	retw.n
	.size	wcscmp, .-wcscmp
	.align	4
	.global	wcscpy
	.type	wcscpy, @function
wcscpy:
	entry	sp, 32
	mov.n	a8, a2
.L304:
	l32i	a9, a3, 0
	s32i	a9, a8, 0
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	bnez.n	a9, .L304
	retw.n
	.size	wcscpy, .-wcscpy
	.align	4
	.global	wcslen
	.type	wcslen, @function
wcslen:
	entry	sp, 32
	l32i	a8, a2, 0
	beqz.n	a8, .L309
	mov.n	a8, a2
.L308:
	addi.n	a8, a8, 4
	l32i	a9, a8, 0
	bnez.n	a9, .L308
	j	.L307
.L309:
	mov.n	a8, a2
.L307:
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
	movi.n	a12, 0
	mov.n	a11, a4
	bnez.n	a4, .L312
	j	.L313
.L314:
	addi.n	a4, a4, -1
	addi.n	a9, a9, 4
	addi.n	a3, a3, 4
	addi.n	a11, a11, -1
	bnez.n	a11, .L312
	j	.L313
.L312:
	l32i	a8, a9, 0
	l32i	a10, a3, 0
	movi.n	a14, 1
	moveqz	a14, a12, a8
	sub	a8, a8, a10
	movi.n	a13, 1
	movnez	a13, a12, a8
	bnone	a14, a13, .L313
	bnez.n	a10, .L314
.L313:
	mov.n	a2, a4
	beqz.n	a4, .L311
	l32i	a8, a9, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a8, a9, .L311
	movi.n	a4, 1
	blt	a9, a8, .L317
	movi.n	a4, 0
.L317:
	mov.n	a2, a4
.L311:
	retw.n
	.size	wcsncmp, .-wcsncmp
	.align	4
	.global	wmemchr
	.type	wmemchr, @function
wmemchr:
	entry	sp, 32
	mov.n	a8, a4
	bnez.n	a4, .L324
	j	.L325
.L326:
	addi.n	a4, a4, -1
	addi.n	a2, a2, 4
	addi.n	a8, a8, -1
	bnez.n	a8, .L324
	j	.L325
.L324:
	l32i	a9, a2, 0
	bne	a9, a3, .L326
.L325:
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
	bnez.n	a4, .L334
	j	.L335
.L336:
	addi.n	a4, a4, -1
	addi.n	a8, a8, 4
	addi.n	a3, a3, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L334
	j	.L335
.L334:
	l32i	a11, a8, 0
	l32i	a10, a3, 0
	beq	a11, a10, .L336
.L335:
	mov.n	a2, a4
	beqz.n	a4, .L333
	l32i	a8, a8, 0
	l32i	a9, a3, 0
	movi.n	a2, -1
	blt	a8, a9, .L333
	movi.n	a4, 1
	blt	a9, a8, .L338
	movi.n	a4, 0
.L338:
	mov.n	a2, a4
.L333:
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
	beqz.n	a4, .L345
	slli	a12, a4, 2
	mov.n	a10, a2
	l32r	a8, .LC53
	callx8	a8
.L345:
	retw.n
	.size	wmemcpy, .-wmemcpy
	.align	4
	.global	wmemmove
	.type	wmemmove, @function
wmemmove:
	entry	sp, 32
	beq	a2, a3, .L347
	mov.n	a10, a2
	mov.n	a8, a3
	addi.n	a9, a4, -1
	sub	a11, a2, a3
	slli	a12, a4, 2
	bltu	a11, a12, .L348
	addi.n	a9, a9, 1
	bnez.n	a4, .L349
	j	.L347
.L348:
	beqz.n	a4, .L347
	addx4	a10, a9, a3
	addx4	a9, a9, a2
	sub	a8, a10, a3
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L350_LEND
.L350:
	l32i	a11, a10, 0
	s32i	a11, a9, 0
	addi	a10, a10, -4
	addi	a9, a9, -4
	.L350_LEND:
	j	.L347
.L349:
	l32i	a11, a8, 0
	s32i	a11, a10, 0
	addi.n	a10, a10, 4
	addi.n	a8, a8, 4
	addi.n	a9, a9, -1
	bnez.n	a9, .L349
.L347:
	retw.n
	.size	wmemmove, .-wmemmove
	.align	4
	.global	wmemset
	.type	wmemset, @function
wmemset:
	entry	sp, 32
	beqz.n	a4, .L357
	mov.n	a9, a2
	mov.n	a8, a4
	loop	a8, .L358_LEND
.L358:
	s32i	a3, a9, 0
	addi.n	a9, a9, 4
	.L358_LEND:
.L357:
	retw.n
	.size	wmemset, .-wmemset
	.align	4
	.global	bcopy
	.type	bcopy, @function
bcopy:
	entry	sp, 32
	mov.n	a8, a2
	mov.n	a9, a3
	bgeu	a2, a3, .L362
	add.n	a10, a2, a4
	add.n	a9, a3, a4
	beqz.n	a4, .L361
	sub	a8, a10, a2
	loop	a8, .L364_LEND
.L364:
	addi.n	a10, a10, -1
	addi.n	a9, a9, -1
	l8ui	a11, a10, 0
	s8i	a11, a9, 0
	.L364_LEND:
	j	.L361
.L362:
	beq	a2, a3, .L361
	beqz.n	a4, .L361
.L365:
	l8ui	a10, a8, 0
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
	addi.n	a9, a9, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L365
.L361:
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
	extui	a8, a2, 8, 8
	slli	a2, a2, 8
	or	a2, a2, a8
	extui	a2, a2, 0, 16
	retw.n
	.size	bswap_16, .-bswap_16
	.align	4
	.global	bswap_32
	.type	bswap_32, @function
bswap_32:
	entry	sp, 32
	ssai	8
	srli	a8, a2, 16
	src	a8, a8, a2
	src	a8, a8, a8
	src	a2, a2, a8
	retw.n
	.size	bswap_32, .-bswap_32
	.align	4
	.global	bswap_64
	.type	bswap_64, @function
bswap_64:
	entry	sp, 32
	mov.n	a8, a2
	ssai	8
	srli	a2, a3, 16
	src	a2, a2, a3
	src	a2, a2, a2
	src	a2, a3, a2
	srli	a3, a8, 16
	src	a3, a3, a8
	src	a3, a3, a3
	src	a3, a8, a3
	retw.n
	.size	bswap_64, .-bswap_64
	.align	4
	.global	ffs
	.type	ffs, @function
ffs:
	entry	sp, 32
	movi.n	a8, 0
	movi.n	a10, 0x20
	loop	a10, .L386_LEND
.L386:
	ssr	a8
	srl	a9, a2
	extui	a11, a9, 0, 1
	addi.n	a8, a8, 1
	bbci	a9, 31, .L384
	mov.n	a2, a8
	j	.L383
.L384:
	nop.n
	.L386_LEND:
	mov.n	a2, a11
.L383:
	retw.n
	.size	ffs, .-ffs
	.align	4
	.global	libiberty_ffs
	.type	libiberty_ffs, @function
libiberty_ffs:
	entry	sp, 32
	mov.n	a8, a2
	beqz.n	a2, .L389
	extui	a2, a2, 0, 1
	bbsi	a8, 31, .L389
	movi.n	a2, 1
.L391:
	srai	a8, a8, 1
	addi.n	a2, a2, 1
	bbci	a8, 31, .L391
.L389:
	retw.n
	.size	libiberty_ffs, .-libiberty_ffs
	.literal_position
	.literal .LC55, __ltsf2@PLT
	.literal .LC57, __gtsf2@PLT
	.literal .LC58, 2139095039
	.literal .LC59, -8388609
	.align	4
	.global	gl_isinff
	.type	gl_isinff, @function
gl_isinff:
	entry	sp, 32
	mov.n	a7, a2
	l32r	a11, .LC59
	mov.n	a10, a2
	l32r	a8, .LC55
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L394
	l32r	a11, .LC58
	mov.n	a10, a7
	l32r	a8, .LC57
	callx8	a8
	bgei	a10, 1, .L394
	movi.n	a2, 0
.L394:
	retw.n
	.size	gl_isinff, .-gl_isinff
	.literal_position
	.literal .LC61, __ltdf2@PLT
	.literal .LC63, __gtdf2@PLT
	.literal .LC64, 2146435071
	.literal .LC65, -1048577
	.align	4
	.global	gl_isinfd
	.type	gl_isinfd, @function
gl_isinfd:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC65
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC61
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L398
	l32r	a12, .LC64
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC63
	callx8	a8
	bgei	a10, 1, .L398
	movi.n	a2, 0
.L398:
	retw.n
	.size	gl_isinfd, .-gl_isinfd
	.literal_position
	.literal .LC67, __ltdf2@PLT
	.literal .LC69, __gtdf2@PLT
	.literal .LC70, 2146435071
	.literal .LC71, -1048577
	.align	4
	.global	gl_isinfl
	.type	gl_isinfl, @function
gl_isinfl:
	entry	sp, 32
	mov.n	a6, a2
	mov.n	a7, a3
	l32r	a12, .LC71
	movi.n	a13, -1
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC67
	callx8	a8
	movi.n	a2, 1
	bltz	a10, .L402
	l32r	a12, .LC70
	movi.n	a13, -1
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC69
	callx8	a8
	bgei	a10, 1, .L402
	movi.n	a2, 0
.L402:
	retw.n
	.size	gl_isinfl, .-gl_isinfl
	.literal_position
	.literal .LC72, __floatsidf@PLT
	.align	4
	.global	_Qp_itoq
	.type	_Qp_itoq, @function
_Qp_itoq:
	entry	sp, 32
	mov.n	a10, a3
	l32r	a8, .LC72
	callx8	a8
	s32i.n	a10, a2, 0
	s32i.n	a11, a2, 4
	retw.n
	.size	_Qp_itoq, .-_Qp_itoq
	.literal_position
	.literal .LC75, __unordsf2@PLT
	.literal .LC76, __addsf3@PLT
	.literal .LC77, __nesf2@PLT
	.literal .LC78, __mulsf3@PLT
	.literal .LC79, 1056964608
	.literal .LC80, 1073741824
	.align	4
	.global	ldexpf
	.type	ldexpf, @function
ldexpf:
	entry	sp, 32
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC75
	callx8	a8
	bnez.n	a10, .L408
	mov.n	a11, a2
	mov.n	a10, a2
	l32r	a8, .LC76
	callx8	a8
	mov.n	a11, a2
	l32r	a8, .LC77
	callx8	a8
	beqz.n	a10, .L408
	l32r	a7, .LC79
	l32r	a8, .LC80
	movgez	a7, a8, a3
	l32r	a5, .LC78
	mov.n	a6, a5
.L412:
	bbci	a3, 31, .L411
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L411:
	extui	a8, a3, 31, 1
	add.n	a8, a8, a3
	srai	a3, a8, 1
	beqz.n	a3, .L408
	mov.n	a11, a7
	mov.n	a10, a7
	callx8	a6
	mov.n	a7, a10
	j	.L412
.L408:
	retw.n
	.size	ldexpf, .-ldexpf
	.literal_position
	.literal .LC83, __unorddf2@PLT
	.literal .LC84, __adddf3@PLT
	.literal .LC85, __nedf2@PLT
	.literal .LC86, __muldf3@PLT
	.literal .LC87, 1071644672
	.literal .LC88, 1073741824
	.align	4
	.global	ldexp
	.type	ldexp, @function
ldexp:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC83
	callx8	a9
	bnez.n	a10, .L416
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC84
	callx8	a9
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a9, .LC85
	callx8	a9
	beqz.n	a10, .L416
	l32r	a6, .LC88
	movi.n	a7, 0
	bgez	a4, .L418
	l32r	a6, .LC87
	movi.n	a7, 0
.L418:
	l32r	a5, .LC86
.L420:
	bbci	a4, 31, .L419
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC86
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L419:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L416
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L420
.L416:
	retw.n
	.size	ldexp, .-ldexp
	.literal_position
	.literal .LC91, __unorddf2@PLT
	.literal .LC92, __adddf3@PLT
	.literal .LC93, __nedf2@PLT
	.literal .LC94, __muldf3@PLT
	.literal .LC95, 1071644672
	.literal .LC96, 1073741824
	.align	4
	.global	ldexpl
	.type	ldexpl, @function
ldexpl:
	entry	sp, 32
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC91
	callx8	a9
	bnez.n	a10, .L424
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a9, .LC92
	callx8	a9
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a9, .LC93
	callx8	a9
	beqz.n	a10, .L424
	l32r	a6, .LC96
	movi.n	a7, 0
	bgez	a4, .L426
	l32r	a6, .LC95
	movi.n	a7, 0
.L426:
	l32r	a5, .LC94
.L428:
	bbci	a4, 31, .L427
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC94
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L427:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L424
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L428
.L424:
	retw.n
	.size	ldexpl, .-ldexpl
	.align	4
	.global	memxor
	.type	memxor, @function
memxor:
	entry	sp, 32
	beqz.n	a4, .L432
	mov.n	a8, a2
.L433:
	l8ui	a9, a8, 0
	l8ui	a10, a3, 0
	xor	a9, a9, a10
	s8i	a9, a8, 0
	addi.n	a3, a3, 1
	addi.n	a8, a8, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L433
.L432:
	retw.n
	.size	memxor, .-memxor
	.literal_position
	.literal .LC97, strlen@PLT
	.align	4
	.global	strncat
	.type	strncat, @function
strncat:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC97
	callx8	a8
	add.n	a10, a2, a10
	mov.n	a9, a4
	bnez.n	a4, .L437
	j	.L438
.L439:
	addi.n	a3, a3, 1
	addi.n	a10, a10, 1
	addi.n	a4, a4, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L437
	j	.L438
.L437:
	l8ui	a8, a3, 0
	s8i	a8, a10, 0
	bnez.n	a8, .L439
.L438:
	bnez.n	a4, .L440
	s8i	a4, a10, 0
.L440:
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
	bnez.n	a3, .L445
	mov.n	a2, a3
	j	.L444
.L447:
	addi.n	a2, a2, 1
	addi.n	a10, a10, -1
	bnez.n	a10, .L445
	j	.L444
.L445:
	add.n	a9, a8, a2
	l8ui	a9, a9, 0
	bnez.n	a9, .L447
.L444:
	retw.n
	.size	strnlen, .-strnlen
	.align	4
	.global	strpbrk
	.type	strpbrk, @function
strpbrk:
	entry	sp, 32
	l8ui	a10, a2, 0
	bnez.n	a10, .L454
	j	.L458
.L456:
	addi.n	a8, a8, 1
	beq	a9, a10, .L455
.L457:
	l8ui	a9, a8, 0
	bnez.n	a9, .L456
	addi.n	a2, a2, 1
	l8ui	a10, a2, 0
	beqz.n	a10, .L458
.L454:
	mov.n	a8, a3
	j	.L457
.L458:
	mov.n	a2, a10
.L455:
	retw.n
	.size	strpbrk, .-strpbrk
	.align	4
	.global	strrchr
	.type	strrchr, @function
strrchr:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
.L462:
	l8ui	a9, a8, 0
	sub	a10, a9, a3
	moveqz	a2, a8, a10
	addi.n	a8, a8, 1
	bnez.n	a9, .L462
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
	entry	sp, 48
	s32i	a2, sp, 0
	mov.n	a10, a3
	l32r	a9, .LC98
	callx8	a9
	mov.n	a7, a10
	mov.n	a8, a2
	beqz.n	a10, .L465
	l8ui	a5, a3, 0
	l32r	a6, .LC100
	l32r	a4, .LC99
	j	.L467
.L468:
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a4
	beqz.n	a10, .L465
	addi.n	a8, a2, 1
.L467:
	mov.n	a11, a5
	mov.n	a10, a8
	callx8	a6
	mov.n	a2, a10
	bnez.n	a10, .L468
.L465:
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
	entry	sp, 32
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC102
	callx8	a8
	bgez	a10, .L471
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC103
	callx8	a8
	bgei	a10, 1, .L473
.L471:
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC103
	callx8	a8
	blti	a10, 1, .L474
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a4
	mov.n	a11, a5
	l32r	a8, .LC102
	callx8	a8
	bgez	a10, .L474
.L473:
	l32r	a10, .LC104
	xor	a8, a2, a10
	mov.n	a2, a8
.L474:
	retw.n
	.size	copysign, .-copysign
	.literal_position
	.literal .LC105, memcmp@PLT
	.align	4
	.global	memmem
	.type	memmem, @function
memmem:
	entry	sp, 48
	mov.n	a7, a2
	beqz.n	a5, .L479
	bltu	a3, a5, .L485
	sub	a3, a3, a5
	add.n	a6, a2, a3
	bltu	a6, a2, .L485
	l8ui	a3, a4, 0
	addi.n	a8, a5, -1
	s32i	a8, sp, 0
	addi.n	a5, a4, 1
	l32r	a4, .LC105
.L482:
	l8ui	a8, a7, 0
	mov.n	a2, a7
	addi.n	a7, a7, 1
	bne	a8, a3, .L481
	l32i	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a7
	callx8	a4
	beqz.n	a10, .L479
.L481:
	bgeu	a6, a7, .L482
.L485:
	movi.n	a2, 0
.L479:
	retw.n
	.size	memmem, .-memmem
	.literal_position
	.literal .LC106, memcpy@PLT
	.align	4
	.global	mempcpy
	.type	mempcpy, @function
mempcpy:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	l32r	a8, .LC106
	callx8	a8
	add.n	a2, a10, a4
	retw.n
	.size	mempcpy, .-mempcpy
	.literal_position
	.literal .LC108, __ltdf2@PLT
	.literal .LC109, -2147483648
	.literal .LC111, __gedf2@PLT
	.literal .LC113, __muldf3@PLT
	.literal .LC114, __nedf2@PLT
	.literal .LC115, __adddf3@PLT
	.literal .LC116, 1071644672
	.literal .LC117, 1072693248
	.align	4
	.global	frexp
	.type	frexp, @function
frexp:
	entry	sp, 48
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC108
	callx8	a8
	movi.n	a8, 0
	bgez	a10, .L506
	l32r	a10, .LC109
	xor	a8, a2, a10
	mov.n	a2, a8
	movi.n	a8, 1
	s32i	a8, sp, 0
	j	.L489
.L506:
	s32i	a8, sp, 0
.L489:
	l32r	a12, .LC117
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC111
	callx8	a8
	movi.n	a5, 0
	bltz	a10, .L507
	l32r	a6, .LC113
	l32r	a7, .LC111
.L493:
	addi.n	a5, a5, 1
	l32r	a12, .LC116
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC117
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a7
	bgez	a10, .L493
	j	.L494
.L507:
	movi.n	a7, 1
	movi.n	a12, 0
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC114
	callx8	a8
	bnez.n	a10, .L495
	mov.n	a7, a10
.L495:
	movi.n	a5, 0
	bbci	a7, 31, .L494
	l32r	a12, .LC116
	movi.n	a13, 0
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC108
	callx8	a8
	bgez	a10, .L494
	l32r	a6, .LC115
	l32r	a7, .LC108
.L497:
	addi.n	a5, a5, -1
	mov.n	a12, a2
	mov.n	a13, a3
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a6
	mov.n	a2, a10
	mov.n	a3, a11
	l32r	a12, .LC116
	movi.n	a13, 0
	mov.n	a10, a2
	callx8	a7
	bltz	a10, .L497
.L494:
	s32i	a5, a4, 0
	l32i	a8, sp, 0
	beqz.n	a8, .L498
	l32r	a10, .LC109
	xor	a8, a2, a10
	mov.n	a2, a8
.L498:
	retw.n
	.size	frexp, .-frexp
	.literal_position
	.literal .LC118, __umulsidi3@PLT
	.align	4
	.global	__muldi3
	.type	__muldi3, @function
__muldi3:
	entry	sp, 48
	mov.n	a8, a2
	mov.n	a7, a3
	mov.n	a9, a4
	mov.n	a2, a5
	mov.n	a5, a8
	or	a12, a3, a8
	beqz.n	a12, .L513
	movi.n	a3, 0
	mov.n	a4, a3
	l32r	a8, .LC118
	s32i	a8, sp, 4
.L512:
	extui	a10, a7, 0, 1
	mull	a6, a9, a10
	s32i	a9, sp, 0
	mov.n	a11, a2
	l32i	a8, sp, 4
	callx8	a8
	add.n	a6, a6, a10
	add.n	a11, a3, a11
	movi.n	a10, 1
	l32i	a9, sp, 0
	bltu	a11, a3, .L511
	movi.n	a10, 0
.L511:
	add.n	a6, a4, a6
	add.n	a4, a10, a6
	mov.n	a3, a11
	ssai	31
	src	a9, a9, a2
	add.n	a2, a2, a2
	ssai	1
	src	a7, a5, a7
	srli	a5, a5, 1
	or	a10, a5, a7
	bnez.n	a10, .L512
	j	.L508
.L513:
	mov.n	a3, a12
	mov.n	a4, a12
.L508:
	mov.n	a2, a4
	retw.n
	.size	__muldi3, .-__muldi3
	.align	4
	.global	udivmodsi4
	.type	udivmodsi4, @function
udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L532
	movi.n	a10, 1
	movi.n	a12, 0
	movi.n	a11, 0
	j	.L516
.L532:
	movi.n	a8, 1
	j	.L517
.L522:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a9, a10
	bltu	a3, a2, .L519
	mov.n	a9, a12
.L519:
	bbci	a9, 31, .L517
	movi.n	a9, 1
	moveqz	a9, a11, a8
	bnez.n	a9, .L516
.L517:
	movi.n	a9, 0
	bnez.n	a8, .L520
	mov.n	a9, a8
	j	.L521
.L516:
	bgez	a3, .L522
	j	.L517
.L520:
	bltu	a2, a3, .L523
	sub	a2, a2, a3
	or	a9, a9, a8
.L523:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L520
.L521:
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
	bne	a2, a9, .L542
	beq	a3, a2, .L543
.L542:
	nsau	a9, a10
	nsau	a2, a8
	addi	a2, a2, 32
	movnez	a2, a9, a10
	addi.n	a2, a2, -1
	j	.L536
.L543:
	movi.n	a2, 0x3f
.L536:
	retw.n
	.size	__clrsbdi2, .-__clrsbdi2
	.align	4
	.global	__mulsi3
	.type	__mulsi3, @function
__mulsi3:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L547
	movi.n	a2, 0
.L546:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L546
	j	.L544
.L547:
.L544:
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
	bltu	a2, a3, .L550
	add.n	a9, a3, a4
	bltu	a9, a2, .L550
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L551
	j	.L549
.L550:
	beqz.n	a8, .L553
	mov.n	a13, a2
	mov.n	a9, a3
	slli	a8, a8, 3
	addi	a8, a8, -8
	srli	a8, a8, 3
	addi.n	a8, a8, 1
	loop	a8, .L554_LEND
.L554:
	l32i	a10, a9, 0
	l32i	a11, a9, 4
	s32i	a10, a13, 0
	s32i	a11, a13, 4
	addi.n	a9, a9, 8
	addi.n	a13, a13, 8
	.L554_LEND:
.L553:
	bgeu	a12, a4, .L549
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L555:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L555
	j	.L549
.L551:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L551
.L549:
	retw.n
	.size	__cmovd, .-__cmovd
	.align	4
	.global	__cmovh
	.type	__cmovh, @function
__cmovh:
	entry	sp, 32
	srli	a8, a4, 1
	bltu	a2, a3, .L564
	add.n	a9, a3, a4
	bltu	a9, a2, .L564
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L565
	j	.L563
.L564:
	beqz.n	a8, .L567
	mov.n	a10, a2
	mov.n	a9, a3
	add.n	a8, a8, a8
	addi	a8, a8, -2
	srli	a8, a8, 1
	addi.n	a8, a8, 1
	loop	a8, .L568_LEND
.L568:
	l16ui	a11, a9, 0
	s16i	a11, a10, 0
	addi.n	a9, a9, 2
	addi.n	a10, a10, 2
	.L568_LEND:
.L567:
	bbci	a4, 31, .L563
	addi.n	a4, a4, -1
	add.n	a3, a3, a4
	l8ui	a8, a3, 0
	add.n	a2, a2, a4
	s8i	a8, a2, 0
	j	.L563
.L565:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L565
.L563:
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
	bltu	a2, a3, .L575
	add.n	a9, a3, a4
	bltu	a9, a2, .L575
	addi.n	a8, a4, -1
	addi.n	a9, a8, 1
	bnez.n	a4, .L576
	j	.L574
.L575:
	beqz.n	a8, .L578
	mov.n	a10, a2
	mov.n	a9, a3
	slli	a8, a8, 2
	addi	a8, a8, -4
	srli	a8, a8, 2
	addi.n	a8, a8, 1
	loop	a8, .L579_LEND
.L579:
	l32i	a11, a9, 0
	s32i	a11, a10, 0
	addi.n	a9, a9, 4
	addi.n	a10, a10, 4
	.L579_LEND:
.L578:
	bgeu	a12, a4, .L574
	add.n	a2, a2, a12
	add.n	a3, a3, a12
	sub	a4, a4, a12
.L580:
	l8ui	a8, a3, 0
	s8i	a8, a2, 0
	addi.n	a3, a3, 1
	addi.n	a2, a2, 1
	addi.n	a4, a4, -1
	bnez.n	a4, .L580
	j	.L574
.L576:
	add.n	a10, a3, a8
	l8ui	a11, a10, 0
	add.n	a10, a2, a8
	s8i	a11, a10, 0
	addi.n	a8, a8, -1
	addi.n	a9, a9, -1
	bnez.n	a9, .L576
.L574:
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
	.literal .LC119, __floatunsidf@PLT
	.align	4
	.global	__uitod
	.type	__uitod, @function
__uitod:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC119
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__uitod, .-__uitod
	.literal_position
	.literal .LC120, __floatunsisf@PLT
	.align	4
	.global	__uitof
	.type	__uitof, @function
__uitof:
	entry	sp, 32
	mov.n	a10, a2
	l32r	a8, .LC120
	callx8	a8
	mov.n	a2, a10
	retw.n
	.size	__uitof, .-__uitof
	.literal_position
	.literal .LC121, __floatundidf@PLT
	.align	4
	.global	__ulltod
	.type	__ulltod, @function
__ulltod:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC121
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
	retw.n
	.size	__ulltod, .-__ulltod
	.literal_position
	.literal .LC122, __floatundisf@PLT
	.align	4
	.global	__ulltof
	.type	__ulltof, @function
__ulltof:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC122
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
	loop	a8, .L596_LEND
.L596:
	addi	a9, a2, 16
	bbs	a10, a9, .L594
	addi.n	a2, a2, 1
	.L596_LEND:
.L594:
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
	loop	a8, .L601_LEND
.L601:
	ssr	a2
	sra	a9, a10
	bbsi	a9, 31, .L599
	addi.n	a2, a2, 1
	.L601_LEND:
.L599:
	retw.n
	.size	__ctzhi2, .-__ctzhi2
	.literal_position
	.literal .LC123, 0x47000000
	.literal .LC124, __gesf2@PLT
	.literal .LC125, __subsf3@PLT
	.literal .LC126, __fixsfsi@PLT
	.literal .LC127, 32768
	.literal .LC128, .LC123
	.align	4
	.global	__fixunssfsi
	.type	__fixunssfsi, @function
__fixunssfsi:
	entry	sp, 32
	l32r	a8, .LC128
	l32i.n	a11, a8, 0
	mov.n	a10, a2
	l32r	a8, .LC124
	callx8	a8
	bltz	a10, .L609
	l32r	a8, .LC128
	l32i.n	a11, a8, 0
	mov.n	a10, a2
	l32r	a8, .LC125
	callx8	a8
	l32r	a8, .LC126
	callx8	a8
	l32r	a8, .LC127
	add.n	a2, a10, a8
	j	.L604
.L609:
	mov.n	a10, a2
	l32r	a8, .LC126
	callx8	a8
	mov.n	a2, a10
.L604:
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
	loop	a9, .L611_LEND
.L611:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L611_LEND:
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
	loop	a9, .L615_LEND
.L615:
	ssr	a10
	sra	a8, a11
	extui	a8, a8, 0, 1
	add.n	a2, a2, a8
	addi.n	a10, a10, 1
	.L615_LEND:
	retw.n
	.size	__popcounthi2, .-__popcounthi2
	.align	4
	.global	__mulsi3_iq2000
	.type	__mulsi3_iq2000, @function
__mulsi3_iq2000:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L621
	movi.n	a2, 0
.L620:
	extui	a8, a9, 0, 1
	neg	a8, a8
	and	a8, a8, a3
	add.n	a2, a2, a8
	srli	a9, a9, 1
	add.n	a3, a3, a3
	bnez.n	a9, .L620
	j	.L618
.L621:
.L618:
	retw.n
	.size	__mulsi3_iq2000, .-__mulsi3_iq2000
	.align	4
	.global	__mulsi3_lm32
	.type	__mulsi3_lm32, @function
__mulsi3_lm32:
	entry	sp, 32
	mov.n	a9, a2
	beqz.n	a2, .L623
	beqz.n	a3, .L627
	movi.n	a2, 0
.L625:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a9
	add.n	a2, a2, a8
	add.n	a9, a9, a9
	srli	a3, a3, 1
	bnez.n	a3, .L625
	j	.L623
.L627:
	mov.n	a2, a3
.L623:
	retw.n
	.size	__mulsi3_lm32, .-__mulsi3_lm32
	.align	4
	.global	__udivmodsi4
	.type	__udivmodsi4, @function
__udivmodsi4:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L646
	movi.n	a10, 1
	movi.n	a12, 0
	movi.n	a11, 0
	j	.L630
.L646:
	movi.n	a8, 1
	j	.L631
.L636:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a9, a10
	bltu	a3, a2, .L633
	mov.n	a9, a12
.L633:
	bbci	a9, 31, .L631
	movi.n	a9, 1
	moveqz	a9, a11, a8
	bnez.n	a9, .L630
.L631:
	movi.n	a9, 0
	bnez.n	a8, .L634
	mov.n	a9, a8
	j	.L635
.L630:
	bgez	a3, .L636
	j	.L631
.L634:
	bltu	a2, a3, .L637
	sub	a2, a2, a3
	or	a9, a9, a8
.L637:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L634
.L635:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4, .-__udivmodsi4
	.literal_position
	.literal .LC129, __ltsf2@PLT
	.literal .LC130, __gtsf2@PLT
	.align	4
	.global	__mspabi_cmpf
	.type	__mspabi_cmpf, @function
__mspabi_cmpf:
	entry	sp, 32
	mov.n	a7, a2
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC129
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L647
	movi.n	a2, 1
	mov.n	a11, a3
	mov.n	a10, a7
	l32r	a8, .LC130
	callx8	a8
	bgei	a10, 1, .L647
	movi.n	a2, 0
.L647:
	retw.n
	.size	__mspabi_cmpf, .-__mspabi_cmpf
	.literal_position
	.literal .LC131, __ltdf2@PLT
	.literal .LC132, __gtdf2@PLT
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
	l32r	a8, .LC131
	callx8	a8
	movi.n	a2, -1
	bltz	a10, .L651
	movi.n	a2, 1
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a6
	mov.n	a11, a3
	l32r	a8, .LC132
	callx8	a8
	bgei	a10, 1, .L651
	movi.n	a2, 0
.L651:
	retw.n
	.size	__mspabi_cmpd, .-__mspabi_cmpd
	.literal_position
	.literal .LC133, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpysll
	.type	__mspabi_mpysll, @function
__mspabi_mpysll:
	entry	sp, 32
	mov.n	a11, a3
	mov.n	a10, a2
	l32r	a8, .LC133
	callx8	a8
	srai	a8, a2, 31
	and	a8, a8, a3
	sub	a10, a10, a8
	srai	a7, a3, 31
	and	a2, a7, a2
	sub	a2, a10, a2
	mov.n	a3, a11
	retw.n
	.size	__mspabi_mpysll, .-__mspabi_mpysll
	.literal_position
	.literal .LC134, __umulsidi3@PLT
	.align	4
	.global	__mspabi_mpyull
	.type	__mspabi_mpyull, @function
__mspabi_mpyull:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC134
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
	bgez	a3, .L658
	neg	a3, a3
	movi.n	a15, 1
.L658:
	beqz.n	a3, .L665
	movi.n	a11, 0
	mov.n	a9, a11
	movi.n	a13, 1
	movi.n	a12, 0x1f
	movi.n	a14, 0
.L660:
	extui	a8, a3, 0, 1
	neg	a8, a8
	and	a8, a8, a10
	add.n	a11, a11, a8
	add.n	a10, a10, a10
	srai	a3, a3, 1
	addi.n	a9, a9, 1
	extui	a9, a9, 0, 8
	beqz.n	a3, .L659
	mov.n	a8, a13
	bgeu	a12, a9, .L662
	mov.n	a8, a14
.L662:
	bbsi	a8, 31, .L660
	j	.L659
.L665:
	mov.n	a11, a3
.L659:
	neg	a2, a11
	moveqz	a2, a11, a15
	retw.n
	.size	__mulhi3, .-__mulhi3
	.literal_position
	.literal .LC135, __udivmodsi4@PLT
	.align	4
	.global	__divsi3
	.type	__divsi3, @function
__divsi3:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	movi.n	a3, 0
	bgez	a2, .L668
	neg	a10, a2
	movi.n	a3, 1
.L668:
	bgez	a11, .L669
	neg	a11, a11
	movi.n	a8, 1
	xor	a3, a3, a8
.L669:
	movi.n	a12, 0
	l32r	a8, .LC135
	callx8	a8
	neg	a2, a10
	moveqz	a2, a10, a3
	retw.n
	.size	__divsi3, .-__divsi3
	.literal_position
	.literal .LC136, __udivmodsi4@PLT
	.align	4
	.global	__modsi3
	.type	__modsi3, @function
__modsi3:
	entry	sp, 32
	mov.n	a10, a2
	movi.n	a2, 0
	bgez	a10, .L673
	neg	a10, a10
	movi.n	a2, 1
.L673:
	movi.n	a12, 1
	abs	a11, a3
	l32r	a8, .LC136
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
	extui	a9, a2, 0, 16
	extui	a3, a3, 0, 16
	movi.n	a8, 1
	bgeu	a3, a9, .L693
	movi.n	a11, 1
	movi.n	a13, 0
	movi.n	a12, 0
	j	.L677
.L693:
	movi.n	a8, 1
	j	.L678
.L683:
	add.n	a3, a3, a3
	extui	a3, a3, 0, 16
	add.n	a8, a8, a8
	extui	a8, a8, 0, 16
	mov.n	a10, a11
	bltu	a3, a9, .L680
	mov.n	a10, a13
.L680:
	bbci	a10, 31, .L678
	movi.n	a10, 1
	moveqz	a10, a12, a8
	bnez.n	a10, .L677
.L678:
	movi.n	a10, 0
	bnez.n	a8, .L681
	mov.n	a10, a8
	j	.L682
.L677:
	sext	a10, a3, 15
	bgez	a10, .L683
	j	.L678
.L681:
	bltu	a9, a3, .L684
	sub	a9, a9, a3
	extui	a9, a9, 0, 16
	or	a10, a8, a10
	extui	a10, a10, 0, 16
.L684:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L681
.L682:
	moveqz	a9, a10, a4
	mov.n	a2, a9
	retw.n
	.size	__udivmodhi4, .-__udivmodhi4
	.align	4
	.global	__udivmodsi4_libgcc
	.type	__udivmodsi4_libgcc, @function
__udivmodsi4_libgcc:
	entry	sp, 32
	movi.n	a8, 1
	bgeu	a3, a2, .L711
	movi.n	a10, 1
	movi.n	a12, 0
	movi.n	a11, 0
	j	.L695
.L711:
	movi.n	a8, 1
	j	.L696
.L701:
	add.n	a3, a3, a3
	add.n	a8, a8, a8
	mov.n	a9, a10
	bltu	a3, a2, .L698
	mov.n	a9, a12
.L698:
	bbci	a9, 31, .L696
	movi.n	a9, 1
	moveqz	a9, a11, a8
	bnez.n	a9, .L695
.L696:
	movi.n	a9, 0
	bnez.n	a8, .L699
	mov.n	a9, a8
	j	.L700
.L695:
	bgez	a3, .L701
	j	.L696
.L699:
	bltu	a2, a3, .L702
	sub	a2, a2, a3
	or	a9, a9, a8
.L702:
	srli	a8, a8, 1
	srli	a3, a3, 1
	bnez.n	a8, .L699
.L700:
	moveqz	a2, a9, a4
	retw.n
	.size	__udivmodsi4_libgcc, .-__udivmodsi4_libgcc
	.align	4
	.global	__ashldi3
	.type	__ashldi3, @function
__ashldi3:
	entry	sp, 32
	bbci	a4, 26, .L713
	ssl	a4
	sll	a2, a3
	movi.n	a8, 0
	j	.L714
.L713:
	beqz.n	a4, .L715
	ssl	a4
	sll	a8, a3
	ssl	a4
	src	a2, a2, a3
.L714:
	mov.n	a3, a8
.L715:
	retw.n
	.size	__ashldi3, .-__ashldi3
	.align	4
	.global	__ashrdi3
	.type	__ashrdi3, @function
__ashrdi3:
	entry	sp, 32
	bbci	a4, 26, .L718
	srai	a8, a2, 31
	ssr	a4
	sra	a3, a2
	j	.L719
.L718:
	beqz.n	a4, .L720
	ssr	a4
	sra	a8, a2
	ssr	a4
	src	a3, a2, a3
.L719:
	mov.n	a2, a8
.L720:
	retw.n
	.size	__ashrdi3, .-__ashrdi3
	.align	4
	.global	__bswapdi2
	.type	__bswapdi2, @function
__bswapdi2:
	entry	sp, 32
	mov.n	a8, a2
	ssai	8
	srli	a2, a3, 16
	src	a2, a2, a3
	src	a2, a2, a2
	src	a2, a3, a2
	srli	a3, a8, 16
	src	a3, a3, a8
	src	a3, a3, a3
	src	a3, a8, a3
	retw.n
	.size	__bswapdi2, .-__bswapdi2
	.align	4
	.global	__bswapsi2
	.type	__bswapsi2, @function
__bswapsi2:
	entry	sp, 32
	ssai	8
	srli	a8, a2, 16
	src	a8, a8, a2
	src	a8, a8, a8
	src	a2, a2, a8
	retw.n
	.size	__bswapsi2, .-__bswapsi2
	.literal_position
	.literal .LC137, 65535
	.align	4
	.global	__clzsi2
	.type	__clzsi2, @function
__clzsi2:
	entry	sp, 32
	movi.n	a10, 1
	l32r	a8, .LC137
	bgeu	a8, a2, .L725
	movi.n	a10, 0
.L725:
	slli	a10, a10, 4
	addi	a8, a10, -16
	neg	a8, a8
	ssr	a8
	srl	a8, a2
	extui	a12, a8, 8, 8
	slli	a12, a12, 8
	movi.n	a11, 0
	movi.n	a9, 1
	movnez	a9, a11, a12
	slli	a9, a9, 3
	addi	a12, a9, -8
	neg	a12, a12
	ssr	a12
	srl	a8, a8
	add.n	a10, a9, a10
	movi	a12, 0xf0
	and	a12, a8, a12
	movi.n	a9, 1
	movnez	a9, a11, a12
	slli	a9, a9, 2
	addi	a12, a9, -4
	neg	a12, a12
	ssr	a12
	srl	a8, a8
	add.n	a10, a9, a10
	movi.n	a12, 0xc
	and	a12, a8, a12
	movi.n	a9, 1
	movnez	a9, a11, a12
	add.n	a9, a9, a9
	addi	a12, a9, -2
	neg	a12, a12
	ssr	a12
	srl	a8, a8
	addi	a2, a8, -2
	neg	a2, a2
	movi.n	a12, 2
	and	a8, a8, a12
	movnez	a2, a11, a8
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
	blt	a8, a4, .L726
	movi.n	a2, 2
	blt	a4, a8, .L726
	movi.n	a2, 0
	bltu	a3, a5, .L726
	movi.n	a2, 2
	bltu	a5, a3, .L726
	movi.n	a2, 1
.L726:
	retw.n
	.size	__cmpdi2, .-__cmpdi2
	.literal_position
	.literal .LC139, __cmpdi2@PLT
	.align	4
	.global	__aeabi_lcmp
	.type	__aeabi_lcmp, @function
__aeabi_lcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC139
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
	movi.n	a11, 0
	movi.n	a10, 1
	movnez	a10, a11, a8
	slli	a10, a10, 4
	ssr	a10
	srl	a8, a2
	extui	a12, a8, 0, 8
	movi.n	a9, 1
	movnez	a9, a11, a12
	ssa8l	a9
	srl	a8, a8
	addx8	a10, a9, a10
	extui	a12, a8, 0, 4
	movi.n	a9, 1
	movnez	a9, a11, a12
	slli	a9, a9, 2
	ssr	a9
	srl	a8, a8
	add.n	a10, a9, a10
	extui	a12, a8, 0, 2
	movi.n	a9, 1
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
	mul16u	a2, a2, a8
	add.n	a9, a9, a10
	add.n	a2, a2, a9
	retw.n
	.size	__ctzsi2, .-__ctzsi2
	.align	4
	.global	__lshrdi3
	.type	__lshrdi3, @function
__lshrdi3:
	entry	sp, 32
	bbci	a4, 26, .L735
	ssr	a4
	srl	a3, a2
	movi.n	a8, 0
	j	.L736
.L735:
	beqz.n	a4, .L737
	ssr	a4
	srl	a8, a2
	ssr	a4
	src	a3, a2, a3
.L736:
	mov.n	a2, a8
.L737:
	retw.n
	.size	__lshrdi3, .-__lshrdi3
	.align	4
	.global	__muldsi3
	.type	__muldsi3, @function
__muldsi3:
	entry	sp, 32
	mul16u	a11, a2, a3
	extui	a8, a11, 16, 16
	extui	a12, a2, 16, 16
	mul16u	a9, a3, a12
	add.n	a9, a9, a8
	extui	a8, a9, 0, 16
	extui	a10, a3, 16, 16
	mul16u	a2, a2, a10
	add.n	a8, a2, a8
	extui	a11, a11, 0, 16
	slli	a3, a8, 16
	extui	a2, a9, 16, 16
	mul16u	a12, a12, a10
	add.n	a2, a2, a12
	extui	a8, a8, 16, 16
	add.n	a2, a2, a8
	add.n	a3, a11, a3
	retw.n
	.size	__muldsi3, .-__muldsi3
	.literal_position
	.literal .LC140, __muldsi3@PLT
	.align	4
	.global	__muldi3_compiler_rt
	.type	__muldi3_compiler_rt, @function
__muldi3_compiler_rt:
	entry	sp, 32
	mov.n	a11, a5
	mov.n	a10, a3
	l32r	a8, .LC140
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
	.literal .LC141, 27030
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
	l32r	a2, .LC141
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritydi2, .-__paritydi2
	.literal_position
	.literal .LC142, 27030
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
	l32r	a2, .LC142
	ssr	a8
	sra	a2, a2
	extui	a2, a2, 0, 1
	retw.n
	.size	__paritysi2, .-__paritysi2
	.literal_position
	.literal .LC143, 1431655765
	.literal .LC144, 858993459
	.literal .LC145, 252645135
	.align	4
	.global	__popcountdi2
	.type	__popcountdi2, @function
__popcountdi2:
	entry	sp, 32
	ssai	1
	src	a8, a2, a3
	srli	a9, a2, 1
	l32r	a10, .LC143
	and	a9, a9, a10
	and	a8, a8, a10
	sub	a2, a2, a9
	bgeu	a3, a8, .L746
	addi.n	a2, a2, -1
.L746:
	sub	a3, a3, a8
	ssai	2
	src	a8, a2, a3
	srli	a10, a2, 2
	l32r	a9, .LC144
	and	a10, a10, a9
	and	a8, a8, a9
	and	a2, a2, a9
	and	a3, a3, a9
	add.n	a10, a10, a2
	add.n	a8, a8, a3
	bgeu	a8, a3, .L747
	addi.n	a10, a10, 1
.L747:
	ssai	4
	src	a11, a10, a8
	srli	a9, a10, 4
	add.n	a9, a9, a10
	add.n	a8, a11, a8
	bgeu	a8, a11, .L748
	addi.n	a9, a9, 1
.L748:
	l32r	a10, .LC145
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
	.literal .LC146, 1431655765
	.literal .LC147, 858993459
	.literal .LC148, 252645135
	.align	4
	.global	__popcountsi2
	.type	__popcountsi2, @function
__popcountsi2:
	entry	sp, 32
	srli	a8, a2, 1
	l32r	a9, .LC146
	and	a8, a8, a9
	sub	a2, a2, a8
	srli	a9, a2, 2
	l32r	a8, .LC147
	and	a9, a9, a8
	and	a2, a2, a8
	add.n	a9, a9, a2
	srli	a8, a9, 4
	add.n	a8, a8, a9
	l32r	a9, .LC148
	and	a8, a8, a9
	extui	a9, a8, 16, 16
	add.n	a8, a9, a8
	srli	a2, a8, 8
	add.n	a2, a2, a8
	extui	a2, a2, 0, 6
	retw.n
	.size	__popcountsi2, .-__popcountsi2
	.literal_position
	.literal .LC150, __muldf3@PLT
	.literal .LC151, __divdf3@PLT
	.literal .LC152, 1072693248
	.align	4
	.global	__powidf2
	.type	__powidf2, @function
__powidf2:
	entry	sp, 48
	mov.n	a6, a2
	mov.n	a7, a3
	s32i	a4, sp, 0
	l32r	a2, .LC152
	movi.n	a3, 0
	l32r	a5, .LC150
.L753:
	bbci	a4, 31, .L751
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a2
	mov.n	a11, a3
	l32r	a8, .LC150
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L751:
	extui	a9, a4, 31, 1
	add.n	a8, a9, a4
	srai	a4, a8, 1
	beqz.n	a4, .L752
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a10, a6
	mov.n	a11, a7
	callx8	a5
	mov.n	a6, a10
	mov.n	a7, a11
	j	.L753
.L752:
	l32i	a8, sp, 0
	bgez	a8, .L750
	mov.n	a12, a2
	mov.n	a13, a3
	l32r	a10, .LC152
	movi.n	a11, 0
	l32r	a8, .LC151
	callx8	a8
	mov.n	a2, a10
	mov.n	a3, a11
.L750:
	retw.n
	.size	__powidf2, .-__powidf2
	.literal_position
	.literal .LC154, __mulsf3@PLT
	.literal .LC155, __divsf3@PLT
	.literal .LC156, 1065353216
	.align	4
	.global	__powisf2
	.type	__powisf2, @function
__powisf2:
	entry	sp, 32
	mov.n	a4, a2
	mov.n	a7, a3
	l32r	a2, .LC156
	l32r	a5, .LC154
	mov.n	a6, a5
.L758:
	bbci	a7, 31, .L756
	mov.n	a11, a4
	mov.n	a10, a2
	callx8	a5
	mov.n	a2, a10
.L756:
	extui	a8, a7, 31, 1
	add.n	a7, a8, a7
	srai	a7, a7, 1
	beqz.n	a7, .L757
	mov.n	a11, a4
	mov.n	a10, a4
	callx8	a6
	mov.n	a4, a10
	j	.L758
.L757:
	bgez	a3, .L755
	mov.n	a11, a2
	l32r	a10, .LC156
	l32r	a8, .LC155
	callx8	a8
	mov.n	a2, a10
.L755:
	retw.n
	.size	__powisf2, .-__powisf2
	.align	4
	.global	__ucmpdi2
	.type	__ucmpdi2, @function
__ucmpdi2:
	entry	sp, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bltu	a8, a4, .L760
	movi.n	a2, 2
	bltu	a4, a8, .L760
	movi.n	a2, 0
	bltu	a3, a5, .L760
	movi.n	a2, 2
	bltu	a5, a3, .L760
	movi.n	a2, 1
.L760:
	retw.n
	.size	__ucmpdi2, .-__ucmpdi2
	.literal_position
	.literal .LC157, __ucmpdi2@PLT
	.align	4
	.global	__aeabi_ulcmp
	.type	__aeabi_ulcmp, @function
__aeabi_ulcmp:
	entry	sp, 32
	mov.n	a10, a2
	mov.n	a11, a3
	mov.n	a12, a4
	mov.n	a13, a5
	l32r	a8, .LC157
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
